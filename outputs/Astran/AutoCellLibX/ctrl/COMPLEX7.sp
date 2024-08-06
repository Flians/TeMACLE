.subckt COMPLEX7 cl1#B cl0#A cl1#gnd cl2#vdd cl0#gnd cl2#gnd cl1#vdd cl2#B cl1#C cl2#A cl1#A cl0#vdd cl2#C
Mcl0#0 cl0#vdd cl0#A cl0#a_2_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_2_64# cl0#A cl0#vdd cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_25_64# cl1#Y cl0#a_2_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_2_64# cl1#Y cl0#a_25_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#Y cl2#Y cl0#a_25_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#a_25_64# cl2#Y cl0#Y cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#6 cl0#Y cl0#A cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#7 cl0#gnd cl1#Y cl0#Y cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#8 cl0#Y cl2#Y cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#vdd cl1#A cl1#a_2_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#a_2_54# cl1#B cl1#vdd cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#C cl1#a_2_54# cl1#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_12_6# cl1#A cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#Y cl1#B cl1#a_12_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#gnd cl1#C cl1#Y cl1#gnd nmos w=0.25u l=0.05u
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
.ends COMPLEX7
* pattern code: [NOR3X1,AOI21X1,AOI21X1]
* 2 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NOR3X1 A=x2 B=n32 C=n34 Y=y2
*   .subckt AOI21X1 A=n9 B=x4 C=n31 Y=n32
*   .subckt AOI21X1 A=n30 B=n33 C=n13 Y=n34
