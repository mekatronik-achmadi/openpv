#ifndef INTERUP_H
#define INTERUP_H

#include "stm32f10x_conf.h"

#define ntunda 0xAFFF
#define ntunda_wkup 0xAFF

void Delay(__IO uint32_t nCount);
void nvic_init(void);
void exti_init(void);

#endif // INTERUP_H
