################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

OBJS += \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 

C_DEPS += \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/drivers/nuttx/%.o Core/lvgl/src/drivers/nuttx/%.su Core/lvgl/src/drivers/nuttx/%.cyclo: ../Core/lvgl/src/drivers/nuttx/%.c Core/lvgl/src/drivers/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-nuttx

clean-Core-2f-lvgl-2f-src-2f-drivers-2f-nuttx:
	-$(RM) ./Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_cache.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_entry.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_lcd.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_libuv.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_mouse.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_profiler.su ./Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.cyclo ./Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d ./Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o ./Core/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-nuttx

