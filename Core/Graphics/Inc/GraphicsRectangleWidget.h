#ifndef GRAPHICS_INC_GRAPHICSRECTANGLEWIDGET_H_
#define GRAPHICS_INC_GRAPHICSRECTANGLEWIDGET_H_

//--------------------------------------------------------------------------------//

#include "Graphics.h"

//--------------------------------------------------------------------------------//

typedef struct{
	GraphicsRectangleConfig rectangle;
	GraphicsOutline outline;
} GraphicsRectangleWidgetConfig;

//--------------------------------------------------------------------------------//

//This widget uses the basic drawing functions provided by Graphics.h by default.
HAL_StatusTypeDef GraphicsDrawRectangleWidget(St7789Config *config, GraphicsRectangleWidgetConfig *rectangleConfig);
void GraphicsSetRectangleWidgetSize(GraphicsRectangleWidgetConfig *rectangleConfig, uint16_t column, uint16_t row);
void GraphicsSetRectangleWidgetCoordinate(GraphicsRectangleWidgetConfig *rectangleConfig, uint16_t x, uint16_t y);
void GraphicsSetRectangleWidgetColor(GraphicsRectangleWidgetConfig *rectangleConfig, uint8_t red, uint8_t green, uint8_t blue);
void GraphicsSetRectangleWidgetOutline(GraphicsRectangleWidgetConfig *rectangleConfig, uint16_t width, uint8_t red, uint8_t green, uint8_t blue);

#endif /* GRAPHICS_INC_GRAPHICSRECTANGLEWIDGET_H_ */
