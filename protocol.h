#ifndef PROTOCOL_H
#define PROTOCOL_H

#define LINE_BUFFER_SIZE 30  // number of characters in one command
#define UART_RECEIVE_EMPTY 0

static uint8_t uartGetCharacter_modified(uint8_t* data, uint8_t size) __reentrant;
static void protocol_read_line(uint8_t (*func)(uint8_t*, uint8_t) __reentrant, uint8_t flag_to_compare_to);
static void protocol_execute_line(char* line);
void protocol_main_loop(void);

#endif
