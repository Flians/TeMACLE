.subckt COMPLEX2 cl1#B cl0#vdd cl1#A cl0#gnd cl1#gnd cl0#B cl1#vdd
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
Mcl1#0 cl1#vdd cl1#A cl1#a_2_6# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#a_18_54# cl1#a_12_41# cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#a_2_6# cl1#a_18_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_35_54# cl1#A cl1#Y cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#vdd cl1#B cl1#a_35_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#a_12_41# cl1#B cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#6 cl1#gnd cl1#A cl1#a_2_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#7 cl1#a_18_6# cl1#a_12_41# cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#8 cl1#Y cl1#A cl1#a_18_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#9 cl1#a_35_6# cl1#a_2_6# cl1#Y cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#10 cl1#gnd cl1#B cl1#a_35_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#11 cl1#a_12_41# cl1#B cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX2
* pattern code: [XNOR2X1,XNOR2X1]
* 93 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt XNOR2X1 A=n777 B=x3 Y=y4
*   .subckt XNOR2X1 A=n395 B=x131 Y=n777