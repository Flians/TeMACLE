.SUBCKT DEC_G0_0_64_102_103 A B C D Y VCC GND
MclJMOY11_0#0 clJMOY11_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_0#1 clJMOY11_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_1#0 clJMOY11_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_1#1 clJMOY11_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_2#0 clJMOY11_2#Y clJMOY11_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_2#1 VCC clJMOY11_1#Y clJMOY11_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_2#2 clJMOY11_2#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_2#3 clJMOY11_2#a_9_6# clJMOY11_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_2#4 clJMOY11_2#a_14_6# clJMOY11_1#Y clJMOY11_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_2#5 clJMOY11_2#Y B clJMOY11_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_3#0 clJMOY11_3#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_3#1 Y clJMOY11_2#Y clJMOY11_3#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_3#2 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJMOY11_3#3 GND clJMOY11_2#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NOR2X1|INVX1=2|NAND3X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND3X1:A,B,C=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NAND3X1:A,B,C=2|NAND3X1:Y-NOR2X1:A,B=1|11111110
* 32 occurrences in design
* each contains 4 cells
* pin map: {'n22': 'A', 'n111': 'B', 'x4': 'C', 'x5': 'D'} {'y64': 'Y'}
* function: B&~A&~C&~D
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt INVX1 A=x5 Y=n15
*   .subckt NAND3X1 A=n14 B=n15 C=n111 Y=n112
*   .subckt NOR2X1 A=n22 B=n112 Y=y64
