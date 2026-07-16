################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/libs/tjpgd/lv_tjpgd.c \
../Core/lvgl/src/libs/tjpgd/tjpgd.c 

OBJS += \
./Core/lvgl/src/libs/tjpgd/lv_tjpgd.o \
./Core/lvgl/src/libs/tjpgd/tjpgd.o 

C_DEPS += \
./Core/lvgl/src/libs/tjpgd/lv_tjpgd.d \
./Core/lvgl/src/libs/tjpgd/tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/libs/tjpgd/%.o Core/lvgl/src/libs/tjpgd/%.su Core/lvgl/src/libs/tjpgd/%.cyclo: ../Core/lvgl/src/libs/tjpgd/%.c Core/lvgl/src/libs/tjpgd/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-libs-2f-tjpgd

clean-Core-2f-lvgl-2f-src-2f-libs-2f-tjpgd:
	-$(RM) ./Core/lvgl/src/libs/tjpgd/lv_tjpgd.cyclo ./Core/lvgl/src/libs/tjpgd/lv_tjpgd.d ./Core/lvgl/src/libs/tjpgd/lv_tjpgd.o ./Core/lvgl/src/libs/tjpgd/lv_tjpgd.su ./Core/lvgl/src/libs/tjpgd/tjpgd.cyclo ./Core/lvgl/src/libs/tjpgd/tjpgd.d ./Core/lvgl/src/libs/tjpgd/tjpgd.o ./Core/lvgl/src/libs/tjpgd/tjpgd.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-libs-2f-tjpgd

