.SUBCKT BAR_G4_361_362 C VCC GND Y A B
M0 VCC C a_2_10# VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M1 a_17_50# B VCC VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M2 Y C a_17_50# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M3 a_30_54# a_2_10# Y VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M4 VCC A a_30_54# VCC pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M5 GND C a_2_10# GND nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M6 a_17_10# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M7 Y a_2_10# a_17_10# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M8 a_30_10# C Y GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
M9 GND A a_30_10# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ends MUX2X1
* pattern code: 4|3|INVX1|BAR_G0_12_13_14=1|BAR_G0_12_13_14:Y-INVX1:A=1|INPUT:Y-BAR_G0_12_13_14:A=1|INPUT:Y-BAR_G0_12_13_14:B=1|INPUT:Y-BAR_G0_12_13_14:C=1|11110
* 23 occurrences in design
* each contains 4 cells
* pin map: {'n394': 'A', 'n388': 'B', 'x130': 'C'} {'n396': 'Y'}
* function: (C&~A)|(~B&~C)
* Example occurence:
*   .subckt BAR_G0_12_13_14 A=n388 B=x130 C=n394 Y=n395
*   .subckt INVX1 A=n395 Y=n396
