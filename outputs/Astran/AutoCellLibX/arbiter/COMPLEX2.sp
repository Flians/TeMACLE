.subckt COMPLEX2 cl1#B cl1#C cl2#B cl2#C cl3#A cl3#gnd cl1#gnd cl3#C cl3#B cl3#Y cl0#vdd cl1#A cl0#gnd cl2#A cl1#vdd cl1#Y cl2#vdd cl2#gnd cl0#Y cl3#vdd
Mcl0#0 cl0#vdd cl1#Y cl0#a_2_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_2_54# cl2#Y cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl3#Y cl0#a_2_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_12_6# cl1#Y cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#Y cl2#Y cl0#a_12_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#gnd cl3#Y cl0#Y cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#vdd cl1#A cl1#a_2_64# cl1#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#a_2_64# cl1#A cl1#vdd cl1#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#a_25_64# cl1#B cl1#a_2_64# cl1#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_2_64# cl1#B cl1#a_25_64# cl1#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#Y cl1#C cl1#a_25_64# cl1#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#a_25_64# cl1#C cl1#Y cl1#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#6 cl1#Y cl1#A cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#7 cl1#gnd cl1#B cl1#Y cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#8 cl1#Y cl1#C cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
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
Mcl3#0 cl3#Y cl3#A cl3#vdd cl3#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#vdd cl3#B cl3#Y cl3#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl3#C cl3#vdd cl3#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#a_9_6# cl3#A cl3#gnd cl3#gnd nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#a_14_6# cl3#B cl3#a_9_6# cl3#gnd nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#Y cl3#C cl3#a_14_6# cl3#gnd nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX2
* pattern code: [AOI21X1,NOR3X1,OAI21X1,NAND3X1]
* 61 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt AOI21X1 A=n693 B=n1679 C=n716 Y=n1680
*   .subckt NOR3X1 A=x10 B=x11 C=n692 Y=n693
*   .subckt OAI21X1 A=x8 B=n1048 C=n1678 Y=n1679
*   .subckt NAND3X1 A=n397 B=n398 C=n714 Y=n716