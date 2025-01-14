.SUBCKT I2C_G2_16_127 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|I2C_G1_16_134|INVx1=1|INPUT:Y-I2C_G1_16_134:A,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-I2C_G1_16_134:B=1|01111
* 124 occurrences in design
* each contains 4 cells
* pin map: {'x9': 'A', 'n327': 'B', 'x10': 'C'} {'n328': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVx1 A=x10 Y=n157
*   .subckt I2C_G1_16_134 A=x9 B=n157 C=n327 Y=n328
