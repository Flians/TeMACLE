.subckt COMPLEX3 VDD cl1#B cl1#A VSS cl0#A
Mcl0#M4 cl0#Y cl0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net10 cl1#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 cl0#net10 cl0#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M5 cl0#Y cl0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 cl0#net20 cl0#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M2 cl0#net10 cl1#Y cl0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net10 cl1#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 cl1#net10 cl1#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl1#M5 cl1#Y cl1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M3 cl1#net20 cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M2 cl1#net10 cl1#B cl1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX3
* pattern code: [AND2x2,AND2x2]
* 128 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt AND2x2 A=x128 B=n851 Y=y0
*   .subckt AND2x2 A=n849 B=n850 Y=n851
