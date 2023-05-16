v {xschem version=3.1.0 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N -60 -100 -60 -40 {
lab=GND}
N -60 -210 -60 -160 {
lab=VDD}
N 190 -150 190 -140 {
lab=#net1}
N 190 -160 190 -150 {
lab=#net1}
N 130 -110 150 -110 {
lab=in}
N 130 -190 130 -110 {
lab=in}
N 130 -190 150 -190 {
lab=in}
N 190 -110 210 -110 {
lab=GND}
N 210 -110 210 -60 {
lab=GND}
N 190 -190 210 -190 {
lab=VDD}
N 190 -150 250 -150 {
lab=#net1}
N 190 -270 190 -220 {
lab=VDD}
N 190 -230 210 -230 {
lab=VDD}
N 210 -230 210 -190 {
lab=VDD}
N 190 -80 190 -40 {
lab=GND}
N 190 -60 210 -60 {
lab=GND}
N 310 -150 310 -140 {
lab=fo1_in}
N 310 -160 310 -150 {
lab=fo1_in}
N 250 -110 270 -110 {
lab=#net1}
N 250 -190 250 -110 {
lab=#net1}
N 250 -190 270 -190 {
lab=#net1}
N 310 -110 330 -110 {
lab=GND}
N 330 -110 330 -60 {
lab=GND}
N 310 -190 330 -190 {
lab=VDD}
N 310 -150 370 -150 {
lab=fo1_in}
N 310 -270 310 -220 {
lab=VDD}
N 310 -230 330 -230 {
lab=VDD}
N 330 -230 330 -190 {
lab=VDD}
N 310 -80 310 -40 {
lab=GND}
N 310 -60 330 -60 {
lab=GND}
N 430 -150 430 -140 {
lab=fo1_out}
N 430 -160 430 -150 {
lab=fo1_out}
N 370 -110 390 -110 {
lab=fo1_in}
N 370 -190 370 -110 {
lab=fo1_in}
N 370 -190 390 -190 {
lab=fo1_in}
N 430 -110 450 -110 {
lab=GND}
N 450 -110 450 -60 {
lab=GND}
N 430 -190 450 -190 {
lab=VDD}
N 430 -150 490 -150 {
lab=fo1_out}
N 430 -270 430 -220 {
lab=VDD}
N 430 -230 450 -230 {
lab=VDD}
N 450 -230 450 -190 {
lab=VDD}
N 430 -80 430 -40 {
lab=GND}
N 430 -60 450 -60 {
lab=GND}
N 550 -150 550 -140 {
lab=#net2}
N 550 -160 550 -150 {
lab=#net2}
N 490 -110 510 -110 {
lab=fo1_out}
N 490 -190 490 -110 {
lab=fo1_out}
N 490 -190 510 -190 {
lab=fo1_out}
N 550 -110 570 -110 {
lab=GND}
N 570 -110 570 -60 {
lab=GND}
N 550 -190 570 -190 {
lab=VDD}
N 550 -270 550 -220 {
lab=VDD}
N 550 -230 570 -230 {
lab=VDD}
N 570 -230 570 -190 {
lab=VDD}
N 550 -80 550 -40 {
lab=GND}
N 550 -60 570 -60 {
lab=GND}
N 370 -270 370 -190 {
lab=fo1_in}
N 490 -270 490 -190 {
lab=fo1_out}
N 550 -150 670 -150 {
lab=#net2}
N 670 -150 670 -120 {
lab=#net2}
N 670 -60 670 -40 {
lab=GND}
N 30 -60 30 -40 {
lab=GND}
N 30 -150 130 -150 {
lab=in}
N 30 -150 30 -120 {
lab=in}
N 30 -170 30 -150 {
lab=in}
C {sky130_fd_pr/corner.sym} -210 -120 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".save all
.control
tran 0.02p 400p
plot in fo1_in fo1_out
wrdata sky130A_01v8lvt_fo1delay.txt in fo1_in fo1_out
.endc"}
C {devices/vsource.sym} -60 -130 0 0 {name=Vdd value=1.8}
C {devices/code_shown.sym} 10 190 0 0 {name=measure only_toplevel=false value=".measure tran trise trig v(fo1_out) val=1.44 fall=1 targ v(fo1_out) val=0.36 fall=1
.measure tran tfall trig v(fo1_out) val=0.36 rise=1 targ v(fo1_out) val=1.44 rise=1
.measure tran delay_rise trig v(fo1_in) val=0.9 fall=1 targ v(fo1_out) val=0.9 rise=1
.measure tran delay_fall trig v(fo1_in) val=0.9 rise=1 targ v(fo1_out) val=0.9 fall=1"}
C {devices/vdd.sym} -60 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -60 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 30 -40 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 30 -90 0 0 {name=Vin value="pwl 0 0 10p 0 20p 1.8 200p 1.8 210p 0"}
C {devices/capa.sym} 670 -90 0 0 {name=Cload
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 -270 1 0 {name=p1 sig_type=std_logic lab=fo1_in}
C {devices/lab_pin.sym} 490 -270 1 0 {name=p2 sig_type=std_logic lab=fo1_out}
C {devices/lab_pin.sym} 30 -170 1 0 {name=p3 sig_type=std_logic lab=in}
C {devices/gnd.sym} 190 -40 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 310 -40 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 430 -40 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 550 -40 0 0 {name=l14 lab=GND}
C {devices/vdd.sym} 550 -270 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 430 -270 0 0 {name=l16 lab=VDD}
C {devices/vdd.sym} 310 -270 0 0 {name=l17 lab=VDD}
C {devices/vdd.sym} 190 -270 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 670 -40 0 0 {name=l19 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 170 -190 0 0 {name=M10
L=0.35
W=3
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 -110 0 0 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 290 -190 0 0 {name=M1
L=0.35
W=3
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 -110 0 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 410 -190 0 0 {name=M4
L=0.35
W=3
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 410 -110 0 0 {name=M5
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 530 -190 0 0 {name=M6
L=0.35
W=3
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 530 -110 0 0 {name=M7
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
