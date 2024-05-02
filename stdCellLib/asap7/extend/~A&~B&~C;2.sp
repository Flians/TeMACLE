.SUBCKT PRIORITY_G4_4_404 A B C VDD VSS Y
MclLRAZUN_0#M5 VSS clLRAZUN_0#net7 clLRAZUN_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclLRAZUN_0#M1 VSS C clLRAZUN_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclLRAZUN_0#M2 VSS B clLRAZUN_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclLRAZUN_0#M0 VDD clLRAZUN_0#net7 clLRAZUN_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclLRAZUN_0#M4 clLRAZUN_0#net15 C clLRAZUN_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclLRAZUN_0#M3 VDD B clLRAZUN_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclLRAZUN_1#M2 VSS clLRAZUN_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclLRAZUN_1#M1 VSS A Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclLRAZUN_1#M4 clLRAZUN_1#net16 A Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclLRAZUN_1#M3 VDD clLRAZUN_0#Y clLRAZUN_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 2|3|NOR2x1|OR2x2=1|INPUT:Y-NOR2x1:A,B=1|INPUT:Y-OR2x2:A,B=2|OR2x2:Y-NOR2x1:A,B=1|11101
* 40 occurrences in design
* each contains 2 cells
* pin map: {'n532': 'A', 'n133': 'B', 'x11': 'C'} {'n537': 'Y'}
* function: ~A&~B&~C
* Example occurence:
*   .subckt OR2x2 A=n133 B=x11 Y=n536
*   .subckt NOR2x1 A=n536 B=n532 Y=n537
