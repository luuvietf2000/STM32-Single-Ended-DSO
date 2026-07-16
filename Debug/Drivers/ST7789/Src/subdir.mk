################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ST7789/Src/St7789.c 

OBJS += \
./Drivers/ST7789/Src/St7789.o 

C_DEPS += \
./Drivers/ST7789/Src/St7789.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ST7789/Src/%.o Drivers/ST7789/Src/%.su Drivers/ST7789/Src/%.cyclo: ../Drivers/ST7789/Src/%.c Drivers/ST7789/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/Acquisition/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-ST7789-2f-Src

clean-Drivers-2f-ST7789-2f-Src:
	-$(RM) ./Drivers/ST7789/Src/St7789.cyclo ./Drivers/ST7789/Src/St7789.d ./Drivers/ST7789/Src/St7789.o ./Drivers/ST7789/Src/St7789.su

.PHONY: clean-Drivers-2f-ST7789-2f-Src

