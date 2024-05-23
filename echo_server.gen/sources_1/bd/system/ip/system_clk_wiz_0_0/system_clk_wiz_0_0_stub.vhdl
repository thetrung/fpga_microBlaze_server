-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed May 22 08:16:25 2024
-- Host        : deulamco-4060M running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/deulamco/Documents/echo_server/echo_server.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_stub.vhdl
-- Design      : system_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_0_0 is
  Port ( 
    clk_out166 : out STD_LOGIC;
    clk_out200 : out STD_LOGIC;
    clk_out25 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_0_0;

architecture stub of system_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out166,clk_out200,clk_out25,resetn,locked,clk_in1";
begin
end;
