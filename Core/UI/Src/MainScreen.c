#include "Graphics.h"
#include "MainScreen.h"
#include "string.h"
#include "StatusBarConfig.h"
#include "MeasurementBarConfig.h"

//------------------------------------------------------------------------------------------------------------------//


//------------------------------------------------------------------------------------------------------------------//
HAL_StatusTypeDef MainScreenInit(){
	HAL_StatusTypeDef result = HAL_OK;

	result |= GraphicsDrawRectangleWidget(&mainScreen);
	result |= GraphicsDrawWaveformWidgetLineSet(&waveform);
	result |= StatusBarInit();
	result |= MeasurementBarInit();

	return result;
}


