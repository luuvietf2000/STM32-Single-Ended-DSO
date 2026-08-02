#ifndef UI_INC_STATUSBARCONFIG_H_
#define UI_INC_STATUSBARCONFIG_H_

#include <stdio.h>
#include <stdint.h>
#include "StatusBarLayoutConfig.h"
#include "St7789.h"

//-----------------------------------------------------------------------------------------------------------------//
#define VOLTAGE_PER_DIVISION_DEFFAULT																1000
#define TIME_PER_DIVISION_DEFFAULT																	100
//----------------------------------------------------------------------------------------------------//
#define VOLTAGE_PER_DIVISION_TEXT_SIZE_CONTENT														11
#define TIME_PER_DIVISION_TEXT_SIZE_CONTENT															11
#define ACQUISITION_TEXT_SIZE_CONTENT																5
#define ZOOM_SCALE_TEXT_SIZE_CONTENT																7
#define TRIGGER_MODE_TEXT_SIZE_CONTENT																6
#define TRIGGER_EDGE_TEXT_SIZE_CONTENT																8
#define TRIGGER_LEVEL_TEXT_SIZE_CONTENT																11
//----------------------------------------------------------------------------------------------------//
#define STATUS_BAR_LEVEL_UNIT																		1000
#define ACQUISITTION_STATUS_TEXT_RUNNING_CONTENT													"Run"
#define ACQUISITTION_STATUS_TEXT_STOPPED_CONTENT													"Stop"
//----------------------------------------------------------------------------------------------------//
#define ZOOM_SCALE_TEXT_CONTENT																		"x"
#define ZOOM_SCALE_TEXT_DISABLE																		" "
#define ZOOM_SCALE_DEFFAULT																			25
//----------------------------------------------------------------------------------------------------//
#define VOLTAGE_PER_DIVISION_TEXT_VOLTAGE_UINT														"V/div"
#define VOLTAGE_PER_DIVISION_TEXT_MINI_VOLTAGE_UINT													"mV/div"
//----------------------------------------------------------------------------------------------------//
#define TIME_PER_DIVISION_TEXT_MINI_SECOND_UINT														"mS/div"
#define TIME_PER_DIVISION_TEXT_MICRO_SECOND_UINT													"uS/div"
//----------------------------------------------------------------------------------------------------//
#define TRIGGER_MODE_TEXT_MODE_DEFFAULT																TRIGGER_AUTO
#define TRIGGER_MODE_TEXT_MODE_AUTO																	"AUTO"
#define TRIGGER_MODE_TEXT_MODE_NORMAL																"NOR "
#define TRIGGER_MODE_TEXT_MODE_SINGLE																"SING"
//----------------------------------------------------------------------------------------------------//
#define TRIGGER_EDGE_TEXT_MODE_DEFFAULT																TRIGGER_RISSING
#define TRIGGER_EDGE_TEXT_MODE_RISING																"RISING "
#define TRIGGER_EDGE_TEXT_MODE_FALLING																"FALLING"
//----------------------------------------------------------------------------------------------------/
#define TRIGGER_LEVEL_TEXT_LEVEL_DEFFAULT															1100
#define TRIGGER_LEVEL_TEXT_CONTENT_START															"Trig:"
#define TRIGGER_LEVEL_TEXT_CONTENT_VOLTAGE_UINT														"V"
#define TRIGGER_LEVEL_TEXT_CONTENT_MINI_VOLTAGE_UINT												"mV"
//-----------------------------------------------------------------------------------------------------------------//

typedef enum{
	TRIGGER_AUTO,
	TRIIGGER_NORMAL,
	TRIGGER_SINGEL
} TriggerModeState;

typedef enum{
	TRIGGER_RISSING,
	TRIGGER_FALLING
} TriggerEdgeState;

typedef enum{
	ACQUISITTION_RUN,
	ACQUISITTION_STOP
} AcquisittionState;

//-----------------------------------------------------------------------------------------------------------------//

extern GraphicsTextWidgetConfig voltagePerDivisionText;
extern GraphicsTextWidgetConfig timePerDivisionText;
extern GraphicsTextWidgetConfig acquisittionStatusText;
extern GraphicsTextWidgetConfig zoomScaleText;
extern GraphicsTextWidgetConfig triggerModeText;
extern GraphicsTextWidgetConfig triggerEdgeText;
extern GraphicsTextWidgetConfig triggerLevelText;

//-----------------------------------------------------------------------------------------------------------------//
HAL_StatusTypeDef StatusBarInit();
HAL_StatusTypeDef SetAcquisittionStatusWidget(AcquisittionState state);
HAL_StatusTypeDef SetVoltagePerDivWidget(uint16_t value);
HAL_StatusTypeDef SetTimePerDivWidget(uint16_t value);
HAL_StatusTypeDef SetZoomModeTextWidget(uint16_t scale);
HAL_StatusTypeDef SetTriggerModeWidget(TriggerModeState state);
HAL_StatusTypeDef SetTriggerEdgeWidget(TriggerEdgeState state);
HAL_StatusTypeDef SetTriggerLevelWidget(uint16_t level);
#endif /* UI_INC_STATUSBARCONFIG_H_ */
