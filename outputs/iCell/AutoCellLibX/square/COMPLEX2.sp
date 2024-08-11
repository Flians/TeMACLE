.subckt COMPLEX2 cl1#A1 cl1#B VDD cl1#A2 cl0#Y cl1#Y VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M2 cl1#Y cl1#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#A2 cl1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net27 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net11 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#Y cl1#A2 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#A1 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX2
* pattern code: [INVx1,OAI21x1]
* 221 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVx1 A=n228 Y=n229
*   .subckt OAI21x1 A1=n211 A2=n213 B=n216 Y=n228
