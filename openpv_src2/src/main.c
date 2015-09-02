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

<<<<<<< HEAD
#include "inklusi.h"
=======
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdarg.h>
#include <stdlib.h>
#include <math.h>

#include "ch.h"
#include "hal.h"

#include "shell.h"
#include "chprintf.h"
#include "memstreams.h"
#include "evtimer.h"

#define LED_OUT 11 //B
#define LED_IN 12 //B
#define LED_1 8 //A
#define LED_2 15 //B
#define LED_3 14 //B
#define LED_4 13 //B

#define CON_PV 4 //A
>>>>>>> a7350e949f2a0148ba682692b575a64c2bc18df6

int main(void) {

    halInit();
    chSysInit();

<<<<<<< HEAD
    GPIO_Init();
    ADC_Init();
    UART_Init();

    view_level();

    while(1){
        Shell_Init();
        batt_control();
=======
    palSetPadMode(GPIOB,LED_OUT,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB,LED_4,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB,LED_3,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB,LED_2,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOA,LED_1,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPad(GPIOB,LED_OUT);
    palSetPad(GPIOB,LED_4);
    palSetPad(GPIOB,LED_3);
    palSetPad(GPIOB,LED_2);
    palSetPad(GPIOA,LED_1);

    palSetPadMode(GPIOA,CON_PV,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPad(GPIOA,CON_PV);
//    palClearPad(GPIOA,CON_PV);

    while(1){
        palTogglePad(GPIOB,LED_OUT);
        palTogglePad(GPIOB,LED_4);
        palTogglePad(GPIOB,LED_3);
        palTogglePad(GPIOB,LED_2);
        palTogglePad(GPIOA,LED_1);
        chThdSleepMilliseconds(500);
>>>>>>> a7350e949f2a0148ba682692b575a64c2bc18df6
    }
}
