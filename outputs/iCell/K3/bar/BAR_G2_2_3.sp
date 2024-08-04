.SUBCKT BAR_G2_2_3 A B C VDD VSS Y
MclTZ327U_0#M3 clTZ327U_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_0#M2 clTZ327U_0#Y C clTZ327U_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_0#M1 clTZ327U_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTZ327U_0#M0 clTZ327U_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTZ327U_1#clT8WJ6P_0#M0 clTZ327U_1#clT8WJ6P_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTZ327U_1#clT8WJ6P_0#M1 clTZ327U_1#clT8WJ6P_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTZ327U_1#clT8WJ6P_1#M2 Y clTZ327U_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_1#clT8WJ6P_1#M1 Y clTZ327U_1#clT8WJ6P_0#Y clTZ327U_1#clT8WJ6P_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_1#clT8WJ6P_1#M0 clTZ327U_1#clT8WJ6P_1#net27 C VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_1#clT8WJ6P_1#M6 clTZ327U_1#clT8WJ6P_1#net11 clTZ327U_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_1#clT8WJ6P_1#M5 Y clTZ327U_1#clT8WJ6P_0#Y clTZ327U_1#clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclTZ327U_1#clT8WJ6P_1#M4 Y C clTZ327U_1#clT8WJ6P_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 3|3|BAR_G0_0_414|NAND2x1=1|INPUT:Y-BAR_G0_0_414:A=1|INPUT:Y-BAR_G0_0_414:C=1|INPUT:Y-NAND2x1:A,B=2|NAND2x1:Y-BAR_G0_0_414:B=1|01121
* 67 occurrences in design
* each contains 2 cells
* pin map: {'x22': 'A', 'x21': 'B', 'x128': 'C'} {'n332': 'Y'}
* function: (B&C)|(A&~C)
* Example occurence:
*   .subckt NAND2x1 A=x21 B=x128 Y=n331
*   .subckt BAR_G0_0_414 A=x128 B=n331 C=x22 Y=n332
