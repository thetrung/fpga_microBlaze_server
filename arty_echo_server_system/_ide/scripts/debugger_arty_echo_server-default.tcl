# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/deulamco/Documents/FPGA/echo_server/arty_echo_server_system/_ide/scripts/debugger_arty_echo_server-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/deulamco/Documents/FPGA/echo_server/arty_echo_server_system/_ide/scripts/debugger_arty_echo_server-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty 210319A2CBF7A" && level==0 && jtag_device_ctx=="jsn-Arty-210319A2CBF7A-0362d093-0"}
fpga -file /home/deulamco/Documents/FPGA/echo_server/arty_echo_server/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/deulamco/Documents/FPGA/echo_server/platform_standalone/export/platform_standalone/hw/system_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/deulamco/Documents/FPGA/echo_server/arty_echo_server/Debug/arty_echo_server.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
