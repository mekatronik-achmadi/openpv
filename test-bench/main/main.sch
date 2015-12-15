EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
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
LIBS:45xx
LIBS:national-semiconductor
LIBS:main-cache
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
L ATMEGA128-A IC1
U 1 1 5663C753
P 3200 2650
F 0 "IC1" H 2050 4550 40  0000 L BNN
F 1 "ATMEGA128-A" H 3950 700 40  0000 L BNN
F 2 "Housings_QFP:TQFP-64_14x14mm_Pitch0.8mm" H 3200 2650 30  0000 C CIN
F 3 "" H 3200 2650 60  0000 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5663C90C
P 3500 650
F 0 "#PWR01" H 3500 500 50  0001 C CNN
F 1 "VCC" H 3500 800 50  0000 C CNN
F 2 "" H 3500 650 60  0000 C CNN
F 3 "" H 3500 650 60  0000 C CNN
	1    3500 650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5663C9D4
P 3500 4650
F 0 "#PWR02" H 3500 4400 50  0001 C CNN
F 1 "GND" H 3500 4500 50  0000 C CNN
F 2 "" H 3500 4650 60  0000 C CNN
F 3 "" H 3500 4650 60  0000 C CNN
	1    3500 4650
	1    0    0    -1  
$EndComp
$Comp
L R R-RST1
U 1 1 5663CB7B
P 1800 800
F 0 "R-RST1" V 1880 800 50  0000 C CNN
F 1 "4k7" V 1800 800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1730 800 30  0001 C CNN
F 3 "" H 1800 800 30  0000 C CNN
	1    1800 800 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P-ASP1
U 1 1 5663D2FE
P 850 950
F 0 "P-ASP1" H 850 1300 50  0000 C CNN
F 1 "CONN_01X06" V 950 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 850 950 60  0001 C CNN
F 3 "" H 850 950 60  0000 C CNN
	1    850  950 
	-1   0    0    -1  
$EndComp
Text Label 1700 950  0    60   ~ 0
RST
Text Label 1150 900  0    60   ~ 0
RST
Text Label 1750 3650 0    60   ~ 0
MISO
Text Label 1750 3750 0    60   ~ 0
MOSI
Text Label 4650 1950 0    60   ~ 0
SCK
$Comp
L CONN_01X04 P-UART1
U 1 1 5663E710
P 850 1650
F 0 "P-UART1" H 850 1900 50  0000 C CNN
F 1 "CONN_01X04" V 950 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 850 1650 60  0001 C CNN
F 3 "" H 850 1650 60  0000 C CNN
	1    850  1650
	-1   0    0    -1  
$EndComp
Text Label 4650 3850 0    60   ~ 0
TX
Text Label 4650 3950 0    60   ~ 0
RX
$Comp
L R R-LED1
U 1 1 5663F881
P 850 2200
F 0 "R-LED1" V 930 2200 50  0000 C CNN
F 1 "330" V 850 2200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 780 2200 30  0001 C CNN
F 3 "" H 850 2200 30  0000 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
$Comp
L R R-LED2
U 1 1 5663F8BD
P 1050 2200
F 0 "R-LED2" V 1130 2200 50  0000 C CNN
F 1 "330" V 1050 2200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 980 2200 30  0001 C CNN
F 3 "" H 1050 2200 30  0000 C CNN
	1    1050 2200
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5663F8E2
P 850 2650
F 0 "D1" H 850 2750 50  0000 C CNN
F 1 "LED" H 850 2550 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 850 2650 60  0001 C CNN
F 3 "" H 850 2650 60  0000 C CNN
	1    850  2650
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5663F931
P 1050 2650
F 0 "D2" H 1050 2750 50  0000 C CNN
F 1 "LED" H 1050 2550 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 1050 2650 60  0001 C CNN
F 3 "" H 1050 2650 60  0000 C CNN
	1    1050 2650
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5663FB26
P 1150 2050
F 0 "#PWR03" H 1150 1900 50  0001 C CNN
F 1 "VCC" H 1150 2200 50  0000 C CNN
F 2 "" H 1150 2050 60  0000 C CNN
F 3 "" H 1150 2050 60  0000 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5663FC2A
P 850 2950
F 0 "#PWR04" H 850 2700 50  0001 C CNN
F 1 "GND" H 850 2800 50  0000 C CNN
F 2 "" H 850 2950 60  0000 C CNN
F 3 "" H 850 2950 60  0000 C CNN
	1    850  2950
	1    0    0    -1  
$EndComp
Text Label 1050 3000 0    60   ~ 0
RUN
Text Label 4650 1850 0    60   ~ 0
RUN
$Comp
L 4511N_DIL16 U1
U 1 1 5664152F
P 5850 1200
F 0 "U1" H 5850 1200 60  0001 C CNN
F 1 "4511N_DIL16" H 5850 1200 60  0001 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5850 1200 60  0001 C CNN
F 3 "" H 5850 1200 60  0000 C CNN
	1    5850 1200
	1    0    0    -1  
$EndComp
Text Label 4850 950  0    60   ~ 0
IA
Text Label 4850 1050 0    60   ~ 0
IB
Text Label 4850 1150 0    60   ~ 0
IC
Text Label 4850 1250 0    60   ~ 0
ID
Text Label 6000 900  0    60   ~ 0
IA
Text Label 6000 1000 0    60   ~ 0
IB
Text Label 6000 1100 0    60   ~ 0
IC
Text Label 6000 1200 0    60   ~ 0
ID
$Comp
L VCC #PWR05
U 1 1 56641FD2
P 5550 900
F 0 "#PWR05" H 5550 750 50  0001 C CNN
F 1 "VCC" H 5550 1050 50  0000 C CNN
F 2 "" H 5550 900 60  0000 C CNN
F 3 "" H 5550 900 60  0000 C CNN
	1    5550 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56641FF6
P 5550 1500
F 0 "#PWR06" H 5550 1250 50  0001 C CNN
F 1 "GND" H 5550 1350 50  0000 C CNN
F 2 "" H 5550 1500 60  0000 C CNN
F 3 "" H 5550 1500 60  0000 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 56642711
P 6000 1400
F 0 "#PWR07" H 6000 1250 50  0001 C CNN
F 1 "VCC" H 6000 1550 50  0000 C CNN
F 2 "" H 6000 1400 60  0000 C CNN
F 3 "" H 6000 1400 60  0000 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5664274D
P 6000 1600
F 0 "#PWR08" H 6000 1350 50  0001 C CNN
F 1 "GND" H 6000 1450 50  0000 C CNN
F 2 "" H 6000 1600 60  0000 C CNN
F 3 "" H 6000 1600 60  0000 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L R R-DISP1
U 1 1 56642AB9
P 7400 900
F 0 "R-DISP1" V 7480 900 50  0000 C CNN
F 1 "330" V 7400 900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 900 30  0001 C CNN
F 3 "" H 7400 900 30  0000 C CNN
	1    7400 900 
	0    1    1    0   
$EndComp
$Comp
L R R-DISP2
U 1 1 56642C39
P 7400 1000
F 0 "R-DISP2" V 7480 1000 50  0000 C CNN
F 1 "330" V 7400 1000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 1000 30  0001 C CNN
F 3 "" H 7400 1000 30  0000 C CNN
	1    7400 1000
	0    1    1    0   
$EndComp
$Comp
L R R-DISP3
U 1 1 56642DC1
P 7400 1100
F 0 "R-DISP3" V 7480 1100 50  0000 C CNN
F 1 "330" V 7400 1100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 1100 30  0001 C CNN
F 3 "" H 7400 1100 30  0000 C CNN
	1    7400 1100
	0    1    1    0   
$EndComp
$Comp
L R R-DISP4
U 1 1 56642DF6
P 7400 1200
F 0 "R-DISP4" V 7480 1200 50  0000 C CNN
F 1 "330" V 7400 1200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 1200 30  0001 C CNN
F 3 "" H 7400 1200 30  0000 C CNN
	1    7400 1200
	0    1    1    0   
$EndComp
$Comp
L R R-DISP5
U 1 1 56642E2E
P 7400 1300
F 0 "R-DISP5" V 7480 1300 50  0000 C CNN
F 1 "330" V 7400 1300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 1300 30  0001 C CNN
F 3 "" H 7400 1300 30  0000 C CNN
	1    7400 1300
	0    1    1    0   
$EndComp
$Comp
L R R-DISP6
U 1 1 56642FD4
P 7400 1400
F 0 "R-DISP6" V 7480 1400 50  0000 C CNN
F 1 "330" V 7400 1400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 1400 30  0001 C CNN
F 3 "" H 7400 1400 30  0000 C CNN
	1    7400 1400
	0    1    1    0   
$EndComp
$Comp
L R R-DISP7
U 1 1 56643542
P 7400 1500
F 0 "R-DISP7" V 7480 1500 50  0000 C CNN
F 1 "330" V 7400 1500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7330 1500 30  0001 C CNN
F 3 "" H 7400 1500 30  0000 C CNN
	1    7400 1500
	0    1    1    0   
$EndComp
Text Label 7600 900  0    60   ~ 0
LA
Text Label 7600 1000 0    60   ~ 0
LB
Text Label 7600 1100 0    60   ~ 0
LC
Text Label 7600 1200 0    60   ~ 0
LD
Text Label 7600 1300 0    60   ~ 0
LE
Text Label 7600 1400 0    60   ~ 0
LF
Text Label 7600 1500 0    60   ~ 0
LG
$Comp
L R R-LED3
U 1 1 56645F27
P 850 3350
F 0 "R-LED3" V 930 3350 50  0000 C CNN
F 1 "330" V 850 3350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 780 3350 30  0001 C CNN
F 3 "" H 850 3350 30  0000 C CNN
	1    850  3350
	1    0    0    -1  
$EndComp
$Comp
L R R-LED4
U 1 1 56645F2D
P 1050 3350
F 0 "R-LED4" V 1130 3350 50  0000 C CNN
F 1 "330" V 1050 3350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 980 3350 30  0001 C CNN
F 3 "" H 1050 3350 30  0000 C CNN
	1    1050 3350
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 56645F33
P 850 3800
F 0 "D3" H 850 3900 50  0000 C CNN
F 1 "LED" H 850 3700 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 850 3800 60  0001 C CNN
F 3 "" H 850 3800 60  0000 C CNN
	1    850  3800
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 56645F39
P 1050 3800
F 0 "D4" H 1050 3900 50  0000 C CNN
F 1 "LED" H 1050 3700 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 1050 3800 60  0001 C CNN
F 3 "" H 1050 3800 60  0000 C CNN
	1    1050 3800
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR09
U 1 1 56645F3F
P 1150 3200
F 0 "#PWR09" H 1150 3050 50  0001 C CNN
F 1 "VCC" H 1150 3350 50  0000 C CNN
F 2 "" H 1150 3200 60  0000 C CNN
F 3 "" H 1150 3200 60  0000 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
Text Label 850  4150 0    60   ~ 0
RX
Text Label 1050 4150 0    60   ~ 0
TX
Text Label 1200 1700 0    60   ~ 0
RX
Text Label 1200 1800 0    60   ~ 0
TX
Text Label 1150 1000 0    60   ~ 0
SCK
Text Label 1150 1100 0    60   ~ 0
MOSI
Text Label 1150 1200 0    60   ~ 0
MISO
$Comp
L LM2596S_TO263-5 U2
U 1 1 5663DD45
P 2750 5450
F 0 "U2" H 2750 5450 60  0001 C CNN
F 1 "LM2596S_TO263-5" H 2750 5450 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5Lead" H 2750 5450 60  0001 C CNN
F 3 "" H 2750 5450 60  0000 C CNN
	1    2750 5450
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON-REG1
U 1 1 5663E115
P 1150 5350
F 0 "CON-REG1" H 1150 5600 60  0000 C CNN
F 1 "BARREL_JACK" H 1150 5150 60  0000 C CNN
F 2 "Connect:JACK_ALIM" H 1150 5350 60  0001 C CNN
F 3 "" H 1150 5350 60  0000 C CNN
	1    1150 5350
	1    0    0    -1  
$EndComp
$Comp
L CP C-REG1
U 1 1 5663E2AD
P 2000 5400
F 0 "C-REG1" H 2025 5500 50  0000 L CNN
F 1 "100uF 50v" H 2025 5300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 2038 5250 30  0001 C CNN
F 3 "" H 2000 5400 60  0000 C CNN
	1    2000 5400
	1    0    0    -1  
$EndComp
$Comp
L D D-REG1
U 1 1 5663E52B
P 1700 5250
F 0 "D-REG1" H 1700 5350 50  0000 C CNN
F 1 "D" H 1700 5150 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1700 5250 60  0001 C CNN
F 3 "" H 1700 5250 60  0000 C CNN
	1    1700 5250
	-1   0    0    1   
$EndComp
$Comp
L D_Schottky DS-REG1
U 1 1 5663FC93
P 3550 5500
F 0 "DS-REG1" H 3550 5600 50  0000 C CNN
F 1 "D_Schottky" H 3550 5400 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3550 5500 60  0001 C CNN
F 3 "" H 3550 5500 60  0000 C CNN
	1    3550 5500
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L-REG1
U 1 1 5663FFB6
P 3950 5350
F 0 "L-REG1" V 3900 5350 50  0000 C CNN
F 1 "INDUCTOR" V 4050 5350 50  0000 C CNN
F 2 "Inductors:INDUCTOR_V" H 3950 5350 60  0001 C CNN
F 3 "" H 3950 5350 60  0000 C CNN
	1    3950 5350
	0    1    1    0   
$EndComp
$Comp
L CP C-REG2
U 1 1 56640191
P 4350 5500
F 0 "C-REG2" H 4375 5600 50  0000 L CNN
F 1 "100uF 50v" H 4375 5400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 4388 5350 30  0001 C CNN
F 3 "" H 4350 5500 60  0000 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5664051E
P 4350 5300
F 0 "#PWR010" H 4350 5150 50  0001 C CNN
F 1 "VCC" H 4350 5450 50  0000 C CNN
F 2 "" H 4350 5300 60  0000 C CNN
F 3 "" H 4350 5300 60  0000 C CNN
	1    4350 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56640564
P 3950 5700
F 0 "#PWR011" H 3950 5450 50  0001 C CNN
F 1 "GND" H 3950 5550 50  0000 C CNN
F 2 "" H 3950 5700 60  0000 C CNN
F 3 "" H 3950 5700 60  0000 C CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 566410A8
P 2000 5800
F 0 "#PWR012" H 2000 5550 50  0001 C CNN
F 1 "GND" H 2000 5650 50  0000 C CNN
F 2 "" H 2000 5800 60  0000 C CNN
F 3 "" H 2000 5800 60  0000 C CNN
	1    2000 5800
	1    0    0    -1  
$EndComp
$Comp
L ZENER DZ-REG1
U 1 1 566422A3
P 700 2250
F 0 "DZ-REG1" H 700 2350 50  0000 C CNN
F 1 "5v6" H 700 2150 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 700 2250 60  0001 C CNN
F 3 "" H 700 2250 60  0000 C CNN
	1    700  2250
	0    1    1    0   
$EndComp
$Comp
L PCF8563 U3
U 1 1 56643B8A
P 6650 2900
F 0 "U3" H 6350 3250 50  0000 L CNN
F 1 "PCF8563" H 6750 3250 50  0000 L CNN
F 2 "Housings_SOIC:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 6650 2900 60  0001 C CNN
F 3 "" H 6650 2900 60  0000 C CNN
	1    6650 2900
	-1   0    0    -1  
$EndComp
$Comp
L R R-RTC2
U 1 1 56644E99
P 6000 2450
F 0 "R-RTC2" V 6080 2450 50  0000 C CNN
F 1 "4k7" V 6000 2450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5930 2450 30  0001 C CNN
F 3 "" H 6000 2450 30  0000 C CNN
	1    6000 2450
	1    0    0    -1  
$EndComp
$Comp
L R R-RTC1
U 1 1 5664503C
P 5850 2450
F 0 "R-RTC1" V 5930 2450 50  0000 C CNN
F 1 "4k7" V 5850 2450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5780 2450 30  0001 C CNN
F 3 "" H 5850 2450 30  0000 C CNN
	1    5850 2450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 5664522A
P 6100 2300
F 0 "#PWR013" H 6100 2150 50  0001 C CNN
F 1 "VCC" H 6100 2450 50  0000 C CNN
F 2 "" H 6100 2300 60  0000 C CNN
F 3 "" H 6100 2300 60  0000 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 56645CA0
P 6750 3300
F 0 "#PWR014" H 6750 3050 50  0001 C CNN
F 1 "GND" H 6750 3150 50  0000 C CNN
F 2 "" H 6750 3300 60  0000 C CNN
F 3 "" H 6750 3300 60  0000 C CNN
	1    6750 3300
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 56646422
P 7150 2900
F 0 "Y1" H 7150 3050 50  0000 C CNN
F 1 "32khz" H 7150 2750 50  0000 C CNN
F 2 "Crystals:Crystal_Watch" H 7150 2900 60  0001 C CNN
F 3 "" H 7150 2900 60  0000 C CNN
	1    7150 2900
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P-RTCBATT1
U 1 1 56646D50
P 7550 2550
F 0 "P-RTCBATT1" H 7550 2700 50  0000 C CNN
F 1 "CONN_01X02" V 7650 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 7550 2550 60  0001 C CNN
F 3 "" H 7550 2550 60  0000 C CNN
	1    7550 2550
	1    0    0    -1  
$EndComp
$Comp
L D D-RTC2
U 1 1 56647202
P 7050 2500
F 0 "D-RTC2" H 7050 2600 50  0000 C CNN
F 1 "D" H 7050 2400 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 7050 2500 60  0001 C CNN
F 3 "" H 7050 2500 60  0000 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L D D-RTC1
U 1 1 56647265
P 6650 2250
F 0 "D-RTC1" H 6650 2350 50  0000 C CNN
F 1 "D" H 6650 2150 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 6650 2250 60  0001 C CNN
F 3 "" H 6650 2250 60  0000 C CNN
	1    6650 2250
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR015
U 1 1 566472D2
P 6750 2100
F 0 "#PWR015" H 6750 1950 50  0001 C CNN
F 1 "VCC" H 6750 2250 50  0000 C CNN
F 2 "" H 6750 2100 60  0000 C CNN
F 3 "" H 6750 2100 60  0000 C CNN
	1    6750 2100
	1    0    0    -1  
$EndComp
Text Label 4650 3650 0    60   ~ 0
RTC-SCL
Text Label 4650 3750 0    60   ~ 0
RTC-SDA
Text Label 5800 2800 0    60   ~ 0
RTC-SDA
Text Label 5800 2700 0    60   ~ 0
RTC-SCL
$Comp
L CONN_02X08 P-LAMP1
U 1 1 566CF829
P 6700 4250
F 0 "P-LAMP1" H 6700 4700 50  0000 C CNN
F 1 "CONN_02X08" V 6700 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 6700 3050 60  0001 C CNN
F 3 "" H 6700 3050 60  0000 C CNN
	1    6700 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 566D6B31
P 1400 800
F 0 "#PWR016" H 1400 550 50  0001 C CNN
F 1 "GND" H 1400 650 50  0000 C CNN
F 2 "" H 1400 800 60  0000 C CNN
F 3 "" H 1400 800 60  0000 C CNN
	1    1400 800 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 566D6B89
P 1400 700
F 0 "#PWR017" H 1400 550 50  0001 C CNN
F 1 "VCC" H 1400 850 50  0000 C CNN
F 2 "" H 1400 700 60  0000 C CNN
F 3 "" H 1400 700 60  0000 C CNN
	1    1400 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 566D7862
P 1350 1600
F 0 "#PWR018" H 1350 1350 50  0001 C CNN
F 1 "GND" H 1350 1450 50  0000 C CNN
F 2 "" H 1350 1600 60  0000 C CNN
F 3 "" H 1350 1600 60  0000 C CNN
	1    1350 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 566D78BA
P 1350 1500
F 0 "#PWR019" H 1350 1350 50  0001 C CNN
F 1 "VCC" H 1350 1650 50  0000 C CNN
F 2 "" H 1350 1500 60  0000 C CNN
F 3 "" H 1350 1500 60  0000 C CNN
	1    1350 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 566D8864
P 7150 4600
F 0 "#PWR020" H 7150 4350 50  0001 C CNN
F 1 "GND" H 7150 4450 50  0000 C CNN
F 2 "" H 7150 4600 60  0000 C CNN
F 3 "" H 7150 4600 60  0000 C CNN
	1    7150 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 566D8F67
P 6250 3900
F 0 "#PWR021" H 6250 3750 50  0001 C CNN
F 1 "VCC" H 6250 4050 50  0000 C CNN
F 2 "" H 6250 3900 60  0000 C CNN
F 3 "" H 6250 3900 60  0000 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
Text Label 7100 3900 0    60   ~ 0
LE
Text Label 7100 4000 0    60   ~ 0
LD
Text Label 7100 4100 0    60   ~ 0
LC
Text Label 7100 4200 0    60   ~ 0
LB
Text Label 7100 4300 0    60   ~ 0
LA
Text Label 7100 4400 0    60   ~ 0
LG
Text Label 7100 4500 0    60   ~ 0
LF
Text Label 1750 2750 0    60   ~ 0
D1-A
Text Label 1750 2850 0    60   ~ 0
D1-B
Text Label 1750 2950 0    60   ~ 0
D1-C
Text Label 6300 4600 0    60   ~ 0
D1-A
Text Label 6300 4500 0    60   ~ 0
D1-B
Text Label 6300 4400 0    60   ~ 0
D1-C
$Comp
L CONN_02X08 P-LAMP2
U 1 1 566F09D1
P 6700 5300
F 0 "P-LAMP2" H 6700 5750 50  0000 C CNN
F 1 "CONN_02X08" V 6700 5300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 6700 4100 60  0001 C CNN
F 3 "" H 6700 4100 60  0000 C CNN
	1    6700 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 566F09D7
P 7150 5650
F 0 "#PWR022" H 7150 5400 50  0001 C CNN
F 1 "GND" H 7150 5500 50  0000 C CNN
F 2 "" H 7150 5650 60  0000 C CNN
F 3 "" H 7150 5650 60  0000 C CNN
	1    7150 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR023
U 1 1 566F09DD
P 6250 4950
F 0 "#PWR023" H 6250 4800 50  0001 C CNN
F 1 "VCC" H 6250 5100 50  0000 C CNN
F 2 "" H 6250 4950 60  0000 C CNN
F 3 "" H 6250 4950 60  0000 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
Text Label 7100 4950 0    60   ~ 0
LE
Text Label 7100 5050 0    60   ~ 0
LD
Text Label 7100 5150 0    60   ~ 0
LC
Text Label 7100 5250 0    60   ~ 0
LB
Text Label 7100 5350 0    60   ~ 0
LA
Text Label 7100 5450 0    60   ~ 0
LG
Text Label 7100 5550 0    60   ~ 0
LF
Text Label 6300 5650 0    60   ~ 0
D2-A
Text Label 6300 5550 0    60   ~ 0
D2-B
Text Label 6300 5450 0    60   ~ 0
D2-C
Text Label 1750 3050 0    60   ~ 0
D2-A
Text Label 1750 3150 0    60   ~ 0
D2-B
Text Label 1750 3250 0    60   ~ 0
D2-C
$Comp
L CONN_02X08 P-LAMP3
U 1 1 566E8DDF
P 7950 4250
F 0 "P-LAMP3" H 7950 4700 50  0000 C CNN
F 1 "CONN_02X08" V 7950 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 7950 3050 60  0001 C CNN
F 3 "" H 7950 3050 60  0000 C CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 566E8DE5
P 8400 4600
F 0 "#PWR024" H 8400 4350 50  0001 C CNN
F 1 "GND" H 8400 4450 50  0000 C CNN
F 2 "" H 8400 4600 60  0000 C CNN
F 3 "" H 8400 4600 60  0000 C CNN
	1    8400 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR025
U 1 1 566E8DEB
P 7500 3900
F 0 "#PWR025" H 7500 3750 50  0001 C CNN
F 1 "VCC" H 7500 4050 50  0000 C CNN
F 2 "" H 7500 3900 60  0000 C CNN
F 3 "" H 7500 3900 60  0000 C CNN
	1    7500 3900
	1    0    0    -1  
$EndComp
Text Label 8350 3900 0    60   ~ 0
LE
Text Label 8350 4000 0    60   ~ 0
LD
Text Label 8350 4100 0    60   ~ 0
LC
Text Label 8350 4200 0    60   ~ 0
LB
Text Label 8350 4300 0    60   ~ 0
LA
Text Label 8350 4400 0    60   ~ 0
LG
Text Label 8350 4500 0    60   ~ 0
LF
Text Label 7550 4600 0    60   ~ 0
D3-C
Text Label 7550 4500 0    60   ~ 0
D3-B
Text Label 7550 4400 0    60   ~ 0
D3-A
Text Label 1750 4150 0    60   ~ 0
D3-A
Text Label 1750 4250 0    60   ~ 0
D3-B
Text Label 1750 4350 0    60   ~ 0
D3-C
$Comp
L CONN_02X08 P-LAMP4
U 1 1 566EACF2
P 7950 5300
F 0 "P-LAMP4" H 7950 5750 50  0000 C CNN
F 1 "CONN_02X08" V 7950 5300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 7950 4100 60  0001 C CNN
F 3 "" H 7950 4100 60  0000 C CNN
	1    7950 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 566EACF8
P 8400 5650
F 0 "#PWR026" H 8400 5400 50  0001 C CNN
F 1 "GND" H 8400 5500 50  0000 C CNN
F 2 "" H 8400 5650 60  0000 C CNN
F 3 "" H 8400 5650 60  0000 C CNN
	1    8400 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 566EACFE
P 7500 4950
F 0 "#PWR027" H 7500 4800 50  0001 C CNN
F 1 "VCC" H 7500 5100 50  0000 C CNN
F 2 "" H 7500 4950 60  0000 C CNN
F 3 "" H 7500 4950 60  0000 C CNN
	1    7500 4950
	1    0    0    -1  
$EndComp
Text Label 8350 4950 0    60   ~ 0
LE
Text Label 8350 5050 0    60   ~ 0
LD
Text Label 8350 5150 0    60   ~ 0
LC
Text Label 8350 5250 0    60   ~ 0
LB
Text Label 8350 5350 0    60   ~ 0
LA
Text Label 8350 5450 0    60   ~ 0
LG
Text Label 8350 5550 0    60   ~ 0
LF
Wire Wire Line
	1800 650  3500 650 
Connection ~ 3050 650 
Connection ~ 3350 650 
Wire Wire Line
	2950 4650 3500 4650
Connection ~ 3050 4650
Connection ~ 3350 4650
Wire Wire Line
	1700 950  1900 950 
Connection ~ 2950 650 
Wire Wire Line
	1050 900  1150 900 
Connection ~ 1800 950 
Wire Wire Line
	1900 3750 1750 3750
Wire Wire Line
	1900 3650 1750 3650
Wire Wire Line
	4500 1950 4650 1950
Wire Wire Line
	4500 3850 4650 3850
Wire Wire Line
	4500 3950 4650 3950
Wire Wire Line
	1050 2850 1050 3000
Wire Wire Line
	850  2950 850  2850
Wire Wire Line
	1050 2450 1050 2350
Wire Wire Line
	850  2450 850  2350
Wire Wire Line
	700  2050 1150 2050
Connection ~ 1050 2050
Wire Wire Line
	4500 1850 4650 1850
Wire Wire Line
	4500 950  4850 950 
Wire Wire Line
	4500 1050 4850 1050
Wire Wire Line
	4500 1150 4850 1150
Wire Wire Line
	4500 1250 4850 1250
Wire Wire Line
	6150 900  6000 900 
Wire Wire Line
	6150 1000 6000 1000
Wire Wire Line
	6150 1100 6000 1100
Wire Wire Line
	6150 1200 6000 1200
Wire Wire Line
	5650 900  5550 900 
Wire Wire Line
	5650 1500 5550 1500
Wire Wire Line
	6150 1500 6150 1400
Wire Wire Line
	6150 1400 6000 1400
Wire Wire Line
	6150 1600 6000 1600
Wire Wire Line
	7250 900  7150 900 
Wire Wire Line
	7250 1000 7150 1000
Wire Wire Line
	7250 1100 7150 1100
Wire Wire Line
	7250 1200 7150 1200
Wire Wire Line
	7250 1300 7150 1300
Wire Wire Line
	7250 1400 7150 1400
Wire Wire Line
	7250 1500 7150 1500
Wire Wire Line
	7550 900  7600 900 
Wire Wire Line
	7550 1000 7600 1000
Wire Wire Line
	7550 1100 7600 1100
Wire Wire Line
	7550 1200 7600 1200
Wire Wire Line
	7550 1300 7600 1300
Wire Wire Line
	7550 1400 7600 1400
Wire Wire Line
	7550 1500 7600 1500
Wire Wire Line
	1050 4000 1050 4150
Wire Wire Line
	1050 3600 1050 3500
Wire Wire Line
	850  3600 850  3500
Wire Wire Line
	850  3200 1150 3200
Connection ~ 1050 3200
Wire Wire Line
	850  4000 850  4150
Wire Wire Line
	1050 1700 1200 1700
Wire Wire Line
	1050 1800 1200 1800
Wire Wire Line
	1050 1000 1150 1000
Wire Wire Line
	1050 1100 1150 1100
Wire Wire Line
	1050 1200 1150 1200
Wire Wire Line
	1450 5350 1500 5350
Wire Wire Line
	1500 5350 1500 5650
Wire Wire Line
	1500 5450 1450 5450
Wire Wire Line
	1450 5250 1550 5250
Wire Wire Line
	1850 5250 2250 5250
Connection ~ 2000 5250
Wire Wire Line
	1500 5650 2250 5650
Wire Wire Line
	2000 5550 2000 5800
Connection ~ 2000 5650
Connection ~ 1500 5450
Wire Wire Line
	2250 5450 2150 5450
Wire Wire Line
	2150 5450 2150 5650
Connection ~ 2150 5650
Wire Wire Line
	3550 5650 4350 5650
Wire Wire Line
	4250 5350 4500 5350
Wire Wire Line
	3250 5350 3650 5350
Connection ~ 3550 5350
Wire Wire Line
	3950 5700 3950 5650
Connection ~ 3950 5650
Wire Wire Line
	4350 5350 4350 5300
Wire Wire Line
	3250 5550 3450 5550
Wire Wire Line
	3450 5550 3450 5900
Wire Wire Line
	3450 5900 4500 5900
Wire Wire Line
	4500 5900 4500 5350
Connection ~ 4350 5350
Wire Wire Line
	700  2450 700  2950
Wire Wire Line
	700  2950 850  2950
Connection ~ 850  2050
Wire Wire Line
	5800 2800 6250 2800
Wire Wire Line
	5800 2700 6250 2700
Wire Wire Line
	5850 2300 6100 2300
Connection ~ 6000 2300
Wire Wire Line
	5850 2800 5850 2600
Wire Wire Line
	6000 2700 6000 2600
Wire Wire Line
	6650 3300 7350 3300
Wire Wire Line
	7050 2700 7150 2700
Wire Wire Line
	7150 2700 7150 2750
Wire Wire Line
	7050 3100 7150 3100
Wire Wire Line
	7150 3100 7150 3050
Wire Wire Line
	7350 3300 7350 2600
Connection ~ 6750 3300
Wire Wire Line
	7350 2500 7200 2500
Wire Wire Line
	6900 2500 6650 2500
Wire Wire Line
	6650 2500 6650 2400
Wire Wire Line
	6750 2100 6650 2100
Connection ~ 6000 2700
Connection ~ 5850 2800
Wire Wire Line
	4500 3650 4650 3650
Wire Wire Line
	4500 3750 4650 3750
Wire Wire Line
	1400 800  1050 800 
Wire Wire Line
	1400 700  1050 700 
Wire Wire Line
	1350 1500 1050 1500
Wire Wire Line
	1350 1600 1050 1600
Wire Wire Line
	7150 4600 6950 4600
Wire Wire Line
	6450 3900 6250 3900
Wire Wire Line
	6950 3900 7100 3900
Wire Wire Line
	6950 4000 7100 4000
Wire Wire Line
	6950 4100 7100 4100
Wire Wire Line
	6950 4200 7100 4200
Wire Wire Line
	6950 4300 7100 4300
Wire Wire Line
	6950 4400 7100 4400
Wire Wire Line
	6950 4500 7100 4500
Wire Wire Line
	1900 2750 1750 2750
Wire Wire Line
	1900 2850 1750 2850
Wire Wire Line
	1900 2950 1750 2950
Wire Wire Line
	6450 4600 6300 4600
Wire Wire Line
	6450 4500 6300 4500
Wire Wire Line
	6450 4400 6300 4400
Wire Wire Line
	7150 5650 6950 5650
Wire Wire Line
	6450 4950 6250 4950
Wire Wire Line
	6950 4950 7100 4950
Wire Wire Line
	6950 5050 7100 5050
Wire Wire Line
	6950 5150 7100 5150
Wire Wire Line
	6950 5250 7100 5250
Wire Wire Line
	6950 5350 7100 5350
Wire Wire Line
	6950 5450 7100 5450
Wire Wire Line
	6950 5550 7100 5550
Wire Wire Line
	6450 5650 6300 5650
Wire Wire Line
	6450 5550 6300 5550
Wire Wire Line
	6450 5450 6300 5450
Wire Wire Line
	1900 3050 1750 3050
Wire Wire Line
	1900 3150 1750 3150
Wire Wire Line
	1900 3250 1750 3250
Wire Wire Line
	8400 4600 8200 4600
Wire Wire Line
	7700 3900 7500 3900
Wire Wire Line
	8200 3900 8350 3900
Wire Wire Line
	8200 4000 8350 4000
Wire Wire Line
	8200 4100 8350 4100
Wire Wire Line
	8200 4200 8350 4200
Wire Wire Line
	8200 4300 8350 4300
Wire Wire Line
	8200 4400 8350 4400
Wire Wire Line
	8200 4500 8350 4500
Wire Wire Line
	7700 4600 7550 4600
Wire Wire Line
	7700 4500 7550 4500
Wire Wire Line
	7700 4400 7550 4400
Wire Wire Line
	1900 4150 1750 4150
Wire Wire Line
	1900 4250 1750 4250
Wire Wire Line
	1900 4350 1750 4350
Wire Wire Line
	8400 5650 8200 5650
Wire Wire Line
	7700 4950 7500 4950
Wire Wire Line
	8200 4950 8350 4950
Wire Wire Line
	8200 5050 8350 5050
Wire Wire Line
	8200 5150 8350 5150
Wire Wire Line
	8200 5250 8350 5250
Wire Wire Line
	8200 5350 8350 5350
Wire Wire Line
	8200 5450 8350 5450
Wire Wire Line
	8200 5550 8350 5550
Wire Wire Line
	7700 5650 7550 5650
Wire Wire Line
	7700 5450 7550 5450
Wire Wire Line
	4500 1350 4800 1350
Wire Wire Line
	4500 1450 4800 1450
Wire Wire Line
	4500 1550 4800 1550
Text Label 4800 1350 0    60   ~ 0
D4-A
Text Label 4800 1450 0    60   ~ 0
D4-B
Text Label 4800 1550 0    60   ~ 0
D4-C
Text Label 7550 5650 0    60   ~ 0
D4-A
Wire Wire Line
	7700 5550 7550 5550
Text Label 7550 5550 0    60   ~ 0
D4-B
Text Label 7550 5450 0    60   ~ 0
D4-C
$Comp
L CONN_02X08 P-LAMP5
U 1 1 566EFC90
P 6050 6300
F 0 "P-LAMP5" H 6050 6750 50  0000 C CNN
F 1 "CONN_02X08" V 6050 6300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 6050 5100 60  0001 C CNN
F 3 "" H 6050 5100 60  0000 C CNN
	1    6050 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 566EFC96
P 6500 6650
F 0 "#PWR028" H 6500 6400 50  0001 C CNN
F 1 "GND" H 6500 6500 50  0000 C CNN
F 2 "" H 6500 6650 60  0000 C CNN
F 3 "" H 6500 6650 60  0000 C CNN
	1    6500 6650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR029
U 1 1 566EFC9C
P 5600 5950
F 0 "#PWR029" H 5600 5800 50  0001 C CNN
F 1 "VCC" H 5600 6100 50  0000 C CNN
F 2 "" H 5600 5950 60  0000 C CNN
F 3 "" H 5600 5950 60  0000 C CNN
	1    5600 5950
	1    0    0    -1  
$EndComp
Text Label 6450 5950 0    60   ~ 0
LE
Text Label 6450 6050 0    60   ~ 0
LD
Text Label 6450 6150 0    60   ~ 0
LC
Text Label 6450 6250 0    60   ~ 0
LB
Text Label 6450 6350 0    60   ~ 0
LA
Text Label 6450 6450 0    60   ~ 0
LG
Text Label 6450 6550 0    60   ~ 0
LF
Wire Wire Line
	6500 6650 6300 6650
Wire Wire Line
	5800 5950 5600 5950
Wire Wire Line
	6300 5950 6450 5950
Wire Wire Line
	6300 6050 6450 6050
Wire Wire Line
	6300 6150 6450 6150
Wire Wire Line
	6300 6250 6450 6250
Wire Wire Line
	6300 6350 6450 6350
Wire Wire Line
	6300 6450 6450 6450
Wire Wire Line
	6300 6550 6450 6550
Wire Wire Line
	5800 6650 5650 6650
Wire Wire Line
	5800 6450 5650 6450
Wire Wire Line
	5800 6550 5650 6550
Wire Wire Line
	4500 1650 4800 1650
Text Label 4800 1650 0    60   ~ 0
D5-A
Wire Wire Line
	1900 2350 1750 2350
Text Label 1750 2350 0    60   ~ 0
D5-B
Wire Wire Line
	4500 3450 4650 3450
Text Label 4650 3450 0    60   ~ 0
D5-C
Text Label 5650 6650 0    60   ~ 0
D5-A
Text Label 5650 6550 0    60   ~ 0
D5-B
Text Label 5650 6450 0    60   ~ 0
D5-C
$Comp
L CONN_02X08 P-LAMP6
U 1 1 566F669A
P 4700 7000
F 0 "P-LAMP6" H 4700 7450 50  0000 C CNN
F 1 "CONN_02X08" V 4700 7000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 4700 5800 60  0001 C CNN
F 3 "" H 4700 5800 60  0000 C CNN
	1    4700 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 566F66A0
P 5150 7350
F 0 "#PWR030" H 5150 7100 50  0001 C CNN
F 1 "GND" H 5150 7200 50  0000 C CNN
F 2 "" H 5150 7350 60  0000 C CNN
F 3 "" H 5150 7350 60  0000 C CNN
	1    5150 7350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR031
U 1 1 566F66A6
P 4250 6650
F 0 "#PWR031" H 4250 6500 50  0001 C CNN
F 1 "VCC" H 4250 6800 50  0000 C CNN
F 2 "" H 4250 6650 60  0000 C CNN
F 3 "" H 4250 6650 60  0000 C CNN
	1    4250 6650
	1    0    0    -1  
$EndComp
Text Label 5100 6650 0    60   ~ 0
LE
Text Label 5100 6750 0    60   ~ 0
LD
Text Label 5100 6850 0    60   ~ 0
LC
Text Label 5100 6950 0    60   ~ 0
LB
Text Label 5100 7050 0    60   ~ 0
LA
Text Label 5100 7150 0    60   ~ 0
LG
Text Label 5100 7250 0    60   ~ 0
LF
Wire Wire Line
	5150 7350 4950 7350
Wire Wire Line
	4450 6650 4250 6650
Wire Wire Line
	4950 6650 5100 6650
Wire Wire Line
	4950 6750 5100 6750
Wire Wire Line
	4950 6850 5100 6850
Wire Wire Line
	4950 6950 5100 6950
Wire Wire Line
	4950 7050 5100 7050
Wire Wire Line
	4950 7150 5100 7150
Wire Wire Line
	4950 7250 5100 7250
Wire Wire Line
	4450 7350 4300 7350
Wire Wire Line
	4450 7150 4300 7150
Wire Wire Line
	4450 7250 4300 7250
Wire Wire Line
	4450 7050 4300 7050
Wire Wire Line
	4500 3350 4650 3350
Wire Wire Line
	4500 3250 4650 3250
Wire Wire Line
	4500 3150 4650 3150
Wire Wire Line
	4500 3050 4650 3050
Text Label 4650 3350 0    60   ~ 0
D6-A
Text Label 4650 3250 0    60   ~ 0
D6-B
Text Label 4650 3150 0    60   ~ 0
D6-C
Text Label 4650 3050 0    60   ~ 0
D6-D
Text Label 4300 7350 0    60   ~ 0
D6-A
Text Label 4300 7250 0    60   ~ 0
D6-B
Text Label 4300 7150 0    60   ~ 0
D6-C
Text Label 4300 7050 0    60   ~ 0
D6-D
$Comp
L CONN_02X08 P-LAMP7
U 1 1 566FA86B
P 3400 7000
F 0 "P-LAMP7" H 3400 7450 50  0000 C CNN
F 1 "CONN_02X08" V 3400 7000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 3400 5800 60  0001 C CNN
F 3 "" H 3400 5800 60  0000 C CNN
	1    3400 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 566FA871
P 3850 7350
F 0 "#PWR032" H 3850 7100 50  0001 C CNN
F 1 "GND" H 3850 7200 50  0000 C CNN
F 2 "" H 3850 7350 60  0000 C CNN
F 3 "" H 3850 7350 60  0000 C CNN
	1    3850 7350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR033
U 1 1 566FA877
P 2950 6650
F 0 "#PWR033" H 2950 6500 50  0001 C CNN
F 1 "VCC" H 2950 6800 50  0000 C CNN
F 2 "" H 2950 6650 60  0000 C CNN
F 3 "" H 2950 6650 60  0000 C CNN
	1    2950 6650
	1    0    0    -1  
$EndComp
Text Label 3800 6650 0    60   ~ 0
LE
Text Label 3800 6750 0    60   ~ 0
LD
Text Label 3800 6850 0    60   ~ 0
LC
Text Label 3800 6950 0    60   ~ 0
LB
Text Label 3800 7050 0    60   ~ 0
LA
Text Label 3800 7150 0    60   ~ 0
LG
Text Label 3800 7250 0    60   ~ 0
LF
Wire Wire Line
	3850 7350 3650 7350
Wire Wire Line
	3150 6650 2950 6650
Wire Wire Line
	3650 6650 3800 6650
Wire Wire Line
	3650 6750 3800 6750
Wire Wire Line
	3650 6850 3800 6850
Wire Wire Line
	3650 6950 3800 6950
Wire Wire Line
	3650 7050 3800 7050
Wire Wire Line
	3650 7150 3800 7150
Wire Wire Line
	3650 7250 3800 7250
Wire Wire Line
	3150 7350 3000 7350
Wire Wire Line
	3150 7150 3000 7150
Wire Wire Line
	3150 7250 3000 7250
Wire Wire Line
	3150 7050 3000 7050
Wire Wire Line
	4500 2950 4650 2950
Wire Wire Line
	4500 2850 4650 2850
Wire Wire Line
	4500 2750 4650 2750
Wire Wire Line
	1900 2250 1750 2250
Text Label 4650 2950 0    60   ~ 0
D7-A
Text Label 4650 2850 0    60   ~ 0
D7-B
Text Label 4650 2750 0    60   ~ 0
D7-C
Text Label 1750 2250 0    60   ~ 0
D7-D
Text Label 3000 7350 0    60   ~ 0
D7-A
Text Label 3000 7250 0    60   ~ 0
D7-B
Text Label 3000 7150 0    60   ~ 0
D7-C
Text Label 3000 7050 0    60   ~ 0
D7-D
$Comp
L CONN_02X08 P-LAMP8
U 1 1 566FE6F7
P 2150 6950
F 0 "P-LAMP8" H 2150 7400 50  0000 C CNN
F 1 "CONN_02X08" V 2150 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 2150 5750 60  0001 C CNN
F 3 "" H 2150 5750 60  0000 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 566FE6FD
P 2600 7300
F 0 "#PWR034" H 2600 7050 50  0001 C CNN
F 1 "GND" H 2600 7150 50  0000 C CNN
F 2 "" H 2600 7300 60  0000 C CNN
F 3 "" H 2600 7300 60  0000 C CNN
	1    2600 7300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR035
U 1 1 566FE703
P 1700 6600
F 0 "#PWR035" H 1700 6450 50  0001 C CNN
F 1 "VCC" H 1700 6750 50  0000 C CNN
F 2 "" H 1700 6600 60  0000 C CNN
F 3 "" H 1700 6600 60  0000 C CNN
	1    1700 6600
	1    0    0    -1  
$EndComp
Text Label 2550 6600 0    60   ~ 0
LE
Text Label 2550 6700 0    60   ~ 0
LD
Text Label 2550 6800 0    60   ~ 0
LC
Text Label 2550 6900 0    60   ~ 0
LB
Text Label 2550 7000 0    60   ~ 0
LA
Text Label 2550 7100 0    60   ~ 0
LG
Text Label 2550 7200 0    60   ~ 0
LF
Wire Wire Line
	2600 7300 2400 7300
Wire Wire Line
	1900 6600 1700 6600
Wire Wire Line
	2400 6600 2550 6600
Wire Wire Line
	2400 6700 2550 6700
Wire Wire Line
	2400 6800 2550 6800
Wire Wire Line
	2400 6900 2550 6900
Wire Wire Line
	2400 7000 2550 7000
Wire Wire Line
	2400 7100 2550 7100
Wire Wire Line
	2400 7200 2550 7200
Wire Wire Line
	1900 7300 1750 7300
Wire Wire Line
	1900 7100 1750 7100
Wire Wire Line
	1900 7200 1750 7200
Wire Wire Line
	1900 7000 1750 7000
Wire Wire Line
	4500 4050 4650 4050
Wire Wire Line
	4500 4150 4650 4150
Wire Wire Line
	4500 4250 4650 4250
Wire Wire Line
	4500 4350 4650 4350
Text Label 4650 4050 0    60   ~ 0
D8-A
Text Label 4650 4150 0    60   ~ 0
D8-B
Text Label 4650 4250 0    60   ~ 0
D8-C
Text Label 4650 4350 0    60   ~ 0
D8-D
Text Label 1750 7000 0    60   ~ 0
D8-A
Text Label 1750 7100 0    60   ~ 0
D8-B
Text Label 1750 7200 0    60   ~ 0
D8-C
Text Label 1750 7300 0    60   ~ 0
D8-D
$EndSCHEMATC