################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.c \
../Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.o \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.d \
./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/libs/fsdrv/%.o Core/LvglGraphics/lvgl/src/libs/fsdrv/%.su Core/LvglGraphics/lvgl/src/libs/fsdrv/%.cyclo: ../Core/LvglGraphics/lvgl/src/libs/fsdrv/%.c Core/LvglGraphics/lvgl/src/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-libs-2f-fsdrv

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-libs-2f-fsdrv:
	-$(RM) ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_cbfs.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_fatfs.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_frogfs.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_littlefs.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_memfs.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_posix.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_stdio.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_uefi.su ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.cyclo ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.d ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.o ./Core/LvglGraphics/lvgl/src/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-libs-2f-fsdrv

