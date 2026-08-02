#include <MeasurementBarLayoutConfig.h>
#include "GraphicsTextWidget.h"

GraphicsTextWidgetConfig voltageMaxText = {
	.aligment = VOLTAGE_MAX_TEXT_WIDGET_ALIGNMENT,
	.background = {
		.pos = {
			.size = {VOLTAGE_MAX_TEXT_WIDGET_WIDTH, VOLTAGE_MAX_TEXT_WIDGET_HEIGHT},
			.coordinate = {VOLTAGE_MAX_TEXT_WIDGET_X, VOLTAGE_MAX_TEXT_WIDGET_Y}
		},
		.background = VOLTAGE_MAX_TEXT_WIDGET_BACKGROUND_COLOR
	},
	.outline = {
		.color = VOLTAGE_MAX_TEXT_WIDGET_OUTLINE_COLOR,
		.width = VOLTAGE_MAX_TEXT_WIDGET_OUTLINE_WIDTH
	},
	.textConfig = {
		.font = {
			.fontPixel = VOLTAGE_MAX_TEXT_WIDGET_FONT_SIZE,
			.fontColor = VOLTAGE_MAX_TEXT_WIDGET_FONT_COLOR
		}
	}
};

GraphicsTextWidgetConfig voltageMinText = {
	.aligment = VOLTAGE_MIN_TEXT_WIDGET_ALIGNMENT,
	.background = {
		.pos = {
			.size = {VOLTAGE_MIN_TEXT_WIDGET_WIDTH, VOLTAGE_MIN_TEXT_WIDGET_HEIGHT},
			.coordinate = {VOLTAGE_MIN_TEXT_WIDGET_X, VOLTAGE_MIN_TEXT_WIDGET_Y}
		},
		.background = VOLTAGE_MIN_TEXT_WIDGET_BACKGROUND_COLOR
	},
	.outline = {
		.color = VOLTAGE_MIN_TEXT_WIDGET_OUTLINE_COLOR,
		.width = VOLTAGE_MIN_TEXT_WIDGET_OUTLINE_WIDTH
	},
	.textConfig = {
		.font = {
			.fontPixel = VOLTAGE_MIN_TEXT_WIDGET_FONT_SIZE,
			.fontColor = VOLTAGE_MIN_TEXT_WIDGET_FONT_COLOR
		}
	}
};
