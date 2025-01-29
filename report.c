#include "project-defs.h"

static GpioConfig led_pin = GPIO_PIN_CONFIG(LED_PORT, LED_PIN, GPIO_BIDIRECTIONAL_MODE);
static uint32_t led_timer_count;

size_t uint8_strlen(const uint8_t *str) {
    size_t length = 0;
    while (str[length] != '\0') { // Check for the null terminator
        length++;
    }
    return length;
}

void report_init(void) {

  gpioConfigure(&led_pin);
  led_timer_count = get_current_time();

}

void report_toggle_led(void) {
  if ((get_current_time() - led_timer_count) >= LED_BLINK_PERIOD) {

    gpioToggle(&led_pin);
    led_timer_count = get_current_time();                          

  }
}

static char _buffer[81];
void report(const char* __fmt, ...) {
  va_list vaList;
	// CAUTION! SDCC doesn't provide vsnprintf(), so beware of buffer 
	// overflows if you can print arbitrary long values.
	va_start(vaList, __fmt);
	vsprintf(_buffer, __fmt, vaList);
	va_end(vaList);

  // report to Station through nrf24l01
  nrf24_device(TRANSMITTER, RESET);
  nrf24_CE(0);
  /* nrf24_print_internal_register_values(); */
  while(nrf24_transmit("testtesttesttest", 16, ACK_MODE) == TRANSMIT_FAIL) { printf("nrf24 failed to send!"); }

  nrf24_CE(1);
  delay10us(2); //TODO: remove this

  while(nrf24_transmit_status() == TRANSMIT_IN_PROGRESS) {printf(".");}

  nrf24_CE(0);

  printf("\n");
  nrf24_device(RECEIVER, RESET);

  // report to serial monitor
  printf(_buffer);
} 

