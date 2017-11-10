EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:multisheet-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "multisheet example"
Date "2017-11-10"
Rev "r0.1"
Comp "Amitesh Singh"
Comment1 "Shows how to do multisheet"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1200 1150 1700 750 
U 5A05955B
F0 "power-sheet" 60
F1 "power.sch" 60
F2 "Vcc" I R 2900 1450 60 
F3 "Gnd" I R 2900 1650 60 
$EndSheet
$Comp
L R R1
U 1 1 5A0595FE
P 3250 1450
F 0 "R1" V 3330 1450 50  0000 C CNN
F 1 "R" V 3250 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 1450 50  0001 C CNN
F 3 "" H 3250 1450 50  0001 C CNN
	1    3250 1450
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5A05A83C
P 3210 1650
F 0 "D1" H 3210 1750 50  0000 C CNN
F 1 "LED" H 3210 1550 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 3210 1650 50  0001 C CNN
F 3 "" H 3210 1650 50  0001 C CNN
	1    3210 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1450 3100 1450
Wire Wire Line
	3400 1450 3455 1450
Wire Wire Line
	3455 1450 3455 1650
Wire Wire Line
	3455 1650 3360 1650
Wire Wire Line
	2900 1650 3060 1650
Text Notes 1715 1530 0    60   ~ 0
Power Sheet\n
Wire Notes Line
	985  950  985  2070
Wire Notes Line
	985  2070 3010 2070
Wire Notes Line
	3010 2070 3010 950 
Wire Notes Line
	3010 950  985  950 
$EndSCHEMATC
