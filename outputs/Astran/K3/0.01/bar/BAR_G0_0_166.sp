.SUBCKT BAR_G0_0_166 A B C Y VCC GND
MclKBWJ1U_0#0 clKBWJ1U_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_0#1 clKBWJ1U_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_1#0 VCC B clKBWJ1U_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_1#1 clKBWJ1U_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_1#2 Y clKBWJ1U_0#Y clKBWJ1U_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_1#3 clKBWJ1U_1#a_12_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_1#4 Y A clKBWJ1U_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclKBWJ1U_1#5 GND clKBWJ1U_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:C=1|01111
* 104 occurrences in design
* each contains 2 cells
* pin map: {'n469': 'A', 'n436': 'B', 'x133': 'C'} {'n470': 'Y'}
* function: C&(~A|~B)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt AOI21X1 A=n436 B=n469 C=n267 Y=n470
