.SUBCKT NAND_NOR_G0_0_1 A B C Y VCC GND
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
* pattern code: 2|3|NAND2X1|NOR2X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR2X1:A,B=2|NOR2X1:Y-NAND2X1:A,B=1|11101
* 1 occurrences in design
* each contains 2 cells
* pin map: {'x3': 'A', 'x1': 'B', 'x0': 'C'} {'n26': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt NOR2X1 A=x1 B=x0 Y=n2400
*   .subckt NAND2X1 A=x3 B=n2400 Y=n26
