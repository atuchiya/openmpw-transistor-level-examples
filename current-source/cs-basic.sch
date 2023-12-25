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
N 140 -100 180 -100 {
lab=vgs}
N 100 -330 100 -310 {
lab=VDD}
N 220 -70 220 -50 {
lab=GND}
N 100 -70 100 -50 {
lab=GND}
N 90 -100 100 -100 {
lab=GND}
N 90 -100 90 -60 {
lab=GND}
N 90 -60 100 -60 {
lab=GND}
N 220 -100 230 -100 {
lab=GND}
N 230 -100 230 -60 {
lab=GND}
N 220 -60 230 -60 {
lab=GND}
N 100 -170 100 -130 {
lab=vgs}
N 100 -250 100 -230 {
lab=#net1}
N 100 -150 150 -150 {
lab=vgs}
N 150 -150 150 -100 {
lab=vgs}
N 220 -170 220 -130 {
lab=#net2}
N 300 -170 300 -150 {
lab=GND}
N 220 -250 220 -230 {
lab=#net3}
N 220 -250 300 -250 {
lab=#net3}
N 300 -250 300 -230 {
lab=#net3}
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
dc Vout 0 3.3 0.1 Vdd 3 3.6 0.3
plot i(Vi1) i(Vi2)
plot vgs
dc temp -50 125 5
plot i(Vi1) i(Vi2)
.endc"}
C {devices/vdd.sym} -170 -130 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -170 -80 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/vdd.sym} 100 -330 0 0 {name=l4 lab=VDD}
C {symbols/nfet_03v3.sym} 120 -100 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 200 -100 0 0 {name=M2
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
C {devices/ammeter.sym} 100 -200 0 0 {name=Vi1 savecurrent=true}
C {devices/ammeter.sym} 220 -200 0 0 {name=Vi2 savecurrent=true}
C {devices/res.sym} 100 -280 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 300 -200 0 0 {name=Vout value=1.2 savecurrent=false}
C {devices/gnd.sym} 300 -150 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 150 -150 0 1 {name=p1 sig_type=std_logic lab=vgs}
