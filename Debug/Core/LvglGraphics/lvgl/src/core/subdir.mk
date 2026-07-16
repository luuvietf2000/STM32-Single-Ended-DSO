################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LvglGraphics/lvgl/src/core/lv_group.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_class.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_draw.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_event.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_pos.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_property.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_style.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.c \
../Core/LvglGraphics/lvgl/src/core/lv_obj_tree.c \
../Core/LvglGraphics/lvgl/src/core/lv_observer.c \
../Core/LvglGraphics/lvgl/src/core/lv_refr.c 

OBJS += \
./Core/LvglGraphics/lvgl/src/core/lv_group.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_class.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_draw.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_event.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_pos.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_property.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_style.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.o \
./Core/LvglGraphics/lvgl/src/core/lv_obj_tree.o \
./Core/LvglGraphics/lvgl/src/core/lv_observer.o \
./Core/LvglGraphics/lvgl/src/core/lv_refr.o 

C_DEPS += \
./Core/LvglGraphics/lvgl/src/core/lv_group.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_class.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_draw.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_event.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_pos.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_property.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_style.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.d \
./Core/LvglGraphics/lvgl/src/core/lv_obj_tree.d \
./Core/LvglGraphics/lvgl/src/core/lv_observer.d \
./Core/LvglGraphics/lvgl/src/core/lv_refr.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LvglGraphics/lvgl/src/core/%.o Core/LvglGraphics/lvgl/src/core/%.su Core/LvglGraphics/lvgl/src/core/%.cyclo: ../Core/LvglGraphics/lvgl/src/core/%.c Core/LvglGraphics/lvgl/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/include" -I"D:/Code/STM32/Stm32_Protable_Protocol_Tool/Core/LvglGraphics/lvgl/src" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -ID:/Code/STM32/Stm32_Protable_Protocol_Tool/Drivers/ST7789/Inc -I../Core/Graphics/Inc -O0 -ffunction-sections -fdata-sections -Wall -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-core

clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-core:
	-$(RM) ./Core/LvglGraphics/lvgl/src/core/lv_group.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_group.d ./Core/LvglGraphics/lvgl/src/core/lv_group.o ./Core/LvglGraphics/lvgl/src/core/lv_group.su ./Core/LvglGraphics/lvgl/src/core/lv_obj.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj.d ./Core/LvglGraphics/lvgl/src/core/lv_obj.o ./Core/LvglGraphics/lvgl/src/core/lv_obj.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_class.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_class.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_class.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_class.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_draw.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_draw.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_draw.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_draw.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_event.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_event.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_event.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_event.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_id_builtin.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_pos.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_pos.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_pos.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_pos.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_property.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_property.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_property.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_property.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_scroll.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_style.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_style.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_style.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_style.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_style_gen.su ./Core/LvglGraphics/lvgl/src/core/lv_obj_tree.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_obj_tree.d ./Core/LvglGraphics/lvgl/src/core/lv_obj_tree.o ./Core/LvglGraphics/lvgl/src/core/lv_obj_tree.su ./Core/LvglGraphics/lvgl/src/core/lv_observer.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_observer.d ./Core/LvglGraphics/lvgl/src/core/lv_observer.o ./Core/LvglGraphics/lvgl/src/core/lv_observer.su ./Core/LvglGraphics/lvgl/src/core/lv_refr.cyclo ./Core/LvglGraphics/lvgl/src/core/lv_refr.d ./Core/LvglGraphics/lvgl/src/core/lv_refr.o ./Core/LvglGraphics/lvgl/src/core/lv_refr.su

.PHONY: clean-Core-2f-LvglGraphics-2f-lvgl-2f-src-2f-core

