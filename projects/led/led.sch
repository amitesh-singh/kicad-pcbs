EESchema Schematic File Version 2
LIBS:power
LIBS:MyLibrary
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
LIBS:led-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED Boarrd"
Date "2016-10-23"
Rev "0.1"
Comp "Amitesh Singh "
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 59FF13BA
P 5375 2575
F 0 "D1" H 5375 2675 50  0000 C CNN
F 1 "LED" H 5375 2475 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 5375 2575 50  0001 C CNN
F 3 "" H 5375 2575 50  0000 C CNN
	1    5375 2575
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59FF1465
P 5025 2575
F 0 "R1" V 5105 2575 50  0000 C CNN
F 1 "R" V 5025 2575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4955 2575 50  0001 C CNN
F 3 "" H 5025 2575 50  0000 C CNN
	1    5025 2575
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 59FF1494
P 5225 3125
F 0 "J1" H 5225 3225 50  0000 C CNN
F 1 "Conn_01x02" H 5225 2925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 5225 3125 50  0001 C CNN
F 3 "" H 5225 3125 50  0001 C CNN
	1    5225 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	4875 2925 5125 2925
Wire Wire Line
	4875 2575 4875 2925
Wire Wire Line
	5575 2575 5575 2925
Wire Wire Line
	5575 2925 5225 2925
$Comp
L PWR_FLAG #FLG01
U 1 1 59FF15E9
P 5400 3025
F 0 "#FLG01" H 5400 3100 50  0001 C CNN
F 1 "PWR_FLAG" H 5400 3175 50  0000 C CNN
F 2 "" H 5400 3025 50  0001 C CNN
F 3 "" H 5400 3025 50  0001 C CNN
	1    5400 3025
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 3025 5400 2925
Connection ~ 5400 2925
$Comp
L PWR_FLAG #FLG02
U 1 1 59FF161F
P 4925 3025
F 0 "#FLG02" H 4925 3100 50  0001 C CNN
F 1 "PWR_FLAG" H 4925 3175 50  0000 C CNN
F 2 "" H 4925 3025 50  0001 C CNN
F 3 "" H 4925 3025 50  0001 C CNN
	1    4925 3025
	-1   0    0    1   
$EndComp
Wire Wire Line
	4925 3025 4925 2925
Connection ~ 4925 2925
$Comp
L VCC #PWR03
U 1 1 59FF1754
P 4050 2700
F 0 "#PWR03" H 4050 2550 50  0001 C CNN
F 1 "VCC" H 4050 2850 50  0000 C CNN
F 2 "" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0001 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59FF176E
P 4275 2725
F 0 "#PWR04" H 4275 2475 50  0001 C CNN
F 1 "GND" H 4275 2575 50  0000 C CNN
F 2 "" H 4275 2725 50  0001 C CNN
F 3 "" H 4275 2725 50  0001 C CNN
	1    4275 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4275 2650 4275 2725
Text Label 5125 2925 0    60   ~ 0
GND
Text Label 5225 2925 0    60   ~ 0
VCC
$EndSCHEMATC
