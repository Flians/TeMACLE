.SUBCKT SIN_G4_106_1233 A B C Y VCC GND
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
* pattern code: 3|3|SIN_G1_26_55|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SIN_G1_26_55:A,B=1|INPUT:Y-SIN_G1_26_55:C=1|INVX1:Y-SIN_G1_26_55:A,B=1|11110
* 200 occurrences in design
* each contains 3 cells
* pin map: {'n1792': 'A', 'n485': 'B', 'n180': 'C'} {'n1793': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=n180 Y=n181
*   .subckt SIN_G1_26_55 A=n1792 B=n181 C=n485 Y=n1793
