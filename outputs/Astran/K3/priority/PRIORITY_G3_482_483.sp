.SUBCKT PRIORITY_G3_482_483 A B C Y VCC GND
Mcl42ZQU2_0#0 cl42ZQU2_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_0#1 VCC B cl42ZQU2_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_0#2 cl42ZQU2_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_0#3 cl42ZQU2_0#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_0#4 cl42ZQU2_0#a_14_6# B cl42ZQU2_0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_0#5 cl42ZQU2_0#Y C cl42ZQU2_0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_1#0 Y cl42ZQU2_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl42ZQU2_1#1 Y cl42ZQU2_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|INVX1|NAND3X1=1|INPUT:Y-NAND3X1:A,B,C=3|NAND3X1:Y-INVX1:A=1|11101
* 7 occurrences in design
* each contains 2 cells
* pin map: {'n183': 'A', 'n184': 'B', 'n484': 'C'} {'n605': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt NAND3X1 A=n183 B=n184 C=n484 Y=n604
*   .subckt INVX1 A=n604 Y=n605
