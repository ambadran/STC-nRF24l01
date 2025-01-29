#ifndef REPORT_H
#define REPORT_H

size_t uint8_strlen(const uint8_t *str);
void report_init(void);
void report_toggle_led(void);
/* void report(const char* string); */
void report(const char* __fmt, ...);

#endif
