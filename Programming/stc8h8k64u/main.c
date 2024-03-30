#include "project-defs.h"


void main() {

  // INITs
	INIT_EXTENDED_SFR();
  interrupts_init();
  serialConsoleInitialise(
      CONSOLE_UART, 
      CONSOLE_SPEED, 
      CONSOLE_PIN_CONFIG
      );
  gpio_init();

  // Main Routine
  while (1) {

    gpioWrite(&test_pin, 0);
    delay1ms(30);
    gpioWrite(&test_pin, 1);
    delay1ms(30);


  }

  return;
}
