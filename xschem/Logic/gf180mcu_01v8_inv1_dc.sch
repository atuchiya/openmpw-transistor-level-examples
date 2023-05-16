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
N 30 -110 30 -100 {
lab=#net1}
N 30 -40 180 -40 {
lab=GND}
N 130 -130 150 -130 {
lab=out}
N 130 -130 130 -120 {
lab=out}
N 130 -140 130 -130 {
lab=out}
N 70 -90 90 -90 {
lab=#net1}
N 70 -170 70 -90 {
lab=#net1}
N 70 -170 90 -170 {
lab=#net1}
N 30 -130 70 -130 {
lab=#net1}
N 30 -130 30 -110 {
lab=#net1}
N 130 -60 130 -40 {
lab=GND}
N 130 -90 150 -90 {
lab=GND}
N 150 -90 150 -40 {
lab=GND}
N 250 -100 250 -40 {
lab=GND}
N 180 -40 250 -40 {
lab=GND}
N 250 -230 250 -160 {
lab=#net2}
N 130 -230 250 -230 {
lab=#net2}
N 130 -230 130 -200 {
lab=#net2}
N 130 -170 150 -170 {
lab=#net2}
N 150 -230 150 -170 {
lab=#net2}
N 30 -40 30 -30 {}
C {sky130_fd_pr/corner.sym} -120 -120 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/vsource.sym} 30 -70 0 0 {name=Vin value=3}
C {devices/gnd.sym} 30 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -210 -190 0 0 {name=control only_toplevel=false value=".save all
.dc Vin 0 1.8 0.02"}
C {devices/lab_pin.sym} 150 -130 2 0 {name=p1 sig_type=std_logic lab=out
}
C {devices/vsource.sym} 250 -130 0 0 {name=Vdd value=1.8}
C {sky130_fd_pr/pfet_01v8.sym} 110 -170 0 0 {name=M11
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 110 -90 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/code_shown.sym} -110 40 0 0 {name=measure only_toplevel=false value=".measure dc Vth_logic when V(out)=0.9"}
