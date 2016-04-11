#ifndef PIN_H
#define PIN_H

#include "stm32f10x_conf.h"

#define wkup_pin GPIO_Pin_0

#define led_pv_pin GPIO_Pin_9

#define con_lamp_pin GPIO_Pin_12
#define con_pv_pin GPIO_Pin_14

void led_pin_init(void);
void con_pin_init(void);
void wkup_pin_init(void);
void pin_init(void);

void led_test(__IO uint32_t tunda);

uint8_t pv_check(void);

#endif // PIN_H
