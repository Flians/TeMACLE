.subckt COMPLEX9 VDD cl0#B cl1#B cl1#A VSS
Mcl0#M2 VSS cl1#Y cl0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 VSS cl0#B cl0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M4 cl0#net16 cl0#B cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 VDD cl1#Y cl0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 VSS cl1#net7 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 VSS cl1#B cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M2 VSS cl1#A cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 VDD cl1#net7 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#net15 cl1#B cl1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX9
* pattern code: [NOR2x1,OR2x2]
* 4 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt NOR2x1 A=n103 B=x0 Y=y11
*   .subckt OR2x2 A=n102 B=x1 Y=n103
