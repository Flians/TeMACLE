.SUBCKT CTRL_G3_1_2_31 A B C Y VCC GND
Mcl1GHCU7_0#0 cl1GHCU7_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_0#1 VCC C cl1GHCU7_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_0#2 cl1GHCU7_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_0#3 cl1GHCU7_0#Y C cl1GHCU7_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_1#0 cl1GHCU7_1#a_9_54# cl1GHCU7_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_1#1 Y A cl1GHCU7_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_1#2 Y cl1GHCU7_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GHCU7_1#3 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NOR3X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-NOR3X1:A,B,C=1|INVX1:Y-NOR3X1:A,B,C=2|111110
* 6 occurrences in design
* each contains 3 cells
* pin map: {'n14': 'A', 'x3': 'B', 'x4': 'C'} {'n43': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt INVX1 A=x4 Y=n13
*   .subckt NOR3X1 A=n12 B=n13 C=n14 Y=n43
