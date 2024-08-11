.SUBCKT BAR_G0_3_4_339_341 A B C D Y VCC GND
MclPOY0GM_0#0 clPOY0GM_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_0#1 clPOY0GM_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_1#0 clPOY0GM_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_1#1 clPOY0GM_1#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_2#0 clPOY0GM_2#a_9_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_2#1 clPOY0GM_2#Y clPOY0GM_0#Y clPOY0GM_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_2#2 VCC clPOY0GM_1#Y clPOY0GM_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_2#3 GND B clPOY0GM_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_2#4 clPOY0GM_2#a_2_6# clPOY0GM_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_2#5 clPOY0GM_2#Y clPOY0GM_1#Y clPOY0GM_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_3#0 Y clPOY0GM_2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_3#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_3#2 clPOY0GM_3#a_9_6# clPOY0GM_2#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPOY0GM_3#3 Y A clPOY0GM_3#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|4|NAND2X1|INVX1=2|OAI21X1=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|OAI21X1:Y-NAND2X1:A,B=1|11111101
* 124 occurrences in design
* each contains 4 cells
* pin map: {'n643': 'A', 'n246': 'B', 'x129': 'C', 'x128': 'D'} {'n644': 'Y'}
* function: ~A|(B&~D)|(~C&~D)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n263
*   .subckt INVX1 A=x128 Y=n262
*   .subckt OAI21X1 A=n246 B=n263 C=n262 Y=n642
*   .subckt NAND2X1 A=n642 B=n643 Y=n644
