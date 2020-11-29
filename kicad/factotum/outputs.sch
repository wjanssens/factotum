EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Amplifier_Operational:LM2902 U?
U 1 1 608C4D98
P 4700 1400
AR Path="/608C4D98" Ref="U?"  Part="1" 
AR Path="/6088BCB1/608C4D98" Ref="U7"  Part="1" 
F 0 "U7" H 4700 1767 50  0000 C CNN
F 1 "LM2902" H 4700 1676 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4650 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4750 1600 50  0001 C CNN
	1    4700 1400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 608C4D9F
P 4100 1300
AR Path="/608C4D9F" Ref="R?"  Part="1" 
AR Path="/6088BCB1/608C4D9F" Ref="R39"  Part="1" 
F 0 "R39" V 4000 1300 50  0000 C CNN
F 1 "22k" V 4200 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4100 1300 50  0001 C CNN
F 3 "~" H 4100 1300 50  0001 C CNN
	1    4100 1300
	0    1    1    0   
$EndComp
Text Notes 3800 1150 0    50   ~ 0
0 +3.3V
Text Notes 5800 1100 0    50   ~ 0
-10 +10V
Text Notes 5800 1000 0    50   ~ 0
inverting
Text GLabel 4400 5950 2    50   Input ~ 0
DAC1
$Comp
L power:GND #PWR?
U 1 1 608CD2E4
P 3250 6450
AR Path="/608CD2E4" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/608CD2E4" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 3250 6200 50  0001 C CNN
F 1 "GND" V 3255 6322 50  0000 R CNN
F 2 "" H 3250 6450 50  0001 C CNN
F 3 "" H 3250 6450 50  0001 C CNN
	1    3250 6450
	0    1    1    0   
$EndComp
Text GLabel 4400 6050 2    50   Input ~ 0
DAC2
Text GLabel 4400 6150 2    50   Input ~ 0
DAC3
Text GLabel 4400 6250 2    50   Input ~ 0
DAC4
Text GLabel 4400 6350 2    50   Input ~ 0
DAC5
Text GLabel 4400 6450 2    50   Input ~ 0
DAC6
Text GLabel 4400 6550 2    50   Input ~ 0
DAC7
Text GLabel 4400 6650 2    50   Input ~ 0
DAC8
$Comp
L custom-parts:DAC128S085 U?
U 1 1 608CD2F2
P 4000 6300
AR Path="/608CD2F2" Ref="U?"  Part="1" 
AR Path="/6088BCB1/608CD2F2" Ref="U10"  Part="1" 
F 0 "U10" H 3950 6915 50  0000 C CNN
F 1 "DAC128S085" H 3950 6824 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4000 6350 50  0001 C CNN
F 3 "" H 4000 6350 50  0001 C CNN
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 608CD2F9
P 3250 6150
AR Path="/608CD2F9" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/608CD2F9" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 3250 6000 50  0001 C CNN
F 1 "+3.3VA" V 3265 6277 50  0000 L CNN
F 2 "" H 3250 6150 50  0001 C CNN
F 3 "" H 3250 6150 50  0001 C CNN
	1    3250 6150
	0    -1   -1   0   
$EndComp
Text GLabel 3500 5950 0    50   Input ~ 0
SPI2_MOSI
Text GLabel 3500 6650 0    50   Input ~ 0
SPI2_SCLK
Wire Wire Line
	3250 6450 3500 6450
Text GLabel 3500 6550 0    50   Input ~ 0
DAC_SYNC
Wire Wire Line
	3250 6150 3350 6150
$Comp
L Device:R_Small R?
U 1 1 60911DF4
P 5200 1400
AR Path="/60911DF4" Ref="R?"  Part="1" 
AR Path="/6088BCB1/60911DF4" Ref="R48"  Part="1" 
F 0 "R48" V 5100 1400 50  0000 C CNN
F 1 "1k" V 5300 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 5200 1400 50  0001 C CNN
F 3 "~" H 5200 1400 50  0001 C CNN
	1    5200 1400
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 60912BEA
P 5900 1500
AR Path="/60912BEA" Ref="J?"  Part="1" 
AR Path="/6088BCB1/60912BEA" Ref="J14"  Part="1" 
F 0 "J14" H 5932 1825 50  0000 C CNN
F 1 "OUT2" H 5932 1734 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 5900 1500 50  0001 C CNN
F 3 "~" H 5900 1500 50  0001 C CNN
	1    5900 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609241CC
P 5600 1700
AR Path="/609241CC" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609241CC" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 5600 1450 50  0001 C CNN
F 1 "GND" V 5605 1572 50  0000 R CNN
F 2 "" H 5600 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1500 5600 1500
Wire Wire Line
	5600 1500 5600 1700
NoConn ~ 5700 1600
Wire Wire Line
	4400 1300 4350 1300
Text GLabel 4400 1500 0    50   Input ~ 0
VREF
Text GLabel 4000 1300 0    50   Input ~ 0
DAC2
$Comp
L Device:R_Small R?
U 1 1 60956766
P 4650 1000
AR Path="/60956766" Ref="R?"  Part="1" 
AR Path="/6088BCB1/60956766" Ref="R43"  Part="1" 
F 0 "R43" V 4550 1000 50  0000 C CNN
F 1 "130k" V 4750 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4650 1000 50  0001 C CNN
F 3 "~" H 4650 1000 50  0001 C CNN
	1    4650 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 1300 4350 1000
Wire Wire Line
	4350 1000 4550 1000
Connection ~ 4350 1300
Wire Wire Line
	4350 1300 4200 1300
$Comp
L Device:R_Small R29
U 1 1 60964D63
P 1250 6100
F 0 "R29" H 1309 6146 50  0000 L CNN
F 1 "680k" H 1309 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1250 6100 50  0001 C CNN
F 3 "~" H 1250 6100 50  0001 C CNN
	1    1250 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R30
U 1 1 60965A2A
P 1250 6500
F 0 "R30" H 1309 6546 50  0000 L CNN
F 1 "510k" H 1309 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1250 6500 50  0001 C CNN
F 3 "~" H 1250 6500 50  0001 C CNN
	1    1250 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6096668A
P 1250 6700
AR Path="/6096668A" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/6096668A" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 1250 6450 50  0001 C CNN
F 1 "GND" V 1255 6572 50  0000 R CNN
F 2 "" H 1250 6700 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR063
U 1 1 60967AD1
P 1250 5900
F 0 "#PWR063" H 1250 5750 50  0001 C CNN
F 1 "+3.3VA" H 1265 6073 50  0000 C CNN
F 2 "" H 1250 5900 50  0001 C CNN
F 3 "" H 1250 5900 50  0001 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
Text GLabel 1400 6300 2    50   Input ~ 0
VREF
Wire Wire Line
	1250 5900 1250 6000
Wire Wire Line
	1250 6200 1250 6300
Wire Wire Line
	1400 6300 1250 6300
Connection ~ 1250 6300
Wire Wire Line
	1250 6300 1250 6400
Wire Wire Line
	1250 6700 1250 6600
Text Notes 1550 6450 0    50   ~ 0
1.414V
$Comp
L Amplifier_Operational:LM2902 U?
U 1 1 609E6638
P 1850 1400
AR Path="/609E6638" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609E6638" Ref="U6"  Part="1" 
F 0 "U6" H 1850 1767 50  0000 C CNN
F 1 "LM2902" H 1850 1676 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1800 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1900 1600 50  0001 C CNN
	1    1850 1400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609E6796
P 1250 1300
AR Path="/609E6796" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609E6796" Ref="R25"  Part="1" 
F 0 "R25" V 1150 1300 50  0000 C CNN
F 1 "22k" V 1350 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1250 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	0    1    1    0   
$EndComp
Text Notes 950  1150 0    50   ~ 0
0 +3.3V
Text Notes 2950 1100 0    50   ~ 0
-10 +10V
Text Notes 2950 1000 0    50   ~ 0
inverting
$Comp
L Device:R_Small R?
U 1 1 609E67A3
P 2350 1400
AR Path="/609E67A3" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609E67A3" Ref="R35"  Part="1" 
F 0 "R35" V 2250 1400 50  0000 C CNN
F 1 "1k" V 2450 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 2350 1400 50  0001 C CNN
F 3 "~" H 2350 1400 50  0001 C CNN
	1    2350 1400
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609E67AD
P 3050 1500
AR Path="/609E67AD" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609E67AD" Ref="J9"  Part="1" 
F 0 "J9" H 3082 1825 50  0000 C CNN
F 1 "OUT1" H 3082 1734 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 3050 1500 50  0001 C CNN
F 3 "~" H 3050 1500 50  0001 C CNN
	1    3050 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609E67B8
P 2750 1700
AR Path="/609E67B8" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609E67B8" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 2750 1450 50  0001 C CNN
F 1 "GND" V 2755 1572 50  0000 R CNN
F 2 "" H 2750 1700 50  0001 C CNN
F 3 "" H 2750 1700 50  0001 C CNN
	1    2750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1500 2750 1500
Wire Wire Line
	2750 1500 2750 1700
NoConn ~ 2850 1600
Wire Wire Line
	1550 1300 1500 1300
Text GLabel 1550 1500 0    50   Input ~ 0
VREF
Text GLabel 1150 1300 0    50   Input ~ 0
DAC1
$Comp
L Device:R_Small R?
U 1 1 609E67C9
P 1800 1000
AR Path="/609E67C9" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609E67C9" Ref="R31"  Part="1" 
F 0 "R31" V 1700 1000 50  0000 C CNN
F 1 "130k" V 1900 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1800 1000 50  0001 C CNN
F 3 "~" H 1800 1000 50  0001 C CNN
	1    1800 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1300 1500 1000
Wire Wire Line
	1500 1000 1700 1000
Connection ~ 1500 1300
Wire Wire Line
	1500 1300 1350 1300
Wire Wire Line
	1900 1000 2500 1000
$Comp
L Amplifier_Operational:LM2902 U?
U 2 1 609EE9FB
P 4700 2550
AR Path="/609EE9FB" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609EE9FB" Ref="U7"  Part="2" 
F 0 "U7" H 4700 2917 50  0000 C CNN
F 1 "LM2902" H 4700 2826 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4650 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4750 2750 50  0001 C CNN
	2    4700 2550
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609EEBE1
P 4100 2450
AR Path="/609EEBE1" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609EEBE1" Ref="R40"  Part="1" 
F 0 "R40" V 4000 2450 50  0000 C CNN
F 1 "22k" V 4200 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4100 2450 50  0001 C CNN
F 3 "~" H 4100 2450 50  0001 C CNN
	1    4100 2450
	0    1    1    0   
$EndComp
Text Notes 3800 2300 0    50   ~ 0
0 +3.3V
Text Notes 5800 2250 0    50   ~ 0
-10 +10V
Text Notes 5800 2150 0    50   ~ 0
inverting
$Comp
L Device:R_Small R?
U 1 1 609EEBEE
P 5200 2550
AR Path="/609EEBEE" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609EEBEE" Ref="R49"  Part="1" 
F 0 "R49" V 5100 2550 50  0000 C CNN
F 1 "1k" V 5300 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 5200 2550 50  0001 C CNN
F 3 "~" H 5200 2550 50  0001 C CNN
	1    5200 2550
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609EEBF8
P 5900 2650
AR Path="/609EEBF8" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609EEBF8" Ref="J15"  Part="1" 
F 0 "J15" H 5932 2975 50  0000 C CNN
F 1 "OUT4" H 5932 2884 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 5900 2650 50  0001 C CNN
F 3 "~" H 5900 2650 50  0001 C CNN
	1    5900 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609EEC03
P 5600 2850
AR Path="/609EEC03" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609EEC03" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 5600 2600 50  0001 C CNN
F 1 "GND" V 5605 2722 50  0000 R CNN
F 2 "" H 5600 2850 50  0001 C CNN
F 3 "" H 5600 2850 50  0001 C CNN
	1    5600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2650 5600 2650
NoConn ~ 5700 2750
Wire Wire Line
	4400 2450 4350 2450
Text GLabel 4400 2650 0    50   Input ~ 0
VREF
Text GLabel 4000 2450 0    50   Input ~ 0
DAC4
$Comp
L Device:R_Small R?
U 1 1 609EEC14
P 4650 2150
AR Path="/609EEC14" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609EEC14" Ref="R44"  Part="1" 
F 0 "R44" V 4550 2150 50  0000 C CNN
F 1 "130k" V 4750 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4650 2150 50  0001 C CNN
F 3 "~" H 4650 2150 50  0001 C CNN
	1    4650 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2450 4350 2150
Wire Wire Line
	4350 2150 4550 2150
Connection ~ 4350 2450
Wire Wire Line
	4350 2450 4200 2450
$Comp
L Amplifier_Operational:LM2902 U?
U 2 1 609EEC26
P 1850 2550
AR Path="/609EEC26" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609EEC26" Ref="U6"  Part="2" 
F 0 "U6" H 1850 2917 50  0000 C CNN
F 1 "LM2902" H 1850 2826 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1800 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1900 2750 50  0001 C CNN
	2    1850 2550
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609EEC30
P 1250 2450
AR Path="/609EEC30" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609EEC30" Ref="R26"  Part="1" 
F 0 "R26" V 1150 2450 50  0000 C CNN
F 1 "22k" V 1350 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1250 2450 50  0001 C CNN
F 3 "~" H 1250 2450 50  0001 C CNN
	1    1250 2450
	0    1    1    0   
$EndComp
Text Notes 950  2300 0    50   ~ 0
0 +3.3V
Text Notes 2950 2250 0    50   ~ 0
-10 +10V
Text Notes 2950 2150 0    50   ~ 0
inverting
$Comp
L Device:R_Small R?
U 1 1 609EEC3D
P 2350 2550
AR Path="/609EEC3D" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609EEC3D" Ref="R36"  Part="1" 
F 0 "R36" V 2250 2550 50  0000 C CNN
F 1 "1k" V 2450 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 2350 2550 50  0001 C CNN
F 3 "~" H 2350 2550 50  0001 C CNN
	1    2350 2550
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609EEC47
P 3050 2650
AR Path="/609EEC47" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609EEC47" Ref="J10"  Part="1" 
F 0 "J10" H 3082 2975 50  0000 C CNN
F 1 "OUT3" H 3082 2884 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 3050 2650 50  0001 C CNN
F 3 "~" H 3050 2650 50  0001 C CNN
	1    3050 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609EEC52
P 2750 2850
AR Path="/609EEC52" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609EEC52" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 2750 2600 50  0001 C CNN
F 1 "GND" V 2755 2722 50  0000 R CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2650 2750 2650
Wire Wire Line
	2750 2650 2750 2850
NoConn ~ 2850 2750
Wire Wire Line
	1550 2450 1500 2450
Text GLabel 1550 2650 0    50   Input ~ 0
VREF
Text GLabel 1150 2450 0    50   Input ~ 0
DAC3
$Comp
L Device:R_Small R?
U 1 1 609EEC63
P 1800 2150
AR Path="/609EEC63" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609EEC63" Ref="R32"  Part="1" 
F 0 "R32" V 1700 2150 50  0000 C CNN
F 1 "130k" V 1900 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1800 2150 50  0001 C CNN
F 3 "~" H 1800 2150 50  0001 C CNN
	1    1800 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2450 1500 2150
Wire Wire Line
	1500 2150 1700 2150
Connection ~ 1500 2450
Wire Wire Line
	1500 2450 1350 2450
$Comp
L Amplifier_Operational:LM2902 U?
U 3 1 609F74CD
P 4700 3650
AR Path="/609F74CD" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609F74CD" Ref="U7"  Part="3" 
F 0 "U7" H 4700 4017 50  0000 C CNN
F 1 "LM2902" H 4700 3926 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4650 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4750 3850 50  0001 C CNN
	3    4700 3650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609F787B
P 4100 3550
AR Path="/609F787B" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F787B" Ref="R41"  Part="1" 
F 0 "R41" V 4000 3550 50  0000 C CNN
F 1 "22k" V 4200 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4100 3550 50  0001 C CNN
F 3 "~" H 4100 3550 50  0001 C CNN
	1    4100 3550
	0    1    1    0   
$EndComp
Text Notes 3800 3400 0    50   ~ 0
0 +3.3V
Text Notes 5800 3350 0    50   ~ 0
-10 +10V
Text Notes 5850 3250 0    50   ~ 0
inverting
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609F7892
P 5900 3750
AR Path="/609F7892" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609F7892" Ref="J16"  Part="1" 
F 0 "J16" H 5932 4075 50  0000 C CNN
F 1 "OUT6" H 5932 3984 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 5900 3750 50  0001 C CNN
F 3 "~" H 5900 3750 50  0001 C CNN
	1    5900 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609F789D
P 5600 3950
AR Path="/609F789D" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609F789D" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 5600 3700 50  0001 C CNN
F 1 "GND" V 5605 3822 50  0000 R CNN
F 2 "" H 5600 3950 50  0001 C CNN
F 3 "" H 5600 3950 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
NoConn ~ 5700 3850
Wire Wire Line
	4400 3550 4350 3550
Text GLabel 4400 3750 0    50   Input ~ 0
VREF
Text GLabel 4000 3550 0    50   Input ~ 0
DAC6
$Comp
L Device:R_Small R?
U 1 1 609F78AE
P 4650 3250
AR Path="/609F78AE" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F78AE" Ref="R45"  Part="1" 
F 0 "R45" V 4550 3250 50  0000 C CNN
F 1 "130k" V 4750 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4650 3250 50  0001 C CNN
F 3 "~" H 4650 3250 50  0001 C CNN
	1    4650 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3550 4350 3250
Wire Wire Line
	4350 3250 4550 3250
Connection ~ 4350 3550
Wire Wire Line
	4350 3550 4200 3550
$Comp
L Amplifier_Operational:LM2902 U?
U 3 1 609F78C0
P 1850 3650
AR Path="/609F78C0" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609F78C0" Ref="U6"  Part="3" 
F 0 "U6" H 1850 4017 50  0000 C CNN
F 1 "LM2902" H 1850 3926 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1800 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1900 3850 50  0001 C CNN
	3    1850 3650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609F78CA
P 1250 3550
AR Path="/609F78CA" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F78CA" Ref="R27"  Part="1" 
F 0 "R27" V 1150 3550 50  0000 C CNN
F 1 "22k" V 1350 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1250 3550 50  0001 C CNN
F 3 "~" H 1250 3550 50  0001 C CNN
	1    1250 3550
	0    1    1    0   
$EndComp
Text Notes 950  3400 0    50   ~ 0
0 +3.3V
Text Notes 2950 3350 0    50   ~ 0
-10 +10V
Text Notes 2950 3250 0    50   ~ 0
inverting
$Comp
L Device:R_Small R?
U 1 1 609F78D7
P 2350 3650
AR Path="/609F78D7" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F78D7" Ref="R37"  Part="1" 
F 0 "R37" V 2250 3650 50  0000 C CNN
F 1 "1k" V 2450 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 2350 3650 50  0001 C CNN
F 3 "~" H 2350 3650 50  0001 C CNN
	1    2350 3650
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609F78E1
P 3050 3750
AR Path="/609F78E1" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609F78E1" Ref="J11"  Part="1" 
F 0 "J11" H 3082 4075 50  0000 C CNN
F 1 "OUT5" H 3082 3984 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 3050 3750 50  0001 C CNN
F 3 "~" H 3050 3750 50  0001 C CNN
	1    3050 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609F78EC
P 2750 3950
AR Path="/609F78EC" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609F78EC" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 2750 3700 50  0001 C CNN
F 1 "GND" V 2755 3822 50  0000 R CNN
F 2 "" H 2750 3950 50  0001 C CNN
F 3 "" H 2750 3950 50  0001 C CNN
	1    2750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3750 2750 3750
Wire Wire Line
	2750 3750 2750 3950
NoConn ~ 2850 3850
Wire Wire Line
	1550 3550 1500 3550
Text GLabel 1550 3750 0    50   Input ~ 0
VREF
Text GLabel 1150 3550 0    50   Input ~ 0
DAC5
$Comp
L Device:R_Small R?
U 1 1 609F78FD
P 1800 3250
AR Path="/609F78FD" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F78FD" Ref="R33"  Part="1" 
F 0 "R33" V 1700 3250 50  0000 C CNN
F 1 "130k" V 1900 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1800 3250 50  0001 C CNN
F 3 "~" H 1800 3250 50  0001 C CNN
	1    1800 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 3550 1500 3250
Wire Wire Line
	1500 3250 1700 3250
Connection ~ 1500 3550
Wire Wire Line
	1500 3550 1350 3550
$Comp
L Amplifier_Operational:LM2902 U?
U 4 1 609F790F
P 4700 4800
AR Path="/609F790F" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609F790F" Ref="U7"  Part="4" 
F 0 "U7" H 4700 5167 50  0000 C CNN
F 1 "LM2902" H 4700 5076 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4650 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4750 5000 50  0001 C CNN
	4    4700 4800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609F7919
P 4100 4700
AR Path="/609F7919" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F7919" Ref="R42"  Part="1" 
F 0 "R42" V 4000 4700 50  0000 C CNN
F 1 "22k" V 4200 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4100 4700 50  0001 C CNN
F 3 "~" H 4100 4700 50  0001 C CNN
	1    4100 4700
	0    1    1    0   
$EndComp
Text Notes 3800 4550 0    50   ~ 0
0 +3.3V
Text Notes 5800 4500 0    50   ~ 0
-10 +10V
Text Notes 5800 4400 0    50   ~ 0
inverting
$Comp
L Device:R_Small R?
U 1 1 609F7926
P 5150 4800
AR Path="/609F7926" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F7926" Ref="R47"  Part="1" 
F 0 "R47" V 5050 4800 50  0000 C CNN
F 1 "1k" V 5250 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 5150 4800 50  0001 C CNN
F 3 "~" H 5150 4800 50  0001 C CNN
	1    5150 4800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609F7930
P 5900 4900
AR Path="/609F7930" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609F7930" Ref="J17"  Part="1" 
F 0 "J17" H 5932 5225 50  0000 C CNN
F 1 "OUT8" H 5932 5134 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 5900 4900 50  0001 C CNN
F 3 "~" H 5900 4900 50  0001 C CNN
	1    5900 4900
	-1   0    0    -1  
$EndComp
NoConn ~ 5700 5000
Wire Wire Line
	4400 4700 4350 4700
Text GLabel 4400 4900 0    50   Input ~ 0
VREF
Text GLabel 4000 4700 0    50   Input ~ 0
DAC8
$Comp
L Device:R_Small R?
U 1 1 609F794C
P 4650 4400
AR Path="/609F794C" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F794C" Ref="R46"  Part="1" 
F 0 "R46" V 4550 4400 50  0000 C CNN
F 1 "130k" V 4750 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4650 4400 50  0001 C CNN
F 3 "~" H 4650 4400 50  0001 C CNN
	1    4650 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4700 4350 4400
Wire Wire Line
	4350 4400 4550 4400
Connection ~ 4350 4700
Wire Wire Line
	4350 4700 4200 4700
$Comp
L Amplifier_Operational:LM2902 U?
U 4 1 609F795E
P 1850 4800
AR Path="/609F795E" Ref="U?"  Part="1" 
AR Path="/6088BCB1/609F795E" Ref="U6"  Part="4" 
F 0 "U6" H 1850 5167 50  0000 C CNN
F 1 "LM2902" H 1850 5076 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1800 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1900 5000 50  0001 C CNN
	4    1850 4800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609F7968
P 1250 4700
AR Path="/609F7968" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F7968" Ref="R28"  Part="1" 
F 0 "R28" V 1150 4700 50  0000 C CNN
F 1 "22k" V 1350 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1250 4700 50  0001 C CNN
F 3 "~" H 1250 4700 50  0001 C CNN
	1    1250 4700
	0    1    1    0   
$EndComp
Text Notes 950  4550 0    50   ~ 0
0 +3.3V
Text Notes 2950 4500 0    50   ~ 0
-10 +10V
Text Notes 2950 4400 0    50   ~ 0
inverting
$Comp
L Device:R_Small R?
U 1 1 609F7975
P 2350 4800
AR Path="/609F7975" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F7975" Ref="R38"  Part="1" 
F 0 "R38" V 2250 4800 50  0000 C CNN
F 1 "1k" V 2450 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 2350 4800 50  0001 C CNN
F 3 "~" H 2350 4800 50  0001 C CNN
	1    2350 4800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609F797F
P 3050 4900
AR Path="/609F797F" Ref="J?"  Part="1" 
AR Path="/6088BCB1/609F797F" Ref="J12"  Part="1" 
F 0 "J12" H 3082 5225 50  0000 C CNN
F 1 "OUT7" H 3082 5134 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 3050 4900 50  0001 C CNN
F 3 "~" H 3050 4900 50  0001 C CNN
	1    3050 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609F798A
P 2750 5100
AR Path="/609F798A" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/609F798A" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 2750 4850 50  0001 C CNN
F 1 "GND" V 2755 4972 50  0000 R CNN
F 2 "" H 2750 5100 50  0001 C CNN
F 3 "" H 2750 5100 50  0001 C CNN
	1    2750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4900 2750 4900
Wire Wire Line
	2750 4900 2750 5100
NoConn ~ 2850 5000
Wire Wire Line
	1550 4700 1500 4700
Text GLabel 1550 4900 0    50   Input ~ 0
VREF
Text GLabel 1150 4700 0    50   Input ~ 0
DAC7
$Comp
L Device:R_Small R?
U 1 1 609F799B
P 1800 4400
AR Path="/609F799B" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F799B" Ref="R34"  Part="1" 
F 0 "R34" V 1700 4400 50  0000 C CNN
F 1 "130k" V 1900 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 1800 4400 50  0001 C CNN
F 3 "~" H 1800 4400 50  0001 C CNN
	1    1800 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 4700 1500 4400
Wire Wire Line
	1500 4400 1700 4400
Connection ~ 1500 4700
Wire Wire Line
	1500 4700 1350 4700
Text GLabel 3500 6050 0    50   Input ~ 0
SPI2_MISO
Wire Wire Line
	3500 6350 3350 6350
Wire Wire Line
	3350 6350 3350 6250
Connection ~ 3350 6150
Wire Wire Line
	3350 6150 3500 6150
Connection ~ 3350 6250
Wire Wire Line
	3350 6250 3350 6150
Wire Wire Line
	3350 6250 3500 6250
$Comp
L Driver_LED:PCA9685PW U15
U 1 1 60A614F3
P 7700 3400
F 0 "U15" H 7800 4400 50  0000 C CNN
F 1 "PCA9685PW" H 7950 4300 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 7725 2425 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 7300 4100 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
Text GLabel 7000 2700 0    50   Input ~ 0
I2C1_SCL
Text GLabel 7000 2800 0    50   Input ~ 0
I2C1_SDA
$Comp
L Device:LED_Dual_CAC D4
U 1 1 60A65F4C
P 10550 950
F 0 "D4" H 10550 603 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 694 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 950 50  0001 C CNN
F 3 "~" H 10600 950 50  0001 C CNN
	1    10550 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D5
U 1 1 60A6A0C4
P 10550 1600
F 0 "D5" H 10550 1253 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 1344 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 1600 50  0001 C CNN
F 3 "~" H 10600 1600 50  0001 C CNN
	1    10550 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D6
U 1 1 60A6AC6C
P 10550 2250
F 0 "D6" H 10550 1903 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 1994 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 2250 50  0001 C CNN
F 3 "~" H 10600 2250 50  0001 C CNN
	1    10550 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D7
U 1 1 60A6BB95
P 10550 2900
F 0 "D7" H 10550 2553 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 2644 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 2900 50  0001 C CNN
F 3 "~" H 10600 2900 50  0001 C CNN
	1    10550 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D8
U 1 1 60A6C2D7
P 10550 3550
F 0 "D8" H 10550 3203 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 3294 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 3550 50  0001 C CNN
F 3 "~" H 10600 3550 50  0001 C CNN
	1    10550 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D9
U 1 1 60A6D4AE
P 10550 4200
F 0 "D9" H 10550 3853 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 3944 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 4200 50  0001 C CNN
F 3 "~" H 10600 4200 50  0001 C CNN
	1    10550 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D10
U 1 1 60A6DFC2
P 10550 4850
F 0 "D10" H 10550 4503 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 4594 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 4850 50  0001 C CNN
F 3 "~" H 10600 4850 50  0001 C CNN
	1    10550 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Dual_CAC D11
U 1 1 60A6EB9B
P 10550 5500
F 0 "D11" H 10550 5153 50  0000 C CNN
F 1 "SSL-LX3059IGW-CA" H 10550 5244 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm-3" H 10600 5500 50  0001 C CNN
F 3 "~" H 10600 5500 50  0001 C CNN
	1    10550 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R52
U 1 1 60A886D9
P 10050 850
F 0 "R52" V 10000 700 50  0000 C CNN
F 1 "68" V 10100 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 850 50  0001 C CNN
F 3 "~" H 10050 850 50  0001 C CNN
	1    10050 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R53
U 1 1 60A88B0D
P 10050 1050
F 0 "R53" V 10000 900 50  0000 C CNN
F 1 "56" V 10100 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 1050 50  0001 C CNN
F 3 "~" H 10050 1050 50  0001 C CNN
	1    10050 1050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR088
U 1 1 60AB1186
P 10850 5800
F 0 "#PWR088" H 10850 5650 50  0001 C CNN
F 1 "+3.3V" H 10865 5973 50  0000 C CNN
F 2 "" H 10850 5800 50  0001 C CNN
F 3 "" H 10850 5800 50  0001 C CNN
	1    10850 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10850 5800 10850 5500
Wire Wire Line
	10850 5500 10850 4850
Connection ~ 10850 5500
Wire Wire Line
	10850 4850 10850 4200
Connection ~ 10850 4850
Connection ~ 10850 1600
Wire Wire Line
	10850 1600 10850 950 
Connection ~ 10850 2250
Wire Wire Line
	10850 2250 10850 1600
Connection ~ 10850 2900
Wire Wire Line
	10850 2900 10850 2250
Connection ~ 10850 3550
Wire Wire Line
	10850 3550 10850 2900
Connection ~ 10850 4200
Wire Wire Line
	10850 4200 10850 3550
Wire Wire Line
	10150 3000 10250 3000
Wire Wire Line
	10150 2800 10250 2800
Wire Wire Line
	10150 2350 10250 2350
Wire Wire Line
	10150 2150 10250 2150
Wire Wire Line
	10150 1700 10250 1700
Wire Wire Line
	10150 1500 10250 1500
Wire Wire Line
	10150 1050 10250 1050
Wire Wire Line
	10150 850  10250 850 
$Comp
L power:+3.3V #PWR082
U 1 1 60BEFA06
P 7700 2100
F 0 "#PWR082" H 7700 1950 50  0001 C CNN
F 1 "+3.3V" H 7715 2273 50  0000 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR083
U 1 1 60BF0F35
P 7700 4600
F 0 "#PWR083" H 7700 4350 50  0001 C CNN
F 1 "GND" H 7705 4427 50  0000 C CNN
F 2 "" H 7700 4600 50  0001 C CNN
F 3 "" H 7700 4600 50  0001 C CNN
	1    7700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4500 7700 4600
Wire Wire Line
	7700 2400 7700 2100
$Comp
L power:GND #PWR080
U 1 1 60C08629
P 7000 4600
F 0 "#PWR080" H 7000 4350 50  0001 C CNN
F 1 "GND" H 7005 4427 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3600 7000 3700
Connection ~ 7000 3700
Wire Wire Line
	7000 3700 7000 3800
Connection ~ 7000 3800
Wire Wire Line
	7000 3800 7000 3900
Connection ~ 7000 3900
Wire Wire Line
	7000 3900 7000 4000
Connection ~ 7000 4000
Wire Wire Line
	7000 4000 7000 4100
Connection ~ 7000 4100
Wire Wire Line
	7000 4100 7000 4600
$Comp
L Connector:Conn_01x10_Male J18
U 1 1 5FE57044
P 5950 6300
F 0 "J18" H 6050 6850 50  0000 C CNN
F 1 "Conn_01x10_Male" V 5850 6250 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x10_P1.27mm_Vertical" H 5950 6300 50  0001 C CNN
F 3 "~" H 5950 6300 50  0001 C CNN
	1    5950 6300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J13
U 1 1 5FE59C5F
P 5600 6300
F 0 "J13" H 5450 6850 50  0000 L CNN
F 1 "Conn_01x10_Female" V 5700 5900 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x10_P1.27mm_Vertical" H 5600 6300 50  0001 C CNN
F 3 "~" H 5600 6300 50  0001 C CNN
	1    5600 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6B456
P 5200 6800
AR Path="/5FE6B456" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/5FE6B456" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 5200 6550 50  0001 C CNN
F 1 "GND" V 5205 6672 50  0000 R CNN
F 2 "" H 5200 6800 50  0001 C CNN
F 3 "" H 5200 6800 50  0001 C CNN
	1    5200 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6C387
P 6350 6800
AR Path="/5FE6C387" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/5FE6C387" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 6350 6550 50  0001 C CNN
F 1 "GND" V 6355 6672 50  0000 R CNN
F 2 "" H 6350 6800 50  0001 C CNN
F 3 "" H 6350 6800 50  0001 C CNN
	1    6350 6800
	0    -1   -1   0   
$EndComp
Text GLabel 5400 5900 0    50   Input ~ 0
VREF
Text GLabel 6150 5900 2    50   Input ~ 0
VREF
Wire Wire Line
	5600 4900 5700 4900
Text GLabel 5450 4800 1    50   Input ~ 0
B_8
Text GLabel 5600 4800 1    50   Input ~ 0
T_8
$Comp
L power:GND #PWR?
U 1 1 5FEF484F
P 5600 5100
AR Path="/5FEF484F" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/5FEF484F" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 5600 4850 50  0001 C CNN
F 1 "GND" V 5605 4972 50  0000 R CNN
F 2 "" H 5600 5100 50  0001 C CNN
F 3 "" H 5600 5100 50  0001 C CNN
	1    5600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4800 5700 4800
Wire Wire Line
	5000 4800 5050 4800
$Comp
L Device:C_Small C29
U 1 1 60082374
P 2500 6150
F 0 "C29" H 2592 6196 50  0000 L CNN
F 1 "100n" H 2592 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2500 6150 50  0001 C CNN
F 3 "~" H 2500 6150 50  0001 C CNN
	1    2500 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 60088A08
P 2500 5950
AR Path="/60088A08" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/60088A08" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 2500 5800 50  0001 C CNN
F 1 "+3.3VA" V 2515 6077 50  0000 L CNN
F 2 "" H 2500 5950 50  0001 C CNN
F 3 "" H 2500 5950 50  0001 C CNN
	1    2500 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60089781
P 2500 6350
AR Path="/60089781" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/60089781" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 2500 6100 50  0001 C CNN
F 1 "GND" V 2505 6222 50  0000 R CNN
F 2 "" H 2500 6350 50  0001 C CNN
F 3 "" H 2500 6350 50  0001 C CNN
	1    2500 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6250 2500 6350
Wire Wire Line
	2500 5950 2500 6050
Wire Wire Line
	5250 4800 5350 4800
Wire Wire Line
	5350 4800 5350 4400
Wire Wire Line
	4750 4400 5350 4400
Wire Wire Line
	5350 4800 5450 4800
Connection ~ 5350 4800
Wire Wire Line
	5600 4900 5600 5100
Wire Wire Line
	5600 3950 5600 3750
Wire Wire Line
	5600 3750 5700 3750
Text GLabel 5450 3650 1    50   Input ~ 0
B_6
Text GLabel 5600 3650 1    50   Input ~ 0
T_6
$Comp
L Device:R_Small R?
U 1 1 609F7888
P 5200 3650
AR Path="/609F7888" Ref="R?"  Part="1" 
AR Path="/6088BCB1/609F7888" Ref="R50"  Part="1" 
F 0 "R50" V 5100 3650 50  0000 C CNN
F 1 "1k" V 5300 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 5200 3650 50  0001 C CNN
F 3 "~" H 5200 3650 50  0001 C CNN
	1    5200 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3650 5100 3650
Wire Wire Line
	5300 3650 5350 3650
Wire Wire Line
	5600 3650 5700 3650
Wire Wire Line
	4750 3250 5350 3250
Wire Wire Line
	5350 3250 5350 3650
Connection ~ 5350 3650
Wire Wire Line
	5350 3650 5450 3650
Text GLabel 5450 2550 1    50   Input ~ 0
B_4
Text GLabel 5600 2550 1    50   Input ~ 0
T_4
Wire Wire Line
	5600 2850 5600 2650
Wire Wire Line
	5100 2550 5000 2550
Wire Wire Line
	5600 2550 5700 2550
Wire Wire Line
	5300 2550 5350 2550
Wire Wire Line
	5350 2550 5350 2150
Wire Wire Line
	5350 2150 4750 2150
Connection ~ 5350 2550
Wire Wire Line
	5350 2550 5450 2550
Text GLabel 5450 1400 1    50   Input ~ 0
B_2
Text GLabel 5600 1400 1    50   Input ~ 0
T_2
Wire Wire Line
	5600 1400 5700 1400
Wire Wire Line
	5100 1400 5000 1400
Wire Wire Line
	5300 1400 5350 1400
Wire Wire Line
	5350 1400 5350 1000
Wire Wire Line
	5350 1000 4750 1000
Connection ~ 5350 1400
Wire Wire Line
	5350 1400 5450 1400
Text GLabel 2750 1400 1    50   Input ~ 0
T_1
Text GLabel 2600 1400 1    50   Input ~ 0
B_1
Wire Wire Line
	2150 1400 2250 1400
Wire Wire Line
	2450 1400 2500 1400
Wire Wire Line
	2750 1400 2850 1400
Wire Wire Line
	2500 1400 2500 1000
Connection ~ 2500 1400
Wire Wire Line
	2500 1400 2600 1400
Text GLabel 2750 2550 1    50   Input ~ 0
T_3
Text GLabel 2600 2550 1    50   Input ~ 0
B_3
Wire Wire Line
	2150 2550 2250 2550
Wire Wire Line
	2450 2550 2500 2550
Wire Wire Line
	2500 2550 2500 2150
Wire Wire Line
	2500 2150 1900 2150
Connection ~ 2500 2550
Wire Wire Line
	2500 2550 2600 2550
Wire Wire Line
	2750 2550 2850 2550
Text GLabel 2600 3650 1    50   Input ~ 0
B_5
Text GLabel 2750 3650 1    50   Input ~ 0
T_5
Wire Wire Line
	2750 3650 2850 3650
Wire Wire Line
	2600 3650 2500 3650
Wire Wire Line
	2250 3650 2150 3650
Wire Wire Line
	2500 3650 2500 3250
Wire Wire Line
	2500 3250 1900 3250
Connection ~ 2500 3650
Wire Wire Line
	2500 3650 2450 3650
Text GLabel 2750 4800 1    50   Input ~ 0
T_7
Text GLabel 2600 4800 1    50   Input ~ 0
B_7
Wire Wire Line
	2450 4800 2500 4800
Wire Wire Line
	2750 4800 2850 4800
Wire Wire Line
	2150 4800 2250 4800
Wire Wire Line
	2500 4800 2500 4400
Wire Wire Line
	2500 4400 1900 4400
Connection ~ 2500 4800
Wire Wire Line
	2500 4800 2600 4800
Text GLabel 5400 6700 0    50   Input ~ 0
T_8
Text GLabel 6150 6700 2    50   Input ~ 0
B_8
Wire Wire Line
	5200 6800 5400 6800
Wire Wire Line
	6150 6800 6350 6800
Text GLabel 5400 6600 0    50   Input ~ 0
T_7
Text GLabel 6150 6600 2    50   Input ~ 0
B_7
Text GLabel 6150 6500 2    50   Input ~ 0
B_6
Text GLabel 6150 6400 2    50   Input ~ 0
B_5
Text GLabel 6150 6300 2    50   Input ~ 0
B_4
Text GLabel 6150 6200 2    50   Input ~ 0
B_3
Text GLabel 6150 6100 2    50   Input ~ 0
B_2
Text GLabel 6150 6000 2    50   Input ~ 0
B_1
Text GLabel 5400 6500 0    50   Input ~ 0
T_6
Text GLabel 5400 6400 0    50   Input ~ 0
T_5
Text GLabel 5400 6300 0    50   Input ~ 0
T_4
Text GLabel 5400 6200 0    50   Input ~ 0
T_3
Text GLabel 5400 6100 0    50   Input ~ 0
T_2
Text GLabel 5400 6000 0    50   Input ~ 0
T_1
$Comp
L power:+3.3V #PWR079
U 1 1 60482C93
P 6600 3100
F 0 "#PWR079" H 6600 2950 50  0001 C CNN
F 1 "+3.3V" H 6615 3273 50  0000 C CNN
F 2 "" H 6600 3100 50  0001 C CNN
F 3 "" H 6600 3100 50  0001 C CNN
	1    6600 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R51
U 1 1 60484129
P 6800 3000
F 0 "R51" V 6700 3000 50  0000 C CNN
F 1 "10k" V 6900 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 6800 3000 50  0001 C CNN
F 3 "~" H 6800 3000 50  0001 C CNN
	1    6800 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 3000 6900 3000
Wire Wire Line
	6700 3000 6600 3000
Wire Wire Line
	6600 3000 6600 3100
NoConn ~ 7000 2900
$Comp
L Connector:Conn_01x18_Female J19
U 1 1 6050DE2F
P 8800 3400
F 0 "J19" H 8700 4300 50  0000 L CNN
F 1 "Conn_01x18_Female" V 8850 3150 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x18_P1.27mm_Vertical" H 8800 3400 50  0001 C CNN
F 3 "~" H 8800 3400 50  0001 C CNN
	1    8800 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x18_Male J20
U 1 1 605120D4
P 9150 3400
F 0 "J20" H 9250 4300 50  0000 C CNN
F 1 "Conn_01x18_Male" V 9050 3550 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x18_P1.27mm_Vertical" H 9150 3400 50  0001 C CNN
F 3 "~" H 9150 3400 50  0001 C CNN
	1    9150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2700 8600 2700
Wire Wire Line
	8400 2800 8600 2800
Wire Wire Line
	8400 2900 8600 2900
Wire Wire Line
	8400 3000 8600 3000
Wire Wire Line
	8400 3100 8600 3100
Wire Wire Line
	8400 3200 8600 3200
Wire Wire Line
	8400 3300 8600 3300
Wire Wire Line
	8400 3400 8600 3400
Wire Wire Line
	8400 3500 8600 3500
Wire Wire Line
	8600 3600 8400 3600
Wire Wire Line
	8400 3700 8600 3700
Wire Wire Line
	8600 3800 8400 3800
Wire Wire Line
	8400 3900 8600 3900
Wire Wire Line
	8600 4000 8400 4000
Wire Wire Line
	8400 4100 8600 4100
Wire Wire Line
	8600 4200 8400 4200
$Comp
L power:GND #PWR085
U 1 1 605A6321
P 8500 4400
F 0 "#PWR085" H 8500 4150 50  0001 C CNN
F 1 "GND" H 8505 4227 50  0000 C CNN
F 2 "" H 8500 4400 50  0001 C CNN
F 3 "" H 8500 4400 50  0001 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4300 8500 4300
Wire Wire Line
	8500 4300 8500 4400
$Comp
L power:+3.3V #PWR084
U 1 1 605B00A7
P 8500 2500
F 0 "#PWR084" H 8500 2350 50  0001 C CNN
F 1 "+3.3V" H 8515 2673 50  0000 C CNN
F 2 "" H 8500 2500 50  0001 C CNN
F 3 "" H 8500 2500 50  0001 C CNN
	1    8500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2500 8500 2600
Wire Wire Line
	8500 2600 8600 2600
Text GLabel 9350 2700 2    50   Input ~ 0
R1_T
$Comp
L power:+3.3V #PWR087
U 1 1 605BF2CA
P 9500 2500
F 0 "#PWR087" H 9500 2350 50  0001 C CNN
F 1 "+3.3V" H 9515 2673 50  0000 C CNN
F 2 "" H 9500 2500 50  0001 C CNN
F 3 "" H 9500 2500 50  0001 C CNN
	1    9500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2600 9500 2600
Wire Wire Line
	9500 2600 9500 2500
$Comp
L power:GND #PWR086
U 1 1 605C96BF
P 9450 4400
F 0 "#PWR086" H 9450 4150 50  0001 C CNN
F 1 "GND" H 9455 4227 50  0000 C CNN
F 2 "" H 9450 4400 50  0001 C CNN
F 3 "" H 9450 4400 50  0001 C CNN
	1    9450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4300 9450 4300
Wire Wire Line
	9450 4300 9450 4400
Text GLabel 9350 2800 2    50   Input ~ 0
G1_T
Text GLabel 9350 2900 2    50   Input ~ 0
R2_T
Text GLabel 9350 3000 2    50   Input ~ 0
G2_T
Text GLabel 9350 3100 2    50   Input ~ 0
R3_T
Text GLabel 9350 3200 2    50   Input ~ 0
G3_T
Text GLabel 9350 3300 2    50   Input ~ 0
R4_T
Text GLabel 9350 3400 2    50   Input ~ 0
G4_T
Text GLabel 9350 3500 2    50   Input ~ 0
R5_T
Text GLabel 9350 3600 2    50   Input ~ 0
G5_T
Text GLabel 9350 3700 2    50   Input ~ 0
R6_T
Text GLabel 9350 3800 2    50   Input ~ 0
G6_T
Text GLabel 9350 3900 2    50   Input ~ 0
R7_T
Text GLabel 9350 4000 2    50   Input ~ 0
G7_T
Text GLabel 9350 4100 2    50   Input ~ 0
R8_T
Text GLabel 9350 4200 2    50   Input ~ 0
G8_T
Text GLabel 9950 850  0    50   Input ~ 0
R1_T
Text GLabel 9950 1050 0    50   Input ~ 0
G1_T
$Comp
L Device:R_Small R54
U 1 1 6063401F
P 10050 1500
F 0 "R54" V 10000 1350 50  0000 C CNN
F 1 "68" V 10100 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 1500 50  0001 C CNN
F 3 "~" H 10050 1500 50  0001 C CNN
	1    10050 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R55
U 1 1 606346DF
P 10050 1700
F 0 "R55" V 10000 1550 50  0000 C CNN
F 1 "56" V 10100 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 1700 50  0001 C CNN
F 3 "~" H 10050 1700 50  0001 C CNN
	1    10050 1700
	0    1    1    0   
$EndComp
Text GLabel 9950 1500 0    50   Input ~ 0
R2_T
Text GLabel 9950 1700 0    50   Input ~ 0
G2_T
$Comp
L Device:R_Small R56
U 1 1 606548D8
P 10050 2150
F 0 "R56" V 10000 2000 50  0000 C CNN
F 1 "68" V 10100 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 2150 50  0001 C CNN
F 3 "~" H 10050 2150 50  0001 C CNN
	1    10050 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R57
U 1 1 60654E46
P 10050 2350
F 0 "R57" V 10000 2200 50  0000 C CNN
F 1 "56" V 10100 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 2350 50  0001 C CNN
F 3 "~" H 10050 2350 50  0001 C CNN
	1    10050 2350
	0    1    1    0   
$EndComp
Text GLabel 9950 2150 0    50   Input ~ 0
R3_T
Text GLabel 9950 2350 0    50   Input ~ 0
G3_T
$Comp
L Device:R_Small R58
U 1 1 60654E52
P 10050 2800
F 0 "R58" V 10000 2650 50  0000 C CNN
F 1 "68" V 10100 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 2800 50  0001 C CNN
F 3 "~" H 10050 2800 50  0001 C CNN
	1    10050 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R59
U 1 1 60654E5C
P 10050 3000
F 0 "R59" V 10000 2850 50  0000 C CNN
F 1 "56" V 10100 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 3000 50  0001 C CNN
F 3 "~" H 10050 3000 50  0001 C CNN
	1    10050 3000
	0    1    1    0   
$EndComp
Text GLabel 9950 2800 0    50   Input ~ 0
R4_T
Text GLabel 9950 3000 0    50   Input ~ 0
G4_T
$Comp
L Device:R_Small R60
U 1 1 606C1881
P 10050 3450
F 0 "R60" V 10000 3300 50  0000 C CNN
F 1 "68" V 10100 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 3450 50  0001 C CNN
F 3 "~" H 10050 3450 50  0001 C CNN
	1    10050 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R61
U 1 1 606C1FAD
P 10050 3650
F 0 "R61" V 10000 3500 50  0000 C CNN
F 1 "56" V 10100 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 3650 50  0001 C CNN
F 3 "~" H 10050 3650 50  0001 C CNN
	1    10050 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 5600 10250 5600
Wire Wire Line
	10150 5400 10250 5400
Wire Wire Line
	10150 4950 10250 4950
Wire Wire Line
	10150 4750 10250 4750
Wire Wire Line
	10150 4300 10250 4300
Wire Wire Line
	10150 4100 10250 4100
Wire Wire Line
	10150 3650 10250 3650
Wire Wire Line
	10150 3450 10250 3450
Text GLabel 9950 3450 0    50   Input ~ 0
R5_T
Text GLabel 9950 3650 0    50   Input ~ 0
G5_T
$Comp
L Device:R_Small R62
U 1 1 606C1FC1
P 10050 4100
F 0 "R62" V 10000 3950 50  0000 C CNN
F 1 "68" V 10100 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 4100 50  0001 C CNN
F 3 "~" H 10050 4100 50  0001 C CNN
	1    10050 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R63
U 1 1 606C1FCB
P 10050 4300
F 0 "R63" V 10000 4150 50  0000 C CNN
F 1 "56" V 10100 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 4300 50  0001 C CNN
F 3 "~" H 10050 4300 50  0001 C CNN
	1    10050 4300
	0    1    1    0   
$EndComp
Text GLabel 9950 4100 0    50   Input ~ 0
R6_T
Text GLabel 9950 4300 0    50   Input ~ 0
G6_T
$Comp
L Device:R_Small R64
U 1 1 606C1FD7
P 10050 4750
F 0 "R64" V 10000 4600 50  0000 C CNN
F 1 "68" V 10100 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 4750 50  0001 C CNN
F 3 "~" H 10050 4750 50  0001 C CNN
	1    10050 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R65
U 1 1 606C1FE1
P 10050 4950
F 0 "R65" V 10000 4800 50  0000 C CNN
F 1 "56" V 10100 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 4950 50  0001 C CNN
F 3 "~" H 10050 4950 50  0001 C CNN
	1    10050 4950
	0    1    1    0   
$EndComp
Text GLabel 9950 4750 0    50   Input ~ 0
R7_T
Text GLabel 9950 4950 0    50   Input ~ 0
G7_T
$Comp
L Device:R_Small R66
U 1 1 606C1FED
P 10050 5400
F 0 "R66" V 10000 5250 50  0000 C CNN
F 1 "68" V 10100 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 5400 50  0001 C CNN
F 3 "~" H 10050 5400 50  0001 C CNN
	1    10050 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R67
U 1 1 606C1FF7
P 10050 5600
F 0 "R67" V 10000 5450 50  0000 C CNN
F 1 "56" V 10100 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 10050 5600 50  0001 C CNN
F 3 "~" H 10050 5600 50  0001 C CNN
	1    10050 5600
	0    1    1    0   
$EndComp
Text GLabel 9950 5400 0    50   Input ~ 0
R8_T
Text GLabel 9950 5600 0    50   Input ~ 0
G8_T
$Comp
L Device:C_Small C30
U 1 1 606EA002
P 7250 2200
F 0 "C30" H 7342 2246 50  0000 L CNN
F 1 "100n" H 7342 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7250 2200 50  0001 C CNN
F 3 "~" H 7250 2200 50  0001 C CNN
	1    7250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2100 7700 2100
Connection ~ 7700 2100
$Comp
L power:GND #PWR?
U 1 1 606FCAD3
P 7250 2400
AR Path="/606FCAD3" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/606FCAD3" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 7250 2150 50  0001 C CNN
F 1 "GND" V 7150 2450 50  0000 R CNN
F 2 "" H 7250 2400 50  0001 C CNN
F 3 "" H 7250 2400 50  0001 C CNN
	1    7250 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM2902 U?
U 5 1 607332A1
P 7450 5600
AR Path="/607332A1" Ref="U?"  Part="1" 
AR Path="/6088BCB1/607332A1" Ref="U6"  Part="5" 
F 0 "U6" H 7450 5967 50  0000 C CNN
F 1 "LM2902" V 7450 5600 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7400 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7500 5800 50  0001 C CNN
	5    7450 5600
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM2902 U?
U 5 1 60736E1E
P 7950 5600
AR Path="/60736E1E" Ref="U?"  Part="1" 
AR Path="/6088BCB1/60736E1E" Ref="U7"  Part="5" 
F 0 "U7" H 7950 5967 50  0000 C CNN
F 1 "LM2902" V 7950 5600 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7900 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8000 5800 50  0001 C CNN
	5    7950 5600
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60745DC4
P 7350 6000
AR Path="/60745DC4" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/60745DC4" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 7350 5750 50  0001 C CNN
F 1 "GND" V 7355 5872 50  0000 R CNN
F 2 "" H 7350 6000 50  0001 C CNN
F 3 "" H 7350 6000 50  0001 C CNN
	1    7350 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60746C19
P 7850 6000
AR Path="/60746C19" Ref="#PWR?"  Part="1" 
AR Path="/6088BCB1/60746C19" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 7850 5750 50  0001 C CNN
F 1 "GND" V 7855 5872 50  0000 R CNN
F 2 "" H 7850 6000 50  0001 C CNN
F 3 "" H 7850 6000 50  0001 C CNN
	1    7850 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR089
U 1 1 607577AA
P 7350 5200
F 0 "#PWR089" H 7350 5050 50  0001 C CNN
F 1 "+3.3VA" H 7365 5373 50  0000 C CNN
F 2 "" H 7350 5200 50  0001 C CNN
F 3 "" H 7350 5200 50  0001 C CNN
	1    7350 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR091
U 1 1 60758916
P 7850 5200
F 0 "#PWR091" H 7850 5050 50  0001 C CNN
F 1 "+3.3VA" H 7865 5373 50  0000 C CNN
F 2 "" H 7850 5200 50  0001 C CNN
F 3 "" H 7850 5200 50  0001 C CNN
	1    7850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5200 7350 5300
Wire Wire Line
	7850 5200 7850 5300
Wire Wire Line
	7350 5900 7350 6000
Wire Wire Line
	7850 5900 7850 6000
Wire Wire Line
	7250 2400 7250 2300
$EndSCHEMATC
