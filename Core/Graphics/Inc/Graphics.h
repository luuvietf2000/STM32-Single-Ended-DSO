#ifndef GRAPHICS_INC_GRAPHICS_H_
#define GRAPHICS_INC_GRAPHICS_H_

#include "St7789.h"
#include "AsciiDeffaultFont.h"

//-------------------------------------------------------------------------------//

#define GRAPHICS_TEXT_FONT_SIZE_MIN											1
#define GRAPHICS_PIXEL_SPACE												1
#define GRAPHICS_TEXT_COLUMN_SIZE_DEFFAULT									(FONT_DEFFAULT_COLUMN + GRAPHICS_PIXEL_SPACE)
#define GRAPHICS_TEXT_ROW_SIZE_DEFFAULT										(FONT_DEFFAULT_ROW + GRAPHICS_PIXEL_SPACE)
#define GRAPHICS_LEFT(parent, child)										(parent)
#define GRAPHICS_CENTER(parent, child)										((parent - child) / 2)
#define GRAPHICS_RIGHT(parent, child)										(parent - child)
//-------------------------------------------------------------------------------//

typedef enum {
    GRAPHICS_ALIGNMENT_TOP_LEFT,
    GRAPHICS_ALIGNMENT_TOP_CENTER,
    GRAPHICS_ALIGNMENT_TOP_RIGHT,

    GRAPHICS_ALIGNMENT_MIDDLE_LEFT,
    GRAPHICS_ALIGNMENT_CENTER,
    GRAPHICS_ALIGNMENT_MIDDLE_RIGHT,

    GRAPHICS_ALIGNMENT_BOTTOM_LEFT,
    GRAPHICS_ALIGNMENT_BOTTOM_CENTER,
    GRAPHICS_ALIGNMENT_BOTTOM_RIGHT,
} GraphicsAlignment;
//-------------------------------------------------------------------------------//
typedef struct{
	St7789Size size;
	St7789Coordinate coordinate;
} GraphicsRegionWidgetConfig;

typedef struct{
	St7789RgbColor color;
	uint16_t width;
} GraphicsOutline;

typedef struct{
	uint8_t fontPixel;
	St7789RgbColor fontColor;
} GraphicsFontConfig;

typedef struct{
	GraphicsFontConfig font;
	St7789Size areaDisplay;
	char *content;
} GraphicsTextConfig;

typedef struct{
	GraphicsRegionWidgetConfig pos;
	St7789RgbColor background;
} GraphicsRectangleConfig;

//-------------------------------------------------------------------------------//

HAL_StatusTypeDef GraphicsDrawRectangleWidgetOutline(St7789Config *config, GraphicsRectangleConfig *rec, GraphicsOutline *outline);
void GraphicsSetSize(St7789Size *size, uint16_t column, uint16_t row);
void GraphicsSetCoordinate(St7789Coordinate *coordinate, uint16_t x, uint16_t y);
void GraphicsSetColor(St7789RgbColor *color, uint8_t red, uint8_t green, uint8_t blue);
HAL_StatusTypeDef GraphicsDrawText(St7789Config *config, GraphicsAlignment alignment, GraphicsTextConfig *textConfig, GraphicsRegionWidgetConfig *region, St7789RgbColor *background);
HAL_StatusTypeDef GraphicsDrawRectangle(St7789Config *config, GraphicsRectangleConfig *rectangleConfig);
void GraphicsRectangleSetUp(GraphicsRectangleConfig *config, St7789RgbColor *color, uint16_t x, uint16_t y, uint16_t column, uint16_t row);
#endif /* GRAPHICS_INC_GRAPHICS_H_ */
