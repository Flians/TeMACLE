.SUBCKT MEM_CTRL_G3_163_20725 A B C VDD VSS Y
MclM85G6U_0#M0 clM85G6U_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_0#M1 clM85G6U_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_1#clM75F0D_0#M3 clM85G6U_1#clM75F0D_0#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_0#M2 clM85G6U_1#clM75F0D_0#Y clM85G6U_0#Y clM85G6U_1#clM75F0D_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_0#M1 clM85G6U_1#clM75F0D_0#Y clM85G6U_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_1#clM75F0D_0#M0 clM85G6U_1#clM75F0D_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_1#clM75F0D_1#M2 Y clM85G6U_1#clM75F0D_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M1 Y A clM85G6U_1#clM75F0D_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M0 clM85G6U_1#clM75F0D_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M6 clM85G6U_1#clM75F0D_1#net11 clM85G6U_1#clM75F0D_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M5 Y A clM85G6U_1#clM75F0D_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M4 Y B clM85G6U_1#clM75F0D_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|MEM_CTRL_G2_246_346|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MEM_CTRL_G2_246_346:A=1|INPUT:Y-MEM_CTRL_G2_246_346:B=1|INVx1:Y-MEM_CTRL_G2_246_346:C=1|11110
* 1094 occurrences in design
* each contains 3 cells
* pin map: {'n11107': 'A', 'n21985': 'B', 'x221': 'C'} {'n21989': 'Y'}
* function: (A&~C)|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x221 Y=n1379
*   .subckt MEM_CTRL_G2_246_346 A=n21985 B=n11107 C=n1379 Y=n21989
