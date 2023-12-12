create_project -force -part  xc7s50csga324-1 ip_3_tb ip_3_tb

#read_verilog -sv [ glob ./hdl/*.sv ]
#read_verilog  [ glob ./hdl/*.v ]
#read_mem [ glob ./data/*.mem ]
#read_verilog -sv [ glob ./sim/*.sv ]
read_verilog -sv ./hdl/recorder.sv
read_verilog -sv ./sim/recorder_tb.sv
read_verilog -v ./hdl/xilinx_true_dual_port_read_first_2_clock_ram.v


read_ip ./ip/mult_gen_0/mult_gen_0.xci

#read_ip ./adder/adder.xci
generate_target all [get_ips]
synth_ip [get_ips]

set_property top recorder_tb [get_fileset sim_1]
# set_property top core_tb [get_fileset sim_1]
synth_design -top recorder_tb

launch_simulation
restart
open_vcd
log_vcd *
run all
flush_vcd
close_vcd

