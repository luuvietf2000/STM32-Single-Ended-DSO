################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/debugging/test/lv_test_display.c \
../Core/lvgl/src/debugging/test/lv_test_fs.c \
../Core/lvgl/src/debugging/test/lv_test_helpers.c \
../Core/lvgl/src/debugging/test/lv_test_indev.c \
../Core/lvgl/src/debugging/test/lv_test_indev_gesture.c \
../Core/lvgl/src/debugging/test/lv_test_screenshot_compare.c 

OBJS += \
./Core/lvgl/src/debugging/test/lv_test_display.o \
./Core/lvgl/src/debugging/test/lv_test_fs.o \
./Core/lvgl/src/debugging/test/lv_test_helpers.o \
./Core/lvgl/src/debugging/test/lv_test_indev.o \
./Core/lvgl/src/debugging/test/lv_test_indev_gesture.o \
./Core/lvgl/src/debugging/test/lv_test_screenshot_compare.o 

C_DEPS += \
./Core/lvgl/src/debugging/test/lv_test_display.d \
./Core/lvgl/src/debugging/test/lv_test_fs.d \
./Core/lvgl/src/debugging/test/lv_test_helpers.d \
./Core/lvgl/src/debugging/test/lv_test_indev.d \
./Core/lvgl/src/debugging/test/lv_test_indev_gesture.d \
./Core/lvgl/src/debugging/test/lv_test_screenshot_compare.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/debugging/test/%.o Core/lvgl/src/debugging/test/%.su Core/lvgl/src/debugging/test/%.cyclo: ../Core/lvgl/src/debugging/test/%.c Core/lvgl/src/debugging/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-debugging-2f-test

clean-Core-2f-lvgl-2f-src-2f-debugging-2f-test:
	-$(RM) ./Core/lvgl/src/debugging/test/lv_test_display.cyclo ./Core/lvgl/src/debugging/test/lv_test_display.d ./Core/lvgl/src/debugging/test/lv_test_display.o ./Core/lvgl/src/debugging/test/lv_test_display.su ./Core/lvgl/src/debugging/test/lv_test_fs.cyclo ./Core/lvgl/src/debugging/test/lv_test_fs.d ./Core/lvgl/src/debugging/test/lv_test_fs.o ./Core/lvgl/src/debugging/test/lv_test_fs.su ./Core/lvgl/src/debugging/test/lv_test_helpers.cyclo ./Core/lvgl/src/debugging/test/lv_test_helpers.d ./Core/lvgl/src/debugging/test/lv_test_helpers.o ./Core/lvgl/src/debugging/test/lv_test_helpers.su ./Core/lvgl/src/debugging/test/lv_test_indev.cyclo ./Core/lvgl/src/debugging/test/lv_test_indev.d ./Core/lvgl/src/debugging/test/lv_test_indev.o ./Core/lvgl/src/debugging/test/lv_test_indev.su ./Core/lvgl/src/debugging/test/lv_test_indev_gesture.cyclo ./Core/lvgl/src/debugging/test/lv_test_indev_gesture.d ./Core/lvgl/src/debugging/test/lv_test_indev_gesture.o ./Core/lvgl/src/debugging/test/lv_test_indev_gesture.su ./Core/lvgl/src/debugging/test/lv_test_screenshot_compare.cyclo ./Core/lvgl/src/debugging/test/lv_test_screenshot_compare.d ./Core/lvgl/src/debugging/test/lv_test_screenshot_compare.o ./Core/lvgl/src/debugging/test/lv_test_screenshot_compare.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-debugging-2f-test

