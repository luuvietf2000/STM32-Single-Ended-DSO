################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.c \
../Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.o \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.d \
./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/nanovg/%.o Core/LvglGraphics/lvgl/src/draw/nanovg/%.su Core/LvglGraphics/lvgl/src/draw/nanovg/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/nanovg/%.c Core/LvglGraphics/lvgl/src/draw/nanovg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nanovg

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nanovg:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_border.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_image.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_label.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_line.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_image_cache.su ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.cyclo ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.d ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.o ./Core/LvglGraphics/lvgl/src/draw/nanovg/lv_nanovg_utils.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nanovg

