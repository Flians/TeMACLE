.subckt COMPLEX6 cl1#C cl1#A cl2#Y cl1#B cl2#A cl0#Y VCC cl1#Y cl2#B cl2#C GND
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 VCC cl2#Y cl0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_9_6# cl1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#Y cl2#Y cl0#a_9_6# GND nmos w=0.5u l=0.05u
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
Mcl2#0 cl2#Y cl2#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 VCC cl2#B cl2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#Y cl2#C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#a_9_6# cl2#A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#4 cl2#a_14_6# cl2#B cl2#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#5 cl2#Y cl2#C cl2#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX6
* pattern code: [NAND2X1,OAI21X1,NAND3X1]
* 119 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2X1 A=n383 B=n384 Y=n385
*   .subckt OAI21X1 A=n379 B=n382 C=n377 Y=n383
*   .subckt NAND3X1 A=x10 B=x12 C=n188 Y=n384
