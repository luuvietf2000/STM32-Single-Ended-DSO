################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/drivers/x11/lv_x11_display.c \
../Core/lvgl/src/drivers/x11/lv_x11_input.c 

OBJS += \
./Core/lvgl/src/drivers/x11/lv_x11_display.o \
./Core/lvgl/src/drivers/x11/lv_x11_input.o 

C_DEPS += \
./Core/lvgl/src/drivers/x11/lv_x11_display.d \
./Core/lvgl/src/drivers/x11/lv_x11_input.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/drivers/x11/%.o Core/lvgl/src/drivers/x11/%.su Core/lvgl/src/drivers/x11/%.cyclo: ../Core/lvgl/src/drivers/x11/%.c Core/lvgl/src/drivers/x11/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-x11

clean-Core-2f-lvgl-2f-src-2f-drivers-2f-x11:
	-$(RM) ./Core/lvgl/src/drivers/x11/lv_x11_display.cyclo ./Core/lvgl/src/drivers/x11/lv_x11_display.d ./Core/lvgl/src/drivers/x11/lv_x11_display.o ./Core/lvgl/src/drivers/x11/lv_x11_display.su ./Core/lvgl/src/drivers/x11/lv_x11_input.cyclo ./Core/lvgl/src/drivers/x11/lv_x11_input.d ./Core/lvgl/src/drivers/x11/lv_x11_input.o ./Core/lvgl/src/drivers/x11/lv_x11_input.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-x11

