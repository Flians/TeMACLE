.subckt COMPLEX4 VDD cl2#B cl1#B cl1#A VSS cl2#A cl0#Y
Mcl0#M4 cl0#Y cl0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net10 cl2#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 cl0#net10 cl1#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M5 cl0#Y cl0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 cl0#net20 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M2 cl0#net10 cl2#Y cl0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M5 VSS cl2#net7 cl2#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 VSS cl2#B cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M2 VSS cl2#A cl2#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 VDD cl2#net7 cl2#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#net15 cl2#B cl2#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 VDD cl2#A cl2#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX4
* pattern code: [AND2x2,NAND2x1,OR2x2]
* 65 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt AND2x2 A=n2800 B=n2801 Y=n2802
*   .subckt NAND2x1 A=n1442 B=x33 Y=n2800
*   .subckt OR2x2 A=n558 B=n1442 Y=n2801
