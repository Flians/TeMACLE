.SUBCKT MULTIPLIER_G4_231_280 A B C VDD VSS Y
MclPOMKC4_0#M4 clPOMKC4_0#net015 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_0#M5 clPOMKC4_0#net015 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_0#M6 clPOMKC4_0#Y clPOMKC4_0#net29 clPOMKC4_0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_0#M2 clPOMKC4_0#net29 C clPOMKC4_0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MclPOMKC4_0#M3 clPOMKC4_0#net43 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclPOMKC4_0#M11 clPOMKC4_0#net041 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_0#M10 clPOMKC4_0#Y C clPOMKC4_0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_0#M9 clPOMKC4_0#Y clPOMKC4_0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_0#M0 clPOMKC4_0#net29 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclPOMKC4_0#M1 clPOMKC4_0#net29 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclPOMKC4_1#M3 clPOMKC4_1#net16 clPOMKC4_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_1#M2 Y A clPOMKC4_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclPOMKC4_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclPOMKC4_1#M0 Y clPOMKC4_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|XNOR2x1=1|INPUT:Y-NAND2x1:A,B=1|INPUT:Y-XNOR2x1:A,B=2|XNOR2x1:Y-NAND2x1:A,B=1|11101
* 236 occurrences in design
* each contains 2 cells
* pin map: {'n481': 'A', 'n475': 'B', 'x2': 'C'} {'n516': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt XNOR2x1 A=n475 B=x2 Y=n476
*   .subckt NAND2x1 A=n476 B=n481 Y=n516
