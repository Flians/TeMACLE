.SUBCKT MULTIPLIER_G4_71_72 A B C D Y VCC GND
Mcl76QGB1_0#0 cl76QGB1_0#a_9_54# D VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_0#1 cl76QGB1_0#Y B cl76QGB1_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_0#2 VCC C cl76QGB1_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_0#3 GND D cl76QGB1_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_0#4 cl76QGB1_0#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_0#5 cl76QGB1_0#Y C cl76QGB1_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#0 VCC A cl76QGB1_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#1 cl76QGB1_1#a_18_54# cl76QGB1_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#2 Y cl76QGB1_1#a_2_6# cl76QGB1_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#3 cl76QGB1_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#4 VCC cl76QGB1_0#Y cl76QGB1_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#5 cl76QGB1_1#a_12_41# cl76QGB1_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#6 GND A cl76QGB1_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#7 cl76QGB1_1#a_18_6# cl76QGB1_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#8 Y A cl76QGB1_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#9 cl76QGB1_1#a_35_6# cl76QGB1_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#10 GND cl76QGB1_0#Y cl76QGB1_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl76QGB1_1#11 cl76QGB1_1#a_12_41# cl76QGB1_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|4|XNOR2X1|OAI21X1=1|INPUT:Y-OAI21X1:A,B=2|INPUT:Y-OAI21X1:C=1|INPUT:Y-XNOR2X1:A,B=1|OAI21X1:Y-XNOR2X1:A,B=1|111110
* 990 occurrences in design
* each contains 2 cells
* pin map: {'n132': 'A', 'n309': 'B', 'n303': 'C', 'n264': 'D'} {'n312': 'Y'}
* function: (A&~C)|(B&C&~A)|(C&D&~A)|(A&~B&~D)
* Example occurence:
*   .subckt OAI21X1 A=n264 B=n309 C=n303 Y=n311
*   .subckt XNOR2X1 A=n132 B=n311 Y=n312
