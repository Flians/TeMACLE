.SUBCKT DEC_G0_2_3 A B C D Y VCC GND
Mcl2SNTJY_0#0 VCC B cl2SNTJY_0#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#1 cl2SNTJY_0#a_2_64# B VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#2 cl2SNTJY_0#a_25_64# D cl2SNTJY_0#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#3 cl2SNTJY_0#a_2_64# D cl2SNTJY_0#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#4 cl2SNTJY_0#Y C cl2SNTJY_0#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#5 cl2SNTJY_0#a_25_64# C cl2SNTJY_0#Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#6 cl2SNTJY_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#7 GND D cl2SNTJY_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_0#8 cl2SNTJY_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_1#1 VCC cl2SNTJY_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_1#2 cl2SNTJY_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2SNTJY_1#3 Y cl2SNTJY_0#Y cl2SNTJY_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|NAND2X1|NOR3X1=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR3X1:A,B,C=3|NOR3X1:Y-NAND2X1:A,B=1|111101
* 20 occurrences in design
* each contains 2 cells
* pin map: {'n14': 'A', 'n17': 'B', 'x5': 'C', 'x6': 'D'} {'n19': 'Y'}
* function: B|C|D|~A
* Example occurence:
*   .subckt NOR3X1 A=n17 B=x6 C=x5 Y=n18
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
