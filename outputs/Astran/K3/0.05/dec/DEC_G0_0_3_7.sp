.SUBCKT DEC_G0_0_3_7 A C B Y VCC GND
MclRUE7MH_0#0 clRUE7MH_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_0#1 clRUE7MH_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#0 VCC clRUE7MH_0#Y clRUE7MH_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#1 clRUE7MH_1#a_2_64# clRUE7MH_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#2 clRUE7MH_1#a_25_64# A clRUE7MH_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#3 clRUE7MH_1#a_2_64# A clRUE7MH_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#4 Y C clRUE7MH_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#5 clRUE7MH_1#a_25_64# C Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#6 Y clRUE7MH_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclRUE7MH_1#8 Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NOR2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|111110
* 160 occurrences in design
* each contains 3 cells
* pin map: {'n22': 'A', 'n18': 'B', 'x4': 'C'} {'y0': 'Y'}
* function: B&~A&~C
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
