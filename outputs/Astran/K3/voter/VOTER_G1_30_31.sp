.SUBCKT VOTER_G1_30_31 A B C Y VCC GND
MclZPJ0NT_0#0 clZPJ0NT_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_0#1 VCC C clZPJ0NT_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_0#2 clZPJ0NT_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_0#3 clZPJ0NT_0#Y C clZPJ0NT_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_1#1 VCC clZPJ0NT_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_1#2 clZPJ0NT_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
MclZPJ0NT_1#3 Y clZPJ0NT_0#Y clZPJ0NT_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 580 occurrences in design
* each contains 2 cells
* pin map: {'n6775': 'A', 'n6776': 'B', 'n6783': 'C'} {'n6787': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n6776 B=n6783 Y=n6784
*   .subckt NAND2X1 A=n6775 B=n6784 Y=n6787
