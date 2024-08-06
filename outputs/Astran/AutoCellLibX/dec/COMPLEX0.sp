.subckt COMPLEX0 cl1#B cl1#gnd cl2#vdd cl0#gnd cl2#gnd cl2#Y cl1#vdd cl2#B cl2#A cl1#A cl0#vdd cl1#Y
Mcl0#0 cl0#a_9_54# cl1#Y cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl2#Y cl0#a_9_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl1#Y cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#gnd cl2#Y cl0#Y cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#vdd cl1#B cl1#Y cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#a_9_6# cl1#A cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#Y cl1#B cl1#a_9_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#vdd cl2#B cl2#Y cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#a_9_6# cl2#A cl2#gnd cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#Y cl2#B cl2#a_9_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX0
* pattern code: [NOR2X1,NAND2X1,NAND2X1]
* 10 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NAND2X1 A=n10 B=n21 Y=n22
