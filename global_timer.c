#include "project-defs.h"

static volatile uint32_t global_timer_counter;

void global_timer_init(void) {
    startTimer(
      GLOBAL_TIMER, 
      frequencyToSysclkDivisor(1000), // 1ms interrupt
      DISABLE_OUTPUT, 
      ENABLE_INTERRUPT, 
      FREE_RUNNING
      );
}

uint32_t get_current_time(void) { return global_timer_counter; }


INTERRUPT(GLOBAL_TIMER_ISR, GLOBAL_TIMER_INTERRUPT) {

  global_timer_counter++;

}
