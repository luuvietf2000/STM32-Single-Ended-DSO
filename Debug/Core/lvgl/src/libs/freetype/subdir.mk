################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/libs/freetype/lv_freetype.c \
../Core/lvgl/src/libs/freetype/lv_freetype_glyph.c \
../Core/lvgl/src/libs/freetype/lv_freetype_image.c \
../Core/lvgl/src/libs/freetype/lv_freetype_outline.c \
../Core/lvgl/src/libs/freetype/lv_ftsystem.c 

OBJS += \
./Core/lvgl/src/libs/freetype/lv_freetype.o \
./Core/lvgl/src/libs/freetype/lv_freetype_glyph.o \
./Core/lvgl/src/libs/freetype/lv_freetype_image.o \
./Core/lvgl/src/libs/freetype/lv_freetype_outline.o \
./Core/lvgl/src/libs/freetype/lv_ftsystem.o 

C_DEPS += \
./Core/lvgl/src/libs/freetype/lv_freetype.d \
./Core/lvgl/src/libs/freetype/lv_freetype_glyph.d \
./Core/lvgl/src/libs/freetype/lv_freetype_image.d \
./Core/lvgl/src/libs/freetype/lv_freetype_outline.d \
./Core/lvgl/src/libs/freetype/lv_ftsystem.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/libs/freetype/%.o Core/lvgl/src/libs/freetype/%.su Core/lvgl/src/libs/freetype/%.cyclo: ../Core/lvgl/src/libs/freetype/%.c Core/lvgl/src/libs/freetype/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/include" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/lvgl/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-libs-2f-freetype

clean-Core-2f-lvgl-2f-src-2f-libs-2f-freetype:
	-$(RM) ./Core/lvgl/src/libs/freetype/lv_freetype.cyclo ./Core/lvgl/src/libs/freetype/lv_freetype.d ./Core/lvgl/src/libs/freetype/lv_freetype.o ./Core/lvgl/src/libs/freetype/lv_freetype.su ./Core/lvgl/src/libs/freetype/lv_freetype_glyph.cyclo ./Core/lvgl/src/libs/freetype/lv_freetype_glyph.d ./Core/lvgl/src/libs/freetype/lv_freetype_glyph.o ./Core/lvgl/src/libs/freetype/lv_freetype_glyph.su ./Core/lvgl/src/libs/freetype/lv_freetype_image.cyclo ./Core/lvgl/src/libs/freetype/lv_freetype_image.d ./Core/lvgl/src/libs/freetype/lv_freetype_image.o ./Core/lvgl/src/libs/freetype/lv_freetype_image.su ./Core/lvgl/src/libs/freetype/lv_freetype_outline.cyclo ./Core/lvgl/src/libs/freetype/lv_freetype_outline.d ./Core/lvgl/src/libs/freetype/lv_freetype_outline.o ./Core/lvgl/src/libs/freetype/lv_freetype_outline.su ./Core/lvgl/src/libs/freetype/lv_ftsystem.cyclo ./Core/lvgl/src/libs/freetype/lv_ftsystem.d ./Core/lvgl/src/libs/freetype/lv_ftsystem.o ./Core/lvgl/src/libs/freetype/lv_ftsystem.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-libs-2f-freetype

