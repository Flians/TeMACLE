.SUBCKT MAX_G2_1_1270 C A B Y VCC GND
MclX8ZQ3U_0#0 clX8ZQ3U_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_0#1 clX8ZQ3U_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_1#0 clX8ZQ3U_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_1#1 VCC A clX8ZQ3U_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_1#2 clX8ZQ3U_1#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_1#3 clX8ZQ3U_1#Y A clX8ZQ3U_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_2#0 clX8ZQ3U_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_2#1 Y clX8ZQ3U_0#Y clX8ZQ3U_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_2#2 VCC clX8ZQ3U_1#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_2#3 GND A clX8ZQ3U_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_2#4 clX8ZQ3U_2#a_2_6# clX8ZQ3U_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX8ZQ3U_2#5 Y clX8ZQ3U_1#Y clX8ZQ3U_2#a_2_6# GND nmos w=0.5u l=0.05u
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
