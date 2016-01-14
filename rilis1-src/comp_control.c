#include "inklusi.h"

void control_init(void){
    DDRB |= (1 << CON_PV);
    DDRB |= (1 << CON_LED);
    DDRD |= (1 << CON_USB);

    PV_off();
    LED_off();
    USB_off();

    DDRB |= (1 << CON_1);
    DDRB |= (1 << CON_2);
    DDRB |= (1 << CON_3);

    PORTB |= (1<< CON_1);
    PORTB |= (1<< CON_2);
    PORTB |= (1<< CON_3);
}

void PV_on(void){
    PORTB &= ~(1 << CON_PV);
}

void PV_off(void){
    PORTB |= (1 << CON_PV);
}

void PV_toggle(void){
    PORTB ^= (1 << CON_PV);
}

void LED_on(void){
    PORTB &= ~(1 << CON_LED);
}

void LED_off(void){
    PORTB |= (1 << CON_LED);
}

void LED_toggle(void){
    PORTB ^= (1 << CON_LED);
}

void USB_on(void){
    PORTD &= ~(1 << CON_USB);
}

void USB_off(void){
    PORTD |= (1 << CON_USB);
}

void USB_toggle(void){
    PORTD ^= (1 << CON_USB);
}

void PV_con(unsigned int f_batt_cat, unsigned int f_PV_stt){
    if(f_batt_cat==6){PV_off();}

    if(f_batt_cat!=6){
        if(f_PV_stt==1){
            PV_on();
        }
        else if(f_PV_stt==0){
            PV_off();
        }
    }
}

void LED_con(unsigned int f_batt_cat, unsigned int f_LED_stt){
    if(f_batt_cat==1){
        LED_off();
    }

    if(f_batt_cat!=1){
        if(f_LED_stt==1){
            LED_on();
        }
        else if(f_LED_stt==0){
            LED_off();
        }
    }
}

void LED_keep(unsigned int f_batt_cat, unsigned int f_LED_stt){
    if(f_batt_cat==1){
        LED_off();
    }

    if(f_batt_cat!=1){
        if(f_LED_stt==0){
            LED_off();
        }
    }
}

void USB_con(unsigned int f_batt_cat, unsigned int f_USB_stt){
    if(f_batt_cat==1){
        USB_off();
    }

    if(f_batt_cat!=1){
        if(f_USB_stt==1){
            USB_on();
        }
        else if(f_USB_stt==0){
            USB_off();
        }
    }
}

void USB_keep(unsigned int f_batt_cat, unsigned int f_USB_stt){
    if(f_batt_cat==1){
        USB_off();
    }

    if(f_batt_cat!=1){
        if(f_USB_stt==0){
            USB_off();
        }
    }
}

void Chip_Sleep(unsigned int f_LED_stt, unsigned int f_USB_stt, unsigned int f_waitsleep, unsigned int f_n_waitsleep){
    if((f_LED_stt==0) && (f_USB_stt==0)){
        f_waitsleep++;
    }
    else{
        f_waitsleep=0;
    }

    if(f_waitsleep==f_n_waitsleep){
         set_sleep_mode(SLEEP_MODE_PWR_DOWN);
         sleep_mode();
    }
}
