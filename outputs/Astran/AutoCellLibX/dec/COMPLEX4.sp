.subckt COMPLEX4 cl3#vdd cl4#gnd cl4#B cl0#gnd cl2#gnd cl2#B cl3#B cl2#A cl0#vdd cl1#Y cl1#B cl1#gnd cl2#vdd cl3#gnd cl2#Y cl4#vdd cl1#vdd cl1#A
Mcl0#0 cl0#a_9_54# cl1#Y cl0#vdd cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 cl0#Y cl2#Y cl0#a_9_54# cl0#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl1#Y cl0#gnd cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#gnd cl2#Y cl0#Y cl0#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A cl1#vdd cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#vdd cl1#B cl1#Y cl1#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#2 cl1#a_9_6# cl1#A cl1#gnd cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#3 cl1#Y cl1#B cl1#a_9_6# cl1#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A cl2#vdd cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#vdd cl2#B cl2#Y cl2#vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#2 cl2#a_9_6# cl2#A cl2#gnd cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#3 cl2#Y cl2#B cl2#a_9_6# cl2#gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#a_9_54# cl1#Y cl3#vdd cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 cl3#Y cl3#B cl3#a_9_54# cl3#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl1#Y cl3#gnd cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#gnd cl3#B cl3#Y cl3#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#0 cl4#a_9_54# cl2#Y cl4#vdd cl4#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#1 cl4#Y cl4#B cl4#a_9_54# cl4#vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#2 cl4#Y cl2#Y cl4#gnd cl4#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#3 cl4#gnd cl4#B cl4#Y cl4#gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX4
* pattern code: [NOR2X1,NAND2X1,NAND2X1]+NOR2X1_c1o0+NOR2X1_c2o0
* 9 occurrences in design 
* each contains 5 cells
* Example occurence:
*   .subckt NOR2X1 A=n19 B=n22 Y=y0
*   .subckt NAND2X1 A=n14 B=n18 Y=n19
*   .subckt NAND2X1 A=n10 B=n21 Y=n22
*   .subckt NOR2X1 A=n19 B=n24 Y=y1
*   .subckt NOR2X1 A=n22 B=n59 Y=y16