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

#include "inklusi.h"

#define TEST_SYSTEM 0
#define SERIAL_COMM 1

int main(void) {

    halInit();
    chSysInit();

    GPIO_Init();
    ADC_Init();

#if SERIAL_COMM
    UART_Init();
#endif

#if TEST_SYSTEM
    Test_Cut_All();
    Test_Led_Loop();
#endif

    view_level();

    while(1){

#if SERIAL_COMM
        Shell_Init();
#endif

        batt_control();
        chThdSleepSeconds(60);
    }
}
