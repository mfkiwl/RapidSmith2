set_property PACKAGE_PIN J15 [get_ports {a}]
set_property PACKAGE_PIN C16 [get_ports {b}]
set_property PACKAGE_PIN C17 [get_ports {cout}]
set_property PACKAGE_PIN F18 [get_ports {cin}]
set_property BEL IOB33.OUTBUF [get_cells {cout_OBUF_inst}]
set_property LOC C17 [get_cells {cout_OBUF_inst}]
set_property BEL IOB33.OUTBUF [get_cells {s_OBUF_inst}]
set_property LOC D18 [get_cells {s_OBUF_inst}]
set_property BEL IOB33.INBUF_EN [get_cells {b_IBUF_inst}]
set_property LOC C16 [get_cells {b_IBUF_inst}]
set_property PACKAGE_PIN D18 [get_ports {s}]
set_property BEL IOB33.INBUF_EN [get_cells {cin_IBUF_inst}]
set_property LOC F18 [get_cells {cin_IBUF_inst}]
set_property BEL IOB33.INBUF_EN [get_cells {a_IBUF_inst}]
set_property LOC J15 [get_cells {a_IBUF_inst}]
set_property BEL SLICEM.B6LUT [get_cells {s_OBUF_inst_i_1}]
set_property LOC SLICE_X2Y108 [get_cells {s_OBUF_inst_i_1}]
set_property LOCK_PINS { I0:A1 I1:A2 I2:A3 } [get_cells {s_OBUF_inst_i_1}]
set_property BEL SLICEM.C6LUT [get_cells {cout_OBUF_inst_i_1}]
set_property LOC SLICE_X2Y108 [get_cells {cout_OBUF_inst_i_1}]
#set_property LOCK_PINS { I0:A1 I1:A2 I2:A3 } [get_cells {cout_OBUF_inst_i_1}]
