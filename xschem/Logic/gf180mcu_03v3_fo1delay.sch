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
N 630 -150 630 -120 {
lab=#net1}
N 630 -60 630 -40 {
lab=GND}
N 30 -60 30 -40 {
lab=GND}
N 30 -150 30 -120 {
lab=in}
N 30 -170 30 -150 {
lab=in}
N 120 -110 120 -40 {
lab=GND}
N 120 -210 120 -190 {
lab=VDD}
N 260 -110 260 -40 {
lab=GND}
N 260 -210 260 -190 {
lab=VDD}
N 400 -110 400 -40 {
lab=GND}
N 400 -210 400 -190 {
lab=VDD}
N 540 -110 540 -40 {
lab=GND}
N 540 -210 540 -190 {
lab=VDD}
N 30 -150 70 -150 {
lab=in}
N 190 -150 210 -150 {
lab=#net2}
N 330 -150 350 -150 {
lab=fo1_in}
N 470 -150 490 -150 {
lab=fo1_out}
N 610 -150 630 -150 {
lab=#net1}
N 340 -170 340 -150 {
lab=fo1_in}
N 480 -170 480 -150 {
lab=fo1_out}
C {devices/code_shown.sym} 10 40 0 0 {name=control only_toplevel=false value=".save all
.control
tran 0.02p 2000p
plot in fo1_in fo1_out
wrdata gf180mcu_03v3_fo1delay.txt in fo1_in fo1_out
.endc"}
C {devices/vsource.sym} -60 -130 0 0 {name=Vdd value=vdd}
C {devices/vdd.sym} -60 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -60 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 30 -40 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 30 -90 0 0 {name=Vin value="pwl 0 0 10p 0 20p vdd 1000p vdd 1010p 0"}
C {devices/capa.sym} 630 -90 0 0 {name=Cload
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 340 -170 1 0 {name=p1 sig_type=std_logic lab=fo1_in}
C {devices/lab_pin.sym} 480 -170 1 0 {name=p2 sig_type=std_logic lab=fo1_out}
C {devices/lab_pin.sym} 30 -170 1 0 {name=p3 sig_type=std_logic lab=in}
C {devices/gnd.sym} 120 -40 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 120 -210 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 630 -40 0 0 {name=l19 lab=GND}
C {symbols/gf180mcu.sym} -220 -130 0 0 {name=CORNER only_toplevel=false corner=typical}
C {symbols/gf180mcu_03v3_inv1.sym} 120 -150 0 0 {name=X1}
C {symbols/gf180mcu_03v3_inv1.sym} 260 -150 0 0 {name=X2}
C {symbols/gf180mcu_03v3_inv1.sym} 400 -150 0 0 {name=X3}
C {symbols/gf180mcu_03v3_inv1.sym} 540 -150 0 0 {name=X4}
C {devices/gnd.sym} 260 -40 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 260 -210 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 400 -40 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 400 -210 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 540 -40 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} 540 -210 0 0 {name=l9 lab=VDD}
C {devices/code_shown.sym} -210 -270 0 0 {name=param only_toplevel=false value=".param vdd=3.3"}
C {devices/code_shown.sym} 10 190 0 0 {name=measure1 only_toplevel=false value=".measure tran trise trig v(fo1_out) val='vdd * 0.8' fall=1 targ v(fo1_out) val='vdd * 0.2' fall=1
.measure tran tfall trig v(fo1_out) val='vdd * 0.2' rise=1 targ v(fo1_out) val='vdd * 0.8' rise=1
.measure tran delay_rise trig v(fo1_in) val='vdd * 0.5' fall=1 targ v(fo1_out) val='vdd * 0.5' rise=1
.measure tran delay_fall trig v(fo1_in) val='vdd * 0.5' rise=1 targ v(fo1_out) val='vdd * 0.5' fall=1"}
