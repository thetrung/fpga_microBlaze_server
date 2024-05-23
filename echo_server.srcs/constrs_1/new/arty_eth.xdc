set_property -dict { PACKAGE_PIN G18    IOSTANDARD LVCMOS33 } [get_ports { eth_ref_clk }]; #         Sch=eth_ref_clk 

set_property CLOCK_DEDICATED_ROUTE TRUE [get_nets system_i/clk_wiz_0/inst/clk_out166];

set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { sys_clock }];