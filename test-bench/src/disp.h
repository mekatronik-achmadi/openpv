#ifndef DISP_H
#define DISP_H

#include <inttypes.h>

/*
 * LED
 */
#define R_LED 0
#define D_R_LED DDRB
#define P_R_LED PORTB

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
#define n_delay 1

#define D1_C 0
#define D1_B 1
#define D1_A 2
#define D_D1_C DDRF
#define D_D1_B DDRF
#define D_D1_A DDRF
#define P_D1_C PORTF
#define P_D1_B PORTF
#define P_D1_A PORTF

#define D2_C 3
#define D2_B 4
#define D2_A 5
#define D_D2_C DDRF
#define D_D2_B DDRF
#define D_D2_A DDRF
#define P_D2_C PORTF
#define P_D2_B PORTF
#define P_D2_A PORTF

#define D3_C 7
#define D3_B 6
#define D3_A 5
#define D_D3_C DDRE
#define D_D3_B DDRE
#define D_D3_A DDRE
#define P_D3_C PORTE
#define P_D3_B PORTE
#define P_D3_A PORTE

#define D4_C 4
#define D4_B 5
#define D4_A 6
#define D_D4_C DDRA
#define D_D4_B DDRA
#define D_D4_A DDRA
#define P_D4_C PORTA
#define P_D4_B PORTA
#define P_D4_A PORTA

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
