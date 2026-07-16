#include "Graphics.h"
#include "string.h"
#include "St7789.h"

//-------------------------------------------------------------------------------//

extern St7789VaribleLocal st7789config;

//-------------------------------------------------------------------------------//

static void St7789SetAreaTranfer(St7789Config *config, uint16_t x1, uint16_t x2, uint16_t y1, uint16_t y2);
static HAL_StatusTypeDef GraphicsRectangleWigetTranfer(St7789Config *config, GraphicsRectangleConfig *rectangleConfig);
static void St7789CalculatorTextDisplay(St7789Config *config, GraphicsTextConfig *textConfig, GraphicsRegionWidgetConfig *region, uint16_t *columnDisplay, uint16_t *rowDisplay);
static HAL_StatusTypeDef GraphicsTranferText(St7789Config *config, GraphicsTextConfig *textConfig, St7789RgbColor *background, uint16_t columnDisplay, uint16_t rowDisplay);

//-------------------------------------------------------------------------------//

void GraphicsSetSize(St7789Size *size, uint16_t column, uint16_t row){
	size->column = column;
	size->row = row;
}
void GraphicsSetCoordinate(St7789Coordinate *coordinate, uint16_t x, uint16_t y){
	coordinate->x = x;
	coordinate->y = y;
}

void GraphicsSetColor(St7789RgbColor *color, uint8_t red, uint8_t green, uint8_t blue){
	color->color[ST7789_RED_COLOR_DEFFAULT] = red;
	color->color[ST7789_GREEN_COLOR_DEFFAULT] = green;
	color->color[ST7789_BLUE_COLOR_DEFFAULT] = blue;
}

static HAL_StatusTypeDef GraphicsRectangleWigetTranfer(St7789Config *config, GraphicsRectangleConfig *rectangleConfig){
	uint32_t start = 0;
	uint32_t pixelNeedTranfer = rectangleConfig->pos.size.column * rectangleConfig->pos.size.row ;

	uint32_t memorySize = st7789config.dma.size / st7789config.pixelWidth;
	memorySize = memorySize > pixelNeedTranfer ? pixelNeedTranfer : memorySize;
	switch(config->format){
		case CONTROL_INTERFACE_FORMAT_18BIT:
			const uint8_t shift = ST7789_BIT_COLOR_DEFFAULT - ST7789_6_BIT_COLOR;
			St7789ConvertFor18bit(st7789config.dma.ptr, &rectangleConfig->background, &shift);
			break;
		case CONTROL_INTERFACE_FORMAT_16BIT:
			St7789ConvertFor16bit(st7789config.dma.ptr, &rectangleConfig->background);
			break;
		default:
			return HAL_ERROR;
			break;

	}
	for(uint32_t i = st7789config.pixelWidth; i < memorySize * st7789config.pixelWidth; i += st7789config.pixelWidth)
		memcpy(st7789config.dma.ptr + i, st7789config.dma.ptr, st7789config.pixelWidth);
	HAL_StatusTypeDef status;
	uint32_t pixelSend;
	while(start < pixelNeedTranfer){
		pixelSend = pixelNeedTranfer - start >= memorySize ? memorySize : pixelNeedTranfer - start;
		status = St7789WriteData(config, st7789config.dma.ptr, pixelSend * st7789config.pixelWidth);
		if(status == HAL_OK)
			start += pixelSend;
		else
			return status;
	}
	return HAL_OK;
}


HAL_StatusTypeDef GraphicsDrawText(St7789Config *config, GraphicsTextConfig *textConfig, GraphicsRegionWidgetConfig *region, St7789RgbColor *background){
	if(textConfig->font.fontPixel < GRAPHICS_TEXT_FONT_SIZE_MIN)
		return HAL_ERROR;
	st7789config.task = xTaskGetCurrentTaskHandle();
	uint16_t columnDisplay, rowDisplay;
	St7789CalculatorTextDisplay(
		config,
		textConfig,
		region,
		&columnDisplay,
		&rowDisplay
	);
	if(rowDisplay == 0 || columnDisplay == 0)
		return HAL_ERROR;

	St7789SetAreaTranfer(
		config,
		region->coordinate.x,
		region->coordinate.x + columnDisplay,
		region->coordinate.y,
		region->coordinate.y + rowDisplay
	);

	HAL_StatusTypeDef status = GraphicsTranferText(config, textConfig, background, columnDisplay, rowDisplay);
	if(status != HAL_OK)
		return status;
	textConfig->areaDisplay.column = columnDisplay;
	textConfig->areaDisplay.row = rowDisplay;
	return HAL_OK;
}

HAL_StatusTypeDef GraphicsDrawRectangle(St7789Config *config, GraphicsRectangleConfig *rectangleConfig){
	st7789config.task = xTaskGetCurrentTaskHandle();
	St7789SetAreaTranfer(
		config,
		rectangleConfig->pos.coordinate.x,
		rectangleConfig->pos.coordinate.x + rectangleConfig->pos.size.column,
		rectangleConfig->pos.coordinate.y,
		rectangleConfig->pos.coordinate.y + rectangleConfig->pos.size.row
	);
	return GraphicsRectangleWigetTranfer(config, rectangleConfig);
}

static void St7789SetAreaTranfer(St7789Config *config, uint16_t x1, uint16_t x2, uint16_t y1, uint16_t y2){
	St7789SetColumnAddress(config, x1, x2);
	St7789SetRowAddress(config, y1, y2);
	St7789WriteCommand(config, ST7789_CMD_RAMWR);
}

static void St7789CalculatorTextDisplay(St7789Config *config, GraphicsTextConfig *textConfig, GraphicsRegionWidgetConfig *region, uint16_t *columnDisplay, uint16_t *rowDisplay){
	uint8_t length = strlen(textConfig->content);

	// Get length char display max
	*columnDisplay = region->size.column / GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT / textConfig->font.fontPixel;
	*rowDisplay =  region->size.row / GRAPHICS_TEXT_ROW_SIZE_DEFFAULT / textConfig->font.fontPixel;

	// Get length char display on tft
	length = length < *columnDisplay ? length : *columnDisplay;
	length = *rowDisplay > 0 ? length : 0;

	// Get column and row display size
	*columnDisplay = length * (GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT * textConfig->font.fontPixel);
	*rowDisplay = (GRAPHICS_TEXT_ROW_SIZE_DEFFAULT * textConfig->font.fontPixel);
}

static HAL_StatusTypeDef GraphicsTranferText(St7789Config *config, GraphicsTextConfig *textConfig, St7789RgbColor *background, uint16_t columnDisplay, uint16_t rowDisplay){
	uint8_t *ptrTarget = NULL;
	uint16_t indexMemDma = 0;
	HAL_StatusTypeDef status;
	uint8_t backgroundColor[ST7789_COLOR_DEFFAULT_SIZE_BYTE];
	uint8_t textColor[ST7789_COLOR_DEFFAULT_SIZE_BYTE];
	uint16_t widthPixelByte;
	switch(config->format){
		case CONTROL_INTERFACE_FORMAT_18BIT:
			uint8_t shift = ST7789_BIT_COLOR_DEFFAULT - ST7789_6_BIT_COLOR;
			St7789ConvertFor18bit(backgroundColor, background, &shift);
			St7789ConvertFor18bit(textColor, &textConfig->font.fontColor, &shift);
			widthPixelByte = ST7789_FORMAT_18BIT_BYTE_WIDTH;
			break;
		case CONTROL_INTERFACE_FORMAT_16BIT:
			St7789ConvertFor16bit(backgroundColor, background);
			St7789ConvertFor16bit(textColor, &textConfig->font.fontColor);
			widthPixelByte = ST7789_FORMAT_16BIT_BYTE_WIDTH;
			break;
		default:
			return HAL_ERROR;
			break;
	}
	uint16_t pos;
	uint8_t mask = 0x01;
	uint8_t dot;
	uint8_t shift;
	for(uint16_t row = 0; row < rowDisplay; row++){
		shift = row / textConfig->font.fontPixel;
		indexMemDma = 0;
		for(uint16_t column = 0; column < columnDisplay; column++){

			pos = (column / textConfig->font.fontPixel) % GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT;

			if(pos >= FONT_DEFFAULT_COLUMN){
				dot = 0x00;
			} else{
				// Get char content
				pos = column / textConfig->font.fontPixel / GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT;
				// Get pos char in bitmap
				pos = textConfig->content[pos] * FONT_DEFFAULT_COLUMN;
				// Get column char in bitmap
				uint16_t index = pos + ((column / textConfig->font.fontPixel) % GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT) ;
				pos = asciiBitMap[index];
				dot = ST7789_GET_FIELD(pos, shift, mask);
			}

			ptrTarget = dot == 0 ? backgroundColor : textColor;
			for(uint8_t i = 0; i < textConfig->font.fontPixel; i++){
				memcpy(st7789config.dma.ptr + indexMemDma, ptrTarget, widthPixelByte);
				indexMemDma += widthPixelByte;
			}
			column += textConfig->font.fontPixel - 1;
		}
		for(uint16_t i = 0; i < textConfig->font.fontPixel; i++){
			status = St7789WriteData(config, st7789config.dma.ptr, indexMemDma);
			if(status != HAL_OK)
				return status;
		}
		row += (textConfig->font.fontPixel - 1);
	}
	return HAL_OK;

}

