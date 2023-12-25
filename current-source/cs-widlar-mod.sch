v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -50 220 -50 {
lab=GND}
N 160 -50 160 -30 {
lab=GND}
N -170 -130 -170 -110 {
lab=VDD}
N -170 -50 -170 -30 {
lab=GND}
N 220 -70 220 -50 {
lab=GND}
N 140 -260 180 -260 {
lab=#net1}
N 140 -460 180 -460 {
lab=#net2}
N 100 -510 100 -490 {
lab=VDD}
N 100 -510 220 -510 {
lab=VDD}
N 220 -510 220 -490 {
lab=VDD}
N 160 -530 160 -510 {
lab=VDD}
N 220 -150 220 -130 {
lab=#net3}
N 220 -230 220 -210 {
lab=#net4}
N 100 -230 100 -210 {
lab=#net5}
N 100 -150 100 -50 {
lab=GND}
N 90 -260 100 -260 {
lab=#net5}
N 90 -260 90 -220 {
lab=#net5}
N 90 -220 100 -220 {
lab=#net5}
N 220 -260 230 -260 {
lab=#net4}
N 230 -260 230 -220 {
lab=#net4}
N 220 -220 230 -220 {
lab=#net4}
N 220 -460 230 -460 {
lab=VDD}
N 230 -500 230 -460 {
lab=VDD}
N 220 -500 230 -500 {
lab=VDD}
N 90 -460 100 -460 {
lab=VDD}
N 90 -500 90 -460 {
lab=VDD}
N 90 -500 100 -500 {
lab=VDD}
N 160 -460 160 -390 {
lab=#net2}
N 160 -330 160 -260 {
lab=#net1}
N 100 -430 100 -290 {
lab=#net1}
N 220 -430 220 -290 {
lab=#net2}
N 100 -310 160 -310 {
lab=#net1}
N 160 -410 220 -410 {
lab=#net2}
N 200 -360 220 -360 {
lab=#net2}
N 150 -360 160 -360 {
lab=#net1}
N 150 -360 150 -320 {
lab=#net1}
N 150 -320 160 -320 {
lab=#net1}
N 220 -410 320 -410 {
lab=#net2}
N 320 -460 320 -410 {
lab=#net2}
N 320 -460 340 -460 {
lab=#net2}
N 220 -510 380 -510 {
lab=VDD}
N 380 -510 380 -490 {
lab=VDD}
N 380 -460 390 -460 {
lab=VDD}
N 390 -500 390 -460 {
lab=VDD}
N 380 -500 390 -500 {
lab=VDD}
N 380 -430 380 -410 {
lab=#net6}
N 380 -350 380 -330 {
lab=#net7}
N 380 -270 380 -250 {
lab=GND}
C {devices/code.sym} -120 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/gnd.sym} 160 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -280 -310 0 0 {name=control only_toplevel=false value=".control
save all
dc Vdd 3 3.6 0.1
plot i(Vi1) i(Vi2)
dc temp -50 125 5
plot i(Vi1) i(Vi2)
.endc"}
C {devices/vdd.sym} -170 -130 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -170 -80 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/vdd.sym} 160 -530 0 0 {name=l4 lab=VDD}
C {devices/res.sym} 220 -100 0 0 {name=R1
value=600
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 120 -260 0 1 {name=M1
L=0.28u
W=2.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 200 -260 0 0 {name=M2
L=0.28u
W=2.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 120 -460 0 1 {name=M3
L=0.28u
W=11.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 200 -460 0 0 {name=M4
L=0.28u
W=11.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ammeter.sym} 100 -180 0 0 {name=Vi1 savecurrent=true}
C {devices/ammeter.sym} 220 -180 0 0 {name=Vi2 savecurrent=true}
C {symbols/nfet_03v3.sym} 180 -360 0 1 {name=M5
L=0.56u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 360 -460 0 0 {name=M6
L=0.28u
W=11.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ammeter.sym} 380 -380 0 0 {name=Viout savecurrent=true}
C {devices/vsource.sym} 380 -300 0 0 {name=Vout value=1.2 savecurrent=false}
C {devices/gnd.sym} 380 -250 0 0 {name=l5 lab=GND}
