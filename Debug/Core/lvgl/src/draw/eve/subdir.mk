################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/eve/lv_draw_eve.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_arc.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_fill.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_image.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_letter.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_line.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.c \
../Core/lvgl/src/draw/eve/lv_draw_eve_triangle.c \
../Core/lvgl/src/draw/eve/lv_eve.c 

OBJS += \
./Core/lvgl/src/draw/eve/lv_draw_eve.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_arc.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_fill.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_image.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_letter.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_line.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.o \
./Core/lvgl/src/draw/eve/lv_draw_eve_triangle.o \
./Core/lvgl/src/draw/eve/lv_eve.o 

C_DEPS += \
./Core/lvgl/src/draw/eve/lv_draw_eve.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_arc.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_fill.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_image.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_letter.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_line.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.d \
./Core/lvgl/src/draw/eve/lv_draw_eve_triangle.d \
./Core/lvgl/src/draw/eve/lv_eve.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/eve/%.o Core/lvgl/src/draw/eve/%.su Core/lvgl/src/draw/eve/%.cyclo: ../Core/lvgl/src/draw/eve/%.c Core/lvgl/src/draw/eve/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-eve

clean-Core-2f-lvgl-2f-src-2f-draw-2f-eve:
	-$(RM) ./Core/lvgl/src/draw/eve/lv_draw_eve.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve.d ./Core/lvgl/src/draw/eve/lv_draw_eve.o ./Core/lvgl/src/draw/eve/lv_draw_eve.su ./Core/lvgl/src/draw/eve/lv_draw_eve_arc.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_arc.d ./Core/lvgl/src/draw/eve/lv_draw_eve_arc.o ./Core/lvgl/src/draw/eve/lv_draw_eve_arc.su ./Core/lvgl/src/draw/eve/lv_draw_eve_fill.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_fill.d ./Core/lvgl/src/draw/eve/lv_draw_eve_fill.o ./Core/lvgl/src/draw/eve/lv_draw_eve_fill.su ./Core/lvgl/src/draw/eve/lv_draw_eve_image.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_image.d ./Core/lvgl/src/draw/eve/lv_draw_eve_image.o ./Core/lvgl/src/draw/eve/lv_draw_eve_image.su ./Core/lvgl/src/draw/eve/lv_draw_eve_letter.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_letter.d ./Core/lvgl/src/draw/eve/lv_draw_eve_letter.o ./Core/lvgl/src/draw/eve/lv_draw_eve_letter.su ./Core/lvgl/src/draw/eve/lv_draw_eve_line.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_line.d ./Core/lvgl/src/draw/eve/lv_draw_eve_line.o ./Core/lvgl/src/draw/eve/lv_draw_eve_line.su ./Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.d ./Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.o ./Core/lvgl/src/draw/eve/lv_draw_eve_ram_g.su ./Core/lvgl/src/draw/eve/lv_draw_eve_triangle.cyclo ./Core/lvgl/src/draw/eve/lv_draw_eve_triangle.d ./Core/lvgl/src/draw/eve/lv_draw_eve_triangle.o ./Core/lvgl/src/draw/eve/lv_draw_eve_triangle.su ./Core/lvgl/src/draw/eve/lv_eve.cyclo ./Core/lvgl/src/draw/eve/lv_eve.d ./Core/lvgl/src/draw/eve/lv_eve.o ./Core/lvgl/src/draw/eve/lv_eve.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-eve

