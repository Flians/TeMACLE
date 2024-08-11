.subckt FAX1 GND VCC A B C YC YS
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
