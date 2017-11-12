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
LIBS:AMS1117-3V3
LIBS:common_devices
LIBS:ESP8266
LIBS:bboard_3rows
LIBS:bboard_2rows
LIBS:breadboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "ami's breadboard"
Date "2017-11-12"
Rev "r1"
Comp "Amitesh Singh"
Comment1 "Breadboard PCB for esp12e"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Barrel_Jack J49
U 1 1 5A055AEF
P 5325 4175
F 0 "J49" H 5325 4385 50  0000 C CNN
F 1 "Barrel_Jack" H 5325 4000 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 5375 4135 50  0001 C CNN
F 3 "" H 5375 4135 50  0001 C CNN
	1    5325 4175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A055BF4
P 5750 4300
F 0 "#PWR01" H 5750 4050 50  0001 C CNN
F 1 "GND" H 5750 4150 50  0000 C CNN
F 2 "" H 5750 4300 50  0001 C CNN
F 3 "" H 5750 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5A049614
P 1125 7500
F 0 "#PWR02" H 1125 7350 50  0001 C CNN
F 1 "VCC" H 1125 7650 50  0000 C CNN
F 2 "" H 1125 7500 50  0001 C CNN
F 3 "" H 1125 7500 50  0001 C CNN
	1    1125 7500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 5A049D6F
P 725 7500
F 0 "#PWR03" H 725 7250 50  0001 C CNN
F 1 "GND" H 725 7350 50  0000 C CNN
F 2 "" H 725 7500 50  0001 C CNN
F 3 "" H 725 7500 50  0001 C CNN
	1    725  7500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A04A257
P 5750 4075
F 0 "#PWR04" H 5750 3925 50  0001 C CNN
F 1 "VCC" H 5750 4225 50  0000 C CNN
F 2 "" H 5750 4075 50  0001 C CNN
F 3 "" H 5750 4075 50  0001 C CNN
	1    5750 4075
	1    0    0    -1  
$EndComp
$Comp
L L7805 U2
U 1 1 5A04E21A
P 7575 4050
F 0 "U2" H 7425 4175 50  0000 C CNN
F 1 "L7805" H 7575 4175 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 7600 3900 50  0001 L CIN
F 3 "" H 7575 4000 50  0001 C CNN
	1    7575 4050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5A04E4E5
P 7075 4050
F 0 "#PWR05" H 7075 3900 50  0001 C CNN
F 1 "VCC" H 7075 4200 50  0000 C CNN
F 2 "" H 7075 4050 50  0001 C CNN
F 3 "" H 7075 4050 50  0001 C CNN
	1    7075 4050
	-1   0    0    1   
$EndComp
Text Label 7875 4050 0    60   ~ 0
V5v
$Comp
L GND #PWR06
U 1 1 5A04E9FD
P 7575 4475
F 0 "#PWR06" H 7575 4225 50  0001 C CNN
F 1 "GND" H 7575 4325 50  0000 C CNN
F 2 "" H 7575 4475 50  0001 C CNN
F 3 "" H 7575 4475 50  0001 C CNN
	1    7575 4475
	1    0    0    -1  
$EndComp
$Comp
L AMS1117-3V3 U1
U 1 1 5A04EE2F
P 8575 3950
F 0 "U1" H 8675 3700 50  0000 C CNN
F 1 "AMS1117-3V3" H 8575 4200 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8575 3950 50  0001 C CNN
F 3 "" H 8675 3700 50  0000 C CNN
F 4 "LM1117 800-mA Low-Dropout Linear Regulator" H 8975 4000 61  0001 C CNN "DESC"
F 5 "Texas Instruments" H 8775 3800 61  0001 C CNN "MFG_NAME"
F 6 "LM1117" H 8875 3900 61  0001 C CNN "MPN"
	1    8575 3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5A04F07D
P 8150 3950
F 0 "#PWR07" H 8150 3800 50  0001 C CNN
F 1 "VCC" H 8150 4100 50  0000 C CNN
F 2 "" H 8150 3950 50  0001 C CNN
F 3 "" H 8150 3950 50  0001 C CNN
	1    8150 3950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 5A04F653
P 8575 4525
F 0 "#PWR08" H 8575 4275 50  0001 C CNN
F 1 "GND" H 8575 4375 50  0000 C CNN
F 2 "" H 8575 4525 50  0001 C CNN
F 3 "" H 8575 4525 50  0001 C CNN
	1    8575 4525
	1    0    0    -1  
$EndComp
NoConn ~ 8875 3850
$Comp
L GND #PWR09
U 1 1 5A05925D
P 3775 550
F 0 "#PWR09" H 3775 300 50  0001 C CNN
F 1 "GND" H 3775 400 50  0000 C CNN
F 2 "" H 3775 550 50  0001 C CNN
F 3 "" H 3775 550 50  0001 C CNN
	1    3775 550 
	0    -1   -1   0   
$EndComp
Text Label 3675 875  0    60   ~ 0
V5v
$Comp
L GND #PWR010
U 1 1 5A05A9F6
P 7150 900
F 0 "#PWR010" H 7150 650 50  0001 C CNN
F 1 "GND" H 7150 750 50  0000 C CNN
F 2 "" H 7150 900 50  0001 C CNN
F 3 "" H 7150 900 50  0001 C CNN
	1    7150 900 
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 5A05E403
P 8225 4275
F 0 "C1" H 8250 4375 50  0000 L CNN
F 1 "C" H 8250 4175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8263 4125 50  0001 C CNN
F 3 "" H 8225 4275 50  0001 C CNN
	1    8225 4275
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A05EC1D
P 7200 4275
F 0 "C3" H 7225 4375 50  0000 L CNN
F 1 "C" H 7225 4175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7238 4125 50  0001 C CNN
F 3 "" H 7200 4275 50  0001 C CNN
	1    7200 4275
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A05F1F0
P 8875 4300
F 0 "C2" H 8900 4400 50  0000 L CNN
F 1 "C" H 8900 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8913 4150 50  0001 C CNN
F 3 "" H 8875 4300 50  0001 C CNN
	1    8875 4300
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5A05F6E8
P 7900 4325
F 0 "C4" H 7925 4425 50  0000 L CNN
F 1 "C" H 7925 4225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7938 4175 50  0001 C CNN
F 3 "" H 7900 4325 50  0001 C CNN
	1    7900 4325
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 5A08250B
P 1125 7500
F 0 "#FLG011" H 1125 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 1125 7650 50  0000 C CNN
F 2 "" H 1125 7500 50  0001 C CNN
F 3 "" H 1125 7500 50  0001 C CNN
	1    1125 7500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG012
U 1 1 5A08254B
P 725 7500
F 0 "#FLG012" H 725 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 725 7650 50  0000 C CNN
F 2 "" H 725 7500 50  0001 C CNN
F 3 "" H 725 7500 50  0001 C CNN
	1    725  7500
	1    0    0    -1  
$EndComp
$Sheet
S 9150 2525 1850 600 
U 5A0821A6
F0 "breadboard_3rows_sheet" 60
F1 "breadboard_3rows_sheet.sch" 60
$EndSheet
Text Notes 9675 2850 0    60   ~ 0
breadboard 3 rows\n
$Sheet
S 9175 3375 1875 725 
U 5A0858EE
F0 "esp12e" 60
F1 "esp12e.sch" 60
$EndSheet
Text Notes 9850 3775 0    60   ~ 0
esp12e board\n
$Comp
L Conn_01x30 J5
U 1 1 5A0895FE
P 2300 750
F 0 "J5" H 2300 2250 50  0000 C CNN
F 1 "Conn_01x30" H 2300 -850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x30_Pitch2.54mm" H 2300 750 50  0001 C CNN
F 3 "" H 2300 750 50  0001 C CNN
	1    2300 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4175 5750 4300
Wire Wire Line
	5750 4175 5625 4175
Wire Wire Line
	5750 4075 5625 4075
Wire Wire Line
	5625 4275 5750 4275
Connection ~ 5750 4275
Wire Wire Line
	7075 4050 7275 4050
Wire Wire Line
	7575 4350 7575 4475
Wire Wire Line
	8150 3950 8275 3950
Wire Wire Line
	8225 4125 8225 3950
Connection ~ 8225 3950
Wire Wire Line
	8225 4425 8675 4425
Wire Wire Line
	8575 4250 8575 4525
Connection ~ 8575 4425
Wire Wire Line
	7200 4125 7200 4050
Connection ~ 7200 4050
Wire Wire Line
	7200 4425 7650 4425
Connection ~ 7575 4425
Wire Wire Line
	8875 4450 8675 4450
Wire Wire Line
	8675 4450 8675 4425
Wire Wire Line
	7875 4050 7875 4175
Wire Wire Line
	7875 4175 7900 4175
Wire Wire Line
	7900 4475 7650 4475
Wire Wire Line
	7650 4475 7650 4425
Connection ~ 900  550 
Connection ~ 1000 550 
Connection ~ 1100 550 
Connection ~ 1200 550 
Connection ~ 1300 550 
Connection ~ 1400 550 
Connection ~ 1500 550 
Connection ~ 1800 550 
Connection ~ 2300 550 
Connection ~ 2400 550 
Connection ~ 2500 550 
Connection ~ 2600 550 
Connection ~ 2700 550 
Connection ~ 2800 550 
Connection ~ 2900 550 
Connection ~ 3000 550 
Connection ~ 3100 550 
Connection ~ 3200 550 
Connection ~ 3300 550 
Connection ~ 3400 550 
Connection ~ 3500 550 
Connection ~ 3600 550 
Connection ~ 1600 550 
Connection ~ 1900 550 
Connection ~ 2000 550 
Connection ~ 2200 550 
Connection ~ 2100 550 
Wire Wire Line
	800  550  3775 550 
Wire Wire Line
	1700 550  1800 550 
Connection ~ 1700 550 
$Comp
L Conn_01x30 J4
U 1 1 5A08BB84
P 2275 1075
F 0 "J4" H 2275 2575 50  0000 C CNN
F 1 "Conn_01x30" H 2275 -525 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x30_Pitch2.54mm" H 2275 1075 50  0001 C CNN
F 3 "" H 2275 1075 50  0001 C CNN
	1    2275 1075
	0    1    1    0   
$EndComp
Connection ~ 875  875 
Connection ~ 975  875 
Connection ~ 1075 875 
Connection ~ 1175 875 
Connection ~ 1275 875 
Connection ~ 1375 875 
Connection ~ 1475 875 
Connection ~ 1775 875 
Connection ~ 2275 875 
Connection ~ 2375 875 
Connection ~ 2475 875 
Connection ~ 2575 875 
Connection ~ 2675 875 
Connection ~ 2775 875 
Connection ~ 2875 875 
Connection ~ 2975 875 
Connection ~ 3075 875 
Connection ~ 3175 875 
Connection ~ 3275 875 
Connection ~ 3375 875 
Connection ~ 3475 875 
Connection ~ 3575 875 
Connection ~ 1575 875 
Connection ~ 1875 875 
Connection ~ 1975 875 
Connection ~ 2175 875 
Connection ~ 2075 875 
Wire Wire Line
	775  875  3675 875 
Wire Wire Line
	1675 875  1775 875 
Connection ~ 1675 875 
$Comp
L Conn_01x30 J6
U 1 1 5A08BD83
P 5725 750
F 0 "J6" H 5725 2250 50  0000 C CNN
F 1 "Conn_01x30" H 5725 -850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x30_Pitch2.54mm" H 5725 750 50  0001 C CNN
F 3 "" H 5725 750 50  0001 C CNN
	1    5725 750 
	0    1    1    0   
$EndComp
Connection ~ 4325 550 
Connection ~ 4425 550 
Connection ~ 4525 550 
Connection ~ 4625 550 
Connection ~ 4725 550 
Connection ~ 4825 550 
Connection ~ 4925 550 
Connection ~ 5225 550 
Connection ~ 5725 550 
Connection ~ 5825 550 
Connection ~ 5925 550 
Connection ~ 6025 550 
Connection ~ 6125 550 
Connection ~ 6225 550 
Connection ~ 6325 550 
Connection ~ 6425 550 
Connection ~ 6525 550 
Connection ~ 6625 550 
Connection ~ 6725 550 
Connection ~ 6825 550 
Connection ~ 6925 550 
Connection ~ 7025 550 
Connection ~ 5025 550 
Connection ~ 5325 550 
Connection ~ 5425 550 
Connection ~ 5625 550 
Connection ~ 5525 550 
Wire Wire Line
	4225 550  7275 550 
Wire Wire Line
	5125 550  5225 550 
Connection ~ 5125 550 
$Comp
L Conn_01x30 J7
U 1 1 5A08BE33
P 5750 1100
F 0 "J7" H 5750 2600 50  0000 C CNN
F 1 "Conn_01x30" H 5750 -500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x30_Pitch2.54mm" H 5750 1100 50  0001 C CNN
F 3 "" H 5750 1100 50  0001 C CNN
	1    5750 1100
	0    1    1    0   
$EndComp
Connection ~ 4350 900 
Connection ~ 4450 900 
Connection ~ 4550 900 
Connection ~ 4650 900 
Connection ~ 4750 900 
Connection ~ 4850 900 
Connection ~ 4950 900 
Connection ~ 5250 900 
Connection ~ 5750 900 
Connection ~ 5850 900 
Connection ~ 5950 900 
Connection ~ 6050 900 
Connection ~ 6150 900 
Connection ~ 6250 900 
Connection ~ 6350 900 
Connection ~ 6450 900 
Connection ~ 6550 900 
Connection ~ 6650 900 
Connection ~ 6750 900 
Connection ~ 6850 900 
Connection ~ 6950 900 
Connection ~ 7050 900 
Connection ~ 5050 900 
Connection ~ 5350 900 
Connection ~ 5450 900 
Connection ~ 5650 900 
Connection ~ 5550 900 
Wire Wire Line
	4250 900  7150 900 
Wire Wire Line
	5150 900  5250 900 
Connection ~ 5150 900 
Connection ~ 3700 550 
Wire Wire Line
	8875 4150 8875 4025
Text GLabel 7275 550  2    60   Input ~ 0
V3.3v
Wire Wire Line
	8875 4025 9025 4025
Wire Wire Line
	9025 4025 9025 3800
Connection ~ 9025 3950
Connection ~ 7125 550 
Wire Wire Line
	9025 3950 8875 3950
Text GLabel 9025 3800 1    60   Input ~ 0
V3.3v
$EndSCHEMATC
