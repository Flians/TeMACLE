.subckt COMPLEX16 VDD cl2#B cl1#Y cl1#B cl1#A VSS cl2#A cl0#Y
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
Mcl2#M4 cl2#Y cl2#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net10 cl2#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 cl2#net10 cl2#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl2#M5 cl2#Y cl2#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M3 cl2#net20 cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#net10 cl2#B cl2#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX16
* pattern code: [AND2x2,NAND2x1,AND2x2]
* 334 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt AND2x2 A=n390 B=n3962 Y=n3963
*   .subckt NAND2x1 A=n133 B=n242 Y=n390
*   .subckt AND2x2 A=n447 B=n3961 Y=n3962