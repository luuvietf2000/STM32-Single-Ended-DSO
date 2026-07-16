#include "St7789.h"
#include "cmsis_os2.h"
#include "FreeRTOS.h"
#include "task.h"
#include <stdlib.h>
#include <string.h>

//-----------------------------------------------------------------------------------------------------//

St7789VaribleLocal st7789config;

//-----------------------------------------------------------------------------------------------------//

void St7789SetAddress(St7789Config *config, uint8_t cmd, uint16_t start, uint16_t end){
	const uint8_t mask = 0xFF;
	const uint8_t shift = 0x08;

	uint8_t parameter[] = {
		ST7789_GET_FIELD(start, shift, mask),
		ST7789_GET_FIELD(start, 0, mask),
		ST7789_GET_FIELD(end, shift, mask),
		ST7789_GET_FIELD(end, 0, mask)
	};
	St7789WriteCommand(config, cmd);
	St7789WriteData(config, parameter, sizeof(parameter));
}


HAL_StatusTypeDef St7789WriteCommand(St7789Config *config, uint8_t command){
	ST7789_PIN_LOW(config->dc);
	HAL_StatusTypeDef result = HAL_SPI_Transmit(config->spi, &command, sizeof(uint8_t), portMAX_DELAY);
	ST7789_PIN_HIGH(config->dc);
	return result;
}

HAL_StatusTypeDef St7789WriteData(St7789Config *config, uint8_t *data, uint32_t size){
	st7789config.task = xTaskGetCurrentTaskHandle();
	HAL_StatusTypeDef result = HAL_SPI_Transmit_DMA(config->spi, data, size);
	ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
	return result;
}

void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi){
	if(hspi == st7789config.spi){
		BaseType_t xHigherPriorityTaskWoken = pdFALSE;
		vTaskNotifyGiveFromISR(st7789config.task, &xHigherPriorityTaskWoken);
		portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
	}
}

void St7789RstHardware(St7789Config *config){
	ST7789_PIN_LOW(config->rst);
	HAL_Delay(ST7789_RST_HARDWARE_TIME);
	ST7789_PIN_HIGH(config->rst);
	HAL_Delay(ST7789_RST_HARDWARE_TIME);
}

void St7789RstSoftware(St7789Config *config){
	St7789WriteCommand(config, ST7789_CMD_SWRESET);
	HAL_Delay(ST7789_RST_SOFTWARE_TIME);
}

void St7789SetInterfacePixelFormat(St7789Config *config, St7789ControlInterfaceColorFormat control, St7789RgbInterfaceColorFormat rgb){
	uint8_t parameter = 0;
	parameter |= ST7789_FIELD(control, ST7789_CONTROL_INTERFACE_COLOR_FORMAT_S, ST7789_CONTROL_INTERFACE_COLOR_FORMAT_M);
	parameter |= ST7789_FIELD(rgb, ST7789_RGB_INTERFACE_COLOR_FORMAT_S, ST7789_RGB_INTERFACE_COLOR_FORMAT_M);
	St7789WriteCommand(config, ST7789_CMD_COLMOD);
	St7789WriteData(config, &parameter, sizeof(parameter));
}

void St7789SetSleepMode(St7789Config *config, St7789SleepMode mode){
	switch(mode){
		case ST7789_SLEEP_MODE_IN:
			St7789WriteCommand(config, ST7789_CMD_SLPIN);
			break;
		case ST7789_SLEEP_MODE_OUT:
			St7789WriteCommand(config, ST7789_CMD_SLPOUT);
			break;
	}
	HAL_Delay(ST7789_SLEEP_MODE_DELAY_TIME);
}

void St7789Init(St7789Config *config, uint32_t memorySize){
	st7789config.dma.ptr = malloc(memorySize * sizeof(uint8_t));
	st7789config.dma.size = memorySize;

	st7789config.spi = config->spi;

	St7789RstHardware(config);

	St7789SetInterfacePixelFormat(config, config->format, RGB_INTERFACE_262K);

	switch(config->format){
		case CONTROL_INTERFACE_FORMAT_18BIT:
			st7789config.pixelWidth = ST7789_FORMAT_18BIT_BYTE_WIDTH;
			break;
		case CONTROL_INTERFACE_FORMAT_16BIT:
			st7789config.pixelWidth = ST7789_FORMAT_16BIT_BYTE_WIDTH;
			break;
		default:
			st7789config.pixelWidth = ST7789_FORMAT_DEFFAULT_BYTE_WIDTH;
			break;
	}

	St7789WriteCommand(config, ST7789_CMD_INVOFF);

	St7789SetSleepMode(config, ST7789_SLEEP_MODE_OUT);

	St7789SetMemoryDataAccessControl(config);

	St7789WriteCommand(config, ST7789_CMD_NORON);

	St7789WriteCommand(config, St7789_CMD_DISON);
}

void St7789SetMemoryDataAccessControl(St7789Config *config){
	// color format: RGB
	// refresh: top -> bot, left -> right
	uint16_t pixel;
	switch (config->rotate) {
		case ST7789_DISPLAY_NORMAL:
		case ST7789_DISPLAY_INVERTED:
			break;
		case ST7789_DISPLAY_RIGHT:
		case ST7789_DISPLAY_LEFT:
			pixel = config->size.row;
			config->size.row = config->size.column;
			config->size.column = pixel;
			break;
	}
	St7789WriteCommand(config, ST7789_CMD_MADCPL);
	St7789WriteData(config, &config->rotate, sizeof(uint8_t));
}

void St7789SetColumnAddress(St7789Config *config, uint16_t start, uint16_t end){
	St7789SetAddress(config, ST7789_CMD_CASET, start, end - ST7789_PIXEL);
}

void St7789SetRowAddress(St7789Config *config, uint16_t start, uint16_t end){
	St7789SetAddress(config, ST7789_CMD_RASET, start, end - ST7789_PIXEL);
}

void St7789ConvertFor18bit(uint8_t *ptr, St7789RgbColor *rgb, const uint8_t *shift){
	for(St7789ColorDeffault i = 0; i < ST7789_COLOR_DEFFAULT_SIZE_BYTE; i++){
		uint8_t color = ST7789_CONVERT_8BIT_TO_NBIT(ST7789_6_BIT_COLOR, rgb->color[i]) << *shift;
		*(ptr + i) = color;
	}
}

void St7789ConvertFor16bit(uint8_t *ptr, St7789RgbColor *rgb){
	uint8_t greenAfterConvert = ST7789_CONVERT_8BIT_TO_NBIT(ST7789_6_BIT_COLOR, rgb->color[ST7789_GREEN_COLOR_DEFFAULT]);
	*(ptr) = ST7789_CONVERT_8BIT_TO_NBIT(ST7789_5_BIT_COLOR, rgb->color[ST7789_RED_COLOR_DEFFAULT]) << ST7789_RGB_COLOR_MODE_16_BIT_RED_SHIFT |
			ST7789_FIELD(greenAfterConvert, ST7789_RGB_COLOR_MODE_16_BIT_GREEN_SHIFT_PART_HIGH, ST7789_RGB_COLOR_MODE_16_BIT_GREEN_MASK_PART_HIGH);
	*(ptr + 1) = ST7789_CONVERT_8BIT_TO_NBIT(ST7789_5_BIT_COLOR, rgb->color[ST7789_BLUE_COLOR_DEFFAULT]) << ST7789_RGB_COLOR_MODE_16_BIT_BLUE_SHIFT |
				ST7789_FIELD(greenAfterConvert, ST7789_RGB_COLOR_MODE_16_BIT_GREEN_SHIFT_PART_LOW, ST7789_RGB_COLOR_MODE_16_BIT_GREEN_MASK_PART_HIGH);
}




