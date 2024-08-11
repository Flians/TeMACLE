.subckt COMPLEX12 cl1#A1 cl1#B VDD cl1#A2 cl0#Y cl1#Y cl0#A VSS
Mcl0#M4 cl0#net015 cl0#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#Y cl0#net29 cl0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl1#Y cl0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 cl0#net43 cl0#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M11 cl0#net041 cl0#A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M10 cl0#Y cl1#Y cl0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M9 cl0#Y cl0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net29 cl0#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl1#M3 cl1#Y cl1#A1 cl1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net18 cl1#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#B cl1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net18 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX12
* pattern code: [XNOR2x1,AOI21x1]
* 86 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt XNOR2x1 A=x120 B=n372 Y=n373
*   .subckt AOI21x1 A1=y59 A2=n307 B=n371 Y=n372
