.subckt COMPLEX5 VDD cl0#B cl1#Y cl1#B cl1#A VSS cl0#Y
Mcl0#M5 VSS cl0#net7 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 VSS cl0#B cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M2 VSS cl1#Y cl0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 VDD cl0#net7 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#net15 cl0#B cl0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 VSS cl1#net7 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 VSS cl1#B cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M2 VSS cl1#A cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 VDD cl1#net7 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#net15 cl1#B cl1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX5
* pattern code: [OR2x2,OR2x2]
* 26 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt OR2x2 A=n24 B=x6 Y=n26
*   .subckt OR2x2 A=x8 B=x9 Y=n24
