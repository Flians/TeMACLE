.SUBCKT BAR_G0_0_124_166 A B C D Y VCC GND
MclU4Y0DT_0#0 clU4Y0DT_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_0#1 clU4Y0DT_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_1#0 clU4Y0DT_1#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_1#1 VCC C clU4Y0DT_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_1#2 clU4Y0DT_1#a_9_6# D GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_1#3 clU4Y0DT_1#Y C clU4Y0DT_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_2#0 VCC clU4Y0DT_1#Y clU4Y0DT_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_2#1 clU4Y0DT_2#a_2_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_2#2 Y clU4Y0DT_0#Y clU4Y0DT_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_2#3 clU4Y0DT_2#a_12_6# clU4Y0DT_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_2#4 Y A clU4Y0DT_2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclU4Y0DT_2#5 GND clU4Y0DT_0#Y Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|AOI21X1|INVX1=1|NAND2X1=1|INPUT:Y-AOI21X1:A,B=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-AOI21X1:C=1|NAND2X1:Y-AOI21X1:A,B=1|0111111
* 142 occurrences in design
* each contains 3 cells
* pin map: {'n469': 'A', 'x133': 'B', 'x132': 'C', 'n435': 'D'} {'n470': 'Y'}
* function: B&(C|~A)&(D|~A)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt NAND2X1 A=n435 B=x132 Y=n436
*   .subckt AOI21X1 A=n436 B=n469 C=n267 Y=n470
