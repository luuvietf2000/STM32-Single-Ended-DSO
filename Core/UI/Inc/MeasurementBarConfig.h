#ifndef UI_INC_MEASUREMENTBARCONFIG_H_
#define UI_INC_MEASUREMENTBARCONFIG_H_

#include "MeasurementBarLayoutConfig.h"

//-----------------------------------------------------------------------------------------------------//
#define VOLTAGE_LEVEL_UNIT													1000
//-----------------------------------------------------------------------------------//
#define VOLTAGE_MAX_TEXT_SIZE_CONTENT										12
#define VOLTAGE_MIN_TEXT_SIZE_CONTENT										12
//-----------------------------------------------------------------------------------//
#define VOLTAGE_MIN_TEXT_START_CONTENT										"Vmin:"
#define VOLTAGE_MIN_DEFFAULT												1100
//-----------------------------------------------------------------------------------//
#define VOLTAGE_MAX_TEXT_START_CONTENT										"Vmax:"
#define VOLTAGE_MAX_DEFFAULT												2000
//-----------------------------------------------------------------------------------//
#define VOLTAGE_TEXT_CONTENT_VOLTAGE_UINT									"V"
#define VOLTAGE_TEXT_CONTENT_MINI_VOLTAGE_UINT								"mV"
//-----------------------------------------------------------------------------------------------------//
extern GraphicsTextWidgetConfig voltageMaxText;
extern GraphicsTextWidgetConfig voltageMinText;
//-----------------------------------------------------------------------------------------------------//

HAL_StatusTypeDef MeasurementBarInit();
HAL_StatusTypeDef SetVoltageMaxWidget(uint16_t value);
HAL_StatusTypeDef SetVoltageMinWidget(uint16_t value);
#endif /* UI_INC_MEASUREMENTBARCONFIG_H_ */
