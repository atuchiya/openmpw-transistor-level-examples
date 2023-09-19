v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -120 60 -120 {
lab=#net1}
N 100 -120 120 -120 {
lab=#net2}
N 100 -90 100 -70 {
lab=GND}
N 100 -70 100 -40 {
lab=GND}
N 100 -170 100 -150 {
lab=#net2}
N 120 -170 120 -120 {
lab=#net2}
N 100 -170 120 -170 {
lab=#net2}
N 20 -210 20 -190 {
lab=#net2}
N 20 -210 240 -210 {
lab=#net2}
N 240 -210 240 -170 {
lab=#net2}
N 100 -210 100 -170 {
lab=#net2}
N 20 -130 20 -120 {
lab=#net1}
N 100 -60 240 -60 {
lab=GND}
N 240 -90 240 -60 {
lab=GND}
N 240 -170 240 -150 {}
C {devices/vsource.sym} 20 -160 0 0 {name=Vgs value=1.65}
C {devices/vsource.sym} 240 -120 0 0 {name=Vds value=1.65}
C {devices/gnd.sym} 100 -40 0 0 {name=l1 lab=GND}
C {symbols/pfet_03v3.sym} 80 -120 0 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {devices/code_shown.sym} -450 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -450 -250 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
save all
save @m.xm1.m0[gds]
save @m.xm1.m0[gm]
save @m.xm1.m0[vth]
dc vgs 0 3.3 0.01
plot -i(Vds)
plot @m.xm1.m0[vth]
plot @m.xm1.m0[gm]
plot -@m.xm1.m0[gm]/i(vds)
.endc"}
