.subckt COMPLEX1 cl0#Y VDD cl2#Y cl1#Y cl2#C cl1#B VSS cl2#A cl1#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 VSS cl1#net7 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 VSS cl1#B cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M2 VSS cl1#A cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 VDD cl1#net7 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#net15 cl1#B cl1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M14 cl2#Y cl2#C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M13 cl2#Y cl0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M12 cl2#Y cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M8 cl2#net21 cl2#C VDD VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl2#M10 cl2#net22 cl0#Y cl2#net21 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl2#M11 cl2#Y cl2#A cl2#net22 VDD pmos_lvt w=243.00n l=20n nfin=9
.ends COMPLEX1
* pattern code: [INVx1,OR2x2]+NOR3x1_c0o0
* 213 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt INVx1 A=n108 Y=n109
*   .subckt OR2x2 A=n76 B=n106 Y=n108
*   .subckt NOR3x1 A=n139 B=n109 C=n103 Y=n140
