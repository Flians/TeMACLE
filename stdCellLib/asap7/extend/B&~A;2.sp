.SUBCKT ADDER_G1_0_441 A B VDD VSS Y
Mcl69IV1F_0#M0 cl69IV1F_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_0#M1 cl69IV1F_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_1#M2 VSS cl69IV1F_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_1#M1 VSS A Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl69IV1F_1#M4 cl69IV1F_1#net16 A Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl69IV1F_1#M3 VDD cl69IV1F_0#Y cl69IV1F_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 2|2|NOR2x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NOR2x1:A,B=1|INVx1:Y-NOR2x1:A,B=1|1110
* 32 occurrences in design
* each contains 2 cells
* pin map: {'n764': 'A', 'x126': 'B'} {'n765': 'Y'}
* function: B&~A
* Example occurence:
*   .subckt INVx1 A=x126 Y=n322
*   .subckt NOR2x1 A=n322 B=n764 Y=n765
