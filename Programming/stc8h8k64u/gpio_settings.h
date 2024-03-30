#ifndef GPIO_SETTINGS_H
#define GPIO_SETTINGS_H

// Declaring pins
extern GpioConfig test_pin;
extern uint8_t test_p;

/* GPIO_PIN_CONFIG(GPIO_PORT2, GPIO_PIN5, GPIO_BIDIRECTIONAL_MODE); */
void gpio_init(void);

#endif
