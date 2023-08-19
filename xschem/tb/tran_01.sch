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
N 40 -500 40 -480 {
lab=in1}
N 40 -420 40 -400 {
lab=GND}
N 40 -500 100 -500 {
lab=in1}
N 260 -420 260 -400 {
lab=GND}
N 230 -500 260 -500 {
lab=out1}
N 260 -500 260 -480 {
lab=out1}
N 40 -310 40 -290 {
lab=in2}
N 40 -230 40 -210 {
lab=GND}
N 40 -310 100 -310 {
lab=in2}
N 260 -230 260 -210 {
lab=GND}
N 230 -310 260 -310 {
lab=out2}
N 260 -310 260 -290 {
lab=out2}
N 40 -130 40 -110 {
lab=in3}
N 40 -50 40 -30 {
lab=GND}
N 40 -130 100 -130 {
lab=in3}
N 260 -50 260 -30 {
lab=GND}
N 230 -130 260 -130 {
lab=out3}
N 260 -130 260 -110 {
lab=out3}
C {devices/code.sym} -120 -120 0 0 {name=MOS_model only_toplevel=false value=".model nch nmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )
.model pch pmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )"}
C {devices/vdd.sym} -160 -130 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -160 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 -80 0 0 {name=Vdd value=vdd}
C {devices/vsource.sym} 40 -450 0 0 {name=Vin_pulse value="pulse (0 vdd 10p 100p 100p 5n 10n 3)"}
C {devices/gnd.sym} 40 -400 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 40 -500 0 0 {name=p2 sig_type=std_logic lab=in1}
C {devices/code_shown.sym} 340 -490 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
tran 10p 50n
plot V(in1), V(out1)
plot V(in2), V(out2)
plot V(in3), V(out3)
.endc"}
C {devices/code_shown.sym} -170 -200 0 0 {name=param only_toplevel=false value=".param vdd=1.8"}
C {cs.sym} 90 -500 0 0 {name=X1}
C {devices/capa.sym} 260 -450 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 -400 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 260 -500 2 0 {name=p1 sig_type=std_logic lab=out1
}
C {devices/vsource.sym} 40 -260 0 0 {name=Vin_sin value="sin ('vdd/2' 'vdd/2' 100Meg)"}
C {devices/gnd.sym} 40 -210 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 40 -310 0 0 {name=p3 sig_type=std_logic lab=in2}
C {cs.sym} 90 -310 0 0 {name=X2}
C {devices/capa.sym} 260 -260 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 -210 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 260 -310 2 0 {name=p4 sig_type=std_logic lab=out2
}
C {devices/vsource.sym} 40 -80 0 0 {name=Vin_pwl value="pwl (0 0 100p 0 1n 'vdd/2' 5n vdd 5.1n 0 7n 0 15n vdd 30n 'vdd/3' 40n 0 )"}
C {devices/gnd.sym} 40 -30 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p5 sig_type=std_logic lab=in3}
C {cs.sym} 90 -130 0 0 {name=X3}
C {devices/capa.sym} 260 -80 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 -30 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 260 -130 2 0 {name=p6 sig_type=std_logic lab=out3
}
