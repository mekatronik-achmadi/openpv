#include "inklusi.h"

void GPIO_Init(void){
    palSetPadMode(GPIOB,LED_OUT,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB,LED_4,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB,LED_3,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB,LED_2,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOA,LED_1,PAL_MODE_OUTPUT_PUSHPULL);
    palClearPad(GPIOB,LED_OUT);
    palClearPad(GPIOB,LED_4);
    palClearPad(GPIOB,LED_3);
    palClearPad(GPIOB,LED_2);
    palClearPad(GPIOA,LED_1);

    palSetPadMode(GPIOA,CON_PV,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOA,CON_LAMP,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOA,CON_USB,PAL_MODE_OUTPUT_PUSHPULL);
    palSetPad(GPIOA,CON_PV);
    palSetPad(GPIOA,CON_LAMP);
    palSetPad(GPIOA,CON_USB);
}

void Test_Led_Loop(void){
    while(1){
        palTogglePad(GPIOB,LED_4);
        palTogglePad(GPIOB,LED_3);
        palTogglePad(GPIOB,LED_2);
        palTogglePad(GPIOA,LED_1);
        chThdSleepMilliseconds(500);
    }
}

void Test_Cut_All(void){
        palSetPad(GPIOA,CON_PV);
        palSetPad(GPIOA,CON_LAMP);
        palSetPad(GPIOA,CON_USB);
}
