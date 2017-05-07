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
LIBS:ftdi
LIBS:usb-iso-rs485
LIBS:USB-ISO-RS485-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "USB-ISO-RS485"
Date "2017-05-07"
Rev "0.1"
Comp "md@gonium.net"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L USB_A P2
U 1 1 590F1246
P 8650 5200
F 0 "P2" H 8850 5000 50  0000 C CNN
F 1 "USB_A" H 8600 5400 50  0000 C CNN
F 2 "" V 8600 5100 60  0000 C CNN
F 3 "" V 8600 5100 60  0000 C CNN
	1    8650 5200
	0    -1   -1   0   
$EndComp
$Comp
L FT232RL U2
U 1 1 590F2594
P 8450 2900
F 0 "U2" H 7800 3800 50  0000 L CNN
F 1 "FT232RL" H 8850 3800 50  0000 L CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 8450 2900 50  0001 C CNN
F 3 "" H 8450 2900 50  0001 C CNN
	1    8450 2900
	1    0    0    -1  
$EndComp
$Comp
L ADM2582E U1
U 1 1 590F2602
P 2850 3050
F 0 "U1" H 2300 2550 60  0000 C CNN
F 1 "ADM2582E" H 3500 2550 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 3100 3050 60  0001 C CNN
F 3 "" H 3100 3050 60  0001 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 590F26A8
P 7650 4050
F 0 "#PWR01" H 7650 3800 50  0001 C CNN
F 1 "GND" H 7650 3900 50  0000 C CNN
F 2 "" H 7650 4050 60  0000 C CNN
F 3 "" H 7650 4050 60  0000 C CNN
	1    7650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3900 8650 3900
Connection ~ 8550 3900
Connection ~ 8450 3900
Wire Wire Line
	7650 3600 7650 4050
Connection ~ 8250 3900
Connection ~ 7650 3900
$Comp
L GND #PWR02
U 1 1 590F2773
P 8550 4750
F 0 "#PWR02" H 8550 4500 50  0001 C CNN
F 1 "GND" H 8550 4600 50  0000 C CNN
F 2 "" H 8550 4750 60  0000 C CNN
F 3 "" H 8550 4750 60  0000 C CNN
	1    8550 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 5100 8950 4900
Wire Wire Line
	8550 4900 9350 4900
Wire Wire Line
	8550 4900 8550 4750
Wire Wire Line
	8950 5200 10000 5200
Wire Wire Line
	8950 5300 10150 5300
Wire Wire Line
	9700 5400 8950 5400
Wire Wire Line
	7250 1600 7250 2900
Wire Wire Line
	7250 2900 7650 2900
Wire Wire Line
	7250 1750 8550 1750
Wire Wire Line
	8550 1750 8550 1900
Wire Wire Line
	8350 1750 8350 1900
Connection ~ 8350 1750
$Comp
L C_Small C9
U 1 1 590F28E9
P 9100 5050
F 0 "C9" H 9110 5120 50  0000 L CNN
F 1 "47pF" H 9110 4970 50  0000 L CNN
F 2 "" H 9100 5050 60  0000 C CNN
F 3 "" H 9100 5050 60  0000 C CNN
	1    9100 5050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 590F2963
P 9350 5050
F 0 "C11" H 9360 5120 50  0000 L CNN
F 1 "47pF" H 9360 4970 50  0000 L CNN
F 2 "" H 9350 5050 60  0000 C CNN
F 3 "" H 9350 5050 60  0000 C CNN
	1    9350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5150 9100 5300
Connection ~ 9100 5300
Wire Wire Line
	9350 5150 9350 5300
Connection ~ 9350 5300
Connection ~ 8950 4900
Wire Wire Line
	9100 4950 9100 4900
Connection ~ 9100 4900
$Comp
L C_Small C10
U 1 1 590F2AC0
P 9100 5550
F 0 "C10" H 9110 5620 50  0000 L CNN
F 1 "10nF" H 9110 5470 50  0000 L CNN
F 2 "" H 9100 5550 60  0000 C CNN
F 3 "" H 9100 5550 60  0000 C CNN
	1    9100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5450 9100 5400
Connection ~ 9100 5400
$Comp
L GND #PWR03
U 1 1 590F2B53
P 9100 5750
F 0 "#PWR03" H 9100 5500 50  0001 C CNN
F 1 "GND" H 9100 5600 50  0000 C CNN
F 2 "" H 9100 5750 60  0000 C CNN
F 3 "" H 9100 5750 60  0000 C CNN
	1    9100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5750 9100 5650
NoConn ~ 7650 3100
NoConn ~ 7650 3300
$Comp
L +5V #PWR04
U 1 1 590F2BAB
P 7250 1600
F 0 "#PWR04" H 7250 1450 50  0001 C CNN
F 1 "+5V" H 7250 1740 50  0000 C CNN
F 2 "" H 7250 1600 60  0000 C CNN
F 3 "" H 7250 1600 60  0000 C CNN
	1    7250 1600
	1    0    0    -1  
$EndComp
Connection ~ 7250 1750
$Comp
L +5V #PWR05
U 1 1 590F2C02
P 7600 4950
F 0 "#PWR05" H 7600 4800 50  0001 C CNN
F 1 "+5V" H 7600 5090 50  0000 C CNN
F 2 "" H 7600 4950 60  0000 C CNN
F 3 "" H 7600 4950 60  0000 C CNN
	1    7600 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 590F2C1F
P 7600 5400
F 0 "#PWR06" H 7600 5150 50  0001 C CNN
F 1 "GND" H 7600 5250 50  0000 C CNN
F 2 "" H 7600 5400 60  0000 C CNN
F 3 "" H 7600 5400 60  0000 C CNN
	1    7600 5400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C13
U 1 1 590F2C3C
P 7200 5150
F 0 "C13" H 7210 5220 50  0000 L CNN
F 1 "4,7uF" H 7210 5070 50  0000 L CNN
F 2 "" H 7200 5150 60  0000 C CNN
F 3 "" H 7200 5150 60  0000 C CNN
	1    7200 5150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 590F2CB9
P 7600 5150
F 0 "C14" H 7610 5220 50  0000 L CNN
F 1 "100nF" H 7610 5070 50  0000 L CNN
F 2 "" H 7600 5150 60  0000 C CNN
F 3 "" H 7600 5150 60  0000 C CNN
	1    7600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5050 7200 5000
Wire Wire Line
	7200 5000 7600 5000
Wire Wire Line
	7200 5250 7200 5300
Wire Wire Line
	7200 5300 7600 5300
Wire Wire Line
	7600 5250 7600 5400
Wire Wire Line
	7600 4950 7600 5050
$Comp
L C_Small C12
U 1 1 590F2F04
P 7450 2050
F 0 "C12" H 7460 2120 50  0000 L CNN
F 1 "100nF" H 7460 1970 50  0000 L CNN
F 2 "" H 7450 2050 60  0000 C CNN
F 3 "" H 7450 2050 60  0000 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2200 7450 2200
Wire Wire Line
	7450 2200 7450 2150
Text GLabel 9300 2200 2    60   Input ~ 0
TxD
Text GLabel 9550 2300 2    60   Input ~ 0
RxD
Text GLabel 9300 3600 2    60   Input ~ 0
~RE
Text GLabel 9300 3400 2    60   Input ~ 0
DE
Wire Wire Line
	9250 3400 9300 3400
Wire Wire Line
	9250 3600 9300 3600
Wire Wire Line
	9250 2200 9300 2200
Wire Wire Line
	9250 2300 9550 2300
NoConn ~ 9250 2400
NoConn ~ 9250 2500
NoConn ~ 9250 2600
NoConn ~ 9250 2700
NoConn ~ 9250 2800
NoConn ~ 9250 2900
Text GLabel 1750 3250 0    60   Input ~ 0
TxD
Text GLabel 2000 2950 0    60   Input ~ 0
RxD
Text GLabel 2000 3150 0    60   Input ~ 0
DE
Text GLabel 1700 3050 0    60   Input ~ 0
~RE
$Comp
L Led_Small D2
U 1 1 590F359A
P 10250 3050
F 0 "D2" H 10300 3150 50  0000 L CNN
F 1 "Green" H 10200 2950 50  0000 L CNN
F 2 "" V 10250 3050 60  0000 C CNN
F 3 "" V 10250 3050 60  0000 C CNN
	1    10250 3050
	0    -1   -1   0   
$EndComp
$Comp
L Led_Small D1
U 1 1 590F35EC
P 9900 3050
F 0 "D1" H 9950 3150 50  0000 L CNN
F 1 "Red" H 9850 2950 50  0000 L CNN
F 2 "" V 9900 3050 60  0000 C CNN
F 3 "" V 9900 3050 60  0000 C CNN
	1    9900 3050
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 590F362B
P 10250 2500
F 0 "#PWR07" H 10250 2350 50  0001 C CNN
F 1 "+5V" H 10250 2640 50  0000 C CNN
F 2 "" H 10250 2500 60  0000 C CNN
F 3 "" H 10250 2500 60  0000 C CNN
	1    10250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3200 9900 3200
Wire Wire Line
	9900 3200 9900 3150
Wire Wire Line
	9250 3300 10250 3300
Wire Wire Line
	10250 3300 10250 3150
$Comp
L R R2
U 1 1 590F382D
P 9900 2750
F 0 "R2" V 9980 2750 50  0000 C CNN
F 1 "470" V 9900 2750 50  0000 C CNN
F 2 "" V 9830 2750 30  0000 C CNN
F 3 "" H 9900 2750 30  0000 C CNN
	1    9900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2950 9900 2900
$Comp
L R R3
U 1 1 590F39A0
P 10250 2750
F 0 "R3" V 10330 2750 50  0000 C CNN
F 1 "470" V 10250 2750 50  0000 C CNN
F 2 "" V 10180 2750 30  0000 C CNN
F 3 "" H 10250 2750 30  0000 C CNN
	1    10250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2950 10250 2900
Wire Wire Line
	10250 2600 10250 2500
Wire Wire Line
	9900 2600 9900 2550
Wire Wire Line
	9900 2550 10600 2550
Connection ~ 10250 2550
$Comp
L R R4
U 1 1 590F3B29
P 10600 2750
F 0 "R4" V 10680 2750 50  0000 C CNN
F 1 "10k" V 10600 2750 50  0000 C CNN
F 2 "" V 10530 2750 30  0000 C CNN
F 3 "" H 10600 2750 30  0000 C CNN
	1    10600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 2550 10600 2600
Wire Wire Line
	10600 2900 10600 3500
Wire Wire Line
	10600 3500 9250 3500
Wire Wire Line
	1750 3250 2050 3250
Wire Wire Line
	2000 3150 2050 3150
Wire Wire Line
	1700 3050 2050 3050
Wire Wire Line
	2000 2950 2050 2950
$Comp
L GND #PWR08
U 1 1 590F46EB
P 1250 2450
F 0 "#PWR08" H 1250 2200 50  0001 C CNN
F 1 "GND" H 1250 2300 50  0000 C CNN
F 2 "" H 1250 2450 60  0000 C CNN
F 3 "" H 1250 2450 60  0000 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 590F4720
P 1400 1700
F 0 "#PWR09" H 1400 1550 50  0001 C CNN
F 1 "+5V" H 1400 1900 50  0000 C CNN
F 2 "" H 1400 1700 60  0000 C CNN
F 3 "" H 1400 1700 60  0000 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 590F4755
P 1650 2250
F 0 "C2" H 1660 2320 50  0000 L CNN
F 1 "100nF" V 1550 2150 50  0000 L CNN
F 2 "" H 1650 2250 60  0000 C CNN
F 3 "" H 1650 2250 60  0000 C CNN
	1    1650 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 590F47AC
P 2000 2250
F 0 "C4" H 2010 2320 50  0000 L CNN
F 1 "10nF" V 1900 2150 50  0000 L CNN
F 2 "" H 2000 2250 60  0000 C CNN
F 3 "" H 2000 2250 60  0000 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 590F5145
P 2000 1900
F 0 "C3" H 2010 1970 50  0000 L CNN
F 1 "10nF" V 1900 1800 50  0000 L CNN
F 2 "" H 2000 1900 60  0000 C CNN
F 3 "" H 2000 1900 60  0000 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 590F518A
P 1650 1900
F 0 "C1" H 1660 1970 50  0000 L CNN
F 1 "100nF" V 1550 1800 50  0000 L CNN
F 2 "" H 1650 1900 60  0000 C CNN
F 3 "" H 1650 1900 60  0000 C CNN
	1    1650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1700 1400 2150
Connection ~ 1650 1800
Connection ~ 2000 1800
Wire Wire Line
	2600 1800 2600 2400
Wire Wire Line
	1400 1800 2600 1800
Wire Wire Line
	2450 2150 2450 2400
Wire Wire Line
	1400 2150 2450 2150
Connection ~ 2000 2150
Connection ~ 1400 1800
Connection ~ 1650 2150
Wire Wire Line
	1250 2450 1250 2000
Wire Wire Line
	1250 2000 2700 2000
Connection ~ 1650 2000
Wire Wire Line
	2700 2000 2700 2400
Connection ~ 2000 2000
Wire Wire Line
	2350 2350 2350 2400
Wire Wire Line
	1250 2350 2350 2350
Connection ~ 2000 2350
Connection ~ 1250 2350
Connection ~ 1650 2350
Text Notes 1900 1650 0    60   ~ 0
Position very close to pins of ADM2582E\n
$Comp
L C_Small C5
U 1 1 590F6167
P 3750 1900
F 0 "C5" H 3760 1970 50  0000 L CNN
F 1 "10nF" V 3650 1800 50  0000 L CNN
F 2 "" H 3750 1900 60  0000 C CNN
F 3 "" H 3750 1900 60  0000 C CNN
	1    3750 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 590F61D1
P 3750 2250
F 0 "C6" H 3760 2320 50  0000 L CNN
F 1 "10nF" V 3650 2150 50  0000 L CNN
F 2 "" H 3750 2250 60  0000 C CNN
F 3 "" H 3750 2250 60  0000 C CNN
	1    3750 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 590F6229
P 4150 1900
F 0 "C7" H 4160 1970 50  0000 L CNN
F 1 "100nF" V 4050 1800 50  0000 L CNN
F 2 "" H 4150 1900 60  0000 C CNN
F 3 "" H 4150 1900 60  0000 C CNN
	1    4150 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 590F6293
P 4150 2250
F 0 "C8" H 4160 2320 50  0000 L CNN
F 1 "100nF" V 4050 2150 50  0000 L CNN
F 2 "" H 4150 2250 60  0000 C CNN
F 3 "" H 4150 2250 60  0000 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 590F640A
P 4400 1700
F 0 "#PWR010" H 4400 1550 50  0001 C CNN
F 1 "+3V3" H 4400 1840 50  0000 C CNN
F 2 "" H 4400 1700 60  0000 C CNN
F 3 "" H 4400 1700 60  0000 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR011
U 1 1 590F6460
P 4500 2450
F 0 "#PWR011" H 4500 2200 50  0001 C CNN
F 1 "GNDA" H 4500 2300 50  0000 C CNN
F 2 "" H 4500 2450 60  0000 C CNN
F 3 "" H 4500 2450 60  0000 C CNN
	1    4500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2400 3300 2350
Wire Wire Line
	3300 2350 4500 2350
Connection ~ 3750 2350
Wire Wire Line
	4500 2000 4500 2450
Connection ~ 4150 2350
Wire Wire Line
	2950 2400 2950 2000
Wire Wire Line
	2950 2000 4500 2000
Connection ~ 3750 2000
Connection ~ 4500 2350
Connection ~ 4150 2000
Wire Wire Line
	3200 2400 3200 2150
Wire Wire Line
	3200 2150 4400 2150
Connection ~ 3750 2150
Wire Wire Line
	4400 2150 4400 1700
Connection ~ 4150 2150
Wire Wire Line
	3050 2400 3050 1800
Wire Wire Line
	3050 1800 4400 1800
Connection ~ 3750 1800
Connection ~ 4400 1800
Connection ~ 4150 1800
$Comp
L GND #PWR012
U 1 1 590F6C16
P 2550 3850
F 0 "#PWR012" H 2550 3600 50  0001 C CNN
F 1 "GND" H 2550 3700 50  0000 C CNN
F 2 "" H 2550 3850 60  0000 C CNN
F 3 "" H 2550 3850 60  0000 C CNN
	1    2550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3850 2550 3700
Wire Wire Line
	2550 3700 2700 3700
Connection ~ 2550 3700
$Comp
L GNDA #PWR013
U 1 1 590F6D6A
P 3200 3850
F 0 "#PWR013" H 3200 3600 50  0001 C CNN
F 1 "GNDA" H 3200 3700 50  0000 C CNN
F 2 "" H 3200 3850 60  0000 C CNN
F 3 "" H 3200 3850 60  0000 C CNN
	1    3200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3700 3200 3700
Wire Wire Line
	3200 3700 3200 3850
Connection ~ 3200 3700
Text Notes 1900 4350 0    60   ~ 0
All GND pins should have enlarged pads \nin order to dissipate heat from component
Wire Wire Line
	3650 3150 4100 3150
Wire Wire Line
	3700 3150 3700 3050
Wire Wire Line
	3700 3050 3650 3050
Wire Wire Line
	3650 3250 3750 3250
Wire Wire Line
	3750 3250 3750 2950
Wire Wire Line
	3650 2950 4100 2950
Connection ~ 3700 3150
Connection ~ 3750 2950
Text GLabel 4100 2950 2    60   Input ~ 0
A
Text GLabel 4100 3150 2    60   Input ~ 0
B
Text GLabel 1550 5100 0    60   Input ~ 0
A
Text GLabel 1550 5300 0    60   Input ~ 0
B
$Comp
L R R1
U 1 1 590F7EBA
P 2000 5300
F 0 "R1" V 1900 5300 50  0000 C CNN
F 1 "120" V 2000 5300 50  0000 C CNN
F 2 "" V 1930 5300 30  0000 C CNN
F 3 "" H 2000 5300 30  0000 C CNN
	1    2000 5300
	0    -1   -1   0   
$EndComp
Text Notes 1400 5700 0    60   ~ 0
Terminating resistor can\nbe configured using jumper
$Comp
L JUMPER JP1
U 1 1 590F853B
P 2000 5100
F 0 "JP1" H 2000 4950 50  0000 C CNN
F 1 "JUMPER" H 2000 5020 50  0000 C CNN
F 2 "" H 2000 5100 60  0000 C CNN
F 3 "" H 2000 5100 60  0000 C CNN
	1    2000 5100
	-1   0    0    1   
$EndComp
Text GLabel 3650 5100 0    60   Input ~ 0
A
Text GLabel 3650 5300 0    60   Input ~ 0
B
Wire Wire Line
	3850 5200 3950 5200
Wire Wire Line
	3650 5300 3950 5300
$Comp
L CONN_01X03 P1
U 1 1 590F9AA3
P 4150 5300
F 0 "P1" H 4150 5500 50  0000 C CNN
F 1 "CONN_01X03" V 4250 5300 50  0000 C CNN
F 2 "" H 4150 5300 60  0000 C CNN
F 3 "" H 4150 5300 60  0000 C CNN
	1    4150 5300
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR014
U 1 1 590F9E21
P 3850 5550
F 0 "#PWR014" H 3850 5300 50  0001 C CNN
F 1 "GNDA" H 3850 5400 50  0000 C CNN
F 2 "" H 3850 5550 60  0000 C CNN
F 3 "" H 3850 5550 60  0000 C CNN
	1    3850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5550 3850 5400
Wire Wire Line
	3850 5400 3950 5400
Wire Wire Line
	3650 5100 3850 5100
Wire Wire Line
	3850 5100 3850 5200
Wire Wire Line
	1550 5100 1700 5100
Wire Wire Line
	1550 5300 1850 5300
Wire Wire Line
	2150 5300 2400 5300
Wire Wire Line
	2400 5300 2400 5100
Wire Wire Line
	2400 5100 2300 5100
$Comp
L GND #PWR015
U 1 1 590FB585
P 7100 2000
F 0 "#PWR015" H 7100 1750 50  0001 C CNN
F 1 "GND" H 7100 1850 50  0000 C CNN
F 2 "" H 7100 2000 60  0000 C CNN
F 3 "" H 7100 2000 60  0000 C CNN
	1    7100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2000 7100 1950
Wire Wire Line
	7100 1950 7450 1950
Text GLabel 7150 2450 0    60   Input ~ 0
USBD+
Text GLabel 7150 2600 0    60   Input ~ 0
USBD-
Wire Wire Line
	7650 2500 7550 2500
Wire Wire Line
	7550 2500 7550 2450
Wire Wire Line
	7550 2450 7150 2450
Wire Wire Line
	7150 2600 7650 2600
$Comp
L +5V #PWR016
U 1 1 590FBC4B
P 9700 4750
F 0 "#PWR016" H 9700 4600 50  0001 C CNN
F 1 "+5V" H 9700 4890 50  0000 C CNN
F 2 "" H 9700 4750 60  0000 C CNN
F 3 "" H 9700 4750 60  0000 C CNN
	1    9700 4750
	1    0    0    -1  
$EndComp
Text GLabel 10150 5150 2    60   Input ~ 0
USBD+
Text GLabel 10150 5300 2    60   Input ~ 0
USBD-
Wire Wire Line
	10000 5200 10000 5150
Wire Wire Line
	10000 5150 10150 5150
Wire Wire Line
	9350 4900 9350 4950
Wire Notes Line
	5700 550  5700 7700
Text Notes 5950 700  0    60   ~ 12
USB interface
Text Notes 750  750  0    60   ~ 12
Isolated RS485 interface
Text Notes 7150 6900 0    157  ~ 31
Isolated USB-RS485 interface
Wire Wire Line
	9700 4750 9700 5400
Connection ~ 7600 5300
Connection ~ 7600 5000
Text GLabel 1700 7350 0    60   Input ~ 0
USBD+
Text GLabel 2750 7350 0    60   Input ~ 0
USBD-
$Comp
L TST P?
U 1 1 590FD90C
P 1700 7350
F 0 "P?" H 1700 7650 50  0000 C BNN
F 1 "TST" H 1700 7600 50  0000 C CNN
F 2 "" H 1700 7350 60  0000 C CNN
F 3 "" H 1700 7350 60  0000 C CNN
	1    1700 7350
	0    1    1    0   
$EndComp
$Comp
L TST P?
U 1 1 590FD991
P 2750 7350
F 0 "P?" H 2750 7650 50  0000 C BNN
F 1 "TST" H 2750 7600 50  0000 C CNN
F 2 "" H 2750 7350 60  0000 C CNN
F 3 "" H 2750 7350 60  0000 C CNN
	1    2750 7350
	0    1    1    0   
$EndComp
Text GLabel 1550 6950 0    60   Input ~ 0
RxD
Text GLabel 1500 7150 0    60   Input ~ 0
~RE
Text GLabel 2550 6950 0    60   Input ~ 0
DE
Text GLabel 2600 7150 0    60   Input ~ 0
TxD
$Comp
L TST P?
U 1 1 590FDBBC
P 1550 6950
F 0 "P?" H 1550 7250 50  0000 C BNN
F 1 "TST" H 1550 7200 50  0000 C CNN
F 2 "" H 1550 6950 60  0000 C CNN
F 3 "" H 1550 6950 60  0000 C CNN
	1    1550 6950
	0    1    1    0   
$EndComp
$Comp
L TST P?
U 1 1 590FDC54
P 1500 7150
F 0 "P?" H 1500 7450 50  0000 C BNN
F 1 "TST" H 1500 7400 50  0000 C CNN
F 2 "" H 1500 7150 60  0000 C CNN
F 3 "" H 1500 7150 60  0000 C CNN
	1    1500 7150
	0    1    1    0   
$EndComp
$Comp
L TST P?
U 1 1 590FDCC6
P 2550 6950
F 0 "P?" H 2550 7250 50  0000 C BNN
F 1 "TST" H 2550 7200 50  0000 C CNN
F 2 "" H 2550 6950 60  0000 C CNN
F 3 "" H 2550 6950 60  0000 C CNN
	1    2550 6950
	0    1    1    0   
$EndComp
$Comp
L TST P?
U 1 1 590FDD50
P 2600 7150
F 0 "P?" H 2600 7450 50  0000 C BNN
F 1 "TST" H 2600 7400 50  0000 C CNN
F 2 "" H 2600 7150 60  0000 C CNN
F 3 "" H 2600 7150 60  0000 C CNN
	1    2600 7150
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 590FDE9F
P 3500 6950
F 0 "#PWR?" H 3500 6700 50  0001 C CNN
F 1 "GNDA" H 3500 6800 50  0000 C CNN
F 2 "" H 3500 6950 60  0000 C CNN
F 3 "" H 3500 6950 60  0000 C CNN
	1    3500 6950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 590FDF0D
P 4200 7050
F 0 "#PWR?" H 4200 6900 50  0001 C CNN
F 1 "+3V3" H 4200 7190 50  0000 C CNN
F 2 "" H 4200 7050 60  0000 C CNN
F 3 "" H 4200 7050 60  0000 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 590FDF7B
P 3500 6950
F 0 "P?" H 3500 7250 50  0000 C BNN
F 1 "TST" H 3500 7200 50  0000 C CNN
F 2 "" H 3500 6950 60  0000 C CNN
F 3 "" H 3500 6950 60  0000 C CNN
	1    3500 6950
	0    1    1    0   
$EndComp
$Comp
L TST P?
U 1 1 590FE001
P 4200 7050
F 0 "P?" H 4200 7350 50  0000 C BNN
F 1 "TST" H 4200 7300 50  0000 C CNN
F 2 "" H 4200 7050 60  0000 C CNN
F 3 "" H 4200 7050 60  0000 C CNN
	1    4200 7050
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 590FE4BA
P 4200 7350
F 0 "#PWR?" H 4200 7200 50  0001 C CNN
F 1 "+5V" H 4200 7490 50  0000 C CNN
F 2 "" H 4200 7350 60  0000 C CNN
F 3 "" H 4200 7350 60  0000 C CNN
	1    4200 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 590FE52E
P 3500 7250
F 0 "#PWR?" H 3500 7000 50  0001 C CNN
F 1 "GND" H 3500 7100 50  0000 C CNN
F 2 "" H 3500 7250 60  0000 C CNN
F 3 "" H 3500 7250 60  0000 C CNN
	1    3500 7250
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 590FE5A2
P 3500 7250
F 0 "P?" H 3500 7550 50  0000 C BNN
F 1 "TST" H 3500 7500 50  0000 C CNN
F 2 "" H 3500 7250 60  0000 C CNN
F 3 "" H 3500 7250 60  0000 C CNN
	1    3500 7250
	0    1    1    0   
$EndComp
$Comp
L TST P?
U 1 1 590FE620
P 4200 7350
F 0 "P?" H 4200 7650 50  0000 C BNN
F 1 "TST" H 4200 7600 50  0000 C CNN
F 2 "" H 4200 7350 60  0000 C CNN
F 3 "" H 4200 7350 60  0000 C CNN
	1    4200 7350
	0    1    1    0   
$EndComp
Text Notes 750  6600 0    60   ~ 12
Test points\n
Wire Notes Line
	600  6400 5600 6400
$EndSCHEMATC
