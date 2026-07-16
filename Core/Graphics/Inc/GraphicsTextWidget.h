#ifndef GRAPHICS_INC_GRAPHICSTEXTWIDGET_H_
#define GRAPHICS_INC_GRAPHICSTEXTWIDGET_H_

#include "Graphics.h"

//--------------------------------------------------------------------------------//

typedef struct{
	GraphicsRegionWidgetConfig region;
	St7789RgbColor background;
	GraphicsTextConfig textConfig;
} GraphicsTextWidgetConfig;

//--------------------------------------------------------------------------------//

//This widget uses the basic drawing functions provided by Graphics.h by default.
HAL_StatusTypeDef GraphicsDrawTextWidget(St7789Config *config, GraphicsTextWidgetConfig *textConfig);

//--------------------------------------------------------------------------------//

#endif /* GRAPHICS_INC_GRAPHICSTEXTWIDGET_H_ */
