v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -40 110 -30 {
lab=GND}
N 110 -50 110 -40 {
lab=GND}
N 110 -100 110 -50 {
lab=GND}
N 30 -130 70 -130 {
lab=#net1}
N 30 -130 30 -120 {
lab=#net1}
N 30 -60 30 -50 {
lab=GND}
N 30 -50 110 -50 {
lab=GND}
N 230 -60 230 -50 {
lab=GND}
N 110 -50 230 -50 {
lab=GND}
N 110 -180 110 -160 {
lab=#net2}
N 110 -180 230 -180 {
lab=#net2}
N 230 -180 230 -120 {
lab=#net2}
N 110 -130 160 -130 {
lab=#net3}
N 160 -130 160 -120 {
lab=#net3}
N 160 -60 160 -50 {
lab=GND}
C {devices/gnd.sym} 110 -30 0 0 {name=l1 lab=GND}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 90 -130 0 0 {name=M1
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
C {devices/vsource.sym} 30 -90 0 0 {name=Vgs value=1.0}
C {devices/vsource.sym} 230 -90 0 0 {name=Vds value=3.3}
C {gf180mcu.sym} -130 -130 0 0 {name=CORNER only_toplevel=false corner=typical}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
save @m.xm1.m0[vth]
dc Vbs -3.3 1 0.02
plot @m.xm1.m0[vth]
wrdata gf180mcu_nfet_03v3_body.txt @m.xm1.m0[vth]
.endc"}
C {devices/vsource.sym} 160 -90 0 0 {name=Vbs value=1.0}
