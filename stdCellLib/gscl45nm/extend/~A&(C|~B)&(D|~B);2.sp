.SUBCKT I2C_G3_80_81 A B C D Y VCC GND
MclXT8ZJV_0#0 clXT8ZJV_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_0#1 VCC D clXT8ZJV_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_0#2 clXT8ZJV_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_0#3 clXT8ZJV_0#Y D clXT8ZJV_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_1#0 VCC B clXT8ZJV_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_1#1 clXT8ZJV_1#a_2_54# clXT8ZJV_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_1#2 Y A clXT8ZJV_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_1#3 clXT8ZJV_1#a_12_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_1#4 Y clXT8ZJV_0#Y clXT8ZJV_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclXT8ZJV_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|AOI21X1|NAND2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-NAND2X1:A,B=2|NAND2X1:Y-AOI21X1:A,B=1|011111
* 69 occurrences in design
* each contains 2 cells
* pin map: {'n218': 'A', 'n271': 'B', 'x9': 'C', 'n272': 'D'} {'n274': 'Y'}
* function: ~A&(C|~B)&(D|~B)
* Example occurence:
*   .subckt NAND2X1 A=x9 B=n272 Y=n273
*   .subckt AOI21X1 A=n271 B=n273 C=n218 Y=n274
