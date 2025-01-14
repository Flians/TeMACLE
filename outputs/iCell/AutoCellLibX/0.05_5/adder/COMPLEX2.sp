.subckt COMPLEX2 cl1#B cl0#B VDD VSS cl1#A
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
Mcl1#M4 cl1#net015 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net015 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#Y cl1#net29 cl1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#B cl1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net43 cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M11 cl1#net041 cl1#A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M10 cl1#Y cl1#B cl1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M9 cl1#Y cl1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net29 cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#net29 cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX2
* pattern code: [XNOR2x1,XNOR2x1]
* 93 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt XNOR2x1 A=n778 B=x3 Y=y4
*   .subckt XNOR2x1 A=n396 B=x131 Y=n778
