.SUBCKT HYP_G3_32_33 A B C Y VCC GND
MclQGB0QU_0#0 clQGB0QU_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_0#1 clQGB0QU_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_1#2 Y clQGB0QU_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_1#3 clQGB0QU_1#a_9_6# A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_1#4 clQGB0QU_1#a_14_6# B clQGB0QU_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQGB0QU_1#5 Y clQGB0QU_0#Y clQGB0QU_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 7460 occurrences in design
* each contains 2 cells
* pin map: {'x128': 'A', 'x130': 'B', 'n742': 'C'} {'n25872': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=n742 Y=n743
*   .subckt NAND3X1 A=x128 B=x130 C=n743 Y=n25872
