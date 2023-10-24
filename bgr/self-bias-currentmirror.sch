v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {L=Lmin} 100 -470 0 0 1 1 {}
T {L=2Lmin} 460 -470 0 0 1 1 {}
N 30 -50 130 -50 {
lab=GND}
N 30 -70 30 -30 {
lab=GND}
N 130 -390 130 -370 {
lab=#net1}
N 30 -390 30 -130 {
lab=#net1}
N 30 -390 130 -390 {
lab=#net1}
N 130 -310 130 -270 {
lab=#net2}
N 130 -390 250 -390 {
lab=#net1}
N 250 -390 250 -370 {
lab=#net1}
N 250 -310 250 -270 {
lab=#net3}
N 170 -240 210 -240 {
lab=#net2}
N 170 -340 210 -340 {
lab=#net3}
N 200 -300 250 -300 {
lab=#net3}
N 130 -280 180 -280 {
lab=#net2}
N 200 -340 200 -300 {
lab=#net3}
N 180 -280 180 -240 {
lab=#net2}
N 130 -210 130 -200 {
lab=#net4}
N 250 -210 250 -200 {
lab=#net5}
N 130 -130 130 -120 {
lab=#net6}
N 250 -130 250 -120 {
lab=#net7}
N 130 -50 250 -50 {
lab=GND}
N 120 -340 130 -340 {
lab=#net1}
N 120 -380 120 -340 {
lab=#net1}
N 120 -380 130 -380 {
lab=#net1}
N 250 -340 260 -340 {
lab=#net1}
N 260 -380 260 -340 {
lab=#net1}
N 250 -380 260 -380 {
lab=#net1}
N 120 -240 130 -240 {
lab=#net4}
N 120 -240 120 -200 {
lab=#net4}
N 120 -200 130 -200 {
lab=#net4}
N 250 -240 260 -240 {
lab=#net5}
N 260 -240 260 -200 {
lab=#net5}
N 250 -200 260 -200 {
lab=#net5}
N 250 -60 250 -50 {
lab=GND}
N 130 -60 130 -50 {
lab=GND}
N 130 -200 130 -190 {
lab=#net4}
N 250 -200 250 -190 {
lab=#net5}
N 520 -390 520 -370 {
lab=#net1}
N 520 -310 520 -270 {
lab=#net8}
N 520 -390 640 -390 {
lab=#net1}
N 640 -390 640 -370 {
lab=#net1}
N 640 -310 640 -270 {
lab=#net9}
N 560 -240 600 -240 {
lab=#net8}
N 560 -340 600 -340 {
lab=#net9}
N 590 -300 640 -300 {
lab=#net9}
N 520 -280 570 -280 {
lab=#net8}
N 590 -340 590 -300 {
lab=#net9}
N 570 -280 570 -240 {
lab=#net8}
N 520 -210 520 -200 {
lab=#net10}
N 640 -210 640 -200 {
lab=#net11}
N 520 -130 520 -120 {
lab=#net12}
N 640 -130 640 -120 {
lab=#net13}
N 520 -50 640 -50 {
lab=GND}
N 510 -340 520 -340 {
lab=#net1}
N 510 -380 510 -340 {
lab=#net1}
N 510 -380 520 -380 {
lab=#net1}
N 640 -340 650 -340 {
lab=#net1}
N 650 -380 650 -340 {
lab=#net1}
N 640 -380 650 -380 {
lab=#net1}
N 510 -240 520 -240 {
lab=#net10}
N 510 -240 510 -200 {
lab=#net10}
N 510 -200 520 -200 {
lab=#net10}
N 640 -240 650 -240 {
lab=#net11}
N 650 -240 650 -200 {
lab=#net11}
N 640 -200 650 -200 {
lab=#net11}
N 640 -60 640 -50 {
lab=GND}
N 520 -60 520 -50 {
lab=GND}
N 520 -200 520 -190 {
lab=#net10}
N 640 -200 640 -190 {
lab=#net11}
N 250 -50 520 -50 {
lab=GND}
N 250 -390 520 -390 {
lab=#net1}
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
C {devices/gnd.sym} 30 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 30 -100 0 0 {name=Vdd value=3.3}
C {devices/code_shown.sym} -340 -280 0 0 {name=control only_toplevel=false value=".control
save all
dc vdd 0 3.3 0.01
plot i(V1), i(V2)
plot i(V3), i(V4)
plot i(V2) - i(V1), i(V4) - i(V3)
.endc"}
C {symbols/nfet_03v3.sym} 230 -240 0 0 {name=M1
L=0.28u
W=1.12u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 230 -340 0 0 {name=M2
L=0.28u
W=1.12u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 150 -240 0 1 {name=M3
L=0.28u
W=1.12u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 150 -340 0 1 {name=M4
L=0.28u
W=1.12u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ammeter.sym} 130 -160 0 0 {name=V2}
C {devices/ammeter.sym} 250 -160 0 0 {name=V1}
C {devices/res.sym} 250 -90 0 0 {name=R1
value='Ra'
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 620 -240 0 0 {name=M5
L=0.56u
W=2.24u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 620 -340 0 0 {name=M6
L=0.56u
W=2.24u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 540 -240 0 1 {name=M7
L=0.56u
W=2.24u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 540 -340 0 1 {name=M8
L=0.56u
W=2.24u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ammeter.sym} 640 -160 0 0 {name=V3}
C {devices/ammeter.sym} 520 -160 0 0 {name=V4}
C {devices/res.sym} 640 -90 0 0 {name=R3
value='Ra'
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} -340 -360 0 0 {name=param only_toplevel=false value=".param Ra=1000
.param Rb=1000"}
C {devices/res.sym} 130 -90 0 0 {name=R2
value='Rb'
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 520 -90 0 0 {name=R4
value='Rb'
footprint=1206
device=resistor
m=1}
