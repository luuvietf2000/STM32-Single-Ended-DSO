################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Drivers/ST7789/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include Core/Graphics/Src/subdir.mk
-include Core/Acquisition/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Stm32_Digital_Storage_Oscilloscope_Basic
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Stm32_Digital_Storage_Oscilloscope_Basic.elf \

MAP_FILES += \
Stm32_Digital_Storage_Oscilloscope_Basic.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Stm32_Digital_Storage_Oscilloscope_Basic.list \


# All Target
all: main-build

# Main-build Target
main-build: Stm32_Digital_Storage_Oscilloscope_Basic.elf secondary-outputs

# Tool invocations
Stm32_Digital_Storage_Oscilloscope_Basic.elf Stm32_Digital_Storage_Oscilloscope_Basic.map: $(OBJS) $(USER_OBJS) D:\Code\STM32\Stm32_Protable_Protocol_Tool\STM32F103RCTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Stm32_Digital_Storage_Oscilloscope_Basic.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"D:\Code\STM32\Stm32_Protable_Protocol_Tool\STM32F103RCTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Stm32_Digital_Storage_Oscilloscope_Basic.map" -Wl,--gc-sections -static -Wl,-Map=output.map,--cref -Wl,--gc-sections -Wl,-Map=Stm32_Digital_Storage_Oscilloscope_Basic.map --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Stm32_Digital_Storage_Oscilloscope_Basic.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Stm32_Digital_Storage_Oscilloscope_Basic.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Stm32_Digital_Storage_Oscilloscope_Basic.elf Stm32_Digital_Storage_Oscilloscope_Basic.list Stm32_Digital_Storage_Oscilloscope_Basic.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
