.SUBCKT DEC_G0_0_2_3 A B C D Y VCC GND
Mcl4DSFRC_0#0 cl4DSFRC_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_0#1 cl4DSFRC_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#0 VCC B cl4DSFRC_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#1 cl4DSFRC_1#a_2_64# B VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#2 cl4DSFRC_1#a_25_64# D cl4DSFRC_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#3 cl4DSFRC_1#a_2_64# D cl4DSFRC_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#4 cl4DSFRC_1#Y C cl4DSFRC_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#5 cl4DSFRC_1#a_25_64# C cl4DSFRC_1#Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#6 cl4DSFRC_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#7 GND D cl4DSFRC_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_1#8 cl4DSFRC_1#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_2#0 Y cl4DSFRC_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_2#1 VCC cl4DSFRC_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_2#2 cl4DSFRC_2#a_9_6# cl4DSFRC_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4DSFRC_2#3 Y cl4DSFRC_1#Y cl4DSFRC_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|INVX1=1|NOR3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=3|INVX1:Y-NAND2X1:A,B=1|NOR3X1:Y-NAND2X1:A,B=1|1111101
* 10 occurrences in design
* each contains 3 cells
* pin map: {'x4': 'A', 'n17': 'B', 'x5': 'C', 'x6': 'D'} {'n19': 'Y'}
* function: A|B|C|D
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt NOR3X1 A=n17 B=x6 C=x5 Y=n18
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
