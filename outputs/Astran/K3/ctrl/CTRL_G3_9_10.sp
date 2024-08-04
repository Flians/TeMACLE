.SUBCKT CTRL_G3_9_10 A B C Y VCC GND
Mcl6PQN8J_0#0 cl6PQN8J_0#a_9_54# B VCC VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_0#1 cl6PQN8J_0#Y A cl6PQN8J_0#a_9_54# VCC PMOS W=1u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_0#2 VCC C cl6PQN8J_0#Y VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_0#3 GND B cl6PQN8J_0#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_0#4 cl6PQN8J_0#a_2_6# A GND GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_0#5 cl6PQN8J_0#Y C cl6PQN8J_0#a_2_6# GND NMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_1#0 Y cl6PQN8J_0#Y VCC VCC PMOS W=0.5u L=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl6PQN8J_1#1 Y cl6PQN8J_0#Y GND GND NMOS W=0.25u L=0.05u
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
