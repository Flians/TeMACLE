.SUBCKT DEC_G0_0_3_7 A B C Y VCC GND
MclG2EXGT_0#0 clG2EXGT_0#Y C clG2EXGT_0#vdd clG2EXGT_0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_0#1 clG2EXGT_0#Y C clG2EXGT_0#gnd clG2EXGT_0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_1#0 clG2EXGT_1#Y clG2EXGT_0#Y clG2EXGT_1#vdd clG2EXGT_1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_1#1 clG2EXGT_1#vdd B clG2EXGT_1#Y clG2EXGT_1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_1#2 clG2EXGT_1#a_9_6# clG2EXGT_0#Y clG2EXGT_1#gnd clG2EXGT_1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_1#3 clG2EXGT_1#Y B clG2EXGT_1#a_9_6# clG2EXGT_1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_2#0 clG2EXGT_2#a_9_54# clG2EXGT_1#Y clG2EXGT_2#vdd clG2EXGT_2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_2#1 Y A clG2EXGT_2#a_9_54# clG2EXGT_2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_2#2 Y clG2EXGT_1#Y clG2EXGT_2#gnd clG2EXGT_2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclG2EXGT_2#3 clG2EXGT_2#gnd A Y clG2EXGT_2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|NOR2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=1|INPUT:Y-NOR2X1:A,B=1|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NOR2X1:A,B=1|111110
* 159 occurrences in design
* each contains 3 cells
* pin map: {'n22': 'A', 'n18': 'B', 'x4': 'C'} {'y0': 'Y'}
* function: B&~A&~C
* Example occurence:
*   .subckt INVX1 A=x4 Y=n14
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
