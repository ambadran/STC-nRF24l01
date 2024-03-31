#include "project-defs.h"

// Declaring pins
GpioConfig tssstt = GPIO_PIN_CONFIG(GPIO_PORT2, GPIO_PIN5, GPIO_BIDIRECTIONAL_MODE);

void gpio_init(void) {

  gpioConfigure(&tssstt);
  tssstt_off();

  return;
}

void tssstt_on(void) {
  gpioWrite(&tssstt, 1);
}

void tssstt_off(void) {
  gpioWrite(&tssstt, 0);
}
