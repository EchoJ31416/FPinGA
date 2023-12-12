create_project -force -part  xc7s50csga324-1 ip_4_tb ip_4_tb

#read_verilog -sv [ glob ./hdl/*.sv ]
#read_verilog  [ glob ./hdl/*.v ]
#read_mem [ glob ./data/*.mem ]
#read_verilog -sv [ glob ./sim/*.sv ]
read_verilog -sv ./sim/fsm_tb.sv
read_verilog -sv ./hdl/tone_detection_fsm.sv

read_ip ./ip/div_gen_0/div_gen_0.xci

#read_ip ./adder/adder.xci
generate_target all [get_ips]
synth_ip [get_ips]

set_property top fsm_tb [get_fileset sim_1]
# set_property top core_tb [get_fileset sim_1]
synth_design -top fsm_tb

launch_simulation
restart
open_vcd
log_vcd *
run all
flush_vcd
close_vcd

