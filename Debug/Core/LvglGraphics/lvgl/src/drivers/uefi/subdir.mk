################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.c \
../Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.c \
../Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.c \
../Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.c \
../Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.c \
../Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.o \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.o \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.o \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.o \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.o \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.d \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.d \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.d \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.d \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.d \
./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/drivers/uefi/%.o Core/LvglGraphics/lvgl/src/drivers/uefi/%.su Core/LvglGraphics/lvgl/src/drivers/uefi/%.cyclo: ../Core/LvglGraphics/lvgl/src/drivers/uefi/%.c Core/LvglGraphics/lvgl/src/drivers/uefi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-uefi

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-uefi:
	-$(RM) ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.cyclo ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.d ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.o ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_context.su ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.cyclo ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.d ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.o ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_display.su ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.cyclo ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.d ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.o ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.su ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.cyclo ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.d ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.o ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.su ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.cyclo ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.d ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.o ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_indev_touch.su ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.cyclo ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.d ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.o ./Core/LvglGraphics/lvgl/src/drivers/uefi/lv_uefi_private.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-uefi

