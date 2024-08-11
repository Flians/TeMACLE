.SUBCKT MULTIPLIER_G3_24_35_263 A B C D Y VCC GND
MclYDFWV1_0#0 clYDFWV1_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_0#1 VCC D clYDFWV1_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_0#2 clYDFWV1_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_0#3 clYDFWV1_0#Y D clYDFWV1_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_1#0 clYDFWV1_1#Y clYDFWV1_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_1#1 clYDFWV1_1#Y clYDFWV1_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_2#0 VCC clYDFWV1_1#Y clYDFWV1_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_2#1 clYDFWV1_2#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_2#2 Y B clYDFWV1_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_2#3 clYDFWV1_2#a_12_6# clYDFWV1_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_2#4 Y A clYDFWV1_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclYDFWV1_2#5 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|AOI21X1|INVX1=1|NAND2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-AOI21X1:A,B=1|NAND2X1:Y-INVX1:A=1|0111111
* 1157 occurrences in design
* each contains 3 cells
* pin map: {'n502': 'A', 'n499': 'B', 'n261': 'C', 'x0': 'D'} {'n503': 'Y'}
* function: ~B&(~A|~C|~D)
* Example occurence:
*   .subckt NAND2X1 A=n261 B=x0 Y=n264
*   .subckt INVX1 A=n264 Y=n265
*   .subckt AOI21X1 A=n265 B=n502 C=n499 Y=n503
