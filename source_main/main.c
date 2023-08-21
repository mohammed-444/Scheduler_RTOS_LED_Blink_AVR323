
#include <avr/io.h>
#include "FreeRTOS.h"
#include "task.h"
#include "MCAL/gpio/gpio.h"
#define NULL ((char *)0)


void Task1_Func(void);


void Task2_Func(void);


void Task3_Func(void);

TaskHandle_t task1ptr;
TaskHandle_t task2ptr;
TaskHandle_t task3ptr;

void Scheduler_RTOS_LED_Blink_AVR323(void){
	GPIO_setupPortDirection(PORTC_ID, PORT_OUTPUT);
	xTaskCreate(Task1_Func,"first",configMINIMAL_STACK_SIZE,NULL,1,&task1ptr);
	xTaskCreate(Task2_Func,"second",configMINIMAL_STACK_SIZE,NULL,1,&task2ptr);
	xTaskCreate(Task3_Func,"third",configMINIMAL_STACK_SIZE,NULL,1,&task3ptr);
	vTaskStartScheduler();
}


void Task1_Func(void)
{
	while(1)
	{
		GPIO_TogglePin(PORTC_ID,PIN1_ID);
		vTaskDelay(100);
	}
}

void Task2_Func(void)
{

	while(1)
	{
		GPIO_TogglePin(PORTC_ID,PIN4_ID);
		vTaskDelay(100);
	}
}


void Task3_Func(void)
{

	while(1)
	{
		GPIO_TogglePin(PORTC_ID,PIN7_ID);
		vTaskDelay(100);
	}

}

int main(void)
{

	Scheduler_RTOS_LED_Blink_AVR323();

	while(1)
	{

	}
}




