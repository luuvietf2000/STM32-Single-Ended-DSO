################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Graphics/Src/GraphicTextWidget.c \
../Core/Graphics/Src/Graphics.c \
../Core/Graphics/Src/GraphicsRectangleWidget.c 

OBJS += \
./Core/Graphics/Src/GraphicTextWidget.o \
./Core/Graphics/Src/Graphics.o \
./Core/Graphics/Src/GraphicsRectangleWidget.o 

C_DEPS += \
./Core/Graphics/Src/GraphicTextWidget.d \
./Core/Graphics/Src/Graphics.d \
./Core/Graphics/Src/GraphicsRectangleWidget.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Graphics/Src/%.o Core/Graphics/Src/%.su Core/Graphics/Src/%.cyclo: ../Core/Graphics/Src/%.c Core/Graphics/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/Acquisition/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Graphics-2f-Src

clean-Core-2f-Graphics-2f-Src:
	-$(RM) ./Core/Graphics/Src/GraphicTextWidget.cyclo ./Core/Graphics/Src/GraphicTextWidget.d ./Core/Graphics/Src/GraphicTextWidget.o ./Core/Graphics/Src/GraphicTextWidget.su ./Core/Graphics/Src/Graphics.cyclo ./Core/Graphics/Src/Graphics.d ./Core/Graphics/Src/Graphics.o ./Core/Graphics/Src/Graphics.su ./Core/Graphics/Src/GraphicsRectangleWidget.cyclo ./Core/Graphics/Src/GraphicsRectangleWidget.d ./Core/Graphics/Src/GraphicsRectangleWidget.o ./Core/Graphics/Src/GraphicsRectangleWidget.su

.PHONY: clean-Core-2f-Graphics-2f-Src

