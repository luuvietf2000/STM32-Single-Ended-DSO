################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.c \
../Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.o \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.d \
./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/drivers/wayland/%.o Core/LvglGraphics/lvgl/src/drivers/wayland/%.su Core/LvglGraphics/lvgl/src/drivers/wayland/%.cyclo: ../Core/LvglGraphics/lvgl/src/drivers/wayland/%.c Core/LvglGraphics/lvgl/src/drivers/wayland/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-wayland

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-wayland:
	-$(RM) ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_egl.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_backend_shm.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_keyboard.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_pointer.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_seat.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_touch.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_window.su ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.cyclo ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.d ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.o ./Core/LvglGraphics/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-wayland

