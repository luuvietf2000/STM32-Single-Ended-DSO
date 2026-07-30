#ifndef UI_INC_LAYOUTCONFIG_H_
#define UI_INC_LAYOUTCONFIG_H_

#include "GraphicsRectangleWidget.h"
#include "GraphicsTextWidget.h"
#include "GraphicsWaveformWidget.h"


//----------------------------------------------------------------------------------------------------//
#define MAIN_SCREEN_X											0
#define MAIN_SCREEN_Y											0
#define MAIN_SCREEN_WIDTH										320
#define MAIN_SCREEN_HEIGHT										240
//---------------------------------------------------------------------/
#define MAIN_SCREEN_STATUS_BAR_LAYOUT_WIDTH						MAIN_SCREEN_WIDTH
#define MAIN_SCREEN_STATUS_BAR_LAYOUT_HEIGHT					18
//---------------------------------------------------------------------/
#define MAIN_SCREEN_WAVEFORM_LAYOUT_X							0
#define MAIN_SCREEN_WAVEFORM_LAYOUT_Y							MAIN_SCREEN_STATUS_BAR_LAYOUT_HEIGHT
#define MAIN_SCREEN_WAVEFORM_LAYOUT_WIDTH						MAIN_SCREEN_WIDTH
#define MAIN_SCREEN_WAVEFORM_LAYOUT_HEIGHT						204
//---------------------------------------------------------------------/
#define MAIN_SCREEN_MEASUREMENT_BAR_LAYOUT_WIDTH				MAIN_SCREEN_WIDTH
#define MAIN_SCREEN_MEASUREMENT_BAR_LAYOUT_HEIGHT				18
//----------------------------------------------------------------------------------------------------//

#endif /* UI_INC_LAYOUTCONFIG_H_ */
