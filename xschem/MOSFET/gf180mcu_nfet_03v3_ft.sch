v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -110 250 -110 {
lab=GND}
N 230 -40 230 -30 {
lab=GND}
N 230 -50 230 -40 {
lab=GND}
N 150 -50 230 -50 {
lab=GND}
N 230 -70 250 -70 {
lab=GND}
N 250 -110 250 -70 {
lab=GND}
N 350 -60 350 -50 {
lab=GND}
N 230 -50 350 -50 {
lab=GND}
N 350 -180 350 -120 {
lab=#net1}
N 50 -50 150 -50 {
lab=GND}
N 50 -60 50 -50 {
lab=GND}
N 50 -130 50 -120 {
lab=#net2}
N 350 -190 350 -180 {
lab=#net1}
N 350 -230 350 -190 {
lab=#net1}
N 230 -60 230 -50 {
lab=GND}
N 230 -80 230 -60 {
lab=GND}
N 230 -150 230 -140 {
lab=#net3}
N 230 -230 230 -210 {
lab=#net1}
N 230 -230 350 -230 {
lab=#net1}
N 50 -130 70 -130 {
lab=#net2}
N 130 -130 160 -130 {
lab=#net4}
N 160 -130 160 -110 {
lab=#net4}
N 160 -110 190 -110 {
lab=#net4}
C {devices/gnd.sym} 230 -30 0 0 {name=l1 lab=GND}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 210 -110 0 0 {name=M1
L=nfet_l
W=nfet_w
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
C {devices/vsource.sym} 50 -90 0 0 {name=Vgs value="DC 1.65 AC 1"}
C {devices/vsource.sym} 350 -90 0 0 {name=Vds value=1.65}
C {gf180mcu.sym} -130 -120 0 0 {name=CORNER only_toplevel=false corner=typical}
C {devices/code_shown.sym} -220 -270 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
ac dec 20 1e6 1e12
plot vdb(out)
.endc"}
C {devices/code_shown.sym} -220 -350 0 0 {name=param only_toplevel=false value=".param nfet_l=0.28u
.param nfet_w=28u"}
C {devices/vsource.sym} 230 -180 0 0 {name=Vmeas value=0}
C {devices/res.sym} 100 -130 1 0 {name=Rin
value=50
footprint=1206
device=resistor
m=1}
