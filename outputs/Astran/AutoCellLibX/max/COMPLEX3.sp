.subckt COMPLEX3 cl1#B cl1#C cl2#Y cl0#vdd cl3#Y cl3#A cl0#gnd cl2#A cl3#gnd cl1#vdd cl1#Y cl1#gnd cl2#vdd cl2#gnd cl0#Y cl3#vdd cl3#B
Mcl0#0 cl0#Y cl1#Y cl0#vdd cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#a_9_54# cl2#Y cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#B cl1#a_9_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#vdd cl1#C cl1#Y cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#gnd cl2#Y cl1#a_2_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#a_2_6# cl1#B cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#Y cl1#C cl1#a_2_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#A cl2#gnd cl2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#vdd cl3#A cl3#a_2_54# cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#a_2_54# cl3#B cl3#vdd cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl2#Y cl3#a_2_54# cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#a_12_6# cl3#A cl3#gnd cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#Y cl3#B cl3#a_12_6# cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#gnd cl2#Y cl3#Y cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX3
* pattern code: [INVX1,OAI21X1]+INVX1_c1i0+AOI21X1_c2o0
* 3 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt INVX1 A=n1882 Y=n1883
*   .subckt OAI21X1 A=n600 B=n1250 C=n1881 Y=n1882
*   .subckt INVX1 A=x185 Y=n600
*   .subckt AOI21X1 A=x56 B=n599 C=n600 Y=n888