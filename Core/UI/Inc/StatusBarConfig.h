#ifndef UI_INC_STATUSBARCONFIG_H_
#define UI_INC_STATUSBARCONFIG_H_

#include <stdio.h>
#include <stdint.h>
#include "StatusBarLayoutConfig.h"
#include "St7789.h"

//-----------------------------------------------------------------------------------------------------------------//
#define VOLTAGE_PER_DIVISION_TEXT_SIZE_CONTENT														10
#define TIME_PER_DIVISION_TEXT_SIZE_CONTENT															10
#define ACQUISITION_TEXT_SIZE_CONTENT																5
#define ZOOM_MODE_TEXT_SIZE_CONTENT																	9
//----------------------------------------------------------------------------------------------------//
#define STATUS_BAR_LEVEL_UNIT																		1000
#define ACQUISITTION_STATUS_TEXT_RUNNING_CONTENT													"Run"
#define ACQUISITTION_STATUS_TEXT_STOPPED_CONTENT													"Stop"
//----------------------------------------------------------------------------------------------------//
#define ZOOM_MODE_TEXT_ZOOM_OUT_CONTENT																"Zoom In "
#define ZOOM_MODE_TEXT_ZOOM_IN_CONTENT																"Zoom Out"
#define ZOOM_MODE_TEXT_DEFFAULT_CONTENT																"        "
//----------------------------------------------------------------------------------------------------//
#define VOLTAGE_PER_DIVISION_TEXT_VOLTAGE_UINT														"V/div"
#define VOLTAGE_PER_DIVISION_TEXT_MINI_VOLTAGE_UINT													"mV/div"
#define VOLTAGE_LENGTH_BUFFER																		10
//----------------------------------------------------------------------------------------------------//
#define TIME_PER_DIVISION_TEXT_SECOND_UINT															"S/div"
#define TIME_PER_DIVISION_TEXT_MINI_SECOND_UINT														"mS/div"
#define TIME_LENGTH_BUFFER																			10
//-----------------------------------------------------------------------------------------------------------------//

typedef enum{
	ZOOM_OUT,
	ZOOM_IN,
	ZOOM_RESET
} ZoomModeEnum;


typedef enum{
	ACQUISITTION_RUN,
	ACQUISITTION_STOP
} AcquisittionState;

//-----------------------------------------------------------------------------------------------------------------//

extern GraphicsTextWidgetConfig voltagePerDivisionText;
extern GraphicsTextWidgetConfig timePerDivisionText;
extern GraphicsTextWidgetConfig acquisittionStatusText;
extern GraphicsTextWidgetConfig zoomText;

//-----------------------------------------------------------------------------------------------------------------//
HAL_StatusTypeDef SetZoomModeTextWidget(ZoomModeEnum mode);
HAL_StatusTypeDef StatusBarInit();
HAL_StatusTypeDef SetAcquisittionStatusWidget(AcquisittionState state);
#endif /* UI_INC_STATUSBARCONFIG_H_ */
