.SUBCKT DEC_G2_0_1_3 A B C Y VCC GND
MclLHC1UZ_0#0 clLHC1UZ_0#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_0#1 clLHC1UZ_0#Y C clLHC1UZ_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_0#2 clLHC1UZ_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_0#3 GND C clLHC1UZ_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#1 VCC clLHC1UZ_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#2 clLHC1UZ_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLHC1UZ_1#3 Y clLHC1UZ_0#Y clLHC1UZ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INVX1:Y-NAND3X1:A,B,C=2|111110
* 6 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'x4': 'B', 'x5': 'C'} {'n15': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVX1 A=x4 Y=n12
*   .subckt INVX1 A=x5 Y=n13
*   .subckt NAND3X1 A=n12 B=n13 C=n14 Y=n15
