.SUBCKT SIN_G2_541_2227 A B C Y VCC GND
Mcl4PWF7C_0#0 VCC C cl4PWF7C_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#1 cl4PWF7C_0#a_18_54# cl4PWF7C_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#2 cl4PWF7C_0#Y cl4PWF7C_0#a_2_6# cl4PWF7C_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#3 cl4PWF7C_0#a_35_54# C cl4PWF7C_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#4 VCC B cl4PWF7C_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#5 cl4PWF7C_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#6 GND C cl4PWF7C_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#7 cl4PWF7C_0#a_18_6# cl4PWF7C_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#8 cl4PWF7C_0#Y C cl4PWF7C_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#9 cl4PWF7C_0#a_35_6# cl4PWF7C_0#a_2_6# cl4PWF7C_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#10 GND B cl4PWF7C_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_0#11 cl4PWF7C_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#0 VCC cl4PWF7C_0#Y cl4PWF7C_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#1 cl4PWF7C_1#a_18_54# cl4PWF7C_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#2 Y cl4PWF7C_1#a_2_6# cl4PWF7C_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#3 cl4PWF7C_1#a_35_54# cl4PWF7C_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#4 VCC A cl4PWF7C_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#5 cl4PWF7C_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#6 GND cl4PWF7C_0#Y cl4PWF7C_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#7 cl4PWF7C_1#a_18_6# cl4PWF7C_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#8 Y cl4PWF7C_0#Y cl4PWF7C_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#9 cl4PWF7C_1#a_35_6# cl4PWF7C_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#10 GND A cl4PWF7C_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4PWF7C_1#11 cl4PWF7C_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 274 occurrences in design
* each contains 2 cells
* pin map: {'n910': 'A', 'x9': 'B', 'n771': 'C'} {'n2163': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n771 B=x9 Y=n772
*   .subckt XNOR2X1 A=n772 B=n910 Y=n2163
