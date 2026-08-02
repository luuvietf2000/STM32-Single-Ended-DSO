#ifndef GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_
#define GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_

#include "Graphics.h"
#include "GraphicsRectangleWidget.h"

//-------------------------------------------------------------------------------------------------------------------//
typedef struct{
	GraphicsRectangleConfig *lines;
	uint16_t count;
} GraphicsLineSet;

typedef struct{
	GraphicsRectangleWidgetConfig background;
	GraphicsLineSet lineSet;
	GraphicsLineSet waveformPoints;
} GraphicsWaveformWidgetConfig;


//-------------------------------------------------------------------------------------------------------------------//
HAL_StatusTypeDef GraphicsDrawWaveformLineSetWidget(GraphicsWaveformWidgetConfig *waveform);
HAL_StatusTypeDef GraphicsWaveformAllocateWaveformPoint(GraphicsWaveformWidgetConfig *waveform, uint16_t length);
HAL_StatusTypeDef GraphicsWaveformAllocateLineSet(GraphicsWaveformWidgetConfig *waveform, uint16_t length);
HAL_StatusTypeDef GraphicsDrawWaveformWidgetLineSet(GraphicsWaveformWidgetConfig *waveform);
HAL_StatusTypeDef GraphicsDrawWaveformWidgetWavePoints(GraphicsWaveformWidgetConfig *waveform);
//-------------------------------------------------------------------------------------------------------------------//

#endif /* GRAPHICS_INC_GRAPHICSWAVEFORMWIDGET_H_ */
