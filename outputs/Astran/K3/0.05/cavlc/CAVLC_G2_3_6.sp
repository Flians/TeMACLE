.SUBCKT CAVLC_G2_3_6 A B C Y VCC GND
MclX3L04U_0#0 clX3L04U_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_0#1 VCC C clX3L04U_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_0#2 clX3L04U_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_0#3 clX3L04U_0#Y C clX3L04U_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#0 Y clX3L04U_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#2 clX3L04U_1#a_9_6# clX3L04U_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#3 Y A clX3L04U_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 47 occurrences in design
* each contains 2 cells
* pin map: {'n79': 'A', 'n21': 'B', 'x0': 'C'} {'n80': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n21 B=x0 Y=n77
*   .subckt NAND2X1 A=n77 B=n79 Y=n80