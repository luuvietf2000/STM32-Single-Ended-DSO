################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.c \
../Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.o \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.d \
./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/sw/%.o Core/LvglGraphics/lvgl/src/draw/sw/%.su Core/LvglGraphics/lvgl/src/draw/sw/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/sw/%.c Core/LvglGraphics/lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-sw

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_arc.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_blur.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_border.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_box_shadow.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_fill.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_grad.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_img.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_letter.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_line.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_mask_rect.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_transform.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_triangle.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_utils.su ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.cyclo ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.d ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.o ./Core/LvglGraphics/lvgl/src/draw/sw/lv_draw_sw_vector.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-sw

