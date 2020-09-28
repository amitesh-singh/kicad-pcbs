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
Sheet 1 3
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
$Sheet
S 2400 3825 1125 800 
U 5A0AE477
F0 "stm32" 60
F1 "stm32.sch" 60
$EndSheet
Text Notes 725  3625 0    39   ~ 0
copy the other sheet (with same name) from other project to target project and create hierarchical sheet with same name. Kicad will ask if you want to use the components from same sch. \n
Wire Notes Line
	2150 3700 3750 3700
Wire Notes Line
	3750 3700 3750 4800
Wire Notes Line
	3750 4800 2150 4800
Wire Notes Line
	2150 4800 2150 3700
$EndSCHEMATC
