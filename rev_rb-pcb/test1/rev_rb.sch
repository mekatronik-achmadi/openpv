EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:SparkFun
LIBS:linear
LIBS:audio-jack
LIBS:switch-omron
LIBS:testpad
LIBS:v-reg-micrel
LIBS:v-reg
LIBS:rev_rb-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VDD #PWR01
U 1 1 56BADA92
P 2550 800
F 0 "#PWR01" H 2550 650 50  0001 C CNN
F 1 "VDD" H 2550 950 50  0000 C CNN
F 2 "" H 2550 800 50  0000 C CNN
F 3 "" H 2550 800 50  0000 C CNN
	1    2550 800 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 56BADC82
P 1550 1800
F 0 "#PWR02" H 1550 1650 50  0001 C CNN
F 1 "VDD" H 1550 1950 50  0000 C CNN
F 2 "" H 1550 1800 50  0000 C CNN
F 3 "" H 1550 1800 50  0000 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Text Label 1500 1100 0    60   ~ 0
NRST
$Comp
L CONN_01X03 P-BOOT1
U 1 1 56BADEE5
P 1000 1300
F 0 "P-BOOT1" H 1000 1500 50  0000 C CNN
F 1 "CONN_01X03" V 1100 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1000 1300 50  0001 C CNN
F 3 "" H 1000 1300 50  0000 C CNN
	1    1000 1300
	-1   0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 56BADFDD
P 1250 1200
F 0 "#PWR03" H 1250 1050 50  0001 C CNN
F 1 "VDD" H 1250 1350 50  0000 C CNN
F 2 "" H 1250 1200 50  0000 C CNN
F 3 "" H 1250 1200 50  0000 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 56BAE095
P 1100 1800
F 0 "Y1" H 1100 1950 50  0000 C CNN
F 1 "8Mhz" H 1100 1650 50  0000 C CNN
F 2 "Crystals:HC-49V" H 1100 1800 50  0001 C CNN
F 3 "" H 1100 1800 50  0000 C CNN
	1    1100 1800
	-1   0    0    1   
$EndComp
$Comp
L C C-XTAL1
U 1 1 56BAE36A
P 950 2000
F 0 "C-XTAL1" H 975 2100 50  0000 L CNN
F 1 "22pF" H 975 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 988 1850 50  0001 C CNN
F 3 "" H 950 2000 50  0000 C CNN
	1    950  2000
	1    0    0    -1  
$EndComp
$Comp
L C C-XTAL2
U 1 1 56BAE3C3
P 1250 2000
F 0 "C-XTAL2" H 1275 2100 50  0000 L CNN
F 1 "22pF" H 1275 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1288 1850 50  0001 C CNN
F 3 "" H 1250 2000 50  0000 C CNN
	1    1250 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56BAE6DE
P 1100 2200
F 0 "#PWR04" H 1100 1950 50  0001 C CNN
F 1 "GND" H 1100 2050 50  0000 C CNN
F 2 "" H 1100 2200 50  0000 C CNN
F 3 "" H 1100 2200 50  0000 C CNN
	1    1100 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56BADFF5
P 1250 1400
F 0 "#PWR05" H 1250 1150 50  0001 C CNN
F 1 "GND" H 1250 1250 50  0000 C CNN
F 2 "" H 1250 1400 50  0000 C CNN
F 3 "" H 1250 1400 50  0000 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56BAF541
P 2600 4800
F 0 "#PWR06" H 2600 4550 50  0001 C CNN
F 1 "GND" H 2600 4650 50  0000 C CNN
F 2 "" H 2600 4800 50  0000 C CNN
F 3 "" H 2600 4800 50  0000 C CNN
	1    2600 4800
	1    0    0    -1  
$EndComp
$Comp
L M02PTH4 BATT1
U 1 1 56BAFC76
P 950 5450
F 0 "BATT1" H 850 5680 50  0000 L BNN
F 1 "M02PTH4" H 850 5250 50  0000 L BNN
F 2 "SparkFun:SparkFun-1X02_XTRA_BIG" H 950 5600 50  0001 C CNN
F 3 "" H 950 5450 60  0000 C CNN
	1    950  5450
	1    0    0    -1  
$EndComp
$Comp
L M02PTH4 BATT2
U 1 1 56BAFD4A
P 950 5900
F 0 "BATT2" H 850 6130 50  0000 L BNN
F 1 "M02PTH4" H 850 5700 50  0000 L BNN
F 2 "SparkFun:SparkFun-1X02_XTRA_BIG" H 950 6050 50  0001 C CNN
F 3 "" H 950 5900 60  0000 C CNN
	1    950  5900
	1    0    0    -1  
$EndComp
$Comp
L M02PTH4 BATT3
U 1 1 56BAFE9D
P 950 6350
F 0 "BATT3" H 850 6580 50  0000 L BNN
F 1 "M02PTH4" H 850 6150 50  0000 L BNN
F 2 "SparkFun:SparkFun-1X02_XTRA_BIG" H 950 6500 50  0001 C CNN
F 3 "" H 950 6350 60  0000 C CNN
	1    950  6350
	1    0    0    -1  
$EndComp
$Comp
L M02PTH4 BATT4
U 1 1 56BAFF7F
P 950 6850
F 0 "BATT4" H 850 7080 50  0000 L BNN
F 1 "M02PTH4" H 850 6650 50  0000 L BNN
F 2 "SparkFun:SparkFun-1X02_XTRA_BIG" H 950 7000 50  0001 C CNN
F 3 "" H 950 6850 60  0000 C CNN
	1    950  6850
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR07
U 1 1 56BB0878
P 1300 5250
F 0 "#PWR07" H 1300 5100 50  0001 C CNN
F 1 "+BATT" H 1300 5390 50  0000 C CNN
F 2 "" H 1300 5250 50  0000 C CNN
F 3 "" H 1300 5250 50  0000 C CNN
	1    1300 5250
	1    0    0    -1  
$EndComp
$Comp
L R RA1
U 1 1 56BB0D48
P 1950 5150
F 0 "RA1" V 2030 5150 50  0000 C CNN
F 1 "33k" V 1950 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1880 5150 50  0001 C CNN
F 3 "" H 1950 5150 50  0000 C CNN
	1    1950 5150
	0    1    1    0   
$EndComp
$Comp
L R RA2
U 1 1 56BB0E3C
P 2150 5300
F 0 "RA2" V 2230 5300 50  0000 C CNN
F 1 "10k" V 2150 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2080 5300 50  0001 C CNN
F 3 "" H 2150 5300 50  0000 C CNN
	1    2150 5300
	-1   0    0    1   
$EndComp
$Comp
L C CA1
U 1 1 56BB0EBC
P 2350 5300
F 0 "CA1" H 2375 5400 50  0000 L CNN
F 1 "C" H 2375 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2388 5150 50  0001 C CNN
F 3 "" H 2350 5300 50  0000 C CNN
	1    2350 5300
	1    0    0    -1  
$EndComp
Text Label 2700 5150 0    60   ~ 0
ADC-BATT1
$Comp
L CONN_01X04 P-COMM1
U 1 1 56BBADB3
P 6000 2050
F 0 "P-COMM1" H 6000 2300 50  0000 C CNN
F 1 "CONN_01X04" V 6100 2050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 6000 2050 50  0001 C CNN
F 3 "" H 6000 2050 50  0000 C CNN
	1    6000 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 56BBB52F
P 5750 2250
F 0 "#PWR08" H 5750 2000 50  0001 C CNN
F 1 "GND" H 5750 2100 50  0000 C CNN
F 2 "" H 5750 2250 50  0000 C CNN
F 3 "" H 5750 2250 50  0000 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR09
U 1 1 56BBB5E8
P 5750 1900
F 0 "#PWR09" H 5750 1750 50  0001 C CNN
F 1 "VDD" H 5750 2050 50  0000 C CNN
F 2 "" H 5750 1900 50  0000 C CNN
F 3 "" H 5750 1900 50  0000 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 56BBE52B
P 5750 3100
F 0 "#PWR010" H 5750 2850 50  0001 C CNN
F 1 "GND" H 5750 2950 50  0000 C CNN
F 2 "" H 5750 3100 50  0000 C CNN
F 3 "" H 5750 3100 50  0000 C CNN
	1    5750 3100
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 56BC1BA0
P 8000 1100
F 0 "CON1" H 8000 1350 50  0000 C CNN
F 1 "BARREL_JACK" H 8000 900 50  0000 C CNN
F 2 "Connect:JACK_ALIM" H 8000 1100 50  0001 C CNN
F 3 "" H 8000 1100 50  0000 C CNN
	1    8000 1100
	0    -1   1    0   
$EndComp
Text Label 4900 1600 0    60   ~ 0
ADC-USB
$Comp
L +BATT #PWR011
U 1 1 56BC3A83
P 8050 2350
F 0 "#PWR011" H 8050 2200 50  0001 C CNN
F 1 "+BATT" H 8050 2490 50  0000 C CNN
F 2 "" H 8050 2350 50  0000 C CNN
F 3 "" H 8050 2350 50  0000 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
$Comp
L MOSFET-PCHANNELSMD Q1
U 1 1 56BC4173
P 7900 2150
F 0 "Q1" H 7950 2300 50  0000 L BNN
F 1 "MOSFET-PCHANNELSMD" H 7950 1950 50  0000 L BNN
F 2 "Power_Integrations:TO-220" H 8450 2150 50  0001 C CNN
F 3 "" H 7900 2150 60  0000 C CNN
	1    7900 2150
	1    0    0    1   
$EndComp
Text Label 4850 4100 0    60   ~ 0
CON-LAMP
$Comp
L MOSFET-NCHANNELSMD Q2
U 1 1 56BCD027
P 9750 1600
F 0 "Q2" H 9800 1750 50  0000 L BNN
F 1 "MOSFET-NCHANNELSMD" H 9800 1400 50  0000 L BNN
F 2 "Power_Integrations:TO-220" H 10300 1600 50  0001 C CNN
F 3 "" H 9750 1600 60  0000 C CNN
	1    9750 1600
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 56BCD5EE
P 9750 1150
F 0 "D1" H 9750 1250 50  0000 C CNN
F 1 "D" H 9750 1050 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 9750 1150 50  0001 C CNN
F 3 "" H 9750 1150 50  0000 C CNN
	1    9750 1150
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR012
U 1 1 56BCD7A9
P 9750 900
F 0 "#PWR012" H 9750 750 50  0001 C CNN
F 1 "+BATT" H 9750 1040 50  0000 C CNN
F 2 "" H 9750 900 50  0000 C CNN
F 3 "" H 9750 900 50  0000 C CNN
	1    9750 900 
	1    0    0    -1  
$EndComp
Text Label 4850 4200 0    60   ~ 0
CON-USB
Text Label 4900 1700 0    60   ~ 0
ADC-BATT1
$Comp
L GND #PWR013
U 1 1 56C447C4
P 900 7050
F 0 "#PWR013" H 900 6800 50  0001 C CNN
F 1 "GND" H 900 6900 50  0000 C CNN
F 2 "" H 900 7050 50  0000 C CNN
F 3 "" H 900 7050 50  0000 C CNN
	1    900  7050
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR014
U 1 1 56C4A55C
P 8100 1500
F 0 "#PWR014" H 8100 1300 50  0001 C CNN
F 1 "GNDPWR" H 8100 1370 50  0000 C CNN
F 2 "" H 8100 1450 50  0000 C CNN
F 3 "" H 8100 1450 50  0000 C CNN
	1    8100 1500
	1    0    0    -1  
$EndComp
$Comp
L audio-jack J1
U 1 1 56C40D03
P 10250 2000
F 0 "J1" H 10350 1900 60  0000 C CNN
F 1 "audio-jack" H 10350 1550 60  0000 C CNN
F 2 "audio-jack-lapantech:JACK_LAPAN" H 10250 2000 60  0001 C CNN
F 3 "" H 10250 2000 60  0000 C CNN
	1    10250 2000
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D6
U 1 1 56C445C0
P 9950 2250
F 0 "D6" H 9950 2350 50  0000 C CNN
F 1 "D_Schottky" H 9950 2150 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 9950 2250 50  0001 C CNN
F 3 "" H 9950 2250 50  0000 C CNN
	1    9950 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 56C455F2
P 9700 2250
F 0 "#PWR015" H 9700 2000 50  0001 C CNN
F 1 "GND" H 9700 2100 50  0000 C CNN
F 2 "" H 9700 2250 50  0000 C CNN
F 3 "" H 9700 2250 50  0000 C CNN
	1    9700 2250
	1    0    0    -1  
$EndComp
Text Label 4850 4300 0    60   ~ 0
CON-PV
Text Label 10200 2350 0    60   ~ 0
ADC-LAMP
$Comp
L R R3
U 1 1 56C69D3E
P 3600 5500
F 0 "R3" V 3680 5500 50  0000 C CNN
F 1 "4k7" V 3600 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3530 5500 50  0001 C CNN
F 3 "" H 3600 5500 50  0000 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR016
U 1 1 56C6A1E2
P 3600 5250
F 0 "#PWR016" H 3600 5100 50  0001 C CNN
F 1 "VDD" H 3600 5400 50  0000 C CNN
F 2 "" H 3600 5250 50  0000 C CNN
F 3 "" H 3600 5250 50  0000 C CNN
	1    3600 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 56C6B4BA
P 3000 5650
F 0 "#PWR017" H 3000 5400 50  0001 C CNN
F 1 "GND" H 3000 5500 50  0000 C CNN
F 2 "" H 3000 5650 50  0000 C CNN
F 3 "" H 3000 5650 50  0000 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
Text Label 3750 5650 0    60   ~ 0
NRST
$Comp
L M03PTH JP2
U 1 1 56C73BA6
P 2750 7200
F 0 "JP2" H 2650 7430 50  0000 L BNN
F 1 "M03PTH" H 2650 6900 50  0000 L BNN
F 2 "SparkFun:SparkFun-1X03_LONGPADS" H 2750 7350 50  0001 C CNN
F 3 "" H 2750 7200 60  0000 C CNN
	1    2750 7200
	-1   0    0    1   
$EndComp
$Comp
L M02PTH JP1
U 1 1 56C7420F
P 1150 7350
F 0 "JP1" H 1050 7580 50  0000 L BNN
F 1 "M02PTH" H 1050 7150 50  0000 L BNN
F 2 "SparkFun:SparkFun-1X02_XTRA_BIG" H 1150 7500 50  0001 C CNN
F 3 "" H 1150 7350 60  0000 C CNN
	1    1150 7350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 56C7584B
P 2400 7350
F 0 "#PWR018" H 2400 7100 50  0001 C CNN
F 1 "GND" H 2400 7200 50  0000 C CNN
F 2 "" H 2400 7350 50  0000 C CNN
F 3 "" H 2400 7350 50  0000 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 56C75B10
P 2100 7350
F 0 "C4" H 2125 7450 50  0000 L CNN
F 1 "C" H 2125 7250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2138 7200 50  0001 C CNN
F 3 "" H 2100 7350 50  0000 C CNN
	1    2100 7350
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 56C7D6F3
P 5400 5250
F 0 "D7" H 5400 5350 50  0000 C CNN
F 1 "LED" H 5400 5150 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 5250 50  0001 C CNN
F 3 "" H 5400 5250 50  0000 C CNN
	1    5400 5250
	-1   0    0    1   
$EndComp
$Comp
L LED D8
U 1 1 56C7D922
P 5400 5450
F 0 "D8" H 5400 5550 50  0000 C CNN
F 1 "LED" H 5400 5350 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 5450 50  0001 C CNN
F 3 "" H 5400 5450 50  0000 C CNN
	1    5400 5450
	-1   0    0    1   
$EndComp
$Comp
L LED D9
U 1 1 56C7D9B1
P 5400 5650
F 0 "D9" H 5400 5750 50  0000 C CNN
F 1 "LED" H 5400 5550 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 5650 50  0001 C CNN
F 3 "" H 5400 5650 50  0000 C CNN
	1    5400 5650
	-1   0    0    1   
$EndComp
$Comp
L LED D10
U 1 1 56C7DA40
P 5400 5850
F 0 "D10" H 5400 5950 50  0000 C CNN
F 1 "LED" H 5400 5750 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 5850 50  0001 C CNN
F 3 "" H 5400 5850 50  0000 C CNN
	1    5400 5850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR019
U 1 1 56C7F7FF
P 5650 5950
F 0 "#PWR019" H 5650 5700 50  0001 C CNN
F 1 "GND" H 5650 5800 50  0000 C CNN
F 2 "" H 5650 5950 50  0000 C CNN
F 3 "" H 5650 5950 50  0000 C CNN
	1    5650 5950
	1    0    0    -1  
$EndComp
Text Label 4900 3200 0    60   ~ 0
L1
Text Label 4900 3300 0    60   ~ 0
L2
Text Label 4900 3400 0    60   ~ 0
L3
Text Label 4900 3500 0    60   ~ 0
L4
$Comp
L LED D11
U 1 1 56C826BD
P 5400 6250
F 0 "D11" H 5400 6350 50  0000 C CNN
F 1 "LED" H 5400 6150 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 6250 50  0001 C CNN
F 3 "" H 5400 6250 50  0000 C CNN
	1    5400 6250
	-1   0    0    1   
$EndComp
$Comp
L LED D12
U 1 1 56C82F5C
P 5400 6450
F 0 "D12" H 5400 6550 50  0000 C CNN
F 1 "LED" H 5400 6350 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 6450 50  0001 C CNN
F 3 "" H 5400 6450 50  0000 C CNN
	1    5400 6450
	-1   0    0    1   
$EndComp
$Comp
L LED D13
U 1 1 56C83790
P 5400 6650
F 0 "D13" H 5400 6750 50  0000 C CNN
F 1 "LED" H 5400 6550 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5400 6650 50  0001 C CNN
F 3 "" H 5400 6650 50  0000 C CNN
	1    5400 6650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR020
U 1 1 56C83CF7
P 5600 6700
F 0 "#PWR020" H 5600 6450 50  0001 C CNN
F 1 "GND" H 5600 6550 50  0000 C CNN
F 2 "" H 5600 6700 50  0000 C CNN
F 3 "" H 5600 6700 50  0000 C CNN
	1    5600 6700
	1    0    0    -1  
$EndComp
Text Label 5000 5250 0    60   ~ 0
L1
Text Label 5000 5450 0    60   ~ 0
L2
Text Label 5000 5650 0    60   ~ 0
L3
Text Label 5000 5850 0    60   ~ 0
L4
Text Label 5000 6250 0    60   ~ 0
L-PV
Text Label 5000 6450 0    60   ~ 0
L-USB
Text Label 5000 6650 0    60   ~ 0
L-LAMP
Text Label 4900 3600 0    60   ~ 0
L-PV
Text Label 4900 3700 0    60   ~ 0
L-USB
Text Label 4900 3800 0    60   ~ 0
L-LAMP
$Comp
L STM32F103RB U1
U 1 1 56BAD65D
P 3200 2800
F 0 "U1" H 1850 4750 50  0000 C CNN
F 1 "STM32F103RB" H 4350 850 50  0000 C CNN
F 2 "Housings_QFP:TQFP-64_10x10mm_Pitch0.5mm" H 3200 2800 50  0001 C CNN
F 3 "" H 3200 3100 50  0000 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR021
U 1 1 56C48BBA
P 1350 6850
F 0 "#PWR021" H 1350 6650 50  0001 C CNN
F 1 "GNDPWR" H 1350 6720 50  0000 C CNN
F 2 "" H 1350 6800 50  0000 C CNN
F 3 "" H 1350 6800 50  0000 C CNN
	1    1350 6850
	1    0    0    -1  
$EndComp
$Comp
L MIC5219BM5_SOT23-5 U7
U 1 1 56CBBF0A
P 7400 3500
F 0 "U7" H 7400 3500 60  0001 C CNN
F 1 "MIC5219BM5_SOT23-5" H 7400 3500 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7400 3500 60  0001 C CNN
F 3 "" H 7400 3500 60  0000 C CNN
	1    7400 3500
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR022
U 1 1 56CBE9B6
P 1450 6100
F 0 "#PWR022" H 1450 5950 50  0001 C CNN
F 1 "+6V" H 1450 6240 50  0000 C CNN
F 2 "" H 1450 6100 50  0000 C CNN
F 3 "" H 1450 6100 50  0000 C CNN
	1    1450 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 56CC1C66
P 7500 4000
F 0 "#PWR023" H 7500 3750 50  0001 C CNN
F 1 "GND" H 7500 3850 50  0000 C CNN
F 2 "" H 7500 4000 50  0000 C CNN
F 3 "" H 7500 4000 50  0000 C CNN
	1    7500 4000
	1    0    0    -1  
$EndComp
$Comp
L XC63FPM_SOT23 U8
U 1 1 56CC57BA
P 7300 4400
F 0 "U8" H 7300 4400 60  0001 C CNN
F 1 "XC63FPM_SOT23" H 7300 4400 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7300 4400 60  0001 C CNN
F 3 "" H 7300 4400 60  0000 C CNN
	1    7300 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 56CC5A12
P 7300 4800
F 0 "#PWR024" H 7300 4550 50  0001 C CNN
F 1 "GND" H 7300 4650 50  0000 C CNN
F 2 "" H 7300 4800 50  0000 C CNN
F 3 "" H 7300 4800 50  0000 C CNN
	1    7300 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 56BB1842
P 2050 5450
F 0 "#PWR025" H 2050 5200 50  0001 C CNN
F 1 "GND" H 2050 5300 50  0000 C CNN
F 2 "" H 2050 5450 50  0000 C CNN
F 3 "" H 2050 5450 50  0000 C CNN
	1    2050 5450
	1    0    0    -1  
$EndComp
Text Label 2700 6200 0    60   ~ 0
ADC-BATT2
$Comp
L R RA5
U 1 1 56BB2A84
P 1950 6200
F 0 "RA5" V 2030 6200 50  0000 C CNN
F 1 "33k" V 1950 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1880 6200 50  0001 C CNN
F 3 "" H 1950 6200 50  0000 C CNN
	1    1950 6200
	0    1    1    0   
$EndComp
$Comp
L R RA7
U 1 1 56BB2A8A
P 2150 6350
F 0 "RA7" V 2230 6350 50  0000 C CNN
F 1 "10k" V 2150 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2080 6350 50  0001 C CNN
F 3 "" H 2150 6350 50  0000 C CNN
	1    2150 6350
	-1   0    0    1   
$EndComp
$Comp
L C CA3
U 1 1 56BB2A90
P 2350 6350
F 0 "CA3" H 2375 6450 50  0000 L CNN
F 1 "C" H 2375 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2388 6200 50  0001 C CNN
F 3 "" H 2350 6350 50  0000 C CNN
	1    2350 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 56BB2A99
P 2050 6500
F 0 "#PWR026" H 2050 6250 50  0001 C CNN
F 1 "GND" H 2050 6350 50  0000 C CNN
F 2 "" H 2050 6500 50  0000 C CNN
F 3 "" H 2050 6500 50  0000 C CNN
	1    2050 6500
	1    0    0    -1  
$EndComp
Text Label 4900 1500 0    60   ~ 0
ADC-LAMP
$Comp
L +3.3V #PWR027
U 1 1 56CCC15E
P 3500 750
F 0 "#PWR027" H 3500 600 50  0001 C CNN
F 1 "+3.3V" H 3500 890 50  0000 C CNN
F 2 "" H 3500 750 50  0000 C CNN
F 3 "" H 3500 750 50  0000 C CNN
	1    3500 750 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 VDD-VDDA1
U 1 1 56CCCB7B
P 6700 2700
F 0 "VDD-VDDA1" H 6700 2850 50  0000 C CNN
F 1 "CONN_01X02" V 6800 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6700 2700 50  0001 C CNN
F 3 "" H 6700 2700 50  0000 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR028
U 1 1 56CCCFEC
P 6400 2650
F 0 "#PWR028" H 6400 2500 50  0001 C CNN
F 1 "+3.3V" H 6400 2790 50  0000 C CNN
F 2 "" H 6400 2650 50  0000 C CNN
F 3 "" H 6400 2650 50  0000 C CNN
	1    6400 2650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR029
U 1 1 56CCD0D2
P 6300 2650
F 0 "#PWR029" H 6300 2500 50  0001 C CNN
F 1 "VDD" H 6300 2800 50  0000 C CNN
F 2 "" H 6300 2650 50  0000 C CNN
F 3 "" H 6300 2650 50  0000 C CNN
	1    6300 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P-MIC1
U 1 1 56CCE67A
P 6650 3250
F 0 "P-MIC1" H 6650 3400 50  0000 C CNN
F 1 "CONN_01X02" V 6750 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6650 3250 50  0001 C CNN
F 3 "" H 6650 3250 50  0000 C CNN
	1    6650 3250
	-1   0    0    1   
$EndComp
$Comp
L +6V #PWR030
U 1 1 56CCED2C
P 6900 3200
F 0 "#PWR030" H 6900 3050 50  0001 C CNN
F 1 "+6V" H 6900 3340 50  0000 C CNN
F 2 "" H 6900 3200 50  0000 C CNN
F 3 "" H 6900 3200 50  0000 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P-XC1
U 1 1 56CCFFE6
P 6650 4350
F 0 "P-XC1" H 6650 4500 50  0000 C CNN
F 1 "CONN_01X02" V 6750 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6650 4350 50  0001 C CNN
F 3 "" H 6650 4350 50  0000 C CNN
	1    6650 4350
	-1   0    0    1   
$EndComp
$Comp
L +6V #PWR031
U 1 1 56CD0344
P 6900 4300
F 0 "#PWR031" H 6900 4150 50  0001 C CNN
F 1 "+6V" H 6900 4440 50  0000 C CNN
F 2 "" H 6900 4300 50  0000 C CNN
F 3 "" H 6900 4300 50  0000 C CNN
	1    6900 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 56CD1295
P 8100 2950
F 0 "P1" H 8100 3150 50  0000 C CNN
F 1 "CONN_01X03" V 8200 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8100 2950 50  0001 C CNN
F 3 "" H 8100 2950 50  0000 C CNN
	1    8100 2950
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR032
U 1 1 56CD140C
P 8300 3150
F 0 "#PWR032" H 8300 3000 50  0001 C CNN
F 1 "+3.3V" H 8300 3290 50  0000 C CNN
F 2 "" H 8300 3150 50  0000 C CNN
F 3 "" H 8300 3150 50  0000 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR033
U 1 1 56CD147A
P 7900 3150
F 0 "#PWR033" H 7900 3000 50  0001 C CNN
F 1 "VDD" H 7900 3300 50  0000 C CNN
F 2 "" H 7900 3150 50  0000 C CNN
F 3 "" H 7900 3150 50  0000 C CNN
	1    7900 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 56CD1C02
P 8100 4100
F 0 "P2" H 8100 4300 50  0000 C CNN
F 1 "CONN_01X03" V 8200 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8100 4100 50  0001 C CNN
F 3 "" H 8100 4100 50  0000 C CNN
	1    8100 4100
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR034
U 1 1 56CD1C08
P 8300 4300
F 0 "#PWR034" H 8300 4150 50  0001 C CNN
F 1 "+3.3V" H 8300 4440 50  0000 C CNN
F 2 "" H 8300 4300 50  0000 C CNN
F 3 "" H 8300 4300 50  0000 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR035
U 1 1 56CD1C0E
P 7900 4300
F 0 "#PWR035" H 7900 4150 50  0001 C CNN
F 1 "VDD" H 7900 4450 50  0000 C CNN
F 2 "" H 7900 4300 50  0000 C CNN
F 3 "" H 7900 4300 50  0000 C CNN
	1    7900 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR036
U 1 1 56CD839D
P 2400 7050
F 0 "#PWR036" H 2400 6900 50  0001 C CNN
F 1 "+3.3V" H 2400 7190 50  0000 C CNN
F 2 "" H 2400 7050 50  0000 C CNN
F 3 "" H 2400 7050 50  0000 C CNN
	1    2400 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 56CE632A
P 6650 2150
F 0 "#PWR037" H 6650 1900 50  0001 C CNN
F 1 "GND" H 6650 2000 50  0000 C CNN
F 2 "" H 6650 2150 50  0000 C CNN
F 3 "" H 6650 2150 50  0000 C CNN
	1    6650 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 56CE7972
P 8700 1600
F 0 "#PWR038" H 8700 1350 50  0001 C CNN
F 1 "GND" H 8700 1450 50  0000 C CNN
F 2 "" H 8700 1600 50  0000 C CNN
F 3 "" H 8700 1600 50  0000 C CNN
	1    8700 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P-VDD1
U 1 1 56CF02E0
P 1550 6650
F 0 "P-VDD1" H 1550 6800 50  0000 C CNN
F 1 "CONN_01X02" V 1650 6650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1550 6650 50  0001 C CNN
F 3 "" H 1550 6650 50  0000 C CNN
	1    1550 6650
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR039
U 1 1 56CF03CF
P 1700 6450
F 0 "#PWR039" H 1700 6300 50  0001 C CNN
F 1 "VDD" H 1700 6600 50  0000 C CNN
F 2 "" H 1700 6450 50  0000 C CNN
F 3 "" H 1700 6450 50  0000 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
$Comp
L PC817 U2
U 1 1 56CE933C
P 7000 2050
F 0 "U2" H 6800 2250 50  0000 L CNN
F 1 "PC817" H 7000 2250 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 6800 1850 50  0000 L CIN
F 3 "" H 7000 2050 50  0000 L CNN
	1    7000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 800  3200 800 
Connection ~ 2900 800 
Connection ~ 3000 800 
Connection ~ 2700 800 
Wire Wire Line
	1700 1800 1550 1800
Wire Wire Line
	1700 1100 1500 1100
Wire Wire Line
	1700 1300 1200 1300
Wire Wire Line
	1200 1400 1250 1400
Wire Wire Line
	950  1650 950  1850
Wire Wire Line
	950  2150 1250 2150
Wire Wire Line
	1100 2200 1100 2150
Connection ~ 1100 2150
Wire Wire Line
	1700 1500 1300 1500
Wire Wire Line
	1300 1500 1300 1650
Wire Wire Line
	1300 1650 950  1650
Connection ~ 950  1800
Wire Wire Line
	1250 1700 1250 1850
Wire Wire Line
	1250 1700 1400 1700
Wire Wire Line
	1400 1700 1400 1600
Wire Wire Line
	1400 1600 1700 1600
Connection ~ 1250 1800
Wire Wire Line
	2600 4800 3500 4800
Connection ~ 2700 4800
Connection ~ 2900 4800
Connection ~ 3000 4800
Connection ~ 3200 4800
Wire Wire Line
	1250 6350 1300 6350
Wire Wire Line
	1300 6350 1300 6750
Wire Wire Line
	1300 6750 1250 6750
Wire Wire Line
	1250 6250 1700 6250
Wire Wire Line
	1300 5900 1300 6250
Wire Wire Line
	1300 5900 1250 5900
Wire Wire Line
	1250 5800 1300 5800
Wire Wire Line
	1300 5800 1300 5450
Wire Wire Line
	1300 5450 1250 5450
Wire Wire Line
	1300 5350 1300 5250
Wire Wire Line
	2100 5150 2700 5150
Connection ~ 2150 5150
Wire Wire Line
	2050 5450 2350 5450
Connection ~ 2150 5450
Wire Wire Line
	1250 5350 1800 5350
Wire Wire Line
	1800 5350 1800 5150
Connection ~ 1300 5350
Connection ~ 1300 5800
Connection ~ 1300 6250
Connection ~ 1300 6750
Connection ~ 2350 5150
Wire Wire Line
	4700 2200 5800 2200
Wire Wire Line
	4700 2100 5800 2100
Wire Wire Line
	5800 2000 5750 2000
Wire Wire Line
	5750 2000 5750 2250
Wire Wire Line
	5800 1900 5750 1900
Wire Wire Line
	4700 3100 5750 3100
Wire Wire Line
	7300 2150 7600 2150
Wire Wire Line
	7900 1400 7900 1950
Wire Wire Line
	4700 1600 4900 1600
Wire Wire Line
	8050 2350 7900 2350
Wire Wire Line
	4700 4100 4850 4100
Wire Wire Line
	9750 900  9750 1000
Wire Wire Line
	9750 1300 9750 1400
Wire Wire Line
	4700 4200 4850 4200
Wire Wire Line
	4700 1700 4900 1700
Wire Wire Line
	1350 6850 1250 6850
Wire Wire Line
	8000 1400 8100 1400
Wire Wire Line
	8100 1400 8100 1500
Wire Wire Line
	10100 2250 10350 2250
Wire Wire Line
	10200 2250 10200 2350
Wire Wire Line
	9800 2250 9700 2250
Connection ~ 10200 2250
Wire Wire Line
	4700 4300 4850 4300
Wire Wire Line
	3500 5650 3750 5650
Wire Wire Line
	3600 5250 3600 5350
Connection ~ 3600 5650
Wire Wire Line
	3500 5750 3500 5650
Wire Wire Line
	3100 5650 3100 5750
Wire Wire Line
	3000 5650 3100 5650
Wire Wire Line
	1050 7050 900  7050
Wire Wire Line
	1250 6850 1250 7050
Wire Wire Line
	1250 7050 1150 7050
Wire Wire Line
	2450 7100 2400 7100
Wire Wire Line
	2300 7300 2450 7300
Wire Wire Line
	2400 7300 2400 7350
Wire Wire Line
	2100 7500 2300 7500
Wire Wire Line
	2300 7500 2300 7300
Connection ~ 2400 7300
Wire Wire Line
	5200 5250 5000 5250
Wire Wire Line
	5200 5450 5000 5450
Wire Wire Line
	5200 5650 5000 5650
Wire Wire Line
	5200 5850 5000 5850
Wire Wire Line
	5600 5250 5650 5250
Wire Wire Line
	5650 5250 5650 5950
Wire Wire Line
	5600 5850 5650 5850
Connection ~ 5650 5850
Wire Wire Line
	5600 5650 5650 5650
Connection ~ 5650 5650
Wire Wire Line
	5600 5450 5650 5450
Connection ~ 5650 5450
Wire Wire Line
	4700 3200 4900 3200
Wire Wire Line
	4700 3300 4900 3300
Wire Wire Line
	4700 3400 4900 3400
Wire Wire Line
	4700 3500 4900 3500
Wire Wire Line
	5600 6250 5600 6700
Connection ~ 5600 6450
Connection ~ 5600 6650
Wire Wire Line
	5200 6250 5000 6250
Wire Wire Line
	5200 6450 5000 6450
Wire Wire Line
	5200 6650 5000 6650
Wire Wire Line
	4700 3600 4900 3600
Wire Wire Line
	4700 3700 4900 3700
Wire Wire Line
	4700 3800 4900 3800
Wire Wire Line
	1450 6100 1300 6100
Connection ~ 1300 6100
Wire Wire Line
	6850 3300 7000 3300
Wire Wire Line
	7000 3500 6900 3500
Wire Wire Line
	6900 3500 6900 3300
Wire Wire Line
	7500 4000 7500 3900
Wire Wire Line
	7300 4700 7300 4800
Wire Wire Line
	6850 4400 7000 4400
Wire Wire Line
	1200 1200 1250 1200
Wire Wire Line
	2100 6200 2700 6200
Connection ~ 2150 6200
Wire Wire Line
	2050 6500 2350 6500
Connection ~ 2150 6500
Wire Wire Line
	1800 6200 1700 6200
Wire Wire Line
	1700 6200 1700 6250
Connection ~ 2350 6200
Wire Wire Line
	4700 1500 4900 1500
Wire Wire Line
	3500 800  3500 750 
Wire Wire Line
	6500 2750 6300 2750
Wire Wire Line
	6300 2750 6300 2650
Wire Wire Line
	6500 2650 6400 2650
Connection ~ 6900 3300
Wire Wire Line
	6900 3200 6850 3200
Wire Wire Line
	6850 4300 6900 4300
Wire Wire Line
	8200 3150 8300 3150
Wire Wire Line
	8000 3150 7900 3150
Wire Wire Line
	7800 3300 8100 3300
Wire Wire Line
	8100 3300 8100 3150
Wire Wire Line
	7600 4400 8100 4400
Wire Wire Line
	8100 4400 8100 4300
Wire Wire Line
	8200 4300 8300 4300
Wire Wire Line
	8000 4300 7900 4300
Wire Wire Line
	2400 7100 2400 7050
Wire Wire Line
	6700 2150 6650 2150
Wire Wire Line
	8750 1600 8700 1600
Wire Wire Line
	1500 6450 1300 6450
Connection ~ 1300 6450
Wire Wire Line
	1600 6450 1700 6450
Wire Wire Line
	9350 1400 9600 1400
Wire Wire Line
	9600 1400 9600 1350
Wire Wire Line
	9600 1350 9750 1350
Connection ~ 9750 1350
Wire Wire Line
	9450 1600 9350 1600
Wire Wire Line
	7300 1950 7550 1950
Wire Wire Line
	7550 1950 7550 1900
Wire Wire Line
	7550 1900 7900 1900
Connection ~ 7900 1900
$Comp
L PC817 U3
U 1 1 56CED73D
P 9050 1500
F 0 "U3" H 8850 1700 50  0000 L CNN
F 1 "PC817" H 9050 1700 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 8850 1300 50  0000 L CIN
F 3 "" H 9050 1500 50  0000 L CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1400 4900 1400
Wire Wire Line
	4700 1300 4900 1300
Wire Wire Line
	4700 1200 4900 1200
Text Label 4900 1300 0    60   ~ 0
ADC-BATT2
Text Label 4900 1400 0    60   ~ 0
ADC-DIM
$Comp
L PC817 U4
U 1 1 56CF0B01
P 6950 1400
F 0 "U4" H 6750 1600 50  0000 L CNN
F 1 "PC817" H 6950 1600 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 6750 1200 50  0001 L CIN
F 3 "" H 6950 1400 50  0000 L CNN
	1    6950 1400
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56CF0E2E
P 7350 1150
F 0 "R2" V 7430 1150 50  0000 C CNN
F 1 "10k" V 7350 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7280 1150 50  0001 C CNN
F 3 "" H 7350 1150 50  0000 C CNN
	1    7350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1300 7250 1300
$Comp
L GND #PWR040
U 1 1 56CF118E
P 7350 1500
F 0 "#PWR040" H 7350 1250 50  0001 C CNN
F 1 "GND" H 7350 1350 50  0000 C CNN
F 2 "" H 7350 1500 50  0000 C CNN
F 3 "" H 7350 1500 50  0000 C CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1500 7350 1500
Wire Wire Line
	7350 1000 7500 1000
Wire Wire Line
	7500 850  7500 1500
Wire Wire Line
	7500 1500 7900 1500
Connection ~ 7900 1500
$Comp
L VDD #PWR041
U 1 1 56CF1DF8
P 6600 1300
F 0 "#PWR041" H 6600 1150 50  0001 C CNN
F 1 "VDD" H 6600 1450 50  0000 C CNN
F 2 "" H 6600 1300 50  0000 C CNN
F 3 "" H 6600 1300 50  0000 C CNN
	1    6600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1300 6600 1300
Wire Wire Line
	6350 1500 6650 1500
Text Label 4900 1200 0    60   ~ 0
IND-PV
$Comp
L R R5
U 1 1 56CED0CD
P 8700 1250
F 0 "R5" V 8780 1250 50  0000 C CNN
F 1 "330" V 8700 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8630 1250 50  0001 C CNN
F 3 "" H 8700 1250 50  0000 C CNN
	1    8700 1250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56CED57B
P 6650 1800
F 0 "R1" V 6730 1800 50  0000 C CNN
F 1 "330" V 6650 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6580 1800 50  0001 C CNN
F 3 "" H 6650 1800 50  0000 C CNN
	1    6650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1400 8700 1400
Wire Wire Line
	6700 1950 6650 1950
Wire Wire Line
	6650 1650 6700 1650
Wire Wire Line
	8700 1100 8750 1100
Text Label 6700 1650 0    60   ~ 0
CON-PV
Text Label 8750 1100 0    60   ~ 0
CON-LAMP
$Comp
L TEST-POINT2 TP1
U 1 1 56CEB754
P 6050 5350
F 0 "TP1" H 6100 5450 50  0000 C CNN
F 1 "TEST-POINT2" H 6100 5250 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6100 5150 50  0001 C CNN
F 3 "" H 6050 5350 60  0000 C CNN
	1    6050 5350
	1    0    0    -1  
$EndComp
$Comp
L TEST-POINT2 TP2
U 1 1 56CEBA65
P 6050 5550
F 0 "TP2" H 6100 5650 50  0000 C CNN
F 1 "TEST-POINT2" H 6100 5450 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6100 5350 50  0001 C CNN
F 3 "" H 6050 5550 60  0000 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR042
U 1 1 56CEC916
P 6000 5350
F 0 "#PWR042" H 6000 5150 50  0001 C CNN
F 1 "GNDPWR" H 6000 5220 50  0000 C CNN
F 2 "" H 6000 5300 50  0000 C CNN
F 3 "" H 6000 5300 50  0000 C CNN
	1    6000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5350 6000 5350
$Comp
L TEST-POINT2 TP3
U 1 1 56CEDF5B
P 6050 5900
F 0 "TP3" H 6100 6000 50  0000 C CNN
F 1 "TEST-POINT2" H 6100 5800 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6100 5700 50  0001 C CNN
F 3 "" H 6050 5900 60  0000 C CNN
	1    6050 5900
	1    0    0    -1  
$EndComp
$Comp
L TEST-POINT2 TP4
U 1 1 56CEE3DE
P 6050 6100
F 0 "TP4" H 6100 6200 50  0000 C CNN
F 1 "TEST-POINT2" H 6100 6000 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6100 5900 50  0001 C CNN
F 3 "" H 6050 6100 60  0000 C CNN
	1    6050 6100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR043
U 1 1 56CEEC31
P 6000 5900
F 0 "#PWR043" H 6000 5750 50  0001 C CNN
F 1 "+BATT" H 6000 6040 50  0000 C CNN
F 2 "" H 6000 5900 50  0000 C CNN
F 3 "" H 6000 5900 50  0000 C CNN
	1    6000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5900 6000 5900
$Comp
L +6V #PWR044
U 1 1 56CEEF12
P 6000 6100
F 0 "#PWR044" H 6000 5950 50  0001 C CNN
F 1 "+6V" H 6000 6240 50  0000 C CNN
F 2 "" H 6000 6100 50  0000 C CNN
F 3 "" H 6000 6100 50  0000 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
$Comp
L TEST-POINT2 TP5
U 1 1 56CF18A7
P 6050 6300
F 0 "TP5" H 6100 6400 50  0000 C CNN
F 1 "TEST-POINT2" H 6100 6200 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6100 6100 50  0001 C CNN
F 3 "" H 6050 6300 60  0000 C CNN
	1    6050 6300
	1    0    0    -1  
$EndComp
$Comp
L TEST-POINT2 TP6
U 1 1 56CF1930
P 6050 6500
F 0 "TP6" H 6100 6600 50  0000 C CNN
F 1 "TEST-POINT2" H 6100 6400 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6100 6300 50  0001 C CNN
F 3 "" H 6050 6500 60  0000 C CNN
	1    6050 6500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR045
U 1 1 56CF4102
P 6000 6300
F 0 "#PWR045" H 6000 6150 50  0001 C CNN
F 1 "VDD" H 6000 6450 50  0000 C CNN
F 2 "" H 6000 6300 50  0000 C CNN
F 3 "" H 6000 6300 50  0000 C CNN
	1    6000 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6300 6000 6300
$Comp
L +3.3V #PWR046
U 1 1 56CF4FD0
P 6000 6500
F 0 "#PWR046" H 6000 6350 50  0001 C CNN
F 1 "+3.3V" H 6000 6640 50  0000 C CNN
F 2 "" H 6000 6500 50  0000 C CNN
F 3 "" H 6000 6500 50  0000 C CNN
	1    6000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6500 6000 6500
$Comp
L TEST-POINT2 TP7
U 1 1 56CF8AEB
P 6550 5350
F 0 "TP7" H 6600 5450 50  0000 C CNN
F 1 "TEST-POINT2" H 6600 5250 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6600 5150 50  0001 C CNN
F 3 "" H 6550 5350 60  0000 C CNN
	1    6550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5350 6450 5350
Text Label 6450 5350 0    60   ~ 0
ADC-BATT1
$Comp
L GND #PWR047
U 1 1 56CF9A45
P 6000 5550
F 0 "#PWR047" H 6000 5300 50  0001 C CNN
F 1 "GND" H 6000 5400 50  0000 C CNN
F 2 "" H 6000 5550 50  0000 C CNN
F 3 "" H 6000 5550 50  0000 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5550 6000 5550
Wire Wire Line
	6050 6100 6000 6100
$Comp
L TEST-POINT2 TP8
U 1 1 56CFC638
P 6550 5550
F 0 "TP8" H 6600 5650 50  0000 C CNN
F 1 "TEST-POINT2" H 6600 5450 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6600 5350 50  0001 C CNN
F 3 "" H 6550 5550 60  0000 C CNN
	1    6550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5550 6450 5550
Text Label 6450 5550 0    60   ~ 0
ADC-BATT2
$Comp
L TEST-POINT2 TP10
U 1 1 56CFCAAF
P 6550 5900
F 0 "TP10" H 6600 6000 50  0000 C CNN
F 1 "TEST-POINT2" H 6600 5800 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6600 5700 50  0001 C CNN
F 3 "" H 6550 5900 60  0000 C CNN
	1    6550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5900 6450 5900
Text Label 6450 5900 0    60   ~ 0
ADC-LAMP
$Comp
L TEST-POINT2 TP11
U 1 1 56CFD981
P 6550 6100
F 0 "TP11" H 6600 6200 50  0000 C CNN
F 1 "TEST-POINT2" H 6600 6000 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6600 5900 50  0001 C CNN
F 3 "" H 6550 6100 60  0000 C CNN
	1    6550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6100 6450 6100
Text Label 6450 6100 0    60   ~ 0
ADC-DIM
$Comp
L TEST-POINT2 TP12
U 1 1 56CFDE21
P 6550 6300
F 0 "TP12" H 6600 6400 50  0000 C CNN
F 1 "TEST-POINT2" H 6600 6200 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6600 6100 50  0001 C CNN
F 3 "" H 6550 6300 60  0000 C CNN
	1    6550 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6300 6450 6300
Text Label 6450 6300 0    60   ~ 0
IND-PV
Connection ~ 7500 1000
Text Label 7500 850  0    60   ~ 0
V-PV
$Comp
L TEST-POINT2 TP9
U 1 1 56D02B8E
P 6550 5700
F 0 "TP9" H 6600 5800 50  0000 C CNN
F 1 "TEST-POINT2" H 6600 5600 50  0000 C CNN
F 2 "tespad:SparkFun-PAD.03X.05" H 6600 5500 50  0001 C CNN
F 3 "" H 6550 5700 60  0000 C CNN
	1    6550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5700 6450 5700
Text Label 6450 5700 0    60   ~ 0
V-PV
Wire Wire Line
	2000 7200 2450 7200
Connection ~ 2100 7200
Text Label 2000 7200 0    60   ~ 0
ADC-DIM
Wire Wire Line
	9750 1800 9750 2150
Wire Wire Line
	9750 2150 10350 2150
$Comp
L 10-XX_B3F-10XX U6
U 1 1 56C5AF55
P 3300 5650
F 0 "U6" H 3300 5650 60  0001 C CNN
F 1 "10-XX_B3F-10XX" H 3300 5650 60  0001 C CNN
F 2 "switch-omron:B3F-10XX" H 3300 5650 60  0001 C CNN
F 3 "" H 3300 5650 60  0000 C CNN
	1    3300 5650
	0    1    1    0   
$EndComp
Text Label 4950 2100 0    60   ~ 0
TX
Text Label 4900 2200 0    60   ~ 0
RX
$Comp
L R R?
U 1 1 56F3DD46
P 6450 1650
F 0 "R?" V 6530 1650 50  0000 C CNN
F 1 "4k7" V 6450 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6380 1650 50  0001 C CNN
F 3 "" H 6450 1650 50  0000 C CNN
	1    6450 1650
	1    0    0    -1  
$EndComp
Connection ~ 6450 1500
Text Label 6350 1500 0    60   ~ 0
IND-PV
$Comp
L GND #PWR?
U 1 1 56F3F6FF
P 6450 1850
F 0 "#PWR?" H 6450 1600 50  0001 C CNN
F 1 "GND" H 6450 1700 50  0000 C CNN
F 2 "" H 6450 1850 50  0000 C CNN
F 3 "" H 6450 1850 50  0000 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1800 6450 1850
$EndSCHEMATC
