################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.c \
../Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.c 

OBJS += \
./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.o \
./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.o 

C_DEPS += \
./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.d \
./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/sw/blend/neon/%.o Core/lvgl/src/draw/sw/blend/neon/%.su Core/lvgl/src/draw/sw/blend/neon/%.cyclo: ../Core/lvgl/src/draw/sw/blend/neon/%.c Core/lvgl/src/draw/sw/blend/neon/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon

clean-Core-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon:
	-$(RM) ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.cyclo ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.d ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.o ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.su ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.cyclo ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.d ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.o ./Core/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon

