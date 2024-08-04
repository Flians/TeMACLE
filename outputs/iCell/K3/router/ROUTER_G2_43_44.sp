.SUBCKT ROUTER_G2_43_44 A B C VDD VSS Y
MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net72 B net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|ROUTER_G1_33_36|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-ROUTER_G1_33_36:B,C=2|INVx1:Y-ROUTER_G1_33_36:A=1|11110
* 13 occurrences in design
* each contains 4 cells
* pin map: {'n115': 'A', 'x29': 'B', 'x28': 'C'} {'n150': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt INVx1 A=x28 Y=n78
*   .subckt ROUTER_G1_33_36 A=n78 B=x29 C=n115 Y=n150
