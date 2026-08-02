#include <StatusBarConfig.h>
#include <stdio.h>
#include "GraphicsTextWidget.h"
#include "string.h"

//-----------------------------------------------------------------------------------------------------------------//
static const char *const acquisittionText[] = {
	ACQUISITTION_STATUS_TEXT_RUNNING_CONTENT,
	ACQUISITTION_STATUS_TEXT_STOPPED_CONTENT
};

static const char *const triggerModeTextState[] = {
	TRIGGER_MODE_TEXT_MODE_AUTO,
	TRIGGER_MODE_TEXT_MODE_NORMAL,
	TRIGGER_MODE_TEXT_MODE_SINGLE
};

static const char *const triggerEdgeTextState[] = {
	TRIGGER_EDGE_TEXT_MODE_RISING,
	TRIGGER_EDGE_TEXT_MODE_FALLING
};

static char voltagePerDivisionTextContent[VOLTAGE_PER_DIVISION_TEXT_SIZE_CONTENT];
static char timePerDivisionTextContent[TIME_PER_DIVISION_TEXT_SIZE_CONTENT];
static char acquisittionTextContent[ACQUISITION_TEXT_SIZE_CONTENT];
static char zoomScaleTextContent[ZOOM_SCALE_TEXT_SIZE_CONTENT];
static char triggerModeContent[TRIGGER_MODE_TEXT_SIZE_CONTENT];
static char triggerEdgeContent[TRIGGER_EDGE_TEXT_SIZE_CONTENT];
static char triggerLevelContent[TRIGGER_LEVEL_TEXT_SIZE_CONTENT];

//-----------------------------------------------------------------------------------------------------------------//
static void GetContentValuePerDiv(uint16_t value, char *buffer, uint16_t size, const char *uintText, const char *miniUintText);
static const char *GetContentAcquisittionStatus(AcquisittionState state);
static void GetContentVoltagePerDiv(uint16_t value, char *buffer);
static void GetContentTimePerDiv(uint16_t value, char *buffer);
static void AcquisittionStatusWidgetInit();
static HAL_StatusTypeDef SetTextWidget(GraphicsTextWidgetConfig *widget, const char *text);
static void VoltagePerDivisionWidgetInit();
static void TimePerDivisionWidgetInit();
static void ZoomModeWidgetInit();
static const char *GetContentTriggerMode(TriggerModeState state);
static void TextWidgetInit(GraphicsTextWidgetConfig *widget, char *buffer);
static void TriggerModeWidgetInit();
static void TriggerEdgeWidgetInit();
static const char *GetContentTriggerEdge(TriggerEdgeState state);
static void TriggerLevelWidgetInit();
//-----------------------------------------------------------------------------------------------------------------//

HAL_StatusTypeDef SetTriggerLevelWidget(uint16_t level){
	strcpy(triggerLevelContent, TRIGGER_LEVEL_TEXT_CONTENT_START);
	GetContentValuePerDiv(
		level,
		triggerLevelContent + strlen(triggerLevelContent),
		TRIGGER_LEVEL_TEXT_SIZE_CONTENT,
		TRIGGER_LEVEL_TEXT_CONTENT_VOLTAGE_UINT,
		TRIGGER_LEVEL_TEXT_CONTENT_MINI_VOLTAGE_UINT
	);
	return GraphicsDrawTextWidget(&triggerLevelText);
}

static void TriggerLevelWidgetInit(){
	TextWidgetInit(&triggerLevelText, triggerLevelContent);
}

HAL_StatusTypeDef SetTriggerEdgeWidget(TriggerEdgeState state){
	const char *content = GetContentTriggerEdge(state);
	return SetTextWidget(&triggerEdgeText, content);
}

static const char *GetContentTriggerEdge(TriggerEdgeState state){
	return triggerEdgeTextState[state];
}

static void TriggerEdgeWidgetInit(){
	TextWidgetInit(&triggerEdgeText, triggerEdgeContent);
}

static void TriggerModeWidgetInit(){
	TextWidgetInit(&triggerModeText, triggerModeContent);
}

HAL_StatusTypeDef SetTriggerModeWidget(TriggerModeState state){
	const char *content = GetContentTriggerMode(state);
	return SetTextWidget(&triggerModeText, content);
}

static void TextWidgetInit(GraphicsTextWidgetConfig *widget, char *buffer){
	widget->textConfig.content = buffer;
}

static const char *GetContentTriggerMode(TriggerModeState state){
	return triggerModeTextState[state];
}

static const char *GetContentAcquisittionStatus(AcquisittionState state){
	return acquisittionText[state];
}

void GetContentVoltagePerDiv(uint16_t value, char *buffer){
	GetContentValuePerDiv(
		value,
		buffer,
		VOLTAGE_PER_DIVISION_TEXT_SIZE_CONTENT,
		VOLTAGE_PER_DIVISION_TEXT_VOLTAGE_UINT,
		VOLTAGE_PER_DIVISION_TEXT_MINI_VOLTAGE_UINT
	);
}

void GetContentTimePerDiv(uint16_t value, char *buffer){
	GetContentValuePerDiv(
		value,
		buffer,
		TIME_PER_DIVISION_TEXT_SIZE_CONTENT,
		TIME_PER_DIVISION_TEXT_MINI_SECOND_UINT,
		TIME_PER_DIVISION_TEXT_MICRO_SECOND_UINT
	);
}

static void GetContentValuePerDiv(uint16_t value, char *buffer, uint16_t size, const char *uintText, const char *miniUintText){
	uint16_t displayValue;
	if (value < STATUS_BAR_LEVEL_UNIT){
	    displayValue = value;
	    snprintf(buffer, size, "%03u%s", displayValue, miniUintText);
	} else if(value % STATUS_BAR_LEVEL_UNIT == 0){
	    displayValue = value / STATUS_BAR_LEVEL_UNIT;
	    snprintf(buffer, size, "%04u%s", displayValue, uintText);
	} else{
		float displayFloat = (float) value / STATUS_BAR_LEVEL_UNIT;
		snprintf(buffer, size, "%04.2f%s", displayFloat, uintText);
	}
}

HAL_StatusTypeDef StatusBarInit(){
	HAL_StatusTypeDef result = HAL_OK;
	AcquisittionStatusWidgetInit();
	result |= SetAcquisittionStatusWidget(ACQUISITTION_RUN);
	ZoomModeWidgetInit();
	result |= SetZoomModeTextWidget(ZOOM_SCALE_DEFFAULT);
	TimePerDivisionWidgetInit(TIME_PER_DIVISION_DEFFAULT);
	result |= SetTimePerDivWidget(TIME_PER_DIVISION_DEFFAULT);
	VoltagePerDivisionWidgetInit();
	result |= SetVoltagePerDivWidget(VOLTAGE_PER_DIVISION_DEFFAULT);
	TriggerModeWidgetInit();
	result |= SetTriggerModeWidget(TRIGGER_MODE_TEXT_MODE_DEFFAULT);
	TriggerEdgeWidgetInit();
	result |= SetTriggerEdgeWidget(TRIGGER_EDGE_TEXT_MODE_DEFFAULT);
	TriggerLevelWidgetInit();
	result |= SetTriggerLevelWidget(TRIGGER_LEVEL_TEXT_LEVEL_DEFFAULT);
	return result;
}

void AcquisittionStatusWidgetInit(){
	TextWidgetInit(&acquisittionStatusText, acquisittionTextContent);
}

HAL_StatusTypeDef SetAcquisittionStatusWidget(AcquisittionState state){
	const char *text = GetContentAcquisittionStatus(state);
	return SetTextWidget(&acquisittionStatusText, text);
}

static HAL_StatusTypeDef SetTextWidget(GraphicsTextWidgetConfig *widget, const char *text){
	strcpy(widget->textConfig.content, text);
	return GraphicsDrawTextWidget(widget);
}

HAL_StatusTypeDef SetZoomModeTextWidget(uint16_t scale){
	if(scale != 0){
		snprintf(
			zoomScaleTextContent,
			ZOOM_SCALE_TEXT_SIZE_CONTENT,
			"%s%03u",
			ZOOM_SCALE_TEXT_CONTENT,
			scale
		);
	} else{
		strcpy(zoomScaleTextContent, ZOOM_SCALE_TEXT_CONTENT);
	}
	return GraphicsDrawTextWidget(&zoomScaleText);
}

static void ZoomModeWidgetInit(){
	TextWidgetInit(&zoomScaleText, zoomScaleTextContent);
}


static void TimePerDivisionWidgetInit(){
	TextWidgetInit(&timePerDivisionText, timePerDivisionTextContent);
}

HAL_StatusTypeDef SetTimePerDivWidget(uint16_t value){
	GetContentTimePerDiv(value, timePerDivisionTextContent);
	return GraphicsDrawTextWidget(&timePerDivisionText);
}


static void VoltagePerDivisionWidgetInit(){
	TextWidgetInit(&voltagePerDivisionText, voltagePerDivisionTextContent);
}

HAL_StatusTypeDef SetVoltagePerDivWidget(uint16_t value){
	GetContentVoltagePerDiv(value, voltagePerDivisionTextContent);
	return GraphicsDrawTextWidget(&voltagePerDivisionText);
}
