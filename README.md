# bb_irflash - Infrared LED flashing software and hardware

----
## What is bb_irflash?

bb_irflash is a software and hardware layout package. It contains the circuit and board layout for creating infrared flashing devices.

## Software

The software is C code written and tested for the Arduino Board Duemilanove. However, it should be easily adjusted to fit any arduino available on the market.

## Hardware

The hardware is designed to be triggered via signal current and powered with 12V. The design contains no protection mechanism whatsoever. So exchanging the resistors and/or LED's enables faster/slower flashing or constant lighting. 

The board dimensions are 23mmx51mm, single sided layout. Parts as described in the 'Parts' section enable flashing at 3 Hz and 20 ms duration. Designs come in EAGLE format.

##Board V2.0
![BoardV2](/board_V2/pix.jpg)
Format: ![Alt Text](url)
The new IR flash board have the exact same performance as the previous version. The only new part is a better connectivity and a protection circuit.
The protection circuit is limiting the impulse duration to 20ms with a pause of 100ms between each pulse for protecting the LED. The power supply should be 
V ; 6A. To use it just send a step signal of the wanted duration to the trigger pin of the board (The step signal should not be wider than 20ms high and a pause of 100ms should be observe between each pulse)


To use it 

The files in "board_V2" folder are all the project file in KiCAD format. If you have no interest in redesign, they are not interesting for you. 

The only interesting files for fabrication are in fabrication folder. 
If you want to assemble the board by yourself, the only interesting files the gerber files contained in "fabrication/gerber" the gerber files are the map of your circuits.
You manufacturer would ask for them. Another folder : "fabrication/gerber/drill_file" contain the coordinate of all the holes drilled into the board.

If you want to ask a third party for assembly, you will need the gerber files, the components position and components list. The component list is contain in BOM folder. 
The components position files are in component_position folder (Bottom and top layer). The BOM format can vary in function of your third party company. Please ask them.

## Parts
The SMD parts required for the boards are the following.

2x [MOSFET 'AO4752'](http://www.digikey.com/product-detail/en/alpha-omega-semiconductor-inc/AO4752/785-1597-1-ND/3712546)

2x [LED OSRAM 'SFH-4716S'](http://www.digikey.com/product-detail/en/osram-opto-semiconductors-inc/SFH-4716S/475-3045-1-ND/4360722)

1x [Signal Amplifier 'LM358DT'](http://www.digikey.com/product-detail/en/stmicroelectronics/LM358DT/497-1591-1-ND/592083) 

8x [2.2Ohm Resistor 'CRM2512-JW-2R2ELF'](http://www.digikey.com/product-detail/en/bourns-inc/CRM2512-JW-2R2ELF/CRM2512-JW-2R2ELFCT-ND/3592989) 

3x [10kOhm Resistor 'RC0603JR-0710KL'](http://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647) 

1x [120Ohm Resistor 'RC0603JR-07120RL'](http://www.digikey.com/product-detail/en/yageo/RC0603JR-07120RL/311-120GRCT-ND/729653) 

4x [2.2mF Capacitor 'JMK107BJ225KA-T'](http://www.digikey.com/product-detail/en/taiyo-yuden/JMK107BJ225KA-T/587-1254-1-ND/931031) 

