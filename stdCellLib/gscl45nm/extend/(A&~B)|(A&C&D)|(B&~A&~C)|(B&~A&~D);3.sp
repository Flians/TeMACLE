.SUBCKT DIV_G4_397_398 A B C D Y VCC GND
MclLAL2PM_0#clS83P4W_0#0 clLAL2PM_0#clS83P4W_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_0#1 VCC D clLAL2PM_0#clS83P4W_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_0#2 clLAL2PM_0#clS83P4W_0#a_9_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_0#3 clLAL2PM_0#clS83P4W_0#Y D clLAL2PM_0#clS83P4W_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_1#0 clLAL2PM_0#Y clLAL2PM_0#clS83P4W_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_1#1 VCC B clLAL2PM_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_1#2 clLAL2PM_0#clS83P4W_1#a_9_6# clLAL2PM_0#clS83P4W_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_0#clS83P4W_1#3 clLAL2PM_0#Y B clLAL2PM_0#clS83P4W_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#0 VCC A clLAL2PM_1#a_2_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#1 clLAL2PM_1#a_18_54# clLAL2PM_1#a_12_41# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#2 Y clLAL2PM_1#a_2_6# clLAL2PM_1#a_18_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#3 clLAL2PM_1#a_35_54# A Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#4 VCC clLAL2PM_0#Y clLAL2PM_1#a_35_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#5 clLAL2PM_1#a_12_41# clLAL2PM_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#6 GND A clLAL2PM_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#7 clLAL2PM_1#a_18_6# clLAL2PM_1#a_12_41# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#8 Y A clLAL2PM_1#a_18_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#9 clLAL2PM_1#a_35_6# clLAL2PM_1#a_2_6# Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#10 GND clLAL2PM_0#Y clLAL2PM_1#a_35_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclLAL2PM_1#11 clLAL2PM_1#a_12_41# clLAL2PM_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|XNOR2X1|DIV_G1_163_169=1|DIV_G1_163_169:Y-XNOR2X1:A,B=1|INPUT:Y-DIV_G1_163_169:A=1|INPUT:Y-DIV_G1_163_169:B,C=2|INPUT:Y-XNOR2X1:A,B=1|111110
* 3386 occurrences in design
* each contains 2 cells
* pin map: {'n564': 'A', 'n578': 'B', 'n579': 'C', 'n593': 'D'} {'n613': 'Y'}
* function: (A&~B)|(A&C&D)|(B&~A&~C)|(B&~A&~D)
* Example occurence:
*   .subckt DIV_G1_163_169 A=n578 B=n579 C=n593 Y=n594
*   .subckt XNOR2X1 A=n564 B=n594 Y=n613
