################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/drivers/sdl/lv_sdl_egl.c \
../Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.c \
../Core/lvgl/src/drivers/sdl/lv_sdl_mouse.c \
../Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.c \
../Core/lvgl/src/drivers/sdl/lv_sdl_sw.c \
../Core/lvgl/src/drivers/sdl/lv_sdl_texture.c \
../Core/lvgl/src/drivers/sdl/lv_sdl_window.c 

OBJS += \
./Core/lvgl/src/drivers/sdl/lv_sdl_egl.o \
./Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.o \
./Core/lvgl/src/drivers/sdl/lv_sdl_mouse.o \
./Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o \
./Core/lvgl/src/drivers/sdl/lv_sdl_sw.o \
./Core/lvgl/src/drivers/sdl/lv_sdl_texture.o \
./Core/lvgl/src/drivers/sdl/lv_sdl_window.o 

C_DEPS += \
./Core/lvgl/src/drivers/sdl/lv_sdl_egl.d \
./Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.d \
./Core/lvgl/src/drivers/sdl/lv_sdl_mouse.d \
./Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d \
./Core/lvgl/src/drivers/sdl/lv_sdl_sw.d \
./Core/lvgl/src/drivers/sdl/lv_sdl_texture.d \
./Core/lvgl/src/drivers/sdl/lv_sdl_window.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/drivers/sdl/%.o Core/lvgl/src/drivers/sdl/%.su Core/lvgl/src/drivers/sdl/%.cyclo: ../Core/lvgl/src/drivers/sdl/%.c Core/lvgl/src/drivers/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-sdl

clean-Core-2f-lvgl-2f-src-2f-drivers-2f-sdl:
	-$(RM) ./Core/lvgl/src/drivers/sdl/lv_sdl_egl.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_egl.d ./Core/lvgl/src/drivers/sdl/lv_sdl_egl.o ./Core/lvgl/src/drivers/sdl/lv_sdl_egl.su ./Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.d ./Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.o ./Core/lvgl/src/drivers/sdl/lv_sdl_keyboard.su ./Core/lvgl/src/drivers/sdl/lv_sdl_mouse.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_mouse.d ./Core/lvgl/src/drivers/sdl/lv_sdl_mouse.o ./Core/lvgl/src/drivers/sdl/lv_sdl_mouse.su ./Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d ./Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o ./Core/lvgl/src/drivers/sdl/lv_sdl_mousewheel.su ./Core/lvgl/src/drivers/sdl/lv_sdl_sw.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_sw.d ./Core/lvgl/src/drivers/sdl/lv_sdl_sw.o ./Core/lvgl/src/drivers/sdl/lv_sdl_sw.su ./Core/lvgl/src/drivers/sdl/lv_sdl_texture.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_texture.d ./Core/lvgl/src/drivers/sdl/lv_sdl_texture.o ./Core/lvgl/src/drivers/sdl/lv_sdl_texture.su ./Core/lvgl/src/drivers/sdl/lv_sdl_window.cyclo ./Core/lvgl/src/drivers/sdl/lv_sdl_window.d ./Core/lvgl/src/drivers/sdl/lv_sdl_window.o ./Core/lvgl/src/drivers/sdl/lv_sdl_window.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-sdl

