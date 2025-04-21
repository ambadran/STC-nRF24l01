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

  // report to nRF24L01
  nrf24_send_string(_buffer);

  // report to serial monitor
  printf(_buffer);
} 


