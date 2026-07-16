################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.c \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.c \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.c \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.c \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.c \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.c \
../Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.o \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.o \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.o \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.o \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.o \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.d \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.d \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.d \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.d \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.d \
./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/drivers/sdl/%.o Core/LvglGraphics/lvgl/src/drivers/sdl/%.su Core/LvglGraphics/lvgl/src/drivers/sdl/%.cyclo: ../Core/LvglGraphics/lvgl/src/drivers/sdl/%.c Core/LvglGraphics/lvgl/src/drivers/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-sdl

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-sdl:
	-$(RM) ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_egl.su ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_keyboard.su ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mouse.su ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_mousewheel.su ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_sw.su ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_texture.su ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.cyclo ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.d ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.o ./Core/LvglGraphics/lvgl/src/drivers/sdl/lv_sdl_window.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-sdl

