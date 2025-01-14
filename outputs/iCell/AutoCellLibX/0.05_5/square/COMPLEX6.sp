.subckt COMPLEX6 cl1#C cl2#Y VDD cl0#Y cl2#A2 cl2#A1 cl1#B VSS cl1#A
Mcl0#M5 VSS cl0#net7 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 VSS cl2#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M2 VSS cl1#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 VDD cl0#net7 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#net15 cl2#Y cl0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M14 cl1#Y cl1#C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M13 cl1#Y cl1#B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M12 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M8 cl1#net21 cl1#C VDD VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl1#M10 cl1#net22 cl1#B cl1#net21 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl1#M11 cl1#Y cl1#A cl1#net22 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl2#M4 cl2#Y cl1#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl2#M3 cl2#Y cl2#A1 cl2#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl2#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net18 cl2#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#Y cl1#Y cl2#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net18 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX6
* pattern code: [OR2x2,NOR3x1,AOI21x1]
* 222 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt OR2x2 A=n259 B=n264 Y=n265
*   .subckt NOR3x1 A=n71 B=n72 C=n150 Y=n259
*   .subckt AOI21x1 A1=n260 A2=n263 B=n259 Y=n264
