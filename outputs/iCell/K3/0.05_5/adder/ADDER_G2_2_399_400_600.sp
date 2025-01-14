.SUBCKT ADDER_G2_2_399_400_600 A B C VDD VSS Y
MM00 Y0 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM01 Y0 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net17 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM3 maji B net17 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net1 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net1 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 maji Y0 net1 VSS nmos_lvt w=81.0n l=20n nfin=3
MM10 Y maji VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM9 net16 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 maji B net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 net3 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM6 net3 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 maji Y0 net3 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 Y maji VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 5|3|OR2x2|ADDER_G1_1_439=1|INVx1=1|NOR2x1=1|ADDER_G1_1_439:Y-OR2x2:A,B=1|INPUT:Y-ADDER_G1_1_439:A,B=1|INPUT:Y-ADDER_G1_1_439:C=1|INPUT:Y-INVx1:A=1|INPUT:Y-NOR2x1:A,B=1|INVx1:Y-ADDER_G1_1_439:A,B=1|INVx1:Y-NOR2x1:A,B=1|NOR2x1:Y-OR2x2:A,B=1|1112210
* 31 occurrences in design
* each contains 5 cells
* pin map: {'n720': 'A', 'x250': 'B', 'x122': 'C'} {'n723': 'Y'}
* function: (B&C)|(B&~A)|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x122 Y=n320
*   .subckt NOR2x1 A=n320 B=n720 Y=n721
*   .subckt ADDER_G1_1_439 A=n320 B=n720 C=x250 Y=n722
*   .subckt OR2x2 A=n721 B=n722 Y=n723
