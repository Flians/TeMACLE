.SUBCKT MEM_CTRL_G2_246_346 A B C VDD VSS Y
MclAQRLX1_0#M3 clAQRLX1_0#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_0#M2 clAQRLX1_0#Y B clAQRLX1_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_0#M1 clAQRLX1_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAQRLX1_0#M0 clAQRLX1_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAQRLX1_1#M2 Y clAQRLX1_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_1#M1 Y A clAQRLX1_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_1#M0 clAQRLX1_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_1#M6 clAQRLX1_1#net11 clAQRLX1_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_1#M5 Y A clAQRLX1_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclAQRLX1_1#M4 Y B clAQRLX1_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 2|3|OAI21x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-OAI21x1:A1,A2=2|NAND2x1:Y-OAI21x1:B=1|11210
* 1712 occurrences in design
* each contains 2 cells
* pin map: {'n2625': 'A', 'x215': 'B', 'n1925': 'C'} {'n2626': 'Y'}
* function: (B&C)|(~A&~B)
* Example occurence:
*   .subckt NAND2x1 A=n1925 B=x215 Y=n1926
*   .subckt OAI21x1 A1=x215 A2=n2625 B=n1926 Y=n2626
