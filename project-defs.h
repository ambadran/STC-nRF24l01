#ifndef PROJECT_DEFS_H
#define PROJECT_DEFS_H

/* gpio-hal Settings */
#define EnA_PORT GPIO_PORT2
#define EnA_PIN GPIO_PIN1
#define EnB_PORT GPIO_PORT3
#define EnB_PIN GPIO_PIN4
#define IN1_PORT GPIO_PORT2
#define IN1_PIN GPIO_PIN0
#define IN2_PORT GPIO_PORT3
#define IN2_PIN GPIO_PIN7
#define IN3_PORT GPIO_PORT3
#define IN3_PIN GPIO_PIN5
#define IN4_PORT GPIO_PORT3
#define IN4_PIN GPIO_PIN6

#define NRF24_CSN_PORT GPIO_PORT2
#define NRF24_CSN_PIN GPIO_PIN2
#define NRF24_CE_PORT GPIO_PORT2
#define NRF24_CE_PIN GPIO_PIN6

#define ULTRASONIC_TRIGGER_PORT GPIO_PORT3
#define ULTRASONIC_TRIGGER_PIN GPIO_PIN2
#define ULTRASONIC_ECHO_PORT GPIO_PORT3
#define ULTRASONIC_ECHO_PIN GPIO_PIN3

#define NEO_M8N_PORT GPIO_PORT1
#define NEO_M8N_RX_PIN GPIO_PIN0
#define NEO_M8N_TX_PIN GPIO_PIN1

#define LED_PORT GPIO_PORT1
#define LED_PIN GPIO_PIN3

/* uart-hal Settings */
#define HAL_UARTS 2
#define UART2_RX_BUFFER_SIZE 233 //MUST DO THIS TO RECEIVE ALL NMEA STATEMENT!

#define CONSOLE_SPEED 115200
#define CONSOLE_UART UART1
#define CONSOLE_PIN_CONFIG 0  // TX->P3.1, RX->P3.0

#define NEO_M8N_UART_SPEED 9600
#define NEO_M8N_UART UART2
#define NEO_M8N_UART_PIN_CONFIG 0  // TX->P1.1, RX->P1.0

/* adv-pwm Settings */
#define PWM_MOTOR_FREQ 100UL

// EnA pin is P2.1/PWM2P_2
#define PWM_MOTOR_RIGHT_COUNTER PWM_COUNTER_A
#define PWM_MOTOR_RIGHT_CHANNEL PWM_Channel0
#define PWM_MOTOR_RIGHT_PIN_CONFIG 1
#define PWM_MOTOR_RIGHT_OUTPUT_MODE PWM_OUTPUT_N_ONLY 

// EnB in is P3.4/PWM4P_4
#define PWM_MOTOR_LEFT_COUNTER PWM_COUNTER_A
#define PWM_MOTOR_LEFT_CHANNEL PWM_Channel3
#define PWM_MOTOR_LEFT_PIN_CONFIG 3
#define PWM_MOTOR_LEFT_OUTPUT_MODE PWM_OUTPUT_P_ONLY

/* timer-hal configs */
#define HAL_TIMER_API_STOP_TIMER

// TIMER1 is used for CONSOLE_UART
#define NEO_M8N_TIMER UART_USE_OWN_TIMER // TIMER2 is used for UART2
                                         
#define GLOBAL_TIMER TIMER0
#define GLOBAL_TIMER_ISR timer0_isr
#define GLOBAL_TIMER_INTERRUPT TIMER0_INTERRUPT

/* #define ULTRASONIC_TIMER TIMER4 */
/* #define ULTRASONIC_TIMER_ISR timer4_isr */
/* #define ULTRASONIC_TIMER_INTERRUPT TIMER4_INTERRUPT */

/* external pin interrupts */
#define ULTRASONIC_INT_PIN_ISR extint0_isr
#define ULTRASONIC_INT_PIN_INTERRUPT EXTINT0_INTERRUPT

/* SPI settings */
#define SPI_PIN_CONFIG 1
/* #define SPI_SPEED 8000000 */
#define SPI_SPEED 4000000UL

/* I2C settings */

/* nRF24L01 settings */
//#define NRF_DEBUGGING  //uncomment to print all the nrf24l01 registers after setting them with nrf24_device()
#define RF_CHANNEL_DEFAULT 46

/* Ultrasonic Sensor Settings*/
/* #define ULTRASONIC_STATE_MACHINE */

/* MPU9250 Settings */

/* NEO M8N Settings */

/* Differential Control Settings */

// Others 
/* #define GPIO_HAS_INT_WK */
#define LED_BLINK_PERIOD 400

#include <STC/8H8KxxU/SKDIP28.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdarg.h>
#include <delay.h>
#include <gpio-hal.h>
#include <timer-hal.h>
#include <uart-hal.h>
#include <serial-console.h>
#include <spi-hal.h>
#include <i2c-hal.h>
#include "global_timer.h"
#include "report.h"
#include "nrf24l01.h"
#include "terminal.h"
#include "protocol.h"

#endif
