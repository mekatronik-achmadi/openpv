#include "avr_inc.h"

void LED_Init(void){
    D_L_RUN |= (1<<L_RUN);
    P_L_RUN |= (1<<L_RUN);
}

void Run_Blink(void){
    P_L_RUN ^= (1<<L_RUN);
}
