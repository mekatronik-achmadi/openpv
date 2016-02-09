#include "avr_inc.h"

extern volatile uint8_t vD5_A,vD5_B,vD5_C;

volatile uint8_t refresh;

void Disp_Init(void){

    //DATA 7 SEGMENT
    D_ID |= (1<< IA);
    D_ID |= (1<< IB);
    D_ID |= (1<< IC);
    D_ID |= (1<< ID);

    //CONTROL 7 SEGMENT
    D_D5_A |= (1<< D5_A);
    D_D5_B |= (1<< D5_B);
    D_D5_C |= (1<< D5_C);

    Disp_Off();
}

static void PIN_0(uint8_t pin){
    P_ID &= ~(1 << pin);
}

static void PIN_1(uint8_t pin){
    P_ID |= (1 << pin);
}

static void Disp_Set(uint16_t num){

    switch(num){
        case 0: PIN_0(ID);PIN_0(IC);PIN_0(IB);PIN_0(IA);break; //0000
        case 1: PIN_0(ID);PIN_0(IC);PIN_0(IB);PIN_1(IA);break; //0001
        case 2: PIN_0(ID);PIN_0(IC);PIN_1(IB);PIN_0(IA);break; //0010
        case 3: PIN_0(ID);PIN_0(IC);PIN_1(IB);PIN_1(IA);break; //0011
        case 4: PIN_0(ID);PIN_1(IC);PIN_0(IB);PIN_0(IA);break; //0100
        case 5: PIN_0(ID);PIN_1(IC);PIN_0(IB);PIN_1(IA);break; //0101
        case 6: PIN_0(ID);PIN_1(IC);PIN_1(IB);PIN_0(IA);break; //0110
        case 7: PIN_0(ID);PIN_1(IC);PIN_1(IB);PIN_1(IA);break; //0111
        case 8: PIN_1(ID);PIN_0(IC);PIN_0(IB);PIN_0(IA);break; //1000
        case 9: PIN_1(ID);PIN_0(IC);PIN_0(IB);PIN_1(IA);break; //1001
    }

}

static void Disp_View(volatile uint8_t *port, uint8_t pin, uint16_t val){
    Disp_Set(val);
    if(refresh==0){*port &= ~(1 << pin);}
    f_delay(n_delay);
    Disp_Off();
}

void Disp_Off(void){
    P_D5_A |= (1 << D5_A );
    P_D5_B |= (1 << D5_B );
    P_D5_C |= (1 << D5_C );
}

void Disp_All(void){
    
    Disp_View(&P_D5_A,D5_A,vD5_A);
    Disp_View(&P_D5_B,D5_B,vD5_B);
    Disp_View(&P_D5_C,D5_C,vD5_C);
    
}