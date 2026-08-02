#ifndef UI_INC_LAYOUTCONFIG_H_
#define UI_INC_LAYOUTCONFIG_H_

#include "GraphicsRectangleWidget.h"
#include "GraphicsTextWidget.h"
#include "GraphicsWaveformWidget.h"


//----------------------------------------------------------------------------------------------------//
#define CACULATOR_POS_X(widgetWidthSize, widgetPosX)			(widgetWidthSize + widgetPosX)
#define CACULATOR_POS_Y(widgetHeightSize, widgetPosY)			(widgetHeightSize + widgetPosY)
//---------------------------------------------------------------------/
#define MAIN_SCREEN_X											0
#define MAIN_SCREEN_Y											0
#define MAIN_SCREEN_WIDTH										320
#define MAIN_SCREEN_HEIGHT										240
//---------------------------------------------------------------------/
#define MAIN_SCREEN_STATUS_BAR_LAYOUT_X							MAIN_SCREEN_X
#define MAIN_SCREEN_STATUS_BAR_LAYOUT_Y							MAIN_SCREEN_Y
#define MAIN_SCREEN_STATUS_BAR_LAYOUT_WIDTH						MAIN_SCREEN_WIDTH
#define MAIN_SCREEN_STATUS_BAR_LAYOUT_HEIGHT					18
//---------------------------------------------------------------------/
#define MAIN_SCREEN_WAVEFORM_LAYOUT_X							MAIN_SCREEN_X
#define MAIN_SCREEN_WAVEFORM_LAYOUT_Y							CACULATOR_POS_Y(MAIN_SCREEN_STATUS_BAR_LAYOUT_HEIGHT, MAIN_SCREEN_STATUS_BAR_LAYOUT_Y)
#define MAIN_SCREEN_WAVEFORM_LAYOUT_WIDTH						MAIN_SCREEN_WIDTH
#define MAIN_SCREEN_WAVEFORM_LAYOUT_HEIGHT						204
//---------------------------------------------------------------------/
#define MAIN_SCREEN_MEASUREMENT_BAR_LAYOUT_X					MAIN_SCREEN_X
#define MAIN_SCREEN_MEASUREMENT_BAR_LAYOUT_Y					CACULATOR_POS_Y(MAIN_SCREEN_WAVEFORM_LAYOUT_HEIGHT, MAIN_SCREEN_WAVEFORM_LAYOUT_Y)
#define MAIN_SCREEN_MEASUREMENT_BAR_LAYOUT_WIDTH				MAIN_SCREEN_WIDTH
#define MAIN_SCREEN_MEASUREMENT_BAR_LAYOUT_HEIGHT				18
//----------------------------------------------------------------------------------------------------//

#endif /* UI_INC_LAYOUTCONFIG_H_ */
