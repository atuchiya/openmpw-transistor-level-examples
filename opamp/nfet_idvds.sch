v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -130 30 -120 {
lab=#net1}
N 30 -130 70 -130 {
lab=#net1}
N 110 -130 130 -130 {
lab=GND}
N 130 -130 130 -80 {
lab=GND}
N 110 -80 130 -80 {
lab=GND}
N 110 -100 110 -80 {
lab=GND}
N 30 -60 30 -30 {
lab=GND}
N 30 -50 250 -50 {
lab=GND}
N 250 -60 250 -50 {
lab=GND}
N 110 -80 110 -50 {
lab=GND}
N 110 -180 110 -160 {
lab=#net2}
N 110 -180 250 -180 {
lab=#net2}
N 250 -180 250 -120 {
lab=#net2}
C {devices/code_shown.sym} -460 -340 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 90 -130 0 0 {name=M1
L=0.28u
W=2.8u
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
C {devices/vsource.sym} 30 -90 0 0 {name=Vgs value=0.8}
C {devices/vsource.sym} 250 -90 0 0 {name=Vds value=1.65}
C {devices/gnd.sym} 30 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -460 -250 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
save all
save @m.xm1.m0[gds]
save @m.xm1.m0[gm]
save @m.xm1.m0[vth]
dc vds 0 3.3 0.01
plot -i(Vds)
plot @m.xm1.m0[vth]
plot 1/@m.xm1.m0[gds]
plot @m.xm1.m0[gm]
plot -@m.xm1.m0[gm]/i(vds)
.endc"}
