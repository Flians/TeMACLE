.SUBCKT ARBITER_G4_6_7 A B C Y VCC GND
MclAZLUI8_0#0 clAZLUI8_0#Y A VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_0#1 VCC B clAZLUI8_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_0#2 clAZLUI8_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_0#3 clAZLUI8_0#a_9_6# A GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_0#4 clAZLUI8_0#a_14_6# B clAZLUI8_0#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_0#5 clAZLUI8_0#Y C clAZLUI8_0#a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_1#0 Y clAZLUI8_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclAZLUI8_1#1 Y clAZLUI8_0#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|INVX1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|NAND3X1:Y-INVX1:A=1|11101
* 128 occurrences in design
* each contains 2 cells
* pin map: {'n511': 'A', 'n512': 'B', 'n517': 'C'} {'n519': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518
*   .subckt INVX1 A=n518 Y=n519