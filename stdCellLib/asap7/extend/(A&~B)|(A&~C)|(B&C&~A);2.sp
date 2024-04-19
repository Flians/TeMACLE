.SUBCKT HYP_G3_3_23 A B C VDD VSS Y
MclEDNYC0_0#M4 clEDNYC0_0#Y clEDNYC0_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_0#M1 clEDNYC0_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclEDNYC0_0#M0 clEDNYC0_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclEDNYC0_0#M5 clEDNYC0_0#Y clEDNYC0_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_0#M3 clEDNYC0_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclEDNYC0_0#M2 clEDNYC0_0#net10 C clEDNYC0_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEDNYC0_1#M11 VSS clEDNYC0_0#Y clEDNYC0_1#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_1#M10 clEDNYC0_1#net047 A Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_1#M9 VSS clEDNYC0_1#net036 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_1#M0 VSS clEDNYC0_0#Y clEDNYC0_1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEDNYC0_1#M1 VSS A clEDNYC0_1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEDNYC0_1#M4 VDD clEDNYC0_0#Y clEDNYC0_1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_1#M5 VDD A clEDNYC0_1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_1#M6 clEDNYC0_1#net019 clEDNYC0_1#net036 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEDNYC0_1#M2 clEDNYC0_1#net048 A clEDNYC0_1#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
MclEDNYC0_1#M3 VDD clEDNYC0_0#Y clEDNYC0_1#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|XOR2x1|AND2x2=1|AND2x2:Y-XOR2x1:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-XOR2x1:A,B=1|11110
* 8318 occurrences in design
* each contains 2 cells
* function: (A&~B)|(A&~C)|(B&C&~A)
* Example occurence:
*   .subckt AND2x2 A=x252 B=x254 Y=n395
*   .subckt XOR2x1 A=n395 B=n401 Y=n402
