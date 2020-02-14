EESchema Schematic File Version 4
LIBS:ArduinoShield-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_01x02 J1
U 1 1 5CC3C457
P 3350 2600
F 0 "J1" H 3268 2275 50  0000 C CNN
F 1 "Conn_01x02" H 3268 2366 50  0000 C CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx02_1x02_P2.50mm_Vertical" H 3350 2600 50  0001 C CNN
F 3 "~" H 3350 2600 50  0001 C CNN
	1    3350 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 2500 3550 2500
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5CC0AAA1
P 7600 2600
F 0 "J6" H 7680 2642 50  0000 L CNN
F 1 "Conn_01x03" H 7680 2551 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 2600 50  0001 C CNN
F 3 "~" H 7600 2600 50  0001 C CNN
	1    7600 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5CC0C924
P 7600 3000
F 0 "J7" H 7680 3042 50  0000 L CNN
F 1 "Conn_01x03" H 7680 2951 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 3000 50  0001 C CNN
F 3 "~" H 7600 3000 50  0001 C CNN
	1    7600 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5CC0CDFC
P 7600 3400
F 0 "J8" H 7680 3442 50  0000 L CNN
F 1 "Conn_01x03" H 7680 3351 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 3400 50  0001 C CNN
F 3 "~" H 7600 3400 50  0001 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 5CC0D0FA
P 7600 3800
F 0 "J9" H 7680 3842 50  0000 L CNN
F 1 "Conn_01x03" H 7680 3751 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 3800 50  0001 C CNN
F 3 "~" H 7600 3800 50  0001 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2500 7200 2500
Wire Wire Line
	7200 2500 7200 2900
Wire Wire Line
	7200 2900 7400 2900
Wire Wire Line
	7200 2900 7200 3300
Wire Wire Line
	7200 3300 7400 3300
Connection ~ 7200 2900
Wire Wire Line
	7200 3300 7200 3700
Wire Wire Line
	7200 3700 7400 3700
Connection ~ 7200 3300
Wire Wire Line
	7400 2600 7300 2600
Wire Wire Line
	7300 2600 7300 3000
Wire Wire Line
	7300 3000 7400 3000
Wire Wire Line
	7300 3000 7300 3400
Wire Wire Line
	7300 3400 7400 3400
Connection ~ 7300 3000
Wire Wire Line
	7300 3400 7300 3800
Wire Wire Line
	7300 3800 7400 3800
Connection ~ 7300 3400
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5CC0556B
P 5500 3500
F 0 "A1" H 5500 2219 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5500 2310 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5650 2450 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5300 4550 50  0001 C CNN
	1    5500 3500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 0 5CC212D6
P 7600 1000
F 0 "J2" H 7680 1042 50  0000 L CNN
F 1 "Conn_01x03" H 7680 951 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 1000 50  0001 C CNN
F 3 "~" H 7600 1000 50  0001 C CNN
	1    7600 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5CC212DC
P 7600 1400
F 0 "J3" H 7680 1442 50  0000 L CNN
F 1 "Conn_01x03" H 7680 1351 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 1400 50  0001 C CNN
F 3 "~" H 7600 1400 50  0001 C CNN
	1    7600 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5CC212E2
P 7600 1800
F 0 "J4" H 7680 1842 50  0000 L CNN
F 1 "Conn_01x03" H 7680 1751 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 1800 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5CC212E8
P 7600 2200
F 0 "J5" H 7680 2242 50  0000 L CNN
F 1 "Conn_01x03" H 7680 2151 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 7600 2200 50  0001 C CNN
F 3 "~" H 7600 2200 50  0001 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 7400 1300
Wire Wire Line
	7200 1300 7200 1700
Wire Wire Line
	7200 1700 7400 1700
Wire Wire Line
	7200 1700 7200 2100
Wire Wire Line
	7200 2100 7400 2100
Connection ~ 7200 1700
Wire Wire Line
	7300 1400 7400 1400
Wire Wire Line
	7300 1400 7300 1800
Wire Wire Line
	7300 1800 7400 1800
Wire Wire Line
	7300 1800 7300 2200
Wire Wire Line
	7300 2200 7400 2200
Connection ~ 7300 1800
Wire Wire Line
	7400 3500 7100 3500
Wire Wire Line
	7100 3500 7100 3800
Wire Wire Line
	7400 3100 7000 3100
Wire Wire Line
	7000 3100 7000 3700
Wire Wire Line
	7400 2700 6900 2700
Wire Wire Line
	6900 2700 6900 3600
Wire Wire Line
	7400 2300 6800 2300
Wire Wire Line
	6800 2300 6800 3500
Wire Wire Line
	7400 1900 6700 1900
Wire Wire Line
	6700 1900 6700 3400
Wire Wire Line
	7400 1500 6600 1500
Wire Wire Line
	6600 1500 6600 3300
Wire Wire Line
	6000 3900 7400 3900
Wire Wire Line
	6000 3800 7100 3800
Wire Wire Line
	6000 3700 7000 3700
Wire Wire Line
	6900 3600 6000 3600
Wire Wire Line
	6800 3500 6000 3500
Wire Wire Line
	6700 3400 6000 3400
Wire Wire Line
	6600 3300 6000 3300
Wire Wire Line
	6500 3200 6000 3200
Wire Wire Line
	7200 2100 7200 2150
Connection ~ 7200 2100
Connection ~ 7200 2500
Wire Wire Line
	7300 2200 7300 2600
Connection ~ 7300 2200
Connection ~ 7300 2600
Wire Wire Line
	5600 2400 5600 2150
Wire Wire Line
	5600 2150 7200 2150
Connection ~ 7200 2150
Wire Wire Line
	7200 2150 7200 2500
Wire Wire Line
	7200 3700 7200 4700
Wire Wire Line
	7200 4700 5300 4700
Wire Wire Line
	5300 4700 5300 4500
Connection ~ 7200 3700
Wire Wire Line
	4750 2600 4750 2250
Wire Wire Line
	4750 2250 5400 2250
Wire Wire Line
	5400 2250 5400 2400
Wire Wire Line
	5600 4600 5600 4500
$Comp
L Transistor_FET:NTR2101P Q1
U 1 1 5CC547B4
P 3950 4200
F 0 "Q1" V 4293 4200 50  0000 C CNN
F 1 "NTR1P02T1G" V 4202 4200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4150 4125 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 3950 4200 50  0001 L CNN
	1    3950 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 3100 4750 2600
Connection ~ 4750 2600
Wire Wire Line
	4750 3400 4750 4600
Connection ~ 4750 4600
Wire Wire Line
	4750 4600 5600 4600
Wire Wire Line
	6500 3200 6500 1100
Wire Wire Line
	6500 1100 7400 1100
Wire Wire Line
	7400 1000 7300 1000
Wire Wire Line
	7300 1000 7300 1400
Connection ~ 7300 1400
Wire Wire Line
	7400 900  7200 900 
Wire Wire Line
	7200 900  7200 1300
Connection ~ 7200 1300
$Comp
L Device:CP C1
U 1 0 5CC724C6
P 4750 3250
F 0 "C1" H 4868 3296 50  0000 L CNN
F 1 "EEU-TP1E511B " H 4868 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4788 3100 50  0001 C CNN
F 3 "~" H 4750 3250 50  0001 C CNN
	1    4750 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4600 4750 4600
Wire Wire Line
	3850 4600 3850 4400
Wire Wire Line
	3850 4000 3850 2500
Wire Wire Line
	3550 2600 4150 2600
Wire Wire Line
	4150 4200 4150 2600
Connection ~ 4150 2600
Wire Wire Line
	4150 2600 4750 2600
$EndSCHEMATC
