.subckt COMPLEX19 cl2#C cl1#A cl0#B cl0#Y cl2#B cl3#B cl3#C cl2#Y cl1#Y GND cl1#C cl3#Y VCC cl1#B
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 VCC cl0#B cl0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_9_6# cl1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#Y cl0#B cl0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#a_9_54# cl1#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#B cl1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 VCC cl1#C cl1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 GND cl1#A cl1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#a_2_6# cl1#B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#Y cl1#C cl1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 VCC cl0#Y cl2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#a_2_54# cl2#B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#Y cl2#C cl2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#a_12_6# cl0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#4 cl2#Y cl2#B cl2#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#5 GND cl2#C cl2#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#a_9_54# cl2#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#Y cl3#B cl3#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 VCC cl3#C cl3#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 GND cl2#Y cl3#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#a_2_6# cl3#B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#Y cl3#C cl3#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX19
* pattern code: [NAND2X1,OAI21X1]+AOI21X1_c0o0+OAI21X1_c2o0
* 50 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2X1 A=n438 B=x129 Y=n439
*   .subckt OAI21X1 A=x128 B=n166 C=n437 Y=n438
*   .subckt AOI21X1 A=n439 B=n442 C=n264 Y=n1274
*   .subckt OAI21X1 A=n1274 B=n1275 C=n265 Y=n1276