#ifndef COMP_LED_H
#define COMP_LED_H

#define L1   6 //B
#define L2   7 //B
#define L3   5 //D
#define L4   6 //D
#define LIN  3 //D
#define LOUT 4 //D

void led_init(void);
void led_indicator(unsigned int f_batt_cat, unsigned int f_PV_stt, unsigned int f_LED_stt, unsigned int f_USB_stt);

void led_PV_on(void);
void led_PV_off(void);
void led_PV_toggle(void);

void led_OUT_on(void);
void led_OUT_off(void);
void led_OUT_toggle(void);

void led_BATT_level(unsigned int f_batt_cat);
void led_BATT_on(void);
void led_BATT_off(void);
void led_BATT_toggle(void);

#endif // COMP_LED_H


