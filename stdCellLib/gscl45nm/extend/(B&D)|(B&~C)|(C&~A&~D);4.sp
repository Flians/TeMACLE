.SUBCKT PRIORITY_G2_2_3_314 A B C D Y VCC GND
MclDIID7D_0#0 clDIID7D_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_0#1 clDIID7D_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_1#0 clDIID7D_1#Y clDIID7D_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_1#1 VCC C clDIID7D_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_1#2 clDIID7D_1#a_9_6# clDIID7D_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_1#3 clDIID7D_1#Y C clDIID7D_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_0#0 clDIID7D_2#clEJ1U9B_0#Y clDIID7D_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_0#1 VCC B clDIID7D_2#clEJ1U9B_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_0#2 clDIID7D_2#clEJ1U9B_0#a_9_6# clDIID7D_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_0#3 clDIID7D_2#clEJ1U9B_0#Y B clDIID7D_2#clEJ1U9B_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_1#0 clDIID7D_2#clEJ1U9B_1#a_9_54# clDIID7D_1#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_1#1 Y A clDIID7D_2#clEJ1U9B_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_1#2 VCC clDIID7D_2#clEJ1U9B_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_1#3 GND clDIID7D_1#Y clDIID7D_2#clEJ1U9B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_1#4 clDIID7D_2#clEJ1U9B_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclDIID7D_2#clEJ1U9B_1#5 Y clDIID7D_2#clEJ1U9B_0#Y clDIID7D_2#clEJ1U9B_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|PRIORITY_G1_625_626|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-PRIORITY_G1_625_626:A=1|INPUT:Y-PRIORITY_G1_625_626:C=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-PRIORITY_G1_625_626:B=1|1111110
* 74 occurrences in design
* each contains 3 cells
* pin map: {'n443': 'A', 'n449': 'B', 'x4': 'C', 'x5': 'D'} {'n450': 'Y'}
* function: (B&D)|(B&~C)|(C&~A&~D)
* Example occurence:
*   .subckt INVX1 A=x5 Y=n133
*   .subckt NAND2X1 A=n133 B=x4 Y=n447
*   .subckt PRIORITY_G1_625_626 A=n443 B=n447 C=n449 Y=n450
