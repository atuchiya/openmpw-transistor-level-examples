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
C {devices/vsource.sym} 30 -90 0 0 {name=Vgs value=0}
C {devices/vsource.sym} 230 -90 0 0 {name=Vds value=1.8}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
dc Vgs 0 1.8 0.01
plot -i(vds) ylog
plot 1/deriv(log10(-i(vds)))
wrdata sky130A_nfet_01v8_subthreshold_id.txt -i(vds)
wrdata sky130A_nfet_01v8_subthreshold_sfactor.txt 1/deriv(log10(-i(vds)))
.endc"}
C {sky130_fd_pr/corner.sym} -120 -120 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} 90 -130 0 0 {name=M2
L=0.15
W=1.5
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
