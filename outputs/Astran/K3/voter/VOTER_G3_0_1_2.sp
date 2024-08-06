.SUBCKT VOTER_G3_0_1_2 GND VCC A B C YC YS
M0 VCC A a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 a_25_6# C a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 a_33_54# B a_25_6# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 VCC A a_33_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 a_46_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M6 VCC B a_46_54# VCC pmos w=3.6u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M7 a_46_54# C VCC VCC pmos w=3.6u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M8 a_70_6# a_25_6# a_46_54# VCC pmos w=3.6u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M9 a_79_46# C a_70_6# VCC pmos w=4.8u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M10 a_84_46# B a_79_46# VCC pmos w=4.8u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M11 VCC A a_84_46# VCC pmos w=4.8u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M12 YS a_70_6# VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M13 YC a_25_6# VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M14 GND A a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M15 a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M16 a_25_6# C a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M17 a_33_6# B a_25_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M18 GND A a_33_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M19 a_46_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M20 GND B a_46_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M21 a_46_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M22 a_70_6# a_25_6# a_46_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M23 a_79_6# C a_70_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M24 a_84_6# B a_79_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M25 GND A a_84_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M26 YS a_70_6# GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M27 YC a_25_6# GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends FAX1
* pattern code: 4|3|VOTER_G2_2_5|AOI21X1=1|INVX1=1|AOI21X1:Y-VOTER_G2_2_5:B=1|INPUT:Y-AOI21X1:A,B=2|INPUT:Y-AOI21X1:C=1|INPUT:Y-INVX1:A=1|INPUT:Y-VOTER_G2_2_5:C=1|INVX1:Y-VOTER_G2_2_5:A=1|112210
* 337 occurrences in design
* each contains 4 cells
* pin map: {'x725': 'A', 'x726': 'B', 'x724': 'C'} {'n6402': 'Y'}
* function: (A&B)|(A&C)|(B&C)
* Example occurence:
*   .subckt AOI21X1 A=x724 B=x725 C=x726 Y=n6401
*   .subckt INVX1 A=x724 Y=n1244
*   .subckt VOTER_G2_2_5 A=n1244 B=n6401 C=x725 Y=n6402
