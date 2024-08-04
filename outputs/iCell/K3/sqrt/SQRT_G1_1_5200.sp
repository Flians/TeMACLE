.SUBCKT SQRT_G1_1_5200 B A C VDD VSS Y
Mcl28JNWA_0#M0 cl28JNWA_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl28JNWA_0#M1 cl28JNWA_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl28JNWA_1#M4 Y A VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl28JNWA_1#M3 Y cl28JNWA_0#Y cl28JNWA_1#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl28JNWA_1#M2 cl28JNWA_1#net29 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl28JNWA_1#M5 cl28JNWA_1#net18 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl28JNWA_1#M0 Y A cl28JNWA_1#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl28JNWA_1#M1 cl28JNWA_1#net18 cl28JNWA_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|AOI21x1|INVx1=1|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-AOI21x1:B=1|INPUT:Y-INVx1:A=1|INVx1:Y-AOI21x1:A1,A2=1|01111
* 1416 occurrences in design
* each contains 2 cells
* pin map: {'n5374': 'A', 'n5373': 'B', 'x60': 'C'} {'n5375': 'Y'}
* function: ~A&(C|~B)
* Example occurence:
*   .subckt INVx1 A=x60 Y=n171
*   .subckt AOI21x1 A1=n171 A2=n5373 B=n5374 Y=n5375
