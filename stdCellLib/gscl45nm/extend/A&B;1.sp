.subckt AND2X1 Y B VCC GND A
M0 a_2_6# A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 VCC B a_2_6# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 Y a_2_6# VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 a_9_6# A a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 GND B a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 Y a_2_6# GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends AND2X1
