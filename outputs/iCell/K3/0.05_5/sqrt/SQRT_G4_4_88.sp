.SUBCKT SQRT_G4_4_88 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|SQRT_G3_2_61|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-SQRT_G3_2_61:A,C=2|INVx1:Y-SQRT_G3_2_61:B=1|11110
* 819 occurrences in design
* each contains 4 cells
* pin map: {'x126': 'A', 'n327': 'B', 'x127': 'C'} {'n329': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVx1 A=x127 Y=n240
*   .subckt SQRT_G3_2_61 A=x126 B=n240 C=n327 Y=n329
