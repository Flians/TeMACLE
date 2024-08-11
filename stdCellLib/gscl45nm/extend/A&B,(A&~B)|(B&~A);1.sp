.subckt HAX1 VCC GND YC A B YS
M0 VCC A a_2_74# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 a_2_74# B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 VCC a_2_74# YC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 a_41_74# a_2_74# VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 a_49_54# B a_41_74# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 VCC A a_49_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M6 YS a_41_74# VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M7 a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M8 a_2_74# B a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M9 GND a_2_74# YC GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M10 a_38_6# a_2_74# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M11 a_41_74# B a_38_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M12 a_38_6# A a_41_74# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M13 YS a_41_74# GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends HAX1
