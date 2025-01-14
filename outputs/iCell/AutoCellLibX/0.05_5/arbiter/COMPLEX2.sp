.subckt COMPLEX2 cl0#Y VDD cl1#Y VSS cl0#B cl1#A
Mcl0#M4 cl0#Y cl0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net10 cl0#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 cl0#net10 cl1#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M5 cl0#Y cl0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 cl0#net20 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M2 cl0#net10 cl0#B cl0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX2
* pattern code: [AND2x2,INVx1]
* 128 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt AND2x2 A=n263 B=x132 Y=n546
*   .subckt INVx1 A=x5 Y=n263
