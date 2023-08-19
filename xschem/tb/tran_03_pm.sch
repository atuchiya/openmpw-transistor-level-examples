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
N 30 -130 30 -110 {
lab=in}
N 30 -50 30 -30 {
lab=GND}
N 30 -130 90 -130 {
lab=in}
N 250 -50 250 -30 {
lab=GND}
N 220 -130 250 -130 {
lab=out}
N 250 -130 250 -110 {
lab=out}
N 30 -220 30 -200 {
lab=GND}
N 30 -300 30 -280 {
lab=pm}
N 30 -300 130 -300 {
lab=pm}
N 130 -300 130 -280 {
lab=pm}
N 130 -220 130 -200 {
lab=GND}
N 130 -210 220 -210 {
lab=GND}
N 220 -220 220 -210 {
lab=GND}
N 130 -290 220 -290 {
lab=pm}
N 220 -290 220 -280 {
lab=pm}
N 130 -300 140 -300 {
lab=pm}
C {devices/code.sym} -120 -120 0 0 {name=MOS_model only_toplevel=false value=".model nch nmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )
.model pch pmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )"}
C {devices/vdd.sym} -160 -130 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -160 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 -80 0 0 {name=Vdd value=vdd}
C {devices/vsource.sym} 30 -80 0 0 {name=Vin value="pwl (0 0 1n 0 2n vdd 20n vdd 21n 0)"}
C {devices/gnd.sym} 30 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 30 -130 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 320 -170 0 0 {name=control only_toplevel=false value=".option savecurrents
.ic V(pm)=0
.control
save all
tran 10p 50n
plot V(in), V(out)
plot 'vdd * integ(-i(Vdd))'
plot V(pm)
.endc"}
C {devices/code_shown.sym} -170 -200 0 0 {name=param only_toplevel=false value=".param vdd=1.8"}
C {cs.sym} 80 -130 0 0 {name=X1}
C {devices/capa.sym} 250 -80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 250 -30 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 250 -130 2 0 {name=p1 sig_type=std_logic lab=out
}
C {devices/cccs.sym} 30 -250 0 0 {name=Fpm vnam=Vdd value=1.8}
C {devices/gnd.sym} 30 -200 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 130 -250 0 0 {name=C2
m=1
value=1000n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 130 -200 0 0 {name=l6 lab=GND}
C {devices/res.sym} 220 -250 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 140 -300 2 0 {name=p3 sig_type=std_logic lab=pm}
