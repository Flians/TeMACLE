.SUBCKT MAX_G2_1_1270 C A B Y VCC GND
Mcl23FB3A_0#0 cl23FB3A_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_0#1 cl23FB3A_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_1#0 cl23FB3A_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_1#1 VCC A cl23FB3A_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_1#2 cl23FB3A_1#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_1#3 cl23FB3A_1#Y A cl23FB3A_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_2#0 cl23FB3A_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_2#1 Y cl23FB3A_0#Y cl23FB3A_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_2#2 VCC cl23FB3A_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_2#3 GND A cl23FB3A_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_2#4 cl23FB3A_2#a_2_6# cl23FB3A_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl23FB3A_2#5 Y cl23FB3A_1#Y cl23FB3A_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|MAX_G1_1231_1232|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MAX_G1_1231_1232:B=1|INPUT:Y-MAX_G1_1231_1232:C=1|INVX1:Y-MAX_G1_1231_1232:A=1|11110
* 204 occurrences in design
* each contains 3 cells
* pin map: {'n1360': 'A', 'x120': 'B', 'x248': 'C'} {'n2549': 'Y'}
* function: (A&B)|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x248 Y=n676
*   .subckt MAX_G1_1231_1232 A=n676 B=n1360 C=x120 Y=n2549
