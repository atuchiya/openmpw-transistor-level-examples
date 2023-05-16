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
C {devices/vsource.sym} 230 -110 0 0 {name=Vds value=1.8}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
save @m.xm1.msky130_fd_pr__pfet_01v8[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8[id]
dc Vgs 0 1.8 0.02
let id=-i(vds)
plot -i(vds)
plot @m.xm1.msky130_fd_pr__pfet_01v8[gm]
plot @m.xm1.msky130_fd_pr__pfet_01v8[gm] vs id
wrdata sky130A_pfet_01v8_idvgs_id.txt -i(vds)
wrdata sky130A_pfet_01v8_idvgs_gm.txt @m.xm1.msky130_fd_pr__pfet_01v8[gm]
wrdata sky130A_pfet_01v8_idvgs_gmid.txt @m.xm1.msky130_fd_pr__pfet_01v8[gm] vs id
.endc"}
C {sky130_fd_pr/corner.sym} -120 -120 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/pfet_01v8.sym} 90 -110 0 0 {name=M1
L=0.15
W=1.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
