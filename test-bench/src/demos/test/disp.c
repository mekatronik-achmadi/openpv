#include "avr_inc.h"

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

    Disp_Off_All();
}

static void PIN_0(uint8_t pin){
    P_ID &= ~(1 << pin);
}

static void PIN_1(uint8_t pin){
    P_ID |= (1 << pin);
}

void Disp_Set(uint8_t num){

//    P_ID=(num&0b00001111);

//             if(num==0){PIN_0(ID);PIN_0(IC);PIN_0(IB);PIN_0(IA);} //0000
//        else if(num==1){PIN_0(ID);PIN_0(IC);PIN_0(IB);PIN_1(IA);} //0001
//        else if(num==2){PIN_0(ID);PIN_0(IC);PIN_1(IB);PIN_0(IA);} //0010
//        else if(num==3){PIN_0(ID);PIN_0(IC);PIN_1(IB);PIN_1(IA);} //0011
//        else if(num==4){PIN_0(ID);PIN_1(IC);PIN_0(IB);PIN_0(IA);} //0100
//        else if(num==5){PIN_0(ID);PIN_1(IC);PIN_0(IB);PIN_1(IA);} //0101
//        else if(num==6){PIN_0(ID);PIN_1(IC);PIN_1(IB);PIN_0(IA);} //0110
//        else if(num==7){PIN_0(ID);PIN_1(IC);PIN_1(IB);PIN_1(IA);} //0111
//        else if(num==8){PIN_1(ID);PIN_0(IC);PIN_0(IB);PIN_0(IA);} //1000
//        else if(num==9){PIN_1(ID);PIN_0(IC);PIN_0(IB);PIN_1(IA);} //1001


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

void Disp_Off_All(void){
    P_D5_A |= (1 << D5_A );
    P_D5_B |= (1 << D5_B );
    P_D5_C |= (1 << D5_C );
}

void Disp_On_All(void){
    P_D5_A &= ~(1 << D5_A);
    P_D5_B &= ~(1 << D5_B);
    P_D5_C &= ~(1 << D5_C);
}

void Disp_Test(void){
    Disp_Set(0);
    f_delay(255);
    Disp_Set(1);
    f_delay(255);
    Disp_Set(2);
    f_delay(255);
    Disp_Set(3);
    f_delay(255);
    Disp_Set(4);
    f_delay(255);
    Disp_Set(5);
    f_delay(255);
    Disp_Set(6);
    f_delay(255);
    Disp_Set(7);
    f_delay(255);
    Disp_Set(8);
    f_delay(255);
    Disp_Set(9);
    f_delay(255);
}

void Disp_View(volatile uint8_t *port, uint8_t pin, uint8_t val){
    Disp_Off_All();
    Disp_Set(val);
    *port &= ~(1 << pin);
    f_delay(n_delay);
}
