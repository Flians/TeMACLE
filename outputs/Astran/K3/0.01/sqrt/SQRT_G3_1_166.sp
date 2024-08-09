.SUBCKT SQRT_G3_1_166 A B C Y VCC GND
Mcl1ESSIS_0#0 cl1ESSIS_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_0#1 cl1ESSIS_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_0#0 cl1ESSIS_1#cl5RQV3U_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_0#1 cl1ESSIS_1#cl5RQV3U_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_1#0 VCC cl1ESSIS_1#cl5RQV3U_0#Y cl1ESSIS_1#cl5RQV3U_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_1#1 cl1ESSIS_1#cl5RQV3U_1#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_1#2 Y cl1ESSIS_0#Y cl1ESSIS_1#cl5RQV3U_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_1#3 cl1ESSIS_1#cl5RQV3U_1#a_12_6# cl1ESSIS_1#cl5RQV3U_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_1#4 Y A cl1ESSIS_1#cl5RQV3U_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1ESSIS_1#cl5RQV3U_1#5 GND cl1ESSIS_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|SQRT_G2_1_62|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SQRT_G2_1_62:A=1|INPUT:Y-SQRT_G2_1_62:C=1|INVX1:Y-SQRT_G2_1_62:B=1|11110
* 607 occurrences in design
* each contains 2 cells
* pin map: {'n377': 'A', 'n371': 'B', 'n254': 'C'} {'n378': 'Y'}
* function: C&(B|~A)
* Example occurence:
*   .subckt INVX1 A=n254 Y=y63
*   .subckt SQRT_G2_1_62 A=n377 B=y63 C=n371 Y=n378
