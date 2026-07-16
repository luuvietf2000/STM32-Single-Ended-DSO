################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.c \
../Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d \
./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/nema_gfx/%.o Core/LvglGraphics/lvgl/src/draw/nema_gfx/%.su Core/LvglGraphics/lvgl/src/draw/nema_gfx/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/nema_gfx/%.c Core/LvglGraphics/lvgl/src/draw/nema_gfx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.su ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.cyclo ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o ./Core/LvglGraphics/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

