.SUBCKT ARBITER_G3_2_768_769 A B C Y VCC GND
MclF54I52_0#0 clF54I52_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_0#1 clF54I52_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_1#0 clF54I52_1#Y clF54I52_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_1#1 VCC A clF54I52_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_1#2 clF54I52_1#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_1#3 clF54I52_1#a_9_6# clF54I52_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_1#4 clF54I52_1#a_14_6# A clF54I52_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_1#5 clF54I52_1#Y B clF54I52_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_2#0 Y clF54I52_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclF54I52_2#1 Y clF54I52_1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|INVX1|INVX1=1|NAND3X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|NAND3X1:Y-INVX1:A=1|111011
* 255 occurrences in design
* each contains 3 cells
* pin map: {'n513': 'A', 'n1109': 'B', 'x128': 'C'} {'n1111': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NAND3X1 A=n386 B=n513 C=n1109 Y=n1110
*   .subckt INVX1 A=n1110 Y=n1111
