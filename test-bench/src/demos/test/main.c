/*
    ChibiOS/RT - Copyright (C) 2006-2013 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include "avr_inc.h"

#define L_RUN 0
#define D_L_RUN DDRB
#define P_L_RUN PORTB

static WORKING_AREA(waThread1, 32);
static msg_t Thread1(void *arg) {
  (void) arg;

  Disp_On_All();
  while (TRUE) {
//    Disp_Test();
    Disp_View(&P_D5_A,D5_A,5);
    Disp_View(&P_D5_B,D5_B,4);
    Disp_View(&P_D5_C,D5_C,3);
  }
  return 0;
}

/*
 * Application entry point.
 */
int main(void) {
  
  /*
   * Hardware register configuration in low level layer.
   */
   
  /*
   * System initializations.
   * - HAL initialization, this also initializes the configured device drivers
   *   and performs the board-specific initializations.
   * - Kernel initialization, the main() function becomes a thread and the
   *   RTOS is active.
   */
  halInit();
  LED_Init();
  Disp_Init();
  
    /*
   * Starts all threads.
   */
  chSysInit();
  
  chThdCreateStatic(waThread1, sizeof(waThread1), NORMALPRIO, Thread1, NULL);

  while(TRUE) {
      Run_Blink();
      chThdSleepMilliseconds(500);
  }
}
