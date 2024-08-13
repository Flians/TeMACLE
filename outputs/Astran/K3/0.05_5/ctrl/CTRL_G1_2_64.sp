.SUBCKT CTRL_G1_2_64 A B C Y VCC GND
MclU6QRRN_0#0 clU6QRRN_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_0#1 clU6QRRN_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_1#0 VCC clU6QRRN_0#Y clU6QRRN_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_1#1 clU6QRRN_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_1#2 Y A clU6QRRN_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_1#3 clU6QRRN_1#a_12_6# clU6QRRN_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_1#4 Y B clU6QRRN_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU6QRRN_1#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|AOI21X1|INVX1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INVX1:Y-AOI21X1:A,B=1|01111
* 5 occurrences in design
* each contains 2 cells
* pin map: {'n10': 'A', 'n60': 'B', 'x3': 'C'} {'n73': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt AOI21X1 A=n12 B=n60 C=n10 Y=n73