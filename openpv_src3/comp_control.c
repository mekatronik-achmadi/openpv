#include "inklusi.h"

void control_init(void){
    DDRB |= (1 << CON_PV);
    DDRB |= (1 << CON_LED);
    DDRD |= (1 << CON_USB);

    PV_off();
    LED_off();
    USB_off();
}

void PV_on(void){
    PORTB &= ~(1 << CON_PV);

    led_PV_on();
    _delay_ms(255);
    led_PV_off();
}

void PV_off(void){
    PORTB |= (1 << CON_PV);

    led_PV_off();
}

void PV_toggle(void){
    PORTB ^= (1 << CON_PV);

    led_PV_toggle();
}

void LED_on(void){
    PORTB &= ~(1 << CON_LED);

    led_OUT_on();
    _delay_ms(255);
    led_OUT_off();
}

void LED_off(void){
    PORTB |= (1 << CON_LED);

    led_OUT_off();
}

void LED_toggle(void){
    PORTB ^= (1 << CON_LED);

    led_OUT_toggle();
}

void USB_on(void){
    PORTD &= ~(1 << CON_USB);

    led_OUT_on();
    _delay_ms(255);
    led_OUT_off();
}

void USB_off(void){
    PORTD |= (1 << CON_USB);

    led_OUT_off();
}

void USB_toggle(void){
    PORTD ^= (1 << CON_USB);

    led_OUT_toggle();
}

void PV_con(unsigned int batt_cat, unsigned int PV_stt){
    if(batt_cat==6){PV_off();}

    if(batt_cat!=6){
        if(PV_stt==1){
            PV_on();
        }
        else if(PV_stt==0){
            PV_off();
        }
    }
}

void LED_con(unsigned int batt_cat, unsigned int LED_stt){
    if(batt_cat==1){
        LED_off();
        USB_off();
    }

    if(batt_cat!=1){
        if(LED_stt==1){
            LED_on();
        }
        else if(LED_stt==0){
            LED_off();
        }
    }
}

void USB_con(unsigned int batt_cat, unsigned int USB_stt){
    if(batt_cat==1){
        LED_off();
        USB_off();
    }

    if(batt_cat!=1){
        if(USB_stt==1){
            USB_on();
        }
        else if(USB_stt==0){
            USB_off();
        }
    }
}
