.SUBCKT CTRL_G3_1_15_65 A B C Y VCC GND
MclOQD6G0_0#0 clOQD6G0_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_0#1 clOQD6G0_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_1#0 clOQD6G0_1#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_1#1 clOQD6G0_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_2#0 VCC clOQD6G0_0#Y clOQD6G0_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_2#1 clOQD6G0_2#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_2#2 Y clOQD6G0_1#Y clOQD6G0_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_2#3 clOQD6G0_2#a_12_6# clOQD6G0_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_2#4 Y A clOQD6G0_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQD6G0_2#5 GND clOQD6G0_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|AOI21X1|INVX1=2|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=2|INVX1:Y-AOI21X1:A,B=1|INVX1:Y-AOI21X1:C=1|011111
* 5 occurrences in design
* each contains 3 cells
* pin map: {'n61': 'A', 'x3': 'B', 'x1': 'C'} {'n74': 'Y'}
* function: C&(B|~A)
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt INVX1 A=x1 Y=n10
*   .subckt AOI21X1 A=n12 B=n61 C=n10 Y=n74
