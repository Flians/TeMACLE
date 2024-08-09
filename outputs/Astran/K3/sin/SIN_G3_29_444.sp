.SUBCKT SIN_G3_29_444 A B C Y VCC GND
MclUTICRU_0#0 clUTICRU_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_0#1 VCC B clUTICRU_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_0#2 clUTICRU_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_0#3 clUTICRU_0#Y B clUTICRU_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_1#0 Y clUTICRU_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_1#2 clUTICRU_1#a_9_6# clUTICRU_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUTICRU_1#3 Y A clUTICRU_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 256 occurrences in design
* each contains 2 cells
* pin map: {'n117': 'A', 'n66': 'B', 'n58': 'C'} {'n1209': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n58 B=n66 Y=n67
*   .subckt NAND2X1 A=n67 B=n117 Y=n1209
