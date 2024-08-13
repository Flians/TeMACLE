.SUBCKT VOTER_G3_12_13 A B C Y VCC GND
Mcl1EH6F1_0#0 VCC C cl1EH6F1_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#1 cl1EH6F1_0#a_18_54# cl1EH6F1_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#2 cl1EH6F1_0#Y cl1EH6F1_0#a_2_6# cl1EH6F1_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#3 cl1EH6F1_0#a_35_54# C cl1EH6F1_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#4 VCC B cl1EH6F1_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#5 cl1EH6F1_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#6 GND C cl1EH6F1_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#7 cl1EH6F1_0#a_18_6# cl1EH6F1_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#8 cl1EH6F1_0#Y C cl1EH6F1_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#9 cl1EH6F1_0#a_35_6# cl1EH6F1_0#a_2_6# cl1EH6F1_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#10 GND B cl1EH6F1_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_0#11 cl1EH6F1_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#1 VCC cl1EH6F1_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#2 cl1EH6F1_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1EH6F1_1#3 Y cl1EH6F1_0#Y cl1EH6F1_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|XNOR2X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-XNOR2X1:A,B=2|XNOR2X1:Y-NAND2X1:A,B=1|11101
* 322 occurrences in design
* each contains 2 cells
* pin map: {'n6409': 'A', 'x721': 'B', 'n6410': 'C'} {'n6413': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n6410 B=x721 Y=n6411
*   .subckt NAND2X1 A=n6409 B=n6411 Y=n6413
