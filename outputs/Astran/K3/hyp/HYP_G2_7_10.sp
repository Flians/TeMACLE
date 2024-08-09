.SUBCKT HYP_G2_7_10 A B C Y VCC GND
MclJ9NGQT_0#0 clJ9NGQT_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_0#1 clJ9NGQT_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_1#0 clJ9NGQT_1#a_9_54# clJ9NGQT_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_1#1 Y A clJ9NGQT_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_1#2 VCC B Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_1#3 GND clJ9NGQT_0#Y clJ9NGQT_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_1#4 clJ9NGQT_1#a_2_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclJ9NGQT_1#5 Y B clJ9NGQT_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|OAI21X1|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-OAI21X1:A,B=1|INPUT:Y-OAI21X1:C=1|INVX1:Y-OAI21X1:A,B=1|11110
* 8232 occurrences in design
* each contains 2 cells
* pin map: {'n486': 'A', 'n25463': 'B', 'x150': 'C'} {'n25464': 'Y'}
* function: ~B|(C&~A)
* Example occurence:
*   .subckt INVX1 A=x150 Y=n408
*   .subckt OAI21X1 A=n408 B=n486 C=n25463 Y=n25464
