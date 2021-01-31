EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
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
L Device:Crystal_GND24 Y1
U 1 1 5ED3B0D8
P 4000 3100
F 0 "Y1" V 3954 3344 50  0000 L CNN
F 1 "16 MHz" V 4045 3344 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_0603-4Pin_6.0x3.5mm_HandSoldering" H 4000 3100 50  0001 C CNN
F 3 "~" H 4000 3100 50  0001 C CNN
	1    4000 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5ED47779
P 4400 2350
F 0 "#PWR04" H 4400 2100 50  0001 C CNN
F 1 "GND" H 4405 2177 50  0000 C CNN
F 2 "" H 4400 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0001 C CNN
	1    4400 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2950 4550 2950
Wire Wire Line
	4000 3250 4550 3250
$Comp
L Device:C_Small C1
U 1 1 5ED4D9F8
P 3600 2950
F 0 "C1" V 3371 2950 50  0000 C CNN
F 1 "C_Small" V 3462 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3600 2950 50  0001 C CNN
F 3 "~" H 3600 2950 50  0001 C CNN
	1    3600 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5ED543E8
P 3600 3250
F 0 "C2" V 3371 3250 50  0000 C CNN
F 1 "C_Small" V 3462 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3600 3250 50  0001 C CNN
F 3 "~" H 3600 3250 50  0001 C CNN
	1    3600 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2950 4000 2950
Connection ~ 4000 2950
Wire Wire Line
	3700 3250 4000 3250
Connection ~ 4000 3250
$Comp
L power:GND #PWR01
U 1 1 5ED56ADB
P 3400 3350
F 0 "#PWR01" H 3400 3100 50  0001 C CNN
F 1 "GND" H 3405 3177 50  0000 C CNN
F 2 "" H 3400 3350 50  0001 C CNN
F 3 "" H 3400 3350 50  0001 C CNN
	1    3400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3250 3400 3250
Wire Wire Line
	3400 3250 3400 3350
Wire Wire Line
	3500 2950 3400 2950
Wire Wire Line
	3400 2950 3400 3250
Connection ~ 3400 3250
Text GLabel 4900 1950 0    50   Input ~ 0
NSRT
$Comp
L MCU_ST_STM32F4:STM32F411RETx U1
U 1 1 5FC0BC09
P 5600 3450
F 0 "U1" H 5600 1561 50  0000 C CNN
F 1 "STM32F411RETx" H 5600 1470 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5000 1750 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 5600 3450 50  0001 C CNN
	1    5600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3050 4550 3050
Wire Wire Line
	4550 3050 4550 2950
Wire Wire Line
	4900 3150 4550 3150
Wire Wire Line
	4550 3150 4550 3250
Text GLabel 6600 2450 2    50   Input ~ 0
SPI1_SCLK
Text GLabel 6600 2650 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 6600 2550 2    50   Input ~ 0
SPI1_MISO
$Comp
L power:+3.3V #PWR05
U 1 1 601A6B14
P 5600 1300
F 0 "#PWR05" H 5600 1150 50  0001 C CNN
F 1 "+3.3V" H 5615 1473 50  0000 C CNN
F 2 "" H 5600 1300 50  0001 C CNN
F 3 "" H 5600 1300 50  0001 C CNN
	1    5600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1600 5500 1600
Wire Wire Line
	5500 1600 5500 1750
Wire Wire Line
	5600 1600 5600 1750
Connection ~ 5600 1600
Wire Wire Line
	5700 1600 5700 1750
Wire Wire Line
	5600 1600 5700 1600
Wire Wire Line
	5800 1600 5800 1750
Connection ~ 5700 1600
Wire Wire Line
	5700 1600 5800 1600
$Comp
L power:+3.3VA #PWR06
U 1 1 6020BB0F
P 5900 1300
F 0 "#PWR06" H 5900 1150 50  0001 C CNN
F 1 "+3.3VA" H 5915 1473 50  0000 C CNN
F 2 "" H 5900 1300 50  0001 C CNN
F 3 "" H 5900 1300 50  0001 C CNN
	1    5900 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 6026FA50
P 4650 2350
F 0 "C5" H 4450 2400 50  0000 L CNN
F 1 "1u" H 4450 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4650 2350 50  0001 C CNN
F 3 "~" H 4650 2350 50  0001 C CNN
	1    4650 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2350 4550 2350
Wire Wire Line
	4750 2350 4900 2350
$Sheet
S 750  700  950  700 
U 60586D1B
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 750  1750 950  700 
U 606FF2F2
F0 "Inputs" 50
F1 "inputs.sch" 50
$EndSheet
$Sheet
S 750  2800 950  700 
U 6088BCB1
F0 "Outputs" 50
F1 "outputs.sch" 50
$EndSheet
Text GLabel 6300 4350 2    50   Input ~ 0
I2C1_SDA
Text GLabel 6300 4250 2    50   Input ~ 0
I2C1_SCL
Text GLabel 8750 2350 2    50   Input ~ 0
I2C1_SCL
Text GLabel 8750 2500 2    50   Input ~ 0
I2C1_SDA
$Comp
L Device:R_Small R7
U 1 1 60C530E2
P 8450 2350
F 0 "R7" V 8254 2350 50  0000 C CNN
F 1 "4.7k" V 8345 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8450 2350 50  0001 C CNN
F 3 "~" H 8450 2350 50  0001 C CNN
	1    8450 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 60C5589A
P 8450 2500
F 0 "R8" V 8650 2500 50  0000 C CNN
F 1 "4.7k" V 8550 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8450 2500 50  0001 C CNN
F 3 "~" H 8450 2500 50  0001 C CNN
	1    8450 2500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 60C56353
P 8200 2350
F 0 "#PWR09" H 8200 2200 50  0001 C CNN
F 1 "+3.3V" H 8215 2523 50  0000 C CNN
F 2 "" H 8200 2350 50  0001 C CNN
F 3 "" H 8200 2350 50  0001 C CNN
	1    8200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2350 8200 2350
Wire Wire Line
	8200 2500 8200 2350
Connection ~ 8200 2350
Wire Wire Line
	8550 2350 8750 2350
Wire Wire Line
	8550 2500 8750 2500
Wire Wire Line
	8200 2500 8350 2500
$Comp
L power:GND #PWR07
U 1 1 60C5C6ED
P 6100 5250
F 0 "#PWR07" H 6100 5000 50  0001 C CNN
F 1 "GND" H 6105 5077 50  0000 C CNN
F 2 "" H 6100 5250 50  0001 C CNN
F 3 "" H 6100 5250 50  0001 C CNN
	1    6100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5250 5500 5250
Connection ~ 5500 5250
Wire Wire Line
	5500 5250 5600 5250
Connection ~ 5600 5250
Wire Wire Line
	5600 5250 5700 5250
Connection ~ 5700 5250
Wire Wire Line
	5700 5250 5800 5250
Connection ~ 5800 5250
Wire Wire Line
	5800 5250 6100 5250
$Comp
L power:+3.3V #PWR010
U 1 1 60C62526
P 9200 3400
F 0 "#PWR010" H 9200 3250 50  0001 C CNN
F 1 "+3.3V" H 9215 3573 50  0000 C CNN
F 2 "" H 9200 3400 50  0001 C CNN
F 3 "" H 9200 3400 50  0001 C CNN
	1    9200 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60C63195
P 9200 3600
F 0 "R9" H 9141 3554 50  0000 R CNN
F 1 "10k" H 9141 3645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9200 3600 50  0001 C CNN
F 3 "~" H 9200 3600 50  0001 C CNN
	1    9200 3600
	-1   0    0    1   
$EndComp
Text GLabel 8500 3800 2    50   Input ~ 0
SWCLK
Text GLabel 8500 3600 2    50   Input ~ 0
SWDIO
$Comp
L power:GND #PWR011
U 1 1 60C6598E
P 8800 3700
F 0 "#PWR011" H 8800 3450 50  0001 C CNN
F 1 "GND" H 8805 3527 50  0000 C CNN
F 2 "" H 8800 3700 50  0001 C CNN
F 3 "" H 8800 3700 50  0001 C CNN
	1    8800 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60C6786B
P 4400 2150
F 0 "#PWR03" H 4400 1900 50  0001 C CNN
F 1 "GND" H 4405 1977 50  0000 C CNN
F 2 "" H 4400 2150 50  0001 C CNN
F 3 "" H 4400 2150 50  0001 C CNN
	1    4400 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2150 4900 2150
Text GLabel 8500 3500 2    50   Input ~ 0
NSRT
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60C8646A
P 8300 4500
F 0 "J2" H 8300 4300 50  0000 C CNN
F 1 "USART" V 8400 4450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8300 4500 50  0001 C CNN
F 3 "~" H 8300 4500 50  0001 C CNN
	1    8300 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 60C869E9
P 8750 4400
F 0 "R10" V 8554 4400 50  0000 C CNN
F 1 "100" V 8645 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8750 4400 50  0001 C CNN
F 3 "~" H 8750 4400 50  0001 C CNN
	1    8750 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 60C86FF7
P 8750 4500
F 0 "R11" V 8950 4500 50  0000 C CNN
F 1 "100" V 8850 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8750 4500 50  0001 C CNN
F 3 "~" H 8750 4500 50  0001 C CNN
	1    8750 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 4400 8650 4400
Wire Wire Line
	8500 4500 8650 4500
Text GLabel 8850 4400 2    50   Input ~ 0
TX
Text GLabel 8850 4500 2    50   Input ~ 0
RX
Text GLabel 6300 2950 2    50   Input ~ 0
RX
Text GLabel 6300 2850 2    50   Input ~ 0
TX
Text GLabel 6300 3350 2    50   Input ~ 0
SWCLK
Text GLabel 6300 3250 2    50   Input ~ 0
SWDIO
$Comp
L Device:C_Small C7
U 1 1 60CAB0D3
P 5200 1500
F 0 "C7" H 5000 1550 50  0000 L CNN
F 1 "1u" H 5000 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5200 1500 50  0001 C CNN
F 3 "~" H 5200 1500 50  0001 C CNN
	1    5200 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 60CAB76B
P 4900 1500
F 0 "C6" H 4700 1550 50  0000 L CNN
F 1 "100n" H 4700 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4900 1500 50  0001 C CNN
F 3 "~" H 4900 1500 50  0001 C CNN
	1    4900 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60CABCA9
P 4600 1500
F 0 "C4" H 4400 1550 50  0000 L CNN
F 1 "100n" H 4400 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4600 1500 50  0001 C CNN
F 3 "~" H 4600 1500 50  0001 C CNN
	1    4600 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60CAC1EE
P 4300 1500
F 0 "C3" H 4100 1550 50  0000 L CNN
F 1 "1u" H 4100 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4300 1500 50  0001 C CNN
F 3 "~" H 4300 1500 50  0001 C CNN
	1    4300 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 1750 5400 1600
Wire Wire Line
	5400 1600 5500 1600
Connection ~ 5500 1600
Wire Wire Line
	5400 1600 5200 1600
Connection ~ 5400 1600
Connection ~ 4600 1600
Wire Wire Line
	4600 1600 4300 1600
Connection ~ 4900 1600
Wire Wire Line
	4900 1600 4600 1600
Connection ~ 5200 1600
Wire Wire Line
	5200 1600 4900 1600
Wire Wire Line
	5900 1300 5900 1600
$Comp
L power:GND #PWR02
U 1 1 60CC1CE2
P 4300 1300
F 0 "#PWR02" H 4300 1050 50  0001 C CNN
F 1 "GND" H 4305 1127 50  0000 C CNN
F 2 "" H 4300 1300 50  0001 C CNN
F 3 "" H 4300 1300 50  0001 C CNN
	1    4300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 1400 4300 1300
Connection ~ 4300 1400
Connection ~ 4600 1400
Wire Wire Line
	4600 1400 4300 1400
Connection ~ 4900 1400
Wire Wire Line
	4900 1400 4600 1400
Wire Wire Line
	4900 1400 5200 1400
$Comp
L Device:C_Small C8
U 1 1 60CC888F
P 6000 1500
F 0 "C8" H 5800 1550 50  0000 L CNN
F 1 "1u" H 5800 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6000 1500 50  0001 C CNN
F 3 "~" H 6000 1500 50  0001 C CNN
	1    6000 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 60CC8F08
P 6300 1500
F 0 "C9" H 6100 1550 50  0000 L CNN
F 1 "100n" H 6100 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6300 1500 50  0001 C CNN
F 3 "~" H 6300 1500 50  0001 C CNN
	1    6300 1500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60CC94EC
P 6300 1300
F 0 "#PWR08" H 6300 1050 50  0001 C CNN
F 1 "GND" H 6305 1127 50  0000 C CNN
F 2 "" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 1300 6300 1400
Wire Wire Line
	6000 1400 6300 1400
Connection ~ 6300 1400
Wire Wire Line
	6300 1600 6000 1600
Connection ~ 5900 1600
Wire Wire Line
	5900 1600 5900 1750
Connection ~ 6000 1600
Wire Wire Line
	6000 1600 5900 1600
Wire Wire Line
	5600 1300 5600 1600
NoConn ~ 3800 3100
NoConn ~ 4200 3100
$Comp
L Device:R_Small R4
U 1 1 603BEB27
P 6500 2450
F 0 "R4" V 6500 2300 50  0000 C CNN
F 1 "100" V 6500 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6500 2450 50  0001 C CNN
F 3 "~" H 6500 2450 50  0001 C CNN
	1    6500 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 603BF364
P 6500 2550
F 0 "R5" V 6500 2400 50  0000 C CNN
F 1 "100" V 6500 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6500 2550 50  0001 C CNN
F 3 "~" H 6500 2550 50  0001 C CNN
	1    6500 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 603BF859
P 6500 2650
F 0 "R6" V 6500 2500 50  0000 C CNN
F 1 "100" V 6500 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6500 2650 50  0001 C CNN
F 3 "~" H 6500 2650 50  0001 C CNN
	1    6500 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2450 6300 2450
Wire Wire Line
	6300 2550 6400 2550
Wire Wire Line
	6400 2650 6300 2650
Text GLabel 4600 4550 0    50   Input ~ 0
SPI2_SCLK
Text GLabel 4600 3750 0    50   Input ~ 0
SPI2_MISO
Text GLabel 4600 3850 0    50   Input ~ 0
SPI2_MOSI
$Comp
L Device:R_Small R3
U 1 1 603C98E4
P 4700 4550
F 0 "R3" V 4700 4400 50  0000 C CNN
F 1 "100" V 4700 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4700 4550 50  0001 C CNN
F 3 "~" H 4700 4550 50  0001 C CNN
	1    4700 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 603C98EE
P 4700 3850
F 0 "R2" V 4700 3700 50  0000 C CNN
F 1 "100" V 4700 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4700 3850 50  0001 C CNN
F 3 "~" H 4700 3850 50  0001 C CNN
	1    4700 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 603C98F8
P 4700 3750
F 0 "R1" V 4700 3600 50  0000 C CNN
F 1 "100" V 4700 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4700 3750 50  0001 C CNN
F 3 "~" H 4700 3750 50  0001 C CNN
	1    4700 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3850 4800 3850
Wire Wire Line
	4800 3750 4900 3750
Wire Wire Line
	4800 4550 4900 4550
NoConn ~ 6300 2750
NoConn ~ 6300 3050
NoConn ~ 6300 3150
NoConn ~ 6300 3750
NoConn ~ 6300 3850
NoConn ~ 6300 4050
NoConn ~ 6300 4150
NoConn ~ 6300 4450
NoConn ~ 6300 4550
NoConn ~ 6300 4650
NoConn ~ 6300 4750
NoConn ~ 6300 4850
NoConn ~ 6300 4950
NoConn ~ 6300 5050
NoConn ~ 4900 5050
NoConn ~ 4900 4950
NoConn ~ 4900 4850
NoConn ~ 4900 4750
NoConn ~ 4900 4650
NoConn ~ 4900 4450
NoConn ~ 4900 4350
NoConn ~ 4900 4250
NoConn ~ 4900 4150
NoConn ~ 4900 4050
NoConn ~ 4900 3950
NoConn ~ 4900 3550
NoConn ~ 4900 3350
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 607C9AE3
P 8300 3700
F 0 "J1" H 8218 3175 50  0000 C CNN
F 1 "Conn_01x06" H 8218 3266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8300 3700 50  0001 C CNN
F 3 "~" H 8300 3700 50  0001 C CNN
	1    8300 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 3700 8800 3700
$Comp
L power:+3.3V #PWR093
U 1 1 607EF568
P 8800 3900
F 0 "#PWR093" H 8800 3750 50  0001 C CNN
F 1 "+3.3V" H 8815 4073 50  0000 C CNN
F 2 "" H 8800 3900 50  0001 C CNN
F 3 "" H 8800 3900 50  0001 C CNN
	1    8800 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 3900 8500 3900
Text GLabel 8500 3400 2    50   Input ~ 0
SWO
Text GLabel 9200 3800 3    50   Input ~ 0
NSRT
Wire Wire Line
	9200 3400 9200 3500
Wire Wire Line
	9200 3700 9200 3800
Text GLabel 6300 3950 2    50   Input ~ 0
SWO
Text GLabel 6600 2350 2    50   Input ~ 0
ADC_CS
$Comp
L Device:R_Small R69
U 1 1 60811D04
P 6500 2350
F 0 "R69" V 6500 2200 50  0000 C CNN
F 1 "100" V 6500 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6500 2350 50  0001 C CNN
F 3 "~" H 6500 2350 50  0001 C CNN
	1    6500 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2350 6400 2350
Text GLabel 4600 3650 0    50   Input ~ 0
DAC_SYNC
$Comp
L Device:R_Small R68
U 1 1 608171F8
P 4700 3650
F 0 "R68" V 4700 3500 50  0000 C CNN
F 1 "100" V 4700 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4700 3650 50  0001 C CNN
F 3 "~" H 4700 3650 50  0001 C CNN
	1    4700 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 3650 4900 3650
Text GLabel 6300 3450 2    50   Input ~ 0
B_MODE_SW
$Comp
L Memory_EEPROM:M24C02-RMN U8
U 1 1 5FCBE0D3
P 8650 5600
F 0 "U8" H 8650 6081 50  0000 C CNN
F 1 "M24C02-RMN" H 8650 5990 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8650 5950 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/b0/d8/50/40/5a/85/49/6f/DM00071904.pdf/files/DM00071904.pdf/jcr:content/translations/en.DM00071904.pdf" H 8700 5100 50  0001 C CNN
	1    8650 5600
	1    0    0    -1  
$EndComp
Text GLabel 9050 5600 2    50   Input ~ 0
I2C1_SCL
Text GLabel 9050 5500 2    50   Input ~ 0
I2C1_SDA
$Comp
L power:GND #PWR096
U 1 1 5FCC2B30
P 9050 5900
F 0 "#PWR096" H 9050 5650 50  0001 C CNN
F 1 "GND" H 9055 5727 50  0000 C CNN
F 2 "" H 9050 5900 50  0001 C CNN
F 3 "" H 9050 5900 50  0001 C CNN
	1    9050 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR095
U 1 1 5FCC3186
P 9050 5300
F 0 "#PWR095" H 9050 5150 50  0001 C CNN
F 1 "+3.3V" H 9065 5473 50  0000 C CNN
F 2 "" H 9050 5300 50  0001 C CNN
F 3 "" H 9050 5300 50  0001 C CNN
	1    9050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5300 9050 5300
Wire Wire Line
	8650 5900 9050 5900
Text Notes 8150 5800 1    50   ~ 0
addr 1010000x
$Comp
L power:GND #PWR094
U 1 1 5FCD7888
P 8250 5900
F 0 "#PWR094" H 8250 5650 50  0001 C CNN
F 1 "GND" H 8255 5727 50  0000 C CNN
F 2 "" H 8250 5900 50  0001 C CNN
F 3 "" H 8250 5900 50  0001 C CNN
	1    8250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5500 8250 5600
Connection ~ 8250 5600
Wire Wire Line
	8250 5600 8250 5700
Connection ~ 8250 5700
Wire Wire Line
	8250 5700 8250 5900
Wire Wire Line
	9050 5700 9050 5900
Connection ~ 9050 5900
Text GLabel 6300 2050 2    50   Input ~ 0
B_VOCT_SW
Text GLabel 6300 2150 2    50   Input ~ 0
B_CLK_SW
Text GLabel 6300 2250 2    50   Input ~ 0
B_RST_SW
NoConn ~ 6300 3650
Text GLabel 1100 5500 0    50   Input ~ 0
T_8
Text GLabel 1850 5500 2    50   Input ~ 0
B_8
Text GLabel 1100 5400 0    50   Input ~ 0
T_7
Text GLabel 1850 5400 2    50   Input ~ 0
B_7
Text GLabel 1850 5300 2    50   Input ~ 0
B_6
Text GLabel 1850 5200 2    50   Input ~ 0
B_5
Text GLabel 1850 5100 2    50   Input ~ 0
B_4
Text GLabel 1850 5000 2    50   Input ~ 0
B_3
Text GLabel 1850 4900 2    50   Input ~ 0
B_2
Text GLabel 1850 4800 2    50   Input ~ 0
B_1
Text GLabel 1100 5300 0    50   Input ~ 0
T_6
Text GLabel 1100 5200 0    50   Input ~ 0
T_5
Text GLabel 1100 5100 0    50   Input ~ 0
T_4
Text GLabel 1100 5000 0    50   Input ~ 0
T_3
Text GLabel 1100 4900 0    50   Input ~ 0
T_2
Text GLabel 1100 4800 0    50   Input ~ 0
T_1
$Comp
L Connector:Conn_01x08_Female J?
U 1 1 60187068
P 1300 5100
AR Path="/6088BCB1/60187068" Ref="J?"  Part="1" 
AR Path="/60187068" Ref="J4"  Part="1" 
F 0 "J4" H 1150 5550 50  0000 L CNN
F 1 "Conn_01x08_Female" V 1350 4700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1300 5100 50  0001 C CNN
F 3 "~" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 6018706E
P 1650 5100
AR Path="/6088BCB1/6018706E" Ref="J?"  Part="1" 
AR Path="/6018706E" Ref="J18"  Part="1" 
F 0 "J18" H 1800 5550 50  0000 C CNN
F 1 "Conn_01x08_Male" V 1600 5050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1650 5100 50  0001 C CNN
F 3 "~" H 1650 5100 50  0001 C CNN
	1    1650 5100
	1    0    0    -1  
$EndComp
Text GLabel 1900 6000 2    50   Input ~ 0
B_FRQ
Text GLabel 1900 6400 2    50   Input ~ 0
B_SEL
Text GLabel 1900 6300 2    50   Input ~ 0
B_SCL
Text GLabel 1900 6100 2    50   Input ~ 0
B_OFF
Text GLabel 1150 6000 0    50   Input ~ 0
T_FRQ
Text GLabel 1150 6400 0    50   Input ~ 0
T_SEL
Text GLabel 1150 6100 0    50   Input ~ 0
T_OFF
Text GLabel 1150 6300 0    50   Input ~ 0
T_SCL
Text GLabel 1150 6900 0    50   Input ~ 0
T_VOCT
Text GLabel 1900 6900 2    50   Input ~ 0
B_VOCT
Text GLabel 1150 7300 0    50   Input ~ 0
T_RST
Text GLabel 1900 7100 2    50   Input ~ 0
B_CLK
Text GLabel 1150 7100 0    50   Input ~ 0
T_CLK
Text GLabel 1900 7300 2    50   Input ~ 0
B_RST
Text GLabel 1900 7500 2    50   Input ~ 0
B_MODE_SW
Text GLabel 1150 7500 0    50   Input ~ 0
T_MODE_SW
$Comp
L power:+3.3VA #PWR?
U 1 1 6019FE4A
P 850 6200
AR Path="/606FF2F2/6019FE4A" Ref="#PWR?"  Part="1" 
AR Path="/6019FE4A" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 850 6050 50  0001 C CNN
F 1 "+3.3VA" H 865 6373 50  0000 C CNN
F 2 "" H 850 6200 50  0001 C CNN
F 3 "" H 850 6200 50  0001 C CNN
	1    850  6200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 6019FE50
P 2250 6200
AR Path="/606FF2F2/6019FE50" Ref="#PWR?"  Part="1" 
AR Path="/6019FE50" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2250 6050 50  0001 C CNN
F 1 "+3.3VA" H 2265 6373 50  0000 C CNN
F 2 "" H 2250 6200 50  0001 C CNN
F 3 "" H 2250 6200 50  0001 C CNN
	1    2250 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6019FE56
P 850 7600
AR Path="/6019FE56" Ref="#PWR0103"  Part="1" 
AR Path="/606FF2F2/6019FE56" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 850 7350 50  0001 C CNN
F 1 "GND" V 950 7650 50  0000 R CNN
F 2 "" H 850 7600 50  0001 C CNN
F 3 "" H 850 7600 50  0001 C CNN
	1    850  7600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6019FE5C
P 2200 7600
AR Path="/6019FE5C" Ref="#PWR0104"  Part="1" 
AR Path="/606FF2F2/6019FE5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 2200 7350 50  0001 C CNN
F 1 "GND" V 2100 7650 50  0000 R CNN
F 2 "" H 2200 7600 50  0001 C CNN
F 3 "" H 2200 7600 50  0001 C CNN
	1    2200 7600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 6019FE64
P 1350 6200
AR Path="/606FF2F2/6019FE64" Ref="J?"  Part="1" 
AR Path="/6019FE64" Ref="J6"  Part="1" 
F 0 "J6" H 1200 6500 50  0000 L CNN
F 1 "Conn_01x05_Female" V 1400 6000 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 1350 6200 50  0001 C CNN
F 3 "~" H 1350 6200 50  0001 C CNN
	1    1350 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 6019FE6A
P 1700 6200
AR Path="/606FF2F2/6019FE6A" Ref="J?"  Part="1" 
AR Path="/6019FE6A" Ref="J19"  Part="1" 
F 0 "J19" H 1750 6500 50  0000 C CNN
F 1 "Conn_01x05_Male" V 1600 6300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1700 6200 50  0001 C CNN
F 3 "~" H 1700 6200 50  0001 C CNN
	1    1700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7600 1900 7600
Wire Wire Line
	1150 7600 850  7600
$Comp
L Connector:Conn_01x08_Female J?
U 1 1 6019FE72
P 1350 7200
AR Path="/606FF2F2/6019FE72" Ref="J?"  Part="1" 
AR Path="/6019FE72" Ref="J13"  Part="1" 
F 0 "J13" H 1250 7600 50  0000 L CNN
F 1 "Conn_01x08_Female" V 1400 6800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1350 7200 50  0001 C CNN
F 3 "~" H 1350 7200 50  0001 C CNN
	1    1350 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 6019FE78
P 1700 7200
AR Path="/606FF2F2/6019FE78" Ref="J?"  Part="1" 
AR Path="/6019FE78" Ref="J20"  Part="1" 
F 0 "J20" H 1800 7600 50  0000 C CNN
F 1 "Conn_01x08_Male" V 1650 7150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1700 7200 50  0001 C CNN
F 3 "~" H 1700 7200 50  0001 C CNN
	1    1700 7200
	1    0    0    -1  
$EndComp
Text GLabel 1150 7000 0    50   Input ~ 0
T_VOCT_SW
Text GLabel 1150 7200 0    50   Input ~ 0
T_CLK_SW
Text GLabel 1150 7400 0    50   Input ~ 0
T_RST_SW
Text GLabel 1900 7000 2    50   Input ~ 0
B_VOCT_SW
Text GLabel 1900 7200 2    50   Input ~ 0
B_CLK_SW
Text GLabel 1900 7400 2    50   Input ~ 0
B_RST_SW
Text GLabel 3500 7300 0    50   Input ~ 0
R3_T
Text GLabel 3500 7200 0    50   Input ~ 0
G3_T
Text GLabel 3500 7100 0    50   Input ~ 0
R4_T
Text GLabel 3500 7000 0    50   Input ~ 0
G4_T
Text GLabel 3500 6900 0    50   Input ~ 0
R5_T
Text GLabel 3500 6800 0    50   Input ~ 0
G5_T
Text GLabel 3500 6700 0    50   Input ~ 0
R6_T
Text GLabel 3500 6600 0    50   Input ~ 0
G6_T
Text GLabel 3500 6400 0    50   Input ~ 0
R7_T
Text GLabel 3500 6300 0    50   Input ~ 0
G7_T
Text GLabel 3500 6200 0    50   Input ~ 0
R8_T
Text GLabel 3500 6100 0    50   Input ~ 0
G8_T
$Comp
L power:+3.3V #PWR?
U 1 1 601C955B
P 4550 6500
AR Path="/6088BCB1/601C955B" Ref="#PWR?"  Part="1" 
AR Path="/601C955B" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 4550 6350 50  0001 C CNN
F 1 "+3.3V" H 4565 6673 50  0000 C CNN
F 2 "" H 4550 6500 50  0001 C CNN
F 3 "" H 4550 6500 50  0001 C CNN
	1    4550 6500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601C9561
P 3250 6500
AR Path="/6088BCB1/601C9561" Ref="#PWR?"  Part="1" 
AR Path="/601C9561" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3250 6350 50  0001 C CNN
F 1 "+3.3V" H 3265 6673 50  0000 C CNN
F 2 "" H 3250 6500 50  0001 C CNN
F 3 "" H 3250 6500 50  0001 C CNN
	1    3250 6500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x17_Female J?
U 1 1 601C9567
P 3700 6500
AR Path="/6088BCB1/601C9567" Ref="J?"  Part="1" 
AR Path="/601C9567" Ref="J21"  Part="1" 
F 0 "J21" H 3592 5475 50  0000 C CNN
F 1 "Conn_01x17_Female" V 3750 6400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 3700 6500 50  0001 C CNN
F 3 "~" H 3700 6500 50  0001 C CNN
	1    3700 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x17_Male J?
U 1 1 601C956D
P 4050 6500
AR Path="/6088BCB1/601C956D" Ref="J?"  Part="1" 
AR Path="/601C956D" Ref="J22"  Part="1" 
F 0 "J22" H 4150 5600 50  0000 R CNN
F 1 "Conn_01x17_Male" V 4000 6750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x17_P2.54mm_Vertical" H 4050 6500 50  0001 C CNN
F 3 "~" H 4050 6500 50  0001 C CNN
	1    4050 6500
	1    0    0    -1  
$EndComp
Text GLabel 4250 6000 2    50   Input ~ 0
R1_B
Text GLabel 4250 5900 2    50   Input ~ 0
G1_B
Text GLabel 4250 5800 2    50   Input ~ 0
R2_B
Text GLabel 4250 5700 2    50   Input ~ 0
G2_B
Text GLabel 4250 7300 2    50   Input ~ 0
R3_B
Text GLabel 4250 7200 2    50   Input ~ 0
G3_B
Text GLabel 4250 7100 2    50   Input ~ 0
R4_B
Text GLabel 4250 7000 2    50   Input ~ 0
G4_B
Text GLabel 4250 6900 2    50   Input ~ 0
R5_B
Text GLabel 4250 6800 2    50   Input ~ 0
G5_B
Text GLabel 4250 6700 2    50   Input ~ 0
R6_B
Text GLabel 4250 6600 2    50   Input ~ 0
G6_B
Text GLabel 4250 6400 2    50   Input ~ 0
R7_B
Text GLabel 4250 6300 2    50   Input ~ 0
G7_B
Text GLabel 4250 6200 2    50   Input ~ 0
R8_B
Text GLabel 4250 6100 2    50   Input ~ 0
G8_B
Wire Wire Line
	850  6200 1150 6200
Wire Wire Line
	2250 6200 1900 6200
Text GLabel 3500 5700 0    50   Input ~ 0
G2_T
Text GLabel 3500 5800 0    50   Input ~ 0
R2_T
Text GLabel 3500 5900 0    50   Input ~ 0
G1_T
Text GLabel 3500 6000 0    50   Input ~ 0
R1_T
Wire Wire Line
	4250 6500 4550 6500
Wire Wire Line
	3500 6500 3250 6500
NoConn ~ 6300 1950
$EndSCHEMATC
