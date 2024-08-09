.SUBCKT ARBITER_G1_0_769 A B C Y VCC GND
Mcl4YFCOC_0#0 cl4YFCOC_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_0#1 cl4YFCOC_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_1#0 Y cl4YFCOC_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_1#1 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_1#2 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_1#3 cl4YFCOC_1#a_9_6# cl4YFCOC_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_1#4 cl4YFCOC_1#a_14_6# B cl4YFCOC_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4YFCOC_1#5 Y A cl4YFCOC_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND3X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND3X1:A,B,C=2|INVX1:Y-NAND3X1:A,B,C=1|11110
* 398 occurrences in design
* each contains 2 cells
* pin map: {'n1193': 'A', 'n513': 'B', 'x128': 'C'} {'n1195': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVX1 A=x128 Y=n386
*   .subckt NAND3X1 A=n386 B=n513 C=n1193 Y=n1195
