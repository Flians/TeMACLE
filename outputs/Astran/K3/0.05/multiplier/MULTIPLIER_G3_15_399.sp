.SUBCKT MULTIPLIER_G3_15_399 A B C Y VCC GND
MclX3L04U_0#0 clX3L04U_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_0#1 VCC C clX3L04U_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_0#2 clX3L04U_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_0#3 clX3L04U_0#Y C clX3L04U_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#0 Y clX3L04U_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#2 clX3L04U_1#a_9_6# clX3L04U_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclX3L04U_1#3 Y A clX3L04U_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|MULTIPLIER_G0_2_27|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MULTIPLIER_G0_2_27:B=1|INPUT:Y-MULTIPLIER_G0_2_27:C=1|INVX1:Y-MULTIPLIER_G0_2_27:A=1|11110
* 772 occurrences in design
* each contains 3 cells
* pin map: {'n622': 'A', 'n581': 'B', 'x65': 'C'} {'n623': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt INVX1 A=x65 Y=n194
*   .subckt MULTIPLIER_G0_2_27 A=n194 B=n622 C=n581 Y=n623
