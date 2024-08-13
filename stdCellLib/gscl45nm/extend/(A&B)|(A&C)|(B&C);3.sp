.SUBCKT MAJ3_G0_0_1_2 A B C Y VCC GND
MclFF49M7_0#0 clFF49M7_0#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_0#1 clFF49M7_0#Y B clFF49M7_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_0#2 clFF49M7_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_0#3 GND B clFF49M7_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_1#0 VCC A clFF49M7_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_1#1 clFF49M7_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_1#2 clFF49M7_1#Y C clFF49M7_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_1#3 clFF49M7_1#a_12_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_1#4 clFF49M7_1#Y B clFF49M7_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_1#5 GND C clFF49M7_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_2#0 clFF49M7_2#a_9_54# clFF49M7_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_2#1 Y clFF49M7_1#Y clFF49M7_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_2#2 Y clFF49M7_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclFF49M7_2#3 GND clFF49M7_1#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NOR2X1|AOI21X1=1|NOR2X1=1|AOI21X1:Y-NOR2X1:A,B=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-NOR2X1:A,B=2|NOR2X1:Y-NOR2X1:A,B=1|112201
* 1 occurrences in design
* each contains 3 cells
* pin map: {'x0': 'A', 'x128': 'B', 'x256': 'C'} {'n389': 'Y'}
* function: (A&B)|(A&C)|(B&C)
* Example occurence:
*   .subckt NOR2X1 A=x0 B=x128 Y=n387
*   .subckt AOI21X1 A=x0 B=x128 C=x256 Y=n388
*   .subckt NOR2X1 A=n387 B=n388 Y=n389
