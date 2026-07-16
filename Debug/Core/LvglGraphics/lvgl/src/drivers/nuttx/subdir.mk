################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/drivers/nuttx/%.o Core/LvglGraphics/lvgl/src/drivers/nuttx/%.su Core/LvglGraphics/lvgl/src/drivers/nuttx/%.cyclo: ../Core/LvglGraphics/lvgl/src/drivers/nuttx/%.c Core/LvglGraphics/lvgl/src/drivers/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-nuttx

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-nuttx:
	-$(RM) ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_cache.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_entry.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_lcd.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_libuv.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_mouse.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_profiler.su ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.cyclo ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o ./Core/LvglGraphics/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-nuttx

