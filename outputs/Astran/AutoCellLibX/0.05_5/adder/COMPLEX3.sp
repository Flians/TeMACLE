.subckt COMPLEX3 cl1#A cl2#Y cl2#A cl3#C cl1#Y cl0#Y VCC cl2#B cl3#B cl3#A GND cl3#Y
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 VCC cl2#Y cl0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl3#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_9_6# cl1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#a_14_6# cl2#Y cl0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#Y cl3#Y cl0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 VCC cl2#B cl2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#a_9_6# cl2#A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#Y cl2#B cl2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#a_9_54# cl3#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#Y cl3#B cl3#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 VCC cl3#C cl3#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 GND cl3#A cl3#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#a_2_6# cl3#B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#Y cl3#C cl3#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX3
* pattern code: [NAND3X1,INVX1,NAND2X1,OAI21X1]
* 31 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND3X1 A=n261 B=n399 C=n400 Y=n403
*   .subckt INVX1 A=x5 Y=n261
*   .subckt NAND2X1 A=n398 B=x4 Y=n399
*   .subckt OAI21X1 A=n398 B=x4 C=x132 Y=n400
