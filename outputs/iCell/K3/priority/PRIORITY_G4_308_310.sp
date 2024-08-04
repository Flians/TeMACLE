.SUBCKT PRIORITY_G4_308_310 B A C VDD VSS Y
MclM85G6U_0#M0 clM85G6U_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_0#M1 clM85G6U_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_1#clM75F0D_0#M3 clM85G6U_1#clM75F0D_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_0#M2 clM85G6U_1#clM75F0D_0#Y clM85G6U_0#Y clM85G6U_1#clM75F0D_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_0#M1 clM85G6U_1#clM75F0D_0#Y clM85G6U_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_1#clM75F0D_0#M0 clM85G6U_1#clM75F0D_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM85G6U_1#clM75F0D_1#M2 Y clM85G6U_1#clM75F0D_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M1 Y B clM85G6U_1#clM75F0D_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M0 clM85G6U_1#clM75F0D_1#net27 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M6 clM85G6U_1#clM75F0D_1#net11 clM85G6U_1#clM75F0D_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M5 Y B clM85G6U_1#clM75F0D_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclM85G6U_1#clM75F0D_1#M4 Y A clM85G6U_1#clM75F0D_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|PRIORITY_G1_678_679|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-PRIORITY_G1_678_679:A=1|INPUT:Y-PRIORITY_G1_678_679:C=1|INVx1:Y-PRIORITY_G1_678_679:B=1|11110
* 5 occurrences in design
* each contains 3 cells
* pin map: {'n437': 'A', 'n439': 'B', 'n435': 'C'} {'n440': 'Y'}
* function: (B&~C)|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=n435 Y=n436
*   .subckt PRIORITY_G1_678_679 A=n437 B=n436 C=n439 Y=n440
