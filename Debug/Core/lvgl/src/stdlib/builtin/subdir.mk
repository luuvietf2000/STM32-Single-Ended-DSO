################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.c \
../Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.c \
../Core/lvgl/src/stdlib/builtin/lv_string_builtin.c \
../Core/lvgl/src/stdlib/builtin/lv_tlsf.c 

OBJS += \
./Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o \
./Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o \
./Core/lvgl/src/stdlib/builtin/lv_string_builtin.o \
./Core/lvgl/src/stdlib/builtin/lv_tlsf.o 

C_DEPS += \
./Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d \
./Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d \
./Core/lvgl/src/stdlib/builtin/lv_string_builtin.d \
./Core/lvgl/src/stdlib/builtin/lv_tlsf.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/stdlib/builtin/%.o Core/lvgl/src/stdlib/builtin/%.su Core/lvgl/src/stdlib/builtin/%.cyclo: ../Core/lvgl/src/stdlib/builtin/%.c Core/lvgl/src/stdlib/builtin/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-stdlib-2f-builtin

clean-Core-2f-lvgl-2f-src-2f-stdlib-2f-builtin:
	-$(RM) ./Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.cyclo ./Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d ./Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o ./Core/lvgl/src/stdlib/builtin/lv_mem_core_builtin.su ./Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.cyclo ./Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d ./Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o ./Core/lvgl/src/stdlib/builtin/lv_sprintf_builtin.su ./Core/lvgl/src/stdlib/builtin/lv_string_builtin.cyclo ./Core/lvgl/src/stdlib/builtin/lv_string_builtin.d ./Core/lvgl/src/stdlib/builtin/lv_string_builtin.o ./Core/lvgl/src/stdlib/builtin/lv_string_builtin.su ./Core/lvgl/src/stdlib/builtin/lv_tlsf.cyclo ./Core/lvgl/src/stdlib/builtin/lv_tlsf.d ./Core/lvgl/src/stdlib/builtin/lv_tlsf.o ./Core/lvgl/src/stdlib/builtin/lv_tlsf.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-stdlib-2f-builtin

