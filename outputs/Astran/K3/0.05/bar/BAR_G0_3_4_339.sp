.SUBCKT BAR_G0_3_4_339 A C B Y VCC GND
MclMBB0ND_0#0 clMBB0ND_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_0#1 clMBB0ND_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_1#0 clMBB0ND_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_1#1 clMBB0ND_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_2#0 clMBB0ND_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_2#1 Y clMBB0ND_1#Y clMBB0ND_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_2#2 VCC clMBB0ND_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_2#3 GND A clMBB0ND_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_2#4 clMBB0ND_2#a_2_6# clMBB0ND_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclMBB0ND_2#5 Y clMBB0ND_0#Y clMBB0ND_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|OAI21X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|111110
* 128 occurrences in design
* each contains 3 cells
* pin map: {'n246': 'A', 'x129': 'B', 'x128': 'C'} {'n642': 'Y'}
* function: C|(B&~A)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n263
*   .subckt INVX1 A=x128 Y=n262
*   .subckt OAI21X1 A=n246 B=n263 C=n262 Y=n642
