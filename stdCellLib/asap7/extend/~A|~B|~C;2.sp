.SUBCKT SQUARE_G2_23_1136 A B C VDD VSS Y
MclRUB6YI_0#M4 clRUB6YI_0#Y clRUB6YI_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclRUB6YI_0#M1 clRUB6YI_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclRUB6YI_0#M0 clRUB6YI_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclRUB6YI_0#M5 clRUB6YI_0#Y clRUB6YI_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclRUB6YI_0#M3 clRUB6YI_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclRUB6YI_0#M2 clRUB6YI_0#net10 C clRUB6YI_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclRUB6YI_1#M3 clRUB6YI_1#net16 clRUB6YI_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclRUB6YI_1#M2 Y A clRUB6YI_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclRUB6YI_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclRUB6YI_1#M0 Y clRUB6YI_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|AND2x2=1|AND2x2:Y-NAND2x1:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-NAND2x1:A,B=1|11110
* 1215 occurrences in design
* each contains 2 cells
* function: ~A|~B|~C
* Example occurence:
*   .subckt AND2x2 A=x4 B=x5 Y=n113
*   .subckt NAND2x1 A=n113 B=n1138 Y=n1231
