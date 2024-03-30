#include "project-defs.h"


void gpio_init(void) {

  /* test_pin = { .port = GPIO_PORT2, .pin = GPIO_PIN5, .count = 1, .pinMode = GPIO_BIDIRECTIONAL_MODE}; */

  gpio_pin_init(&test_pin, GPIO_PORT2, GPIO_PIN5, GPIO_BIDIRECTIONAL_MODE);
  gpioConfigure(&test_pin);

  test_p = 1;

  return;
}
