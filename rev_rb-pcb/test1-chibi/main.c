#include "inklusi.h"

extern adcsample_t adc_lamp;

void all_init(void){
    halInit();
    chSysInit();

    pin_init();
    comms_init();
    analog_init();
    saver_init();

}

int main(void) {

    all_init();

    blink_test();

    while (true){

    }
    return 0;
}
