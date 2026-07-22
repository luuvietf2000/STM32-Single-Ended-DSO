#include "GraphicsWaveformWidget.h"
#include "GraphicsRectangleWidget.h"

void GraphicsWaveformInit(GraphicsWaveformWidgetConfig *waveform, uint16_t pointLenght){
	waveform->waveformPoints.count = pointLenght;
	waveform->waveformPoints.lines = malloc(pointLenght * sizeof(GraphicsRectangleConfig));
}

HAL_StatusTypeDef GraphicsWaveformDraw(St7789Config *config, GraphicsWaveformWidgetConfig *waveform){
	HAL_StatusTypeDef reuslt = HAL_OK;
	reuslt |= GraphicsDrawRectangleWidget(St7789Config *config, &waveform->background);
	if(waveform->lineSet.lines != NULL){
		for(uint16_t i = 0; i < waveform->lineSet.count; i++){
			result |= GraphicsDrawRectangle(st7789config, &(waveform->lineSet.lines + i));
		}
	}
	if(waveform->waveformPoints.lines != NULL){
		for(uint16_t i = 0; i < waveform->waveformPoints.count; i++){
			result |= GraphicsDrawRectangle(st7789config, &(waveform->waveformPoints.lines + i));
		}
	}
	return result;
}

HAL_StatusTypeDef GraphicsWaveformUpdatePoint(St7789Config *config, GraphicsWaveformWidgetConfig *waveform, uint16_t pos, GraphicsRectangleConfig *newPoint){
	if(pos >= waveform->waveformPoints.count)
		return HAL_ERROR;
	HAL_StatusTypeDef result;
	return result;
}
