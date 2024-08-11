.SUBCKT DEC_G0_0_102_103 A B C D Y VCC GND
MclPQW6NC_0#0 clPQW6NC_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_0#1 clPQW6NC_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_1#0 clPQW6NC_1#Y clPQW6NC_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_1#1 VCC B clPQW6NC_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_1#2 clPQW6NC_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_1#3 clPQW6NC_1#a_9_6# clPQW6NC_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_1#4 clPQW6NC_1#a_14_6# B clPQW6NC_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_1#5 clPQW6NC_1#Y C clPQW6NC_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_2#0 clPQW6NC_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_2#1 Y clPQW6NC_1#Y clPQW6NC_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_2#2 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPQW6NC_2#3 GND clPQW6NC_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NOR2X1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-NOR2X1:A,B=1|1111110
* 159 occurrences in design
* each contains 3 cells
* pin map: {'n22': 'A', 'n15': 'B', 'n111': 'C', 'x4': 'D'} {'y64': 'Y'}
* function: B&C&~A&~D
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt NAND3X1 A=n14 B=n15 C=n111 Y=n112
*   .subckt NOR2X1 A=n22 B=n112 Y=y64
