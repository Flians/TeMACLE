.SUBCKT BAR_G3_35_36_209 A C B Y VCC GND
MclWJEA9W_0#0 clWJEA9W_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_0#1 clWJEA9W_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_1#0 clWJEA9W_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_1#1 clWJEA9W_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_2#0 clWJEA9W_2#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_2#1 Y clWJEA9W_1#Y clWJEA9W_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_2#2 VCC clWJEA9W_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_2#3 GND A clWJEA9W_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_2#4 clWJEA9W_2#a_2_6# clWJEA9W_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWJEA9W_2#5 Y clWJEA9W_0#Y clWJEA9W_2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|OAI21X1|INVX1=2|INPUT:Y-INVX1:A=2|INPUT:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:A,B=1|INVX1:Y-OAI21X1:C=1|111110
* 29 occurrences in design
* each contains 3 cells
* pin map: {'n138': 'A', 'x129': 'B', 'x128': 'C'} {'n463': 'Y'}
* function: C|(B&~A)
* Example occurence:
*   .subckt INVX1 A=x129 Y=n149
*   .subckt INVX1 A=x128 Y=n148
*   .subckt OAI21X1 A=n138 B=n149 C=n148 Y=n463
