create_project -force -part  xc7s50csga324-1 ip_5_tb ip_5_tb

read_verilog -sv [ glob ./hdl/*.sv ]
read_verilog  [ glob ./hdl/*.v ]
read_verilog -sv ./sim/top_level_tb.sv

read_ip ./ip/mult_gen_0/mult_gen_0.xci
read_ip ./ip/div_gen_0/div_gen_0.xci
read_ip ./ip/xfft_1/xfft_1.xci
generate_target all [get_ips]
synth_ip [get_ips]

set_property top top_level_tb [get_fileset sim_1]
synth_design -top top_level_tb

launch_simulation
restart
open_vcd
log_vcd *
run all
flush_vcd
close_vcd

