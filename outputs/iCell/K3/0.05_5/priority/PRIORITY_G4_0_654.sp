.SUBCKT PRIORITY_G4_0_654 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|PRIORITY_G3_46_57_545|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-PRIORITY_G3_46_57_545:B,C=2|INVx1:Y-PRIORITY_G3_46_57_545:A=1|11110
* 89 occurrences in design
* each contains 4 cells
* pin map: {'n782': 'A', 'n783': 'B', 'x1': 'C'} {'n784': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVx1 A=x1 Y=n130
*   .subckt PRIORITY_G3_46_57_545 A=n130 B=n782 C=n783 Y=n784
