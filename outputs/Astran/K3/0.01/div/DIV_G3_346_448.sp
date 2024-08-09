.SUBCKT DIV_G3_346_448 A B C Y VCC GND
Mcl5AA6HM_0#0 VCC C cl5AA6HM_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#1 cl5AA6HM_0#a_18_54# cl5AA6HM_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#2 cl5AA6HM_0#Y cl5AA6HM_0#a_2_6# cl5AA6HM_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#3 cl5AA6HM_0#a_35_54# C cl5AA6HM_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#4 VCC B cl5AA6HM_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#5 cl5AA6HM_0#a_12_41# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#6 GND C cl5AA6HM_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#7 cl5AA6HM_0#a_18_6# cl5AA6HM_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#8 cl5AA6HM_0#Y C cl5AA6HM_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#9 cl5AA6HM_0#a_35_6# cl5AA6HM_0#a_2_6# cl5AA6HM_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#10 GND B cl5AA6HM_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_0#11 cl5AA6HM_0#a_12_41# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#0 VCC cl5AA6HM_0#Y cl5AA6HM_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#1 cl5AA6HM_1#a_18_54# cl5AA6HM_1#a_13_43# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#2 Y cl5AA6HM_0#Y cl5AA6HM_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#3 cl5AA6HM_1#a_35_54# cl5AA6HM_1#a_2_6# Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#4 VCC A cl5AA6HM_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#5 cl5AA6HM_1#a_13_43# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#6 GND cl5AA6HM_0#Y cl5AA6HM_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#7 cl5AA6HM_1#a_18_6# cl5AA6HM_1#a_13_43# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#8 Y cl5AA6HM_1#a_2_6# cl5AA6HM_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#9 cl5AA6HM_1#a_35_6# cl5AA6HM_0#Y Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#10 GND A cl5AA6HM_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5AA6HM_1#11 cl5AA6HM_1#a_13_43# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=2|INPUT:Y-XOR2X1:A,B=1|XNOR2X1:Y-XOR2X1:A,B=1|11110
* 1703 occurrences in design
* each contains 2 cells
* pin map: {'n599': 'A', 'x69': 'B', 'n542': 'C'} {'n609': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt XNOR2X1 A=n542 B=x69 Y=n543
*   .subckt XOR2X1 A=n543 B=n599 Y=n609
