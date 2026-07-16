################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/sw/lv_draw_sw.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_blur.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_border.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_grad.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_img.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_line.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_utils.c \
../Core/lvgl/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./Core/lvgl/src/draw/sw/lv_draw_sw.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_blur.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_border.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_grad.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_img.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_line.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_utils.o \
./Core/lvgl/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./Core/lvgl/src/draw/sw/lv_draw_sw.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_blur.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_border.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_grad.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_img.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_line.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_utils.d \
./Core/lvgl/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/sw/%.o Core/lvgl/src/draw/sw/%.su Core/lvgl/src/draw/sw/%.cyclo: ../Core/lvgl/src/draw/sw/%.c Core/lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-sw

clean-Core-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./Core/lvgl/src/draw/sw/lv_draw_sw.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw.d ./Core/lvgl/src/draw/sw/lv_draw_sw.o ./Core/lvgl/src/draw/sw/lv_draw_sw.su ./Core/lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_arc.d ./Core/lvgl/src/draw/sw/lv_draw_sw_arc.o ./Core/lvgl/src/draw/sw/lv_draw_sw_arc.su ./Core/lvgl/src/draw/sw/lv_draw_sw_blur.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_blur.d ./Core/lvgl/src/draw/sw/lv_draw_sw_blur.o ./Core/lvgl/src/draw/sw/lv_draw_sw_blur.su ./Core/lvgl/src/draw/sw/lv_draw_sw_border.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_border.d ./Core/lvgl/src/draw/sw/lv_draw_sw_border.o ./Core/lvgl/src/draw/sw/lv_draw_sw_border.su ./Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./Core/lvgl/src/draw/sw/lv_draw_sw_box_shadow.su ./Core/lvgl/src/draw/sw/lv_draw_sw_fill.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_fill.d ./Core/lvgl/src/draw/sw/lv_draw_sw_fill.o ./Core/lvgl/src/draw/sw/lv_draw_sw_fill.su ./Core/lvgl/src/draw/sw/lv_draw_sw_grad.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_grad.d ./Core/lvgl/src/draw/sw/lv_draw_sw_grad.o ./Core/lvgl/src/draw/sw/lv_draw_sw_grad.su ./Core/lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_img.d ./Core/lvgl/src/draw/sw/lv_draw_sw_img.o ./Core/lvgl/src/draw/sw/lv_draw_sw_img.su ./Core/lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_letter.d ./Core/lvgl/src/draw/sw/lv_draw_sw_letter.o ./Core/lvgl/src/draw/sw/lv_draw_sw_letter.su ./Core/lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_line.d ./Core/lvgl/src/draw/sw/lv_draw_sw_line.o ./Core/lvgl/src/draw/sw/lv_draw_sw_line.su ./Core/lvgl/src/draw/sw/lv_draw_sw_mask.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_mask.d ./Core/lvgl/src/draw/sw/lv_draw_sw_mask.o ./Core/lvgl/src/draw/sw/lv_draw_sw_mask.su ./Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./Core/lvgl/src/draw/sw/lv_draw_sw_mask_rect.su ./Core/lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_transform.d ./Core/lvgl/src/draw/sw/lv_draw_sw_transform.o ./Core/lvgl/src/draw/sw/lv_draw_sw_transform.su ./Core/lvgl/src/draw/sw/lv_draw_sw_triangle.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_triangle.d ./Core/lvgl/src/draw/sw/lv_draw_sw_triangle.o ./Core/lvgl/src/draw/sw/lv_draw_sw_triangle.su ./Core/lvgl/src/draw/sw/lv_draw_sw_utils.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_utils.d ./Core/lvgl/src/draw/sw/lv_draw_sw_utils.o ./Core/lvgl/src/draw/sw/lv_draw_sw_utils.su ./Core/lvgl/src/draw/sw/lv_draw_sw_vector.cyclo ./Core/lvgl/src/draw/sw/lv_draw_sw_vector.d ./Core/lvgl/src/draw/sw/lv_draw_sw_vector.o ./Core/lvgl/src/draw/sw/lv_draw_sw_vector.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-sw

