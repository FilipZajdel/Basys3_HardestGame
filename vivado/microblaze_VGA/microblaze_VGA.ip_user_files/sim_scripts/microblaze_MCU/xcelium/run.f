-makelib xcelium_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_0 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_microblaze_0_0/sim/microblaze_MCU_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_dlmb_v10_0/sim/microblaze_MCU_dlmb_v10_0.vhd" \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_ilmb_v10_0/sim/microblaze_MCU_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_dlmb_bram_if_cntlr_0/sim/microblaze_MCU_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_ilmb_bram_if_cntlr_0/sim/microblaze_MCU_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_lmb_bram_0/sim/microblaze_MCU_lmb_bram_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_15 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_mdm_1_0/sim/microblaze_MCU_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_clk_wiz_1_0/microblaze_MCU_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_clk_wiz_1_0/microblaze_MCU_clk_wiz_1_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_rst_clk_wiz_1_100M_0/sim/microblaze_MCU_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ipshared/7072/src/draw_background.v" \
  "../../../bd/microblaze_MCU/ipshared/7072/hdl/vga_basic_control_v1_0_S00_AXI.v" \
  "../../../bd/microblaze_MCU/ipshared/7072/src/vga_timing.v" \
  "../../../bd/microblaze_MCU/ipshared/7072/hdl/vga_basic_control_v1_0.v" \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_vga_basic_control_0_0/sim/microblaze_MCU_vga_basic_control_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_rst_clk_wiz_1_40M_0/sim/microblaze_MCU_rst_clk_wiz_1_40M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/sim/microblaze_MCU.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_xbar_0/sim/microblaze_MCU_xbar_0.v" \
  "../../../bd/microblaze_MCU/ipshared/42c3/src/PS2Receiver.v" \
  "../../../bd/microblaze_MCU/ipshared/42c3/src/debouncer.v" \
  "../../../bd/microblaze_MCU/ipshared/42c3/hdl/ps2_keyboard_v1_0_S00_AXI.v" \
  "../../../bd/microblaze_MCU/ipshared/42c3/hdl/ps2_keyboard_v1_0.v" \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_ps2_keyboard_0_0/sim/microblaze_MCU_ps2_keyboard_0_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_17 \
  "../../../../microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/microblaze_MCU/ip/microblaze_MCU_auto_cc_0/sim/microblaze_MCU_auto_cc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

