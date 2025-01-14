.subckt COMPLEX1 cl0#Y VDD cl2#Y cl1#Y cl2#B cl2#C cl1#B VSS cl1#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 VSS cl1#net7 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 VSS cl1#B cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M2 VSS cl1#A cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 VDD cl1#net7 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#net15 cl1#B cl1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl1#Y cl2#net22 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl2#M1 cl2#net22 cl2#B cl2#net21 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl2#M2 cl2#net21 cl2#C VSS VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl2#M3 cl2#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M5 cl2#Y cl2#C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX1
* pattern code: [INVx1,OR2x2]+NAND3x1_c1o0
* 91 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt INVx1 A=n143 Y=n144
*   .subckt OR2x2 A=n124 B=n140 Y=n143
*   .subckt NAND3x1 A=n143 B=n194 C=n276 Y=n1937
