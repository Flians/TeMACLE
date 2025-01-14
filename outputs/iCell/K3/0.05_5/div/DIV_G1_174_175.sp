.SUBCKT DIV_G1_174_175 A B C VDD VSS Y
Mcl4CGKS7_0#M3 cl4CGKS7_0#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4CGKS7_0#M2 cl4CGKS7_0#Y B cl4CGKS7_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4CGKS7_0#M1 cl4CGKS7_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl4CGKS7_0#M0 cl4CGKS7_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl4CGKS7_1#M3 cl4CGKS7_1#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4CGKS7_1#M2 Y cl4CGKS7_0#Y cl4CGKS7_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl4CGKS7_1#M1 Y cl4CGKS7_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl4CGKS7_1#M0 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=3|NAND2x1:Y-NAND2x1:A,B=1|11101
* 3175 occurrences in design
* each contains 2 cells
* pin map: {'n182': 'A', 'x64': 'B', 'n179': 'C'} {'n428': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2x1 A=n179 B=x64 Y=n427
*   .subckt NAND2x1 A=n182 B=n427 Y=n428
