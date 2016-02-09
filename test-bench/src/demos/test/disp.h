#ifndef DISP_H
#define DISP_H

#include <inttypes.h>

/*
 * Data to 4511
 */

#define IA 0
#define IB 1
#define IC 2
#define ID 3
#define D_ID DDRA
#define P_ID PORTA

/*
 * Control to 7-Segment
 */

#define f_delay chThdSleepMilliseconds
#define n_delay 1

#define D5_A 7
#define D5_B 2
#define D5_C 7
#define D_D5_A DDRA
#define D_D5_B DDRG
#define D_D5_C DDRC
#define P_D5_A PORTA
#define P_D5_B PORTG
#define P_D5_C PORTC

void Disp_Init(void);
void Disp_Set(uint8_t num);
void Disp_Off_All(void);
void Disp_On_All(void);
void Disp_Test(void);
void Disp_View(volatile uint8_t *port, uint8_t pin, uint8_t val);

#endif // DISP_H
