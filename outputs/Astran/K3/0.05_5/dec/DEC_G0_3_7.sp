.SUBCKT DEC_G0_3_7 A B C Y VCC GND
MclOIJ5XU_0#0 clOIJ5XU_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_0#1 VCC C clOIJ5XU_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_0#2 clOIJ5XU_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_0#3 clOIJ5XU_0#Y C clOIJ5XU_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#0 clOIJ5XU_1#a_9_54# clOIJ5XU_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#1 Y A clOIJ5XU_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#2 Y clOIJ5XU_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOIJ5XU_1#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NOR2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-NOR2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|11110
* 319 occurrences in design
* each contains 2 cells
* pin map: {'n22': 'A', 'n14': 'B', 'n18': 'C'} {'y0': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
