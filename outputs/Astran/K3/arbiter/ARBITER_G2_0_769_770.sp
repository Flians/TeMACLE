.SUBCKT ARBITER_G2_0_769_770 A B C Y VCC GND
MclPC12DR_0#0 clPC12DR_0#Y C VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_0#1 clPC12DR_0#Y C GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_1#0 clPC12DR_1#Y clPC12DR_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_1#1 VCC A clPC12DR_1#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_1#2 clPC12DR_1#Y B VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_1#3 clPC12DR_1#a_9_6# clPC12DR_0#Y GND GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_1#4 clPC12DR_1#a_14_6# A clPC12DR_1#a_9_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_1#5 clPC12DR_1#Y B clPC12DR_1#a_14_6# GND NMOS W=0.75u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_2#0 Y clPC12DR_1#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclPC12DR_2#1 Y clPC12DR_1#Y GND GND NMOS W=0.25u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 255 occurrences in design
* each contains 3 cells
* pin map: {'n1193': 'A', 'n513': 'B', 'x128': 'C'} {'n1196': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NAND3X1 A=n386 B=n513 C=n1193 Y=n1195
*   .subckt INVX1 A=n1195 Y=n1196
