.subckt COMPLEX2 cl2#Y VDD cl2#B cl1#Y cl1#B cl1#A VSS cl2#A
Mcl0#M2 VSS cl1#Y cl0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 VSS cl2#Y cl0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M4 cl0#net16 cl2#Y cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 VDD cl1#Y cl0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
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
.ends COMPLEX2
* pattern code: [NOR2x1,OR2x2,OR2x2]
* 8 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt NOR2x1 A=n21 B=n125 Y=y64
*   .subckt OR2x2 A=n20 B=x0 Y=n21
*   .subckt OR2x2 A=n124 B=x4 Y=n125
