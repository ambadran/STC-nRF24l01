#include "project-defs.h"

// Declaring pins
GpioConfig test_Pin = GPIO_PIN_CONFIG(GPIO_PORT2, GPIO_PIN5, GPIO_BIDIRECTIONAL_MODE);

void gpio_init(void) {

  gpioConfigure(&test_Pin);
  test_pin_off();

  return;
}

void test_pin_on(void) {
  gpioWrite(&test_Pin, 1);
}

void test_pin_off(void) {
  gpioWrite(&test_Pin, 0);
}
