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

#define f_delay _delay_ms
#define n_delay 5

#define D5_C 7
#define D5_B 2
#define D5_A 7
#define D_D5_C DDRA
#define D_D5_B DDRG
#define D_D5_A DDRC
#define P_D5_C PORTA
#define P_D5_B PORTG
#define P_D5_A PORTC

void Disp_Off(void);
void Disp_Init(void);
void Disp_All(void);

#endif // DISP_H
