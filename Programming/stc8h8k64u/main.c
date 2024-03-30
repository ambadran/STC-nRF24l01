#include "project-defs.h"

void main(void) {

  // INITs
	INIT_EXTENDED_SFR();
  EA = 1; // enable interrupts
  serialConsoleInitialise(
      CONSOLE_UART, 
      CONSOLE_SPEED, 
      CONSOLE_PIN_CONFIG
      );
  gpio_init();
  NRF24L01_Init();

  // Main Routine
  while (1) {

    tssstt_on();
    delay1ms(500);
    tssstt_off();
    delay1ms(500);


  }

}
