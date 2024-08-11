.subckt COMPLEX6 cl1#A1 cl1#B VDD cl1#A2 cl0#Y cl1#Y VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl1#M3 cl1#Y cl1#A1 cl1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net18 cl1#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#B cl1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net18 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX6
* pattern code: [INVx1,AOI21x1]
* 3416 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVx1 A=n602 Y=n603
*   .subckt AOI21x1 A1=x247 A2=n601 B=n598 Y=n602
