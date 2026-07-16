#ifndef ACQUISITION_INC_ACQUISITION_H_
#define ACQUISITION_INC_ACQUISITION_H_

#include "stm32f1xx_hal.h"
#include "FreeRTOS.h"
#include "queue.h"

//-------------------------------------------------------------------------------------------------//

#define ACQUISITTION_DELAY																portMAX_DELAY
#define ACQUISITTION_NOT_DELAY															0

//-------------------------------------------------------------------------------------------------//
typedef enum{
	ACQUISITTION_READ_SAMPLE_FINNISH,
	ACQUISITTION_ENCODER_CHANGED,
	ACQUISITTION_SAMPLE_STOP,
	ACQUISITTION_SAMPLE_START,
	ACQUISITTION_START,
	ACQUISITTION_SAMPLE_PERIOD_CHANGED,
	ACQUISITTION_SAMPLE_COUNT_CHANGED
} AcquisittionMessageType;

//-------------------------------------------------------------------------------------------------//
typedef struct {
	TIM_HandleTypeDef *_sampleTimer;
	ADC_HandleTypeDef *_sampleChannel;
	TIM_HandleTypeDef *_encoderTimer;
	ADC_HandleTypeDef *_encoderChanel;
} AcquisittionUintManager;

typedef struct{
	uint16_t value;
} AcquisittionEncoderChangedContent;

typedef struct{
	uint16_t length;
	uint16_t *ptr;
} AcquisittionSampleContent;

typedef struct{
	uint16_t newPeriod;
} AcquisittionSamplePeriodChangedContent;

typedef struct{
	uint16_t newCount;
} AcquisittionSampleCountChangedContent;

typedef struct AcquisittionMessage{
	AcquisittionMessageType type;
	union{
		AcquisittionSampleContent sample;
		AcquisittionEncoderChangedContent encoderChanged;
		AcquisittionSamplePeriodChangedContent samplePeriod;
		AcquisittionSampleCountChangedContent sampleCountChanged;
	};
	TaskHandle_t taskNotify;
} AcquisittionMessage;

typedef struct{
	AcquisittionMessage *pool;
	QueueHandle_t free;
	QueueHandle_t ready;
	uint16_t sizeBuffer;
	uint16_t lengthBuffer;
} AcquisittionMsgManager;

typedef struct{
	uint16_t *sampleBuffer;
	uint16_t length;
	uint16_t sampleBlock;
	volatile uint16_t index;
} AcquisittionSampleBuffer;

typedef struct{
	uint16_t value;
	volatile uint16_t buffer;
} AcquisittionEncoderBuffer;

typedef struct{
	AcquisittionMsgManager msgManager;
	AcquisittionSampleBuffer sampleManager;
	AcquisittionEncoderBuffer encoderManager;
} AcquisittionBufferManager;


//-----------------------------------------------------------------------------------------//
void AcquisittionSetSampleCount(uint16_t count);

void AcquisittionSetSamplePeriod(uint16_t period);

void AcquisittionSampleStop();

void AcquisittionSampleStart();

void AcquisittionStart();

void AcquisittionAllowMemory(uint32_t sizeBuffer, uint32_t length);

void AcquisittionInit(TIM_HandleTypeDef *sampleTimer, ADC_HandleTypeDef *sampleChannel, TIM_HandleTypeDef *encoderTimer, ADC_HandleTypeDef *encoderChannel);

BaseType_t AcquisittionPushMsgQueueFree(AcquisittionMessage *msg, TickType_t tick);
BaseType_t AcquisittionPopMsgQueueFree(AcquisittionMessage **msg, TickType_t tick);
BaseType_t AcquisittionPushMsgQueueReady(AcquisittionMessage *msg, TickType_t tick);
BaseType_t AcquisittionPopMsgQueueReady(AcquisittionMessage **msg, TickType_t tick);

#endif /* ACQUISITION_INC_ACQUISITION_H_ */
