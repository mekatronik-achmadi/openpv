#include "inklusi.h"

void ADC_init(void){
    ADMUX&=~(1<<ADLAR);
    ADMUX|=(0<<REFS1)|(1<<REFS0);
    ADCSRA|=1<<ADEN;
    ADCSRA|=(0<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
}

unsigned int ADC_read(unsigned char pin){
    ADMUX=pin;

    ADMUX&=~(1<<ADLAR);
    ADMUX|=(0<<REFS1)|(1<<REFS0);
    ADCSRA|=1<<ADEN;

    _delay_us(10);

    ADCSRA|=1<<ADSC;
    while (!(ADCSRA & 1<<ADIF));
    ADCSRA|=1<<ADIF;

    return ADCW;
}

unsigned int PV_check(void){
    unsigned int vadc,vret;
    vadc=ADC_read(ADC_PV);

    if(vadc>=MIN_PV){vret=1;}
    else{vret=0;}

    return vret;
}

unsigned int LED_check(void){
    unsigned int vadc,vret;
    vadc=ADC_read(ADC_LED);

    if(vadc>=MIN_LED){vret=1;}
    else{vret=0;}

    return vret;
}

unsigned int USB_check(void){
    unsigned int vadc,vret;
    vadc=ADC_read(ADC_USB);

    if(vadc>=MIN_USB){vret=1;}
    else{vret=0;}

    return vret;
}

unsigned int BATT_check(void){
    unsigned int vadc,vret;
    vadc=ADC_read(ADC_BATT);

    if(vadc<=BATT_1){vret=1;}
    else if((vadc>BATT_1) && (vadc<=BATT_2)){vret=2;}
    else if((vadc>BATT_2) && (vadc<=BATT_3)){vret=3;}
    else if((vadc>BATT_3) && (vadc<=BATT_4)){vret=4;}
    else if((vadc>BATT_4) && (vadc<=BATT_5)){vret=5;}
    else if(vadc>BATT_5){vret=6;}

    return vret;
}
