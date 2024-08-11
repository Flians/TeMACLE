.SUBCKT ARBITER_G4_0_948_949 A B C D Y VCC GND
Mcl4C298M_0#0 cl4C298M_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_0#1 cl4C298M_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_1#0 cl4C298M_1#Y cl4C298M_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_1#1 VCC C cl4C298M_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_1#2 cl4C298M_1#a_9_6# cl4C298M_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_1#3 cl4C298M_1#Y C cl4C298M_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_2#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_2#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_2#2 Y cl4C298M_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_2#3 cl4C298M_2#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_2#4 cl4C298M_2#a_14_6# B cl4C298M_2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4C298M_2#5 Y cl4C298M_1#Y cl4C298M_2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND3X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND3X1:A,B,C=1|1111110
* 189 occurrences in design
* each contains 3 cells
* pin map: {'n384': 'A', 'n385': 'B', 'x125': 'C', 'x253': 'D'} {'n1356': 'Y'}
* function: ~A|~B|(C&~D)
* Example occurence:
*   .subckt INVX1 A=x253 Y=n511
*   .subckt NAND2X1 A=n511 B=x125 Y=n1355
*   .subckt NAND3X1 A=n384 B=n385 C=n1355 Y=n1356
