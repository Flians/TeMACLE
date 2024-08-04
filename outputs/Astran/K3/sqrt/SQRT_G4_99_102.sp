.SUBCKT SQRT_G4_99_102 A B C Y VCC GND
MclPR7IA6_0#0 clPR7IA6_0#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_0#1 VCC C clPR7IA6_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_0#2 clPR7IA6_0#a_9_6# B GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_0#3 clPR7IA6_0#Y C clPR7IA6_0#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#0 Y clPR7IA6_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#1 VCC A Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#2 clPR7IA6_1#a_9_6# clPR7IA6_0#Y GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPR7IA6_1#3 Y A clPR7IA6_1#a_9_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 190 occurrences in design
* each contains 2 cells
* pin map: {'n339': 'A', 'y63': 'B', 'n336': 'C'} {'n340': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=y63 B=n336 Y=n337
*   .subckt NAND2X1 A=n337 B=n339 Y=n340
