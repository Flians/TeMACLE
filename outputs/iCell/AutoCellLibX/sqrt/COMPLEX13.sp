.subckt COMPLEX13 cl1#B cl1#A VDD cl0#Y cl1#Y cl1#C VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M14 cl1#Y cl1#C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M13 cl1#Y cl1#B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M12 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M8 cl1#net21 cl1#C VDD VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl1#M10 cl1#net22 cl1#B cl1#net21 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl1#M11 cl1#Y cl1#A cl1#net22 VDD pmos_lvt w=243.00n l=20n nfin=9
.ends COMPLEX13
* pattern code: [INVx1,NOR3x1]
* 72 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVx1 A=n226 Y=n227
*   .subckt NOR3x1 A=x124 B=x125 C=x126 Y=n226
