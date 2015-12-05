#include "inklusi.h"

unsigned int BATT_lvl,PV_stt,LED_stt,USB_stt;
unsigned int adc_PV,adc_LED,adc_USB,adc_BATT;

int main(void){

    led_init();
    control_init();
    ADC_init();

    UART_init();
    UART_stdout();
    printf("\n---system reset---\n");

    BATT_lvl=BATT_check();

    PV_stt=PV_check();

    LED_on();
    USB_on();
    _delay_ms(100);
    LED_stt=LED_check();
    USB_stt=USB_check();

    printf("| PV= %i | LED= %i | USB= %i | BATT= %i |#| vPV= %4i | vLED= %4i | vUSB= %4i | vBATT= %4i |\n",PV_stt,LED_stt,USB_stt,BATT_lvl,adc_PV,adc_LED,adc_USB,adc_BATT);
    led_indicator(BATT_lvl,PV_stt,LED_stt,USB_stt);
    printf("\n---system run---\n");

    while(1){

        _delay_ms(255);

        BATT_lvl=BATT_check();

        PV_stt=PV_check();
        PV_con(BATT_lvl,PV_stt);

        LED_stt=LED_check();
        LED_keep(BATT_lvl,LED_stt);

        USB_stt=USB_check();
        USB_keep(BATT_lvl,USB_stt);

        adc_PV=ADC_read(ADC_PV);
        adc_LED=ADC_read(ADC_LED);
        adc_USB=ADC_read(ADC_USB);
        adc_BATT=ADC_read(ADC_BATT);
        printf("| PV= %i | LED= %i | USB= %i | BATT= %i |#| vPV= %4i | vLED= %4i | vUSB= %4i | vBATT= %4i |\n",PV_stt,LED_stt,USB_stt,BATT_lvl,adc_PV,adc_LED,adc_USB,adc_BATT);

    };

    return 0;
}