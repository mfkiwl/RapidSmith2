##############################################################
# Generated by RapidSmith v.2.0 on 05/01/2018 at 09:37:26
##############################################################

create_clock -period 3.333 -name clk300 [get_ports clk_in]
set_propagated_clock [get_clocks clk300]
set_property PACKAGE_PIN N15 [get_ports clk_in]
set_property PACKAGE_PIN K16 [get_ports rx]
set_property PACKAGE_PIN J15 [get_ports tx]
set_property IOSTANDARD LVCMOS18 [get_ports clk_in]
current_instance -quiet
