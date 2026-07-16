################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.c \
../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.c \
../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.c \
../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.c \
../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.c \
../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.o \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.o \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.o \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.o \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.o \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.d \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.d \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.d \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.d \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.d \
./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/nxp/g2d/%.o Core/LvglGraphics/lvgl/src/draw/nxp/g2d/%.su Core/LvglGraphics/lvgl/src/draw/nxp/g2d/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/nxp/g2d/%.c Core/LvglGraphics/lvgl/src/draw/nxp/g2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-g2d

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-g2d:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.cyclo ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.d ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.o ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.su ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.cyclo ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.d ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.o ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d.su ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.cyclo ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.d ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.o ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.su ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.cyclo ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.d ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.o ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.su ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.cyclo ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.d ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.o ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.su ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.cyclo ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.d ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.o ./Core/LvglGraphics/lvgl/src/draw/nxp/g2d/lv_g2d_utils.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-g2d

