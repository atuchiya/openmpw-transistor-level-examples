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
N 160 -460 160 -440 {
lab=VDD}
N 90 -180 100 -180 {
lab=GND}
N 90 -180 90 -140 {
lab=GND}
N 220 -230 230 -230 {
lab=#net1}
N 230 -230 230 -190 {
lab=#net1}
N 220 -190 230 -190 {
lab=#net1}
N 100 -360 100 -340 {
lab=#net2}
N 220 -70 220 -50 {
lab=GND}
N 100 -440 100 -420 {
lab=VDD}
N 100 -440 220 -440 {
lab=VDD}
N 220 -440 220 -420 {
lab=VDD}
N 90 -390 100 -390 {
lab=VDD}
N 90 -430 90 -390 {
lab=VDD}
N 90 -430 100 -430 {
lab=VDD}
N 220 -390 230 -390 {
lab=VDD}
N 230 -430 230 -390 {
lab=VDD}
N 220 -430 230 -430 {
lab=VDD}
N 140 -390 180 -390 {
lab=#net3}
N 220 -360 220 -340 {
lab=#net3}
N 170 -350 220 -350 {
lab=#net3}
N 170 -390 170 -350 {
lab=#net3}
N 100 -150 100 -50 {
lab=GND}
N 90 -140 100 -140 {
lab=GND}
N 220 -200 220 -130 {
lab=#net1}
N 100 -230 180 -230 {
lab=#net4}
N 140 -180 220 -180 {
lab=#net1}
N 220 -280 220 -260 {
lab=#net5}
N 100 -280 100 -210 {
lab=#net4}
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
C {devices/vdd.sym} 160 -460 0 0 {name=l4 lab=VDD}
C {symbols/nfet_03v3.sym} 120 -180 0 1 {name=M1
L=0.56u
W=11.2u
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
C {symbols/nfet_03v3.sym} 200 -230 0 0 {name=M2
L=0.56u
W=11.2u
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
C {devices/ammeter.sym} 100 -310 0 0 {name=Vi1 savecurrent=true}
C {devices/ammeter.sym} 220 -310 0 0 {name=Vi2 savecurrent=true}
C {devices/res.sym} 220 -100 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {symbols/pfet_03v3.sym} 120 -390 0 1 {name=M3
L=0.56u
W=11.2u
nf=4
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
C {symbols/pfet_03v3.sym} 200 -390 0 0 {name=M4
L=0.56u
W=11.2u
nf=4
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
