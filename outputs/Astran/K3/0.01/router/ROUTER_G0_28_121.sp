.SUBCKT ROUTER_G0_28_121 A B C Y VCC GND
MclH399CS_0#0 clH399CS_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_0#1 clH399CS_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_1#1 VCC clH399CS_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_1#3 clH399CS_1#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_1#4 clH399CS_1#a_14_6# clH399CS_0#Y clH399CS_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclH399CS_1#5 Y B clH399CS_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 50 occurrences in design
* each contains 2 cells
* pin map: {'n63': 'A', 'n65': 'B', 'x3': 'C'} {'n166': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x3 Y=n64
*   .subckt NAND3X1 A=n63 B=n64 C=n65 Y=n166
