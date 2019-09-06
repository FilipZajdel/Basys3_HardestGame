// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Sep  5 19:43:32 2019
// Host        : BoomBoom running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microblaze_MCU_ps2_keyboard_0_0_sim_netlist.v
// Design      : microblaze_MCU_ps2_keyboard_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PS2Receiver
   (\keycode_reg[0]_0 ,
    \keycode_reg[1]_0 ,
    \keycode_reg[2]_0 ,
    \keycode_reg[3]_0 ,
    \keycode_reg[4]_0 ,
    \keycode_reg[5]_0 ,
    \keycode_reg[6]_0 ,
    \keycode_reg[7]_0 ,
    S,
    \keycode_reg[15]_0 ,
    E,
    \keycode_reg[9]_0 ,
    CLK50MHZ,
    PS2Clk,
    PS2Data,
    Q,
    \keycodev_reg[0] ,
    CO);
  output \keycode_reg[0]_0 ;
  output \keycode_reg[1]_0 ;
  output \keycode_reg[2]_0 ;
  output \keycode_reg[3]_0 ;
  output \keycode_reg[4]_0 ;
  output \keycode_reg[5]_0 ;
  output \keycode_reg[6]_0 ;
  output \keycode_reg[7]_0 ;
  output [1:0]S;
  output [7:0]\keycode_reg[15]_0 ;
  output [0:0]E;
  output [3:0]\keycode_reg[9]_0 ;
  input CLK50MHZ;
  input PS2Clk;
  input PS2Data;
  input [15:0]Q;
  input \keycodev_reg[0] ;
  input [0:0]CO;

  wire CLK50MHZ;
  wire [0:0]CO;
  wire [0:0]E;
  wire O;
  wire PS2Clk;
  wire PS2Data;
  wire [15:0]Q;
  wire [1:0]S;
  wire cnt;
  wire [3:2]cnt0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire [3:0]cnt_reg__0;
  wire [7:0]datacur;
  wire \datacur[0]_i_1_n_0 ;
  wire \datacur[1]_i_1_n_0 ;
  wire \datacur[2]_i_1_n_0 ;
  wire \datacur[3]_i_1_n_0 ;
  wire \datacur[4]_i_1_n_0 ;
  wire \datacur[5]_i_1_n_0 ;
  wire \datacur[6]_i_1_n_0 ;
  wire \datacur[7]_i_1_n_0 ;
  wire db_clk_n_0;
  wire flag;
  wire flag_0;
  wire flag_i_1_n_0;
  wire \keycode_reg[0]_0 ;
  wire [7:0]\keycode_reg[15]_0 ;
  wire \keycode_reg[1]_0 ;
  wire \keycode_reg[2]_0 ;
  wire \keycode_reg[3]_0 ;
  wire \keycode_reg[4]_0 ;
  wire \keycode_reg[5]_0 ;
  wire \keycode_reg[6]_0 ;
  wire \keycode_reg[7]_0 ;
  wire [3:0]\keycode_reg[9]_0 ;
  wire \keycodev[15]_i_10_n_0 ;
  wire \keycodev[15]_i_11_n_0 ;
  wire \keycodev[15]_i_2_n_0 ;
  wire \keycodev[15]_i_4_n_0 ;
  wire \keycodev[15]_i_5_n_0 ;
  wire \keycodev[15]_i_6_n_0 ;
  wire \keycodev[15]_i_8_n_0 ;
  wire \keycodev[15]_i_9_n_0 ;
  wire \keycodev_reg[0] ;
  wire oflag_i_1_n_0;
  wire pflag;

  LUT4 #(
    .INIT(16'h575F)) 
    \/i_ 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[0]),
        .O(cnt));
  LUT2 #(
    .INIT(4'h9)) 
    cn0_carry__0_i_1
       (.I0(Q[15]),
        .I1(\keycode_reg[15]_0 [7]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry__0_i_2
       (.I0(\keycode_reg[15]_0 [6]),
        .I1(Q[14]),
        .I2(\keycode_reg[15]_0 [5]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(\keycode_reg[15]_0 [4]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_1
       (.I0(\keycode_reg[15]_0 [1]),
        .I1(Q[9]),
        .I2(\keycode_reg[15]_0 [2]),
        .I3(Q[10]),
        .I4(Q[11]),
        .I5(\keycode_reg[15]_0 [3]),
        .O(\keycode_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_2
       (.I0(\keycode_reg[6]_0 ),
        .I1(Q[6]),
        .I2(\keycode_reg[7]_0 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(\keycode_reg[15]_0 [0]),
        .O(\keycode_reg[9]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_3
       (.I0(Q[4]),
        .I1(\keycode_reg[4]_0 ),
        .I2(\keycode_reg[5]_0 ),
        .I3(Q[5]),
        .I4(\keycode_reg[3]_0 ),
        .I5(Q[3]),
        .O(\keycode_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_4
       (.I0(Q[2]),
        .I1(\keycode_reg[2]_0 ),
        .I2(\keycode_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\keycode_reg[1]_0 ),
        .I5(Q[1]),
        .O(\keycode_reg[9]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .O(cnt0[2]));
  LUT4 #(
    .INIT(16'h0400)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(cnt0[3]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg__0[1]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(cnt0[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(cnt0[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[0]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[0]),
        .O(\datacur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[1]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[1]),
        .O(\datacur[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \datacur[2]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[2]),
        .O(\datacur[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[3]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[3]),
        .O(\datacur[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[4]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[4]),
        .O(\datacur[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[5]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[5]),
        .O(\datacur[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \datacur[6]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(datacur[6]),
        .O(\datacur[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \datacur[7]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[0]),
        .I5(datacur[7]),
        .O(\datacur[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[0] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[0]_i_1_n_0 ),
        .Q(datacur[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[1] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[1]_i_1_n_0 ),
        .Q(datacur[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[2] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[2]_i_1_n_0 ),
        .Q(datacur[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[3] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[3]_i_1_n_0 ),
        .Q(datacur[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[4] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[4]_i_1_n_0 ),
        .Q(datacur[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[5] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[5]_i_1_n_0 ),
        .Q(datacur[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[6] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[6]_i_1_n_0 ),
        .Q(datacur[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[7] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[7]_i_1_n_0 ),
        .Q(datacur[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer db_clk
       (.CLK50MHZ(CLK50MHZ),
        .O_reg_0(db_clk_n_0),
        .PS2Clk(PS2Clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0 db_data
       (.CLK50MHZ(CLK50MHZ),
        .O(O),
        .PS2Data(PS2Data));
  LUT5 #(
    .INIT(32'hEFFF0400)) 
    flag_i_1
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .I4(flag_0),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    flag_reg
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[0] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[0]),
        .Q(\keycode_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[10] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[2]_0 ),
        .Q(\keycode_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[11] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[3]_0 ),
        .Q(\keycode_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[12] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[4]_0 ),
        .Q(\keycode_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[13] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[5]_0 ),
        .Q(\keycode_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[14] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[6]_0 ),
        .Q(\keycode_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[15] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[7]_0 ),
        .Q(\keycode_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[1] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[1]),
        .Q(\keycode_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[2] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[2]),
        .Q(\keycode_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[3] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[3]),
        .Q(\keycode_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[4] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[4]),
        .Q(\keycode_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[5] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[5]),
        .Q(\keycode_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[6] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[6]),
        .Q(\keycode_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[7] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(datacur[7]),
        .Q(\keycode_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[8] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[0]_0 ),
        .Q(\keycode_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[9] 
       (.C(CLK50MHZ),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[1]_0 ),
        .Q(\keycode_reg[15]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FD00FD00FF0000)) 
    \keycodev[15]_i_1 
       (.I0(\keycodev[15]_i_2_n_0 ),
        .I1(\keycodev_reg[0] ),
        .I2(\keycodev[15]_i_4_n_0 ),
        .I3(\keycodev[15]_i_5_n_0 ),
        .I4(CO),
        .I5(\keycodev[15]_i_6_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h0001)) 
    \keycodev[15]_i_10 
       (.I0(\keycode_reg[3]_0 ),
        .I1(\keycode_reg[0]_0 ),
        .I2(\keycode_reg[2]_0 ),
        .I3(\keycode_reg[1]_0 ),
        .O(\keycodev[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \keycodev[15]_i_11 
       (.I0(\keycode_reg[15]_0 [5]),
        .I1(\keycode_reg[15]_0 [4]),
        .I2(\keycode_reg[15]_0 [7]),
        .I3(\keycode_reg[15]_0 [0]),
        .O(\keycodev[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \keycodev[15]_i_2 
       (.I0(Q[7]),
        .I1(\keycode_reg[7]_0 ),
        .I2(Q[6]),
        .I3(\keycode_reg[6]_0 ),
        .O(\keycodev[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \keycodev[15]_i_4 
       (.I0(\keycodev[15]_i_8_n_0 ),
        .I1(\keycodev[15]_i_9_n_0 ),
        .O(\keycodev[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD555555555555555)) 
    \keycodev[15]_i_5 
       (.I0(flag),
        .I1(\keycodev[15]_i_10_n_0 ),
        .I2(\keycode_reg[7]_0 ),
        .I3(\keycode_reg[4]_0 ),
        .I4(\keycode_reg[6]_0 ),
        .I5(\keycode_reg[5]_0 ),
        .O(\keycodev[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \keycodev[15]_i_6 
       (.I0(\keycode_reg[15]_0 [1]),
        .I1(\keycode_reg[15]_0 [6]),
        .I2(\keycode_reg[15]_0 [2]),
        .I3(\keycode_reg[15]_0 [3]),
        .I4(\keycodev[15]_i_11_n_0 ),
        .O(\keycodev[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_8 
       (.I0(Q[2]),
        .I1(\keycode_reg[2]_0 ),
        .I2(\keycode_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\keycode_reg[1]_0 ),
        .I5(Q[1]),
        .O(\keycodev[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_9 
       (.I0(Q[4]),
        .I1(\keycode_reg[4]_0 ),
        .I2(\keycode_reg[5]_0 ),
        .I3(Q[5]),
        .I4(\keycode_reg[3]_0 ),
        .I5(Q[3]),
        .O(\keycodev[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    oflag_i_1
       (.I0(flag_0),
        .I1(pflag),
        .O(oflag_i_1_n_0));
  FDRE oflag_reg
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(oflag_i_1_n_0),
        .Q(flag),
        .R(1'b0));
  FDRE pflag_reg
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(flag_0),
        .Q(pflag),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer
   (O_reg_0,
    CLK50MHZ,
    PS2Clk);
  output O_reg_0;
  input CLK50MHZ;
  input PS2Clk;

  wire CLK50MHZ;
  wire Iv;
  wire O_i_1_n_0;
  wire O_i_2_n_0;
  wire O_reg_0;
  wire PS2Clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire [4:0]count_reg;

  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(PS2Clk),
        .Q(Iv),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    O_i_1
       (.I0(PS2Clk),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(O_i_2_n_0),
        .I5(O_reg_0),
        .O(O_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    O_i_2
       (.I0(PS2Clk),
        .I1(Iv),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .O(O_i_2_n_0));
  FDRE O_reg
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(O_i_1_n_0),
        .Q(O_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444444C44444)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(\count[4]_i_2_n_0 ),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .I4(count_reg[1]),
        .I5(count_reg[2]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000FF00FF000000)) 
    \count[1]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(\count[4]_i_2_n_0 ),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D00F000F000F000)) 
    \count[2]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(\count[4]_i_2_n_0 ),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00007F80000080)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(PS2Clk),
        .I4(Iv),
        .I5(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(\count[4]_i_2_n_0 ),
        .I5(count_reg[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_2 
       (.I0(Iv),
        .I1(PS2Clk),
        .O(\count[4]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE \count_reg[3] 
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE \count_reg[4] 
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
        .Q(count_reg[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer_0
   (O,
    PS2Data,
    CLK50MHZ);
  output O;
  input PS2Data;
  input CLK50MHZ;

  wire CLK50MHZ;
  wire Iv_reg_n_0;
  wire O;
  wire O_i_1__0_n_0;
  wire O_i_2__0_n_0;
  wire PS2Data;
  wire \count[4]_i_1__0_n_0 ;
  wire \count[4]_i_2__0_n_0 ;
  wire [4:0]count_reg__0;
  wire [4:0]p_0_in;

  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(PS2Data),
        .Q(Iv_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00004000)) 
    O_i_1__0
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[4]),
        .I2(Iv_reg_n_0),
        .I3(PS2Data),
        .I4(O_i_2__0_n_0),
        .I5(O),
        .O(O_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    O_i_2__0
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .O(O_i_2__0_n_0));
  FDRE O_reg
       (.C(CLK50MHZ),
        .CE(1'b1),
        .D(O_i_1__0_n_0),
        .Q(O),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \count[4]_i_1__0 
       (.I0(PS2Data),
        .I1(Iv_reg_n_0),
        .O(\count[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \count[4]_i_2__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[4]),
        .I4(count_reg__0[3]),
        .O(\count[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \count[4]_i_3 
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[4]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[0]),
        .I4(count_reg__0[2]),
        .O(p_0_in[4]));
  FDRE \count_reg[0] 
       (.C(CLK50MHZ),
        .CE(\count[4]_i_2__0_n_0 ),
        .D(p_0_in[0]),
        .Q(count_reg__0[0]),
        .R(\count[4]_i_1__0_n_0 ));
  FDRE \count_reg[1] 
       (.C(CLK50MHZ),
        .CE(\count[4]_i_2__0_n_0 ),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]),
        .R(\count[4]_i_1__0_n_0 ));
  FDRE \count_reg[2] 
       (.C(CLK50MHZ),
        .CE(\count[4]_i_2__0_n_0 ),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]),
        .R(\count[4]_i_1__0_n_0 ));
  FDRE \count_reg[3] 
       (.C(CLK50MHZ),
        .CE(\count[4]_i_2__0_n_0 ),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]),
        .R(\count[4]_i_1__0_n_0 ));
  FDRE \count_reg[4] 
       (.C(CLK50MHZ),
        .CE(\count[4]_i_2__0_n_0 ),
        .D(p_0_in[4]),
        .Q(count_reg__0[4]),
        .R(\count[4]_i_1__0_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "microblaze_MCU_ps2_keyboard_0_0,ps2_keyboard_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ps2_keyboard_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (PS2Data,
    PS2Clk,
    clk,
    led,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input PS2Data;
  input PS2Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  output [7:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire PS2Clk;
  wire PS2Data;
  wire clk;
  wire [6:0]\^led ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign led[7] = \<const0> ;
  assign led[6:5] = \^led [6:5];
  assign led[4] = \^led [5];
  assign led[3:0] = \^led [3:0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0 inst
       (.PS2Clk(PS2Clk),
        .PS2Data(PS2Data),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .clk(clk),
        .led({\^led [6:5],\^led [3:0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    led,
    s00_axi_bvalid,
    clk,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    PS2Clk,
    PS2Data,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output [5:0]led;
  output s00_axi_bvalid;
  input clk;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input PS2Clk;
  input PS2Data;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire PS2Clk;
  wire PS2Data;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire clk;
  wire [5:0]led;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0_S00_AXI ps2_keyboard_v1_0_S00_AXI_inst
       (.PS2Clk(PS2Clk),
        .PS2Data(PS2Data),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .clk(clk),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    led,
    s00_axi_bvalid,
    clk,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    PS2Clk,
    PS2Data,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output [5:0]led;
  output s00_axi_bvalid;
  input clk;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input PS2Clk;
  input PS2Data;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire CLK50MHZ;
  wire CLK50MHZ_i_1_n_0;
  wire PS2Clk;
  wire PS2Data;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk;
  wire cn0_carry__0_n_3;
  wire cn0_carry_n_0;
  wire cn0_carry_n_1;
  wire cn0_carry_n_2;
  wire cn0_carry_n_3;
  wire data0;
  wire [7:0]keycodev;
  wire keycodev0;
  wire \keycodev[15]_i_3_n_0 ;
  wire \keycodev[15]_i_7_n_0 ;
  wire [15:8]keycodev_0;
  wire [5:0]led;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:0]sel0;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire uut_n_0;
  wire uut_n_1;
  wire uut_n_19;
  wire uut_n_2;
  wire uut_n_20;
  wire uut_n_21;
  wire uut_n_22;
  wire uut_n_3;
  wire uut_n_4;
  wire uut_n_5;
  wire uut_n_6;
  wire uut_n_7;
  wire uut_n_8;
  wire uut_n_9;
  wire [3:0]NLW_cn0_carry_O_UNCONNECTED;
  wire [3:2]NLW_cn0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cn0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    CLK50MHZ_i_1
       (.I0(CLK50MHZ),
        .O(CLK50MHZ_i_1_n_0));
  FDRE CLK50MHZ_reg
       (.C(clk),
        .CE(1'b1),
        .D(CLK50MHZ_i_1_n_0),
        .Q(CLK50MHZ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h00FFF0660000F066)) 
    \axi_rdata[0]_i_1 
       (.I0(keycodev[0]),
        .I1(led[5]),
        .I2(slv_reg2[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'h00FFF0220000F022)) 
    \axi_rdata[10]_i_1 
       (.I0(keycodev[6]),
        .I1(\axi_rdata[10]_i_2_n_0 ),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[10]_i_2 
       (.I0(keycodev[5]),
        .I1(keycodev[7]),
        .I2(keycodev[4]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF88888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(keycodev[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[11]),
        .I4(axi_araddr[3]),
        .I5(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hFEEEFEAA)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hFEEEFEAA)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[13]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00011111)) 
    \axi_rdata[13]_i_2 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(keycodev[5]),
        .I3(keycodev[6]),
        .I4(keycodev[7]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCEEFC22)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[14]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[14]_i_2 
       (.I0(keycodev[7]),
        .I1(keycodev[6]),
        .I2(keycodev[5]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEEC0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(axi_araddr[3]),
        .I2(slv_reg2[15]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hFFF0F6F6FFF00606)) 
    \axi_rdata[16]_i_1 
       (.I0(keycodev_0[8]),
        .I1(\axi_rdata[16]_i_2_n_0 ),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[16]),
        .I4(axi_araddr[3]),
        .I5(slv_reg1[16]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[16]_i_2 
       (.I0(keycodev_0[11]),
        .I1(keycodev_0[10]),
        .I2(keycodev_0[9]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB0088)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[17]),
        .I3(axi_araddr[3]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFC2CC)) 
    \axi_rdata[17]_i_2 
       (.I0(keycodev_0[10]),
        .I1(keycodev_0[9]),
        .I2(keycodev_0[8]),
        .I3(keycodev_0[11]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F8F8FFF00808)) 
    \axi_rdata[18]_i_1 
       (.I0(keycodev_0[10]),
        .I1(\axi_rdata[18]_i_2_n_0 ),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[18]),
        .I4(axi_araddr[3]),
        .I5(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT3 #(
    .INIT(8'hEF)) 
    \axi_rdata[18]_i_2 
       (.I0(keycodev_0[9]),
        .I1(keycodev_0[8]),
        .I2(keycodev_0[11]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF88888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(keycodev_0[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[19]),
        .I4(axi_araddr[3]),
        .I5(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hFCEEFC22)) 
    \axi_rdata[1]_i_1 
       (.I0(led[1]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[1]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hAFEAAAEA)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(slv_reg2[20]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(slv_reg1[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hFEEEFEAA)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h00004F45)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg1[22]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[22]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h00011111)) 
    \axi_rdata[22]_i_2 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(keycodev_0[9]),
        .I3(keycodev_0[10]),
        .I4(keycodev_0[11]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEEC0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(axi_araddr[3]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h308830BB30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(keycodev_0[12]),
        .I5(\axi_rdata[30]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hFFFFEAE0)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[2]),
        .I1(slv_reg2[25]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[25]),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h000000000000CC2C)) 
    \axi_rdata[25]_i_2 
       (.I0(keycodev_0[14]),
        .I1(keycodev_0[13]),
        .I2(keycodev_0[15]),
        .I3(keycodev_0[12]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[2]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F2F2FFF00202)) 
    \axi_rdata[26]_i_1 
       (.I0(keycodev_0[14]),
        .I1(\axi_rdata[26]_i_2_n_0 ),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[26]),
        .I4(axi_araddr[3]),
        .I5(slv_reg1[26]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[26]_i_2 
       (.I0(keycodev_0[13]),
        .I1(keycodev_0[15]),
        .I2(keycodev_0[12]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF88888)) 
    \axi_rdata[27]_i_1 
       (.I0(keycodev_0[15]),
        .I1(\axi_rdata[29]_i_2_n_0 ),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[27]),
        .I4(axi_araddr[3]),
        .I5(slv_reg1[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hFEEEFEAA)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hAFEAAAEA)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(slv_reg2[29]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(slv_reg1[29]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00011111)) 
    \axi_rdata[29]_i_2 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(keycodev_0[13]),
        .I3(keycodev_0[14]),
        .I4(keycodev_0[15]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCEEFC22)) 
    \axi_rdata[2]_i_1 
       (.I0(led[2]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hFCEEFC22)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[30]),
        .O(reg_data_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[30]_i_2 
       (.I0(keycodev_0[15]),
        .I1(keycodev_0[14]),
        .I2(keycodev_0[13]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEEC0)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(axi_araddr[3]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hFCEEFC22)) 
    \axi_rdata[3]_i_1 
       (.I0(led[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[3]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hFCDDFC11)) 
    \axi_rdata[4]_i_1 
       (.I0(led[5]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[4]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h0FC500C5)) 
    \axi_rdata[5]_i_1 
       (.I0(led[5]),
        .I1(slv_reg2[5]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hFFCCAAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(slv_reg1[6]),
        .I2(led[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'hEEC0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(axi_araddr[3]),
        .I2(slv_reg2[7]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h308830BB30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[8]),
        .I3(axi_araddr[3]),
        .I4(keycodev[4]),
        .I5(\axi_rdata[14]_i_2_n_0 ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hFEEEFEAA)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(slv_reg1[9]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h000000000000CC2C)) 
    \axi_rdata[9]_i_2 
       (.I0(keycodev[6]),
        .I1(keycodev[5]),
        .I2(keycodev[7]),
        .I3(keycodev[4]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  CARRY4 cn0_carry
       (.CI(1'b0),
        .CO({cn0_carry_n_0,cn0_carry_n_1,cn0_carry_n_2,cn0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_cn0_carry_O_UNCONNECTED[3:0]),
        .S({uut_n_19,uut_n_20,uut_n_21,uut_n_22}));
  CARRY4 cn0_carry__0
       (.CI(cn0_carry_n_0),
        .CO({NLW_cn0_carry__0_CO_UNCONNECTED[3:2],data0,cn0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_cn0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,uut_n_8,uut_n_9}));
  LUT5 #(
    .INIT(32'h00000008)) 
    \keycodev[15]_i_3 
       (.I0(keycodev_0[14]),
        .I1(keycodev_0[15]),
        .I2(keycodev_0[11]),
        .I3(keycodev_0[8]),
        .I4(\keycodev[15]_i_7_n_0 ),
        .O(\keycodev[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \keycodev[15]_i_7 
       (.I0(keycodev_0[10]),
        .I1(keycodev_0[9]),
        .I2(keycodev_0[12]),
        .I3(keycodev_0[13]),
        .O(\keycodev[15]_i_7_n_0 ));
  FDRE \keycodev_reg[0] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_0),
        .Q(keycodev[0]),
        .R(1'b0));
  FDRE \keycodev_reg[10] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[2]),
        .Q(keycodev_0[10]),
        .R(1'b0));
  FDRE \keycodev_reg[11] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[3]),
        .Q(keycodev_0[11]),
        .R(1'b0));
  FDRE \keycodev_reg[12] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[4]),
        .Q(keycodev_0[12]),
        .R(1'b0));
  FDRE \keycodev_reg[13] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[5]),
        .Q(keycodev_0[13]),
        .R(1'b0));
  FDRE \keycodev_reg[14] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[6]),
        .Q(keycodev_0[14]),
        .R(1'b0));
  FDRE \keycodev_reg[15] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[7]),
        .Q(keycodev_0[15]),
        .R(1'b0));
  FDRE \keycodev_reg[1] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_1),
        .Q(keycodev[1]),
        .R(1'b0));
  FDRE \keycodev_reg[2] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_2),
        .Q(keycodev[2]),
        .R(1'b0));
  FDRE \keycodev_reg[3] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_3),
        .Q(keycodev[3]),
        .R(1'b0));
  FDRE \keycodev_reg[4] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_4),
        .Q(keycodev[4]),
        .R(1'b0));
  FDRE \keycodev_reg[5] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_5),
        .Q(keycodev[5]),
        .R(1'b0));
  FDRE \keycodev_reg[6] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_6),
        .Q(keycodev[6]),
        .R(1'b0));
  FDRE \keycodev_reg[7] 
       (.C(clk),
        .CE(keycodev0),
        .D(uut_n_7),
        .Q(keycodev[7]),
        .R(1'b0));
  FDRE \keycodev_reg[8] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[0]),
        .Q(keycodev_0[8]),
        .R(1'b0));
  FDRE \keycodev_reg[9] 
       (.C(clk),
        .CE(keycodev0),
        .D(sel0[1]),
        .Q(keycodev_0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \led[0]_INST_0 
       (.I0(keycodev[0]),
        .I1(keycodev[1]),
        .I2(keycodev[2]),
        .I3(keycodev[3]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \led[1]_INST_0 
       (.I0(keycodev[0]),
        .I1(keycodev[3]),
        .I2(keycodev[2]),
        .I3(keycodev[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \led[2]_INST_0 
       (.I0(keycodev[2]),
        .I1(keycodev[0]),
        .I2(keycodev[3]),
        .I3(keycodev[1]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \led[3]_INST_0 
       (.I0(keycodev[3]),
        .I1(keycodev[2]),
        .I2(keycodev[1]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \led[4]_INST_0 
       (.I0(keycodev[1]),
        .I1(keycodev[2]),
        .I2(keycodev[3]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \led[6]_INST_0 
       (.I0(keycodev[3]),
        .I1(keycodev[2]),
        .I2(keycodev[1]),
        .O(led[5]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PS2Receiver uut
       (.CLK50MHZ(CLK50MHZ),
        .CO(data0),
        .E(keycodev0),
        .PS2Clk(PS2Clk),
        .PS2Data(PS2Data),
        .Q({keycodev_0,keycodev}),
        .S({uut_n_8,uut_n_9}),
        .\keycode_reg[0]_0 (uut_n_0),
        .\keycode_reg[15]_0 (sel0),
        .\keycode_reg[1]_0 (uut_n_1),
        .\keycode_reg[2]_0 (uut_n_2),
        .\keycode_reg[3]_0 (uut_n_3),
        .\keycode_reg[4]_0 (uut_n_4),
        .\keycode_reg[5]_0 (uut_n_5),
        .\keycode_reg[6]_0 (uut_n_6),
        .\keycode_reg[7]_0 (uut_n_7),
        .\keycode_reg[9]_0 ({uut_n_19,uut_n_20,uut_n_21,uut_n_22}),
        .\keycodev_reg[0] (\keycodev[15]_i_3_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
