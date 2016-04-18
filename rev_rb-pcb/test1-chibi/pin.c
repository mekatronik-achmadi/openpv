#include "inklusi.h"

void Delay(__IO uint32_t nCount){
  for(; nCount != 0; nCount--);
}

void led_pin_init(void){
    palSetPadMode(GPIOB, led_pv_pin, PAL_MODE_OUTPUT_PUSHPULL);
}

void con_pin_init(void){
    palSetPadMode(GPIOB, con_lamp_pin, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, con_pv_pin, PAL_MODE_OUTPUT_PUSHPULL);
}

void chk_pin_init(void){
    palSetPadMode(GPIOA, wkup_pin, PAL_MODE_INPUT_PULLDOWN);
}

void pin_init(void){
    AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_DISABLE;

    led_pin_init();
    chk_pin_init();
    con_pin_init();
}

void led_test(__IO uint32_t tunda){
    palSetPad(GPIOB,led_pv_pin);
    Delay(tunda);

    palClearPad(GPIOB,led_pv_pin);
    Delay(tunda);
}

void blink_test(void){
    led_test(0xAFFF);
    Delay(0xAFFFF);
    led_test(0xAFFF);
    Delay(0xAFFFF);
    led_test(0xAFFF);
    Delay(0xAFFFF);
}

uint8_t pv_check(void){
    uint8_t result;

    if(!palReadPad(GPIOA, wkup_pin)){
        result=0;
    }
    else{
        result=1;
    }

    return result;
}
