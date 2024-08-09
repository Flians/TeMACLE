.SUBCKT BAR_G0_9_337 A B C Y VCC GND
MclQIJGBT_0#0 clQIJGBT_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_0#1 VCC C clQIJGBT_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_0#2 clQIJGBT_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_0#3 clQIJGBT_0#Y C clQIJGBT_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_1#0 Y clQIJGBT_0#Y VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_1#1 VCC A Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_1#2 clQIJGBT_1#a_9_6# clQIJGBT_0#Y GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclQIJGBT_1#3 Y A clQIJGBT_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 202 occurrences in design
* each contains 2 cells
* pin map: {'n640': 'A', 'n262': 'B', 'x129': 'C'} {'n641': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n262 B=x129 Y=n525
*   .subckt NAND2X1 A=n525 B=n640 Y=n641
