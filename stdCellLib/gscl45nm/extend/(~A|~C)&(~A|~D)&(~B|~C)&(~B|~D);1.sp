.subckt OAI22X1 GND VCC D C A B Y
M0 a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 Y B a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 a_28_54# D Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 VCC C a_28_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 GND A a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M6 Y D a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M7 a_2_6# C Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends OAI22X1
