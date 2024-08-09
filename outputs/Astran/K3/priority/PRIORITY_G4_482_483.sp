.SUBCKT PRIORITY_G4_482_483 A B C Y VCC GND
MclG9467B_0#0 clG9467B_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_0#1 VCC B clG9467B_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_0#2 clG9467B_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_0#3 clG9467B_0#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_0#4 clG9467B_0#a_14_6# B clG9467B_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_0#5 clG9467B_0#Y C clG9467B_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_1#0 Y clG9467B_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG9467B_1#1 Y clG9467B_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|INVX1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|NAND3X1:Y-INVX1:A=1|11101
* 6 occurrences in design
* each contains 2 cells
* pin map: {'n183': 'A', 'n184': 'B', 'n484': 'C'} {'n604': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt NAND3X1 A=n183 B=n184 C=n484 Y=n603
*   .subckt INVX1 A=n603 Y=n604
