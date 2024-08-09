.SUBCKT VOTER_G4_11_12 A B C Y VCC GND
Mcl4RRCJ5_0#0 VCC B cl4RRCJ5_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#1 cl4RRCJ5_0#a_18_54# cl4RRCJ5_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#2 cl4RRCJ5_0#Y cl4RRCJ5_0#a_2_6# cl4RRCJ5_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#3 cl4RRCJ5_0#a_35_54# B cl4RRCJ5_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#4 VCC C cl4RRCJ5_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#5 cl4RRCJ5_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#6 GND B cl4RRCJ5_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#7 cl4RRCJ5_0#a_18_6# cl4RRCJ5_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#8 cl4RRCJ5_0#Y B cl4RRCJ5_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#9 cl4RRCJ5_0#a_35_6# cl4RRCJ5_0#a_2_6# cl4RRCJ5_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#10 GND C cl4RRCJ5_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_0#11 cl4RRCJ5_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_1#1 VCC cl4RRCJ5_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_1#2 cl4RRCJ5_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4RRCJ5_1#3 Y cl4RRCJ5_0#Y cl4RRCJ5_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|XNOR2X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-XNOR2X1:A,B=2|XNOR2X1:Y-NAND2X1:A,B=1|11101
* 329 occurrences in design
* each contains 2 cells
* pin map: {'n6276': 'A', 'n6277': 'B', 'x721': 'C'} {'n6280': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n6277 B=x721 Y=n6278
*   .subckt NAND2X1 A=n6276 B=n6278 Y=n6280
