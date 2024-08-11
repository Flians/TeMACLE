.SUBCKT ROUTER_G4_36_43_45 A B C D Y VCC GND
MclPX90FQ_0#0 clPX90FQ_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_0#1 clPX90FQ_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_1#0 clPX90FQ_1#Y clPX90FQ_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_1#1 VCC C clPX90FQ_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_1#2 clPX90FQ_1#a_9_6# clPX90FQ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_1#3 clPX90FQ_1#Y C clPX90FQ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_2#0 clPX90FQ_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_2#1 Y clPX90FQ_1#Y clPX90FQ_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_2#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_2#3 GND A clPX90FQ_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_2#4 clPX90FQ_2#a_2_6# clPX90FQ_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPX90FQ_2#5 Y B clPX90FQ_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|OAI21X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-OAI21X1:A,B=1|1111110
* 10 occurrences in design
* each contains 3 cells
* pin map: {'n72': 'A', 'n126': 'B', 'n103': 'C', 'x18': 'D'} {'n127': 'Y'}
* function: ~B|(C&~A&~D)
* Example occurence:
*   .subckt INVX1 A=x18 Y=n71
*   .subckt NAND2X1 A=n71 B=n103 Y=n104
*   .subckt OAI21X1 A=n72 B=n104 C=n126 Y=n127
