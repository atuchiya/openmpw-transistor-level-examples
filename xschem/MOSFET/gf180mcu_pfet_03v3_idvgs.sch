v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -110 130 -110 {
lab=GND}
N 30 -110 70 -110 {
lab=#net1}
N 110 -50 230 -50 {
lab=#net2}
N 30 -190 30 -180 {
lab=GND}
N 30 -190 230 -190 {
lab=GND}
N 230 -190 230 -140 {
lab=GND}
N 230 -80 230 -50 {
lab=#net2}
N 110 -80 110 -50 {
lab=#net2}
N 110 -190 110 -140 {
lab=GND}
N 110 -160 130 -160 {
lab=GND}
N 130 -160 130 -110 {
lab=GND}
N 30 -120 30 -110 {
lab=#net1}
N 300 -190 300 -30 {
lab=GND}
N 230 -190 300 -190 {
lab=GND}
C {devices/gnd.sym} 300 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 30 -150 0 0 {name=Vgs value=0.9}
C {devices/vsource.sym} 230 -110 0 0 {name=Vds value=3.3}
C {gf180mcu.sym} -130 -130 0 0 {name=CORNER only_toplevel=false corner=typical}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
save @m.xm1.m0[gm]
save @m.xm1.m0[id]
dc Vgs 0 3.3 0.02
let id=-i(vds)
plot -i(vds)
plot @m.xm1.m0[gm]
plot @m.xm1.m0[gm] vs id
wrdata gf180mcu_pfet_03v3_idvgs_id.txt -i(vds)
wrdata gf180mcu_pfet_03v3_idvgs_gm.txt @m.xm1.m0[gm]
wrdata gf180mcu_pfet_03v3_idvgs_gmid.txt @m.xm1.m0[gm] vs id
.endc"}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} 90 -110 0 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
