# Bendy SAO Middle build notes

I built another 10 sections of BendySAO by hand, here are my notes.

## Notes

I did a few things differently.
 * made 10 of each pcb in white using the gerbers in the original project.  In white so I could colour them easily.  Reused the supplied green.
 * hand assembled them all, haven't forgotten how to do this - phew!
 * sourced white studs from AliExpress so I could colour them
 * sourced 1.5mm high headers from Digikey (all the AliExpress ones I could find were 1.8mm, too thick)
 * changed the code to drive all the leds
 * reprogrammed using the atmel samice
 * 3d printed the spacers as I could not find 1.5mm acrylic

## Software

 * Added Attiny3224 support using megaTinyCore via [ATTinyCore](https://github.com/SpenceKonde/ATTinyCore)
 * Modifed code to add support for 10 more sections (30 more leds)

## Programming
 * See [Connecting Atmel-ICE to UPDI](https://developerhelp.microchip.com/xwiki/bin/view/software-tools/programmers-and-debuggers/atmel-ice/connecting-to-avr-and-sam-target-devices/updi/)
 * Connect to GPIO2

![SAO](sao.png)

![ICE](atmel-ice-pinout.png)

## Spacers

 * Used openscad design in [spacer](https://github.com/TomKeddie/BendySAO/tree/tomk_files/3rdparty/TomKeddie/spacer) for spacers instead of laser cut acrylic.  I found 1.5mm acrylic a little hard to source.

## Stand

 * The stand I was gifted shrank in the dryer so I created a new one using the openscad design in [stand](https://github.com/TomKeddie/BendySAO/tree/tomk_files/3rdparty/TomKeddie/stand)

## BOM

| Part | Source |
|--|--|
| LEDs - 5V 1204 LED, 100Pcs | https://www.aliexpress.com/item/1005006771428701.html |
| Studs - white, M3 3mm, 6.5mm | https://www.aliexpress.com/item/1005006219773074.html |
| Connectors - 2mm pitch, 1.5mm insulation height | https://www.digikey.ca/en/products/detail/harwin-inc/M22-2010346/3921308 |
| Terminals - as per original bom | https://www.digikey.ca/en/products/detail/amphenol-cs-fci/10104319-009RLF/4238781 |

