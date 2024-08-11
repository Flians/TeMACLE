.subckt COMPLEX4 cl2#B cl1#A VDD cl0#Y cl2#A cl1#Y VSS
Mcl0#M4 cl0#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net015 cl2#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#Y cl0#net29 cl0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl2#Y cl0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 cl0#net43 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M11 cl0#net041 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M10 cl0#Y cl2#Y cl0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M9 cl0#Y cl0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#net29 cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#net015 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net015 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#Y cl2#net29 cl2#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl2#B cl2#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net43 cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M11 cl2#net041 cl2#A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M10 cl2#Y cl2#B cl2#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M9 cl2#Y cl2#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net29 cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#net29 cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX4
* pattern code: [XNOR2x1,INVx1,XNOR2x1]
* 115 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt XNOR2x1 A=n1099 B=n5486 Y=n5487
*   .subckt INVx1 A=x169 Y=n1099
*   .subckt XNOR2x1 A=x170 B=x171 Y=n5486
