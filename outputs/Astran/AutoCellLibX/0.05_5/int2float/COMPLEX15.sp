.subckt COMPLEX15 cl2#A cl2#Y cl3#C cl0#C cl0#Y cl4#C cl3#B cl4#B cl1#Y cl3#Y cl1#A VCC cl4#Y cl5#C cl5#Y GND cl5#B
Mcl0#0 cl0#Y cl1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#1 VCC cl2#Y cl0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#2 cl0#Y cl0#C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#3 cl0#a_9_6# cl1#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#4 cl0#a_14_6# cl2#Y cl0#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl0#5 cl0#Y cl0#C cl0#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#0 cl1#Y cl1#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1#1 cl1#Y cl1#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#0 cl2#Y cl2#A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl2#1 cl2#Y cl2#A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#0 cl3#Y cl2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#1 VCC cl3#B cl3#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#2 cl3#Y cl3#C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#3 cl3#a_9_6# cl2#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#4 cl3#a_14_6# cl3#B cl3#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3#5 cl3#Y cl3#C cl3#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#0 cl4#Y cl2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#1 VCC cl4#B cl4#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#2 cl4#Y cl4#C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#3 cl4#a_9_6# cl2#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#4 cl4#a_14_6# cl4#B cl4#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl4#5 cl4#Y cl4#C cl4#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5#0 cl5#Y cl2#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5#1 VCC cl5#B cl5#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5#2 cl5#Y cl5#C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5#3 cl5#a_9_6# cl2#Y GND GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5#4 cl5#a_14_6# cl5#B cl5#a_9_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl5#5 cl5#Y cl5#C cl5#a_14_6# GND nmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends COMPLEX15
* pattern code: [NAND3X1,INVX1,INVX1]+NAND3X1_c2o0+NAND3X1_c2o0+NAND3X1_c2o0
* 3 occurrences in design 
* each contains 6 cells
* Example occurence:
*   .subckt NAND3X1 A=n16 B=n21 C=x4 Y=n53
*   .subckt INVX1 A=x3 Y=n16
*   .subckt INVX1 A=x8 Y=n21
*   .subckt NAND3X1 A=n21 B=n33 C=n37 Y=n38
*   .subckt NAND3X1 A=n21 B=n22 C=n26 Y=n27
*   .subckt NAND3X1 A=n21 B=n22 C=x7 Y=n76
