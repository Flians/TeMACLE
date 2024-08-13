.subckt COMPLEX8 GND cl1#C cl1#B cl2#Y cl1#A cl2#A cl0#Y VCC cl2#B cl2#C cl3#B cl3#A cl1#Y cl3#Y
Mcl0#0 VCC cl1#Y cl0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#a_2_54# cl2#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl3#Y cl0#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_12_6# cl1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#Y cl2#Y cl0#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 GND cl3#Y cl0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 VCC cl1#B cl1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_9_6# cl1#A GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#a_14_6# cl1#B cl1#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#Y cl1#C cl1#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#a_9_54# cl2#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#B cl2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 VCC cl2#C cl2#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 GND cl2#A cl2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#4 cl2#a_2_6# cl2#B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#5 cl2#Y cl2#C cl2#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#a_9_54# cl3#A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#Y cl3#B cl3#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl3#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 GND cl3#B cl3#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX8
* pattern code: [AOI21X1,NAND3X1,OAI21X1,NOR2X1]
* 21 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt AOI21X1 A=n284 B=n285 C=n280 Y=n286
*   .subckt NAND3X1 A=n240 B=n274 C=x117 Y=n284
*   .subckt OAI21X1 A=n256 B=n263 C=n283 Y=n285
*   .subckt NOR2X1 A=n237 B=x116 Y=n280
