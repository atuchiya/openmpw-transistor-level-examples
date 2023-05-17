v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -130 130 -130 {
lab=GND}
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
N 110 -90 130 -90 {
lab=GND}
N 130 -130 130 -90 {
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
C {devices/vsource.sym} 30 -90 0 0 {name=Vgs value=0}
C {devices/vsource.sym} 230 -90 0 0 {name=Vds value=3.3}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
dc Vgs 0 3.3 0.01
plot -i(vds) ylog
plot 1/deriv(log10(-i(vds)))
wrdata gf180mcu_nfet_03v3_subthreshold_id.txt -i(vds)
wrdata gf180mcu_nfet_03v3_subthreshold_sfactor.txt 1/deriv(log10(-i(vds)))
.endc"}
C {symbols/gf180mcu.sym} -130 -120 0 0 {name=CORNER only_toplevel=false corner=typical}
