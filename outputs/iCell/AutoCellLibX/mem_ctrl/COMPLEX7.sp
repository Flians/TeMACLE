.subckt COMPLEX7 VDD cl2#B cl1#B cl1#A VSS cl2#A cl0#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl2#Y cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 VSS cl1#net7 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 VSS cl1#B cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M2 VSS cl1#A cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 VDD cl1#net7 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#net15 cl1#B cl1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M5 VSS cl2#net7 cl2#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 VSS cl2#B cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M2 VSS cl2#A cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 VDD cl2#net7 cl2#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#net15 cl2#B cl2#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 VDD cl2#A cl2#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX7
* pattern code: [NAND2x1,OR2x2,OR2x2]
* 979 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NAND2x1 A=n2243 B=n2255 Y=n2256
*   .subckt OR2x2 A=n2242 B=n2063 Y=n2243
*   .subckt OR2x2 A=n2062 B=n2254 Y=n2255
