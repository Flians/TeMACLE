.SUBCKT ARBITER_G1_90_1435 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|INVx1|NOR3x1=1|INPUT:Y-NOR3x1:A,B,C=3|NOR3x1:Y-INVx1:A=1|11101
* 126 occurrences in design
* each contains 2 cells
* pin map: {'n551': 'A', 'x133': 'B', 'x134': 'C'} {'n553': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt NOR3x1 A=x133 B=x134 C=n551 Y=n552
*   .subckt INVx1 A=n552 Y=n553
