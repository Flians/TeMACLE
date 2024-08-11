.subckt COMPLEX4 cl1#B cl1#A VDD cl0#A2 cl0#A1 cl0#Y cl1#Y VSS
Mcl0#M4 cl0#Y cl1#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl0#M3 cl0#Y cl0#A1 cl0#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl0#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net18 cl0#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#Y cl1#Y cl0#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net18 cl0#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net10 cl1#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 cl1#net10 cl1#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl1#M5 cl1#Y cl1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M3 cl1#net20 cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M2 cl1#net10 cl1#B cl1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX4
* pattern code: [AOI21x1,AND2x2]
* 283 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt AOI21x1 A1=x1 A2=x4 B=n153 Y=n154
*   .subckt AND2x2 A=x0 B=x5 Y=n153
