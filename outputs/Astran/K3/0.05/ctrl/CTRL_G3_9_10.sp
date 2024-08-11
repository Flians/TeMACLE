.SUBCKT CTRL_G3_9_10 A B C Y VCC GND
MclHXVUH6_0#0 clHXVUH6_0#a_9_54# A VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_0#1 clHXVUH6_0#Y B clHXVUH6_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_0#2 VCC C clHXVUH6_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_0#3 GND A clHXVUH6_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_0#4 clHXVUH6_0#a_2_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_0#5 clHXVUH6_0#Y C clHXVUH6_0#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_1#0 Y clHXVUH6_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHXVUH6_1#1 Y clHXVUH6_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|INVX1|OAI21X1=1|INPUT:Y-OAI21X1:A,B=2|INPUT:Y-OAI21X1:C=1|OAI21X1:Y-INVX1:A=1|11101
* 3 occurrences in design
* each contains 2 cells
* pin map: {'x0': 'A', 'x1': 'B', 'x4': 'C'} {'n22': 'Y'}
* function: C&(A|B)
* Example occurence:
*   .subckt OAI21X1 A=x0 B=x1 C=x4 Y=n21
*   .subckt INVX1 A=n21 Y=n22
