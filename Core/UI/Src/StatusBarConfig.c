#include <StatusBarConfig.h>
#include <stdio.h>
#include "GraphicsTextWidget.h"
#include "string.h"

//-----------------------------------------------------------------------------------------------------------------//
static const char *const acquisittionText[] = {
	ACQUISITTION_STATUS_TEXT_RUNNING_CONTENT,
	ACQUISITTION_STATUS_TEXT_STOPPED_CONTENT
};

static const char *const zoomModeText[] = {
	ZOOM_MODE_TEXT_ZOOM_OUT_CONTENT,
	ZOOM_MODE_TEXT_ZOOM_IN_CONTENT,
	ZOOM_MODE_TEXT_DEFFAULT_CONTENT
};

char voltagePerDisitionTextContent[VOLTAGE_PER_DIVISION_TEXT_SIZE_CONTENT];
char timePerDisitionTextContent[TIME_PER_DIVISION_TEXT_SIZE_CONTENT];
char acquisittionTextContent[ACQUISITION_TEXT_SIZE_CONTENT];
char zoomModeTextContent[ZOOM_MODE_TEXT_SIZE_CONTENT];

//-----------------------------------------------------------------------------------------------------------------//

static void GetContentValuePerDiv(uint16_t value, char *buffer, uint16_t size, const char *uintText, const char *miniUintText);
static const char *GetContentZoomMode(ZoomModeEnum mode);
static const char *GetContentAcquisittionStatus(AcquisittionState state);
static void GetContentVoltagePerDiv(uint16_t value, char *buffer);
static void GetContentTimePerDiv(uint16_t value, char *buffer);
static HAL_StatusTypeDef AcquisittionStatusWidgetInit(AcquisittionState state);
static HAL_StatusTypeDef ZoomModeWidgetInit(ZoomModeEnum mode);
static HAL_StatusTypeDef SetTextWidget(GraphicsTextWidgetConfig *widget, const char *text);

//-----------------------------------------------------------------------------------------------------------------//
static const char *GetContentZoomMode(ZoomModeEnum mode){
	return zoomModeText[mode];
}

static const char *GetContentAcquisittionStatus(AcquisittionState state){
	return acquisittionText[state];
}

void GetContentVoltagePerDiv(uint16_t value, char *buffer){
	GetContentValuePerDiv(
		value,
		buffer,
		VOLTAGE_LENGTH_BUFFER,
		VOLTAGE_PER_DIVISION_TEXT_VOLTAGE_UINT,
		VOLTAGE_PER_DIVISION_TEXT_MINI_VOLTAGE_UINT
	);
}

void GetContentTimePerDiv(uint16_t value, char *buffer){
	GetContentValuePerDiv(
		value,
		buffer,
		STATUS_BAR_LEVEL_UNIT,
		TIME_PER_DIVISION_TEXT_SECOND_UINT,
		TIME_PER_DIVISION_TEXT_MINI_SECOND_UINT
	);
}

static void GetContentValuePerDiv(uint16_t value, char *buffer, uint16_t size, const char *uintText, const char *miniUintText){
	const char *unit;
	uint16_t displayValue;

	if (value < STATUS_BAR_LEVEL_UNIT){
	    displayValue = value;
	    unit = miniUintText;
	} else {
	    displayValue = value / STATUS_BAR_LEVEL_UNIT;
	    unit = uintText;
	}
	snprintf(buffer, size, "%04u%s", displayValue, unit);
}

HAL_StatusTypeDef StatusBarInit(){
	HAL_StatusTypeDef result = HAL_OK;
	result |= AcquisittionStatusWidgetInit(ACQUISITTION_RUN);
	result |= ZoomModeWidgetInit(ZOOM_RESET);
	return result;
}

HAL_StatusTypeDef AcquisittionStatusWidgetInit(AcquisittionState state){
	acquisittionStatusText.textConfig.content = acquisittionTextContent;
	return SetAcquisittionStatusWidget(state);
}

HAL_StatusTypeDef SetAcquisittionStatusWidget(AcquisittionState state){
	const char *text = GetContentAcquisittionStatus(state);
	return SetTextWidget(&acquisittionStatusText, text);
}

static HAL_StatusTypeDef SetTextWidget(GraphicsTextWidgetConfig *widget, const char *text){
	strcpy(widget->textConfig.content, text);
	return GraphicsDrawTextWidget(widget);
}

HAL_StatusTypeDef SetZoomModeTextWidget(ZoomModeEnum mode){
	const char *text = GetContentZoomMode(mode);
	return SetTextWidget(&zoomText, text);
}

HAL_StatusTypeDef ZoomModeWidgetInit(ZoomModeEnum mode){
	zoomText.textConfig.content = zoomModeTextContent;
	return SetZoomModeTextWidget(mode);
}
