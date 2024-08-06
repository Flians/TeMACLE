.subckt COMPLEX1 cl1#B cl1#gnd cl2#vdd cl0#gnd cl0#B cl2#gnd cl2#Y cl1#vdd cl2#A cl0#vdd
Mcl0#0 cl0#vdd cl1#Y cl0#a_2_6# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_18_54# cl0#a_12_41# cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl0#a_2_6# cl0#a_18_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_35_54# cl1#Y cl0#Y cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#vdd cl0#B cl0#a_35_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#a_12_41# cl0#B cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#6 cl0#gnd cl1#Y cl0#a_2_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#7 cl0#a_18_6# cl0#a_12_41# cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#8 cl0#Y cl1#Y cl0#a_18_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#9 cl0#a_35_6# cl0#a_2_6# cl0#Y cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#10 cl0#gnd cl0#B cl0#a_35_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#11 cl0#a_12_41# cl0#B cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#vdd cl2#Y cl1#a_2_6# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#a_18_54# cl1#a_12_41# cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#a_2_6# cl1#a_18_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_35_54# cl2#Y cl1#Y cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#vdd cl1#B cl1#a_35_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#a_12_41# cl1#B cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#6 cl1#gnd cl2#Y cl1#a_2_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#7 cl1#a_18_6# cl1#a_12_41# cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#8 cl1#Y cl2#Y cl1#a_18_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#9 cl1#a_35_6# cl1#a_2_6# cl1#Y cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#10 cl1#gnd cl1#B cl1#a_35_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#11 cl1#a_12_41# cl1#B cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#A cl2#gnd cl2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX1
* pattern code: [XNOR2X1,XNOR2X1]+INVX1_c1i0
* 31 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt XNOR2X1 A=n775 B=x2 Y=y3
*   .subckt XNOR2X1 A=n324 B=n392 Y=n775
*   .subckt INVX1 A=x130 Y=n324
