#ifndef PROJECT_DEFS_H
#define PROJECT_DEFS_H

/* gpio-hal Settings */
#define NRF24_CSN_PORT GPIO_PORT2 
#define NRF24_CSN_PIN GPIO_PIN2
#define NRF24_MOSI_PORT GPIO_PORT2  // iniated by spi-hal
#define NRF24_MOSI_PIN GPIO_PIN3  // iniated by spi-hal
#define NRF24_MISO_PORT GPIO_PORT2  // iniated by spi-hal
#define NRF24_MISO_PIN GPIO_PIN4  // iniated by spi-hal
#define NRF24_SCLK_PORT GPIO_PORT2  // iniated by spi-hal
#define NRF24_SCLK_PIN GPIO_PIN5  // iniated by spi-hal
#define NRF24_CE_PORT GPIO_PORT2  
#define NRF24_CE_PIN GPIO_PIN6  

#define LED_PORT GPIO_PORT1
#define LED_PIN GPIO_PIN3

/* uart-hal Settings */
#define CONSOLE_SPEED 115200
#define CONSOLE_UART UART1
#define CONSOLE_PIN_CONFIG 0  // TX->P3.1, RX->P3.0

/* timer-hal configs */
// Timer assignments
#define GLOBAL_TIMER TIMER0
#define GLOBAL_TIMER_ISR timer0_isr
#define GLOBAL_TIMER_INTERRUPT TIMER0_INTERRUPT
// TIMER1 is used for CONSOLE_UART
//
/* SPI settings */
#define SPI_PIN_CONFIG 1
/* #define SPI_SPEED 8000000 */
#define SPI_SPEED 4000000UL

/* nRF24L01 settings */
//#define NRF_DEBUGGING  //uncomment to print all the nrf24l01 registers after setting them with nrf24_device()
#define RF_CHANNEL_DEFAULT 46

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
#include "global_timer.h"
#include "report.h"
#include "nrf24l01.h"
#include "terminal.h"
#include "protocol.h"

#endif
