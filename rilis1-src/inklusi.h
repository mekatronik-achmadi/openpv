#ifndef INKLUSI_H
#define INKLUSI_H

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>

#include "comp_uart.h"
#include "comp_adc.h"
#include "comp_led.h"
#include "comp_control.h"

#define IRQ_Start sei()

#endif // INKLUSI_H

