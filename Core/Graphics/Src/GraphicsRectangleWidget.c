#include "GraphicsRectangleWidget.h"
#include <string.h>

//--------------------------------------------------------------------------------//
static HAL_StatusTypeDef GraphicsDrawRectangleWidgetInterior(St7789Config *config, GraphicsRectangleWidgetConfig *rectangleConfig);
//--------------------------------------------------------------------------------//

HAL_StatusTypeDef GraphicsDrawRectangleWidget(St7789Config *config, GraphicsRectangleWidgetConfig *rectangleConfig){
	//--------------------------------------------------------------------------------//
	// Draw if not outline
	if(rectangleConfig->outline.width == 0){
		return GraphicsDrawRectangle(config, &rectangleConfig->rectangle);
	}
	return GraphicsDrawRectangleWidgetInterior(config, rectangleConfig)
			|| GraphicsDrawRectangleWidgetOutline(config, &rectangleConfig->rectangle, &rectangleConfig->outline);
}

static HAL_StatusTypeDef GraphicsDrawRectangleWidgetInterior(St7789Config *config, GraphicsRectangleWidgetConfig *rectangleConfig){
	GraphicsRectangleConfig rectangle;
	GraphicsRectangleSetUp(
		&rectangle,
		&rectangleConfig->rectangle.background,
		rectangleConfig->rectangle.pos.coordinate.x + rectangleConfig->outline.width,
		rectangleConfig->rectangle.pos.coordinate.y + rectangleConfig->outline.width,
		rectangleConfig->rectangle.pos.size.column - 2 * rectangleConfig->outline.width,
		rectangleConfig->rectangle.pos.size.row - 2 * rectangleConfig->outline.width
	);

	return GraphicsDrawRectangle(config, &rectangle);
}


void GraphicsSetRectangleWidgetSize(GraphicsRectangleWidgetConfig *rectangleConfig, uint16_t column, uint16_t row){
	GraphicsSetSize(&rectangleConfig->rectangle.pos.size, column, row);
}
void GraphicsSetRectangleWidgetCoordinate(GraphicsRectangleWidgetConfig *rectangleConfig, uint16_t x, uint16_t y){
	GraphicsSetCoordinate(&rectangleConfig->rectangle.pos.coordinate, x, y);
}
void GraphicsSetRectangleWidgetColor(GraphicsRectangleWidgetConfig *rectangleConfig, uint8_t red, uint8_t green, uint8_t blue){
	GraphicsSetColor(&rectangleConfig->rectangle.background, red, green, blue);
}
void GraphicsSetRectangleWidgetOutline(GraphicsRectangleWidgetConfig *rectangleConfig, uint16_t width, uint8_t red, uint8_t green, uint8_t blue){
	rectangleConfig->outline.width = width;
	GraphicsSetColor(&rectangleConfig->outline.color, red, green, blue);
}
