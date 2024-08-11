.SUBCKT SIN_G4_106_1233 A B C Y VCC GND
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
* pattern code: 3|3|SIN_G1_26_55|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SIN_G1_26_55:A,B=1|INPUT:Y-SIN_G1_26_55:C=1|INVX1:Y-SIN_G1_26_55:A,B=1|11110
* 200 occurrences in design
* each contains 3 cells
* pin map: {'n1792': 'A', 'n485': 'B', 'n180': 'C'} {'n1793': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=n180 Y=n181
*   .subckt SIN_G1_26_55 A=n1792 B=n181 C=n485 Y=n1793
