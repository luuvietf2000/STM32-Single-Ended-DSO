################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.c \
../Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.c \
../Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.c \
../Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.c \
../Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.c 

OBJS += \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o 

C_DEPS += \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d \
./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/libs/vg_lite_driver/VGLite/%.o Core/lvgl/src/libs/vg_lite_driver/VGLite/%.su Core/lvgl/src/libs/vg_lite_driver/VGLite/%.cyclo: ../Core/lvgl/src/libs/vg_lite_driver/VGLite/%.c Core/lvgl/src/libs/vg_lite_driver/VGLite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

clean-Core-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite:
	-$(RM) ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.cyclo ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.su ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.cyclo ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.su ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.cyclo ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.su ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.cyclo ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.su ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.cyclo ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o ./Core/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

