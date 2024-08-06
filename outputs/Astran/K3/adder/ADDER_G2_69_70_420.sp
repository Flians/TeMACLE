.SUBCKT ADDER_G2_69_70_420 A B C Y VCC GND
Mcl1S3FJV_0#0 cl1S3FJV_0#a_9_54# C VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_0#1 cl1S3FJV_0#Y B cl1S3FJV_0#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_0#2 cl1S3FJV_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_0#3 GND B cl1S3FJV_0#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_0#0 cl1S3FJV_1#cl2JUR2Q_0#Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_0#1 cl1S3FJV_1#cl2JUR2Q_0#Y A GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_1#0 VCC C cl1S3FJV_1#cl2JUR2Q_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_1#1 cl1S3FJV_1#cl2JUR2Q_1#a_2_54# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_1#2 cl1S3FJV_1#Y cl1S3FJV_1#cl2JUR2Q_0#Y cl1S3FJV_1#cl2JUR2Q_1#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_1#3 cl1S3FJV_1#cl2JUR2Q_1#a_12_6# C GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_1#4 cl1S3FJV_1#Y B cl1S3FJV_1#cl2JUR2Q_1#a_12_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_1#cl2JUR2Q_1#5 GND cl1S3FJV_1#cl2JUR2Q_0#Y cl1S3FJV_1#Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_2#0 cl1S3FJV_2#a_9_54# cl1S3FJV_0#Y cl1S3FJV_2#a_2_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_2#1 VCC cl1S3FJV_1#Y cl1S3FJV_2#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_2#2 Y cl1S3FJV_2#a_2_54# VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_2#3 cl1S3FJV_2#a_2_54# cl1S3FJV_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_2#4 GND cl1S3FJV_1#Y cl1S3FJV_2#a_2_54# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl1S3FJV_2#5 Y cl1S3FJV_2#a_2_54# GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 4|3|OR2X2|ADDER_G1_1_439=1|NOR2X1=1|ADDER_G1_1_439:Y-OR2X2:A,B=1|INPUT:Y-ADDER_G1_1_439:A,B=2|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-NOR2X1:A,B=2|NOR2X1:Y-OR2X2:A,B=1|112210
* 31 occurrences in design
* each contains 3 cells
* pin map: {'x130': 'A', 'n360': 'B', 'n260': 'C'} {'n363': 'Y'}
* function: (A&~B)|(A&~C)|(~B&~C)
* Example occurence:
*   .subckt NOR2X1 A=n260 B=n360 Y=n361
*   .subckt ADDER_G1_1_439 A=n260 B=n360 C=x130 Y=n362
*   .subckt OR2X2 A=n361 B=n362 Y=n363
