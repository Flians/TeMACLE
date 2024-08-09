.SUBCKT CTRL_G2_13_52 A B C Y VCC GND
MclUDDYCH_0#0 clUDDYCH_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_0#1 VCC C clUDDYCH_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_0#2 clUDDYCH_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_0#3 clUDDYCH_0#Y C clUDDYCH_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_1#0 Y clUDDYCH_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_1#2 clUDDYCH_1#a_9_6# clUDDYCH_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclUDDYCH_1#3 Y A clUDDYCH_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 6 occurrences in design
* each contains 2 cells
* pin map: {'n61': 'A', 'n12': 'B', 'x1': 'C'} {'n62': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n12 B=x1 Y=n25
*   .subckt NAND2X1 A=n25 B=n61 Y=n62
