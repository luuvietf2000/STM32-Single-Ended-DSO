################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.c 

OBJS += \
./Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.o 

C_DEPS += \
./Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/drivers/display/nxp_elcdif/%.o Core/lvgl/src/drivers/display/nxp_elcdif/%.su Core/lvgl/src/drivers/display/nxp_elcdif/%.cyclo: ../Core/lvgl/src/drivers/display/nxp_elcdif/%.c Core/lvgl/src/drivers/display/nxp_elcdif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-display-2f-nxp_elcdif

clean-Core-2f-lvgl-2f-src-2f-drivers-2f-display-2f-nxp_elcdif:
	-$(RM) ./Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.cyclo ./Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.d ./Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.o ./Core/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-drivers-2f-display-2f-nxp_elcdif

