# Design
create_design and2VErilog
add_design_file -V_2001 ./rtl/and2.v
set_top_module and2
add_constraint_file constraints.sdc

# Device target
target_device MPW1
set_device_size 4x4

# Compilation
synthesize delay
pnr_netlist_lang verilog
packing
place
route
sta
bitstream force
