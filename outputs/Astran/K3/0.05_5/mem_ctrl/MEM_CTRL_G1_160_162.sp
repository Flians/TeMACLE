.SUBCKT MEM_CTRL_G1_160_162 A B C Y VCC GND
MclHSXSD3_0#0 clHSXSD3_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_0#1 VCC C clHSXSD3_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_0#2 clHSXSD3_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_0#3 clHSXSD3_0#Y C clHSXSD3_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#0 Y clHSXSD3_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#2 clHSXSD3_1#a_9_6# clHSXSD3_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#3 Y A clHSXSD3_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 6063 occurrences in design
* each contains 2 cells
* pin map: {'n1893': 'A', 'x228': 'B', 'x105': 'C'} {'n1895': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=x105 B=x228 Y=n1889
*   .subckt NAND2X1 A=n1889 B=n1893 Y=n1895
