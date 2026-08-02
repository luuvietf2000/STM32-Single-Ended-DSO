#include "GraphicsWaveformWidget.h"
#include "GraphicsRectangleWidget.h"
#include <stdlib.h>

//-----------------------------------------------------------------------------------------------------------//
static HAL_StatusTypeDef GraphicsWaveformAllocate(GraphicsLineSet *lines, uint16_t pointLenght);
static HAL_StatusTypeDef GraphicsDrawLine(GraphicsLineSet *lines);
//-----------------------------------------------------------------------------------------------------------//
static HAL_StatusTypeDef GraphicsWaveformAllocate(GraphicsLineSet *lines, uint16_t length){
	lines->count = length;
	lines->lines = malloc(length * sizeof(GraphicsRectangleConfig));
	if(lines->lines == NULL)
		return HAL_ERROR;
	return HAL_OK;
}

HAL_StatusTypeDef GraphicsWaveformAllocateLineSet(GraphicsWaveformWidgetConfig *waveform, uint16_t length){
	return GraphicsWaveformAllocate(&waveform->lineSet, length);
}

HAL_StatusTypeDef GraphicsWaveformAllocateWaveformPoint(GraphicsWaveformWidgetConfig *waveform, uint16_t length){
	return GraphicsWaveformAllocate(&waveform->waveformPoints, length);
}

HAL_StatusTypeDef GraphicsDrawWaveformWidgetLineSet(GraphicsWaveformWidgetConfig *waveform){
	HAL_StatusTypeDef result = HAL_OK;
	result |= GraphicsDrawRectangleWidget(&waveform->background);
	if(waveform->lineSet.lines != NULL){
		GraphicsDrawLine(&waveform->lineSet);
	}
	return result;
}

HAL_StatusTypeDef GraphicsDrawWaveformWidgetWavePoints(GraphicsWaveformWidgetConfig *waveform){
	if(waveform->waveformPoints.lines != NULL){
		GraphicsDrawLine(&waveform->waveformPoints);
	}
	return HAL_ERROR;
}

static HAL_StatusTypeDef GraphicsDrawLine(GraphicsLineSet *lines){
	HAL_StatusTypeDef result = HAL_OK;
	for(uint16_t i = 0; i < lines->count; i++){
		result |= GraphicsDrawRectangle(lines->lines + i);
	}
	return result;
}

HAL_StatusTypeDef GraphicsWaveformUpdatePoint(GraphicsWaveformWidgetConfig *waveform, uint16_t pos, GraphicsRectangleConfig *newPoint){
	if(pos >= waveform->waveformPoints.count)
		return HAL_ERROR;
	HAL_StatusTypeDef result;
	return HAL_OK;
}
