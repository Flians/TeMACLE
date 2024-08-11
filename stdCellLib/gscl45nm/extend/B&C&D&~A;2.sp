.SUBCKT DEC_G0_11_12 A B C D Y VCC GND
MclPFBIVW_0#0 clPFBIVW_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_0#1 VCC D clPFBIVW_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_0#2 clPFBIVW_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_0#3 clPFBIVW_0#a_9_6# B GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_0#4 clPFBIVW_0#a_14_6# D clPFBIVW_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_0#5 clPFBIVW_0#Y C clPFBIVW_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_1#0 clPFBIVW_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_1#1 Y clPFBIVW_0#Y clPFBIVW_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_1#2 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPFBIVW_1#3 GND clPFBIVW_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|NOR2X1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|INPUT:Y-NOR2X1:A,B=1|NAND3X1:Y-NOR2X1:A,B=1|111110
* 191 occurrences in design
* each contains 2 cells
* pin map: {'n19': 'A', 'n10': 'B', 'n20': 'C', 'x1': 'D'} {'y2': 'Y'}
* function: B&C&D&~A
* Example occurence:
*   .subckt NAND3X1 A=n10 B=x1 C=n20 Y=n26
*   .subckt NOR2X1 A=n19 B=n26 Y=y2
