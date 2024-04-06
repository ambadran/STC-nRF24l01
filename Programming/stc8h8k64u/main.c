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
  uint8_t register_current_value;
  while (1) {

    tssstt_off();
    delay1ms(200);
    tssstt_on();
    delay1ms(200);
    if (nrf24_receive(&received_payload, 1) == RECEIVE_FIFO_EMPTY) {  

      printf("\rNothing Received!\n");

    } else {

      printf("\rReceived Value: %d\n", received_payload);

    }
    for (int i=0; i<24; i++) {
      nrf24_read(i, &register_current_value, 1, CLOSE);
      printf("\rRegister %d: %d\n", i, register_current_value);
    }
    while (1);

  }

}
