.SUBCKT SQRT_G0_173_198_231 A B C Y VCC GND
Mcl1GNKQ6_0#0 VCC B cl1GNKQ6_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#1 cl1GNKQ6_0#a_18_54# cl1GNKQ6_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#2 cl1GNKQ6_0#Y cl1GNKQ6_0#a_2_6# cl1GNKQ6_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#3 cl1GNKQ6_0#a_35_54# B cl1GNKQ6_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#4 VCC C cl1GNKQ6_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#5 cl1GNKQ6_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#6 GND B cl1GNKQ6_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#7 cl1GNKQ6_0#a_18_6# cl1GNKQ6_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#8 cl1GNKQ6_0#Y B cl1GNKQ6_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#9 cl1GNKQ6_0#a_35_6# cl1GNKQ6_0#a_2_6# cl1GNKQ6_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#10 GND C cl1GNKQ6_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_0#11 cl1GNKQ6_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_1#0 cl1GNKQ6_1#Y cl1GNKQ6_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_1#1 cl1GNKQ6_1#Y cl1GNKQ6_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#0 VCC A cl1GNKQ6_2#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#1 cl1GNKQ6_2#a_18_54# cl1GNKQ6_2#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#2 Y cl1GNKQ6_2#a_2_6# cl1GNKQ6_2#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#3 cl1GNKQ6_2#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#4 VCC cl1GNKQ6_1#Y cl1GNKQ6_2#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#5 cl1GNKQ6_2#a_12_41# cl1GNKQ6_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#6 GND A cl1GNKQ6_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#7 cl1GNKQ6_2#a_18_6# cl1GNKQ6_2#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#8 Y A cl1GNKQ6_2#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#9 cl1GNKQ6_2#a_35_6# cl1GNKQ6_2#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#10 GND cl1GNKQ6_1#Y cl1GNKQ6_2#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1GNKQ6_2#11 cl1GNKQ6_2#a_12_41# cl1GNKQ6_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|XNOR2X1|INVX1=1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|INVX1:Y-XNOR2X1:A,B=1|XNOR2X1:Y-INVX1:A=1|111101
* 1493 occurrences in design
* each contains 3 cells
* pin map: {'n488': 'A', 'n417': 'B', 'n350': 'C'} {'n489': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt XNOR2X1 A=n417 B=n350 Y=n418
*   .subckt INVX1 A=n418 Y=n419
*   .subckt XNOR2X1 A=n488 B=n419 Y=n489
