.subckt COMPLEX24 cl0#Y VDD cl2#Y cl2#A2 cl2#A1 cl1#B VSS cl1#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
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
Mcl2#M4 cl2#Y cl1#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl2#M3 cl2#Y cl2#A1 cl2#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl2#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net18 cl2#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#Y cl1#Y cl2#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net18 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX24
* pattern code: [INVx1,XNOR2x1]+AOI21x1_c1o0
* 294 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt INVx1 A=n352 Y=n353
*   .subckt XNOR2x1 A=n351 B=n350 Y=n352
*   .subckt AOI21x1 A1=n337 A2=n358 B=n352 Y=n399
