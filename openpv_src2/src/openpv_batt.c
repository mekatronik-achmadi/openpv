#include "inklusi.h"

extern adcsample_t adc0;

void batt_level(void){
    if((adc0>0 && adc0<=1023) || (adc0==0)){

        palTogglePad(GPIOA,LED_1);
        palClearPad(GPIOB,LED_2);
        palClearPad(GPIOB,LED_3);
        palClearPad(GPIOB,LED_4);

        palClearPad(GPIOA,CON_PV);
        palSetPad(GPIOA,CON_LAMP);
        palSetPad(GPIOA,CON_USB);
    }
    else if(adc0>1023 && adc0<=2046){

        palSetPad(GPIOA,LED_1);
        palTogglePad(GPIOB,LED_2);
        palClearPad(GPIOB,LED_3);
        palClearPad(GPIOB,LED_4);

        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>2046 && adc0<=3069){

        palSetPad(GPIOA,LED_1);
        palSetPad(GPIOB,LED_2);
        palTogglePad(GPIOB,LED_3);
        palClearPad(GPIOB,LED_4);

        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>3069){

        palSetPad(GPIOA,LED_1);
        palSetPad(GPIOB,LED_2);
        palSetPad(GPIOB,LED_3);
        palTogglePad(GPIOB,LED_4);

        palSetPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
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
    if((adc0>0 && adc0<=1023) || (adc0==0)){

        palClearPad(GPIOA,CON_PV);
        palSetPad(GPIOA,CON_LAMP);
        palSetPad(GPIOA,CON_USB);
    }
    else if(adc0>1023 && adc0<=2046){

        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>2046 && adc0<=3069){

        palClearPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
    else if(adc0>3069){

        palSetPad(GPIOA,CON_PV);
        palClearPad(GPIOA,CON_LAMP);
        palClearPad(GPIOA,CON_USB);
    }
}
