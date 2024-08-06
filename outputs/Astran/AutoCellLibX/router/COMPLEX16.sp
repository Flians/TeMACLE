.subckt COMPLEX16 cl3#C cl2#C cl1#Y cl1#gnd cl1#vdd cl0#gnd cl2#A cl3#gnd cl2#Y cl2#vdd cl1#A cl0#vdd cl2#gnd cl3#Y cl3#A cl3#vdd cl2#B
Mcl0#0 cl0#vdd cl1#Y cl0#a_2_6# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_18_54# cl0#a_12_41# cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl0#a_2_6# cl0#a_18_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_35_54# cl1#Y cl0#Y cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#vdd cl2#Y cl0#a_35_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#a_12_41# cl2#Y cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#6 cl0#gnd cl1#Y cl0#a_2_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#7 cl0#a_18_6# cl0#a_12_41# cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#8 cl0#Y cl1#Y cl0#a_18_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#9 cl0#a_35_6# cl0#a_2_6# cl0#Y cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#10 cl0#gnd cl2#Y cl0#a_35_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#11 cl0#a_12_41# cl2#Y cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#a_9_54# cl2#A cl2#vdd cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#B cl2#a_9_54# cl2#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#vdd cl2#C cl2#Y cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#gnd cl2#A cl2#a_2_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#4 cl2#a_2_6# cl2#B cl2#gnd cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#5 cl2#Y cl2#C cl2#a_2_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#vdd cl3#A cl3#a_2_64# cl3#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#a_2_64# cl3#A cl3#vdd cl3#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#a_25_64# cl0#Y cl3#a_2_64# cl3#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#a_2_64# cl0#Y cl3#a_25_64# cl3#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#Y cl3#C cl3#a_25_64# cl3#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#a_25_64# cl3#C cl3#Y cl3#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#6 cl3#Y cl3#A cl3#gnd cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#7 cl3#gnd cl0#Y cl3#Y cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#8 cl3#Y cl3#C cl3#gnd cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX16
* pattern code: [XNOR2X1,INVX1,OAI21X1]+NOR3X1_c0o0
* 4 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt XNOR2X1 A=n85 B=n127 Y=n129
*   .subckt INVX1 A=x28 Y=n85
*   .subckt OAI21X1 A=x26 B=n125 C=x27 Y=n127
*   .subckt NOR3X1 A=n86 B=n129 C=x9 Y=n130
