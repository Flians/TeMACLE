.SUBCKT HYP_G2_6_11 A B C VDD VSS Y
MclA8UFCF_0#M3 clA8UFCF_0#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_0#M2 clA8UFCF_0#Y B clA8UFCF_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_0#M1 clA8UFCF_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclA8UFCF_0#M0 clA8UFCF_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclA8UFCF_1#M11 VSS clA8UFCF_0#Y clA8UFCF_1#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_1#M10 clA8UFCF_1#net047 A Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_1#M9 VSS clA8UFCF_1#net036 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_1#M0 VSS clA8UFCF_0#Y clA8UFCF_1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclA8UFCF_1#M1 VSS A clA8UFCF_1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclA8UFCF_1#M4 VDD clA8UFCF_0#Y clA8UFCF_1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_1#M5 VDD A clA8UFCF_1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_1#M6 clA8UFCF_1#net019 clA8UFCF_1#net036 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclA8UFCF_1#M2 clA8UFCF_1#net048 A clA8UFCF_1#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
MclA8UFCF_1#M3 VDD clA8UFCF_0#Y clA8UFCF_1#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|XOR2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-XOR2x1:A,B=1|NAND2x1:Y-XOR2x1:A,B=1|11110
* 11394 occurrences in design
* each contains 2 cells
* pin map: {'n520': 'A', 'x252': 'B', 'x254': 'C'} {'n521': 'Y'}
* function: (A&B&C)|(~A&~B)|(~A&~C)
* Example occurence:
*   .subckt NAND2x1 A=x252 B=x254 Y=n514
*   .subckt XOR2x1 A=n514 B=n520 Y=n521
