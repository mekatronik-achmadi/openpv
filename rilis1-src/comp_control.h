#ifndef COMP_CONTROL_H
#define COMP_CONTROL_H

#define CON_USB 7 //D
#define CON_LED 0 //B
#define CON_PV  1 //B

void control_init(void);

void PV_on(void);
void PV_off(void);
void PV_toggle(void);
void PV_con(unsigned int f_batt_cat, unsigned int f_PV_stt);

void LED_on(void);
void LED_off(void);
void LED_toggle(void);
void LED_con(unsigned int f_batt_cat, unsigned int f_LED_stt);
void LED_keep(unsigned int f_batt_cat, unsigned int f_LED_stt);

void USB_on(void);
void USB_off(void);
void USB_toggle(void);
void USB_con(unsigned int f_batt_cat, unsigned int f_USB_stt);
void USB_keep(unsigned int f_batt_cat, unsigned int f_USB_stt);

#endif // COMP_CONTROL_H

