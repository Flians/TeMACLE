.subckt COMPLEX1 cl2#B cl0#vdd cl2#Y cl1#A cl0#gnd cl1#vdd cl1#Y cl0#B cl1#gnd cl2#vdd cl2#gnd cl0#Y
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
Mcl1#1 cl1#Y cl1#A cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl1#Y cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#vdd cl2#B cl2#Y cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#a_9_6# cl1#Y cl2#gnd cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#Y cl2#B cl2#a_9_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX1
* pattern code: [NAND2X1,INVX1]+NAND2X1_c1o0
* 433 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2X1 A=n1381 B=x833 Y=n1890
*   .subckt INVX1 A=x216 Y=n1381
*   .subckt NAND2X1 A=n1381 B=n1906 Y=n1907