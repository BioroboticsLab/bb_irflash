# bb_irflash - Infrared LED flashing software and hardware

----
## What is bb_irflash?

bb_irflash is a software and hardware layout package. It contains the circuit and board layout for creating infrared flashing devices.

## Software

The software is C code written and tested for the Arduino Board Duemilanove. However, it should be easily adjusted to fit any arduino available on the market.

## Hardware

The hardware is designed to be triggered via signal current and powered with 12V. The design contains no protection mechanism whatsoever. So exchanging the resistors and/or LED's enables faster/slower flashing or constant lighting. 

The board dimensions are 23mmx51mm, single sided layout. Parts as described in the 'Parts' section enable flashing at 3 Hz and 20 ms duration. Designs come in EAGLE format.

# Parts

## SMD Parts Required for the Boards

The following Surface-Mount Device (SMD) parts are required for the boards:

### MOSFETs
- 8x [NTMS4807NR2G 'AO4752'](https://www.mouser.de/ProductDetail/863-NTMS4807NR2G)

### LEDs
- 8x [LED OSRAM 'SFH 4716AS A01'](https://www.mouser.de/ProductDetail/ams-OSRAM/SFH-4716AS-A01?qs=%252BEew9%252B0nqrDXvNyoSKrong%3D%3D)

### Signal Amplifiers
- 4x [Signal Amplifier 'LMV358'](https://www.mouser.de/ProductDetail/Texas-Instruments/LMV358LVIDR?qs=qSfuJ%252Bfl%2Fd53U%2FPkf9lZVw%3D%3D)

### Resistors
- 32x [2 Ohm Resistor '603-RC2512JK-072RL'](https://www.mouser.de/ProductDetail/603-RC2512JK-072RL)
- 16x [10k Ohm Resistor '71-CRCW060310K0JNEAC'](https://www.mouser.de/ProductDetail/71-CRCW060310K0JNEAC)
- 2x [4.7k Ohm Resistor '71-CRCW06034K70JNEAC'](https://www.mouser.de/ProductDetail/71-CRCW06034K70JNEAC)
- 4x [22k Ohm Resistor '71-CRCW060322K0JNEAC'](https://www.mouser.de/ProductDetail/71-CRCW060322K0JNEAC)
- 1x [20k Ohm Resistor 'R0603'](Beta Layout standard part)
- 1x [100k Ohm Resistor '71-CRCW0603100KFKEAC'](https://www.mouser.de/ProductDetail/71-CRCW0603100KFKEAC)

### Capacitors
- 4x [0.01uF Capacitor '810-C1005X7R1H103KBE'](https://www.mouser.de/ProductDetail/810-C1005X7R1H103KBE)
- 2x [1uF Capacitor '81-GRM155R61C105MA2D'](https://www.mouser.de/ProductDetail/81-GRM155R61C105MA2D)

### Diodes
- 2x [Schottky Diode 'CDBU0230R-HF'](https://www.mouser.de/ProductDetail/750-CDBU0230R-HF)

### Transistors
- 2x [NPN Transistor 'NSVMMBT2222AM3T5G'](https://www.mouser.de/ProductDetail/863-NSVMMBT2222AM3T5)

### Timer
- 2x [Timer 'NE555DR'](https://www.mouser.de/ProductDetail/595-NE555DR)

### Logic Gates
- 1x [Dual AND Gate '74LVC2G08'](https://www.mouser.de/ProductDetail/771-74LVC2G08DP-G)

## Other required components - to solder on

### Capacitors
- 8x [2mF Capacitor '667-EEU-FP1E202B'](https://www.mouser.de/ProductDetail/667-EEU-FP1E202B)

### MOSFET
- 1x [RFD14N05L 'RFD14N05L'](https://www.mouser.de/ProductDetail/512-RFD14N05L)

### Connectors
- See order_examples for part numbers, and reference the picture for needed parts


# Board V2.0

![Alt text](board_V2/pix.JPG?raw=true "BoardV2")

The new IR flash board have the exact same performance as the previous version. The only new part is a better connectivity and a protection circuit.
The protection circuit is limiting the impulse duration to 20ms with a pause of 100ms between each pulse for protecting the LED. The power supply should be 
V ; 6A. To use it just send a step signal of the wanted duration to the trigger pin of the board (The step signal should not be wider than 20ms high and a pause of 100ms should be observe between each pulse)

The files in "board_V2" folder are all the project file in KiCAD format. If you have no interest in redesign, they are not interesting for you. 

For fabrication you only need the files in the fabrication folder.
The gerber files contained in "fabrication/gerber" are the map of your circuits - You manufacturer would ask for them (likely as a zip file, i.e. gerber.zip containing all folder contents).  The subfolder : "fabrication/gerber/drill_file" contain the coordinate of all the holes drilled into the board.

If you want to ask a third party for assembly, you will need the gerber files, the components position files ("Bestückungsplan": assembly_map_top.pdf
and assembly_map_bottom.pdf), the Pick&Place placement file (Pick&Place.txt), and the components list (Bill of Materials: BOM.xlsx). The 
The components position files are in component_position folder (Bottom and top layer). Note that the BOM format can vary in function of your third party company.

The folder order_examples contains two examples for orders placed through Beta Layout with components ordered through Mouser.  These are for reference.
