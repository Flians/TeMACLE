.SUBCKT DEC_G0_1_64_65 A B C Y VCC GND
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
* pattern code: 3|3|NOR3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=2|111110
* 4 occurrences in design
* each contains 3 cells
* pin map: {'x6': 'A', 'x5': 'B', 'x7': 'C'} {'n76': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=x7 Y=n17
*   .subckt INVX1 A=x5 Y=n15
*   .subckt NOR3X1 A=n15 B=n17 C=x6 Y=n76
