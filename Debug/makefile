################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include source_main/MCAL/timer/subdir.mk
-include source_main/MCAL/spi/subdir.mk
-include source_main/MCAL/gpio/subdir.mk
-include source_main/subdir.mk
-include Rtos_Source/portable/MemMang/subdir.mk
-include Rtos_Source/portable/GCC/ATMega323/subdir.mk
-include Rtos_Source/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
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


BUILD_ARTIFACT_NAME := Scheduler_RTOS_LED_Blink_AVR323
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
Scheduler_RTOS_LED_Blink_AVR323.lss \
Scheduler_RTOS_LED_Blink_AVR323.lss \

FLASH_IMAGE += \
Scheduler_RTOS_LED_Blink_AVR323.hex \

SIZEDUMMY += \
sizedummy \
sizedummy \


# All Target
all: main-build

# Main-build Target
main-build: Scheduler_RTOS_LED_Blink_AVR323.elf secondary-outputs

# Tool invocations
Scheduler_RTOS_LED_Blink_AVR323.elf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,Scheduler_RTOS_LED_Blink_AVR323.map -mmcu=atmega323 -o "Scheduler_RTOS_LED_Blink_AVR323.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Scheduler_RTOS_LED_Blink_AVR323.lss: Scheduler_RTOS_LED_Blink_AVR323.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S Scheduler_RTOS_LED_Blink_AVR323.elf  >"Scheduler_RTOS_LED_Blink_AVR323.lss"
	@echo 'Finished building: $@'
	@echo ' '

Scheduler_RTOS_LED_Blink_AVR323.hex: Scheduler_RTOS_LED_Blink_AVR323.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex Scheduler_RTOS_LED_Blink_AVR323.elf  "Scheduler_RTOS_LED_Blink_AVR323.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Scheduler_RTOS_LED_Blink_AVR323.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega323 Scheduler_RTOS_LED_Blink_AVR323.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) Scheduler_RTOS_LED_Blink_AVR323.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents main-build

-include ../makefile.targets
