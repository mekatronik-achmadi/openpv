#ifndef ADC_H
#define ADC_H

#include "stm32f10x_conf.h"

#define ChannelSize 1

#define adc_lamp_pin ADC_Channel_3

void adc_init(void);
void adc_calibrate(void);
uint16_t adc_read(uint8_t channel);

#endif // ADC_H
