.subckt COMPLEX10 cl1#B cl1#A VDD cl0#Y cl1#Y VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M11 VSS cl1#A cl1#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M10 cl1#net047 cl1#B cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M9 VSS cl1#net036 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 VSS cl1#A cl1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 VSS cl1#B cl1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 VDD cl1#A cl1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 VDD cl1#B cl1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net019 cl1#net036 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net048 cl1#B cl1#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX10
* pattern code: [INVx1,XOR2x1]
* 218 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt INVx1 A=n268 Y=n269
*   .subckt XOR2x1 A=x64 B=x65 Y=n268
