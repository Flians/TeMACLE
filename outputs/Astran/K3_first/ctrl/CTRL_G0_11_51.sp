.SUBCKT CTRL_G0_11_51 A B C Y VCC GND
MclY0MA6O_0#0 clY0MA6O_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_0#1 VCC C clY0MA6O_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_0#2 clY0MA6O_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_0#3 clY0MA6O_0#Y C clY0MA6O_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_1#0 Y clY0MA6O_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_1#2 clY0MA6O_1#a_9_6# clY0MA6O_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclY0MA6O_1#3 Y A clY0MA6O_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 6 occurrences in design
* each contains 2 cells
* pin map: {'n60': 'A', 'n12': 'B', 'x1': 'C'} {'n61': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n12 B=x1 Y=n24
*   .subckt NAND2X1 A=n24 B=n60 Y=n61