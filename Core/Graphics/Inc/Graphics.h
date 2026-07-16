#ifndef GRAPHICS_INC_GRAPHICS_H_
#define GRAPHICS_INC_GRAPHICS_H_

#include "St7789.h"
#include "AsciiDeffaultFont.h"
#include "GraphicsType.h"

//-------------------------------------------------------------------------------//

#define GRAPHICS_TEXT_FONT_SIZE_MIN											1
#define GRAPHICS_PIXEL_SPACE												1
#define GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT									(FONT_DEFFAULT_COLUMN + GRAPHICS_PIXEL_SPACE)
#define GRAPHICS_TEXT_ROW_SIZE_DEFFAULT										(FONT_DEFFAULT_ROW + GRAPHICS_PIXEL_SPACE)


//-------------------------------------------------------------------------------//

typedef struct{
	uint8_t fontPixel;
	St7789RgbColor fontColor;
} GraphicsFontConfig;

typedef struct{
	GraphicsFontConfig font;
	St7789Size areaDisplay;
	char content[ST7789_TEXT_SIZE];
} GraphicsTextConfig;

typedef struct{
	GraphicsRegionWidgetConfig pos;
	St7789RgbColor background;
} GraphicsRectangleConfig;

//-------------------------------------------------------------------------------//


void GraphicsSetSize(St7789Size *size, uint16_t column, uint16_t row);
void GraphicsSetCoordinate(St7789Coordinate *coordinate, uint16_t x, uint16_t y);
void GraphicsSetColor(St7789RgbColor *color, uint8_t red, uint8_t green, uint8_t blue);
HAL_StatusTypeDef GraphicsDrawText(St7789Config *config, GraphicsTextConfig *textConfig, GraphicsRegionWidgetConfig *region, St7789RgbColor *background);
HAL_StatusTypeDef GraphicsDrawRectangle(St7789Config *config, GraphicsRectangleConfig *rectangleConfig);

#endif /* GRAPHICS_INC_GRAPHICS_H_ */
