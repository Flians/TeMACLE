.subckt COMPLEX2 cl1#B cl0#vdd cl1#A cl0#gnd cl1#vdd cl1#Y cl0#B cl1#gnd cl0#Y
Mcl0#0 cl0#Y cl1#Y cl0#vdd cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#vdd cl0#B cl0#Y cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_9_6# cl1#Y cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#Y cl0#B cl0#a_9_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#vdd cl1#B cl1#Y cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#a_9_6# cl1#A cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#Y cl1#B cl1#a_9_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX2
* pattern code: [NAND2X1,NAND2X1]
* 626 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NAND2X1 A=n1886 B=x215 Y=n1888
*   .subckt NAND2X1 A=n1446 B=n1864 Y=n1886