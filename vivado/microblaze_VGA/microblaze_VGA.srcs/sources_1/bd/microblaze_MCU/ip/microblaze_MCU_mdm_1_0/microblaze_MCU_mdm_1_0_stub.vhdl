-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Sep  5 18:26:34 2019
-- Host        : BoomBoom running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/filip/Projects/xilinx/microblaze_VGA/microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ip/microblaze_MCU_mdm_1_0/microblaze_MCU_mdm_1_0_stub.vhdl
-- Design      : microblaze_MCU_mdm_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_MCU_mdm_1_0 is
  Port ( 
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );

end microblaze_MCU_mdm_1_0;

architecture stub of microblaze_MCU_mdm_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Debug_SYS_Rst,Dbg_Clk_0,Dbg_TDI_0,Dbg_TDO_0,Dbg_Reg_En_0[0:7],Dbg_Capture_0,Dbg_Shift_0,Dbg_Update_0,Dbg_Rst_0,Dbg_Disable_0";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MDM,Vivado 2018.3";
begin
end;
