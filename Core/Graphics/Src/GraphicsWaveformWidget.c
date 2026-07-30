#include "GraphicsWaveformWidget.h"
#include "GraphicsRectangleWidget.h"
#include <stdlib.h>

HAL_StatusTypeDef GraphicsWaveformInit(GraphicsWaveformWidgetConfig *waveform, uint16_t pointLenght){
	waveform->waveformPoints.count = pointLenght;
	waveform->waveformPoints.lines = malloc(pointLenght * sizeof(GraphicsRectangleConfig));
	if(waveform->waveformPoints.lines == NULL)
		return HAL_ERROR;
	return HAL_OK;
}

HAL_StatusTypeDef GraphicsDrawWaveformWidget(GraphicsWaveformWidgetConfig *waveform){
	HAL_StatusTypeDef result = HAL_OK;
	result |= GraphicsDrawRectangleWidget(&waveform->background);
	if(waveform->lineSet.lines != NULL){
		for(uint16_t i = 0; i < waveform->lineSet.count; i++){
			result |= GraphicsDrawRectangle(waveform->lineSet.lines + i);
		}
	}
	return result;
}

HAL_StatusTypeDef GraphicsWaveformUpdatePoint(GraphicsWaveformWidgetConfig *waveform, uint16_t pos, GraphicsRectangleConfig *newPoint){
	if(pos >= waveform->waveformPoints.count)
		return HAL_ERROR;
	HAL_StatusTypeDef result;
	return result;
}
