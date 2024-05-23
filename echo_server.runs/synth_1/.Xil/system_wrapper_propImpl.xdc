set_property SRC_FILE_INFO {cfile:/home/deulamco/Documents/FPGA/echo_server/echo_server.srcs/constrs_1/new/arty_eth.xdc rfile:../../../echo_server.srcs/constrs_1/new/arty_eth.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G18    IOSTANDARD LVCMOS33 } [get_ports { eth_ref_clk }]; #         Sch=eth_ref_clk
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE TRUE [get_nets system_i/clk_wiz_0/inst/clk_out166];
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
