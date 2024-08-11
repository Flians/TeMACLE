.subckt AOI22X1 GND VCC C D Y A B
M0 VCC A a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 Y D a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 a_2_54# C Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 a_11_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 Y B a_11_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M6 a_28_6# D Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M7 GND C a_28_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends AOI22X1
