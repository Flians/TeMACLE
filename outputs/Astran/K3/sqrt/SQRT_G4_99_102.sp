.SUBCKT SQRT_G4_99_102 A B C Y VCC GND
MclQMNF9O_0#0 clQMNF9O_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_0#1 VCC C clQMNF9O_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_0#2 clQMNF9O_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_0#3 clQMNF9O_0#Y C clQMNF9O_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_1#0 Y clQMNF9O_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_1#2 clQMNF9O_1#a_9_6# clQMNF9O_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQMNF9O_1#3 Y A clQMNF9O_1#a_9_6# GND nmos w=0.5u l=0.05u
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
