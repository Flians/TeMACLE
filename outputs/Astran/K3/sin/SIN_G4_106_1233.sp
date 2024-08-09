.SUBCKT SIN_G4_106_1233 A B C Y VCC GND
MclWDN78Q_0#0 clWDN78Q_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_0#1 clWDN78Q_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_0#0 clWDN78Q_1#clXOLGEV_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_0#1 clWDN78Q_1#clXOLGEV_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#0 VCC clWDN78Q_1#clXOLGEV_0#Y clWDN78Q_1#clXOLGEV_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#1 clWDN78Q_1#clXOLGEV_1#a_2_64# clWDN78Q_1#clXOLGEV_0#Y VCC VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#2 clWDN78Q_1#clXOLGEV_1#a_25_64# A clWDN78Q_1#clXOLGEV_1#a_2_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#3 clWDN78Q_1#clXOLGEV_1#a_2_64# A clWDN78Q_1#clXOLGEV_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#4 Y clWDN78Q_0#Y clWDN78Q_1#clXOLGEV_1#a_25_64# VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#5 clWDN78Q_1#clXOLGEV_1#a_25_64# clWDN78Q_0#Y Y VCC pmos w=0.75u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#6 Y clWDN78Q_1#clXOLGEV_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#7 GND A Y GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclWDN78Q_1#clXOLGEV_1#8 Y clWDN78Q_0#Y GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|SIN_G1_26_55|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-SIN_G1_26_55:A,B=1|INPUT:Y-SIN_G1_26_55:C=1|INVX1:Y-SIN_G1_26_55:A,B=1|11110
* 201 occurrences in design
* each contains 2 cells
* pin map: {'n1792': 'A', 'n485': 'B', 'n180': 'C'} {'n1793': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVX1 A=n180 Y=n181
*   .subckt SIN_G1_26_55 A=n1792 B=n181 C=n485 Y=n1793
