.subckt COMPLEX2 VCC cl1#B cl0#B cl1#A cl1#Y GND cl0#Y
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 VCC cl0#B cl0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_9_6# cl1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#Y cl0#B cl0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 VCC cl1#B cl1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#a_9_6# cl1#A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#Y cl1#B cl1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX2
* pattern code: [NAND2X1,NAND2X1]
* 809 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NAND2X1 A=n1896 B=x216 Y=n1897
*   .subckt NAND2X1 A=n1446 B=x265 Y=n1896