v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -130 130 -130 {
lab=GND}
N 110 -100 110 -50 {
lab=#net1}
N 30 -130 70 -130 {
lab=#net2}
N 230 -60 230 -50 {
lab=#net1}
N 110 -50 230 -50 {
lab=#net1}
N 30 -210 30 -200 {
lab=GND}
N 30 -210 230 -210 {
lab=GND}
N 230 -210 230 -120 {
lab=GND}
N 110 -210 110 -160 {
lab=GND}
N 30 -140 30 -130 {
lab=#net2}
N 130 -180 130 -130 {
lab=GND}
N 110 -180 130 -180 {
lab=GND}
N 300 -210 300 -30 {
lab=GND}
N 230 -210 300 -210 {
lab=GND}
C {devices/gnd.sym} 300 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 30 -170 0 0 {name=Vgs value=0}
C {devices/vsource.sym} 230 -90 0 0 {name=Vds value=3.3}
C {gf180mcu.sym} -130 -130 0 0 {name=CORNER only_toplevel=false corner=typical}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
dc Vgs 0 3.3 0.01
plot -i(vds) ylog
plot 1/deriv(log10(-i(vds)))
wrdata gf180mcu_pfet_03v3_subthreshold_id.txt -i(vds)
wrdata gf180mcu_pfet_03v3_subthreshold_sfactor.txt 1/deriv(log10(-i(vds)))
.endc"}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} 90 -130 0 0 {name=M1
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
