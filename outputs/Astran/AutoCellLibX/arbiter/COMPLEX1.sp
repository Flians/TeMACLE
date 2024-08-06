.subckt COMPLEX1 cl3#vdd cl4#gnd cl0#Y cl4#B cl0#gnd cl2#gnd cl2#B cl3#Y cl2#A cl4#Y cl0#vdd cl1#Y cl2#C cl1#gnd cl2#vdd cl3#gnd cl4#vdd cl3#A cl1#vdd cl1#A
Mcl0#0 cl0#a_9_54# cl1#Y cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl2#Y cl0#a_9_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#vdd cl3#Y cl0#Y cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#gnd cl1#Y cl0#a_2_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#a_2_6# cl2#Y cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#Y cl3#Y cl0#a_2_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#vdd cl2#A cl2#a_2_54# cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#a_2_54# cl2#B cl2#vdd cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#Y cl2#C cl2#a_2_54# cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#a_12_6# cl2#A cl2#gnd cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#4 cl2#Y cl2#B cl2#a_12_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#5 cl2#gnd cl2#C cl2#Y cl2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#Y cl3#A cl3#vdd cl3#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#Y cl3#A cl3#gnd cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#0 cl4#a_9_54# cl1#Y cl4#vdd cl4#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#1 cl4#Y cl4#B cl4#a_9_54# cl4#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#2 cl4#vdd cl3#Y cl4#Y cl4#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#3 cl4#gnd cl1#Y cl4#a_2_6# cl4#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#4 cl4#a_2_6# cl4#B cl4#gnd cl4#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#5 cl4#Y cl3#Y cl4#a_2_6# cl4#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX1
* pattern code: [OAI21X1,INVX1,AOI21X1,INVX1]+OAI21X1_c1o0c3o0
* 128 occurrences in design 
* each contains 5 cells
* Example occurence:
*   .subckt OAI21X1 A=n712 B=n709 C=n698 Y=n713
*   .subckt INVX1 A=n711 Y=n712
*   .subckt AOI21X1 A=n704 B=n708 C=n701 Y=n709
*   .subckt INVX1 A=n697 Y=n698
*   .subckt OAI21X1 A=n712 B=n2081 C=n698 Y=n2082
