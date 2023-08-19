v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -160 -130 -160 -110 {
lab=VDD}
N -160 -50 -160 -30 {
lab=GND}
N 40 -130 40 -110 {
lab=in}
N 40 -50 40 -30 {
lab=GND}
N 40 -130 100 -130 {
lab=in}
N 140 -260 140 -240 {
lab=VDD}
N 140 -180 140 -160 {
lab=out}
N 140 -50 140 -30 {
lab=GND}
N 140 -100 140 -50 {
lab=GND}
N 140 -170 170 -170 {
lab=out}
N 140 -130 150 -130 {
lab=GND}
N 150 -130 150 -90 {
lab=GND}
N 140 -90 150 -90 {
lab=GND}
C {devices/code.sym} -120 -120 0 0 {name=MOS_model only_toplevel=false value=".model nch nmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )
.model pch pmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )"}
C {devices/vdd.sym} -160 -130 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -160 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 -80 0 0 {name=Vdd value=vdd}
C {devices/vsource.sym} 40 -80 0 0 {name=Vin value='vdd/2'}
C {devices/gnd.sym} 40 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 230 -260 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
save @M1[gm]
dc Vin 0 1.8 0.02
plot V(out)
plot -i(Vdd)
plot @M1[gm]
.endc"}
C {devices/code_shown.sym} 230 -50 0 0 {name=measure only_toplevel=false value=".measure dc half when V(out)='vdd / 2'"}
C {devices/code_shown.sym} -170 -200 0 0 {name=param only_toplevel=false value=".param vdd=1.8"}
C {devices/gnd.sym} 140 -30 0 0 {name=l4 lab=GND}
C {devices/res.sym} 140 -210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 140 -260 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 170 -170 2 0 {name=p1 sig_type=std_logic lab=out}
C {devices/nmos4.sym} 120 -130 0 0 {name=M1 model=nch w=3.6u l=0.18u m=1}
