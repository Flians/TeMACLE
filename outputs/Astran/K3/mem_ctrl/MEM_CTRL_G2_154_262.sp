.SUBCKT MEM_CTRL_G2_154_262 A B C Y VCC GND
MclE5OJNG_0#0 clE5OJNG_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_0#1 clE5OJNG_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_1#0 Y clE5OJNG_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_1#3 clE5OJNG_1#a_9_6# clE5OJNG_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_1#4 clE5OJNG_1#a_14_6# B clE5OJNG_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclE5OJNG_1#5 Y A clE5OJNG_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 6035 occurrences in design
* each contains 2 cells
* pin map: {'n1992': 'A', 'n1238': 'B', 'x56': 'C'} {'n1993': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x56 Y=n1232
*   .subckt NAND3X1 A=n1232 B=n1238 C=n1992 Y=n1993
