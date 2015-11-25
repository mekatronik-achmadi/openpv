#ifndef COMP_ADC_H
#define COMP_ADC_H

#define ADC_USB  2
#define ADC_LED 3
#define ADC_PV   4
#define ADC_BATT 5

#define MIN_USB 20
#define MIN_LED 20
#define MIN_PV  100

#define BATT_1 800
#define BATT_2 840
#define BATT_3 880
#define BATT_4 920
#define BATT_5 960

void ADC_init(void);
unsigned int ADC_read(unsigned char pin);

unsigned int PV_check(void);
unsigned int LED_check(void);
unsigned int USB_check(void);
unsigned int BATT_check(void);

#endif // COMP_ADC_H

