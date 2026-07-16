#include "acquisition.h"
#include "stdlib.h"

//--------------------------------------------------------------------------------------------------------------------------------//

#define ACQUISITTION_INDEX_WRAP(index, offset, max)									(index + offset >= max ? 0 : index + offset)

//--------------------------------------------------------------------------------------------------------------------------------//

static void AcquisittionSetSampleMsg(AcquisittionMessage *msg, uint16_t *ptr);
static void AcquisittionReadSampleBlockFinish();
static void AcquisittionEncoderChangedValue();
//--------------------------------------------------------------------------------------------------------------------------------//

static AcquisittionUintManager uintManager;
static AcquisittionBufferManager bufferManager;

//--------------------------------------------------------------------------------------------------------------------------------//

void AcquisittionSetSampleCount(uint16_t count){
	bufferManager.sampleManager.index = 0;
	bufferManager.sampleManager.sampleBlock = count;
}

void AcquisittionSetSamplePeriod(uint16_t period){
	__HAL_TIM_SET_AUTORELOAD(uintManager._sampleTimer, period);
	__HAL_TIM_SET_COUNTER(uintManager._sampleTimer, 0);
}

void AcquisittionSampleStop(){
	HAL_TIM_Base_Stop(uintManager._sampleTimer);
	HAL_ADC_Stop_DMA(uintManager._sampleChannel);
}

void AcquisittionSampleStart(){
	HAL_ADC_Start_DMA(
		uintManager._sampleChannel,
		(uint32_t *)bufferManager.sampleManager.sampleBuffer +  bufferManager.sampleManager.index,
		bufferManager.sampleManager.sampleBlock
	);
	HAL_TIM_Base_Start(uintManager._sampleTimer);
}

void AcquisittionStart(){
	HAL_TIM_Base_Start(uintManager._sampleTimer);
	HAL_TIM_Base_Start(uintManager._encoderTimer);
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc){
	if(hadc == uintManager._sampleChannel)
		AcquisittionReadSampleBlockFinish();
	else if(hadc == uintManager._encoderChanel)
		AcquisittionEncoderChangedValue();
}

static void AcquisittionSetMsgEncoderChanged(AcquisittionMessage *msg, uint16_t newValue){
	msg->type = ACQUISITTION_ENCODER_CHANGED;
	msg->encoderChanged.value = newValue;
	msg->taskNotify = NULL;
}

static void AcquisittionSendQueueFormIsr(QueueHandle_t queue, AcquisittionMessage *msg){
	BaseType_t priority = pdFALSE;
	xQueueSendFromISR(queue, &msg, &priority);
	portYIELD_FROM_ISR(priority);
}
static void AcquisittionEncoderChangedValue(){
	if(bufferManager.encoderManager.buffer == bufferManager.encoderManager.value)
		return;
	AcquisittionMessage *msg;
	BaseType_t msgFreeAvailable = AcquisittionPopMsgQueueFree(&msg, ACQUISITTION_NOT_DELAY);
	if(msgFreeAvailable != pdTRUE)
		return;
	AcquisittionSetMsgEncoderChanged(msg, bufferManager.encoderManager.buffer);
	bufferManager.encoderManager.value = bufferManager.encoderManager.buffer;
	AcquisittionSendQueueFormIsr(
		bufferManager.msgManager.ready,
		msg
	);
}
static void AcquisittionReadSampleBlockFinish(){
	AcquisittionMessage *msg;
	BaseType_t msgFreeAvailable = AcquisittionPopMsgQueueFree(&msg, ACQUISITTION_NOT_DELAY);
	if(msgFreeAvailable != pdTRUE)
		return;
	AcquisittionSetSampleMsg(
		msg,
		bufferManager.sampleManager.sampleBuffer + bufferManager.sampleManager.index
	);
	bufferManager.sampleManager.index = ACQUISITTION_INDEX_WRAP(
		bufferManager.sampleManager.index,
		bufferManager.sampleManager.sampleBlock,
		bufferManager.sampleManager.length
	);

	AcquisittionPushMsgQueueReady(msg, ACQUISITTION_NOT_DELAY);
	HAL_ADC_Start_DMA(
		uintManager._sampleChannel,
		(uint32_t *)bufferManager.sampleManager.sampleBuffer + bufferManager.sampleManager.index,
		bufferManager.sampleManager.sampleBlock
	);
	AcquisittionSendQueueFormIsr(
		bufferManager.msgManager.ready,
		msg
	);
}

static void AcquisittionSetSampleMsg(AcquisittionMessage *msg, uint16_t *ptr){
	msg->sample.ptr = ptr;
	msg->sample.length = bufferManager.sampleManager.sampleBlock;
	msg->type = ACQUISITTION_READ_SAMPLE_FINNISH;
	msg->taskNotify = NULL;
}

void AcquisittionInit(TIM_HandleTypeDef *sampleTimer, ADC_HandleTypeDef *sampleChannel, TIM_HandleTypeDef *encoderTimer, ADC_HandleTypeDef *encoderChannel){
	uintManager._encoderChanel = encoderChannel;
	uintManager._encoderTimer = encoderTimer;
	uintManager._sampleChannel = sampleChannel;
	uintManager._sampleTimer = sampleTimer;
}

void AcquisittionAllowMemory(uint32_t sizeBuffer, uint32_t length){
	bufferManager.msgManager.pool = malloc(sizeBuffer * sizeof(AcquisittionMessage*));
	bufferManager.msgManager.free = xQueueCreate(sizeBuffer, sizeof(AcquisittionMessage*));
	bufferManager.msgManager.ready = xQueueCreate(sizeBuffer, sizeof(AcquisittionMessage*));
	for(uint16_t i = 0; i < sizeBuffer; i++){
		AcquisittionPushMsgQueueFree(bufferManager.msgManager.pool + i, ACQUISITTION_NOT_DELAY);
	}
}

BaseType_t AcquisittionPushMsgQueueFree(AcquisittionMessage *msg, TickType_t tick){
	BaseType_t result = xQueueSend(bufferManager.msgManager.free, &msg, tick);
	return result;
}

BaseType_t AcquisittionPopMsgQueueFree(AcquisittionMessage **msg, TickType_t tick){
	BaseType_t result = xQueueReceive(bufferManager.msgManager.free, msg, tick);
	return result;
}

BaseType_t AcquisittionPushMsgQueueReady(AcquisittionMessage *msg, TickType_t tick){
    BaseType_t result = xQueueSend(bufferManager.msgManager.ready, &msg, tick);
    return result;
}

BaseType_t AcquisittionPopMsgQueueReady(AcquisittionMessage **msg, TickType_t tick){
    BaseType_t result = xQueueReceive(bufferManager.msgManager.ready, msg, tick);
    return result;
}
