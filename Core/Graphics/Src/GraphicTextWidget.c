#include "string.h"
#include "GraphicsTextWidget.h"

//--------------------------------------------------------------------------------//

HAL_StatusTypeDef GraphicsDrawTextWidget(St7789Config *config, GraphicsTextWidgetConfig *textConfig){
	return GraphicsDrawText(config, &textConfig->textConfig, &textConfig->region, &textConfig->background);
}

//--------------------------------------------------------------------------------//


