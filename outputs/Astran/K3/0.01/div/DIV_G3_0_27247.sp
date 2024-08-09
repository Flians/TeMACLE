.SUBCKT DIV_G3_0_27247 A B C Y VCC GND
MclW447VE_0#0 clW447VE_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_0#1 clW447VE_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_1#0 Y clW447VE_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_1#2 Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_1#3 clW447VE_1#a_9_6# clW447VE_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_1#4 clW447VE_1#a_14_6# A clW447VE_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclW447VE_1#5 Y B clW447VE_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 1367 occurrences in design
* each contains 2 cells
* pin map: {'n237': 'A', 'n27788': 'B', 'x123': 'C'} {'n27789': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x123 Y=n236
*   .subckt NAND3X1 A=n236 B=n237 C=n27788 Y=n27789
