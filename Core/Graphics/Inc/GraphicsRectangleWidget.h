#ifndef GRAPHICS_INC_GRAPHICSRECTANGLEWIDGET_H_
#define GRAPHICS_INC_GRAPHICSRECTANGLEWIDGET_H_

//--------------------------------------------------------------------------------//

#include "Graphics.h"

//--------------------------------------------------------------------------------//

//This widget uses the basic drawing functions provided by Graphics.h by default.
HAL_StatusTypeDef GraphicsDrawRectangleWidget(St7789Config *config, GraphicsRectangleConfig *rectangleConfig);
void GraphicsSetRectangleWidgetSize(GraphicsRectangleConfig *rectangleConfig, uint16_t column, uint16_t row);
void GraphicsSetRectangleWidgetCoordinate(GraphicsRectangleConfig *rectangleConfig, uint16_t x, uint16_t y);
void GraphicsSetRectangleWidgetColor(GraphicsRectangleConfig *rectangleConfig, uint8_t red, uint8_t green, uint8_t blue);

#endif /* GRAPHICS_INC_GRAPHICSRECTANGLEWIDGET_H_ */
