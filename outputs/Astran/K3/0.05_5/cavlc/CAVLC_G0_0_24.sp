.SUBCKT CAVLC_G0_0_24 A B C Y VCC GND
MclK13SMD_0#0 clK13SMD_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_0#1 clK13SMD_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_1#0 Y clK13SMD_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_1#3 clK13SMD_1#a_9_6# clK13SMD_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_1#4 clK13SMD_1#a_14_6# B clK13SMD_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK13SMD_1#5 Y A clK13SMD_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 131 occurrences in design
* each contains 2 cells
* pin map: {'n19': 'A', 'n36': 'B', 'x0': 'C'} {'n37': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x0 Y=n12
*   .subckt NAND3X1 A=n12 B=n19 C=n36 Y=n37