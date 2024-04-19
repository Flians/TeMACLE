.SUBCKT HYP_G4_18_27 A B C VDD VSS Y
MclEYEDIJ_0#M5 VSS clEYEDIJ_0#net7 clEYEDIJ_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_0#M1 VSS C clEYEDIJ_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclEYEDIJ_0#M2 VSS B clEYEDIJ_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclEYEDIJ_0#M0 VDD clEYEDIJ_0#net7 clEYEDIJ_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_0#M4 clEYEDIJ_0#net15 C clEYEDIJ_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclEYEDIJ_0#M3 VDD B clEYEDIJ_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclEYEDIJ_1#M11 VSS clEYEDIJ_0#Y clEYEDIJ_1#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_1#M10 clEYEDIJ_1#net047 A Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_1#M9 VSS clEYEDIJ_1#net036 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_1#M0 VSS clEYEDIJ_0#Y clEYEDIJ_1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEYEDIJ_1#M1 VSS A clEYEDIJ_1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclEYEDIJ_1#M4 VDD clEYEDIJ_0#Y clEYEDIJ_1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_1#M5 VDD A clEYEDIJ_1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_1#M6 clEYEDIJ_1#net019 clEYEDIJ_1#net036 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclEYEDIJ_1#M2 clEYEDIJ_1#net048 A clEYEDIJ_1#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
MclEYEDIJ_1#M3 VDD clEYEDIJ_0#Y clEYEDIJ_1#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|XOR2x1|OR2x2=1|INPUT:Y-OR2x2:A,B=2|INPUT:Y-XOR2x1:A,B=1|OR2x2:Y-XOR2x1:A,B=1|11110
* 5986 occurrences in design
* each contains 2 cells
* function: (B&~A)|(C&~A)|(A&~B&~C)
* Example occurence:
*   .subckt OR2x2 A=n381 B=n385 Y=n386
*   .subckt XOR2x1 A=n386 B=n390 Y=n391
