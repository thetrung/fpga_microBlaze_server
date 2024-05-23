# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/deulamco/Documents/FPGA/echo_server/platform_standalone/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/deulamco/Documents/FPGA/echo_server/platform_standalone/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {platform_standalone}\
-hw {/home/deulamco/Documents/FPGA/echo_server/system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {/home/deulamco/Documents/FPGA/echo_server}

platform write
platform generate -domains 
platform active {platform_standalone}
platform generate
bsp reload
bsp setlib -name lwip211 -ver 1.8
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
bsp config phy_link_speed "CONFIG_LINKSPEED100"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform active {platform_standalone}
bsp reload
bsp setlib -name xiltimer -ver 1.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform clean
platform clean
platform generate
platform clean
platform generate
platform generate
