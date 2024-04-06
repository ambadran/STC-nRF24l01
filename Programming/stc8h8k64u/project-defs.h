#ifndef INCLUDES_H
#define INCLUDES_H

// SPI settings
#define SPI_PIN_CONFIG 0
#define SPI_SPEED 4000000UL

// Console settings
#define CONSOLE_SPEED 115200
#define CONSOLE_UART UART1
#define CONSOLE_PIN_CONFIG 0

// Others 
#define SUPPRESS_delay1us_WARNING


#include <STC/8H8KxxU/SKDIP28.h>
#include "config.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <delay.h>
#include <gpio-hal.h>
#include <spi-hal.h>
#include <uart-hal.h>
#include <serial-console.h>
#include <stdio.h>
#include "gpio_settings.h"
#include "nrf24l01.h"


#endif
