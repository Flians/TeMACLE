.SUBCKT BAR_G3_1_52 B A VDD VSS Y
Mcl69IV1F_0#M0 cl69IV1F_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_0#M1 cl69IV1F_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_1#M2 VSS cl69IV1F_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_1#M1 VSS B Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_1#M4 cl69IV1F_1#net16 B Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl69IV1F_1#M3 VDD cl69IV1F_0#Y cl69IV1F_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|2|AND2x2|INVx1=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-INVx1:A=1|INVx1:Y-AND2x2:A,B=1|0111
* 104 occurrences in design
* each contains 2 cells
* pin map: {'n290': 'A', 'x131': 'B'} {'n291': 'Y'}
* function: A&~B
* Example occurence:
*   .subckt INVx1 A=x131 Y=n143
*   .subckt AND2x2 A=n143 B=n290 Y=n291
