#include "inklusi.h"

#define RUN 0
#define TEST 1

unsigned int BATT_lvl,PV_stt,LED_stt,USB_stt;

int main(void){

    led_init();
    control_init();
    ADC_init();

#if TEST
    UART_init();
    UART_stdout();
    LED_on();
#endif

#if RUN
    BATT_lvl=BATT_check();
    led_BATT_level(BATT_lvl);
    _delay_ms(255);

    PV_stt=PV_check();

    LED_on();
    LED_stt=LED_check();

    USB_on();
    USB_stt=USB_check();

    PV_con(BATT_lvl,PV_stt);
    LED_con(BATT_lvl,LED_stt);
    USB_con(BATT_lvl,USB_stt);

    _delay_ms(255);
    led_BATT_off();
#endif

    while(1){
#if TEST
        BATT_lvl=BATT_check();
        PV_stt=PV_check();
        LED_stt=LED_check();
        USB_stt=USB_check();

        led_OUT_toggle();
        printf("PV = %i LED = %i USB = %i BATT = %i \n",PV_stt,LED_stt,USB_stt,BATT_lvl);
        _delay_ms(255);
#endif

#if RUN
        BATT_lvl=BATT_check();

        PV_stt=PV_check();
        PV_con(BATT_lvl,PV_stt);

        LED_stt=LED_check();
        LED_con(BATT_lvl,LED_stt);

        USB_stt=USB_check();
        USB_con(BATT_lvl,USB_stt);

        _delay_ms(255);
#endif
    };

    return 0;
}
