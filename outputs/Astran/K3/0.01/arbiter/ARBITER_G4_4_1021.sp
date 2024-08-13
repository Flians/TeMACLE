.SUBCKT ARBITER_G4_4_1021 A B C Y VCC GND
Mcl3Q9C9K_0#0 cl3Q9C9K_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_0#1 VCC B cl3Q9C9K_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_0#2 cl3Q9C9K_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_0#3 cl3Q9C9K_0#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_0#4 cl3Q9C9K_0#a_14_6# B cl3Q9C9K_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_0#5 cl3Q9C9K_0#Y C cl3Q9C9K_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_1#0 Y cl3Q9C9K_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3Q9C9K_1#1 Y cl3Q9C9K_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|INVX1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|NAND3X1:Y-INVX1:A=1|11101
* 169 occurrences in design
* each contains 2 cells
* pin map: {'n511': 'A', 'n512': 'B', 'n517': 'C'} {'n519': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt NAND3X1 A=n511 B=n512 C=n517 Y=n518
*   .subckt INVX1 A=n518 Y=n519