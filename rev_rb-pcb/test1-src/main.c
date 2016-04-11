#include "inklusi.h"

int main(void) {

    pin_init();
    nvic_init();
    exti_init();
    rtc_init();

    led_test(0xAFFFF);

    while (1){
        stop_init();
        Delay(0xAFFFF);
    };
}
