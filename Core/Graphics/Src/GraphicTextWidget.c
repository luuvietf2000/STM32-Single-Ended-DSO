#include "string.h"
#include "GraphicsTextWidget.h"

//--------------------------------------------------------------------------------//
static HAL_StatusTypeDef GraphicsDrawtextWidgetContent(GraphicsTextWidgetConfig *textConfig);

//--------------------------------------------------------------------------------//

HAL_StatusTypeDef GraphicsDrawTextWidget(GraphicsTextWidgetConfig *textConfig){
	if(textConfig->outline.width == 0)
		return GraphicsDrawText(textConfig->aligment, &textConfig->textConfig, &textConfig->background.pos, &textConfig->background.background);
	return GraphicsDrawRectangleWidgetOutline(&textConfig->background, &textConfig->outline)
			|| GraphicsDrawtextWidgetContent(textConfig);
}

static HAL_StatusTypeDef GraphicsDrawtextWidgetContent(GraphicsTextWidgetConfig *textConfig){
	GraphicsRegionWidgetConfig region;
	region.size = (St7789Size) {
		textConfig->background.pos.size.column - textConfig->outline.width * 2,
		textConfig->background.pos.size.row - textConfig->outline.width * 2
	};
	region.coordinate = (St7789Coordinate){
		textConfig->outline.width,
		textConfig->outline.width
	};
	return GraphicsDrawText(textConfig->aligment, &textConfig->textConfig, &region, &textConfig->background.background);
}


