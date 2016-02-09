#ifndef LED_H
#define LED_H

/*
 * RUN LED
 */

#define L_RUN 0
#define D_L_RUN DDRB
#define P_L_RUN PORTB

void LED_Init(void);
void Run_Blink(void);

#endif // LED_H
