.subckt COMPLEX31 cl4#A cl3#vdd cl4#gnd cl0#Y cl4#B cl0#gnd cl2#gnd cl2#B cl3#Y cl4#Y cl0#vdd cl1#Y cl1#B cl4#C cl3#C cl1#gnd cl2#vdd cl3#gnd cl4#vdd cl3#A cl1#vdd cl1#C cl1#A
Mcl0#0 cl0#Y cl1#Y cl0#vdd cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#vdd cl2#Y cl0#Y cl0#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#a_9_6# cl1#Y cl0#gnd cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#Y cl2#Y cl0#a_9_6# cl0#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#vdd cl1#B cl1#Y cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#Y cl1#C cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#a_9_6# cl1#A cl1#gnd cl1#gnd nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#4 cl1#a_14_6# cl1#B cl1#a_9_6# cl1#gnd nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#5 cl1#Y cl1#C cl1#a_14_6# cl1#gnd nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl4#Y cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#vdd cl2#B cl2#Y cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#a_9_6# cl4#Y cl2#gnd cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#Y cl2#B cl2#a_9_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#a_9_54# cl3#A cl3#vdd cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#Y cl0#Y cl3#a_9_54# cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#vdd cl3#C cl3#Y cl3#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#gnd cl3#A cl3#a_2_6# cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#a_2_6# cl0#Y cl3#gnd cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#Y cl3#C cl3#a_2_6# cl3#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#0 cl4#a_9_54# cl4#A cl4#vdd cl4#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#1 cl4#Y cl4#B cl4#a_9_54# cl4#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#2 cl4#vdd cl4#C cl4#Y cl4#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#3 cl4#gnd cl4#A cl4#a_2_6# cl4#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#4 cl4#a_2_6# cl4#B cl4#gnd cl4#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#5 cl4#Y cl4#C cl4#a_2_6# cl4#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX31
* pattern code: [NAND2X1,NAND3X1,NAND2X1]+OAI21X1_c0o0+OAI21X1_c2i0
* 142 occurrences in design 
* each contains 5 cells
* Example occurence:
*   .subckt NAND2X1 A=n272 B=n309 Y=n310
*   .subckt NAND3X1 A=n269 B=x9 C=x0 Y=n272
*   .subckt NAND2X1 A=n271 B=n267 Y=n309
*   .subckt OAI21X1 A=n325 B=n310 C=n324 Y=n326
*   .subckt OAI21X1 A=n66 B=n75 C=n270 Y=n271
