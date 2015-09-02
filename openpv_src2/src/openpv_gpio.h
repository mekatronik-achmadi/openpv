#ifndef OPENPV_GPIO_H
#define OPENPV_GPIO_H

#define LED_OUT 11 //B
#define LED_IN 12 //B
#define LED_1 8 //A
#define LED_2 15 //B
#define LED_3 14 //B
#define LED_4 13 //B

#define CON_PV 4 //A
#define CON_LAMP 5 //A
#define CON_USB 6 //A

void GPIO_Init(void);

#endif // OPENPV_GPIO_H
