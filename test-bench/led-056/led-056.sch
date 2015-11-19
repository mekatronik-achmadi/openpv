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
LIBS:SparkFun
LIBS:45xx
LIBS:led-056-cache
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
L 4511D IC1
U 1 1 564D33A1
P 3950 2800
F 0 "IC1" H 3650 3225 50  0000 L BNN
F 1 "4511D" H 3650 2200 50  0000 L BNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3980 2950 20  0001 C CNN
F 3 "" H 3950 2800 60  0000 C CNN
	1    3950 2800
	1    0    0    -1  
$EndComp
$Comp
L 4511D IC1
U 2 1 564D3427
P 3950 2100
F 0 "IC1" H 3650 2525 50  0000 L BNN
F 1 "4511D" H 3650 1500 50  0000 L BNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3980 2250 20  0001 C CNN
F 3 "" H 3950 2100 60  0000 C CNN
	2    3950 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 564D3720
P 3600 2100
F 0 "#PWR01" H 3600 1850 50  0001 C CNN
F 1 "GND" H 3600 1950 50  0000 C CNN
F 2 "" H 3600 2100 60  0000 C CNN
F 3 "" H 3600 2100 60  0000 C CNN
	1    3600 2100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 564D3738
P 4350 2100
F 0 "#PWR02" H 4350 1950 50  0001 C CNN
F 1 "VCC" H 4350 2250 50  0000 C CNN
F 2 "" H 4350 2100 60  0000 C CNN
F 3 "" H 4350 2100 60  0000 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 564D3839
P 3350 3200
F 0 "#PWR03" H 3350 2950 50  0001 C CNN
F 1 "GND" H 3350 3050 50  0000 C CNN
F 2 "" H 3350 3200 60  0000 C CNN
F 3 "" H 3350 3200 60  0000 C CNN
	1    3350 3200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 564D3851
P 3350 3000
F 0 "#PWR04" H 3350 2850 50  0001 C CNN
F 1 "VCC" H 3350 3150 50  0000 C CNN
F 2 "" H 3350 3000 60  0000 C CNN
F 3 "" H 3350 3000 60  0000 C CNN
	1    3350 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P1
U 1 1 564D39C0
P 2800 2700
F 0 "P1" H 2800 3000 50  0000 C CNN
F 1 "CONN_02X05" H 2800 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 2800 1500 60  0001 C CNN
F 3 "" H 2800 1500 60  0000 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 564D3A26
P 2400 2500
F 0 "#PWR05" H 2400 2350 50  0001 C CNN
F 1 "VCC" H 2400 2650 50  0000 C CNN
F 2 "" H 2400 2500 60  0000 C CNN
F 3 "" H 2400 2500 60  0000 C CNN
	1    2400 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 564D3A40
P 3150 2900
F 0 "#PWR06" H 3150 2650 50  0001 C CNN
F 1 "GND" H 3150 2750 50  0000 C CNN
F 2 "" H 3150 2900 60  0000 C CNN
F 3 "" H 3150 2900 60  0000 C CNN
	1    3150 2900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 564D46A4
P 4700 2500
F 0 "R1" V 4780 2500 50  0000 C CNN
F 1 "R" V 4700 2500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 2500 30  0001 C CNN
F 3 "" H 4700 2500 30  0000 C CNN
	1    4700 2500
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 564D474D
P 4700 2600
F 0 "R2" V 4780 2600 50  0000 C CNN
F 1 "R" V 4700 2600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 2600 30  0001 C CNN
F 3 "" H 4700 2600 30  0000 C CNN
	1    4700 2600
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 564D4798
P 4700 2700
F 0 "R3" V 4780 2700 50  0000 C CNN
F 1 "R" V 4700 2700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 2700 30  0001 C CNN
F 3 "" H 4700 2700 30  0000 C CNN
	1    4700 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 564D479E
P 4700 2800
F 0 "R4" V 4780 2800 50  0000 C CNN
F 1 "R" V 4700 2800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 2800 30  0001 C CNN
F 3 "" H 4700 2800 30  0000 C CNN
	1    4700 2800
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 564D4812
P 4700 2900
F 0 "R5" V 4780 2900 50  0000 C CNN
F 1 "R" V 4700 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 2900 30  0001 C CNN
F 3 "" H 4700 2900 30  0000 C CNN
	1    4700 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 564D4818
P 4700 3000
F 0 "R6" V 4780 3000 50  0000 C CNN
F 1 "R" V 4700 3000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 3000 30  0001 C CNN
F 3 "" H 4700 3000 30  0000 C CNN
	1    4700 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 564D481E
P 4700 3100
F 0 "R7" V 4780 3100 50  0000 C CNN
F 1 "R" V 4700 3100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4630 3100 30  0001 C CNN
F 3 "" H 4700 3100 30  0000 C CNN
	1    4700 3100
	0    -1   -1   0   
$EndComp
$Comp
L 7SEGMENTS AFF1
U 1 1 564D4EC8
P 7400 2900
F 0 "AFF1" H 7400 3450 60  0000 C CNN
F 1 "7SEGMENTS" H 7400 2450 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 7400 2900 60  0001 C CNN
F 3 "" H 7400 2900 60  0000 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF2
U 1 1 564D4FFD
P 7400 3950
F 0 "AFF2" H 7400 4500 60  0000 C CNN
F 1 "7SEGMENTS" H 7400 3500 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 7400 3950 60  0001 C CNN
F 3 "" H 7400 3950 60  0000 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF3
U 1 1 564D5202
P 7400 5000
F 0 "AFF3" H 7400 5550 60  0000 C CNN
F 1 "7SEGMENTS" H 7400 4550 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 7400 5000 60  0001 C CNN
F 3 "" H 7400 5000 60  0000 C CNN
	1    7400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2100 4250 2100
Wire Wire Line
	3650 2100 3600 2100
Wire Wire Line
	3450 3000 3350 3000
Wire Wire Line
	3450 3100 3350 3100
Wire Wire Line
	3350 3100 3350 3000
Wire Wire Line
	3450 3200 3350 3200
Wire Wire Line
	3150 2900 3050 2900
Wire Wire Line
	2550 2500 2400 2500
Wire Wire Line
	3450 2500 3050 2500
Wire Wire Line
	3450 2600 3050 2600
Wire Wire Line
	3450 2700 3050 2700
Wire Wire Line
	3450 2800 3050 2800
Wire Wire Line
	4450 2500 4550 2500
Wire Wire Line
	4450 2600 4550 2600
Wire Wire Line
	4450 2700 4550 2700
Wire Wire Line
	4450 2800 4550 2800
Wire Wire Line
	4450 2900 4550 2900
Wire Wire Line
	4450 3000 4550 3000
Wire Wire Line
	4450 3100 4550 3100
Wire Wire Line
	4850 2500 6800 2500
Wire Wire Line
	4850 2600 6800 2600
Wire Wire Line
	4850 2700 6800 2700
Wire Wire Line
	4850 2800 6800 2800
Wire Wire Line
	4850 2900 6800 2900
Wire Wire Line
	4850 3000 6800 3000
Wire Wire Line
	4850 3100 6800 3100
Wire Wire Line
	6800 4150 4900 4150
Wire Wire Line
	4900 4150 4900 3100
Connection ~ 4900 3100
Wire Wire Line
	6800 4050 4950 4050
Wire Wire Line
	4950 4050 4950 3000
Connection ~ 4950 3000
Wire Wire Line
	6800 3950 5000 3950
Wire Wire Line
	5000 3950 5000 2900
Connection ~ 5000 2900
Wire Wire Line
	6800 3850 5050 3850
Wire Wire Line
	5050 3850 5050 2800
Connection ~ 5050 2800
Wire Wire Line
	6800 3750 5100 3750
Wire Wire Line
	5100 3750 5100 2700
Connection ~ 5100 2700
Wire Wire Line
	5150 3650 6800 3650
Wire Wire Line
	5150 2600 5150 3650
Connection ~ 5150 2600
Wire Wire Line
	6800 3550 5200 3550
Wire Wire Line
	5200 3550 5200 2500
Connection ~ 5200 2500
Wire Wire Line
	6800 5200 5300 5200
Wire Wire Line
	5300 5200 5300 4150
Connection ~ 5300 4150
Wire Wire Line
	6800 5100 5350 5100
Wire Wire Line
	5350 5100 5350 4050
Connection ~ 5350 4050
Wire Wire Line
	6800 5000 5400 5000
Wire Wire Line
	5400 5000 5400 3950
Connection ~ 5400 3950
Wire Wire Line
	6800 4900 5450 4900
Wire Wire Line
	5450 4900 5450 3850
Connection ~ 5450 3850
Wire Wire Line
	6800 4800 5500 4800
Wire Wire Line
	5500 4800 5500 3750
Connection ~ 5500 3750
Wire Wire Line
	6800 4700 5550 4700
Wire Wire Line
	5550 4700 5550 3650
Connection ~ 5550 3650
Wire Wire Line
	6800 4600 5600 4600
Wire Wire Line
	5600 4600 5600 3550
Connection ~ 5600 3550
Wire Wire Line
	8000 2450 8000 2550
Wire Wire Line
	8000 3500 8000 3600
Wire Wire Line
	8000 4550 8000 4650
$Comp
L PC817 U1
U 1 1 564D7C50
P 8400 2650
F 0 "U1" H 8200 2850 50  0000 L CNN
F 1 "PC817" H 8400 2850 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 8200 2450 50  0000 L CIN
F 3 "" H 8400 2650 50  0000 L CNN
	1    8400 2650
	-1   0    0    -1  
$EndComp
$Comp
L PC817 U2
U 1 1 564D7DD3
P 8400 3700
F 0 "U2" H 8200 3900 50  0000 L CNN
F 1 "PC817" H 8400 3900 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 8200 3500 50  0000 L CIN
F 3 "" H 8400 3700 50  0000 L CNN
	1    8400 3700
	-1   0    0    -1  
$EndComp
$Comp
L PC817 U3
U 1 1 564D7E5B
P 8400 4750
F 0 "U3" H 8200 4950 50  0000 L CNN
F 1 "PC817" H 8400 4950 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 8200 4550 50  0000 L CIN
F 3 "" H 8400 4750 50  0000 L CNN
	1    8400 4750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 564D805A
P 8100 3950
F 0 "#PWR07" H 8100 3700 50  0001 C CNN
F 1 "GND" H 8100 3800 50  0000 C CNN
F 2 "" H 8100 3950 60  0000 C CNN
F 3 "" H 8100 3950 60  0000 C CNN
	1    8100 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 564D816E
P 8100 2900
F 0 "#PWR08" H 8100 2650 50  0001 C CNN
F 1 "GND" H 8100 2750 50  0000 C CNN
F 2 "" H 8100 2900 60  0000 C CNN
F 3 "" H 8100 2900 60  0000 C CNN
	1    8100 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 564D82D2
P 8100 5000
F 0 "#PWR09" H 8100 4750 50  0001 C CNN
F 1 "GND" H 8100 4850 50  0000 C CNN
F 2 "" H 8100 5000 60  0000 C CNN
F 3 "" H 8100 5000 60  0000 C CNN
	1    8100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2550 8100 2550
Wire Wire Line
	8100 2750 8100 2900
Wire Wire Line
	8000 3600 8100 3600
Wire Wire Line
	8100 3800 8100 3950
Wire Wire Line
	8000 4650 8100 4650
Wire Wire Line
	8100 4850 8100 5000
$Comp
L VCC #PWR010
U 1 1 564D9D3E
P 8900 2550
F 0 "#PWR010" H 8900 2400 50  0001 C CNN
F 1 "VCC" H 8900 2700 50  0000 C CNN
F 2 "" H 8900 2550 60  0000 C CNN
F 3 "" H 8900 2550 60  0000 C CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2550 8900 2550
Wire Wire Line
	8700 3600 8900 3600
Wire Wire Line
	8900 2550 8900 4650
Wire Wire Line
	8900 4650 8700 4650
Connection ~ 8900 3600
Wire Wire Line
	8700 2750 9050 2750
Wire Wire Line
	8700 3800 9100 3800
Wire Wire Line
	8700 4850 9100 4850
Wire Wire Line
	2550 2600 2400 2600
Wire Wire Line
	2550 2700 2400 2700
Wire Wire Line
	2550 2800 2400 2800
Wire Wire Line
	2550 2900 2400 2900
Text Label 2400 2600 0    60   ~ 0
P1
Text Label 2400 2700 0    60   ~ 0
P2
Text Label 2400 2800 0    60   ~ 0
P3
Text Label 9050 2750 0    60   ~ 0
P1
Text Label 9100 3800 0    60   ~ 0
P2
Text Label 9100 4850 0    60   ~ 0
P3
$EndSCHEMATC
