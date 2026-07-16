#ifndef ST7789_H
#define ST7789_H

#include "stm32f1xx_hal.h"
#include "FreeRTOS.h"
#include "task.h"
//---------------------------------------------------------------------------------//

#define ST7789_CMD_NOP														0x00
#define ST7789_CMD_SWRESET													0x01
#define ST7789_CMD_SLPIN													0x10
#define ST7789_CMD_SLPOUT													0x11
#define ST7789_CMD_COLMOD													0x3A
#define ST7789_CMD_MADCPL													0x36
#define ST7789_CMD_CASET													0x2A
#define ST7789_CMD_RASET													0x2B
#define ST7789_CMD_INVON													0x21
#define ST7789_CMD_INVOFF													0x20
#define ST7789_CMD_NORON													0x13
#define St7789_CMD_DISON													0x29
#define ST7789_CMD_IDLE_MODE_ON												0x39
#define ST7789_CMD_IDLE_MODE_OFF											0x38
#define ST7789_CMD_RAMWR													0x2C


#define ST7789_CMD_RAMRD													0x2E

#define ST7789_DELAY_TIME(x)												HAL_Delay(x)

#define ST7789_FIELD(value, shift, mask)									((value & mask) << shift)
#define ST7789_GET_FIELD(value, shift, mask)								((value >> shift) & mask)

#define ST7789_RGB_INTERFACE_COLOR_FORMAT_S         						4
#define ST7789_RGB_INTERFACE_COLOR_FORMAT_M          						0x07

#define ST7789_CONTROL_INTERFACE_COLOR_FORMAT_S     						0
#define ST7789_CONTROL_INTERFACE_COLOR_FORMAT_M     						0x07
#define ST7789_PIN_LOW(gpio)												HAL_GPIO_WritePin(gpio.port, gpio.pin, GPIO_PIN_RESET)
#define ST7789_PIN_HIGH(gpio)												HAL_GPIO_WritePin(gpio.port, gpio.pin, GPIO_PIN_SET)
#define ST7789_COLOR_FORMAT_18BIT_M											0xFF
#define ST7789_COLOR_FORMAT_18BIT_S											0x02
#define ST7789_CONVERT_8BIT_TO_NBIT(n, value)								((uint8_t) value * ((1 << n) - 1) / ((1 << ST7789_BIT_COLOR_DEFFAULT) - 1))
#define ST7789_BIT_COLOR_DEFFAULT											8
#define ST7789_6_BIT_COLOR													6
#define ST7789_5_BIT_COLOR													5
#define ST7789_RST_HARDWARE_TIME											100
#define ST7789_RST_SOFTWARE_TIME											150
#define ST7789_SLEEP_MODE_DELAY_TIME										150
#define ST7789_NORMAL_DELAY_TIME											5
#define ST7789_PIXEL														1
#define ST7789_FORMAT_18BIT_BYTE_WIDTH										3
#define ST7789_FORMAT_16BIT_BYTE_WIDTH										2
#define ST7789_FORMAT_DEFFAULT_BYTE_WIDTH									2
#define ST7789_COLOR_DEFFAULT_SIZE_BYTE										3
#define ST7789_TEXT_SIZE													64

#define ST7789_RGB_COLOR_MODE_16_BIT_RED_SHIFT								3
#define ST7789_RGB_COLOR_MODE_16_BIT_RED_MASK								0x0F

#define ST7789_RGB_COLOR_MODE_16_BIT_GREEN_SHIFT_PART_HIGH					0
#define ST7789_RGB_COLOR_MODE_16_BIT_GREEN_MASK_PART_HIGH					0x56

#define ST7789_RGB_COLOR_MODE_16_BIT_GREEN_SHIFT_PART_LOW					5
#define ST7789_RGB_COLOR_MODE_16_BIT_GREEN_MASK_PART_LOW					0x07

#define ST7789_RGB_COLOR_MODE_16_BIT_BLUE_SHIFT								0
#define ST7789_RGB_COLOR_MODE_16_BIT_RED_MASK								0x0F
//---------------------------------------------------------------------------------//

typedef enum{
	RGB_DONT_CARE,
	RGB_INTERFACE_65K														= 0x05,
	RGB_INTERFACE_262K														= 0x06
} St7789RgbInterfaceColorFormat;

typedef enum{
	CONTROL_INTERFACE_DONT_CARE,
	CONTROL_INTERFACE_FORMAT_12BIT											= 0x03,
	CONTROL_INTERFACE_FORMAT_16BIT 											= 0x05,
	CONTROL_INTERFACE_FORMAT_18BIT 											= 0x06
} St7789ControlInterfaceColorFormat;

typedef enum{
	ST7789_SLEEP_MODE_IN,
	ST7789_SLEEP_MODE_OUT
} St7789SleepMode;

typedef enum{
	ST7789_RED_COLOR_DEFFAULT,
	ST7789_GREEN_COLOR_DEFFAULT,
	ST7789_BLUE_COLOR_DEFFAULT
} St7789ColorDeffault;

typedef enum{
	ST7789_DISPLAY_NORMAL 													= 0x00,
	ST7789_DISPLAY_INVERTED													= 0xC0,
	ST7789_DISPLAY_RIGHT													= 0x60,
	ST7789_DISPLAY_LEFT														= 0xA0
} St7789Direction;

//---------------------------------------------------------------------------------//

typedef struct{
    GPIO_TypeDef *port;
    uint16_t pin;
} St7789Gpio;

typedef struct{
	uint16_t x;
	uint16_t y;
} St7789Coordinate;

typedef struct{
	uint16_t column;
	uint16_t row;
} St7789Size;

typedef struct{
	SPI_HandleTypeDef *spi;
	St7789Gpio dc;
	St7789Size size;
	St7789Gpio rst;
	St7789ControlInterfaceColorFormat format;
	St7789Direction rotate;
} St7789Config;

typedef struct{
	uint8_t color[ST7789_COLOR_DEFFAULT_SIZE_BYTE];
} St7789RgbColor;

typedef struct{
	uint32_t size;
	uint8_t *ptr;
} St7789VaribleMemoryDma;

typedef struct{
	St7789VaribleMemoryDma dma;
	uint32_t pixelWidth;
	SPI_HandleTypeDef *spi;
	TaskHandle_t task;
} St7789VaribleLocal;

//---------------------------------------------------------------------------------//
HAL_StatusTypeDef St7789WriteData(St7789Config *config, uint8_t *data, uint32_t size);
HAL_StatusTypeDef St7789WriteCommand(St7789Config *config, uint8_t command);
void St7789SetAddress(St7789Config *config, uint8_t cmd, uint16_t start, uint16_t end);
void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi);
void St7789RstHardware(St7789Config *config);
void St7789RstSoftware(St7789Config *config);
void St7789SetInterfacePixelFormat(St7789Config *config, St7789ControlInterfaceColorFormat control, St7789RgbInterfaceColorFormat rgb);
void St7789Init(St7789Config *config, uint32_t memorySize);
void St7789SetMemoryDataAccessControl(St7789Config *config);
void St7789SetRowAddress(St7789Config *config, uint16_t start, uint16_t end);
void St7789SetColumnAddress(St7789Config *config, uint16_t start, uint16_t end);
void St7789ConvertFor18bit(uint8_t *ptr, St7789RgbColor *rgb, const uint8_t *shift);
void St7789ConvertFor16bit(uint8_t *ptr, St7789RgbColor *rgb);

#endif
