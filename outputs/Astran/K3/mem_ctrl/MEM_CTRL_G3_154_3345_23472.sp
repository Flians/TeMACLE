.SUBCKT MEM_CTRL_G3_154_3345_23472 A B C Y VCC GND
Mcl3YOGW9_0#0 cl3YOGW9_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_0#1 cl3YOGW9_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_1#0 cl3YOGW9_1#Y cl3YOGW9_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_1#1 VCC B cl3YOGW9_1#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_1#2 cl3YOGW9_1#a_9_6# cl3YOGW9_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_1#3 cl3YOGW9_1#Y B cl3YOGW9_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_2#0 Y cl3YOGW9_1#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_2#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_2#2 cl3YOGW9_2#a_9_6# cl3YOGW9_1#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl3YOGW9_2#3 Y A cl3YOGW9_2#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|NAND2X1|INVX1=1|NAND2X1=1|INPUT:Y-INVX1:A=1|INPUT:Y-NAND2X1:A,B=2|INVX1:Y-NAND2X1:A,B=1|NAND2X1:Y-NAND2X1:A,B=1|111101
* 2519 occurrences in design
* each contains 3 cells
* pin map: {'x332': 'A', 'n1237': 'B', 'x56': 'C'} {'n24819': 'Y'}
* function: ~A|(B&~C)
* Example occurence:
*   .subckt INVX1 A=x56 Y=n1231
*   .subckt NAND2X1 A=n1231 B=n1237 Y=n4742
*   .subckt NAND2X1 A=n4742 B=x332 Y=n24819
