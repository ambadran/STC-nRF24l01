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

  // Awaiting User picocom
  uint8_t initial_char = '0';
  while (initial_char != 's') {
    initial_char = uartGetCharacter(CONSOLE_UART, NON_BLOCKING);
  }
  uartSendBlock(CONSOLE_UART, "Starting..\n", 12, NON_BLOCKING);

  //initializing nrf24l01+ as a receiver device with one simpl function call
  nrf24_device(RECEIVER, RESET);

  // Main Routine
  uint8_t received_payload;
  while (1) {

    tssstt_off();
    delay1ms(500);
    tssstt_on();
    delay1ms(500);
    uartSendBlock(CONSOLE_UART, "\rtest\n", 6, NON_BLOCKING);
    /* if (nrf24_receive(&received_payload, 1) == RECEIVE_FIFO_EMPTY) {    //poll and receive in one simple function call */
    /*   uartSendBlock(CONSOLE_UART, "Nothing Received!\n", 19, BLOCKING); */
    /* } else { */
    /*   uartSendBlock(CONSOLE_UART, "Received Value: < ", 19, BLOCKING); */
    /*   uartSendCharacter(CONSOLE_UART, received_payload, BLOCKING); */
    /*   uartSendBlock(CONSOLE_UART, " > !\n", 8, BLOCKING); */
    /* } */

  }

}
