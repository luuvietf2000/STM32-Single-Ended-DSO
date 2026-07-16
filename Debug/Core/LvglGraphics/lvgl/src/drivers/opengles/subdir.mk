################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.c \
../Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.c \
../Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.c \
../Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.c \
../Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.o \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.o \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.o \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.o \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.d \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.d \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.d \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.d \
./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/drivers/opengles/%.o Core/LvglGraphics/lvgl/src/drivers/opengles/%.su Core/LvglGraphics/lvgl/src/drivers/opengles/%.cyclo: ../Core/LvglGraphics/lvgl/src/drivers/opengles/%.c Core/LvglGraphics/lvgl/src/drivers/opengles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-opengles

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-opengles:
	-$(RM) ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.cyclo ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.d ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.o ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_debug.su ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.cyclo ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.d ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.o ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_driver.su ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.cyclo ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.d ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.o ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_egl.su ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.cyclo ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.d ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.o ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_glfw.su ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.cyclo ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.d ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.o ./Core/LvglGraphics/lvgl/src/drivers/opengles/lv_opengles_texture.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-drivers-2f-opengles

