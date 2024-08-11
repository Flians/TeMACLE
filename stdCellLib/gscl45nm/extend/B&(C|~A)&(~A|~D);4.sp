.SUBCKT CTRL_G4_1_16_22_23 A B C D Y VCC GND
MclTMNO2Q_0#0 clTMNO2Q_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_0#1 clTMNO2Q_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_1#0 clTMNO2Q_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_1#1 clTMNO2Q_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_2#0 clTMNO2Q_2#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_2#1 VCC clTMNO2Q_0#Y clTMNO2Q_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_2#2 clTMNO2Q_2#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_2#3 clTMNO2Q_2#Y clTMNO2Q_0#Y clTMNO2Q_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_3#0 VCC A clTMNO2Q_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_3#1 clTMNO2Q_3#a_2_54# clTMNO2Q_2#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_3#2 Y clTMNO2Q_1#Y clTMNO2Q_3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_3#3 clTMNO2Q_3#a_12_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_3#4 Y clTMNO2Q_2#Y clTMNO2Q_3#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclTMNO2Q_3#5 GND clTMNO2Q_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|AOI21X1|INVX1=2|NAND2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-AOI21X1:C=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-AOI21X1:A,B=1|01111111
* 4 occurrences in design
* each contains 4 cells
* pin map: {'n28': 'A', 'x4': 'B', 'n10': 'C', 'x3': 'D'} {'n32': 'Y'}
* function: B&(C|~A)&(~A|~D)
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt INVX1 A=x4 Y=n13
*   .subckt NAND2X1 A=n10 B=n12 Y=n31
*   .subckt AOI21X1 A=n28 B=n31 C=n13 Y=n32
