.subckt COMPLEX15 cl1#C cl1#A cl2#Y cl2#A cl3#C cl0#Y VCC cl3#A GND cl3#Y
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl1#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#a_9_54# cl1#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl2#Y cl1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 VCC cl1#C cl1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 GND cl1#A cl1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#a_2_6# cl2#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#Y cl1#C cl1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 VCC cl3#A cl3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#a_2_54# cl2#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl3#C cl3#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#a_12_6# cl3#A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#Y cl2#Y cl3#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 GND cl3#C cl3#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX15
* pattern code: [INVX1,OAI21X1]+INVX1_c1i0+AOI21X1_c2o0
* 54 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt INVX1 A=n1478 Y=n1479
*   .subckt OAI21X1 A=x312 B=n767 C=n1477 Y=n1478
*   .subckt INVX1 A=x440 Y=n767
*   .subckt AOI21X1 A=x312 B=n767 C=n768 Y=n1307
