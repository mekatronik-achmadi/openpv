#include "inklusi.h"

int main(void) {

    pin_init();
    uart_init();

    led_test(ntunda);
    Delay(ntunda);

    while (1){
//        printf("coba \n");
        led_test(0xAFFF);
        Delay(0xAFFFF);
    };
}
