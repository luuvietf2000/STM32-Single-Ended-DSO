################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.c \
../Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d \
./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/sw/blend/%.o Core/LvglGraphics/lvgl/src/draw/sw/blend/%.su Core/LvglGraphics/lvgl/src/draw/sw/blend/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/sw/blend/%.c Core/LvglGraphics/lvgl/src/draw/sw/blend/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.su ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o ./Core/LvglGraphics/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

