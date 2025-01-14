.SUBCKT MEM_CTRL_G4_155_20758 C A B VDD VSS Y
Mcl704DMK_0#M3 cl704DMK_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_0#M2 cl704DMK_0#Y A cl704DMK_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_0#M1 cl704DMK_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_0#M0 cl704DMK_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_1#clWKDZNC_0#M0 cl704DMK_1#clWKDZNC_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_1#clWKDZNC_0#M1 cl704DMK_1#clWKDZNC_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_1#clWKDZNC_1#M2 Y cl704DMK_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M1 Y cl704DMK_1#clWKDZNC_0#Y cl704DMK_1#clWKDZNC_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M0 cl704DMK_1#clWKDZNC_1#net27 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M6 cl704DMK_1#clWKDZNC_1#net11 cl704DMK_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M5 Y cl704DMK_1#clWKDZNC_0#Y cl704DMK_1#clWKDZNC_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M4 Y A cl704DMK_1#clWKDZNC_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|MEM_CTRL_G2_246_346|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MEM_CTRL_G2_246_346:B=1|INPUT:Y-MEM_CTRL_G2_246_346:C=1|INVx1:Y-MEM_CTRL_G2_246_346:A=1|11110
* 1511 occurrences in design
* each contains 3 cells
* pin map: {'n6793': 'A', 'n22079': 'B', 'x215': 'C'} {'y372': 'Y'}
* function: (A&B)|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x215 Y=n1371
*   .subckt MEM_CTRL_G2_246_346 A=n1371 B=n6793 C=n22079 Y=y372
