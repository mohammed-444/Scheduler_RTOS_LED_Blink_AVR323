################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source_main/MCAL/timer/timer.c 

OBJS += \
./source_main/MCAL/timer/timer.o 

C_DEPS += \
./source_main/MCAL/timer/timer.d 


# Each subdirectory must supply rules for building sources it contributes
source_main/MCAL/timer/%.o: ../source_main/MCAL/timer/%.c source_main/MCAL/timer/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\Scheduler_RTOS_LED_Blink_AVR323\Rtos_Source\portable\MemMang" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\Scheduler_RTOS_LED_Blink_AVR323\Rtos_Source\portable\GCC\ATMega323" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\Scheduler_RTOS_LED_Blink_AVR323\Rtos_Source\include" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega323 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


