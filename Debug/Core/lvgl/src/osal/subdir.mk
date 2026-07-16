################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/osal/lv_cmsis_rtos2.c \
../Core/lvgl/src/osal/lv_freertos.c \
../Core/lvgl/src/osal/lv_linux.c \
../Core/lvgl/src/osal/lv_mqx.c \
../Core/lvgl/src/osal/lv_os.c \
../Core/lvgl/src/osal/lv_os_none.c \
../Core/lvgl/src/osal/lv_pthread.c \
../Core/lvgl/src/osal/lv_rtthread.c \
../Core/lvgl/src/osal/lv_sdl2.c \
../Core/lvgl/src/osal/lv_windows.c 

OBJS += \
./Core/lvgl/src/osal/lv_cmsis_rtos2.o \
./Core/lvgl/src/osal/lv_freertos.o \
./Core/lvgl/src/osal/lv_linux.o \
./Core/lvgl/src/osal/lv_mqx.o \
./Core/lvgl/src/osal/lv_os.o \
./Core/lvgl/src/osal/lv_os_none.o \
./Core/lvgl/src/osal/lv_pthread.o \
./Core/lvgl/src/osal/lv_rtthread.o \
./Core/lvgl/src/osal/lv_sdl2.o \
./Core/lvgl/src/osal/lv_windows.o 

C_DEPS += \
./Core/lvgl/src/osal/lv_cmsis_rtos2.d \
./Core/lvgl/src/osal/lv_freertos.d \
./Core/lvgl/src/osal/lv_linux.d \
./Core/lvgl/src/osal/lv_mqx.d \
./Core/lvgl/src/osal/lv_os.d \
./Core/lvgl/src/osal/lv_os_none.d \
./Core/lvgl/src/osal/lv_pthread.d \
./Core/lvgl/src/osal/lv_rtthread.d \
./Core/lvgl/src/osal/lv_sdl2.d \
./Core/lvgl/src/osal/lv_windows.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/osal/%.o Core/lvgl/src/osal/%.su Core/lvgl/src/osal/%.cyclo: ../Core/lvgl/src/osal/%.c Core/lvgl/src/osal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-osal

clean-Core-2f-lvgl-2f-src-2f-osal:
	-$(RM) ./Core/lvgl/src/osal/lv_cmsis_rtos2.cyclo ./Core/lvgl/src/osal/lv_cmsis_rtos2.d ./Core/lvgl/src/osal/lv_cmsis_rtos2.o ./Core/lvgl/src/osal/lv_cmsis_rtos2.su ./Core/lvgl/src/osal/lv_freertos.cyclo ./Core/lvgl/src/osal/lv_freertos.d ./Core/lvgl/src/osal/lv_freertos.o ./Core/lvgl/src/osal/lv_freertos.su ./Core/lvgl/src/osal/lv_linux.cyclo ./Core/lvgl/src/osal/lv_linux.d ./Core/lvgl/src/osal/lv_linux.o ./Core/lvgl/src/osal/lv_linux.su ./Core/lvgl/src/osal/lv_mqx.cyclo ./Core/lvgl/src/osal/lv_mqx.d ./Core/lvgl/src/osal/lv_mqx.o ./Core/lvgl/src/osal/lv_mqx.su ./Core/lvgl/src/osal/lv_os.cyclo ./Core/lvgl/src/osal/lv_os.d ./Core/lvgl/src/osal/lv_os.o ./Core/lvgl/src/osal/lv_os.su ./Core/lvgl/src/osal/lv_os_none.cyclo ./Core/lvgl/src/osal/lv_os_none.d ./Core/lvgl/src/osal/lv_os_none.o ./Core/lvgl/src/osal/lv_os_none.su ./Core/lvgl/src/osal/lv_pthread.cyclo ./Core/lvgl/src/osal/lv_pthread.d ./Core/lvgl/src/osal/lv_pthread.o ./Core/lvgl/src/osal/lv_pthread.su ./Core/lvgl/src/osal/lv_rtthread.cyclo ./Core/lvgl/src/osal/lv_rtthread.d ./Core/lvgl/src/osal/lv_rtthread.o ./Core/lvgl/src/osal/lv_rtthread.su ./Core/lvgl/src/osal/lv_sdl2.cyclo ./Core/lvgl/src/osal/lv_sdl2.d ./Core/lvgl/src/osal/lv_sdl2.o ./Core/lvgl/src/osal/lv_sdl2.su ./Core/lvgl/src/osal/lv_windows.cyclo ./Core/lvgl/src/osal/lv_windows.d ./Core/lvgl/src/osal/lv_windows.o ./Core/lvgl/src/osal/lv_windows.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-osal

