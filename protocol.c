#include "project-defs.h"

static char line[LINE_BUFFER_SIZE];
uint8_t char_count = 0;
uint8_t c;
uint8_t nrf_buf[STATIC_PAYLOAD_WIDTH_DEFAULT];
uint8_t *nrf_buf_ptr = nrf_buf;
uint8_t *nrf_buf_end = nrf_buf + STATIC_PAYLOAD_WIDTH_DEFAULT;

// Assign read functions to a function pointer each
uint8_t (*uart_receive_func_ptr)(uint8_t*, uint8_t) __reentrant = uartGetCharacter_modified;
uint8_t (*nrf24_receive_func_ptr)(uint8_t*, uint8_t) __reentrant = nrf24_receive;

static uint8_t uartGetCharacter_modified(uint8_t* data, uint8_t size) __reentrant {
  *data = UART_RECEIVE_EMPTY;
  uartGetBlock(CONSOLE_UART, data, size, NON_BLOCKING);
  return *data;
}

static void protocol_read_line(uint8_t (*func)(uint8_t*, uint8_t) __reentrant, uint8_t flag_to_compare_to) {

    do { 
      // line end
      if ((c == '\n') || (c == '\r')) {
        line[char_count] = 0; // string termination character, V.IMP for terminal.c to know where the command characters end
        char_count = 0; // reseting to read next command

        printf("\n");

        // executing line!
        protocol_execute_line(line);

      // throw away whitespaces and control characters
      } else if (c <= ' '){
        printf(" ");

      // buffer overflow
      } else if (char_count >= (LINE_BUFFER_SIZE-1)) {

        printf("\nBUFFER OVERFLOW!!!!\n");
        char_count = 0;

      // store uart_rx_buffer in line character array
      } else {

        printf("%c", c);
        line[char_count++] = c;
      }
    } while (func(&c, 1) != flag_to_compare_to);
}

static void protocol_execute_line(char* line) {

  if(line[0] == 0) {

    printf("Enter Received..\n\n");
    
  } else {

    LINE_STATUS line_state = terminal_execute_line(line);

    if (line_state == LINE_PASSED) { printf("Command passed..\n\n"); } 
    else if (line_state == LINE_FAILED) { printf("Command Failed..\n\n"); }

  }

}

void protocol_main_loop(void) {
  printf("\nStarting..\n");

  while(1) {
    if (uartGetCharacter_modified(&c, 1) != UART_RECEIVE_EMPTY) {

      protocol_read_line(uart_receive_func_ptr, UART_RECEIVE_EMPTY);

    } else if (nrf24_receive(nrf_buf, STATIC_PAYLOAD_WIDTH_DEFAULT) != RECEIVE_FIFO_EMPTY) {

      do {
        c = *nrf_buf_ptr;
        protocol_read_line(nrf24_receive_func_ptr, RECEIVE_FIFO_EMPTY);
      } while (++nrf_buf_ptr < nrf_buf_end && *nrf_buf_ptr != 0x00); // keep reading until reach 0x00 padding or end of payload width

      // resetting for future use
      nrf_buf_ptr = nrf_buf;
      nrf_buf_end = nrf_buf + STATIC_PAYLOAD_WIDTH_DEFAULT;


 
    }

    report_toggle_led();

  }
}
