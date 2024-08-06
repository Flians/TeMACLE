.subckt COMPLEX7 cl3#vdd cl3#C cl1#gnd cl2#vdd cl3#gnd cl0#gnd cl2#gnd cl3#A cl1#vdd cl3#B cl2#A cl1#A cl0#vdd cl1#Y
Mcl0#0 cl0#vdd cl1#Y cl0#a_2_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_2_64# cl1#Y cl0#vdd cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_25_64# cl2#Y cl0#a_2_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_2_64# cl2#Y cl0#a_25_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#Y cl3#Y cl0#a_25_64# cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#a_25_64# cl3#Y cl0#Y cl0#vdd pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#6 cl0#Y cl1#Y cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#7 cl0#gnd cl2#Y cl0#Y cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#8 cl0#Y cl3#Y cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A cl1#gnd cl1#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#A cl2#gnd cl2#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#vdd cl3#A cl3#a_2_54# cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#a_2_54# cl3#B cl3#vdd cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl3#C cl3#a_2_54# cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#a_12_6# cl3#A cl3#gnd cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#Y cl3#B cl3#a_12_6# cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#gnd cl3#C cl3#Y cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX7
* pattern code: [NOR3X1,INVX1,INVX1,AOI21X1]
* 38 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NOR3X1 A=n393 B=n1375 C=n1768 Y=y7
*   .subckt INVX1 A=x135 Y=n393
*   .subckt INVX1 A=n1374 Y=n1375
*   .subckt AOI21X1 A=n1724 B=n1767 C=n1380 Y=n1768
