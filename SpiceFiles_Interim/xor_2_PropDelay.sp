* SPICE export by:  S-Edit 2019.2.3
* Export time:      Sun Apr 12 18:31:29 2026
* Design path:      C:\Users\hiran\OneDrive\Desktop\EE-635\lib.defs
* Library:          EE-635
* Cell:             xor_2
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
.subckt Inverter Gnd Vdd Vin Vout 
MMn1 Vout Vin Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m $ $x=4800 $y=2700 $w=400 $h=600
MMp1 Vout Vin Vdd Vdd PMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=4800 $y=3500 $w=400 $h=600
.ends


***** Top Level *****
XInverter_1 Gnd Vdd a N_4 Inverter $ $x=3500 $y=4300 $w=1800 $h=1800
XInverter_2 Gnd Vdd b N_5 Inverter $ $x=3600 $y=1800 $w=1800 $h=1800
MMn1 y_xor a N_1 Gnd NMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=5400 $y=2400 $w=400 $h=600
MMn2 N_1 b Gnd Gnd NMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=5400 $y=1200 $w=400 $h=600
MMn3 y_xor N_4 N_2 Gnd NMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=6800 $y=2400 $w=400 $h=600
MMn4 N_2 N_5 Gnd Gnd NMOS25 w=3u l=250n m=1 ad=1.95p pd=7.3u as=1.95p ps=7.3u nrd=216.66667m nrs=216.66667m $ $x=6800 $y=1200 $w=400 $h=600
MMp1 N_3 a Vdd Vdd PMOS25 w=6u l=250n m=1 ad=3.9p pd=13.3u as=3.9p ps=13.3u nrd=108.33333m nrs=108.33333m $ $x=5400 $y=4800 $w=400 $h=600
MMp2 N_3 b Vdd Vdd PMOS25 w=6u l=250n m=1 ad=3.9p pd=13.3u as=3.9p ps=13.3u nrd=108.33333m nrs=108.33333m $ $x=6800 $y=4800 $w=400 $h=600
MMp3 y_xor N_4 N_3 Vdd PMOS25 w=6u l=250n m=1 ad=3.9p pd=13.3u as=3.9p ps=13.3u nrd=108.33333m nrs=108.33333m $ $x=5400 $y=3700 $w=400 $h=600
MMp4 y_xor N_5 N_3 Vdd PMOS25 w=6u l=250n m=1 ad=3.9p pd=13.3u as=3.9p ps=13.3u nrd=108.33333m nrs=108.33333m $ $x=6800 $y=3700 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
Vvdd Vdd 0 DC 2.5
Vgnd Gnd 0 DC 0
Vb b 0 DC 0
Va a 0 PWL (0ns 0   5ns 0   5.1ns 2.5   15ns 2.5   15.1ns 0)
.tran 10ps 20ns
.measure tran tpLH trig v(a) val=1.25 rise=1 targ v(y_xor) val=1.25 rise=1
.measure tran tpHL trig v(a) val=1.25 fall=1 targ v(y_xor) val=1.25 fall=1
.print tran V(a) V(b) V(y_xor)
.end

