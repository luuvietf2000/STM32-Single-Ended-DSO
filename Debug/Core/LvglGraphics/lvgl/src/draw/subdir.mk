################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/lv_draw.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_image.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_label.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_line.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.c \
../Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.c \
../Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/lv_draw.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_image.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_label.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_line.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.o \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.o \
./Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/lv_draw.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_image.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_label.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_line.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.d \
./Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.d \
./Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/%.o Core/LvglGraphics/lvgl/src/draw/%.su Core/LvglGraphics/lvgl/src/draw/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/%.c Core/LvglGraphics/lvgl/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/lv_draw.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_3d.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_arc.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_blur.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_buf.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_image.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_image.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_image.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_image.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_label.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_label.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_label.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_label.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_line.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_line.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_line.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_line.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_mask.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_rect.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_triangle.su ./Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.d ./Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.o ./Core/LvglGraphics/lvgl/src/draw/lv_draw_vector.su ./Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.cyclo ./Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.d ./Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.o ./Core/LvglGraphics/lvgl/src/draw/lv_image_decoder.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw

