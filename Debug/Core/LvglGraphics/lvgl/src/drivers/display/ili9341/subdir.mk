################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/drivers/display/ili9341/%.o Core/LvglGraphics/lvgl/src/drivers/display/ili9341/%.su Core/LvglGraphics/lvgl/src/drivers/display/ili9341/%.cyclo: ../Core/LvglGraphics/lvgl/src/drivers/display/ili9341/%.c Core/LvglGraphics/lvgl/src/drivers/display/ili9341/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ili9341

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ili9341:
	-$(RM) ./Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.cyclo ./Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.d ./Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.o ./Core/LvglGraphics/lvgl/src/drivers/display/ili9341/lv_ili9341.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ili9341

