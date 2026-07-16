################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/widgets/image/lv_image.c 

OBJS += \
./Core/lvgl/src/widgets/image/lv_image.o 

C_DEPS += \
./Core/lvgl/src/widgets/image/lv_image.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/widgets/image/%.o Core/lvgl/src/widgets/image/%.su Core/lvgl/src/widgets/image/%.cyclo: ../Core/lvgl/src/widgets/image/%.c Core/lvgl/src/widgets/image/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-widgets-2f-image

clean-Core-2f-lvgl-2f-src-2f-widgets-2f-image:
	-$(RM) ./Core/lvgl/src/widgets/image/lv_image.cyclo ./Core/lvgl/src/widgets/image/lv_image.d ./Core/lvgl/src/widgets/image/lv_image.o ./Core/lvgl/src/widgets/image/lv_image.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-widgets-2f-image

