.SUBCKT MAX_G1_2_561 A B C VDD VSS Y
Mcl6PY19E_0#M3 cl6PY19E_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6PY19E_0#M2 cl6PY19E_0#Y C cl6PY19E_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6PY19E_0#M1 cl6PY19E_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6PY19E_0#M0 cl6PY19E_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6PY19E_1#M3 cl6PY19E_1#net16 cl6PY19E_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6PY19E_1#M2 Y A cl6PY19E_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6PY19E_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6PY19E_1#M0 Y cl6PY19E_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=3|NAND2x1:Y-NAND2x1:A,B=1|11101
* 169 occurrences in design
* each contains 2 cells
* pin map: {'n1218': 'A', 'n553': 'B', 'x255': 'C'} {'n1222': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2x1 A=n553 B=x255 Y=n1219
*   .subckt NAND2x1 A=n1219 B=n1218 Y=n1222