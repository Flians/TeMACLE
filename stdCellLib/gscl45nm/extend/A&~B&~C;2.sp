.SUBCKT AND_NOR_G0_0_1 A B C Y VCC GND
MclIL18HC_0#0 clIL18HC_0#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#1 clIL18HC_0#Y C clIL18HC_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#2 clIL18HC_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_0#3 GND C clIL18HC_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#0 clIL18HC_1#a_2_6# A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#1 VCC clIL18HC_0#Y clIL18HC_1#a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#2 Y clIL18HC_1#a_2_6# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#3 clIL18HC_1#a_9_6# A clIL18HC_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#4 GND clIL18HC_0#Y clIL18HC_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclIL18HC_1#5 Y clIL18HC_1#a_2_6# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|AND2X2|NOR2X1=1|INPUT:Y-AND2X2:A,B=1|INPUT:Y-NOR2X1:A,B=2|NOR2X1:Y-AND2X2:A,B=1|01111
* 1 occurrences in design
* each contains 2 cells
* pin map: {'x1': 'A', 'n65': 'B', 'n66': 'C'} {'y8': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt NOR2X1 A=n65 B=n66 Y=n775
*   .subckt AND2X2 A=x1 B=n775 Y=y8
