.SUBCKT INT2FLOAT_G3_3_4_158 A B C Y VCC GND
Mcl8L4A00_0#0 cl8L4A00_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_0#1 VCC C cl8L4A00_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_0#2 cl8L4A00_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_0#3 cl8L4A00_0#Y C cl8L4A00_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#0 cl8L4A00_1#a_9_54# cl8L4A00_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#1 Y A cl8L4A00_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#2 Y cl8L4A00_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl8L4A00_1#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NOR3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=2|111110
* 11 occurrences in design
* each contains 3 cells
* pin map: {'n18': 'A', 'x8': 'B', 'x7': 'C'} {'n169': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=x8 Y=n21
*   .subckt INVX1 A=x7 Y=n20
*   .subckt NOR3X1 A=n18 B=n20 C=n21 Y=n169
