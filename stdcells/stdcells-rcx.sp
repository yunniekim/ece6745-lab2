*==========================================================================
* TinyFlow Standard Cells Extracted Schematic View
*==========================================================================

*'''' LAB/PROJECT TASK ''''''''''''''''''''''''''''''''''''''''''''''''''''
* Copy-paste extracted SPICE schematics for all cells here
*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

* cell INVX1
* pin A
* pin Y
* pin VDD
* pin VSS
.SUBCKT INVX1 1 2 3 4
* net 1 A
* net 2 Y
* net 3 VDD
* net 4 VSS
* device instance $1 r0 *1 1.08,4.14 PMOS
M$1 2 1 3 3 PMOS L=0.18U W=1.44U AS=0.9072P AD=0.9072P PS=4.14U PD=4.14U
* device instance $2 r0 *1 1.08,1.62 NMOS
M$2 2 1 4 4 NMOS L=0.18U W=0.72U AS=0.4536P AD=0.4536P PS=2.7U PD=2.7U
.ENDS INVX1
