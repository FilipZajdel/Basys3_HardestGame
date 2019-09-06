-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Sep  5 23:51:45 2019
-- Host        : BoomBoom running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microblaze_MCU_ps2_keyboard_0_0_sim_netlist.vhdl
-- Design      : microblaze_MCU_ps2_keyboard_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer is
  port (
    O_reg_0 : out STD_LOGIC;
    CLK50MHZ : in STD_LOGIC;
    PS2Clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer is
  signal Iv : STD_LOGIC;
  signal O_i_1_n_0 : STD_LOGIC;
  signal O_i_2_n_0 : STD_LOGIC;
  signal \^o_reg_0\ : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of O_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair0";
begin
  O_reg_0 <= \^o_reg_0\;
Iv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => '1',
      D => PS2Clk,
      Q => Iv,
      R => '0'
    );
O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => PS2Clk,
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => O_i_2_n_0,
      I5 => \^o_reg_0\,
      O => O_i_1_n_0
    );
O_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => PS2Clk,
      I1 => Iv,
      I2 => count_reg(4),
      I3 => count_reg(3),
      O => O_i_2_n_0
    );
O_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => O_i_1_n_0,
      Q => \^o_reg_0\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444C44444"
    )
        port map (
      I0 => count_reg(0),
      I1 => \count[4]_i_2_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(3),
      I4 => count_reg(1),
      I5 => count_reg(2),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FF00FF000000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => \count[4]_i_2_n_0\,
      I4 => count_reg(1),
      I5 => count_reg(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D00F000F000F000"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(3),
      I2 => count_reg(2),
      I3 => \count[4]_i_2_n_0\,
      I4 => count_reg(1),
      I5 => count_reg(0),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00007F80000080"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => PS2Clk,
      I4 => Iv,
      I5 => count_reg(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => \count[4]_i_2_n_0\,
      I5 => count_reg(4),
      O => \count[4]_i_1_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Iv,
      I1 => PS2Clk,
      O => \count[4]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count_reg(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count_reg(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => \count[3]_i_1_n_0\,
      Q => count_reg(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => \count[4]_i_1_n_0\,
      Q => count_reg(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0 is
  port (
    O : out STD_LOGIC;
    PS2Data : in STD_LOGIC;
    CLK50MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0 : entity is "debouncer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0 is
  signal Iv_reg_n_0 : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
  signal \O_i_1__0_n_0\ : STD_LOGIC;
  signal \O_i_2__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \O_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[4]_i_3\ : label is "soft_lutpair1";
begin
  O <= \^o\;
Iv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => '1',
      D => PS2Data,
      Q => Iv_reg_n_0,
      R => '0'
    );
\O_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00004000"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(4),
      I2 => Iv_reg_n_0,
      I3 => PS2Data,
      I4 => \O_i_2__0_n_0\,
      I5 => \^o\,
      O => \O_i_1__0_n_0\
    );
\O_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(2),
      O => \O_i_2__0_n_0\
    );
O_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => \O_i_1__0_n_0\,
      Q => \^o\,
      R => '0'
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => p_0_in(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => p_0_in(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      O => p_0_in(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(3),
      O => p_0_in(3)
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PS2Data,
      I1 => Iv_reg_n_0,
      O => \count[4]_i_1__0_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(4),
      I4 => \count_reg__0\(3),
      O => \count[4]_i_2__0_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(4),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(0),
      I4 => \count_reg__0\(2),
      O => p_0_in(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => \count[4]_i_2__0_n_0\,
      D => p_0_in(0),
      Q => \count_reg__0\(0),
      R => \count[4]_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => \count[4]_i_2__0_n_0\,
      D => p_0_in(1),
      Q => \count_reg__0\(1),
      R => \count[4]_i_1__0_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => \count[4]_i_2__0_n_0\,
      D => p_0_in(2),
      Q => \count_reg__0\(2),
      R => \count[4]_i_1__0_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => \count[4]_i_2__0_n_0\,
      D => p_0_in(3),
      Q => \count_reg__0\(3),
      R => \count[4]_i_1__0_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => \count[4]_i_2__0_n_0\,
      D => p_0_in(4),
      Q => \count_reg__0\(4),
      R => \count[4]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PS2Receiver is
  port (
    \keycode_reg[0]_0\ : out STD_LOGIC;
    \keycode_reg[1]_0\ : out STD_LOGIC;
    \keycode_reg[2]_0\ : out STD_LOGIC;
    \keycode_reg[3]_0\ : out STD_LOGIC;
    \keycode_reg[4]_0\ : out STD_LOGIC;
    \keycode_reg[5]_0\ : out STD_LOGIC;
    \keycode_reg[6]_0\ : out STD_LOGIC;
    \keycode_reg[7]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \keycode_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \keycode_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK50MHZ : in STD_LOGIC;
    PS2Clk : in STD_LOGIC;
    PS2Data : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \keycodev_reg[0]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PS2Receiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PS2Receiver is
  signal O : STD_LOGIC;
  signal cnt : STD_LOGIC;
  signal cnt0 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal datacur : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \datacur[0]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[1]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[2]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[3]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[4]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[5]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[6]_i_1_n_0\ : STD_LOGIC;
  signal \datacur[7]_i_1_n_0\ : STD_LOGIC;
  signal db_clk_n_0 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_0 : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal \^keycode_reg[0]_0\ : STD_LOGIC;
  signal \^keycode_reg[15]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^keycode_reg[1]_0\ : STD_LOGIC;
  signal \^keycode_reg[2]_0\ : STD_LOGIC;
  signal \^keycode_reg[3]_0\ : STD_LOGIC;
  signal \^keycode_reg[4]_0\ : STD_LOGIC;
  signal \^keycode_reg[5]_0\ : STD_LOGIC;
  signal \^keycode_reg[6]_0\ : STD_LOGIC;
  signal \^keycode_reg[7]_0\ : STD_LOGIC;
  signal \keycodev[7]_i_10_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_11_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_2_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_4_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_5_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_6_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_8_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_9_n_0\ : STD_LOGIC;
  signal oflag_i_1_n_0 : STD_LOGIC;
  signal pflag : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[3]_i_2\ : label is "soft_lutpair4";
begin
  \keycode_reg[0]_0\ <= \^keycode_reg[0]_0\;
  \keycode_reg[15]_0\(7 downto 0) <= \^keycode_reg[15]_0\(7 downto 0);
  \keycode_reg[1]_0\ <= \^keycode_reg[1]_0\;
  \keycode_reg[2]_0\ <= \^keycode_reg[2]_0\;
  \keycode_reg[3]_0\ <= \^keycode_reg[3]_0\;
  \keycode_reg[4]_0\ <= \^keycode_reg[4]_0\;
  \keycode_reg[5]_0\ <= \^keycode_reg[5]_0\;
  \keycode_reg[6]_0\ <= \^keycode_reg[6]_0\;
  \keycode_reg[7]_0\ <= \^keycode_reg[7]_0\;
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"575F"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(0),
      O => cnt
    );
\cn0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(15),
      I1 => \^keycode_reg[15]_0\(7),
      O => S(1)
    );
\cn0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^keycode_reg[15]_0\(4),
      I1 => Q(12),
      I2 => \^keycode_reg[15]_0\(5),
      I3 => Q(13),
      I4 => Q(14),
      I5 => \^keycode_reg[15]_0\(6),
      O => S(0)
    );
cn0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^keycode_reg[15]_0\(1),
      I1 => Q(9),
      I2 => \^keycode_reg[15]_0\(2),
      I3 => Q(10),
      I4 => Q(11),
      I5 => \^keycode_reg[15]_0\(3),
      O => \keycode_reg[9]_0\(3)
    );
cn0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^keycode_reg[6]_0\,
      I1 => Q(6),
      I2 => \^keycode_reg[7]_0\,
      I3 => Q(7),
      I4 => Q(8),
      I5 => \^keycode_reg[15]_0\(0),
      O => \keycode_reg[9]_0\(2)
    );
cn0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(5),
      I1 => \^keycode_reg[5]_0\,
      I2 => \^keycode_reg[3]_0\,
      I3 => Q(3),
      I4 => \^keycode_reg[4]_0\,
      I5 => Q(4),
      O => \keycode_reg[9]_0\(1)
    );
cn0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(2),
      I1 => \^keycode_reg[2]_0\,
      I2 => \^keycode_reg[0]_0\,
      I3 => Q(0),
      I4 => \^keycode_reg[1]_0\,
      I5 => Q(1),
      O => \keycode_reg[9]_0\(0)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => cnt0(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => cnt0(3)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => cnt,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg__0\(0),
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => cnt,
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg__0\(1),
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => cnt,
      D => cnt0(2),
      Q => \cnt_reg__0\(2),
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => cnt,
      D => cnt0(3),
      Q => \cnt_reg__0\(3),
      R => \cnt[3]_i_1_n_0\
    );
\datacur[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(1),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(0),
      O => \datacur[0]_i_1_n_0\
    );
\datacur[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(1),
      O => \datacur[1]_i_1_n_0\
    );
\datacur[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(2),
      O => \datacur[2]_i_1_n_0\
    );
\datacur[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(3),
      O => \datacur[3]_i_1_n_0\
    );
\datacur[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(4),
      O => \datacur[4]_i_1_n_0\
    );
\datacur[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(5),
      O => \datacur[5]_i_1_n_0\
    );
\datacur[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(3),
      I5 => datacur(6),
      O => \datacur[6]_i_1_n_0\
    );
\datacur[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => O,
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(1),
      I4 => \cnt_reg__0\(0),
      I5 => datacur(7),
      O => \datacur[7]_i_1_n_0\
    );
\datacur_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[0]_i_1_n_0\,
      Q => datacur(0),
      R => '0'
    );
\datacur_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[1]_i_1_n_0\,
      Q => datacur(1),
      R => '0'
    );
\datacur_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[2]_i_1_n_0\,
      Q => datacur(2),
      R => '0'
    );
\datacur_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[3]_i_1_n_0\,
      Q => datacur(3),
      R => '0'
    );
\datacur_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[4]_i_1_n_0\,
      Q => datacur(4),
      R => '0'
    );
\datacur_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[5]_i_1_n_0\,
      Q => datacur(5),
      R => '0'
    );
\datacur_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[6]_i_1_n_0\,
      Q => datacur(6),
      R => '0'
    );
\datacur_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => \datacur[7]_i_1_n_0\,
      Q => datacur(7),
      R => '0'
    );
db_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer
     port map (
      CLK50MHZ => CLK50MHZ,
      O_reg_0 => db_clk_n_0,
      PS2Clk => PS2Clk
    );
db_data: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0
     port map (
      CLK50MHZ => CLK50MHZ,
      O => O,
      PS2Data => PS2Data
    );
flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0400"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => flag_0,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => db_clk_n_0,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_0,
      R => '0'
    );
\keycode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(0),
      Q => \^keycode_reg[0]_0\,
      R => '0'
    );
\keycode_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[2]_0\,
      Q => \^keycode_reg[15]_0\(2),
      R => '0'
    );
\keycode_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[3]_0\,
      Q => \^keycode_reg[15]_0\(3),
      R => '0'
    );
\keycode_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[4]_0\,
      Q => \^keycode_reg[15]_0\(4),
      R => '0'
    );
\keycode_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[5]_0\,
      Q => \^keycode_reg[15]_0\(5),
      R => '0'
    );
\keycode_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[6]_0\,
      Q => \^keycode_reg[15]_0\(6),
      R => '0'
    );
\keycode_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[7]_0\,
      Q => \^keycode_reg[15]_0\(7),
      R => '0'
    );
\keycode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(1),
      Q => \^keycode_reg[1]_0\,
      R => '0'
    );
\keycode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(2),
      Q => \^keycode_reg[2]_0\,
      R => '0'
    );
\keycode_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(3),
      Q => \^keycode_reg[3]_0\,
      R => '0'
    );
\keycode_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(4),
      Q => \^keycode_reg[4]_0\,
      R => '0'
    );
\keycode_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(5),
      Q => \^keycode_reg[5]_0\,
      R => '0'
    );
\keycode_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(6),
      Q => \^keycode_reg[6]_0\,
      R => '0'
    );
\keycode_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => datacur(7),
      Q => \^keycode_reg[7]_0\,
      R => '0'
    );
\keycode_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[0]_0\,
      Q => \^keycode_reg[15]_0\(0),
      R => '0'
    );
\keycode_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK50MHZ,
      CE => oflag_i_1_n_0,
      D => \^keycode_reg[1]_0\,
      Q => \^keycode_reg[15]_0\(1),
      R => '0'
    );
\keycodev[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7F7FF00"
    )
        port map (
      I0 => \keycodev[7]_i_2_n_0\,
      I1 => \keycodev_reg[0]\,
      I2 => \keycodev[7]_i_4_n_0\,
      I3 => CO(0),
      I4 => \keycodev[7]_i_5_n_0\,
      I5 => \keycodev[7]_i_6_n_0\,
      O => E(0)
    );
\keycodev[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^keycode_reg[15]_0\(3),
      I1 => \^keycode_reg[15]_0\(4),
      I2 => \^keycode_reg[15]_0\(5),
      I3 => \^keycode_reg[15]_0\(0),
      O => \keycodev[7]_i_10_n_0\
    );
\keycodev[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^keycode_reg[2]_0\,
      I1 => \^keycode_reg[1]_0\,
      I2 => \^keycode_reg[3]_0\,
      I3 => \^keycode_reg[0]_0\,
      O => \keycodev[7]_i_11_n_0\
    );
\keycodev[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(7),
      I1 => \^keycode_reg[7]_0\,
      I2 => Q(6),
      I3 => \^keycode_reg[6]_0\,
      O => \keycodev[7]_i_2_n_0\
    );
\keycodev[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \keycodev[7]_i_8_n_0\,
      I1 => \keycodev[7]_i_9_n_0\,
      O => \keycodev[7]_i_4_n_0\
    );
\keycodev[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \^keycode_reg[15]_0\(1),
      I1 => \^keycode_reg[15]_0\(7),
      I2 => \^keycode_reg[15]_0\(2),
      I3 => \^keycode_reg[15]_0\(6),
      I4 => \keycodev[7]_i_10_n_0\,
      O => \keycodev[7]_i_5_n_0\
    );
\keycodev[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555555555555555"
    )
        port map (
      I0 => flag,
      I1 => \keycodev[7]_i_11_n_0\,
      I2 => \^keycode_reg[7]_0\,
      I3 => \^keycode_reg[4]_0\,
      I4 => \^keycode_reg[6]_0\,
      I5 => \^keycode_reg[5]_0\,
      O => \keycodev[7]_i_6_n_0\
    );
\keycodev[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(5),
      I1 => \^keycode_reg[5]_0\,
      I2 => \^keycode_reg[3]_0\,
      I3 => Q(3),
      I4 => \^keycode_reg[4]_0\,
      I5 => Q(4),
      O => \keycodev[7]_i_8_n_0\
    );
\keycodev[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(2),
      I1 => \^keycode_reg[2]_0\,
      I2 => \^keycode_reg[0]_0\,
      I3 => Q(0),
      I4 => \^keycode_reg[1]_0\,
      I5 => Q(1),
      O => \keycodev[7]_i_9_n_0\
    );
oflag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => flag_0,
      I1 => pflag,
      O => oflag_i_1_n_0
    );
oflag_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => oflag_i_1_n_0,
      Q => flag,
      R => '0'
    );
pflag_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK50MHZ,
      CE => '1',
      D => flag_0,
      Q => pflag,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0_S00_AXI is
  port (
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PS2Clk : in STD_LOGIC;
    PS2Data : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0_S00_AXI is
  signal CLK50MHZ : STD_LOGIC;
  signal CLK50MHZ_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \cn0_carry__0_n_3\ : STD_LOGIC;
  signal cn0_carry_n_0 : STD_LOGIC;
  signal cn0_carry_n_1 : STD_LOGIC;
  signal cn0_carry_n_2 : STD_LOGIC;
  signal cn0_carry_n_3 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal keycodev : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal keycodev0 : STD_LOGIC;
  signal \keycodev[7]_i_3_n_0\ : STD_LOGIC;
  signal \keycodev[7]_i_7_n_0\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal uut_n_0 : STD_LOGIC;
  signal uut_n_1 : STD_LOGIC;
  signal uut_n_19 : STD_LOGIC;
  signal uut_n_2 : STD_LOGIC;
  signal uut_n_20 : STD_LOGIC;
  signal uut_n_21 : STD_LOGIC;
  signal uut_n_22 : STD_LOGIC;
  signal uut_n_3 : STD_LOGIC;
  signal uut_n_4 : STD_LOGIC;
  signal uut_n_5 : STD_LOGIC;
  signal uut_n_6 : STD_LOGIC;
  signal uut_n_7 : STD_LOGIC;
  signal uut_n_8 : STD_LOGIC;
  signal uut_n_9 : STD_LOGIC;
  signal NLW_cn0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cn0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cn0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair7";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  led(7 downto 0) <= \^led\(7 downto 0);
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
CLK50MHZ_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK50MHZ,
      O => CLK50MHZ_i_1_n_0
    );
CLK50MHZ_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => CLK50MHZ_i_1_n_0,
      Q => CLK50MHZ,
      R => '0'
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => axi_araddr(2),
      I2 => slv_reg2(0),
      I3 => axi_araddr(3),
      I4 => \^led\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => axi_araddr(2),
      I2 => slv_reg2(10),
      I3 => axi_araddr(3),
      I4 => keycodev(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(11),
      I1 => axi_araddr(3),
      I2 => keycodev(11),
      I3 => axi_araddr(2),
      I4 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(12),
      I1 => axi_araddr(3),
      I2 => keycodev(12),
      I3 => axi_araddr(2),
      I4 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(13),
      I1 => axi_araddr(3),
      I2 => keycodev(13),
      I3 => axi_araddr(2),
      I4 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => axi_araddr(3),
      I2 => keycodev(14),
      I3 => axi_araddr(2),
      I4 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => axi_araddr(3),
      I2 => keycodev(15),
      I3 => axi_araddr(2),
      I4 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => axi_araddr(3),
      I2 => slv_reg2(16),
      I3 => axi_araddr(2),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => axi_araddr(3),
      I2 => slv_reg2(18),
      I3 => axi_araddr(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => axi_araddr(3),
      I2 => slv_reg2(19),
      I3 => axi_araddr(2),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => axi_araddr(3),
      I2 => \^led\(1),
      I3 => axi_araddr(2),
      I4 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => axi_araddr(3),
      I2 => slv_reg2(21),
      I3 => axi_araddr(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => axi_araddr(3),
      I2 => slv_reg2(23),
      I3 => axi_araddr(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => axi_araddr(3),
      I2 => slv_reg2(25),
      I3 => axi_araddr(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => axi_araddr(3),
      I2 => slv_reg2(26),
      I3 => axi_araddr(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => axi_araddr(3),
      I2 => slv_reg2(27),
      I3 => axi_araddr(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => axi_araddr(3),
      I2 => slv_reg2(28),
      I3 => axi_araddr(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => axi_araddr(3),
      I2 => \^led\(2),
      I3 => axi_araddr(2),
      I4 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => axi_araddr(3),
      I2 => slv_reg2(30),
      I3 => axi_araddr(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEC0"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => axi_araddr(3),
      I2 => slv_reg2(31),
      I3 => axi_araddr(2),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => axi_araddr(3),
      I2 => \^led\(3),
      I3 => axi_araddr(2),
      I4 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => axi_araddr(3),
      I2 => \^led\(4),
      I3 => axi_araddr(2),
      I4 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => axi_araddr(2),
      I2 => slv_reg2(5),
      I3 => axi_araddr(3),
      I4 => \^led\(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => axi_araddr(3),
      I2 => \^led\(6),
      I3 => axi_araddr(2),
      I4 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => axi_araddr(3),
      I2 => \^led\(7),
      I3 => axi_araddr(2),
      I4 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => axi_araddr(2),
      I2 => slv_reg2(8),
      I3 => axi_araddr(3),
      I4 => keycodev(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => slv_reg2(9),
      I1 => axi_araddr(3),
      I2 => keycodev(9),
      I3 => axi_araddr(2),
      I4 => slv_reg1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
cn0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cn0_carry_n_0,
      CO(2) => cn0_carry_n_1,
      CO(1) => cn0_carry_n_2,
      CO(0) => cn0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_cn0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => uut_n_19,
      S(2) => uut_n_20,
      S(1) => uut_n_21,
      S(0) => uut_n_22
    );
\cn0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cn0_carry_n_0,
      CO(3 downto 2) => \NLW_cn0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data0,
      CO(0) => \cn0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_cn0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => uut_n_8,
      S(0) => uut_n_9
    );
\keycodev[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => keycodev(10),
      I1 => keycodev(11),
      I2 => keycodev(8),
      I3 => keycodev(9),
      I4 => \keycodev[7]_i_7_n_0\,
      O => \keycodev[7]_i_3_n_0\
    );
\keycodev[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => keycodev(13),
      I1 => keycodev(12),
      I2 => keycodev(15),
      I3 => keycodev(14),
      O => \keycodev[7]_i_7_n_0\
    );
\keycodev_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_0,
      Q => \^led\(0),
      R => '0'
    );
\keycodev_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(2),
      Q => keycodev(10),
      R => '0'
    );
\keycodev_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(3),
      Q => keycodev(11),
      R => '0'
    );
\keycodev_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(4),
      Q => keycodev(12),
      R => '0'
    );
\keycodev_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(5),
      Q => keycodev(13),
      R => '0'
    );
\keycodev_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(6),
      Q => keycodev(14),
      R => '0'
    );
\keycodev_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(7),
      Q => keycodev(15),
      R => '0'
    );
\keycodev_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_1,
      Q => \^led\(1),
      R => '0'
    );
\keycodev_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_2,
      Q => \^led\(2),
      R => '0'
    );
\keycodev_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_3,
      Q => \^led\(3),
      R => '0'
    );
\keycodev_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_4,
      Q => \^led\(4),
      R => '0'
    );
\keycodev_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_5,
      Q => \^led\(5),
      R => '0'
    );
\keycodev_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_6,
      Q => \^led\(6),
      R => '0'
    );
\keycodev_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => uut_n_7,
      Q => \^led\(7),
      R => '0'
    );
\keycodev_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(0),
      Q => keycodev(8),
      R => '0'
    );
\keycodev_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => keycodev0,
      D => sel0(1),
      Q => keycodev(9),
      R => '0'
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => p_1_in(15)
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => p_1_in(23)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => p_1_in(31)
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => p_1_in(7)
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
uut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PS2Receiver
     port map (
      CLK50MHZ => CLK50MHZ,
      CO(0) => data0,
      E(0) => keycodev0,
      PS2Clk => PS2Clk,
      PS2Data => PS2Data,
      Q(15 downto 8) => keycodev(15 downto 8),
      Q(7 downto 0) => \^led\(7 downto 0),
      S(1) => uut_n_8,
      S(0) => uut_n_9,
      \keycode_reg[0]_0\ => uut_n_0,
      \keycode_reg[15]_0\(7 downto 0) => sel0(7 downto 0),
      \keycode_reg[1]_0\ => uut_n_1,
      \keycode_reg[2]_0\ => uut_n_2,
      \keycode_reg[3]_0\ => uut_n_3,
      \keycode_reg[4]_0\ => uut_n_4,
      \keycode_reg[5]_0\ => uut_n_5,
      \keycode_reg[6]_0\ => uut_n_6,
      \keycode_reg[7]_0\ => uut_n_7,
      \keycode_reg[9]_0\(3) => uut_n_19,
      \keycode_reg[9]_0\(2) => uut_n_20,
      \keycode_reg[9]_0\(1) => uut_n_21,
      \keycode_reg[9]_0\(0) => uut_n_22,
      \keycodev_reg[0]\ => \keycodev[7]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PS2Clk : in STD_LOGIC;
    PS2Data : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0 is
begin
ps2_keyboard_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0_S00_AXI
     port map (
      PS2Clk => PS2Clk,
      PS2Data => PS2Data,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      clk => clk,
      led(7 downto 0) => Q(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    PS2Data : in STD_LOGIC;
    PS2Clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "microblaze_MCU_ps2_keyboard_0_0,ps2_keyboard_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ps2_keyboard_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0
     port map (
      PS2Clk => PS2Clk,
      PS2Data => PS2Data,
      Q(7 downto 0) => led(7 downto 0),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      clk => clk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
