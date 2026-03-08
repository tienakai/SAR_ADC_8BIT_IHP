v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 -300 480 -280 {lab=#net1}
N 450 -280 450 -270 {lab=#net2}
N 310 -240 370 -240 {lab=#net3}
N 370 -240 370 -210 {lab=#net3}
N 310 -230 320 -230 {lab=#net4}
N 320 -230 320 -200 {lab=#net4}
N 300 -300 480 -300 {lab=#net1}
N 300 -280 450 -280 {lab=#net2}
N 300 -260 360 -260 {lab=out}
N -30 -190 -30 -170 {
lab=GND}
N -30 -280 150 -280 {
lab=#net5}
N -30 -280 -30 -250 {
lab=#net5}
C {vsource.sym} 450 -240 0 0 {name=V6 value=0 savecurrent=false}
C {vsource.sym} 480 -250 0 0 {name=V7 value=3.3 savecurrent=false}
C {vsource.sym} 370 -180 0 0 {name=V8 value=0 savecurrent=false}
C {vsource.sym} 320 -170 0 0 {name=V9 value=1.2 savecurrent=false}
C {vsource.sym} -30 -220 0 0 {name=V10 value="dc 0 ac 0 sin(0.6 0.5 100meg 1n)" savecurrent=false}
C {gnd.sym} 480 -220 0 0 {name=l6 lab=GND}
C {gnd.sym} 450 -210 0 0 {name=l7 lab=GND}
C {gnd.sym} 370 -150 0 0 {name=l8 lab=GND}
C {gnd.sym} 320 -140 0 0 {name=l9 lab=GND}
C {gnd.sym} -30 -170 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 360 -260 0 1 {name=p2 sig_type=std_logic lab=out}
C {simulator_commands_shown.sym} -140 -440 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {code_shown.sym} -260 -690 0 0 {name=s1 only_toplevel=false value="
.include $PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.include $PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_io/spice/sg13g2_io.spi
"}
C {simulator_commands_shown.sym} -430 -470 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="

.param temp=27
.control
save all
tran 100p 1u
write iopad.raw
.endc
"}
C {/home/cass/make_sym/sg13g2_IOPadAnalog.sym} 190 -240 0 0 {name=x1}
