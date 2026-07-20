#ifndef GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_
#define GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_

#include "Graphics.h"

typedef struct{
	GraphicsRectangleConfig *lines;
	uint16_t count;
} GraphicsLineSet;

typedef struct{
	St7789RgbColor background;
	GraphicsRectangleConfig outline;
	GraphicsLineSet lineSet;
} GraphicsWaveformWidgetConfig;



#endif /* GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_ */
