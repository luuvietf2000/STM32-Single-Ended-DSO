#include "MainScrenBackgroundConfig.h"

GraphicsRectangleWidgetConfig mainScreen = {
	.outline = {
		.width = 0
	},
	.rectangle = {
		.pos = {
			.size = {MAIN_SCREEN_WIDTH, MAIN_SCREEN_HEIGHT},
			.coordinate = {MAIN_SCREEN_X, MAIN_SCREEN_Y}
		},
		.background = MAIN_SCREEN_BACKGROUND_COLOR
	}
};
