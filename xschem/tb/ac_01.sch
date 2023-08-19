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
N 260 -50 260 -30 {
lab=GND}
N 230 -130 260 -130 {
lab=out}
N 260 -130 260 -110 {
lab=out}
C {devices/code.sym} -120 -120 0 0 {name=MOS_model only_toplevel=false value=".model nch nmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )
.model pch pmos ( version=4.7 level=54 lmin=0.1u lmax=20u wmin=0.1u wmax=10u  )"}
C {devices/vdd.sym} -160 -130 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -160 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 -80 0 0 {name=Vdd value=vdd}
C {devices/vsource.sym} 40 -80 0 0 {name=Vin value="DC 'vdd/2' AC 1"}
C {devices/gnd.sym} 40 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 330 -320 0 0 {name=control only_toplevel=false value=".option savecurrents
.control
save all
save @M.X1.M1[id]
op
let id=@M.X1.M1[id]
let isupply=-i(vdd)
print 'id * vdd'
print 'isupply * vdd'
ac dec 20 10k 10G
plot Vdb(out)
plot Vp(out)
.endc"}
C {devices/code_shown.sym} 330 -50 0 0 {name=measure value=".measure ac Gdc find VdB(out) at=10e3
.measure ac BW when VdB(out)=1.8 from=10e3"}
C {devices/code_shown.sym} -170 -200 0 0 {name=param only_toplevel=false value=".param vdd=1.8"}
C {/home/tsuchiya/tmp/openmpw-transistor-level-examples/xschem/tb/cs.sym} 90 -130 0 0 {name=X1}
C {devices/capa.sym} 260 -80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 -30 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 260 -130 2 0 {name=p1 sig_type=std_logic lab=out
}
