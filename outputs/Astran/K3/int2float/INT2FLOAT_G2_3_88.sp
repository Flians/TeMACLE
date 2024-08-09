.SUBCKT INT2FLOAT_G2_3_88 A B C Y VCC GND
Mcl9H3FQ3_0#0 cl9H3FQ3_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_0#1 cl9H3FQ3_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#0 VCC cl9H3FQ3_0#Y cl9H3FQ3_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#1 cl9H3FQ3_1#a_2_64# cl9H3FQ3_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#2 cl9H3FQ3_1#a_25_64# A cl9H3FQ3_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#3 cl9H3FQ3_1#a_2_64# A cl9H3FQ3_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#4 Y B cl9H3FQ3_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#5 cl9H3FQ3_1#a_25_64# B Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#6 Y cl9H3FQ3_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl9H3FQ3_1#8 Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NOR3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NOR3X1:A,B,C=2|INVX1:Y-NOR3X1:A,B,C=1|11110
* 16 occurrences in design
* each contains 2 cells
* pin map: {'n23': 'A', 'x9': 'B', 'x8': 'C'} {'n73': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVX1 A=x8 Y=n21
*   .subckt NOR3X1 A=n21 B=n23 C=x9 Y=n73
