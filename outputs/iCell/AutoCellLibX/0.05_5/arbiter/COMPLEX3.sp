.subckt COMPLEX3 VDD cl1#A2 cl0#A cl1#A1 cl1#B VSS
Mcl0#M4 cl0#Y cl0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net10 cl1#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M0 cl0#net10 cl0#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0#M5 cl0#Y cl0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M3 cl0#net20 cl0#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M2 cl0#net10 cl1#Y cl0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl1#M3 cl1#Y cl1#A1 cl1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net18 cl1#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#B cl1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net18 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX3
* pattern code: [AND2x2,AOI21x1]
* 128 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt AND2x2 A=x128 B=n681 Y=y0
*   .subckt AOI21x1 A1=n679 A2=n389 B=n680 Y=n681
