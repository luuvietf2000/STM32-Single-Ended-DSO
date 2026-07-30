#include "Graphics.h"
#include "MainScreen.h"
#include "string.h"
#include "StatusBarConfig.h"

//------------------------------------------------------------------------------------------------------------------//


//------------------------------------------------------------------------------------------------------------------//
HAL_StatusTypeDef MainScreenInit(St7789Config *_config){
	HAL_StatusTypeDef result = HAL_OK;

	result |= GraphicsDrawRectangleWidget(&mainScreen);
	result |= GraphicsWaveformInit(&waveform, WAVEFORM_CONTENT_WIDTH);
	result |= GraphicsDrawWaveformWidget(&waveform);

	result |= StatusBarInit();

	return result;
}


