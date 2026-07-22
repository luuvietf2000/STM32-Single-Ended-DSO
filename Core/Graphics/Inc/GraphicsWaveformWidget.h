#ifndef GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_
#define GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_

#include "Graphics.h"

typedef struct{
	GraphicsRectangleConfig *lines;
	uint16_t count;
} GraphicsLineSet;

typedef struct{
	GraphicsRectangleWidgetConfig background;
	GraphicsLineSet lineSet;
	GraphicsLineSet waveformPoints;
} GraphicsWaveformWidgetConfig;

void GraphicsWaveformInit(GraphicsWaveformWidgetConfig *waveform, uint16_t pointLenght);
HAL_StatusTypeDef GraphicsWaveformDraw(St7789Config *config, GraphicsWaveformWidgetConfig *waveform);


#endif /* GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_ */
