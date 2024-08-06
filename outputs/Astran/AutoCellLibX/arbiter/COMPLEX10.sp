.subckt COMPLEX10 cl1#B cl0#A cl1#gnd cl2#vdd cl0#Y cl0#gnd cl2#gnd cl2#Y cl1#vdd cl2#B cl2#A cl1#A cl0#vdd cl1#Y
Mcl0#0 cl0#a_9_54# cl0#A cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y cl0#a_9_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#vdd cl2#Y cl0#Y cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#gnd cl0#A cl0#a_2_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#a_2_6# cl1#Y cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#Y cl2#Y cl0#a_2_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#a_9_54# cl1#A cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#B cl1#a_9_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#A cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#gnd cl1#B cl1#Y cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#a_9_54# cl2#A cl2#vdd cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#B cl2#a_9_54# cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#Y cl2#A cl2#gnd cl2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#gnd cl2#B cl2#Y cl2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX10
* pattern code: [OAI21X1,NOR2X1,NOR2X1]
* 52 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt OAI21X1 A=x2 B=n706 C=n707 Y=n708
*   .subckt NOR2X1 A=n259 B=x129 Y=n706
*   .subckt NOR2X1 A=x130 B=x131 Y=n707
