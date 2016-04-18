#include "inklusi.h"

int main(void) {

    halInit();
    chSysInit();

    pin_init();
    saver_init();

    led_test(0xAFFF);
    Delay(0xAFFFF);

    while (true){

        sleep_init();

        Delay(0xAFFFF);
        led_test(0xAFFFF);
        Delay(0xAFFFF);
    }
    return 0;
}
