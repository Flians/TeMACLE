.SUBCKT CTRL_G3_1_2_25_53_54 A B C Y VCC GND
MclPICNXJ_0#0 clPICNXJ_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_0#1 clPICNXJ_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_1#0 clPICNXJ_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_1#1 clPICNXJ_1#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_2#0 clPICNXJ_2#Y clPICNXJ_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_2#1 VCC B clPICNXJ_2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_2#2 clPICNXJ_2#a_9_6# clPICNXJ_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_2#3 clPICNXJ_2#Y B clPICNXJ_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_3#0 clPICNXJ_3#Y clPICNXJ_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_3#1 VCC C clPICNXJ_3#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_3#2 clPICNXJ_3#a_9_6# clPICNXJ_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_3#3 clPICNXJ_3#Y C clPICNXJ_3#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_4#0 VCC clPICNXJ_2#Y clPICNXJ_4#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_4#1 clPICNXJ_4#a_2_54# clPICNXJ_3#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_4#2 Y A clPICNXJ_4#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_4#3 clPICNXJ_4#a_12_6# clPICNXJ_2#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_4#4 Y clPICNXJ_3#Y clPICNXJ_4#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPICNXJ_4#5 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 5|3|AOI21X1|INVX1=2|NAND2X1=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=2|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=2|NAND2X1:Y-AOI21X1:A,B=2|01221111
* 2 occurrences in design
* each contains 5 cells
* pin map: {'n11': 'A', 'x4': 'B', 'x3': 'C'} {'n64': 'Y'}
* function: ~A&(B|C)&(~B|~C)
* Example occurence:
*   .subckt INVX1 A=x3 Y=n12
*   .subckt INVX1 A=x4 Y=n13
*   .subckt NAND2X1 A=n12 B=x4 Y=n36
*   .subckt NAND2X1 A=n13 B=x3 Y=n63
*   .subckt AOI21X1 A=n36 B=n63 C=n11 Y=n64
