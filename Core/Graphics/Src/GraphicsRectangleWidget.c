#include "GraphicsRectangleWidget.h"
#include <string.h>
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//

HAL_StatusTypeDef GraphicsDrawRectangleWidget(St7789Config *config, GraphicsRectangleConfig *rectangleConfig){
	return GraphicsDrawRectangle(config, rectangleConfig);
}
void GraphicsSetRectangleWidgetSize(GraphicsRectangleConfig *rectangleConfig, uint16_t column, uint16_t row){
	GraphicsSetSize(&rectangleConfig->pos.size, column, row);
}
void GraphicsSetRectangleWidgetCoordinate(GraphicsRectangleConfig *rectangleConfig, uint16_t x, uint16_t y){
	GraphicsSetCoordinate(&rectangleConfig->pos.coordinate, x, y);
}
void GraphicsSetRectangleWidgetColor(GraphicsRectangleConfig *rectangleConfig, uint8_t red, uint8_t green, uint8_t blue){
	GraphicsSetColor(&rectangleConfig->background, red, green, blue);
}
