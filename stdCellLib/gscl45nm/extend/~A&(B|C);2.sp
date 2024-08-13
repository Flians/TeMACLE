.SUBCKT NAND_NOR_G0_0_1 A B C Y VCC GND
Mcl7POJF1_0#0 cl7POJF1_0#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_0#1 cl7POJF1_0#Y C cl7POJF1_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_0#2 cl7POJF1_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_0#3 GND C cl7POJF1_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_1#0 cl7POJF1_1#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_1#1 Y cl7POJF1_0#Y cl7POJF1_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_1#2 Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl7POJF1_1#3 GND cl7POJF1_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR2X1|NOR2X1=1|INPUT:Y-NOR2X1:A,B=3|NOR2X1:Y-NOR2X1:A,B=1|11101
* 1 occurrences in design
* each contains 2 cells
* pin map: {'n6451': 'A', 'x725': 'B', 'x724': 'C'} {'n6452': 'Y'}
* function: ~A&(B|C)
* Example occurence:
*   .subckt NOR2X1 A=x725 B=x724 Y=y127
*   .subckt NOR2X1 A=n6451 B=y127 Y=n6452
