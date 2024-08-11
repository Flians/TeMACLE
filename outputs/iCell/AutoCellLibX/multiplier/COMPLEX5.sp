.subckt COMPLEX5 cl1#A1 cl1#B VDD cl0#B cl1#A2 cl0#Y cl1#Y VSS
Mcl0#M4 cl0#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net015 cl0#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#Y cl0#net29 cl0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl0#B cl0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 cl0#net43 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M11 cl0#net041 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M10 cl0#Y cl0#B cl0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M9 cl0#Y cl0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#net29 cl0#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M2 cl1#Y cl1#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#A2 cl1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net27 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net11 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#Y cl1#A2 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#A1 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX5
* pattern code: [XNOR2x1,OAI21x1]
* 307 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt XNOR2x1 A=n539 B=x72 Y=n541
*   .subckt OAI21x1 A1=x71 A2=n536 B=n538 Y=n539
