.subckt OR2X1 Y B VCC GND A
M0 a_9_54# A a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 VCC B a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 Y a_2_54# VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 a_2_54# A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 GND B a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 Y a_2_54# GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends OR2X1
