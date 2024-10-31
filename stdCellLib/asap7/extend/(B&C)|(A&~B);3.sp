.SUBCKT BAR_G3_2_3 A B C VDD VSS Y
Mcl704DMK_0#M3 cl704DMK_0#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_0#M2 cl704DMK_0#Y B cl704DMK_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_0#M1 cl704DMK_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_0#M0 cl704DMK_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_1#clWKDZNC_0#M0 cl704DMK_1#clWKDZNC_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_1#clWKDZNC_0#M1 cl704DMK_1#clWKDZNC_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl704DMK_1#clWKDZNC_1#M2 Y cl704DMK_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M1 Y cl704DMK_1#clWKDZNC_0#Y cl704DMK_1#clWKDZNC_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M0 cl704DMK_1#clWKDZNC_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M6 cl704DMK_1#clWKDZNC_1#net11 cl704DMK_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M5 Y cl704DMK_1#clWKDZNC_0#Y cl704DMK_1#clWKDZNC_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl704DMK_1#clWKDZNC_1#M4 Y B cl704DMK_1#clWKDZNC_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 3|3|BAR_G0_0_414|NAND2x1=1|INPUT:Y-BAR_G0_0_414:A=1|INPUT:Y-BAR_G0_0_414:C=1|INPUT:Y-NAND2x1:A,B=2|NAND2x1:Y-BAR_G0_0_414:B=1|01121
* 69 occurrences in design
* each contains 2 cells
* pin map: {'x22': 'A', 'x128': 'B', 'x21': 'C'} {'n344': 'Y'}
* function: (B&C)|(A&~B)
* Example occurence:
*   .subckt NAND2x1 A=x21 B=x128 Y=n343
*   .subckt BAR_G0_0_414 A=x128 B=n343 C=x22 Y=n344
