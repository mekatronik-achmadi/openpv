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

void led_BATT_level(unsigned int batt_cat){

    PORTB&=~(1<<L1);
    PORTB&=~(1<<L2);
    PORTD&=~(1<<L3);
    PORTD&=~(1<<L4);

    switch(batt_cat){
        case 1: PORTB|=(1<<L1); break;
        case 2: PORTB|=(1<<L1); break;
        case 3: PORTB|=(1<<L2); break;
        case 4: PORTB|=(1<<L3); break;
        case 5: PORTB|=(1<<L4); break;
        case 6: PORTB|=(1<<L4); break;
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
