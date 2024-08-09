.SUBCKT HYP_G0_4_54564 A B C Y VCC GND
MclOWO2H4_0#0 clOWO2H4_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_0#1 VCC C clOWO2H4_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_0#2 clOWO2H4_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_0#3 clOWO2H4_0#Y C clOWO2H4_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_1#1 VCC clOWO2H4_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_1#2 clOWO2H4_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclOWO2H4_1#3 Y clOWO2H4_0#Y clOWO2H4_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 19538 occurrences in design
* each contains 2 cells
* pin map: {'n510': 'A', 'x251': 'B', 'x254': 'C'} {'n525': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=x251 B=x254 Y=n523
*   .subckt NAND2X1 A=n510 B=n523 Y=n525
