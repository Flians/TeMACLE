.subckt COMPLEX7 cl1#B cl0#A1 VDD cl1#A2 cl2#A cl1#A1 VSS cl1#Y cl2#B cl2#C
Mcl0#M4 cl0#Y cl2#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl0#M3 cl0#Y cl0#A1 cl0#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net18 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#Y cl2#Y cl0#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net18 cl0#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl1#M3 cl1#Y cl1#A1 cl1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net29 cl1#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#net18 cl1#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#B cl1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#net18 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M14 cl2#Y cl2#C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M13 cl2#Y cl2#B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M12 cl2#Y cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M8 cl2#net21 cl2#C VDD VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl2#M10 cl2#net22 cl2#B cl2#net21 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl2#M11 cl2#Y cl2#A cl2#net22 VDD pmos_lvt w=243.00n l=20n nfin=9
.ends COMPLEX7
* pattern code: [AOI21x1,AOI21x1,NOR3x1]
* 37 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt AOI21x1 A1=x134 A2=n585 B=n423 Y=y0
*   .subckt AOI21x1 A1=n266 A2=n584 B=n499 Y=n585
*   .subckt NOR3x1 A=x134 B=n347 C=n422 Y=n423
