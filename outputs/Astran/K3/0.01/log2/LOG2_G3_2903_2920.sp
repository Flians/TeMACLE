.SUBCKT LOG2_G3_2903_2920 A B C Y VCC GND
Mcl2EHN8G_0#0 VCC B cl2EHN8G_0#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#1 cl2EHN8G_0#a_18_54# cl2EHN8G_0#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#2 cl2EHN8G_0#Y cl2EHN8G_0#a_2_6# cl2EHN8G_0#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#3 cl2EHN8G_0#a_35_54# B cl2EHN8G_0#Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#4 VCC C cl2EHN8G_0#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#5 cl2EHN8G_0#a_12_41# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#6 GND B cl2EHN8G_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#7 cl2EHN8G_0#a_18_6# cl2EHN8G_0#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#8 cl2EHN8G_0#Y B cl2EHN8G_0#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#9 cl2EHN8G_0#a_35_6# cl2EHN8G_0#a_2_6# cl2EHN8G_0#Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#10 GND C cl2EHN8G_0#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_0#11 cl2EHN8G_0#a_12_41# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#0 VCC cl2EHN8G_0#Y cl2EHN8G_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#1 cl2EHN8G_1#a_18_54# cl2EHN8G_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#2 Y cl2EHN8G_1#a_2_6# cl2EHN8G_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#3 cl2EHN8G_1#a_35_54# cl2EHN8G_0#Y Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#4 VCC A cl2EHN8G_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#5 cl2EHN8G_1#a_12_41# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#6 GND cl2EHN8G_0#Y cl2EHN8G_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#7 cl2EHN8G_1#a_18_6# cl2EHN8G_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#8 Y cl2EHN8G_0#Y cl2EHN8G_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#9 cl2EHN8G_1#a_35_6# cl2EHN8G_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#10 GND A cl2EHN8G_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2EHN8G_1#11 cl2EHN8G_1#a_12_41# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|XNOR2X1|XNOR2X1=1|INPUT:Y-XNOR2X1:A,B=3|XNOR2X1:Y-XNOR2X1:A,B=1|11101
* 1420 occurrences in design
* each contains 2 cells
* pin map: {'n928': 'A', 'n1024': 'B', 'n3158': 'C'} {'n3166': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2X1 A=n1024 B=n3158 Y=n3165
*   .subckt XNOR2X1 A=n3165 B=n928 Y=n3166
