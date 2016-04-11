#include "inklusi.h"

int main(void) {

    pin_init();
    nvic_init();
    exti_init();
    rtc_init();

    led_test(ntunda);
    Delay(ntunda);

    standby_init();

//    if(pv_check()==1){
//        led_test(ntunda);
//        Delay(ntunda);
//    }

    while (1){
//        if(pv_check()==1){
//            alarm_init();
//            stop_init();
//            led_test(ntunda);
//        }
//        else{
//            standby_init();
//        }
//        Delay(ntunda);
    };
}
