.SUBCKT BAR_G0_0_1758_1759 A B C D Y VCC GND
MclK053J1_0#0 clK053J1_0#Y D VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_0#1 clK053J1_0#Y D GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_1#0 clK053J1_1#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_1#1 clK053J1_1#Y B clK053J1_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_1#2 VCC clK053J1_0#Y clK053J1_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_1#3 GND C clK053J1_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_1#4 clK053J1_1#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_1#5 clK053J1_1#Y clK053J1_0#Y clK053J1_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_2#0 Y clK053J1_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_2#2 clK053J1_2#a_9_6# clK053J1_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclK053J1_2#3 Y A clK053J1_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|4|NAND2X1|INVX1=1|OAI21X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-OAI21X1:A,B=2|INVX1:Y-OAI21X1:C=1|OAI21X1:Y-NAND2X1:A,B=1|1111101
* 71 occurrences in design
* each contains 3 cells
* pin map: {'x132': 'A', 'n1538': 'B', 'n1537': 'C', 'x133': 'D'} {'n1906': 'Y'}
* function: ~A|(B&~D)|(C&~D)
* Example occurence:
*   .subckt INVX1 A=x133 Y=n267
*   .subckt OAI21X1 A=n1537 B=n1538 C=n267 Y=n1905
*   .subckt NAND2X1 A=n1905 B=x132 Y=n1906
