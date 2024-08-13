.SUBCKT I2C_G4_15_149_150 C A B Y VCC GND
MclOIJ5XU_0#0 clOIJ5XU_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_0#1 VCC B clOIJ5XU_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_0#2 clOIJ5XU_0#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_0#3 clOIJ5XU_0#Y B clOIJ5XU_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#0 clOIJ5XU_1#a_9_54# clOIJ5XU_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#1 Y C clOIJ5XU_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#2 Y clOIJ5XU_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#3 GND C Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 54 occurrences in design
* each contains 3 cells
* pin map: {'n211': 'A', 'n324': 'B', 'x3': 'C'} {'y19': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x3 Y=n150
*   .subckt NAND3X1 A=n150 B=n211 C=n324 Y=n325
*   .subckt INVX1 A=n325 Y=y19
