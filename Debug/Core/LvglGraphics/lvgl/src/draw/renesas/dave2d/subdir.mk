################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.c \
../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d \
./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/%.o Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/%.su Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/%.c Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.su ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.cyclo ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o ./Core/LvglGraphics/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

