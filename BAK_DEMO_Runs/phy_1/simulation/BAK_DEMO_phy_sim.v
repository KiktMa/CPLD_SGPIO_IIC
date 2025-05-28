// Verilog netlist created by Tang Dynasty v5.6.119222
// Mon May 26 14:42:16 2025

`timescale 1ns / 1ps
module SGPIO_DEMO_TOP  // ../../SGPIO_DEMO_TOP.v(1)
  (
  ACT_S0,
  ACT_S1,
  ACT_S2,
  ACT_S3,
  ACT_S4,
  ACT_S5,
  ACT_S6,
  ACT_S7,
  DATAOUT_SGPIO_0,
  DATAOUT_SGPIO_1,
  SCL_SGPIO_0,
  SCL_SGPIO_1,
  SLOAD_SGPIO_0,
  SLOAD_SGPIO_1,
  sys_clk,
  C_ACT_S0,
  C_ACT_S1,
  C_ACT_S2,
  C_ACT_S3,
  C_ACT_S4,
  C_ACT_S5,
  C_ACT_S6,
  C_ACT_S7,
  C_ERROR_S0,
  C_ERROR_S1,
  C_ERROR_S2,
  C_ERROR_S3,
  C_ERROR_S4,
  C_ERROR_S5,
  C_ERROR_S6,
  C_ERROR_S7,
  C_LOCATE_S0,
  C_LOCATE_S1,
  C_LOCATE_S2,
  C_LOCATE_S3,
  C_LOCATE_S4,
  C_LOCATE_S5,
  C_LOCATE_S6,
  C_LOCATE_S7,
  DATAIN_SGPIO_0,
  DATAIN_SGPIO_1,
  smb_iic_scl,
  smb_iic_sda
  );

  input ACT_S0;  // ../../SGPIO_DEMO_TOP.v(22)
  input ACT_S1;  // ../../SGPIO_DEMO_TOP.v(27)
  input ACT_S2;  // ../../SGPIO_DEMO_TOP.v(32)
  input ACT_S3;  // ../../SGPIO_DEMO_TOP.v(37)
  input ACT_S4;  // ../../SGPIO_DEMO_TOP.v(42)
  input ACT_S5;  // ../../SGPIO_DEMO_TOP.v(47)
  input ACT_S6;  // ../../SGPIO_DEMO_TOP.v(52)
  input ACT_S7;  // ../../SGPIO_DEMO_TOP.v(57)
  input DATAOUT_SGPIO_0;  // ../../SGPIO_DEMO_TOP.v(11)
  input DATAOUT_SGPIO_1;  // ../../SGPIO_DEMO_TOP.v(16)
  input SCL_SGPIO_0;  // ../../SGPIO_DEMO_TOP.v(9)
  input SCL_SGPIO_1;  // ../../SGPIO_DEMO_TOP.v(14)
  input SLOAD_SGPIO_0;  // ../../SGPIO_DEMO_TOP.v(10)
  input SLOAD_SGPIO_1;  // ../../SGPIO_DEMO_TOP.v(15)
  input sys_clk;  // ../../SGPIO_DEMO_TOP.v(3)
  output C_ACT_S0;  // ../../SGPIO_DEMO_TOP.v(21)
  output C_ACT_S1;  // ../../SGPIO_DEMO_TOP.v(26)
  output C_ACT_S2;  // ../../SGPIO_DEMO_TOP.v(31)
  output C_ACT_S3;  // ../../SGPIO_DEMO_TOP.v(36)
  output C_ACT_S4;  // ../../SGPIO_DEMO_TOP.v(41)
  output C_ACT_S5;  // ../../SGPIO_DEMO_TOP.v(46)
  output C_ACT_S6;  // ../../SGPIO_DEMO_TOP.v(51)
  output C_ACT_S7;  // ../../SGPIO_DEMO_TOP.v(56)
  output C_ERROR_S0;  // ../../SGPIO_DEMO_TOP.v(20)
  output C_ERROR_S1;  // ../../SGPIO_DEMO_TOP.v(25)
  output C_ERROR_S2;  // ../../SGPIO_DEMO_TOP.v(30)
  output C_ERROR_S3;  // ../../SGPIO_DEMO_TOP.v(35)
  output C_ERROR_S4;  // ../../SGPIO_DEMO_TOP.v(40)
  output C_ERROR_S5;  // ../../SGPIO_DEMO_TOP.v(45)
  output C_ERROR_S6;  // ../../SGPIO_DEMO_TOP.v(50)
  output C_ERROR_S7;  // ../../SGPIO_DEMO_TOP.v(55)
  output C_LOCATE_S0;  // ../../SGPIO_DEMO_TOP.v(19)
  output C_LOCATE_S1;  // ../../SGPIO_DEMO_TOP.v(24)
  output C_LOCATE_S2;  // ../../SGPIO_DEMO_TOP.v(29)
  output C_LOCATE_S3;  // ../../SGPIO_DEMO_TOP.v(34)
  output C_LOCATE_S4;  // ../../SGPIO_DEMO_TOP.v(39)
  output C_LOCATE_S5;  // ../../SGPIO_DEMO_TOP.v(44)
  output C_LOCATE_S6;  // ../../SGPIO_DEMO_TOP.v(49)
  output C_LOCATE_S7;  // ../../SGPIO_DEMO_TOP.v(54)
  output DATAIN_SGPIO_0;  // ../../SGPIO_DEMO_TOP.v(12)
  output DATAIN_SGPIO_1;  // ../../SGPIO_DEMO_TOP.v(17)
  output smb_iic_scl;  // ../../SGPIO_DEMO_TOP.v(6)
  inout smb_iic_sda;  // ../../SGPIO_DEMO_TOP.v(7)

  parameter DATA_BYTE_NUM = 1;
  parameter FCLK = 50000000;
  parameter FSCL = 250000;
  parameter REG_ADDR_BYTE_NUM = 1;
  parameter TRANSMIT_INTERVAL = 250000000;
  wire [26:0] clk_counter;  // ../../SGPIO_DEMO_TOP.v(110)
  wire [26:0] clk_counter_b1;
  wire [7:0] device_reg_addr;  // ../../SGPIO_DEMO_TOP.v(167)
  wire [1:0] device_sel_reg;  // ../../SGPIO_DEMO_TOP.v(65)
  wire [15:0] poll_counter;  // ../../SGPIO_DEMO_TOP.v(66)
  wire [15:0] poll_counter_b1;
  wire [7:0] pwm_control;  // ../../SGPIO_DEMO_TOP.v(61)
  wire [7:0] rdata;  // ../../SGPIO_DEMO_TOP.v(324)
  wire [15:0] rst_cnt;  // ../../SGPIO_DEMO_TOP.v(68)
  wire [15:0] rst_cnt_b1;
  wire [4:0] \u_iic_drive/ack_flag_b ;
  wire [3:0] \u_iic_drive/bit_cnt ;  // ../../i2c_master.v(48)
  wire [3:0] \u_iic_drive/bit_cnt_num ;  // ../../i2c_master.v(49)
  wire [1:0] \u_iic_drive/bit_cnt_num_b ;
  wire [7:0] \u_iic_drive/device_addr ;  // ../../i2c_master.v(12)
  wire [7:0] \u_iic_drive/div_cnt ;  // ../../i2c_master.v(50)
  wire [7:0] \u_iic_drive/div_cnt_b2 ;
  wire [7:0] \u_iic_drive/rdata_r ;  // ../../i2c_master.v(55)
  wire [7:0] \u_iic_drive/reg_addr_r ;  // ../../i2c_master.v(54)
  wire [6:0] \u_iic_drive/state_c ;  // ../../i2c_master.v(47)
  wire [7:0] \u_iic_drive/wdata_r ;  // ../../i2c_master.v(53)
  wire [4:0] \uut/bit_count_0 ;  // ../../SGPIO_Controller_Slave.v(26)
  wire [4:0] \uut/bit_count_1 ;  // ../../SGPIO_Controller_Slave.v(27)
  wire [23:0] \uut/data_buffer_0 ;  // ../../SGPIO_Controller_Slave.v(24)
  wire [23:0] \uut/data_buffer_1 ;  // ../../SGPIO_Controller_Slave.v(25)
  wire [23:0] \uut/sgpio_0_data_out ;  // ../../SGPIO_Controller_Slave.v(15)
  wire [23:0] \uut/sgpio_1_data_out ;  // ../../SGPIO_Controller_Slave.v(16)
  wire add3_syn_84;  // ../../SGPIO_DEMO_TOP.v(77)
  wire add3_syn_88;  // ../../SGPIO_DEMO_TOP.v(77)
  wire add3_syn_92;  // ../../SGPIO_DEMO_TOP.v(77)
  wire add3_syn_96;  // ../../SGPIO_DEMO_TOP.v(77)
  wire lt1_syn_5;  // ../../SGPIO_DEMO_TOP.v(357)
  wire lt1_syn_9;  // ../../SGPIO_DEMO_TOP.v(357)
  wire lt1_syn_13;  // ../../SGPIO_DEMO_TOP.v(357)
  wire lt1_syn_17;  // ../../SGPIO_DEMO_TOP.v(357)
  wire reg5_syn_18;  // ../../SGPIO_DEMO_TOP.v(367)
  wire rw_flag_b_reg_syn_5;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_7;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_9;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_11;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_14;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_16;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_18;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_20;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_22;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_24;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_26;  // ../../SGPIO_DEMO_TOP.v(118)
  wire rw_flag_b_reg_syn_28;  // ../../SGPIO_DEMO_TOP.v(118)
  wire ACT_S0_dup_1;  // ../../SGPIO_DEMO_TOP.v(22)
  wire ACT_S1_dup_1;  // ../../SGPIO_DEMO_TOP.v(27)
  wire ACT_S2_dup_1;  // ../../SGPIO_DEMO_TOP.v(32)
  wire ACT_S3_dup_1;  // ../../SGPIO_DEMO_TOP.v(37)
  wire ACT_S4_dup_1;  // ../../SGPIO_DEMO_TOP.v(42)
  wire ACT_S5_dup_1;  // ../../SGPIO_DEMO_TOP.v(47)
  wire ACT_S6_dup_1;  // ../../SGPIO_DEMO_TOP.v(52)
  wire ACT_S7_dup_1;  // ../../SGPIO_DEMO_TOP.v(57)
  wire C_ACT_S0_n;
  wire C_ACT_S1_n;
  wire C_ACT_S2_n;
  wire C_ACT_S3_n;
  wire C_ACT_S4_n;
  wire C_ACT_S5_n;
  wire C_ACT_S6_n;
  wire C_ACT_S7_n;
  wire C_LOCATE_S0_dup_1;  // ../../SGPIO_DEMO_TOP.v(19)
  wire C_LOCATE_S1_dup_1;  // ../../SGPIO_DEMO_TOP.v(24)
  wire C_LOCATE_S2_dup_1;  // ../../SGPIO_DEMO_TOP.v(29)
  wire C_LOCATE_S3_dup_1;  // ../../SGPIO_DEMO_TOP.v(34)
  wire C_LOCATE_S4_dup_1;  // ../../SGPIO_DEMO_TOP.v(39)
  wire C_LOCATE_S5_dup_1;  // ../../SGPIO_DEMO_TOP.v(44)
  wire C_LOCATE_S6_dup_1;  // ../../SGPIO_DEMO_TOP.v(49)
  wire C_LOCATE_S7_dup_1;  // ../../SGPIO_DEMO_TOP.v(54)
  wire DATAIN_SGPIO_0_syn_1;  // ../../SGPIO_DEMO_TOP.v(12)
  wire DATAIN_SGPIO_1_syn_1;  // ../../SGPIO_DEMO_TOP.v(17)
  wire DATAOUT_SGPIO_0_dup_1;  // ../../SGPIO_DEMO_TOP.v(11)
  wire DATAOUT_SGPIO_1_dup_1;  // ../../SGPIO_DEMO_TOP.v(16)
  wire SCL_SGPIO_0_dup_1;  // ../../SGPIO_DEMO_TOP.v(9)
  wire SCL_SGPIO_0_syn_4;  // ../../SGPIO_DEMO_TOP.v(9)
  wire SCL_SGPIO_1_dup_1;  // ../../SGPIO_DEMO_TOP.v(14)
  wire SCL_SGPIO_1_syn_4;  // ../../SGPIO_DEMO_TOP.v(14)
  wire SLOAD_SGPIO_0_dup_1;  // ../../SGPIO_DEMO_TOP.v(10)
  wire SLOAD_SGPIO_1_dup_1;  // ../../SGPIO_DEMO_TOP.v(15)
  wire clk_counter_b_n;
  wire device_sel_reg_b_n;
  wire _al_n1_syn_182;
  wire _al_n1_syn_186;
  wire _al_n1_syn_190;
  wire _al_n1_syn_194;
  wire _al_n1_syn_198;
  wire _al_n1_syn_202;
  wire _al_n1_syn_288;
  wire _al_n1_syn_290;
  wire _al_n1_syn_292;
  wire _al_n1_syn_294;
  wire _al_n1_syn_296;
  wire _al_n1_syn_298;
  wire _al_n1_syn_300;
  wire _al_n1_syn_302;
  wire \poll_counter_b[1]_syn_2 ;
  wire \poll_counter_b[1]_syn_4 ;
  wire \poll_counter_b[1]_syn_6 ;
  wire \poll_counter_b[1]_syn_8 ;
  wire pwm_control_b1_n;
  wire rst_cnt_b_n;
  wire rst_cnt_b_n_dup_1;
  wire rst_cnt_b_n_dup_2;
  wire rst_cnt_b_n_dup_3;
  wire rst_cnt_b_n_dup_4;
  wire rst_cnt_b_n_dup_5;
  wire rst_cnt_b_n_dup_6;
  wire rw_flag_b;  // ../../SGPIO_DEMO_TOP.v(114)
  wire smb_iic_scl_dup_3;  // ../../SGPIO_DEMO_TOP.v(6)
  wire smb_iic_sda_dup_3;  // ../../SGPIO_DEMO_TOP.v(7)
  wire sys_clk_dup_1;  // ../../SGPIO_DEMO_TOP.v(3)
  wire transmit_trigger;  // ../../SGPIO_DEMO_TOP.v(111)
  wire transmit_trigger_syn_4;  // ../../SGPIO_DEMO_TOP.v(111)
  wire \u_iic_drive/add0_syn_42 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_44 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_46 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_48 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add1_syn_16 ;  // ../../i2c_master.v(220)
  wire \u_iic_drive/eq14_syn_24 ;  // ../../i2c_master.v(225)
  wire \u_iic_drive/mux6_syn_11 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/reg3_syn_35 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_38 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/sda_out_en_reg_syn_5 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_9 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_11 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_13 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_15 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_17 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sel0_syn_58 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_61 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_63 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_66 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_68 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_70 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_72 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_75 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_77 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_79 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_81 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/sel0_syn_83 ;  // ../../i2c_master.v(292)
  wire \u_iic_drive/bit_cnt_b[3]_syn_2 ;
  wire \u_iic_drive/state_c[6]_syn_130 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_188 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_222 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_35 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_140 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_451 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_455 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_459 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_461 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_464 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_469 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_477 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/ack_flag_n12 ;
  wire \u_iic_drive/add_byte_cnt_n ;
  wire \u_iic_drive/div_cnt_b_n ;
  wire \u_iic_drive/end_div_cnt ;  // ../../i2c_master.v(42)
  wire \u_iic_drive/end_div_cnt_n_syn_2 ;
  wire \u_iic_drive/h2l_flag ;  // ../../i2c_master.v(39)
  wire \u_iic_drive/l2h_flag ;  // ../../i2c_master.v(38)
  wire \u_iic_drive/l2h_flag_n_syn_2 ;
  wire \u_iic_drive/rd_flag ;  // ../../i2c_master.v(41)
  wire \u_iic_drive/rd_flag_n_syn_2 ;
  wire \u_iic_drive/rd_flag_n_syn_4 ;
  wire \u_iic_drive/rdata_r_b_n8 ;
  wire \u_iic_drive/rdata_r_b_n9 ;
  wire \u_iic_drive/rdata_vld_r ;  // ../../i2c_master.v(56)
  wire \u_iic_drive/rdata_vld_r_n2 ;
  wire \u_iic_drive/rw_flag_r ;  // ../../i2c_master.v(43)
  wire \u_iic_drive/scl_n ;
  wire \u_iic_drive/scl_n1 ;
  wire \u_iic_drive/sda_out ;  // ../../i2c_master.v(44)
  wire \u_iic_drive/sda_out_en ;  // ../../i2c_master.v(45)
  wire \u_iic_drive/sda_out_n11 ;
  wire \u_iic_drive/sda_out_n9 ;
  wire \u_iic_drive/wr_flag ;  // ../../i2c_master.v(40)
  wire \uut/mux13_syn_27 ;  // ../../SGPIO_Controller_Slave.v(56)
  wire \uut/mux6_syn_27 ;  // ../../SGPIO_Controller_Slave.v(37)
  wire \uut/bit_count_0_b[0]_syn_2 ;
  wire \uut/bit_count_0_b[0]_syn_5 ;
  wire \uut/bit_count_1_b[0]_syn_2 ;
  wire \uut/bit_count_1_b[0]_syn_5 ;
  wire \uut/bit_count_0_b1_n ;
  wire \uut/bit_count_1_b1_n ;

  assign DATAIN_SGPIO_0 = DATAIN_SGPIO_0_syn_1;
  assign DATAIN_SGPIO_1 = DATAIN_SGPIO_1_syn_1;
  EF2_PHY_SPAD #(
    //.LOCATION("P10"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S0_syn_2 (
    .ipad(ACT_S0),
    .ts(1'b1),
    .di(ACT_S0_dup_1));  // ../../SGPIO_DEMO_TOP.v(22)
  EF2_PHY_SPAD #(
    //.LOCATION("P17"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S1_syn_2 (
    .ipad(ACT_S1),
    .ts(1'b1),
    .di(ACT_S1_dup_1));  // ../../SGPIO_DEMO_TOP.v(27)
  EF2_PHY_SPAD #(
    //.LOCATION("P25"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S2_syn_2 (
    .ipad(ACT_S2),
    .ts(1'b1),
    .di(ACT_S2_dup_1));  // ../../SGPIO_DEMO_TOP.v(32)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P30"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    ACT_S3_syn_2 (
    .ipad(ACT_S3),
    .di(ACT_S3_dup_1));  // ../../SGPIO_DEMO_TOP.v(37)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P43"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    ACT_S4_syn_2 (
    .ipad(ACT_S4),
    .di(ACT_S4_dup_1));  // ../../SGPIO_DEMO_TOP.v(42)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P49"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    ACT_S5_syn_2 (
    .ipad(ACT_S5),
    .di(ACT_S5_dup_1));  // ../../SGPIO_DEMO_TOP.v(47)
  EF2_PHY_SPAD #(
    //.LOCATION("P54"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S6_syn_2 (
    .ipad(ACT_S6),
    .ts(1'b1),
    .di(ACT_S6_dup_1));  // ../../SGPIO_DEMO_TOP.v(52)
  EF2_PHY_SPAD #(
    //.LOCATION("P60"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S7_syn_2 (
    .ipad(ACT_S7),
    .ts(1'b1),
    .di(ACT_S7_dup_1));  // ../../SGPIO_DEMO_TOP.v(57)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(C*D)"),
    //.LUTG0("~(C*D)"),
    .INIT_LUTF0(16'b0000111111111111),
    .INIT_LUTG0(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    C_ACT_S0_n_syn_5 (
    .c({open_n118,\uut/sgpio_0_data_out [23]}),
    .d({open_n121,ACT_S0_dup_1}),
    .f({open_n139,C_ACT_S0_n}));
  EF2_PHY_SPAD #(
    //.LOCATION("P9"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ACT_S0_syn_2 (
    .ce(1'b1),
    .clk(transmit_trigger_syn_4),
    .do({open_n145,C_ACT_S0_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S0));  // ../../SGPIO_DEMO_TOP.v(21)
  EF2_PHY_SPAD #(
    //.LOCATION("P16"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ACT_S1_syn_2 (
    .ce(1'b1),
    .clk(transmit_trigger_syn_4),
    .do({open_n151,C_ACT_S1_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S1));  // ../../SGPIO_DEMO_TOP.v(26)
  EF2_PHY_MSLICE #(
    //.LUT0("~(C*D)"),
    .INIT_LUT0(16'b0000111111111111),
    .MODE("LOGIC"))
    C_ACT_S2_n_syn_5 (
    .c({open_n161,\uut/sgpio_0_data_out [17]}),
    .d({open_n164,ACT_S2_dup_1}),
    .f({open_n178,C_ACT_S2_n}));
  EF2_PHY_SPAD #(
    //.LOCATION("P24"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ACT_S2_syn_2 (
    .ce(1'b1),
    .clk(transmit_trigger_syn_4),
    .do({open_n184,C_ACT_S2_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S2));  // ../../SGPIO_DEMO_TOP.v(31)
  EF2_PHY_MSLICE #(
    //.LUT0("~(C*D)"),
    .INIT_LUT0(16'b0000111111111111),
    .MODE("LOGIC"))
    C_ACT_S3_n_syn_5 (
    .c({open_n194,\uut/sgpio_0_data_out [14]}),
    .d({open_n197,ACT_S3_dup_1}),
    .f({open_n211,C_ACT_S3_n}));
  EF2_PHY_PAD #(
    //.LOCATION("P29"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    C_ACT_S3_syn_2 (
    .do({open_n218,open_n219,open_n220,C_ACT_S3_n}),
    .osclk(transmit_trigger_syn_4),
    .opad(C_ACT_S3));  // ../../SGPIO_DEMO_TOP.v(36)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(C*D)"),
    //.LUTF1("~(C*D)"),
    //.LUTG0("~(C*D)"),
    //.LUTG1("~(C*D)"),
    .INIT_LUTF0(16'b0000111111111111),
    .INIT_LUTF1(16'b0000111111111111),
    .INIT_LUTG0(16'b0000111111111111),
    .INIT_LUTG1(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    C_ACT_S4_n_syn_5 (
    .c({\uut/sgpio_1_data_out [23],\uut/sgpio_1_data_out [20]}),
    .d({ACT_S4_dup_1,ACT_S5_dup_1}),
    .f({C_ACT_S4_n,C_ACT_S5_n}));
  EF2_PHY_PAD #(
    //.LOCATION("P42"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    C_ACT_S4_syn_2 (
    .do({open_n268,open_n269,open_n270,C_ACT_S4_n}),
    .osclk(transmit_trigger_syn_4),
    .opad(C_ACT_S4));  // ../../SGPIO_DEMO_TOP.v(41)
  EF2_PHY_PAD #(
    //.LOCATION("P48"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    C_ACT_S5_syn_2 (
    .do({open_n290,open_n291,open_n292,C_ACT_S5_n}),
    .osclk(transmit_trigger_syn_4),
    .opad(C_ACT_S5));  // ../../SGPIO_DEMO_TOP.v(46)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(C*D)"),
    //.LUTG0("~(C*D)"),
    .INIT_LUTF0(16'b0000111111111111),
    .INIT_LUTG0(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    C_ACT_S6_n_syn_5 (
    .c({open_n315,\uut/sgpio_1_data_out [17]}),
    .d({open_n318,ACT_S6_dup_1}),
    .f({open_n336,C_ACT_S6_n}));
  EF2_PHY_SPAD #(
    //.LOCATION("P53"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ACT_S6_syn_2 (
    .ce(1'b1),
    .clk(transmit_trigger_syn_4),
    .do({open_n342,C_ACT_S6_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S6));  // ../../SGPIO_DEMO_TOP.v(51)
  EF2_PHY_MSLICE #(
    //.LUT0("~(C*D)"),
    .INIT_LUT0(16'b0000111111111111),
    .MODE("LOGIC"))
    C_ACT_S7_n_syn_5 (
    .c({open_n352,\uut/sgpio_1_data_out [14]}),
    .d({open_n355,ACT_S7_dup_1}),
    .f({open_n369,C_ACT_S7_n}));
  EF2_PHY_SPAD #(
    //.LOCATION("P59"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ACT_S7_syn_2 (
    .ce(1'b1),
    .clk(transmit_trigger_syn_4),
    .do({open_n375,C_ACT_S7_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S7));  // ../../SGPIO_DEMO_TOP.v(56)
  EF2_PHY_SPAD #(
    //.LOCATION("P8"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ERROR_S0_syn_4 (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .do({open_n381,\uut/data_buffer_0 [20]}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ERROR_S0));  // ../../SGPIO_DEMO_TOP.v(20)
  EF2_PHY_SPAD #(
    //.LOCATION("P15"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ERROR_S1_syn_4 (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .do({open_n387,\uut/data_buffer_0 [17]}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ERROR_S1));  // ../../SGPIO_DEMO_TOP.v(25)
  EF2_PHY_SPAD #(
    //.LOCATION("P19"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ERROR_S2_syn_4 (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .do({open_n393,\uut/data_buffer_0 [14]}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ERROR_S2));  // ../../SGPIO_DEMO_TOP.v(30)
  EF2_PHY_PAD #(
    //.LOCATION("P28"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    C_ERROR_S3_syn_4 (
    .ce(\uut/mux6_syn_27 ),
    .do({open_n399,open_n400,open_n401,\uut/data_buffer_0 [11]}),
    .osclk(SCL_SGPIO_0_syn_4),
    .opad(C_ERROR_S3));  // ../../SGPIO_DEMO_TOP.v(35)
  EF2_PHY_PAD #(
    //.LOCATION("P41"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    C_ERROR_S4_syn_4 (
    .ce(\uut/mux13_syn_27 ),
    .do({open_n420,open_n421,open_n422,\uut/data_buffer_1 [20]}),
    .osclk(SCL_SGPIO_1_syn_4),
    .opad(C_ERROR_S4));  // ../../SGPIO_DEMO_TOP.v(40)
  EF2_PHY_PAD #(
    //.LOCATION("P47"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    C_ERROR_S5_syn_4 (
    .ce(\uut/mux13_syn_27 ),
    .do({open_n441,open_n442,open_n443,\uut/data_buffer_1 [17]}),
    .osclk(SCL_SGPIO_1_syn_4),
    .opad(C_ERROR_S5));  // ../../SGPIO_DEMO_TOP.v(45)
  EF2_PHY_SPAD #(
    //.LOCATION("P52"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ERROR_S6_syn_4 (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .do({open_n462,\uut/data_buffer_1 [14]}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ERROR_S6));  // ../../SGPIO_DEMO_TOP.v(50)
  EF2_PHY_SPAD #(
    //.LOCATION("P58"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("INV"),
    .OUTRSTMUX("RST"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    C_ERROR_S7_syn_4 (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .do({open_n468,\uut/data_buffer_1 [11]}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ERROR_S7));  // ../../SGPIO_DEMO_TOP.v(55)
  EF2_PHY_SPAD #(
    //.LOCATION("P7"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S0_syn_2 (
    .do({open_n476,C_LOCATE_S0_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S0));  // ../../SGPIO_DEMO_TOP.v(19)
  EF2_PHY_SPAD #(
    //.LOCATION("P14"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S1_syn_2 (
    .do({open_n485,C_LOCATE_S1_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S1));  // ../../SGPIO_DEMO_TOP.v(24)
  EF2_PHY_SPAD #(
    //.LOCATION("P18"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S2_syn_2 (
    .do({open_n494,C_LOCATE_S2_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S2));  // ../../SGPIO_DEMO_TOP.v(29)
  EF2_PHY_PAD #(
    //.LOCATION("P27"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S3_syn_2 (
    .do({open_n502,open_n503,open_n504,C_LOCATE_S3_dup_1}),
    .opad(C_LOCATE_S3));  // ../../SGPIO_DEMO_TOP.v(34)
  EF2_PHY_PAD #(
    //.LOCATION("P40"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S4_syn_2 (
    .do({open_n525,open_n526,open_n527,C_LOCATE_S4_dup_1}),
    .opad(C_LOCATE_S4));  // ../../SGPIO_DEMO_TOP.v(39)
  EF2_PHY_PAD #(
    //.LOCATION("P45"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S5_syn_2 (
    .do({open_n548,open_n549,open_n550,C_LOCATE_S5_dup_1}),
    .opad(C_LOCATE_S5));  // ../../SGPIO_DEMO_TOP.v(44)
  EF2_PHY_SPAD #(
    //.LOCATION("P51"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S6_syn_2 (
    .do({open_n572,C_LOCATE_S6_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S6));  // ../../SGPIO_DEMO_TOP.v(49)
  EF2_PHY_SPAD #(
    //.LOCATION("P57"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S7_syn_2 (
    .do({open_n581,C_LOCATE_S7_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S7));  // ../../SGPIO_DEMO_TOP.v(54)
  EF2_PHY_PAD #(
    //.LOCATION("P37"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    DATAIN_SGPIO_0_syn_2 (
    .bpad(DATAIN_SGPIO_0_syn_1));  // ../../SGPIO_DEMO_TOP.v(12)
  EF2_PHY_SPAD #(
    //.LOCATION("P69"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("TS"))
    DATAIN_SGPIO_1_syn_2 (
    .ts(1'b1),
    .bpad(DATAIN_SGPIO_1_syn_1));  // ../../SGPIO_DEMO_TOP.v(17)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P36"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    DATAOUT_SGPIO_0_syn_2 (
    .ipad(DATAOUT_SGPIO_0),
    .di(DATAOUT_SGPIO_0_dup_1));  // ../../SGPIO_DEMO_TOP.v(11)
  EF2_PHY_SPAD #(
    //.LOCATION("P68"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    DATAOUT_SGPIO_1_syn_2 (
    .ipad(DATAOUT_SGPIO_1),
    .ts(1'b1),
    .di(DATAOUT_SGPIO_1_dup_1));  // ../../SGPIO_DEMO_TOP.v(16)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P31"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    SCL_SGPIO_0_syn_2 (
    .ipad(SCL_SGPIO_0),
    .di(SCL_SGPIO_0_dup_1));  // ../../SGPIO_DEMO_TOP.v(9)
  EF2_PHY_GCLK SCL_SGPIO_0_syn_3 (
    .clki(SCL_SGPIO_0_dup_1),
    .clko(SCL_SGPIO_0_syn_4));  // ../../SGPIO_DEMO_TOP.v(9)
  EF2_PHY_SPAD #(
    //.LOCATION("P66"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    SCL_SGPIO_1_syn_2 (
    .ipad(SCL_SGPIO_1),
    .ts(1'b1),
    .di(SCL_SGPIO_1_dup_1));  // ../../SGPIO_DEMO_TOP.v(14)
  EF2_PHY_GCLK SCL_SGPIO_1_syn_3 (
    .clki(SCL_SGPIO_1_dup_1),
    .clko(SCL_SGPIO_1_syn_4));  // ../../SGPIO_DEMO_TOP.v(14)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P32"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    SLOAD_SGPIO_0_syn_2 (
    .ipad(SLOAD_SGPIO_0),
    .di(SLOAD_SGPIO_0_dup_1));  // ../../SGPIO_DEMO_TOP.v(10)
  EF2_PHY_SPAD #(
    //.LOCATION("P67"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    SLOAD_SGPIO_1_syn_2 (
    .ipad(SLOAD_SGPIO_1),
    .ts(1'b1),
    .di(SLOAD_SGPIO_1_dup_1));  // ../../SGPIO_DEMO_TOP.v(15)
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    _al_n1_syn_312 (
    .a(2'b00),
    .b(2'b01),
    .c(2'b00),
    .clk(sys_clk_dup_1),
    .d({clk_counter[1],1'b1}),
    .e({clk_counter[2],clk_counter[0]}),
    .mi(clk_counter_b1[9:8]),
    .sr(rst_cnt_b_n_dup_4),
    .f({clk_counter_b1[1],open_n731}),
    .fco(_al_n1_syn_182),
    .fx({clk_counter_b1[2],clk_counter_b1[0]}),
    .q(clk_counter[9:8]));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_313 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[5],clk_counter[3]}),
    .e({clk_counter[6],clk_counter[4]}),
    .fci(_al_n1_syn_182),
    .f({clk_counter_b1[5],clk_counter_b1[3]}),
    .fco(_al_n1_syn_186),
    .fx({clk_counter_b1[6],clk_counter_b1[4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_314 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[9],clk_counter[7]}),
    .e({clk_counter[10],clk_counter[8]}),
    .fci(_al_n1_syn_186),
    .f({clk_counter_b1[9],clk_counter_b1[7]}),
    .fco(_al_n1_syn_190),
    .fx({clk_counter_b1[10],clk_counter_b1[8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_315 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[13],clk_counter[11]}),
    .e({clk_counter[14],clk_counter[12]}),
    .fci(_al_n1_syn_190),
    .f({clk_counter_b1[13],clk_counter_b1[11]}),
    .fco(_al_n1_syn_194),
    .fx({clk_counter_b1[14],clk_counter_b1[12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_316 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[17],clk_counter[15]}),
    .e({clk_counter[18],clk_counter[16]}),
    .fci(_al_n1_syn_194),
    .f({clk_counter_b1[17],clk_counter_b1[15]}),
    .fco(_al_n1_syn_198),
    .fx({clk_counter_b1[18],clk_counter_b1[16]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_317 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[21],clk_counter[19]}),
    .e({clk_counter[22],clk_counter[20]}),
    .fci(_al_n1_syn_198),
    .f({clk_counter_b1[21],clk_counter_b1[19]}),
    .fco(_al_n1_syn_202),
    .fx({clk_counter_b1[22],clk_counter_b1[20]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_312"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_318 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[25],clk_counter[23]}),
    .e({clk_counter[26],clk_counter[24]}),
    .fci(_al_n1_syn_202),
    .f({clk_counter_b1[25],clk_counter_b1[23]}),
    .fx({clk_counter_b1[26],clk_counter_b1[24]}));
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    _al_n1_syn_343 (
    .a(2'b10),
    .b({clk_counter[0],open_n841}),
    .fco(_al_n1_syn_288));
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    _al_n1_syn_346 (
    .a(2'b00),
    .b(poll_counter[4:3]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_290),
    .sr(rst_cnt_b_n_dup_4),
    .f({poll_counter_b1[4],open_n883}),
    .fco(_al_n1_syn_292),
    .q({open_n886,poll_counter[3]}));
  EF2_PHY_LSLICE #(
    //.MACRO("add3_syn_98"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    add3_syn_100 (
    .a({rst_cnt[9],rst_cnt[7]}),
    .b({rst_cnt[10],rst_cnt[8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(add3_syn_88),
    .f({rst_cnt_b1[9],rst_cnt_b1[7]}),
    .fco(add3_syn_92),
    .fx({rst_cnt_b1[10],rst_cnt_b1[8]}));  // ../../SGPIO_DEMO_TOP.v(77)
  EF2_PHY_LSLICE #(
    //.MACRO("add3_syn_98"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    add3_syn_101 (
    .a({rst_cnt[13],rst_cnt[11]}),
    .b({rst_cnt[14],rst_cnt[12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(add3_syn_92),
    .f({rst_cnt_b1[13],rst_cnt_b1[11]}),
    .fco(add3_syn_96),
    .fx({rst_cnt_b1[14],rst_cnt_b1[12]}));  // ../../SGPIO_DEMO_TOP.v(77)
  EF2_PHY_LSLICE #(
    //.MACRO("add3_syn_98"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    add3_syn_102 (
    .a({open_n923,rst_cnt[15]}),
    .c(2'b00),
    .d({open_n928,1'b0}),
    .fci(add3_syn_96),
    .f({open_n945,rst_cnt_b1[15]}));  // ../../SGPIO_DEMO_TOP.v(77)
  EF2_PHY_LSLICE #(
    //.MACRO("add3_syn_98"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    add3_syn_98 (
    .a({rst_cnt[1],1'b0}),
    .b({rst_cnt[2],rst_cnt[0]}),
    .c(2'b00),
    .clk(sys_clk_dup_1),
    .d(2'b01),
    .e(2'b01),
    .mi(rst_cnt_b1[6:5]),
    .f({rst_cnt_b1[1],open_n965}),
    .fco(add3_syn_84),
    .fx({rst_cnt_b1[2],rst_cnt_b1[0]}),
    .q(rst_cnt[6:5]));  // ../../SGPIO_DEMO_TOP.v(77)
  EF2_PHY_LSLICE #(
    //.MACRO("add3_syn_98"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    add3_syn_99 (
    .a({rst_cnt[5],rst_cnt[3]}),
    .b({rst_cnt[6],rst_cnt[4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(add3_syn_84),
    .f({rst_cnt_b1[5],rst_cnt_b1[3]}),
    .fco(add3_syn_88),
    .fx({rst_cnt_b1[6],rst_cnt_b1[4]}));  // ../../SGPIO_DEMO_TOP.v(77)
  EF2_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_42 (
    .a(2'b00),
    .b({rdata[0],open_n1031}),
    .fco(lt1_syn_5));  // ../../SGPIO_DEMO_TOP.v(357)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_45 (
    .a(2'b11),
    .b(rdata[2:1]),
    .fci(lt1_syn_5),
    .fco(lt1_syn_9));  // ../../SGPIO_DEMO_TOP.v(357)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_48 (
    .a(2'b11),
    .b(rdata[4:3]),
    .fci(lt1_syn_9),
    .fco(lt1_syn_13));  // ../../SGPIO_DEMO_TOP.v(357)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_51 (
    .a(2'b00),
    .b(rdata[6:5]),
    .fci(lt1_syn_13),
    .fco(lt1_syn_17));  // ../../SGPIO_DEMO_TOP.v(357)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_54 (
    .a(2'b00),
    .b({1'b1,rdata[7]}),
    .fci(lt1_syn_17),
    .f({pwm_control_b1_n,open_n1147}));  // ../../SGPIO_DEMO_TOP.v(357)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*~D*C*B*A)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(~1*~D*C*B*A)"),
    //.LUTG1("(C*B*D)"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \poll_counter_b[1]_syn_24  (
    .a({open_n1153,\poll_counter_b[1]_syn_4 }),
    .b({poll_counter[4],\poll_counter_b[1]_syn_6 }),
    .c({poll_counter[5],\poll_counter_b[1]_syn_8 }),
    .d({\poll_counter_b[1]_syn_2 ,poll_counter[10]}),
    .e({open_n1156,poll_counter[11]}),
    .f({\poll_counter_b[1]_syn_4 ,device_sel_reg_b_n}));
  EF2_PHY_MSLICE #(
    //.LUT0("(C@(B*D))"),
    //.LUT1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011110011110000),
    .INIT_LUT1(16'b0000000000000010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \poll_counter_b[1]_syn_26  (
    .a({clk_counter[0],open_n1177}),
    .b({poll_counter[1],rst_cnt_b_n_dup_4}),
    .c({poll_counter[2],rw_flag_b}),
    .clk(sys_clk_dup_1),
    .d({poll_counter[3],clk_counter_b_n}),
    .f({\poll_counter_b[1]_syn_8 ,open_n1192}),
    .q({open_n1196,rw_flag_b}));
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \poll_counter_b[1]_syn_28  (
    .a({poll_counter[6],open_n1197}),
    .b({poll_counter[7],open_n1198}),
    .c({poll_counter[8],poll_counter_b1[5]}),
    .clk(sys_clk_dup_1),
    .d({poll_counter[9],device_sel_reg_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .f({\poll_counter_b[1]_syn_2 ,open_n1212}),
    .q({open_n1216,poll_counter[5]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(~D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000000000001),
    .MODE("LOGIC"))
    \poll_counter_b[1]_syn_30  (
    .a({open_n1217,poll_counter[12]}),
    .b({open_n1218,poll_counter[13]}),
    .c({open_n1219,poll_counter[14]}),
    .d({open_n1222,poll_counter[15]}),
    .f({open_n1236,\poll_counter_b[1]_syn_6 }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(~D*~C*~B*A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000000010),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_131 (
    .a({clk_counter[4],rw_flag_b_reg_syn_7}),
    .b({clk_counter[5],rw_flag_b_reg_syn_9}),
    .c({clk_counter[6],rw_flag_b_reg_syn_11}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[7],rst_cnt[10]}),
    .e({open_n1243,rst_cnt[11]}),
    .mi(clk_counter_b1[7:6]),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_22,rst_cnt_b_n_dup_6}),
    .q(clk_counter[7:6]));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_134 (
    .a({rw_flag_b_reg_syn_24,rw_flag_b_reg_syn_7}),
    .b({rw_flag_b_reg_syn_26,rw_flag_b_reg_syn_9}),
    .c({clk_counter[8],rw_flag_b_reg_syn_11}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[9],rst_cnt[10]}),
    .e({open_n1260,rst_cnt[11]}),
    .mi(clk_counter_b1[3:2]),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_28,rst_cnt_b_n_dup_3}),
    .q(clk_counter[3:2]));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_137 (
    .a({open_n1276,rw_flag_b_reg_syn_20}),
    .b({open_n1277,rw_flag_b_reg_syn_28}),
    .c({clk_counter_b1[0],clk_counter[0]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter[1]}),
    .e({open_n1279,clk_counter[26]}),
    .mi({open_n1281,clk_counter_b1[14]}),
    .sr(rst_cnt_b_n_dup_4),
    .f({open_n1293,clk_counter_b_n}),
    .q({clk_counter[0],clk_counter[14]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C@D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C@D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_139 (
    .c({clk_counter_b1[15],transmit_trigger}),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q({clk_counter[15],transmit_trigger}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_142 (
    .c({clk_counter_b1[12],clk_counter_b1[13]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q({clk_counter[12],clk_counter[13]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_145 (
    .c(clk_counter_b1[18:17]),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q(clk_counter[18:17]));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_148 (
    .c({clk_counter_b1[21],clk_counter_b1[19]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q({clk_counter[21],clk_counter[19]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0011000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_151 (
    .b({clk_counter[14],open_n1399}),
    .c({clk_counter[15],clk_counter_b1[20]}),
    .clk(sys_clk_dup_1),
    .d({rw_flag_b_reg_syn_14,clk_counter_b_n}),
    .mi({clk_counter_b1[24],open_n1411}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_16,open_n1412}),
    .q({clk_counter[24],clk_counter[20]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000000000100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_154 (
    .a({clk_counter[22],open_n1416}),
    .b({clk_counter[23],open_n1417}),
    .c({clk_counter[24],clk_counter_b1[23]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[25],clk_counter_b_n}),
    .mi({clk_counter_b1[25],open_n1429}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_18,open_n1430}),
    .q({clk_counter[25],clk_counter[23]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_157 (
    .b({clk_counter[2],open_n1436}),
    .c({clk_counter[3],clk_counter_b1[5]}),
    .clk(sys_clk_dup_1),
    .d({rw_flag_b_reg_syn_22,clk_counter_b_n}),
    .mi({clk_counter_b1[4],open_n1441}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_24,open_n1453}),
    .q({clk_counter[4],clk_counter[5]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_160 (
    .c(clk_counter_b1[11:10]),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q(clk_counter[11:10]));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_163 (
    .a({rw_flag_b_reg_syn_16,clk_counter[16]}),
    .b({rw_flag_b_reg_syn_18,clk_counter[17]}),
    .c({clk_counter[20],clk_counter[18]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[21],clk_counter[19]}),
    .mi({clk_counter_b1[22],clk_counter_b1[26]}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_20,rw_flag_b_reg_syn_14}),
    .q({clk_counter[22],clk_counter[26]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_165 (
    .clk(sys_clk_dup_1),
    .mi({open_n1509,clk_counter_b1[16]}),
    .sr(rst_cnt_b_n_dup_4),
    .q({open_n1526,clk_counter[16]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_167 (
    .clk(sys_clk_dup_1),
    .mi({open_n1539,clk_counter_b1[1]}),
    .sr(rst_cnt_b_n_dup_4),
    .q({open_n1556,clk_counter[1]}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101010100110011),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111111100001111),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg1_syn_26 (
    .a({open_n1557,\u_iic_drive/device_addr [0]}),
    .b({\u_iic_drive/device_addr [2],\u_iic_drive/device_addr [2]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/device_addr [5]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/device_addr [0],\u_iic_drive/bit_cnt [0]}),
    .e({open_n1559,\u_iic_drive/bit_cnt [1]}),
    .mi({rw_flag_b,1'b1}),
    .sr(rst_cnt_b_n_dup_1),
    .f({\u_iic_drive/sel0_syn_63 ,\u_iic_drive/sel0_syn_61 }),
    .q({\u_iic_drive/device_addr [0],\u_iic_drive/device_addr [2]}));  // ../../SGPIO_DEMO_TOP.v(170)
  EF2_PHY_MSLICE #(
    //.LUT0("(C@D)"),
    //.LUT1("(~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111111110000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg1_syn_28 (
    .c({open_n1579,device_sel_reg[0]}),
    .clk(sys_clk_dup_1),
    .d({rw_flag_b,device_sel_reg_b_n}),
    .sr(rst_cnt_b_n_dup_1),
    .q({\u_iic_drive/device_addr [5],device_sel_reg[0]}));  // ../../SGPIO_DEMO_TOP.v(170)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_73 (
    .a(2'b00),
    .b(poll_counter[2:1]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_288),
    .sr(rst_cnt_b_n_dup_4),
    .f({open_n1614,poll_counter_b1[1]}),
    .fco(_al_n1_syn_290),
    .q({poll_counter[2],open_n1617}));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_76 (
    .a(2'b00),
    .b(poll_counter[6:5]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_292),
    .sr(rst_cnt_b_n_dup_4),
    .f({open_n1634,poll_counter_b1[5]}),
    .fco(_al_n1_syn_294),
    .q({poll_counter[6],open_n1637}));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_79 (
    .a(2'b00),
    .b(poll_counter[8:7]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_294),
    .sr(rst_cnt_b_n_dup_4),
    .fco(_al_n1_syn_296),
    .q(poll_counter[8:7]));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_82 (
    .a(2'b00),
    .b(poll_counter[10:9]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_296),
    .sr(rst_cnt_b_n_dup_4),
    .fco(_al_n1_syn_298),
    .q(poll_counter[10:9]));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_85 (
    .a(2'b00),
    .b(poll_counter[12:11]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_298),
    .sr(rst_cnt_b_n_dup_4),
    .fco(_al_n1_syn_300),
    .q(poll_counter[12:11]));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_88 (
    .a(2'b00),
    .b(poll_counter[14:13]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_300),
    .sr(rst_cnt_b_n_dup_4),
    .fco(_al_n1_syn_302),
    .q(poll_counter[14:13]));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_343"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_90 (
    .a({open_n1718,1'b0}),
    .b({open_n1719,poll_counter[15]}),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_302),
    .sr(rst_cnt_b_n_dup_4),
    .q({open_n1741,poll_counter[15]}));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_99 (
    .c({poll_counter_b1[4],poll_counter_b1[1]}),
    .clk(sys_clk_dup_1),
    .d({device_sel_reg_b_n,device_sel_reg_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q({poll_counter[4],poll_counter[1]}));  // ../../SGPIO_DEMO_TOP.v(136)
  EF2_PHY_MSLICE #(
    //.LUT0("~(~B*~(D)*~(C)+~B*D*~(C)+~(~B)*D*C+~B*D*C)"),
    //.LUT1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000110011111100),
    .INIT_LUT1(16'b1111110000001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg5_syn_33 (
    .b({pwm_control[5],pwm_control[0]}),
    .c({transmit_trigger,transmit_trigger}),
    .clk(sys_clk_dup_1),
    .d({pwm_control_b1_n,reg5_syn_18}),
    .sr(rst_cnt_b_n_dup_1),
    .q({pwm_control[5],pwm_control[0]}));  // ../../SGPIO_DEMO_TOP.v(367)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_101 (
    .c({open_n1792,rst_cnt_b1[3]}),
    .clk(sys_clk_dup_1),
    .d({open_n1794,rst_cnt_b_n_dup_5}),
    .q({open_n1817,rst_cnt[3]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_103 (
    .a({open_n1818,clk_counter[10]}),
    .b({open_n1819,clk_counter[11]}),
    .c({open_n1820,clk_counter[12]}),
    .clk(sys_clk_dup_1),
    .d({open_n1822,clk_counter[13]}),
    .mi({open_n1833,rst_cnt_b1[15]}),
    .f({open_n1835,rw_flag_b_reg_syn_26}),
    .q({open_n1839,rst_cnt[15]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(~D*~C*B*~A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_84 (
    .a({rst_cnt[12],rw_flag_b_reg_syn_7}),
    .b({rst_cnt[13],rw_flag_b_reg_syn_9}),
    .c({rst_cnt[14],rw_flag_b_reg_syn_11}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt[15],rst_cnt[10]}),
    .e({open_n1841,rst_cnt[11]}),
    .mi({rst_cnt_b1[13],rst_cnt_b1[14]}),
    .f({rw_flag_b_reg_syn_9,rst_cnt_b_n_dup_4}),
    .q({rst_cnt[13],rst_cnt[14]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(~0*D*C*B*A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(~1*D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_87 (
    .a({rw_flag_b_reg_syn_7,rw_flag_b_reg_syn_7}),
    .b({rw_flag_b_reg_syn_9,rw_flag_b_reg_syn_9}),
    .c({rw_flag_b_reg_syn_11,rw_flag_b_reg_syn_11}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt[10],rst_cnt[10]}),
    .e({rst_cnt[11],rst_cnt[11]}),
    .mi({rst_cnt_b1[7],rst_cnt_b1[8]}),
    .f({rst_cnt_b_n_dup_2,rst_cnt_b_n_dup_1}),
    .q({rst_cnt[7],rst_cnt[8]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_90 (
    .a({rst_cnt[6],rw_flag_b_reg_syn_7}),
    .b({rst_cnt[7],rw_flag_b_reg_syn_9}),
    .c({rst_cnt[8],rw_flag_b_reg_syn_11}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt[9],rst_cnt[10]}),
    .e({open_n1876,rst_cnt[11]}),
    .mi({rst_cnt_b1[10],rst_cnt_b1[11]}),
    .f({rw_flag_b_reg_syn_5,rst_cnt_b_n_dup_5}),
    .q({rst_cnt[10],rst_cnt[11]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_93 (
    .a({open_n1893,rst_cnt[0]}),
    .b({open_n1894,rst_cnt[1]}),
    .c({rst_cnt_b1[2],rst_cnt[2]}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt_b_n_dup_5,rst_cnt[3]}),
    .mi({open_n1906,rst_cnt_b1[9]}),
    .f({open_n1908,rw_flag_b_reg_syn_11}),
    .q({rst_cnt[2],rst_cnt[9]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*~B*D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000001100000000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_96 (
    .b({open_n1914,rst_cnt[4]}),
    .c({rst_cnt_b1[4],rst_cnt[5]}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt_b_n_dup_5,rw_flag_b_reg_syn_5}),
    .mi({open_n1926,rst_cnt_b1[12]}),
    .f({open_n1928,rw_flag_b_reg_syn_7}),
    .q({rst_cnt[4],rst_cnt[12]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_99 (
    .c(rst_cnt_b1[1:0]),
    .clk(sys_clk_dup_1),
    .d({rst_cnt_b_n_dup_5,rst_cnt_b_n_dup_5}),
    .q(rst_cnt[1:0]));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("(~0*D*C*B*A)"),
    //.LUT1("(~1*D*C*B*A)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    rw_flag_b_reg_syn_62 (
    .a({rw_flag_b_reg_syn_7,rw_flag_b_reg_syn_7}),
    .b({rw_flag_b_reg_syn_9,rw_flag_b_reg_syn_9}),
    .c({rw_flag_b_reg_syn_11,rw_flag_b_reg_syn_11}),
    .d({rst_cnt[10],rst_cnt[10]}),
    .mi({open_n1967,rst_cnt[11]}),
    .fx({open_n1972,rst_cnt_b_n}));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_SPAD #(
    //.LOCATION("P1"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("SET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    smb_iic_scl_syn_4 (
    .ce(1'b1),
    .clk(sys_clk_dup_1),
    .do({open_n1975,\u_iic_drive/scl_n }),
    .rst(rst_cnt_b_n_dup_2),
    .ts(1'b1),
    .opad(smb_iic_scl));  // ../../SGPIO_DEMO_TOP.v(6)
  EF2_PHY_SPAD #(
    //.LOCATION("P2"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .INCEMUX("CE"),
    .INCLKMUX("CLK"),
    .INRSTMUX("INV"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    smb_iic_sda_syn_4 (
    .ce(\u_iic_drive/mux6_syn_11 ),
    .clk(sys_clk_dup_1),
    .do({open_n1981,\u_iic_drive/sda_out }),
    .rst(rst_cnt_b_n_dup_2),
    .ts(\u_iic_drive/sda_out_en ),
    .di(smb_iic_sda_dup_3),
    .diq({open_n1983,\u_iic_drive/rdata_r [0]}),
    .bpad(smb_iic_sda));  // ../../SGPIO_DEMO_TOP.v(7)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P86"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    sys_clk_syn_2 (
    .ipad(sys_clk),
    .di(sys_clk_dup_1));  // ../../SGPIO_DEMO_TOP.v(3)
  EF2_PHY_GCLK transmit_trigger_syn_3 (
    .clki(transmit_trigger),
    .clko(transmit_trigger_syn_4));  // ../../SGPIO_DEMO_TOP.v(111)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_70  (
    .a({\u_iic_drive/div_cnt [0],1'b0}),
    .b({1'b1,open_n2008}),
    .f({\u_iic_drive/div_cnt_b2 [0],open_n2028}),
    .fco(\u_iic_drive/add0_syn_42 ));  // ../../i2c_master.v(186)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_73  (
    .a(\u_iic_drive/div_cnt [2:1]),
    .b(2'b00),
    .fci(\u_iic_drive/add0_syn_42 ),
    .f(\u_iic_drive/div_cnt_b2 [2:1]),
    .fco(\u_iic_drive/add0_syn_44 ));  // ../../i2c_master.v(186)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_76  (
    .a(\u_iic_drive/div_cnt [4:3]),
    .b(2'b00),
    .fci(\u_iic_drive/add0_syn_44 ),
    .f(\u_iic_drive/div_cnt_b2 [4:3]),
    .fco(\u_iic_drive/add0_syn_46 ));  // ../../i2c_master.v(186)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_79  (
    .a(\u_iic_drive/div_cnt [6:5]),
    .b(2'b00),
    .fci(\u_iic_drive/add0_syn_46 ),
    .f(\u_iic_drive/div_cnt_b2 [6:5]),
    .fco(\u_iic_drive/add0_syn_48 ));  // ../../i2c_master.v(186)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_81  (
    .a({open_n2099,\u_iic_drive/div_cnt [7]}),
    .b({open_n2100,1'b0}),
    .fci(\u_iic_drive/add0_syn_48 ),
    .f({open_n2119,\u_iic_drive/div_cnt_b2 [7]}));  // ../../i2c_master.v(186)
  EF2_PHY_MSLICE #(
    //.LUT0("(A*(D@(C*B)))"),
    //.LUT1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0010101010000000),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/bit_cnt_b[3]_syn_8  (
    .a({open_n2125,\u_iic_drive/div_cnt_b_n }),
    .b({\u_iic_drive/end_div_cnt ,\u_iic_drive/add1_syn_16 }),
    .c({\u_iic_drive/bit_cnt [2],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/add1_syn_16 ,\u_iic_drive/bit_cnt [2]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/bit_cnt_b[3]_syn_2 ,open_n2139}),
    .q({open_n2143,\u_iic_drive/bit_cnt [2]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*D)"),
    //.LUT1("(~C*~B*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111100000000),
    .INIT_LUT1(16'b0000000000000011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/end_div_cnt_n_syn_8  (
    .b({\u_iic_drive/div_cnt [3],open_n2146}),
    .c({\u_iic_drive/div_cnt [4],\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [0],\u_iic_drive/div_cnt_b2 [7]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/end_div_cnt_n_syn_2 ,open_n2159}),
    .q({open_n2163,\u_iic_drive/div_cnt [7]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(0*D*C*B*A)"),
    //.LUT1("(1*D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/end_div_cnt_reg_syn_8  (
    .a({\u_iic_drive/end_div_cnt_n_syn_2 ,\u_iic_drive/end_div_cnt_n_syn_2 }),
    .b({\u_iic_drive/rd_flag_n_syn_4 ,\u_iic_drive/rd_flag_n_syn_4 }),
    .c({\u_iic_drive/div_cnt [1],\u_iic_drive/div_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [2],\u_iic_drive/div_cnt [2]}),
    .mi({open_n2175,\u_iic_drive/div_cnt [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({open_n2181,\u_iic_drive/end_div_cnt }));  // ../../i2c_master.v(192)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000000000000010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/h2l_flag_reg_syn_8  (
    .a({\u_iic_drive/l2h_flag_n_syn_2 ,\u_iic_drive/l2h_flag_n_syn_2 }),
    .b({\u_iic_drive/div_cnt [2],\u_iic_drive/div_cnt [2]}),
    .c({\u_iic_drive/div_cnt [5],\u_iic_drive/div_cnt [5]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [6],\u_iic_drive/div_cnt [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/h2l_flag ,\u_iic_drive/l2h_flag }));  // ../../i2c_master.v(192)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*D)"),
    //.LUT1("(D*~C*B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111100000000),
    .INIT_LUT1(16'b0000010000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/rd_flag_n_syn_12  (
    .a({\u_iic_drive/div_cnt [0],open_n2200}),
    .b({\u_iic_drive/div_cnt [1],open_n2201}),
    .c({\u_iic_drive/div_cnt [3],\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [4],\u_iic_drive/div_cnt_b2 [3]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/rd_flag_n_syn_2 ,open_n2214}),
    .q({open_n2218,\u_iic_drive/div_cnt [3]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*~B*D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~C*~B*D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000001100000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/rd_flag_n_syn_14  (
    .b({open_n2221,\u_iic_drive/div_cnt [1]}),
    .c({\u_iic_drive/div_cnt [7],\u_iic_drive/div_cnt [7]}),
    .d({\u_iic_drive/div_cnt [5],\u_iic_drive/end_div_cnt_n_syn_2 }),
    .f({\u_iic_drive/rd_flag_n_syn_4 ,\u_iic_drive/l2h_flag_n_syn_2 }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*~D*C*~B*A)"),
    //.LUTF1("(~D*C*B*A)"),
    //.LUTG0("(~1*~D*C*~B*A)"),
    //.LUTG1("(~D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000100000),
    .INIT_LUTF1(16'b0000000010000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/rd_flag_reg_syn_8  (
    .a({\u_iic_drive/rd_flag_n_syn_2 ,\u_iic_drive/rd_flag_n_syn_2 }),
    .b({\u_iic_drive/rd_flag_n_syn_4 ,\u_iic_drive/div_cnt [2]}),
    .c({\u_iic_drive/div_cnt [2],\u_iic_drive/div_cnt [5]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [6],\u_iic_drive/div_cnt [6]}),
    .e({open_n2247,\u_iic_drive/div_cnt [7]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/rd_flag ,\u_iic_drive/wr_flag }));  // ../../i2c_master.v(192)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*D)"),
    //.LUT1("(~C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111100000000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_52  (
    .c({\u_iic_drive/end_div_cnt ,\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt_b2 [1],\u_iic_drive/div_cnt_b2 [2]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/div_cnt [1],\u_iic_drive/div_cnt [2]}));  // ../../i2c_master.v(179)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_55  (
    .c({\u_iic_drive/end_div_cnt ,\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt_b2 [5],\u_iic_drive/div_cnt_b2 [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/div_cnt [5],\u_iic_drive/div_cnt [6]}));  // ../../i2c_master.v(179)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_59  (
    .c({\u_iic_drive/end_div_cnt ,\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt_b2 [4],\u_iic_drive/div_cnt_b2 [0]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/div_cnt [4],\u_iic_drive/div_cnt [0]}));  // ../../i2c_master.v(179)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110000110000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_101  (
    .b({open_n2340,device_sel_reg[0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/reg_addr_r [0]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/bit_cnt [0],device_reg_addr[0]}),
    .sr(rst_cnt_b_n_dup_1),
    .f({\u_iic_drive/add1_syn_16 ,open_n2354}),
    .q({open_n2358,\u_iic_drive/reg_addr_r [0]}));  // ../../i2c_master.v(362)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*~(0)*~((C*~B*A))+D*0*~((C*~B*A))+~(D)*0*(C*~B*A)+D*0*(C*~B*A))"),
    //.LUT1("(D*~(1)*~((C*~B*A))+D*1*~((C*~B*A))+~(D)*1*(C*~B*A)+D*1*(C*~B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101111100000000),
    .INIT_LUT1(16'b1111111100100000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_88  (
    .a({\u_iic_drive/reg3_syn_35 ,\u_iic_drive/reg3_syn_35 }),
    .b({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/rdata_r [1],\u_iic_drive/rdata_r [1]}),
    .mi({open_n2370,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_1),
    .q({open_n2376,\u_iic_drive/rdata_r [1]}));  // ../../i2c_master.v(362)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*~(0)*~((~C*B*A))+D*0*~((~C*B*A))+~(D)*0*(~C*B*A)+D*0*(~C*B*A))"),
    //.LUT1("(D*~(1)*~((~C*B*A))+D*1*~((~C*B*A))+~(D)*1*(~C*B*A)+D*1*(~C*B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111011100000000),
    .INIT_LUT1(16'b1111111100001000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_90  (
    .a({\u_iic_drive/reg3_syn_35 ,\u_iic_drive/reg3_syn_35 }),
    .b({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/rdata_r [2],\u_iic_drive/rdata_r [2]}),
    .mi({open_n2388,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_1),
    .q({open_n2394,\u_iic_drive/rdata_r [2]}));  // ../../i2c_master.v(362)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~(0)*~((C*~B*A))+D*0*~((C*~B*A))+~(D)*0*(C*~B*A)+D*0*(C*~B*A))"),
    //.LUTF1("(D*~(0)*~((~C*B*A))+D*0*~((~C*B*A))+~(D)*0*(~C*B*A)+D*0*(~C*B*A))"),
    //.LUTG0("(D*~(1)*~((C*~B*A))+D*1*~((C*~B*A))+~(D)*1*(C*~B*A)+D*1*(C*~B*A))"),
    //.LUTG1("(D*~(1)*~((~C*B*A))+D*1*~((~C*B*A))+~(D)*1*(~C*B*A)+D*1*(~C*B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101111100000000),
    .INIT_LUTF1(16'b1111011100000000),
    .INIT_LUTG0(16'b1111111100100000),
    .INIT_LUTG1(16'b1111111100001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_93  (
    .a({\u_iic_drive/reg3_syn_38 ,\u_iic_drive/reg3_syn_38 }),
    .b({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [6:5]),
    .e({smb_iic_sda_dup_3,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_1),
    .q(\u_iic_drive/rdata_r [6:5]));  // ../../i2c_master.v(362)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111100001110000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b1111100001110000),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_98  (
    .a({open_n2415,\u_iic_drive/reg3_syn_35 }),
    .b({\u_iic_drive/bit_cnt [2],\u_iic_drive/sda_out_en_reg_syn_5 }),
    .c({\u_iic_drive/bit_cnt [3],\u_iic_drive/rdata_r [3]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/rdata_r_b_n8 ,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_1),
    .f({\u_iic_drive/reg3_syn_38 ,open_n2433}),
    .q({open_n2437,\u_iic_drive/rdata_r [3]}));  // ../../i2c_master.v(362)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~(C*B*A))"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(~1*~D*~(C*B*A))"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000001111111),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_38  (
    .a({open_n2438,rdata[3]}),
    .b({open_n2439,rdata[4]}),
    .c({\u_iic_drive/bit_cnt [1],rdata[5]}),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/bit_cnt [0],rdata[6]}),
    .e({open_n2440,rdata[7]}),
    .mi(\u_iic_drive/rdata_r [6:5]),
    .f({\u_iic_drive/sda_out_en_reg_syn_5 ,reg5_syn_18}),
    .q(rdata[6:5]));  // ../../i2c_master.v(376)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*~B*D)"),
    //.LUT1("(~C*B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000001100000000),
    .INIT_LUT1(16'b0000110000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_41  (
    .b({\u_iic_drive/bit_cnt [2],\u_iic_drive/bit_cnt [2]}),
    .c({\u_iic_drive/bit_cnt [3],\u_iic_drive/bit_cnt [3]}),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/rdata_r_b_n8 ,\u_iic_drive/sda_out_en_reg_syn_5 }),
    .mi({\u_iic_drive/rdata_r [7],\u_iic_drive/rdata_r [4]}),
    .f({\u_iic_drive/reg3_syn_35 ,\u_iic_drive/rdata_r_b_n9 }),
    .q({rdata[7],rdata[4]}));  // ../../i2c_master.v(376)
  EF2_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_45  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .mi({\u_iic_drive/rdata_r [1],\u_iic_drive/rdata_r [2]}),
    .q({rdata[1],rdata[2]}));  // ../../i2c_master.v(376)
  EF2_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_47  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .mi({open_n2508,\u_iic_drive/rdata_r [0]}),
    .q({open_n2526,rdata[0]}));  // ../../i2c_master.v(376)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    //.LUT1("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111100001110000),
    .INIT_LUT1(16'b1111110000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg5_syn_29  (
    .a({open_n2527,\u_iic_drive/reg3_syn_38 }),
    .b({device_sel_reg[0],\u_iic_drive/add1_syn_16 }),
    .c({\u_iic_drive/reg_addr_r [1],\u_iic_drive/rdata_r [4]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/device_addr [5],smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_1),
    .q({\u_iic_drive/reg_addr_r [1],\u_iic_drive/rdata_r [4]}));  // ../../i2c_master.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("(~B*(D*~((~0*C))*~(A)+D*(~0*C)*~(A)+~(D)*(~0*C)*A+D*(~0*C)*A))"),
    //.LUT1("(~B*(D*~((~1*C))*~(A)+D*(~1*C)*~(A)+~(D)*(~1*C)*A+D*(~1*C)*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011000100100000),
    .INIT_LUT1(16'b0001000100000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_45  (
    .a({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/state_c[0]_syn_461 }),
    .b({\u_iic_drive/state_c[0]_syn_140 ,\u_iic_drive/state_c[0]_syn_140 }),
    .c({\u_iic_drive/state_c [2],\u_iic_drive/state_c [2]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/state_c [3]}),
    .mi({open_n2557,\u_iic_drive/rw_flag_r }),
    .sr(rst_cnt_b_n_dup_3),
    .q({open_n2563,\u_iic_drive/state_c [3]}));  // ../../i2c_master.v(99)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~C*~B*~(~D*~A))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~C*~B*~(~D*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0000001100000010),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0000001100000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_48  (
    .a({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/state_c[0]_syn_140 }),
    .b({\u_iic_drive/state_c[0]_syn_140 ,\u_iic_drive/state_c[0]_syn_461 }),
    .c({\u_iic_drive/state_c[0]_syn_477 ,\u_iic_drive/state_c [4]}),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c [6:5]),
    .sr(rst_cnt_b_n_dup_3),
    .q(\u_iic_drive/state_c [6:5]));  // ../../i2c_master.v(99)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~B*~(~A*~(D*C)))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~B*~(~A*~(D*C)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0011001000100010),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0011001000100010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_51  (
    .a({\u_iic_drive/state_c[1]_syn_35 ,\u_iic_drive/state_c[0]_syn_140 }),
    .b({\u_iic_drive/state_c[0]_syn_140 ,\u_iic_drive/state_c[0]_syn_461 }),
    .c({device_sel_reg[0],\u_iic_drive/state_c [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [0],\u_iic_drive/state_c [2]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/state_c [1],\u_iic_drive/state_c [2]}));  // ../../i2c_master.v(99)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg7_syn_29  (
    .b({pwm_control[5],rw_flag_b}),
    .c({\u_iic_drive/wdata_r [5],\u_iic_drive/rw_flag_r }),
    .clk(sys_clk_dup_1),
    .d({device_sel_reg[0],device_sel_reg[0]}),
    .sr(rst_cnt_b_n_dup_1),
    .q({\u_iic_drive/wdata_r [5],\u_iic_drive/rw_flag_r }));  // ../../i2c_master.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg7_syn_31  (
    .b({pwm_control[0],open_n2634}),
    .c({\u_iic_drive/wdata_r [0],rw_flag_b}),
    .clk(sys_clk_dup_1),
    .d({device_sel_reg[0],device_sel_reg[0]}),
    .sr(rst_cnt_b_n_dup_1),
    .q({\u_iic_drive/wdata_r [0],device_reg_addr[0]}));  // ../../i2c_master.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*B*~D)"),
    //.LUTF1("(D*~(C*~(B*A)))"),
    //.LUTG0("~(~C*B*~D)"),
    //.LUTG1("(D*~(C*~(B*A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110011),
    .INIT_LUTF1(16'b1000111100000000),
    .INIT_LUTG0(16'b1111111111110011),
    .INIT_LUTG1(16'b1000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/scl_n_syn_7  (
    .a({\u_iic_drive/ack_flag_n12 ,open_n2657}),
    .b({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/h2l_flag ,\u_iic_drive/l2h_flag }),
    .clk(sys_clk_dup_1),
    .d({smb_iic_scl_dup_3,\u_iic_drive/scl_n1 }),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/scl_n1 ,\u_iic_drive/scl_n }),
    .q({open_n2678,smb_iic_scl_dup_3}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*~C*B*A)"),
    //.LUTF1("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(~1*D*~C*B*A)"),
    //.LUTG1("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT_LUTF0(16'b0000100000000000),
    .INIT_LUTF1(16'b1111010101010011),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1111010101010011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sda_out_en_reg_syn_37  (
    .a({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/state_c[0]_syn_455 }),
    .b({\u_iic_drive/state_c[3]_syn_222 ,\u_iic_drive/rd_flag }),
    .c({\u_iic_drive/state_c [4],\u_iic_drive/state_c [4]}),
    .d({\u_iic_drive/state_c [5],\u_iic_drive/state_c [5]}),
    .e({open_n2681,\u_iic_drive/state_c [6]}),
    .f({\u_iic_drive/sda_out_en_reg_syn_9 ,\u_iic_drive/rdata_r_b_n8 }));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~B*~A*(C*~(D)*~(0)+~(C)*D*~(0)+~(C)*~(D)*0))"),
    //.LUTF1("(~A*(B*~(C)*~(D)+~(B)*C*~(D)+~(B)*~(C)*D))"),
    //.LUTG0("(~B*~A*(C*~(D)*~(1)+~(C)*D*~(1)+~(C)*~(D)*1))"),
    //.LUTG1("(~A*(B*~(C)*~(D)+~(B)*C*~(D)+~(B)*~(C)*D))"),
    .INIT_LUTF0(16'b0000000100010000),
    .INIT_LUTF1(16'b0000000100010100),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000100010100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sda_out_en_reg_syn_39  (
    .a({\u_iic_drive/state_c [0],\u_iic_drive/state_c [0]}),
    .b({\u_iic_drive/state_c [1],\u_iic_drive/state_c [1]}),
    .c({\u_iic_drive/state_c [2],\u_iic_drive/state_c [2]}),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/state_c [3]}),
    .e({open_n2704,\u_iic_drive/state_c [5]}),
    .f({\u_iic_drive/state_c[3]_syn_222 ,\u_iic_drive/state_c[0]_syn_464 }));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    //.LUTF1("(~D*~(~C*~B))"),
    //.LUTG0("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    //.LUTG1("(~D*~(~C*~B))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111100001110000),
    .INIT_LUTF1(16'b0000000011111100),
    .INIT_LUTG0(16'b1111100001110000),
    .INIT_LUTG1(16'b0000000011111100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_en_reg_syn_41  (
    .a({open_n2725,\u_iic_drive/rdata_r_b_n8 }),
    .b({\u_iic_drive/state_c[0]_syn_459 ,\u_iic_drive/rdata_r_b_n9 }),
    .c({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/rdata_r [7]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/sda_out_en_reg_syn_9 ,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/sda_out_en_reg_syn_15 ,open_n2743}),
    .q({open_n2747,\u_iic_drive/rdata_r [7]}));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111011101010000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0111011101010000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_en_reg_syn_44  (
    .a({open_n2748,\u_iic_drive/sda_out_en_reg_syn_13 }),
    .b({\u_iic_drive/state_c [6],\u_iic_drive/sda_out_en_reg_syn_15 }),
    .c({\u_iic_drive/wr_flag ,\u_iic_drive/sda_out_en_reg_syn_17 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/sda_out_en_reg_syn_11 ,\u_iic_drive/sda_out_en }),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/sda_out_en_reg_syn_13 ,open_n2766}),
    .q({open_n2770,\u_iic_drive/sda_out_en }));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(~A*(~(B)*C*~(D)+B*C*~(D)+B*~(C)*D))"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(~A*(~(B)*C*~(D)+B*C*~(D)+B*~(C)*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000010001010000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000010001010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/sda_out_en_reg_syn_46  (
    .a({\u_iic_drive/sda_out_en_reg_syn_9 ,open_n2771}),
    .b({\u_iic_drive/state_c[0]_syn_459 ,open_n2772}),
    .c({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/add1_syn_16 }),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [5],\u_iic_drive/reg3_syn_35 }),
    .mi({open_n2776,\u_iic_drive/rdata_r [3]}),
    .f({\u_iic_drive/sda_out_en_reg_syn_11 ,\u_iic_drive/mux6_syn_11 }),
    .q({open_n2792,rdata[3]}));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*(~(A)*C*D*~(0)+~(A)*~(C)*~(D)*0+A*~(C)*~(D)*0+~(A)*C*~(D)*0+~(A)*~(C)*D*0+A*~(C)*D*0))"),
    //.LUTF1("((D@B)*~(C@A))"),
    //.LUTG0("(B*(~(A)*C*D*~(1)+~(A)*~(C)*~(D)*1+A*~(C)*~(D)*1+~(A)*C*~(D)*1+~(A)*~(C)*D*1+A*~(C)*D*1))"),
    //.LUTG1("((D@B)*~(C@A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100000000000000),
    .INIT_LUTF1(16'b0010000110000100),
    .INIT_LUTG0(16'b0000110001001100),
    .INIT_LUTG1(16'b0010000110000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sel0_syn_115  (
    .a({\u_iic_drive/bit_cnt_num [0],\u_iic_drive/state_c[0]_syn_459 }),
    .b({\u_iic_drive/bit_cnt_num [1],\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/bit_cnt [0],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt [1:0]),
    .e({open_n2794,\u_iic_drive/bit_cnt [1]}),
    .sr(rst_cnt_b_n_dup_1),
    .f({\u_iic_drive/sel0_syn_58 ,open_n2809}),
    .q({open_n2813,\u_iic_drive/bit_cnt [1]}));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*(0*~(D)*~((C*A))+0*D*~((C*A))+~(0)*D*(C*A)+0*D*(C*A)))"),
    //.LUT1("(B*(1*~(D)*~((C*A))+1*D*~((C*A))+~(1)*D*(C*A)+1*D*(C*A)))"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1100110001001100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/sel0_syn_117  (
    .a({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .b({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .c({\u_iic_drive/bit_cnt [2],\u_iic_drive/bit_cnt [2]}),
    .d({\u_iic_drive/reg_addr_r [0],\u_iic_drive/reg_addr_r [0]}),
    .mi({open_n2826,\u_iic_drive/reg_addr_r [1]}),
    .fx({open_n2831,\u_iic_drive/sda_out_n11 }));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("(0*B*(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))"),
    //.LUT1("(1*B*(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000100011000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/sel0_syn_119  (
    .a({\u_iic_drive/state_c[0]_syn_459 ,\u_iic_drive/state_c[0]_syn_459 }),
    .b({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/state_c[0]_syn_455 }),
    .c({\u_iic_drive/state_c [4],\u_iic_drive/state_c [4]}),
    .d({\u_iic_drive/state_c [5],\u_iic_drive/state_c [5]}),
    .mi({open_n2846,\u_iic_drive/wr_flag }),
    .fx({open_n2851,\u_iic_drive/sel0_syn_70 }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*((~C*~B)*D*~(0)+~((~C*~B))*~(D)*0))"),
    //.LUTF1("(A*(~(B)*C*~(D)+B*~(C)*D))"),
    //.LUTG0("(~A*((~C*~B)*D*~(1)+~((~C*~B))*~(D)*1))"),
    //.LUTG1("(A*(~(B)*C*~(D)+B*~(C)*D))"),
    .INIT_LUTF0(16'b0000000100000000),
    .INIT_LUTF1(16'b0000100000100000),
    .INIT_LUTG0(16'b0000000001010100),
    .INIT_LUTG1(16'b0000100000100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_121  (
    .a({\u_iic_drive/sel0_syn_58 ,\u_iic_drive/eq14_syn_24 }),
    .b(\u_iic_drive/bit_cnt_num [1:0]),
    .c({\u_iic_drive/bit_cnt [2],\u_iic_drive/bit_cnt_num [1]}),
    .d(\u_iic_drive/bit_cnt [3:2]),
    .e({open_n2856,\u_iic_drive/bit_cnt [3]}),
    .f({\u_iic_drive/rdata_vld_r_n2 ,\u_iic_drive/state_c[0]_syn_459 }));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*(A*B*~(D)*~(0)+~(A)*~(B)*D*~(0)+A*~(B)*D*~(0)+~(A)*B*D*~(0)+A*B*D*~(0)+~(A)*~(B)*D*0+~(A)*B*D*0))"),
    //.LUT1("(C*(A*B*~(D)*~(1)+~(A)*~(B)*D*~(1)+A*~(B)*D*~(1)+~(A)*B*D*~(1)+A*B*D*~(1)+~(A)*~(B)*D*1+~(A)*B*D*1))"),
    .INIT_LUT0(16'b1111000010000000),
    .INIT_LUT1(16'b0101000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/sel0_syn_123  (
    .a({\u_iic_drive/state_c[5]_syn_188 ,\u_iic_drive/state_c[5]_syn_188 }),
    .b({\u_iic_drive/rd_flag ,\u_iic_drive/rd_flag }),
    .c({\u_iic_drive/state_c [6],\u_iic_drive/state_c [6]}),
    .d({\u_iic_drive/sda_out ,\u_iic_drive/sda_out }),
    .mi({open_n2889,\u_iic_drive/wr_flag }),
    .fx({open_n2894,\u_iic_drive/sel0_syn_83 }));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("(~0*(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D))"),
    //.LUT1("(~1*(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D))"),
    .INIT_LUT0(16'b1101110000000101),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/sel0_syn_125  (
    .a({\u_iic_drive/sel0_syn_61 ,\u_iic_drive/sel0_syn_61 }),
    .b({\u_iic_drive/sel0_syn_63 ,\u_iic_drive/sel0_syn_63 }),
    .c({\u_iic_drive/sda_out_en_reg_syn_5 ,\u_iic_drive/sda_out_en_reg_syn_5 }),
    .d({\u_iic_drive/bit_cnt [2],\u_iic_drive/bit_cnt [2]}),
    .mi({open_n2909,\u_iic_drive/bit_cnt [3]}),
    .fx({open_n2914,\u_iic_drive/sda_out_n9 }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(D*~(A)*~((0*~C*B))+D*A*~((0*~C*B))+~(D)*A*(0*~C*B)+D*A*(0*~C*B))"),
    //.LUTF1("(~((~B*~A))*~(C)*~(D)*~(0)+(~B*~A)*~(C)*~(D)*~(0)+~((~B*~A))*C*~(D)*~(0)+(~B*~A)*C*~(D)*~(0)+~((~B*~A))*~(C)*D*~(0)+(~B*~A)*~(C)*D*~(0)+~((~B*~A))*~(C)*~(D)*0+~((~B*~A))*C*~(D)*0+(~B*~A)*C*~(D)*0+~((~B*~A))*~(C)*D*0+~((~B*~A))*C*D*0+(~B*~A)*C*D*0)"),
    //.LUTG0("~(D*~(A)*~((1*~C*B))+D*A*~((1*~C*B))+~(D)*A*(1*~C*B)+D*A*(1*~C*B))"),
    //.LUTG1("(~((~B*~A))*~(C)*~(D)*~(1)+(~B*~A)*~(C)*~(D)*~(1)+~((~B*~A))*C*~(D)*~(1)+(~B*~A)*C*~(D)*~(1)+~((~B*~A))*~(C)*D*~(1)+(~B*~A)*~(C)*D*~(1)+~((~B*~A))*~(C)*~(D)*1+~((~B*~A))*C*~(D)*1+(~B*~A)*C*~(D)*1+~((~B*~A))*~(C)*D*1+~((~B*~A))*C*D*1+(~B*~A)*C*D*1)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000111111111111),
    .INIT_LUTG0(16'b0000010011110111),
    .INIT_LUTG1(16'b1111111011111110),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_128  (
    .a({\u_iic_drive/sda_out_n9 ,\u_iic_drive/sel0_syn_79 }),
    .b({\u_iic_drive/rdata_vld_r_n2 ,\u_iic_drive/state_c[3]_syn_222 }),
    .c({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/bit_cnt [3]}),
    .d({\u_iic_drive/rd_flag ,\u_iic_drive/sda_out }),
    .e({\u_iic_drive/wr_flag ,\u_iic_drive/wr_flag }),
    .f({\u_iic_drive/sel0_syn_66 ,\u_iic_drive/sel0_syn_81 }));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("~((~C*~A)*~(B)*~(D)+(~C*~A)*B*~(D)+~((~C*~A))*B*D+(~C*~A)*B*D)"),
    //.LUT1("(~C*B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011001111111010),
    .INIT_LUT1(16'b0000000000001100),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sel0_syn_130  (
    .a({open_n2939,\u_iic_drive/sel0_syn_72 }),
    .b({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/sel0_syn_81 }),
    .c({\u_iic_drive/state_c [5],\u_iic_drive/sel0_syn_83 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/sel0_syn_66 ,\u_iic_drive/state_c[6]_syn_130 }),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/sel0_syn_68 ,open_n2953}),
    .q({open_n2957,\u_iic_drive/sda_out }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1101100010101010),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1101100010101010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/sel0_syn_132  (
    .a({\u_iic_drive/sel0_syn_75 ,open_n2958}),
    .b({\u_iic_drive/wdata_r [0],open_n2959}),
    .c({\u_iic_drive/wdata_r [5],\u_iic_drive/rdata_vld_r_n2 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/rdata_r_b_n8 }),
    .f({\u_iic_drive/sel0_syn_77 ,open_n2978}),
    .q({open_n2982,\u_iic_drive/rdata_vld_r }));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*~(C*~(B*A)))"),
    //.LUT1("(~C*~A*~(~D*~B))"),
    .INIT_LUT0(16'b1000111100000000),
    .INIT_LUT1(16'b0000010100000100),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_135  (
    .a({\u_iic_drive/sel0_syn_68 ,\u_iic_drive/state_c[5]_syn_188 }),
    .b({\u_iic_drive/sel0_syn_70 ,\u_iic_drive/rdata_r_b_n9 }),
    .c({\u_iic_drive/state_c [6],\u_iic_drive/state_c [6]}),
    .d({\u_iic_drive/sda_out ,\u_iic_drive/wr_flag }),
    .f({\u_iic_drive/sel0_syn_72 ,\u_iic_drive/sda_out_en_reg_syn_17 }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT_LUTF0(16'b1111000010101100),
    .INIT_LUTG0(16'b1111000010101100),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_137  (
    .a({open_n3003,\u_iic_drive/sda_out_n9 }),
    .b({open_n3004,\u_iic_drive/sda_out_n11 }),
    .c({open_n3005,\u_iic_drive/sel0_syn_77 }),
    .d({open_n3008,\u_iic_drive/state_c [3]}),
    .f({open_n3026,\u_iic_drive/sel0_syn_79 }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~A*(~(B)*~(C)*~(D)*~(0)+B*~(C)*~(D)*~(0)+~(B)*C*~(D)*~(0)+B*C*~(D)*~(0)+B*~(C)*D*~(0)+B*C*D*~(0)+~(B)*~(C)*~(D)*0+B*~(C)*~(D)*0))"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("~(~A*(~(B)*~(C)*~(D)*~(1)+B*~(C)*~(D)*~(1)+~(B)*C*~(D)*~(1)+B*C*~(D)*~(1)+B*~(C)*D*~(1)+B*C*D*~(1)+~(B)*~(C)*~(D)*1+B*~(C)*~(D)*1))"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011101110101010),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1111111111111010),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_518  (
    .a({open_n3032,\u_iic_drive/state_c[0]_syn_140 }),
    .b({open_n3033,device_sel_reg[0]}),
    .c({\u_iic_drive/state_c [3],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [2],\u_iic_drive/state_c [0]}),
    .e({open_n3035,\u_iic_drive/state_c [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_451 ,open_n3050}),
    .q({open_n3054,\u_iic_drive/state_c [0]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*~(~0*~D*C*B))"),
    //.LUTF1("(D*~C*B*A)"),
    //.LUTG0("(~A*~(~1*~D*C*B))"),
    //.LUTG1("(D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101010100010101),
    .INIT_LUTF1(16'b0000100000000000),
    .INIT_LUTG0(16'b0101010101010101),
    .INIT_LUTG1(16'b0000100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_520  (
    .a({\u_iic_drive/state_c[6]_syn_130 ,\u_iic_drive/ack_flag_n12 }),
    .b({\u_iic_drive/state_c[0]_syn_451 ,\u_iic_drive/state_c[0]_syn_455 }),
    .c({\u_iic_drive/state_c [0],\u_iic_drive/state_c [4]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [1],\u_iic_drive/state_c [5]}),
    .e({open_n3056,\u_iic_drive/state_c [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/ack_flag_n12 ,\u_iic_drive/bit_cnt_num_b [0]}),
    .q({open_n3074,\u_iic_drive/bit_cnt_num [0]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~C*A*~(0*B))"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(D*~C*A*~(1*B))"),
    //.LUTG1("(~C*~B*D)"),
    .INIT_LUTF0(16'b0000101000000000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b0000001000000000),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/state_c[0]_syn_524  (
    .a({open_n3075,\u_iic_drive/bit_cnt_num_b [0]}),
    .b({\u_iic_drive/state_c [0],\u_iic_drive/state_c[5]_syn_188 }),
    .c({\u_iic_drive/state_c [1],\u_iic_drive/add_byte_cnt_n }),
    .d({\u_iic_drive/state_c[0]_syn_451 ,\u_iic_drive/div_cnt_b_n }),
    .e({open_n3078,\u_iic_drive/state_c [6]}),
    .f({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/state_c[0]_syn_140 }));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*(~(A)*C*~(D)+~(A)*~(C)*D+A*~(C)*D))"),
    //.LUT1("(~(A)*~(C)*~((D@B))+~(A)*C*~((D@B))+A*C*~((D@B))+~(A)*~(C)*(D@B)+A*~(C)*(D@B)+A*C*(D@B))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000110001000000),
    .INIT_LUT1(16'b1110011110111101),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_527  (
    .a({\u_iic_drive/bit_cnt_num [0],\u_iic_drive/state_c[0]_syn_459 }),
    .b({\u_iic_drive/bit_cnt_num [1],\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/bit_cnt [0],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt [1:0]),
    .sr(rst_cnt_b_n_dup_1),
    .f({\u_iic_drive/eq14_syn_24 ,open_n3112}),
    .q({open_n3116,\u_iic_drive/bit_cnt [0]}));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~A*(D@C))"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000010001000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_529  (
    .a({open_n3117,\u_iic_drive/state_c[0]_syn_461 }),
    .b({open_n3118,\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/end_div_cnt ,\u_iic_drive/bit_cnt_b[3]_syn_2 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[0]_syn_459 ,\u_iic_drive/bit_cnt [3]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_461 ,open_n3132}),
    .q({open_n3136,\u_iic_drive/bit_cnt [3]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~B*~(~A*~(D*~C)))"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(~B*~(~A*~(D*~C)))"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0010001100100010),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b0010001100100010),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_531  (
    .a({open_n3137,\u_iic_drive/state_c[0]_syn_469 }),
    .b({\u_iic_drive/state_c [3],\u_iic_drive/state_c[0]_syn_140 }),
    .c({\u_iic_drive/state_c [5],\u_iic_drive/state_c[0]_syn_461 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/end_div_cnt ,\u_iic_drive/state_c [4]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_477 ,open_n3155}),
    .q({open_n3159,\u_iic_drive/state_c [4]}));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_533  (
    .b({\u_iic_drive/state_c [2],open_n3162}),
    .c({\u_iic_drive/rw_flag_r ,open_n3163}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/bit_cnt_num_b [0]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_469 ,open_n3177}),
    .q({open_n3181,\u_iic_drive/bit_cnt_num [1]}));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("~(C*~((~B*~A))*~(D)+C*(~B*~A)*~(D)+~(C)*(~B*~A)*D+C*(~B*~A)*D)"),
    //.LUT1("(C*~D)"),
    .INIT_LUT0(16'b1110111000001111),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"))
    \u_iic_drive/state_c[0]_syn_535  (
    .a({open_n3182,\u_iic_drive/bit_cnt [0]}),
    .b({open_n3183,\u_iic_drive/bit_cnt [2]}),
    .c({\u_iic_drive/state_c [1],\u_iic_drive/state_c [2]}),
    .d({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/state_c [3]}),
    .f({\u_iic_drive/state_c[1]_syn_35 ,\u_iic_drive/sel0_syn_75 }));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~D*C*B*A)"),
    //.LUTF1("(~C*~B*~D)"),
    //.LUTG0("~(~D*C*B*A)"),
    //.LUTG1("(~C*~B*~D)"),
    .INIT_LUTF0(16'b1111111101111111),
    .INIT_LUTF1(16'b0000000000000011),
    .INIT_LUTG0(16'b1111111101111111),
    .INIT_LUTG1(16'b0000000000000011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/state_c[0]_syn_538  (
    .a({open_n3204,\u_iic_drive/state_c[6]_syn_130 }),
    .b({\u_iic_drive/state_c [5],\u_iic_drive/state_c[0]_syn_451 }),
    .c({\u_iic_drive/state_c [6],\u_iic_drive/state_c [0]}),
    .d({\u_iic_drive/state_c [4],\u_iic_drive/state_c [1]}),
    .f({\u_iic_drive/state_c[6]_syn_130 ,\u_iic_drive/div_cnt_b_n }));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*~B*D)"),
    //.LUT1("(~C*~B*D)"),
    .INIT_LUT0(16'b0000001100000000),
    .INIT_LUT1(16'b0000001100000000),
    .MODE("LOGIC"))
    \u_iic_drive/state_c[0]_syn_541  (
    .b({\u_iic_drive/state_c [4],\u_iic_drive/state_c [4]}),
    .c(\u_iic_drive/state_c [6:5]),
    .d({\u_iic_drive/state_c[0]_syn_464 ,\u_iic_drive/state_c[0]_syn_455 }),
    .f({\u_iic_drive/add_byte_cnt_n ,\u_iic_drive/state_c[5]_syn_188 }));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_0_b[0]_syn_15  (
    .a({open_n3251,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0 [1],\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/bit_count_0 [2],\uut/data_buffer_0 [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [0],\uut/data_buffer_0 [1]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_b[0]_syn_2 ,open_n3269}),
    .q({open_n3273,\uut/data_buffer_0 [1]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(B@(~C*D))"),
    //.LUT1("(C*~(~B*~D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100001111001100),
    .INIT_LUT1(16'b1111000011000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_0_b[0]_syn_17  (
    .b({\uut/bit_count_0 [3],\uut/bit_count_0 [3]}),
    .c({\uut/bit_count_0 [4],\uut/bit_count_0 [4]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0_b[0]_syn_2 ,\uut/bit_count_0_b[0]_syn_2 }),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_b[0]_syn_5 ,open_n3289}),
    .q({open_n3293,\uut/bit_count_0 [3]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(D*~C*B*A)"),
    .INIT_LUT0(16'b0000100000000000),
    .MODE("LOGIC"))
    \uut/bit_count_0_b[0]_syn_19  (
    .a({open_n3294,\uut/bit_count_0_b[0]_syn_2 }),
    .b({open_n3295,SLOAD_SGPIO_0_dup_1}),
    .c({open_n3296,\uut/bit_count_0 [3]}),
    .d({open_n3299,\uut/bit_count_0 [4]}),
    .f({open_n3313,\uut/bit_count_0_b1_n }));
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_1_b[0]_syn_15  (
    .a({open_n3319,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1 [1],\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/bit_count_1 [2],\uut/data_buffer_1 [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1 [0],\uut/data_buffer_1 [1]}),
    .sr(rst_cnt_b_n_dup_6),
    .f({\uut/bit_count_1_b[0]_syn_2 ,open_n3333}),
    .q({open_n3337,\uut/data_buffer_1 [1]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(D*~C*B*A)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0000100000000000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0000100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_1_b[0]_syn_17  (
    .a({\uut/bit_count_1_b[0]_syn_2 ,\uut/bit_count_1_b1_n }),
    .b({SLOAD_SGPIO_1_dup_1,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/bit_count_1 [3],DATAOUT_SGPIO_1_dup_1}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1 [4],\uut/data_buffer_1 [0]}),
    .sr(rst_cnt_b_n_dup_6),
    .f({\uut/bit_count_1_b1_n ,open_n3355}),
    .q({open_n3359,\uut/data_buffer_1 [0]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(~B*~D))"),
    //.LUTG0("(C*~(~B*~D))"),
    .INIT_LUTF0(16'b1111000011000000),
    .INIT_LUTG0(16'b1111000011000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \uut/bit_count_1_b[0]_syn_19  (
    .b({open_n3362,\uut/bit_count_1 [3]}),
    .c({open_n3363,\uut/bit_count_1 [4]}),
    .d({open_n3366,\uut/bit_count_1_b[0]_syn_2 }),
    .f({open_n3384,\uut/bit_count_1_b[0]_syn_5 }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/mux13_syn_77  (
    .a({open_n3390,\uut/bit_count_1_b1_n }),
    .b({open_n3391,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/bit_count_1_b1_n ,\uut/data_buffer_1 [21]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({rst_cnt_b_n_dup_6,\uut/data_buffer_1 [22]}),
    .sr(rst_cnt_b_n_dup_6),
    .f({\uut/mux13_syn_27 ,open_n3409}),
    .q({open_n3413,\uut/data_buffer_1 [22]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/mux6_syn_77  (
    .a({open_n3414,\uut/bit_count_0_b1_n }),
    .b({open_n3415,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/bit_count_0_b1_n ,\uut/data_buffer_0 [13]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({rst_cnt_b_n_dup_5,\uut/data_buffer_0 [14]}),
    .sr(rst_cnt_b_n_dup_5),
    .f({\uut/mux6_syn_27 ,open_n3433}),
    .q({open_n3437,\uut/data_buffer_0 [14]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_51  (
    .c({open_n3442,\uut/sgpio_1_data_out [19]}),
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n3443,transmit_trigger}),
    .mi({open_n3454,\uut/data_buffer_1 [19]}),
    .f({open_n3456,C_LOCATE_S5_dup_1}),
    .q({open_n3460,\uut/sgpio_1_data_out [20]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_53  (
    .c({open_n3465,\uut/sgpio_1_data_out [16]}),
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n3466,transmit_trigger}),
    .mi({open_n3477,\uut/data_buffer_1 [16]}),
    .f({open_n3479,C_LOCATE_S6_dup_1}),
    .q({open_n3483,\uut/sgpio_1_data_out [17]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_55  (
    .c({open_n3488,\uut/sgpio_1_data_out [13]}),
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n3489,transmit_trigger}),
    .mi({open_n3493,\uut/data_buffer_1 [13]}),
    .f({open_n3506,C_LOCATE_S7_dup_1}),
    .q({open_n3510,\uut/sgpio_1_data_out [14]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_57  (
    .c({open_n3515,\uut/sgpio_1_data_out [22]}),
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n3516,transmit_trigger}),
    .mi({open_n3527,\uut/data_buffer_1 [21]}),
    .f({open_n3529,C_LOCATE_S4_dup_1}),
    .q({open_n3533,\uut/sgpio_1_data_out [22]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_60  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .mi({\uut/data_buffer_1 [15],\uut/data_buffer_1 [18]}),
    .q({\uut/sgpio_1_data_out [16],\uut/sgpio_1_data_out [19]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_62  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .mi({open_n3569,\uut/data_buffer_1 [12]}),
    .q({open_n3587,\uut/sgpio_1_data_out [13]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_64  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_syn_4),
    .mi({open_n3599,\uut/data_buffer_1 [22]}),
    .q({open_n3617,\uut/sgpio_1_data_out [23]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*(D*C)*~(0)+A*~(B)*(D*C)*~(0)+~(A)*~(B)*~((D*C))*0+A*~(B)*~((D*C))*0+~(A)*B*~((D*C))*0+~(A)*B*(D*C)*0)"),
    //.LUT1("(~(A)*~(B)*(D*C)*~(1)+A*~(B)*(D*C)*~(1)+~(A)*~(B)*~((D*C))*1+A*~(B)*~((D*C))*1+~(A)*B*~((D*C))*1+~(A)*B*(D*C)*1)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011000000000000),
    .INIT_LUT1(16'b0100011101110111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_32  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/bit_count_0 [0],\uut/bit_count_0 [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [1],\uut/bit_count_0 [1]}),
    .mi({open_n3629,\uut/bit_count_0 [2]}),
    .sr(rst_cnt_b_n),
    .q({open_n3635,\uut/bit_count_0 [2]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D)"),
    //.LUT1("(~(D)*~(B)*~(C)+D*~(B)*~(C)+~(D)*B*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100011100110000),
    .INIT_LUT1(16'b0000001111000011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_35  (
    .a({open_n3636,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/bit_count_0 [0],\uut/bit_count_0 [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0_b1_n ,\uut/bit_count_0 [1]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_0 [0],\uut/bit_count_0 [1]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b1111011110100000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b1111011110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_37  (
    .a({\uut/bit_count_0_b[0]_syn_2 ,\uut/bit_count_0_b1_n }),
    .b({SLOAD_SGPIO_0_dup_1,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/bit_count_0 [3],DATAOUT_SGPIO_0_dup_1}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [4],\uut/data_buffer_0 [0]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_0 [4],\uut/data_buffer_0 [0]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*(D*C)*~(0)+A*~(B)*(D*C)*~(0)+~(A)*~(B)*~((D*C))*0+A*~(B)*~((D*C))*0+~(A)*B*~((D*C))*0+~(A)*B*(D*C)*0)"),
    //.LUT1("(~(A)*~(B)*(D*C)*~(1)+A*~(B)*(D*C)*~(1)+~(A)*~(B)*~((D*C))*1+A*~(B)*~((D*C))*1+~(A)*B*~((D*C))*1+~(A)*B*(D*C)*1)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011000000000000),
    .INIT_LUT1(16'b0100011101110111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_32  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/bit_count_1 [0],\uut/bit_count_1 [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1 [1],\uut/bit_count_1 [1]}),
    .mi({open_n3688,\uut/bit_count_1 [2]}),
    .sr(rst_cnt_b_n_dup_6),
    .q({open_n3694,\uut/bit_count_1 [2]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D)"),
    //.LUT1("(~(D)*~(B)*~(C)+D*~(B)*~(C)+~(D)*B*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100011100110000),
    .INIT_LUT1(16'b0000001111000011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_35  (
    .a({open_n3695,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/bit_count_1 [0],\uut/bit_count_1 [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_b1_n ,\uut/bit_count_1 [1]}),
    .sr(rst_cnt_b_n_dup_6),
    .q({\uut/bit_count_1 [0],\uut/bit_count_1 [1]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUT1("(B@(~C*D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111011110100000),
    .INIT_LUT1(16'b1100001111001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_38  (
    .a({open_n3714,\uut/bit_count_1_b[0]_syn_2 }),
    .b({\uut/bit_count_1 [3],SLOAD_SGPIO_1_dup_1}),
    .c(\uut/bit_count_1 [4:3]),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_b[0]_syn_2 ,\uut/bit_count_1 [4]}),
    .sr(rst_cnt_b_n_dup_6),
    .q({\uut/bit_count_1 [3],\uut/bit_count_1 [4]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_120  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c(\uut/data_buffer_0 [12:11]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [13:12]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [13:12]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_123  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/data_buffer_0 [9],\uut/data_buffer_0 [10]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [10],\uut/data_buffer_0 [11]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [10],\uut/data_buffer_0 [11]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_126  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/data_buffer_0 [7],\uut/data_buffer_0 [8]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [8],\uut/data_buffer_0 [9]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [8],\uut/data_buffer_0 [9]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_130  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c(\uut/data_buffer_0 [2:1]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [3:2]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [3:2]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_133  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c(\uut/data_buffer_0 [4:3]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [5:4]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [5:4]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_136  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c(\uut/data_buffer_0 [6:5]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [7:6]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [7:6]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_140  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c(\uut/data_buffer_0 [15:14]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [16:15]),
    .sr(rst_cnt_b_n_dup_5),
    .q(\uut/data_buffer_0 [16:15]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_143  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/data_buffer_0 [18],\uut/data_buffer_0 [16]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [19],\uut/data_buffer_0 [17]}),
    .sr(rst_cnt_b_n_dup_5),
    .q({\uut/data_buffer_0 [19],\uut/data_buffer_0 [17]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_146  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c({\uut/data_buffer_0 [19],\uut/data_buffer_0 [17]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [20],\uut/data_buffer_0 [18]}),
    .sr(rst_cnt_b_n_dup_5),
    .q({\uut/data_buffer_0 [20],\uut/data_buffer_0 [18]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_149  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b[0]_syn_5 ,\uut/bit_count_0_b[0]_syn_5 }),
    .c(\uut/data_buffer_0 [21:20]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [22:21]),
    .sr(rst_cnt_b_n_dup_5),
    .q(\uut/data_buffer_0 [22:21]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_120  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [12:11]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [13:12]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [13:12]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_123  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [14:13]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [15:14]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [15:14]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_126  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [16:15]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [17:16]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [17:16]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_129  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [18:17]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [19:18]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [19:18]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_132  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [20:19]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [21:20]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [21:20]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_135  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/data_buffer_1 [9],\uut/data_buffer_1 [10]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [10],\uut/data_buffer_1 [11]}),
    .sr(rst_cnt_b_n_dup_6),
    .q({\uut/data_buffer_1 [10],\uut/data_buffer_1 [11]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_139  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/data_buffer_1 [7],\uut/data_buffer_1 [8]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [8],\uut/data_buffer_1 [9]}),
    .sr(rst_cnt_b_n_dup_6),
    .q({\uut/data_buffer_1 [8],\uut/data_buffer_1 [9]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_143  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [2:1]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [3:2]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [3:2]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTF1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUTG1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111010000110000),
    .INIT_LUTF1(16'b0111010000110000),
    .INIT_LUTG0(16'b0111010000110000),
    .INIT_LUTG1(16'b0111010000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_146  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c({\uut/data_buffer_1 [6],\uut/data_buffer_1 [3]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [7],\uut/data_buffer_1 [4]}),
    .sr(rst_cnt_b_n_dup_6),
    .q({\uut/data_buffer_1 [7],\uut/data_buffer_1 [4]}));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    //.LUT1("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010000110000),
    .INIT_LUT1(16'b0111010000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_149  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b[0]_syn_5 ,\uut/bit_count_1_b[0]_syn_5 }),
    .c(\uut/data_buffer_1 [5:4]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [6:5]),
    .sr(rst_cnt_b_n_dup_6),
    .q(\uut/data_buffer_1 [6:5]));  // ../../SGPIO_Controller_Slave.v(56)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_54  (
    .c({\uut/sgpio_0_data_out [22],\uut/sgpio_0_data_out [19]}),
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .d({transmit_trigger,transmit_trigger}),
    .mi(\uut/data_buffer_0 [22:21]),
    .f({C_LOCATE_S0_dup_1,C_LOCATE_S1_dup_1}),
    .q(\uut/sgpio_0_data_out [23:22]));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_56  (
    .c({open_n4159,\uut/sgpio_0_data_out [13]}),
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4160,transmit_trigger}),
    .mi({open_n4164,\uut/data_buffer_0 [13]}),
    .f({open_n4177,C_LOCATE_S3_dup_1}),
    .q({open_n4181,\uut/sgpio_0_data_out [14]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_58  (
    .c({open_n4186,\uut/sgpio_0_data_out [16]}),
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4187,transmit_trigger}),
    .mi({open_n4191,\uut/data_buffer_0 [15]}),
    .f({open_n4204,C_LOCATE_S2_dup_1}),
    .q({open_n4208,\uut/sgpio_0_data_out [16]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    //.LUT0("~(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111111111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_60  (
    .c({open_n4213,\uut/sgpio_0_data_out [20]}),
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4214,ACT_S1_dup_1}),
    .mi({open_n4225,\uut/data_buffer_0 [19]}),
    .f({open_n4227,C_ACT_S1_n}),
    .q({open_n4231,\uut/sgpio_0_data_out [20]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_62  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .mi({open_n4243,\uut/data_buffer_0 [18]}),
    .q({open_n4261,\uut/sgpio_0_data_out [19]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_64  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .mi({open_n4273,\uut/data_buffer_0 [16]}),
    .q({open_n4291,\uut/sgpio_0_data_out [17]}));  // ../../SGPIO_Controller_Slave.v(37)
  EF2_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_66  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_syn_4),
    .mi({open_n4310,\uut/data_buffer_0 [12]}),
    .q({open_n4317,\uut/sgpio_0_data_out [13]}));  // ../../SGPIO_Controller_Slave.v(37)

endmodule 

