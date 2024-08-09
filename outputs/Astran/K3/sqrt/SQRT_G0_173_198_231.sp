.SUBCKT SQRT_G0_173_198_231 A B C Y VCC GND
MclW8LI0O_0#0 VCC B clW8LI0O_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#1 clW8LI0O_0#a_18_54# clW8LI0O_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#2 clW8LI0O_0#Y clW8LI0O_0#a_2_6# clW8LI0O_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#3 clW8LI0O_0#a_35_54# B clW8LI0O_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#4 VCC C clW8LI0O_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#5 clW8LI0O_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#6 GND B clW8LI0O_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#7 clW8LI0O_0#a_18_6# clW8LI0O_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#8 clW8LI0O_0#Y B clW8LI0O_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#9 clW8LI0O_0#a_35_6# clW8LI0O_0#a_2_6# clW8LI0O_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#10 GND C clW8LI0O_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_0#11 clW8LI0O_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_1#0 clW8LI0O_1#Y clW8LI0O_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_1#1 clW8LI0O_1#Y clW8LI0O_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#0 VCC A clW8LI0O_2#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#1 clW8LI0O_2#a_18_54# clW8LI0O_2#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#2 Y clW8LI0O_2#a_2_6# clW8LI0O_2#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#3 clW8LI0O_2#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#4 VCC clW8LI0O_1#Y clW8LI0O_2#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#5 clW8LI0O_2#a_12_41# clW8LI0O_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#6 GND A clW8LI0O_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#7 clW8LI0O_2#a_18_6# clW8LI0O_2#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#8 Y A clW8LI0O_2#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#9 clW8LI0O_2#a_35_6# clW8LI0O_2#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#10 GND clW8LI0O_1#Y clW8LI0O_2#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW8LI0O_2#11 clW8LI0O_2#a_12_41# clW8LI0O_1#Y GND GND nmos w=0.5u l=0.05u
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
