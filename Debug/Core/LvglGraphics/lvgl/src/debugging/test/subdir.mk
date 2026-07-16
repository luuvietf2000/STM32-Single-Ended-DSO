################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.c \
../Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.c \
../Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.c \
../Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.c \
../Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.c \
../Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.o \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.o \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.o \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.o \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.o \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.d \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.d \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.d \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.d \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.d \
./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/debugging/test/%.o Core/LvglGraphics/lvgl/src/debugging/test/%.su Core/LvglGraphics/lvgl/src/debugging/test/%.cyclo: ../Core/LvglGraphics/lvgl/src/debugging/test/%.c Core/LvglGraphics/lvgl/src/debugging/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-debugging-2f-test

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-debugging-2f-test:
	-$(RM) ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.cyclo ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.d ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.o ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_display.su ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.cyclo ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.d ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.o ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_fs.su ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.cyclo ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.d ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.o ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_helpers.su ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.cyclo ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.d ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.o ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev.su ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.cyclo ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.d ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.o ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_indev_gesture.su ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.cyclo ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.d ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.o ./Core/LvglGraphics/lvgl/src/debugging/test/lv_test_screenshot_compare.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-debugging-2f-test

