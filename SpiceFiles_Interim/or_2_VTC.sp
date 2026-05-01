* SPICE export by:  S-Edit 2019.2.3
* Export time:      Sun Apr 12 16:22:08 2026
* Design path:      C:\Users\hiran\OneDrive\Desktop\EE-635\lib.defs
* Library:          EE-635
* Cell:             or_2
* Testbench:        Spice
* View:             schematic1
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty:    yes
* Exclude .model:   no
* Exclude .hdl:     no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Exclude simulator commands:  no
* Exclude global pins:         no
* Exclude instance locations:  no
* Control property name(s):    SPICE

********* Simulation Settings - General Section *********
.lib "C:\Users\hiran\OneDrive\Documents\EE-635\TannerTools_v2019.2\Process\Generic_250nm\Models\Generic_250nm.lib" TT

*************** Subcircuits *****************
.subckt nor_2 a b Gnd Vdd y_nor 
MMn1 y_nor b Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=4400 $y=2400 $w=400 $h=600
MMn2 y_nor a Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=6300 $y=2400 $w=400 $h=600
MMp1 N_1 b Vdd Vdd PMOS25 w=6u l=250n m=1 ad=3.9p pd=13.3u as=3.9p ps=13.3u nrd=108.33333m nrs=108.33333m $ $x=5200 $y=4000 $w=400 $h=600
MMp2 y_nor a N_1 Vdd PMOS25 w=6u l=250n m=1 ad=3.9p pd=13.3u as=3.9p ps=13.3u nrd=108.33333m nrs=108.33333m $ $x=5200 $y=3400 $w=400 $h=600
.ends

.subckt Inverter Gnd Vdd Vin Vout 
MMn1 Vout Vin Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=4800 $y=2700 $w=400 $h=600
MMp1 Vout Vin Vdd Vdd PMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=4800 $y=3500 $w=400 $h=600
.ends


***** Top Level *****
XInverter_1 Gnd Vdd N_1 y_or Inverter $ $x=6400 $y=3800 $w=1800 $h=1800
Xnor_2_1 a b Gnd Vdd N_1 nor_2 $ $x=4600 $y=3800 $w=1800 $h=1800

********* Simulation Settings - Analysis Section *********
.tran 0.1n 50n

VIN in 0 PULSE(0 2.5 0 1n 1n 10n 20n)
VDD Vdd 0 2.5

E1 a 0 in 0 1
E2 b 0 in 0 1

Cload y_or 0 1p
********* Simulation Settings - Additional SPICE Commands *********
.measure tran tpHL 
+ TRIG V(in) VAL=1.25 RISE=1 
+ TARG V(y_or) VAL=1.25 FALL=1

.measure tran tpLH 
+ TRIG V(in) VAL=1.25 FALL=1 
+ TARG V(y_or) VAL=1.25 RISE=1

.probe V(in) V(y_or)
.end

