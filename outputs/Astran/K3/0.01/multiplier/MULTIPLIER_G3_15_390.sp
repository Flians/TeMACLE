.SUBCKT MULTIPLIER_G3_15_390 A B C Y VCC GND
MclQBG50I_0#0 clQBG50I_0#Y C VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_0#1 clQBG50I_0#Y C GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_0#0 clQBG50I_1#clAL7FLR_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_0#1 clQBG50I_1#clAL7FLR_0#Y B GND GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_1#0 clQBG50I_1#clAL7FLR_1#a_9_54# clQBG50I_1#clAL7FLR_0#Y VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_1#1 Y clQBG50I_0#Y clQBG50I_1#clAL7FLR_1#a_9_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_1#2 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_1#3 GND clQBG50I_1#clAL7FLR_0#Y clQBG50I_1#clAL7FLR_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_1#4 clQBG50I_1#clAL7FLR_1#a_2_6# clQBG50I_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQBG50I_1#clAL7FLR_1#5 Y A clQBG50I_1#clAL7FLR_1#a_2_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 3|3|MULTIPLIER_G0_2_27|INVX1=1|INPUT:Y-INVX1:A=1|INPUT:Y-MULTIPLIER_G0_2_27:B=1|INPUT:Y-MULTIPLIER_G0_2_27:C=1|INVX1:Y-MULTIPLIER_G0_2_27:A=1|11110
* 771 occurrences in design
* each contains 2 cells
* pin map: {'n622': 'A', 'n581': 'B', 'x65': 'C'} {'n623': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt INVX1 A=x65 Y=n194
*   .subckt MULTIPLIER_G0_2_27 A=n194 B=n622 C=n581 Y=n623
