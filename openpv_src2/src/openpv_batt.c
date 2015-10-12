#include "inklusi.h"

extern adcsample_t adc0;

#define VL1 3412 // 11 Volt
#define VL2 3582
#define VL3 3752
#define VL4 4000

void batt_level(void){
    palSetPad(GPIOA,CON_PV);
    if((adc0>0 && adc0<=VL1) || (adc0==0)){
        palTogglePad(GPIOA,LED_1);
        palClearPad(GPIOB,LED_2);
        palClearPad(GPIOB,LED_3);
        palClearPad(GPIOB,LED_4);
    }
    else if(adc0>VL1 && adc0<=VL2){
        palSetPad(GPIOA,LED_1);
        palTogglePad(GPIOB,LED_2);
        palClearPad(GPIOB,LED_3);
        palClearPad(GPIOB,LED_4);

    }
    else if(adc0>VL2 && adc0<=VL3){
        palSetPad(GPIOA,LED_1);
        palSetPad(GPIOB,LED_2);
        palTogglePad(GPIOB,LED_3);
        palClearPad(GPIOB,LED_4);

    }
    else if(adc0>VL3 && adc0<=VL4){
        palSetPad(GPIOA,LED_1);
        palSetPad(GPIOB,LED_2);
        palSetPad(GPIOB,LED_3);
        palTogglePad(GPIOB,LED_4);
    }
    else if(adc0>VL4){
        palSetPad(GPIOA,LED_1);
        palSetPad(GPIOB,LED_2);
        palSetPad(GPIOB,LED_3);
        palSetPad(GPIOB,LED_4);
    }
}

void view_level(void){
    int loop;
    for(loop=0;loop<10;loop++){
        batt_level();
        chThdSleepMilliseconds(500);
    }
    palClearPad(GPIOA,LED_1);
    palClearPad(GPIOB,LED_2);
    palClearPad(GPIOB,LED_3);
    palClearPad(GPIOB,LED_4);
}

void batt_control(void){
    palSetPad(GPIOA,CON_PV);
    if((adc0>0 && adc0<=VL1) || (adc0==0)){
        palClearPad(GPIOA,CON_PV);
        palSetPad(GPIOA,CON_LAMP);
        palSetPad(GPIOA,CON_USB);
    }
    else if(adc0>VL1 && adc0<=VL2){
        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>VL2 && adc0<=VL3){
        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>VL3 && adc0<=VL4){
        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>VL4){
        palSetPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
}
