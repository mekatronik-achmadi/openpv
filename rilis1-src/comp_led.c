#include "inklusi.h"

void led_init(void){
    DDRB|=(1<<L1)|(1<<L2);
    DDRD|=(1<<L3)|(1<<L4)|(1<<LIN)|(1<<LOUT);

    PORTB&=~(1<<L1);
    PORTB&=~(1<<L2);
    PORTD&=~(1<<L3);
    PORTD&=~(1<<L4);
    PORTD&=~(1<<LIN);
    PORTD&=~(1<<LOUT);
}

void led_PV_on(void){
    PORTD |= (1<<LIN);
}

void led_PV_off(void){
    PORTD &= ~(1<<LIN);
}

void led_PV_toggle(void){
    PORTD ^= (1<<LIN);
}

void led_OUT_on(void){
    PORTD |= (1<<LOUT);
}

void led_OUT_off(void){
    PORTD &= ~(1<<LOUT);
}

void led_OUT_toggle(void){
    PORTD ^= (1<<LOUT);
}

void led_BATT_level(unsigned int f_batt_cat){

    PORTB&=~(1<<L1);
    PORTB&=~(1<<L2);
    PORTD&=~(1<<L3);
    PORTD&=~(1<<L4);

    switch(f_batt_cat){
        case 1: PORTB|=(1<<L1); break;
        case 2: PORTB|=(1<<L1); break;
        case 3: PORTB|=(1<<L2); break;
        case 4: PORTD|=(1<<L3); break;
        case 5: PORTD|=(1<<L4); break;
        case 6: PORTD|=(1<<L4); break;
    }
}

void led_BATT_off(void){

    PORTB&=~(1<<L1);
    PORTB&=~(1<<L2);
    PORTD&=~(1<<L3);
    PORTD&=~(1<<L4);
}

void led_BATT_toggle(void){
    PORTB^=(1<<L1);
    PORTB^=(1<<L2);
    PORTD^=(1<<L3);
    PORTD^=(1<<L4);
}

void led_indicator(unsigned int f_batt_cat, unsigned int f_PV_stt, unsigned int f_LED_stt, unsigned int f_USB_stt){
    led_PV_off();
    led_OUT_off();
    led_BATT_off();

    led_BATT_level(f_batt_cat);

    if(f_PV_stt==1){led_PV_on();}

    if((f_LED_stt==1) || (f_USB_stt==1)){led_OUT_on();}

    _delay_ms(255);

    led_PV_off();
    led_OUT_off();
    led_BATT_off();
}
