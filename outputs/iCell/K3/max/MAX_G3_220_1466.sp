.SUBCKT MAX_G3_220_1466 A B C VDD VSS Y
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
* pattern code: 3|3|MAX_G2_1096_1097|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MAX_G2_1096_1097:A=1|INPUT:Y-MAX_G2_1096_1097:B=1|INVx1:Y-MAX_G2_1096_1097:C=1|11110
* 112 occurrences in design
* each contains 2 cells
* pin map: {'n1265': 'A', 'x132': 'B', 'x4': 'C'} {'n1896': 'Y'}
* function: (A&~C)|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x4 Y=n515
*   .subckt MAX_G2_1096_1097 A=x132 B=n1265 C=n515 Y=n1896
