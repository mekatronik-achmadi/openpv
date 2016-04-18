#ifndef PIN_H
#define PIN_H

#define __IO volatile

#define chk_pv_pin 0 //A
#define chk_lamp_pin 3 //A

#define con_lamp_pin 12 //B
#define con_pv_pin 14 //B

#define wkup_pin chk_pv_pin

#define led_pv_pin 9 //B

void Delay(__IO uint32_t nCount);

void led_pin_init(void);
void con_pin_init(void);
void chk_pin_init(void);
void pin_init(void);

void led_test(__IO uint32_t tunda);
void blink_test(void);

uint8_t pv_check(void);

#endif // PIN_H
