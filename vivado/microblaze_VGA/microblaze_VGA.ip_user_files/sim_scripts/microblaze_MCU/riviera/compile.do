vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v11_0_0
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_15
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_15
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/axi_clock_converter_v2_1_17

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v11_0_0 riviera/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 riviera/mdm_v3_2_15
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap axi_clock_converter_v2_1_17 riviera/axi_clock_converter_v2_1_17

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_microblaze_0_0/sim/microblaze_MCU_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_dlmb_v10_0/sim/microblaze_MCU_dlmb_v10_0.vhd" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_ilmb_v10_0/sim/microblaze_MCU_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_dlmb_bram_if_cntlr_0/sim/microblaze_MCU_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_ilmb_bram_if_cntlr_0/sim/microblaze_MCU_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_lmb_bram_0/sim/microblaze_MCU_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_mdm_1_0/sim/microblaze_MCU_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_clk_wiz_1_0/microblaze_MCU_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_clk_wiz_1_0/microblaze_MCU_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_rst_clk_wiz_1_100M_0/sim/microblaze_MCU_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../bd/microblaze_MCU/ipshared/7072/src/draw_background.v" \
"../../../bd/microblaze_MCU/ipshared/7072/hdl/vga_basic_control_v1_0_S00_AXI.v" \
"../../../bd/microblaze_MCU/ipshared/7072/src/vga_timing.v" \
"../../../bd/microblaze_MCU/ipshared/7072/hdl/vga_basic_control_v1_0.v" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_vga_basic_control_0_0/sim/microblaze_MCU_vga_basic_control_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_rst_clk_wiz_1_40M_0/sim/microblaze_MCU_rst_clk_wiz_1_40M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../bd/microblaze_MCU/sim/microblaze_MCU.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_xbar_0/sim/microblaze_MCU_xbar_0.v" \
"../../../bd/microblaze_MCU/ipshared/42c3/src/PS2Receiver.v" \
"../../../bd/microblaze_MCU/ipshared/42c3/src/debouncer.v" \
"../../../bd/microblaze_MCU/ipshared/42c3/hdl/ps2_keyboard_v1_0_S00_AXI.v" \
"../../../bd/microblaze_MCU/ipshared/42c3/hdl/ps2_keyboard_v1_0.v" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_ps2_keyboard_0_0/sim/microblaze_MCU_ps2_keyboard_0_0.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/85a3" "+incdir+../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl" \
"../../../bd/microblaze_MCU/ip/microblaze_MCU_auto_cc_0/sim/microblaze_MCU_auto_cc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

