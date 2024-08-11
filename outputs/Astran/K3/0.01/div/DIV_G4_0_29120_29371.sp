.SUBCKT DIV_G4_0_29120_29371 C A B Y VCC GND
MclPT800B_0#0 clPT800B_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_0#1 clPT800B_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#0 clPT800B_1#a_9_54# clPT800B_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#1 Y C clPT800B_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#3 GND clPT800B_0#Y clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#4 clPT800B_1#a_2_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPT800B_1#5 Y A clPT800B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 1344 occurrences in design
* each contains 3 cells
* pin map: {'n29314': 'A', 'n28903': 'B', 'x123': 'C'} {'n29315': 'Y'}
* function: ~A|(B&~C)
* Example occurence:
*   .subckt INVX1 A=x123 Y=n234
*   .subckt NAND2X1 A=n234 B=n28903 Y=n28904
*   .subckt NAND2X1 A=n28904 B=n29314 Y=n29315
