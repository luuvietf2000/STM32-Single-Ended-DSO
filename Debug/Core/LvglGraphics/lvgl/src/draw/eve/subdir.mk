################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.c \
../Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.o \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.d \
./Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/draw/eve/%.o Core/LvglGraphics/lvgl/src/draw/eve/%.su Core/LvglGraphics/lvgl/src/draw/eve/%.cyclo: ../Core/LvglGraphics/lvgl/src/draw/eve/%.c Core/LvglGraphics/lvgl/src/draw/eve/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-eve

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-eve:
	-$(RM) ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_arc.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_fill.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_image.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_letter.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_line.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_ram_g.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_draw_eve_triangle.su ./Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.cyclo ./Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.d ./Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.o ./Core/LvglGraphics/lvgl/src/draw/eve/lv_eve.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-draw-2f-eve

