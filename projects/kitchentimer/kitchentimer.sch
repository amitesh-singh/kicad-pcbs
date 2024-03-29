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
LIBS:common_devices
LIBS:kitchentimer-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Kitchen Timer"
Date "2017-02-02"
Rev "0.1"
Comp "Amitesh Singh"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HC595 U5
U 1 1 58932E3F
P 8850 1700
F 0 "U5" V 8850 1000 50  0000 L CNN
F 1 "74HC595" V 8850 1500 50  0000 L CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3850 -1800 50  0001 C CNN
F 3 "" H 3850 -1800 50  0001 C CNN
	1    8850 1700
	0    1    1    0   
$EndComp
$Comp
L 74HC595 U4
U 1 1 58932F61
P 8750 3600
F 0 "U4" V 8750 2900 50  0000 L CNN
F 1 "74HC595" V 8750 3400 50  0000 L CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3750 100 50  0001 C CNN
F 3 "" H 3750 100 50  0001 C CNN
	1    8750 3600
	0    1    1    0   
$EndComp
$Comp
L 74HC595 U1
U 1 1 58932FE9
P 3800 4400
F 0 "U1" V 3800 3700 50  0000 L CNN
F 1 "74HC595" V 3800 4200 50  0000 L CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H -1200 900 50  0001 C CNN
F 3 "" H -1200 900 50  0001 C CNN
	1    3800 4400
	0    1    1    0   
$EndComp
$Comp
L 74HC595 U2
U 1 1 589330A6
P 5700 2650
F 0 "U2" V 5700 1900 50  0000 L CNN
F 1 "74HC595" V 5700 2450 50  0000 L CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 700 -850 50  0001 C CNN
F 3 "" H 700 -850 50  0001 C CNN
	1    5700 2650
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 589334E5
P 4150 1350
F 0 "#PWR01" H -600 -100 50  0001 C CNN
F 1 "VCC" H 4167 1523 50  0000 C CNN
F 2 "" H -600 50  50  0001 C CNN
F 3 "" H -600 50  50  0001 C CNN
	1    4150 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5893350D
P 4150 1400
F 0 "#PWR02" H -350 -200 50  0001 C CNN
F 1 "GND" H 4155 1227 50  0000 C CNN
F 2 "" H -350 50  50  0001 C CNN
F 3 "" H -350 50  50  0001 C CNN
	1    4150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58933588
P 4850 1950
F 0 "#PWR03" H 350 350 50  0001 C CNN
F 1 "GND" H 4855 1777 50  0000 C CNN
F 2 "" H 350 600 50  0001 C CNN
F 3 "" H 350 600 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
Text Label 5300 1300 0    60   ~ 0
MOSI
Text Label 5200 1300 3    60   ~ 0
MISO
Text Label 5100 1300 3    60   ~ 0
CLOCK
Text Label 5000 1300 3    60   ~ 0
LATCH
$Comp
L CONN_01X06 J1
U 1 1 58933857
P 5050 1100
F 0 "J1" V 5015 762 50  0000 R CNN
F 1 "CONN_01X06" V 4924 762 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H -200 0   50  0001 C CNN
F 3 "" H -200 0   50  0001 C CNN
	1    5050 1100
	0    -1   -1   0   
$EndComp
Text Label 5300 3750 1    60   ~ 0
MISO
Text Label 6150 1950 1    60   ~ 0
MOSI
Text Label 5950 1950 1    60   ~ 0
CLOCK
Text Label 5650 1950 1    60   ~ 0
LATCH
$Comp
L VCC #PWR04
U 1 1 58933E74
P 5850 1450
F 0 "#PWR04" H 1100 0   50  0001 C CNN
F 1 "VCC" H 5867 1623 50  0000 C CNN
F 2 "" H 1100 150 50  0001 C CNN
F 3 "" H 1100 150 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5893401C
P 3950 3400
F 0 "#PWR05" H -800 1950 50  0001 C CNN
F 1 "VCC" H 3967 3573 50  0000 C CNN
F 2 "" H -800 2100 50  0001 C CNN
F 3 "" H -800 2100 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58934087
P 3250 3700
F 0 "#PWR06" H -1250 2100 50  0001 C CNN
F 1 "GND" H 3255 3527 50  0000 C CNN
F 2 "" H -1250 2350 50  0001 C CNN
F 3 "" H -1250 2350 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
Text Label 4050 3700 1    60   ~ 0
CLOCK
Text Label 4250 3700 1    60   ~ 0
MOSI
Text Label 9200 2900 1    60   ~ 0
MOSI
Text Label 9000 2900 1    60   ~ 0
CLOCK
$Comp
L VCC #PWR07
U 1 1 5893450F
P 8900 2700
F 0 "#PWR07" H 4150 1250 50  0001 C CNN
F 1 "VCC" H 8917 2873 50  0000 C CNN
F 2 "" H 4150 1400 50  0001 C CNN
F 3 "" H 4150 1400 50  0001 C CNN
	1    8900 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58934586
P 8200 2900
F 0 "#PWR08" H 3700 1300 50  0001 C CNN
F 1 "GND" H 8205 2727 50  0000 C CNN
F 2 "" H 3700 1550 50  0001 C CNN
F 3 "" H 3700 1550 50  0001 C CNN
	1    8200 2900
	1    0    0    -1  
$EndComp
Text Label 9100 1000 1    60   ~ 0
CLOCK
$Comp
L VCC #PWR09
U 1 1 589346C9
P 9000 750
F 0 "#PWR09" H 4250 -700 50  0001 C CNN
F 1 "VCC" H 9017 923 50  0000 C CNN
F 2 "" H 4250 -550 50  0001 C CNN
F 3 "" H 4250 -550 50  0001 C CNN
	1    9000 750 
	1    0    0    -1  
$EndComp
NoConn ~ 5850 3350
NoConn ~ 5750 3350
NoConn ~ 5650 3350
NoConn ~ 5550 3350
NoConn ~ 5450 3350
NoConn ~ 5250 3350
NoConn ~ 3350 5100
NoConn ~ 8400 2400
$Comp
L 74LS165 U3
U 1 1 58934D73
P 5800 4450
F 0 "U3" V 5800 5250 50  0000 R CNN
F 1 "74HC165" V 5800 4600 50  0000 R CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 2750 3050 50  0001 C CNN
F 3 "" H 2750 3050 50  0001 C CNN
	1    5800 4450
	0    -1   -1   0   
$EndComp
Text Label 6300 5150 3    60   ~ 0
CLOCK
$Comp
L GND #PWR010
U 1 1 589350D8
P 6400 5400
F 0 "#PWR010" H 1900 3800 50  0001 C CNN
F 1 "GND" H 6405 5227 50  0000 C CNN
F 2 "" H 1900 4050 50  0001 C CNN
F 3 "" H 1900 4050 50  0001 C CNN
	1    6400 5400
	1    0    0    -1  
$EndComp
NoConn ~ 5200 5150
NoConn ~ 5400 3750
Text Notes 6650 4550 1    60   ~ 0
LATCH SWITCH
$Comp
L 7SEGMENTS AFF1
U 1 1 58935376
P 10500 1750
F 0 "AFF1" H 10500 2425 50  0000 C CNN
F 1 "7SEGMENTS" H 10500 2334 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 3350 -2800 50  0001 C CNN
F 3 "" H 3350 -2800 50  0001 C CNN
	1    10500 1750
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF2
U 1 1 589354A9
P 10550 3900
F 0 "AFF2" H 10550 4575 50  0000 C CNN
F 1 "7SEGMENTS" H 10550 4484 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 3400 -650 50  0001 C CNN
F 3 "" H 3400 -650 50  0001 C CNN
	1    10550 3900
	1    0    0    -1  
$EndComp
Text Label 9900 1350 2    60   ~ 0
seg0
Text Label 9900 1450 2    60   ~ 0
seg1
Text Label 9900 1550 2    60   ~ 0
seg2
Text Label 9900 1650 2    60   ~ 0
seg3
Text Label 9900 1750 2    60   ~ 0
seg4
Text Label 9900 1850 2    60   ~ 0
seg5
Text Label 9900 1950 2    60   ~ 0
seg6
Text Label 11100 2000 0    60   ~ 0
seg7
Text Label 9300 2400 3    60   ~ 0
seg0
Text Label 9200 2400 3    60   ~ 0
seg1
Text Label 9100 2400 3    60   ~ 0
seg2
Text Label 9000 2400 3    60   ~ 0
seg3
Text Label 8900 2400 3    60   ~ 0
seg4
Text Label 8800 2400 3    60   ~ 0
seg5
Text Label 8700 2400 3    60   ~ 0
seg6
Text Label 8600 2400 3    60   ~ 0
seg7
Entry Wire Line
	9650 1250 9750 1350
Entry Wire Line
	9650 1350 9750 1450
Entry Wire Line
	9650 1450 9750 1550
Entry Wire Line
	9650 1550 9750 1650
Entry Wire Line
	9650 1650 9750 1750
Entry Wire Line
	9650 1750 9750 1850
Entry Wire Line
	9650 1850 9750 1950
Entry Wire Line
	9200 2550 9300 2450
Entry Wire Line
	9100 2550 9200 2450
Entry Wire Line
	9000 2550 9100 2450
Entry Wire Line
	8900 2550 9000 2450
Entry Wire Line
	8800 2550 8900 2450
Entry Wire Line
	8700 2550 8800 2450
Entry Wire Line
	8600 2550 8700 2450
Entry Wire Line
	8500 2550 8600 2450
Entry Wire Line
	9700 3600 9800 3500
Entry Wire Line
	9700 3700 9800 3600
Entry Wire Line
	9700 3800 9800 3700
Entry Wire Line
	9700 3900 9800 3800
Entry Wire Line
	9700 4000 9800 3900
Entry Wire Line
	9700 4100 9800 4000
Entry Wire Line
	9700 4200 9800 4100
Entry Wire Line
	9700 4300 9800 4200
Entry Wire Line
	9650 2100 9750 2200
Entry Wire Line
	8400 4750 8500 4650
Entry Wire Line
	8500 4750 8600 4650
Entry Wire Line
	8600 4750 8700 4650
Entry Wire Line
	8700 4750 8800 4650
Entry Wire Line
	8800 4750 8900 4650
Entry Wire Line
	8900 4750 9000 4650
Entry Wire Line
	9000 4750 9100 4650
Entry Wire Line
	9100 4750 9200 4650
Text Label 9950 3500 0    60   ~ 0
seg1_0
Text Label 9950 3600 0    60   ~ 0
seg1_1
Text Label 9950 3700 0    60   ~ 0
seg1_2
Text Label 9950 3800 0    60   ~ 0
seg1_3
Text Label 9950 3900 0    60   ~ 0
seg1_4
Text Label 9950 4000 0    60   ~ 0
seg1_5
Text Label 9950 4100 0    60   ~ 0
seg1_6
Text Label 11150 4150 1    60   ~ 0
seg1_7
Text Label 9200 4300 1    60   ~ 0
seg1_0
Text Label 9100 4300 1    60   ~ 0
seg1_1
Text Label 9000 4300 1    60   ~ 0
seg1_2
Text Label 8900 4300 1    60   ~ 0
seg1_3
Text Label 8800 4300 1    60   ~ 0
seg1_4
Text Label 8700 4300 1    60   ~ 0
seg1_5
Text Label 8600 4300 1    60   ~ 0
seg1_6
Text Label 8500 4300 1    60   ~ 0
seg1_7
$Comp
L LED D6
U 1 1 58938088
P 2450 6050
F 0 "D6" V 2488 5933 50  0000 R CNN
F 1 "LED" V 2397 5933 50  0000 R CNN
F 2 "LEDs:LED_0805" H -1000 600 50  0001 C CNN
F 3 "" H -1000 600 50  0001 C CNN
	1    2450 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 5893811E
P 2450 5650
F 0 "R6" H 2550 5520 50  0000 R CNN
F 1 "R" H 2480 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -920 0   50  0001 C CNN
F 3 "" H -850 0   50  0001 C CNN
	1    2450 5650
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 589384FA
P 2300 5650
F 0 "R5" H 2400 5520 50  0000 R CNN
F 1 "R" H 2330 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -1070 0   50  0001 C CNN
F 3 "" H -1000 0   50  0001 C CNN
	1    2300 5650
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 58938531
P 2300 6050
F 0 "D5" V 2338 5933 50  0000 R CNN
F 1 "LED" V 2247 5933 50  0000 R CNN
F 2 "LEDs:LED_0805" H -1150 600 50  0001 C CNN
F 3 "" H -1150 600 50  0001 C CNN
	1    2300 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 58938567
P 2150 5650
F 0 "R4" H 2250 5520 50  0000 R CNN
F 1 "R" H 2170 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -1220 0   50  0001 C CNN
F 3 "" H -1150 0   50  0001 C CNN
	1    2150 5650
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 589385A0
P 2150 6050
F 0 "D4" V 2188 5933 50  0000 R CNN
F 1 "LED" V 2097 5933 50  0000 R CNN
F 2 "LEDs:LED_0805" H -1300 600 50  0001 C CNN
F 3 "" H -1300 600 50  0001 C CNN
	1    2150 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 589385DC
P 2000 5650
F 0 "R3" H 2110 5520 50  0000 R CNN
F 1 "R" H 2020 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -1370 0   50  0001 C CNN
F 3 "" H -1300 0   50  0001 C CNN
	1    2000 5650
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 5893861B
P 2000 6050
F 0 "D3" V 2038 5933 50  0000 R CNN
F 1 "LED" V 1947 5933 50  0000 R CNN
F 2 "LEDs:LED_0805" H -1450 600 50  0001 C CNN
F 3 "" H -1450 600 50  0001 C CNN
	1    2000 6050
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5893865D
P 1850 6050
F 0 "D2" V 1888 5933 50  0000 R CNN
F 1 "LED" V 1797 5933 50  0000 R CNN
F 2 "LEDs:LED_0805" H -1600 600 50  0001 C CNN
F 3 "" H -1600 600 50  0001 C CNN
	1    1850 6050
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 589386AA
P 1700 6050
F 0 "D1" V 1738 5933 50  0000 R CNN
F 1 "LED" V 1647 5933 50  0000 R CNN
F 2 "LEDs:LED_0805" H -1750 600 50  0001 C CNN
F 3 "" H -1750 600 50  0001 C CNN
	1    1700 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 589386F2
P 1850 5650
F 0 "R2" H 1960 5520 50  0000 R CNN
F 1 "R" H 1870 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -1520 0   50  0001 C CNN
F 3 "" H -1450 0   50  0001 C CNN
	1    1850 5650
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5893873D
P 1700 5650
F 0 "R1" H 1850 5600 50  0000 R CNN
F 1 "R" H 1730 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -1670 0   50  0001 C CNN
F 3 "" H -1600 0   50  0001 C CNN
	1    1700 5650
	-1   0    0    1   
$EndComp
Entry Wire Line
	4150 5300 4250 5200
Entry Wire Line
	4050 5300 4150 5200
Entry Wire Line
	3950 5300 4050 5200
Entry Wire Line
	3850 5300 3950 5200
Entry Wire Line
	3750 5300 3850 5200
Entry Wire Line
	3650 5300 3750 5200
Entry Wire Line
	1600 5300 1700 5400
Entry Wire Line
	1900 5300 2000 5400
Entry Wire Line
	2050 5300 2150 5400
Entry Wire Line
	2200 5300 2300 5400
Entry Wire Line
	2350 5300 2450 5400
Entry Wire Line
	1750 5300 1850 5400
$Comp
L GND #PWR011
U 1 1 58938C81
P 2450 6550
F 0 "#PWR011" H -2050 4950 50  0001 C CNN
F 1 "GND" H 2455 6377 50  0000 C CNN
F 2 "" H -2050 5200 50  0001 C CNN
F 3 "" H -2050 5200 50  0001 C CNN
	1    2450 6550
	1    0    0    -1  
$EndComp
Text Label 4250 5100 1    60   ~ 0
led0
Text Label 4150 5100 1    60   ~ 0
led1
Text Label 4050 5100 1    60   ~ 0
led2
Text Label 3950 5100 1    60   ~ 0
led3
Text Label 3850 5100 1    60   ~ 0
led4
Text Label 3750 5100 1    60   ~ 0
led5
Text Label 2450 5500 1    60   ~ 0
led0
Text Label 2300 5500 1    60   ~ 0
led1
Text Label 2150 5500 1    60   ~ 0
led2
Text Label 2000 5500 1    60   ~ 0
led3
Text Label 1850 5500 1    60   ~ 0
led4
Text Label 1700 5500 1    60   ~ 0
led5
NoConn ~ 6000 5150
NoConn ~ 3550 5100
NoConn ~ 3650 5100
$Comp
L PWR_FLAG #FLG012
U 1 1 5893AC14
P 4500 1200
F 0 "#FLG012" H 4550 1250 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 1374 50  0000 C CNN
F 2 "" H -5350 500 50  0001 C CNN
F 3 "" H -5350 500 50  0001 C CNN
	1    4500 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5893AD66
P 8350 1000
F 0 "#PWR013" H 3850 -600 50  0001 C CNN
F 1 "GND" H 8355 827 50  0000 C CNN
F 2 "" H 3850 -350 50  0001 C CNN
F 3 "" H 3850 -350 50  0001 C CNN
	1    8350 1000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 5893B069
P 4500 1550
F 0 "#FLG014" H 4550 1600 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 1723 50  0000 C CNN
F 2 "" H -5350 850 50  0001 C CNN
F 3 "" H -5350 850 50  0001 C CNN
	1    4500 1550
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR015
U 1 1 5893B5F9
P 11100 1550
F 0 "#PWR015" H 6350 100 50  0001 C CNN
F 1 "VCC" H 11118 1723 50  0000 C CNN
F 2 "" H 6350 250 50  0001 C CNN
F 3 "" H 6350 250 50  0001 C CNN
	1    11100 1550
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR016
U 1 1 5893B690
P 11150 3650
F 0 "#PWR016" H 6400 2200 50  0001 C CNN
F 1 "VCC" H 11168 3823 50  0000 C CNN
F 2 "" H 6400 2350 50  0001 C CNN
F 3 "" H 6400 2350 50  0001 C CNN
	1    11150 3650
	-1   0    0    1   
$EndComp
$Comp
L SWITCH SW1
U 1 1 5893CBEC
P 4950 5900
F 0 "SW1" V 4650 5850 60  0000 L CNN
F 1 "SWITCH" H 5250 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1550 3450 60  0001 C CNN
F 3 "" H 1550 3450 60  0000 C CNN
	1    4950 5900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR019
U 1 1 5893CF83
P 4500 6250
F 0 "#PWR019" H -250 4800 50  0001 C CNN
F 1 "VCC" H 4518 6423 50  0000 C CNN
F 2 "" H -250 4950 50  0001 C CNN
F 3 "" H -250 4950 50  0001 C CNN
	1    4500 6250
	0    -1   1    0   
$EndComp
$Comp
L R R7
U 1 1 5893D2B9
P 4650 5750
F 0 "R7" H 4720 5796 50  0000 L CNN
F 1 "R" H 4720 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -70 -200 50  0001 C CNN
F 3 "" H 0   -200 50  0001 C CNN
	1    4650 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5893D365
P 3500 6150
F 0 "#PWR020" H -1000 4550 50  0001 C CNN
F 1 "GND" H 3505 5977 50  0000 C CNN
F 2 "" H -1000 4800 50  0001 C CNN
F 3 "" H -1000 4800 50  0001 C CNN
	1    3500 6150
	1    0    0    -1  
$EndComp
$Comp
L SWITCH SW2
U 1 1 5893DC49
P 5100 5900
F 0 "SW2" V 4800 5850 60  0000 L CNN
F 1 "SWITCH" H 5400 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1700 3450 60  0001 C CNN
F 3 "" H 1700 3450 60  0000 C CNN
	1    5100 5900
	0    1    1    0   
$EndComp
$Comp
L SWITCH SW3
U 1 1 5893DCA3
P 5250 5900
F 0 "SW3" V 4950 5850 60  0000 L CNN
F 1 "SWITCH" H 5550 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1850 3450 60  0001 C CNN
F 3 "" H 1850 3450 60  0000 C CNN
	1    5250 5900
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5893DD1B
P 4300 5750
F 0 "R9" H 4370 5796 50  0000 L CNN
F 1 "R" H 4370 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -420 -200 50  0001 C CNN
F 3 "" H -350 -200 50  0001 C CNN
	1    4300 5750
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5893DD7F
P 4150 5750
F 0 "R10" H 4220 5796 50  0000 L CNN
F 1 "R" H 4220 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -570 -200 50  0001 C CNN
F 3 "" H -500 -200 50  0001 C CNN
	1    4150 5750
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5893DE3F
P 4000 5750
F 0 "R11" H 4070 5796 50  0000 L CNN
F 1 "R" H 4070 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -720 -200 50  0001 C CNN
F 3 "" H -650 -200 50  0001 C CNN
	1    4000 5750
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5893DEA5
P 3850 5750
F 0 "R12" H 3920 5796 50  0000 L CNN
F 1 "R" H 3920 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -870 -200 50  0001 C CNN
F 3 "" H -800 -200 50  0001 C CNN
	1    3850 5750
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5893DF0E
P 3700 5750
F 0 "R13" H 3770 5796 50  0000 L CNN
F 1 "R" H 3770 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V -1020 -200 50  0001 C CNN
F 3 "" H -950 -200 50  0001 C CNN
	1    3700 5750
	1    0    0    -1  
$EndComp
$Comp
L SWITCH SW4
U 1 1 5893DF7A
P 5400 5900
F 0 "SW4" V 5100 5850 60  0000 L CNN
F 1 "SWITCH" H 5700 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2000 3450 60  0001 C CNN
F 3 "" H 2000 3450 60  0000 C CNN
	1    5400 5900
	0    1    1    0   
$EndComp
$Comp
L SWITCH SW5
U 1 1 5893DFE9
P 5550 5900
F 0 "SW5" V 5250 5850 60  0000 L CNN
F 1 "SWITCH" H 5850 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2150 3450 60  0001 C CNN
F 3 "" H 2150 3450 60  0000 C CNN
	1    5550 5900
	0    1    1    0   
$EndComp
$Comp
L SWITCH SW6
U 1 1 5893E05F
P 5700 5900
F 0 "SW6" V 5400 5850 60  0000 L CNN
F 1 "SWITCH" H 6000 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2300 3450 60  0001 C CNN
F 3 "" H 2300 3450 60  0000 C CNN
	1    5700 5900
	0    1    1    0   
$EndComp
$Comp
L SWITCH SW7
U 1 1 5893E143
P 5850 5900
F 0 "SW7" V 5550 5850 60  0000 L CNN
F 1 "SWITCH" H 6150 5900 60  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2450 3450 60  0001 C CNN
F 3 "" H 2450 3450 60  0000 C CNN
	1    5850 5900
	0    1    1    0   
$EndComp
Text Notes 3100 4900 1    60   ~ 0
Button LED Controller
Text Notes 5450 4350 0    60   ~ 0
Button Controller
Text Notes 8000 4150 1    60   ~ 0
Segment Controller 1
Text Notes 8100 2200 1    60   ~ 0
Segment Controller 2
Text Notes 4900 3000 1    60   ~ 0
Latch Controller
Text Notes 4550 3450 0    60   ~ 0
LATCH LED
Text Notes 6750 2750 0    60   ~ 0
LATCH SEGMENT
Wire Wire Line
	4150 1350 4800 1350
Wire Wire Line
	4800 1350 4800 1300
Wire Wire Line
	4150 1400 4900 1400
Wire Wire Line
	4900 1400 4900 1300
Wire Wire Line
	4850 1950 5550 1950
Wire Wire Line
	5850 1450 5850 1950
Wire Wire Line
	3750 3500 3750 3700
Wire Wire Line
	3250 3700 3650 3700
Wire Wire Line
	3950 3700 3950 3400
Wire Wire Line
	6050 3500 6050 3350
Wire Wire Line
	3750 3500 6050 3500
Wire Wire Line
	8700 2800 8700 2900
Wire Wire Line
	6350 2800 8700 2800
Wire Wire Line
	6350 2800 6350 3650
Wire Wire Line
	6350 3650 5950 3650
Wire Wire Line
	5950 3650 5950 3350
Wire Wire Line
	8900 2700 8900 2900
Wire Wire Line
	8200 2900 8600 2900
Wire Wire Line
	9000 750  9000 1000
Wire Wire Line
	8300 4300 8300 4600
Wire Wire Line
	8300 4600 9600 4600
Wire Wire Line
	9600 4600 9600 800 
Wire Wire Line
	9600 800  9300 800 
Wire Wire Line
	9300 800  9300 1000
Wire Wire Line
	8800 1000 8800 800 
Wire Wire Line
	8800 800  7750 800 
Wire Wire Line
	7750 800  7750 2800
Connection ~ 7750 2800
Wire Wire Line
	6150 5150 6150 5250
Wire Wire Line
	6150 5250 6550 5250
Wire Wire Line
	6550 5250 6550 3350
Wire Wire Line
	6550 3350 6150 3350
Wire Wire Line
	6400 5150 6400 5400
Wire Wire Line
	9750 1350 9900 1350
Wire Wire Line
	9750 1450 9900 1450
Wire Bus Line
	9650 2550 8450 2550
Wire Wire Line
	8600 2400 8600 2450
Wire Wire Line
	8700 2400 8700 2450
Wire Wire Line
	8800 2400 8800 2450
Wire Wire Line
	8900 2400 8900 2450
Wire Wire Line
	9000 2400 9000 2450
Wire Wire Line
	9100 2400 9100 2450
Wire Wire Line
	9200 2400 9200 2450
Wire Wire Line
	9300 2400 9300 2450
Wire Bus Line
	9650 1000 9650 2550
Wire Bus Line
	9700 4750 9700 3200
Wire Bus Line
	8300 4750 9700 4750
Wire Wire Line
	9750 2200 11100 2200
Wire Wire Line
	11100 2200 11100 2000
Wire Wire Line
	9750 1550 9900 1550
Wire Wire Line
	9750 1650 9900 1650
Wire Wire Line
	9750 1750 9900 1750
Wire Wire Line
	9750 1850 9900 1850
Wire Wire Line
	9750 1950 9900 1950
Wire Wire Line
	8500 4300 8500 4650
Wire Wire Line
	8600 4300 8600 4650
Wire Wire Line
	8700 4300 8700 4650
Wire Wire Line
	8800 4300 8800 4650
Wire Wire Line
	8900 4300 8900 4650
Wire Wire Line
	9000 4300 9000 4650
Wire Wire Line
	9100 4300 9100 4650
Wire Wire Line
	9200 4300 9200 4650
Wire Wire Line
	9800 3500 9950 3500
Wire Wire Line
	9800 3600 9950 3600
Wire Wire Line
	9800 3700 9950 3700
Wire Wire Line
	9800 3800 9950 3800
Wire Wire Line
	9800 3900 9950 3900
Wire Wire Line
	9800 4000 9950 4000
Wire Wire Line
	9800 4100 9950 4100
Wire Wire Line
	9800 4200 10100 4200
Wire Wire Line
	10100 4200 10100 4350
Wire Wire Line
	10100 4350 11150 4350
Wire Wire Line
	11150 4350 11150 4150
Wire Bus Line
	1200 5300 4400 5300
Wire Wire Line
	1700 5400 1700 5500
Wire Wire Line
	1850 5400 1850 5500
Wire Wire Line
	2000 5400 2000 5500
Wire Wire Line
	2150 5400 2150 5500
Wire Wire Line
	2300 5400 2300 5500
Wire Wire Line
	2450 5400 2450 5500
Wire Wire Line
	2450 6200 2450 6550
Wire Wire Line
	2300 6200 2300 6250
Wire Wire Line
	2300 6250 2450 6250
Connection ~ 2450 6250
Wire Wire Line
	2150 6200 2150 6300
Wire Wire Line
	2150 6300 2450 6300
Connection ~ 2450 6300
Wire Wire Line
	2000 6200 2000 6350
Wire Wire Line
	2000 6350 2450 6350
Connection ~ 2450 6350
Wire Wire Line
	1850 6200 1850 6400
Wire Wire Line
	1850 6400 2450 6400
Connection ~ 2450 6400
Wire Wire Line
	1700 6200 1700 6450
Wire Wire Line
	1700 6450 2450 6450
Connection ~ 2450 6450
Wire Wire Line
	1700 5800 1700 5900
Wire Wire Line
	1850 5800 1850 5900
Wire Wire Line
	2000 5800 2000 5900
Wire Wire Line
	2150 5800 2150 5900
Wire Wire Line
	2300 5800 2300 5900
Wire Wire Line
	2450 5800 2450 5900
Wire Wire Line
	3750 5100 3750 5200
Wire Wire Line
	3850 5100 3850 5200
Wire Wire Line
	3950 5100 3950 5200
Wire Wire Line
	4050 5100 4050 5200
Wire Wire Line
	4150 5100 4150 5200
Wire Wire Line
	4250 5100 4250 5200
Wire Wire Line
	8350 1000 8700 1000
Wire Wire Line
	4500 1550 4500 1400
Connection ~ 4500 1400
Wire Wire Line
	4500 1200 4500 1350
Connection ~ 4500 1350
Wire Wire Line
	11150 3550 11150 3650
Wire Wire Line
	11100 1400 11100 1550
Wire Wire Line
	5300 5150 5300 5200
Wire Wire Line
	5300 5200 4950 5200
Wire Wire Line
	4950 5200 4950 5700
Wire Wire Line
	5400 5150 5400 5220
Wire Wire Line
	5400 5220 5100 5220
Wire Wire Line
	5100 5220 5100 5700
Wire Wire Line
	5500 5150 5500 5240
Wire Wire Line
	5500 5240 5250 5240
Wire Wire Line
	5250 5240 5250 5700
Wire Wire Line
	5600 5150 5600 5260
Wire Wire Line
	5600 5260 5400 5260
Wire Wire Line
	5400 5260 5400 5700
Wire Wire Line
	5700 5150 5700 5310
Wire Wire Line
	5700 5310 5550 5310
Wire Wire Line
	5550 5310 5550 5700
Wire Wire Line
	5800 5150 5800 5340
Wire Wire Line
	5800 5340 5700 5340
Wire Wire Line
	5700 5340 5700 5700
Wire Wire Line
	4500 6250 5850 6250
Wire Wire Line
	4950 6250 4950 6100
Wire Wire Line
	5100 6250 5100 6100
Connection ~ 4950 6250
Wire Wire Line
	5250 6250 5250 6100
Connection ~ 5100 6250
Wire Wire Line
	5400 6250 5400 6100
Connection ~ 5250 6250
Wire Wire Line
	5550 6250 5550 6100
Connection ~ 5400 6250
Wire Wire Line
	5700 6250 5700 6100
Connection ~ 5550 6250
Wire Wire Line
	5850 6250 5850 6100
Connection ~ 5700 6250
Wire Wire Line
	4950 5590 4950 5580
Connection ~ 4950 5600
Wire Wire Line
	3500 6150 4650 6150
Wire Wire Line
	4650 6150 4650 5900
Wire Wire Line
	3700 5900 3700 6150
Connection ~ 3700 6150
Wire Wire Line
	3850 5900 3850 6150
Connection ~ 3850 6150
Wire Wire Line
	4000 5900 4000 6150
Connection ~ 4000 6150
Wire Wire Line
	4150 5900 4150 6150
Connection ~ 4150 6150
Wire Wire Line
	4300 5900 4300 6150
Connection ~ 4300 6150
Wire Wire Line
	4650 5600 4950 5600
Wire Wire Line
	4300 5600 4300 5550
Wire Wire Line
	4300 5550 5100 5550
Connection ~ 5100 5550
Wire Wire Line
	4000 5450 4000 5600
Wire Wire Line
	3850 5400 3850 5600
Connection ~ 5400 5450
Connection ~ 5250 5500
Wire Wire Line
	4150 5600 4150 5500
Wire Wire Line
	4150 5500 5250 5500
Wire Wire Line
	4000 5450 5400 5450
Wire Wire Line
	3850 5400 5550 5400
Connection ~ 5550 5400
Wire Wire Line
	3700 5600 3700 5350
Wire Wire Line
	3700 5350 5700 5350
Connection ~ 5700 5350
Wire Wire Line
	5900 5150 5900 5700
Wire Wire Line
	5900 5700 5850 5700
$Comp
L R R14
U 1 1 5893FD84
P 6250 5750
F 0 "R14" H 6320 5796 50  0000 L CNN
F 1 "R" H 6320 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1530 -200 50  0001 C CNN
F 3 "" H 1600 -200 50  0001 C CNN
	1    6250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5600 5900 5600
Connection ~ 5900 5600
Wire Wire Line
	6250 5900 6250 6600
Wire Wire Line
	6250 6600 3550 6600
Wire Wire Line
	3550 6600 3550 6150
Connection ~ 3550 6150
Text Notes 8100 5100 0    60   ~ 0
TODO: use Transistors to drive LEDs.\n\n74hc595 won't be enough.\n
NoConn ~ 11150 3450
NoConn ~ 11100 1300
$EndSCHEMATC
