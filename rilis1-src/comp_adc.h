#ifndef COMP_ADC_H
#define COMP_ADC_H

#define ADC_USB  2
#define ADC_LED  3
#define ADC_PV   4
#define ADC_BATT 5

#define MIN_USB 20
#define MIN_LED 20
#define MIN_PV  100

/*
 * AVCC = 4.9v
 * R1 = 10k
 * R2 = 33k
 * ADCmax = 1023
 *
 * ADCin = (ADCmax/AVCC)*Vin
 * Vin = (R1/(R1+R2))*Vbatt
 *
 * ADCin = ((ADCmax/AVCC)*(R1/(R1+R2)))*Vbatt
 * ADCin = ((ADCmax*R1)/(AVCC*(R1+R2)))*Vbatt
 *
 * see adc_batt.ods for calculation form
 *
 */

#define BATT_5 720
#define BATT_4 700
#define BATT_3 679
#define BATT_2 658
#define BATT_1 638

void ADC_init(void);
unsigned int ADC_read(unsigned char f_pin);

unsigned int PV_check(void);
unsigned int LED_check(void);
unsigned int USB_check(void);
unsigned int BATT_check(void);

#endif // COMP_ADC_H

