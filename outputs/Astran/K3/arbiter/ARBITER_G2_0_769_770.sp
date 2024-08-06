.SUBCKT ARBITER_G2_0_769_770 A B C Y VCC GND
Mcl434M42_0#0 cl434M42_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_0#1 cl434M42_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_1#0 cl434M42_1#Y cl434M42_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_1#1 VCC B cl434M42_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_1#2 cl434M42_1#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_1#3 cl434M42_1#a_9_6# cl434M42_0#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_1#4 cl434M42_1#a_14_6# B cl434M42_1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_1#5 cl434M42_1#Y A cl434M42_1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_2#0 Y cl434M42_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl434M42_2#1 Y cl434M42_1#Y GND GND nmos w=0.25u l=0.05u
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
