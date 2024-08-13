.SUBCKT MULTIPLIER_G3_15_390 A B C Y VCC GND
MclHSXSD3_0#0 clHSXSD3_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_0#1 VCC C clHSXSD3_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_0#2 clHSXSD3_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_0#3 clHSXSD3_0#Y C clHSXSD3_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#0 Y clHSXSD3_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#2 clHSXSD3_1#a_9_6# clHSXSD3_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclHSXSD3_1#3 Y A clHSXSD3_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 3|3|MULTIPLIER_G0_2_27|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MULTIPLIER_G0_2_27:B=1|INPUT:Y-MULTIPLIER_G0_2_27:C=1|INVX1:Y-MULTIPLIER_G0_2_27:A=1|11110
* 771 occurrences in design
* each contains 3 cells
* pin map: {'n622': 'A', 'n581': 'B', 'x65': 'C'} {'n623': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt INVX1 A=x65 Y=n194
*   .subckt MULTIPLIER_G0_2_27 A=n194 B=n622 C=n581 Y=n623
