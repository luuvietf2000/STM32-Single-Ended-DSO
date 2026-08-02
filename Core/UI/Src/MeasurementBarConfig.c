#include "MeasurementBarConfig.h"

//-----------------------------------------------------------------------------------------------------//
static char voltageMinContent[VOLTAGE_MIN_TEXT_SIZE_CONTENT];
static char voltageMaxContent[VOLTAGE_MAX_TEXT_SIZE_CONTENT];
//-----------------------------------------------------------------------------------------------------//
static void VoltageWidgetInit(GraphicsTextWidgetConfig *widget, char *buffer);
static void SetVoltageDisplay(uint16_t value, char* buffer, uint16_t size, const char* keyworkStart);
//-----------------------------------------------------------------------------------------------------//

HAL_StatusTypeDef SetVoltageMinWidget(uint16_t value){
	SetVoltageDisplay(
		value,
		voltageMinContent,
		VOLTAGE_MIN_TEXT_SIZE_CONTENT,
		VOLTAGE_MIN_TEXT_START_CONTENT
	);
	return GraphicsDrawTextWidget(&voltageMinText);
}

HAL_StatusTypeDef SetVoltageMaxWidget(uint16_t value){
	SetVoltageDisplay(
		value,
		voltageMaxContent,
		VOLTAGE_MAX_TEXT_SIZE_CONTENT,
		VOLTAGE_MAX_TEXT_START_CONTENT
	);
	return GraphicsDrawTextWidget(&voltageMaxText);
}

static void VoltageWidgetInit(GraphicsTextWidgetConfig *widget, char *buffer){
	widget->textConfig.content = buffer;
}

static void SetVoltageDisplay(uint16_t value, char* buffer, uint16_t size, const char* keyworkStart){
	if(value < VOLTAGE_LEVEL_UNIT){
		snprintf(buffer, size, "%s%03u%s", keyworkStart, value, VOLTAGE_TEXT_CONTENT_MINI_VOLTAGE_UINT);
	} else{
		float valueDisplay = (float) value / VOLTAGE_LEVEL_UNIT;
		snprintf(buffer, size, "%s%04.2f%s", keyworkStart, valueDisplay, VOLTAGE_TEXT_CONTENT_VOLTAGE_UINT);
	}
}

HAL_StatusTypeDef MeasurementBarInit(){
	HAL_StatusTypeDef result = HAL_OK;
	VoltageWidgetInit(&voltageMaxText, voltageMaxContent);
	VoltageWidgetInit(&voltageMinText, voltageMinContent);
	result |= SetVoltageMinWidget(VOLTAGE_MIN_DEFFAULT);
	result |= SetVoltageMaxWidget(VOLTAGE_MAX_DEFFAULT);
	return result;
}
