#ifndef PIN_H
#define PIN_H

#include "stm32f10x_conf.h"

#define chk_pv_pin GPIO_Pin_0
#define chk_dim_pin GPIO_Pin_2
#define chk_lamp_pin GPIO_Pin_3

#define con_lamp_pin GPIO_Pin_12
#define con_pv_pin GPIO_Pin_14

#define wkup_pin chk_pv_pin

#define led_pv_pin GPIO_Pin_9

void led_pin_init(void);
void con_pin_init(void);
void chk_pin_init(void);
void pin_init(void);

void led_test(__IO uint32_t tunda);

uint8_t pv_check(void);

#endif // PIN_H
