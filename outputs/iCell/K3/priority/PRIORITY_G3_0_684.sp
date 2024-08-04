.SUBCKT PRIORITY_G3_0_684 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|PRIORITY_G2_47_58_578|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-PRIORITY_G2_47_58_578:B,C=2|INVx1:Y-PRIORITY_G2_47_58_578:A=1|11110
* 84 occurrences in design
* each contains 4 cells
* pin map: {'n812': 'A', 'n813': 'B', 'x1': 'C'} {'n814': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVx1 A=x1 Y=n130
*   .subckt PRIORITY_G2_47_58_578 A=n130 B=n812 C=n813 Y=n814
