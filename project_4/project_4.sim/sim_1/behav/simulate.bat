@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim simulation_sixteenbit_camparater_behav -key {Behavioral:sim_1:Functional:simulation_sixteenbit_camparater} -tclbatch simulation_sixteenbit_camparater.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
