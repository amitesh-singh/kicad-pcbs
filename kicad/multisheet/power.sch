EESchema Schematic File Version 2
LIBS:Zilog
LIBS:zetex
LIBS:xilinx
LIBS:Xicor
LIBS:Worldsemi
LIBS:wiznet
LIBS:video
LIBS:Valve
LIBS:triac_thyristor
LIBS:Transistor
LIBS:Transformer
LIBS:texas
LIBS:Switch
LIBS:supertex
LIBS:siliconi
LIBS:silabs
LIBS:sensors
LIBS:Sensor_Current
LIBS:RFSolutions
LIBS:rfcom
LIBS:Relay
LIBS:regul
LIBS:references
LIBS:pspice
LIBS:Power_Management
LIBS:powerint
LIBS:power
LIBS:philips
LIBS:Oscillators
LIBS:opto
LIBS:onsemi
LIBS:nxp
LIBS:nordicsemi
LIBS:motorola
LIBS:motor_drivers
LIBS:Motor
LIBS:modules
LIBS:microcontrollers
LIBS:microchip
LIBS:memory
LIBS:Mechanical
LIBS:MCU_Texas_MSP430
LIBS:MCU_ST_STM32
LIBS:MCU_ST_STM8
LIBS:MCU_Parallax
LIBS:MCU_NXP_S08
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_Kinetis
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC10
LIBS:maxim
LIBS:Logic_TTL_IEEE
LIBS:logic_programmable
LIBS:Logic_CMOS_IEEE
LIBS:Logic_CMOS_4000
LIBS:Logic_74xx
LIBS:Logic_74xgxx
LIBS:linear
LIBS:LEM
LIBS:LED
LIBS:Lattice
LIBS:ir
LIBS:intersil
LIBS:interface
LIBS:intel
LIBS:infineon
LIBS:hc11
LIBS:Graphic
LIBS:gennum
LIBS:ftdi
LIBS:FPGA_Actel
LIBS:Espressif
LIBS:ESD_Protection
LIBS:elec-unifil
LIBS:DSP_Microchip_DSPIC33
LIBS:dsp
LIBS:driver_gate
LIBS:Display
LIBS:Diode
LIBS:digital-audio
LIBS:device
LIBS:dc-dc
LIBS:cypress
LIBS:contrib
LIBS:Connector
LIBS:brooktre
LIBS:Bosch
LIBS:bbd
LIBS:Battery_Management
LIBS:audio
LIBS:atmel
LIBS:analog_switches
LIBS:analog_devices
LIBS:Altera
LIBS:adc-dac
LIBS:ac-dc
LIBS:multisheet-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L PWR_FLAG #FLG01
U 1 1 5A05956A
P 2700 3200
F 0 "#FLG01" H 2700 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 3350 50  0000 C CNN
F 2 "" H 2700 3200 50  0001 C CNN
F 3 "" H 2700 3200 50  0001 C CNN
	1    2700 3200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5A05957E
P 2950 3200
F 0 "#FLG02" H 2950 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 3350 50  0000 C CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A059592
P 2700 3200
F 0 "#PWR03" H 2700 3050 50  0001 C CNN
F 1 "+5V" H 2700 3340 50  0000 C CNN
F 2 "" H 2700 3200 50  0001 C CNN
F 3 "" H 2700 3200 50  0001 C CNN
	1    2700 3200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A0595A6
P 2950 3200
F 0 "#PWR04" H 2950 2950 50  0001 C CNN
F 1 "GND" H 2950 3050 50  0000 C CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
Text HLabel 5500 3100 0    60   Input ~ 0
Vcc
$Comp
L +5V #PWR05
U 1 1 5A05968B
P 5650 3100
F 0 "#PWR05" H 5650 2950 50  0001 C CNN
F 1 "+5V" H 5650 3240 50  0000 C CNN
F 2 "" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0001 C CNN
	1    5650 3100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5A059696
P 6000 3100
F 0 "#PWR06" H 6000 2850 50  0001 C CNN
F 1 "GND" H 6000 2950 50  0000 C CNN
F 2 "" H 6000 3100 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3100 5500 3100
Text HLabel 6200 3100 2    60   Input ~ 0
Gnd
Wire Wire Line
	6000 3100 6200 3100
$Comp
L Conn_01x02 J1
U 1 1 5A05A291
P 5770 2585
F 0 "J1" H 5770 2685 50  0000 C CNN
F 1 "Conn_01x02" H 5770 2385 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch1.27mm" H 5770 2585 50  0001 C CNN
F 3 "" H 5770 2585 50  0001 C CNN
	1    5770 2585
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5770 2955 5580 2955
Wire Wire Line
	5580 2955 5580 3100
Connection ~ 5580 3100
Wire Wire Line
	5870 2785 5870 3000
Wire Wire Line
	5870 3000 6105 3000
Wire Wire Line
	6105 3000 6105 3100
Connection ~ 6105 3100
Wire Wire Line
	5770 2955 5770 2785
$EndSCHEMATC
