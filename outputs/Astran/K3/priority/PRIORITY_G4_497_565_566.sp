.SUBCKT PRIORITY_G4_497_565_566 B A Y VCC GND
MclOQ0GRG_0#0 clOQ0GRG_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQ0GRG_0#1 clOQ0GRG_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQ0GRG_1#0 clOQ0GRG_1#a_9_54# clOQ0GRG_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQ0GRG_1#1 Y B clOQ0GRG_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQ0GRG_1#2 Y clOQ0GRG_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOQ0GRG_1#3 GND B Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|2|INVX1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-INVX1:A=1|11011
* 3 occurrences in design
* each contains 3 cells
* pin map: {'n583': 'A', 'n581': 'B'} {'n670': 'Y'}
* function: A&~B
* Example occurence:
*   .subckt INVX1 A=n581 Y=n582
*   .subckt NAND2X1 A=n582 B=n583 Y=n669
*   .subckt INVX1 A=n669 Y=n670
