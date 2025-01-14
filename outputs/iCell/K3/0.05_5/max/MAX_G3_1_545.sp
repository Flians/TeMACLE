.SUBCKT MAX_G3_1_545 C A B VDD VSS Y
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
* pattern code: 3|3|MAX_G2_1096_1097|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MAX_G2_1096_1097:B=1|INPUT:Y-MAX_G2_1096_1097:C=1|INVx1:Y-MAX_G2_1096_1097:A=1|11110
* 180 occurrences in design
* each contains 3 cells
* pin map: {'n1265': 'A', 'x123': 'B', 'x251': 'C'} {'n2365': 'Y'}
* function: (A&B)|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x251 Y=n657
*   .subckt MAX_G2_1096_1097 A=n657 B=n1265 C=x123 Y=n2365
