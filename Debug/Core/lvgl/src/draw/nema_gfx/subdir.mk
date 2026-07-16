################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.c \
../Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.c 

OBJS += \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o \
./Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o 

C_DEPS += \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d \
./Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/nema_gfx/%.o Core/lvgl/src/draw/nema_gfx/%.su Core/lvgl/src/draw/nema_gfx/%.cyclo: ../Core/lvgl/src/draw/nema_gfx/%.c Core/lvgl/src/draw/nema_gfx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

clean-Core-2f-lvgl-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.su ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o ./Core/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.su ./Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.cyclo ./Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d ./Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o ./Core/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

