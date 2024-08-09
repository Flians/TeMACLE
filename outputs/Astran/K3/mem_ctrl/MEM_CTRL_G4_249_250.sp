.SUBCKT MEM_CTRL_G4_249_250 A B C Y VCC GND
MclX1T33A_0#0 clX1T33A_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_0#1 VCC C clX1T33A_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_0#2 clX1T33A_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_0#3 clX1T33A_0#Y C clX1T33A_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_1#0 clX1T33A_1#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_1#1 Y A clX1T33A_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_1#2 VCC clX1T33A_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_1#3 GND B clX1T33A_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_1#4 clX1T33A_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX1T33A_1#5 Y clX1T33A_0#Y clX1T33A_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=2|INPUT:Y-OAI21X1:A,B=2|NAND2X1:Y-OAI21X1:C=1|11210
* 1473 occurrences in design
* each contains 2 cells
* pin map: {'n1958': 'A', 'n1393': 'B', 'n1969': 'C'} {'n1971': 'Y'}
* function: (B&C)|(~A&~B)
* Example occurence:
*   .subckt NAND2X1 A=n1393 B=n1969 Y=n1970
*   .subckt OAI21X1 A=n1393 B=n1958 C=n1970 Y=n1971
