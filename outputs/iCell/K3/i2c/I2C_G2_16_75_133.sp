.SUBCKT I2C_G2_16_75_133 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|I2C_G0_15_60|INVx1=2|INPUT:Y-I2C_G0_15_60:C=1|INPUT:Y-INVx1:A=2|INVx1:Y-I2C_G0_15_60:A,B=2|011111
* 81 occurrences in design
* each contains 4 cells
* pin map: {'n331': 'A', 'x9': 'B', 'x10': 'C'} {'n332': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVx1 A=x10 Y=n158
*   .subckt INVx1 A=x9 Y=n157
*   .subckt I2C_G0_15_60 A=n158 B=n157 C=n331 Y=n332
