#ifndef GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_
#define GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_

#include "Graphics.h"
#include "GraphicsRectangleWidget.h"

typedef struct{
	GraphicsRectangleConfig *lines;
	uint16_t count;
} GraphicsLineSet;

typedef struct{
	GraphicsRectangleWidgetConfig background;
	GraphicsLineSet lineSet;
	GraphicsLineSet waveformPoints;
} GraphicsWaveformWidgetConfig;

HAL_StatusTypeDef GraphicsWaveformInit(GraphicsWaveformWidgetConfig *waveform, uint16_t pointLenght);
HAL_StatusTypeDef GraphicsDrawWaveformWidget(GraphicsWaveformWidgetConfig *waveform);


#endif /* GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_ */
