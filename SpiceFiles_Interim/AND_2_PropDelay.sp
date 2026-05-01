* SPICE export by:  S-Edit 2019.2.3
* Export time:      Sun Apr 12 15:10:12 2026
* Design path:      C:\Users\hiran\OneDrive\Desktop\EE-635\lib.defs
* Library:          EE-635
* Cell:             AND_2
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
.subckt nand_2 a b Gnd Vdd y 
MMn1 N_1 b Gnd Gnd NMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=5100 $y=3300 $w=400 $h=600
MMn2 y a N_1 Gnd NMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=5100 $y=4100 $w=400 $h=600
MMp1 y b Vdd Vdd PMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=6000 $y=5200 $w=400 $h=600
MMp2 y a Vdd Vdd PMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=4300 $y=5200 $w=400 $h=600
.ends

.subckt Inverter Gnd Vdd Vin Vout 
MMn1 Vout Vin Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=4800 $y=2700 $w=400 $h=600
MMp1 Vout Vin Vdd Vdd PMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=4800 $y=3500 $w=400 $h=600
.ends


***** Top Level *****
XInverter_1 Gnd Vdd N_1 y_and Inverter $ $x=5500 $y=4200 $w=1800 $h=1800
Xnand_2_1 a b Gnd Vdd N_1 nand_2 $ $x=3700 $y=4200 $w=1800 $h=1800

********* Simulation Settings - Analysis Section *********
Vvdd Vdd 0 DC 2.5
Vgnd Gnd 0 DC 0
Vb b 0 DC 2.5
Va a 0 PWL (0ns 0   5ns 0   5.1ns 2.5   15ns 2.5   15.1ns 0)
.tran 10ps 20ns
.measure tran tpLH trig v(a) val=1.25 rise=1 targ v(y_and) val=1.25 rise=1
.measure tran tpHL trig v(a) val=1.25 fall=1 targ v(y_and) val=1.25 fall=1
.print tran V(a) V(b) V(y_and)
.end