.SUBCKT ADDER_G2_0_410 A B Y VCC GND
MclEYRE1J_0#0 clEYRE1J_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYRE1J_0#1 clEYRE1J_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYRE1J_1#0 clEYRE1J_1#a_9_54# clEYRE1J_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYRE1J_1#1 Y A clEYRE1J_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYRE1J_1#2 Y clEYRE1J_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclEYRE1J_1#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|2|NOR2X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NOR2X1:A,B=1|1110
* 32 occurrences in design
* each contains 2 cells
* pin map: {'n732': 'A', 'x126': 'B'} {'n733': 'Y'}
* function: B&~A
* Example occurence:
*   .subckt INVX1 A=x126 Y=n322
*   .subckt NOR2X1 A=n322 B=n732 Y=n733
