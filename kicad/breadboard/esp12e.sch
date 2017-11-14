EESchema Schematic File Version 2
LIBS:ac-dc
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:Battery_Management
LIBS:bbd
LIBS:Bosch
LIBS:brooktre
LIBS:Connector
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:Diode
LIBS:Display
LIBS:driver_gate
LIBS:dsp
LIBS:DSP_Microchip_DSPIC33
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ESP8266
LIBS:Espressif
LIBS:FPGA_Actel
LIBS:ftdi
LIBS:gennum
LIBS:Graphic
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:LED
LIBS:LEM
LIBS:linear
LIBS:Logic_74xgxx
LIBS:Logic_74xx
LIBS:Logic_CMOS_4000
LIBS:Logic_CMOS_IEEE
LIBS:logic_programmable
LIBS:Logic_TTL_IEEE
LIBS:maxim
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:memory
LIBS:microchip
LIBS:microcontrollers
LIBS:modules
LIBS:Motor
LIBS:motor_drivers
LIBS:motorola
LIBS:nordicsemi
LIBS:nxp
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:Relay
LIBS:rfcom
LIBS:RFSolutions
LIBS:Sensor_Current
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:supertex
LIBS:Switch
LIBS:texas
LIBS:Transformer
LIBS:Transistor
LIBS:triac_thyristor
LIBS:Valve
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:common_devices
LIBS:digital_logic
LIBS:MyLibrary
LIBS:st7735_lcd_breakout
LIBS:AMS1117-3V3
LIBS:breadboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Conn_01x08 J1
U 1 1 5A08614A
P 4400 3425
F 0 "J1" H 4400 3825 50  0000 C CNN
F 1 "Conn_01x08" H 4400 2925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm_SMD_Pin1Right" H 4400 3425 50  0001 C CNN
F 3 "" H 4400 3425 50  0001 C CNN
	1    4400 3425
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x08 J3
U 1 1 5A086151
P 7350 3525
F 0 "J3" H 7350 3925 50  0000 C CNN
F 1 "Conn_01x08" H 7350 3025 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm_SMD_Pin1Right" H 7350 3525 50  0001 C CNN
F 3 "" H 7350 3525 50  0001 C CNN
	1    7350 3525
	1    0    0    1   
$EndComp
$Comp
L C C5
U 1 1 5A086166
P 4900 4175
F 0 "C5" H 4925 4275 50  0000 L CNN
F 1 "C" H 4925 4075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 4025 50  0001 C CNN
F 3 "" H 4900 4175 50  0001 C CNN
	1    4900 4175
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A08616D
P 4600 4175
F 0 "R1" V 4680 4175 50  0000 C CNN
F 1 "10k" V 4600 4175 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4530 4175 50  0001 C CNN
F 3 "" H 4600 4175 50  0001 C CNN
	1    4600 4175
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5A08617A
P 7050 2725
F 0 "R3" V 7130 2725 50  0000 C CNN
F 1 "10k" V 7050 2725 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6980 2725 50  0001 C CNN
F 3 "" H 7050 2725 50  0001 C CNN
	1    7050 2725
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5A086181
P 6700 2825
F 0 "R2" V 6780 2825 50  0000 C CNN
F 1 "10k" V 6700 2825 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6630 2825 50  0001 C CNN
F 3 "" H 6700 2825 50  0001 C CNN
	1    6700 2825
	1    0    0    -1  
$EndComp
$Comp
L SWITCH SW2
U 1 1 5A086188
P 6650 4525
F 0 "SW2" H 6650 4775 60  0000 C CNN
F 1 "SWITCH" H 6650 4675 60  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 6650 4525 60  0001 C CNN
F 3 "" H 6650 4525 60  0000 C CNN
	1    6650 4525
	1    0    0    -1  
$EndComp
$Comp
L SWITCH SW1
U 1 1 5A086195
P 5050 4525
F 0 "SW1" H 5050 4775 60  0000 C CNN
F 1 "SWITCH" H 5050 4675 60  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 5050 4525 60  0001 C CNN
F 3 "" H 5050 4525 60  0000 C CNN
	1    5050 4525
	1    0    0    -1  
$EndComp
$Comp
L ESP-12E U3
U 1 1 5A08619C
P 5800 3425
F 0 "U3" H 5800 3325 50  0000 C CNN
F 1 "ESP-12E" H 5800 3525 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 5800 3425 50  0001 C CNN
F 3 "" H 5800 3425 50  0001 C CNN
	1    5800 3425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A086174
P 5250 4525
F 0 "#PWR013" H 5250 4275 50  0001 C CNN
F 1 "GND" H 5250 4375 50  0000 C CNN
F 2 "" H 5250 4525 50  0001 C CNN
F 3 "" H 5250 4525 50  0001 C CNN
	1    5250 4525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A08618F
P 6850 4525
F 0 "#PWR014" H 6850 4275 50  0001 C CNN
F 1 "GND" H 6850 4375 50  0000 C CNN
F 2 "" H 6850 4525 50  0001 C CNN
F 3 "" H 6850 4525 50  0001 C CNN
	1    6850 4525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5A086160
P 6900 3975
F 0 "#PWR015" H 6900 3725 50  0001 C CNN
F 1 "GND" H 6900 3825 50  0000 C CNN
F 2 "" H 6900 3975 50  0001 C CNN
F 3 "" H 6900 3975 50  0001 C CNN
	1    6900 3975
	1    0    0    -1  
$EndComp
NoConn ~ 5550 4325
NoConn ~ 5650 4325
NoConn ~ 5750 4325
NoConn ~ 5850 4325
NoConn ~ 5950 4325
NoConn ~ 6050 4325
Text GLabel 4275 4150 0    60   Input ~ 0
V3.3v
Text Label 6700 3125 0    39   ~ 0
TXD
Text Label 6700 3225 0    39   ~ 0
RXD
Text Label 6700 3325 0    39   ~ 0
GPIO5
Text Label 6700 3425 0    39   ~ 0
GPIO4
Text Label 6700 3525 0    39   ~ 0
GPIO0
Text Label 6700 3725 0    39   ~ 0
GPIO15
Text Label 6700 3625 0    39   ~ 0
GPIO2
Text Label 4900 3125 0    39   ~ 0
RST
Text Label 4900 3225 0    39   ~ 0
ADC
Text Label 4900 3325 0    39   ~ 0
CH_PD
Text Label 4900 3425 0    39   ~ 0
GPIO16
Text Label 4900 3525 0    39   ~ 0
GPIO14
Text Label 4900 3625 0    39   ~ 0
GPIO12
Text Label 4900 3725 0    39   ~ 0
GPIO13
$Comp
L R R4
U 1 1 5A0AD662
P 4655 2635
F 0 "R4" V 4735 2635 50  0000 C CNN
F 1 "R" V 4655 2635 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4585 2635 50  0001 C CNN
F 3 "" H 4655 2635 50  0001 C CNN
	1    4655 2635
	-1   0    0    1   
$EndComp
Text GLabel 4655 2485 1    60   Input ~ 0
V3.3v
$Comp
L R R5
U 1 1 5A0AE1A4
P 7320 4045
F 0 "R5" V 7400 4045 50  0000 C CNN
F 1 "R" V 7320 4045 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7250 4045 50  0001 C CNN
F 3 "" H 7320 4045 50  0001 C CNN
	1    7320 4045
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3125 4900 3125
Wire Wire Line
	4600 3225 4900 3225
Wire Wire Line
	4600 3325 4900 3325
Wire Wire Line
	4600 3525 4900 3525
Wire Wire Line
	4600 3425 4900 3425
Wire Wire Line
	4600 3625 4900 3625
Wire Wire Line
	4600 3725 4900 3725
Wire Wire Line
	4600 3825 4900 3825
Wire Wire Line
	6700 3125 7150 3125
Wire Wire Line
	6700 3225 7150 3225
Wire Wire Line
	6700 3325 7150 3325
Wire Wire Line
	6700 3425 7150 3425
Wire Wire Line
	6700 3525 7150 3525
Wire Wire Line
	6700 3625 7150 3625
Wire Wire Line
	6700 3725 7150 3725
Wire Wire Line
	6700 3825 7150 3825
Wire Wire Line
	4750 4175 4750 3825
Connection ~ 4750 3825
Wire Wire Line
	5050 4175 6750 4175
Wire Wire Line
	6750 4175 6750 3825
Connection ~ 6750 3825
Wire Wire Line
	4600 4025 4600 3925
Wire Wire Line
	4600 3925 4650 3925
Wire Wire Line
	4650 3925 4650 3825
Connection ~ 4650 3825
Wire Wire Line
	4600 4425 4600 4325
Wire Wire Line
	3900 4425 4600 4425
Wire Wire Line
	3900 4425 3900 3425
Wire Wire Line
	3900 3425 4300 3425
Wire Wire Line
	4300 3425 4300 2875
Wire Wire Line
	4300 2875 4700 2875
Wire Wire Line
	4700 2875 4700 3125
Connection ~ 4700 3125
Wire Wire Line
	4300 4425 4300 4525
Wire Wire Line
	4300 4525 4850 4525
Connection ~ 4300 4425
Wire Wire Line
	6900 2725 6900 3525
Connection ~ 6900 3525
Wire Wire Line
	7200 2725 7200 2575
Wire Wire Line
	7200 2575 4850 2575
Wire Wire Line
	4850 2575 4850 3825
Connection ~ 4850 3825
Wire Wire Line
	6700 2975 6800 2975
Wire Wire Line
	6800 2975 6800 3625
Connection ~ 6800 3625
Wire Wire Line
	6700 2675 4800 2675
Wire Wire Line
	4800 2675 4800 3825
Connection ~ 4800 3825
Wire Wire Line
	6450 4525 6450 4325
Wire Wire Line
	6450 4325 7700 4325
Wire Wire Line
	7700 4325 7700 2975
Wire Wire Line
	7700 2975 6900 2975
Connection ~ 6900 2975
Connection ~ 6900 3825
Wire Wire Line
	6900 3975 6900 3825
Wire Wire Line
	4275 4150 4350 4150
Wire Wire Line
	4350 4150 4350 4025
Wire Wire Line
	4350 4025 4900 4025
Wire Wire Line
	4900 4025 4900 3825
Wire Wire Line
	4655 2785 4655 3325
Connection ~ 4655 3325
Wire Wire Line
	7045 3725 7045 4045
Wire Wire Line
	7045 4045 7170 4045
Connection ~ 7045 3725
$Comp
L GND #PWR016
U 1 1 5A0AE489
P 7470 4045
F 0 "#PWR016" H 7470 3795 50  0001 C CNN
F 1 "GND" H 7470 3895 50  0000 C CNN
F 2 "" H 7470 4045 50  0001 C CNN
F 3 "" H 7470 4045 50  0001 C CNN
	1    7470 4045
	1    0    0    -1  
$EndComp
$EndSCHEMATC
