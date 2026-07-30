#ifndef UI_INC_MAINSCREEN_H_
#define UI_INC_MAINSCREEN_H_

#include <StatusBarConfig.h>
#include "GraphicsWaveformWidget.h"
#include "MainScrenBackgroundConfig.h"
#include <WaveformLayoutConfig.h>
#include "MainScreen.h"

//---------------------------------------------------------------------------------------------------------------------------//

#define ZOOM_MODE_DEFFAULT																			ZOOM_RESET
#define ACQUISITTION_STATUS_MODE_DEFFAULT															ACQUISITTION_RUN


//---------------------------------------------------------------------------------------------------------------------------//


//---------------------------------------------------------------------------------------------------------------------------//
extern GraphicsWaveformWidgetConfig waveform;
extern GraphicsRectangleWidgetConfig mainScreen;

//---------------------------------------------------------------------------------------------------------------------------//
HAL_StatusTypeDef MainScreenInit(St7789Config *config);

//---------------------------------------------------------------------------------------------------------------------------//
#endif /* UI_INC_MAINSCREEN_H_ */
