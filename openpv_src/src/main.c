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

#define USE_INTERFACE 0

#define PORT_LED GPIOA
#define LED1     1
#define LED2     2
#define LED3     3
#define LED4     4

#define PORT_CON GPIOA
#define CON_PV      11
#define CON_LAMP    12
#define CON_USB     13

#define PORT_SW GPIOA
#define SW      5

#define ADC_GRP1_NUM_CHANNELS   1
#define ADC_GRP1_BUF_DEPTH      10

static adcsample_t samples[ADC_GRP1_NUM_CHANNELS * ADC_GRP1_BUF_DEPTH];

adcsample_t adc0;
uint32_t sum_adc0;

void adccb(ADCDriver *adcp, adcsample_t *buffer, size_t n){
  (void) buffer; (void) n;
  int i;
  if (adcp->state == ADC_COMPLETE) {

    sum_adc0=0;

    for(i=0;i<ADC_GRP1_BUF_DEPTH;i++){
        sum_adc0=sum_adc0+samples[0+(i*ADC_GRP1_NUM_CHANNELS)];
    }

    adc0=sum_adc0/ADC_GRP1_BUF_DEPTH;
   }
 }

static const ADCConversionGroup adcgrpcfg = {
    FALSE,
    ADC_GRP1_NUM_CHANNELS,
    adccb,
    NULL,
    /* HW dependent part.*/
    0,
    0,
    ADC_SMPR2_SMP_AN0(ADC_SAMPLE_239P5),
    0,
    ADC_SQR1_NUM_CH(ADC_GRP1_NUM_CHANNELS),
    0,
    ADC_SQR3_SQ1_N(ADC_CHANNEL_IN0)
};

static WORKING_AREA(wa_adcThread, THREAD_WA_SIZE);
static msg_t adcThread(void *arg) {
  (void)arg;
  while (TRUE) {
    chThdSleepMilliseconds(100);
    adcStartConversion(&ADCD1, &adcgrpcfg, samples, ADC_GRP1_BUF_DEPTH);
  }
  return 0;
}

#if USE_INTERFACE
static void cmd_data(BaseSequentialStream *chp, int argc, char *argv[]) {

  (void)argv;
  if (argc > 0) {
    chprintf(chp, "Usage: data\r\n");
    return;
  }

  chprintf(chp, "adc0 = %i \n\r",adc0);
}

static const ShellCommand commands[] = {
  {"data", cmd_data},
  {NULL, NULL}
};

static const ShellConfig shell_cfg1 = {
  (BaseSequentialStream *)&SD1,
  commands
};
#endif

unsigned char led_on,led_loop;

void batt_level(void){
    if((adc0>0 && adc0<=1023) || (adc0==0)){
        if(led_on==1){
            palTogglePad(PORT_LED,LED1);
            palClearPad(PORT_LED,LED2);
            palClearPad(PORT_LED,LED3);
            palClearPad(PORT_LED,LED4);
        }

        palSetPad(PORT_CON,CON_PV);
        palClearPad(PORT_CON,CON_LAMP);
        palClearPad(PORT_CON,CON_USB);
    }
    else if(adc0>1023 && adc0<=2046){
        if(led_on==1){
            palSetPad(PORT_LED,LED1);
            palTogglePad(PORT_LED,LED2);
            palClearPad(PORT_LED,LED3);
            palClearPad(PORT_LED,LED4);
        }

        palSetPad(PORT_CON,CON_PV);
        palSetPad(PORT_CON,CON_LAMP);
        palSetPad(PORT_CON,CON_USB);
    }
    else if(adc0>2046 && adc0<=3069){
        if(led_on==1){
            palSetPad(PORT_LED,LED1);
            palSetPad(PORT_LED,LED2);
            palTogglePad(PORT_LED,LED3);
            palClearPad(PORT_LED,LED4);
        }

        palSetPad(PORT_CON,CON_PV);
        palSetPad(PORT_CON,CON_LAMP);
        palSetPad(PORT_CON,CON_USB);
    }
    else if(adc0>3069){
        if(led_on==1){
            palSetPad(PORT_LED,LED1);
            palSetPad(PORT_LED,LED2);
            palSetPad(PORT_LED,LED3);
            palTogglePad(PORT_LED,LED4);
        }

        palClearPad(PORT_CON,CON_PV);
        palSetPad(PORT_CON,CON_LAMP);
        palSetPad(PORT_CON,CON_USB);
    }
}

int main(void) {

  halInit();
  chSysInit();

//#if USE_INTERFACE
//  Thread *shelltp = NULL;
//  palSetPadMode(GPIOA,9,PAL_MODE_STM32_ALTERNATE_PUSHPULL);
//  palSetPadMode(GPIOA,10,PAL_MODE_INPUT);
//  sdStart(&SD1, NULL);
//  shellInit();
//#endif

//  palSetPadMode(PORT_LED,LED1,PAL_MODE_OUTPUT_PUSHPULL);
//  palSetPadMode(PORT_LED,LED2,PAL_MODE_OUTPUT_PUSHPULL);
//  palSetPadMode(PORT_LED,LED3,PAL_MODE_OUTPUT_PUSHPULL);
//  palSetPadMode(PORT_LED,LED4,PAL_MODE_OUTPUT_PUSHPULL);
//  palClearPad(PORT_LED,LED1);
//  palClearPad(PORT_LED,LED2);
//  palClearPad(PORT_LED,LED3);
//  palClearPad(PORT_LED,LED4);

//  palSetPadMode(PORT_CON,CON_PV,PAL_MODE_OUTPUT_PUSHPULL);
  palSetPadMode(PORT_CON,CON_LAMP,PAL_MODE_OUTPUT_PUSHPULL);
  palSetPadMode(PORT_CON,CON_USB,PAL_MODE_OUTPUT_PUSHPULL);
  palClearPad(PORT_CON,CON_PV);
  palClearPad(PORT_CON,CON_LAMP);
  palClearPad(PORT_CON,CON_USB);

//  palSetPad(PORT_CON,CON_PV);
  palSetPad(PORT_CON,CON_LAMP);
  while(1);

//  palSetPadMode(PORT_SW,SW,PAL_MODE_INPUT_PULLUP);

//  palSetPadMode(GPIOA,0,PAL_MODE_INPUT_ANALOG);
//  adcStart(&ADCD1, NULL);
//  chThdCreateStatic(wa_adcThread, sizeof(wa_adcThread), NORMALPRIO, adcThread, NULL);

//  while (TRUE) {
//    batt_level();

//#if USE_INTERFACE
//    if (!shelltp){
//      shelltp = shellCreate(&shell_cfg1, SHELL_WA_SIZE, NORMALPRIO);}
//    else if (chThdTerminated(shelltp)) {
//      chThdRelease(shelltp);
//      shelltp = NULL;
//    }
//#endif

//    if(palReadPad(PORT_SW,SW)==PAL_LOW){
//        led_on=1;
//        led_loop=0;
//    }

//    if(led_on==1){
//        led_loop++;
//        if(led_loop==10){
//            led_on=0;
//            led_loop=0;
//            palClearPad(PORT_LED,LED1);
//            palClearPad(PORT_LED,LED2);
//            palClearPad(PORT_LED,LED3);
//            palClearPad(PORT_LED,LED4);
//        }
//    }

//    chThdSleepMilliseconds(500);
//  }
}
