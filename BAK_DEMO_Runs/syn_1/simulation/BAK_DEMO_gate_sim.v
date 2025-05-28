// Verilog netlist created by Tang Dynasty v5.6.119222
// Mon May 26 14:42:11 2025

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
  wire [26:0] clk_counter_b;
  wire [26:0] clk_counter_b1;
  wire [6:0] device_addr_b;
  wire [7:0] device_reg_addr;  // ../../SGPIO_DEMO_TOP.v(167)
  wire [7:0] device_reg_addr_b;
  wire [1:0] device_sel_reg;  // ../../SGPIO_DEMO_TOP.v(65)
  wire [15:0] poll_counter;  // ../../SGPIO_DEMO_TOP.v(66)
  wire [15:0] poll_counter_b;
  wire [15:0] poll_counter_b1;
  wire [7:0] pwm_control;  // ../../SGPIO_DEMO_TOP.v(61)
  wire [7:0] rdata;  // ../../SGPIO_DEMO_TOP.v(324)
  wire [15:0] rst_cnt;  // ../../SGPIO_DEMO_TOP.v(68)
  wire [15:0] rst_cnt_b;
  wire [15:0] rst_cnt_b1;
  wire [4:0] \u_iic_drive/ack_flag_b ;
  wire [3:0] \u_iic_drive/bit_cnt ;  // ../../i2c_master.v(48)
  wire [3:0] \u_iic_drive/bit_cnt_b ;
  wire [3:0] \u_iic_drive/bit_cnt_num ;  // ../../i2c_master.v(49)
  wire [1:0] \u_iic_drive/bit_cnt_num_b ;
  wire [7:0] \u_iic_drive/device_addr ;  // ../../i2c_master.v(12)
  wire [7:0] \u_iic_drive/div_cnt ;  // ../../i2c_master.v(50)
  wire [7:0] \u_iic_drive/div_cnt_b1 ;
  wire [7:0] \u_iic_drive/div_cnt_b2 ;
  wire [7:0] \u_iic_drive/rdata_r ;  // ../../i2c_master.v(55)
  wire [7:0] \u_iic_drive/reg_addr_r ;  // ../../i2c_master.v(54)
  wire  \u_iic_drive/sel0_syn_2 ;
  wire [6:0] \u_iic_drive/state_c ;  // ../../i2c_master.v(47)
  wire [7:0] \u_iic_drive/wdata_r ;  // ../../i2c_master.v(53)
  wire [4:0] \uut/bit_count_0 ;  // ../../SGPIO_Controller_Slave.v(26)
  wire [4:0] \uut/bit_count_0_b ;
  wire [4:0] \uut/bit_count_1 ;  // ../../SGPIO_Controller_Slave.v(27)
  wire [4:0] \uut/bit_count_1_b ;
  wire [23:0] \uut/data_buffer_0 ;  // ../../SGPIO_Controller_Slave.v(24)
  wire [23:0] \uut/data_buffer_0_b ;
  wire [23:0] \uut/data_buffer_1 ;  // ../../SGPIO_Controller_Slave.v(25)
  wire [23:0] \uut/data_buffer_1_b ;
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
  wire reg3_syn_5;  // ../../SGPIO_DEMO_TOP.v(136)
  wire reg5_syn_13;  // ../../SGPIO_DEMO_TOP.v(367)
  wire reg5_syn_15;  // ../../SGPIO_DEMO_TOP.v(367)
  wire reg5_syn_18;  // ../../SGPIO_DEMO_TOP.v(367)
  wire reg6_syn_19;  // ../../SGPIO_DEMO_TOP.v(72)
  wire rw_flag_b_reg_syn_3;  // ../../SGPIO_DEMO_TOP.v(118)
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
  wire transmit_trigger_reg_syn_4;  // ../../SGPIO_DEMO_TOP.v(118)
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
  wire SCL_SGPIO_1_dup_1;  // ../../SGPIO_DEMO_TOP.v(14)
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
  wire rw_flag_b;  // ../../SGPIO_DEMO_TOP.v(114)
  wire smb_iic_scl_dup_3;  // ../../SGPIO_DEMO_TOP.v(6)
  wire smb_iic_sda_dup_3;  // ../../SGPIO_DEMO_TOP.v(7)
  wire sys_clk_dup_1;  // ../../SGPIO_DEMO_TOP.v(3)
  wire transmit_trigger;  // ../../SGPIO_DEMO_TOP.v(111)
  wire \u_iic_drive/add0_syn_42 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_44 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_46 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_48 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add1_syn_16 ;  // ../../i2c_master.v(220)
  wire \u_iic_drive/eq14_syn_24 ;  // ../../i2c_master.v(225)
  wire \u_iic_drive/mux6_syn_11 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/reg3_syn_19 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_21 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_23 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_25 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_27 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_29 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_31 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_35 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_38 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg5_syn_13 ;  // ../../i2c_master.v(85)
  wire \u_iic_drive/reg5_syn_15 ;  // ../../i2c_master.v(85)
  wire \u_iic_drive/reg7_syn_13 ;  // ../../i2c_master.v(85)
  wire \u_iic_drive/reg7_syn_15 ;  // ../../i2c_master.v(85)
  wire \u_iic_drive/rw_flag_r_reg_syn_4 ;  // ../../i2c_master.v(85)
  wire \u_iic_drive/sda_out_en_reg_syn_3 ;  // ../../i2c_master.v(334)
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
  wire \u_iic_drive/state_c[0]_syn_48 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_90 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_138 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_140 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_186 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_234 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_282 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_330 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_451 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_455 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_459 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_461 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_464 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_469 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_477 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/ack_flag_n12 ;
  wire \u_iic_drive/add_byte_cnt_n ;
  wire \u_iic_drive/bit_cnt_num_n ;
  wire \u_iic_drive/div_cnt_b_n ;
  wire \u_iic_drive/end_div_cnt ;  // ../../i2c_master.v(42)
  wire \u_iic_drive/end_div_cnt_n ;
  wire \u_iic_drive/end_div_cnt_n_syn_2 ;
  wire \u_iic_drive/h2l_flag ;  // ../../i2c_master.v(39)
  wire \u_iic_drive/h2l_flag_n ;
  wire \u_iic_drive/l2h_flag ;  // ../../i2c_master.v(38)
  wire \u_iic_drive/l2h_flag_n ;
  wire \u_iic_drive/l2h_flag_n_syn_2 ;
  wire \u_iic_drive/rd_flag ;  // ../../i2c_master.v(41)
  wire \u_iic_drive/rd_flag_n ;
  wire \u_iic_drive/rd_flag_n_syn_2 ;
  wire \u_iic_drive/rd_flag_n_syn_4 ;
  wire \u_iic_drive/rdata_r_b_n8 ;
  wire \u_iic_drive/rdata_r_b_n9 ;
  wire \u_iic_drive/rdata_vld_r ;  // ../../i2c_master.v(56)
  wire \u_iic_drive/rdata_vld_r_n1 ;
  wire \u_iic_drive/rdata_vld_r_n2 ;
  wire \u_iic_drive/rw_flag_r ;  // ../../i2c_master.v(43)
  wire \u_iic_drive/scl_n ;
  wire \u_iic_drive/scl_n1 ;
  wire \u_iic_drive/sda_out ;  // ../../i2c_master.v(44)
  wire \u_iic_drive/sda_out_en ;  // ../../i2c_master.v(45)
  wire \u_iic_drive/sda_out_n11 ;
  wire \u_iic_drive/sda_out_n9 ;
  wire \u_iic_drive/wr_flag ;  // ../../i2c_master.v(40)
  wire \u_iic_drive/wr_flag_n ;
  wire \uut/mux13_syn_27 ;  // ../../SGPIO_Controller_Slave.v(56)
  wire \uut/mux6_syn_27 ;  // ../../SGPIO_Controller_Slave.v(37)
  wire \uut/reg2_syn_8 ;  // ../../SGPIO_Controller_Slave.v(37)
  wire \uut/reg3_syn_8 ;  // ../../SGPIO_Controller_Slave.v(56)
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
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S0_n_syn_1 (
    .a(ACT_S0_dup_1),
    .b(\uut/sgpio_0_data_out [23]),
    .o(C_ACT_S0_n));
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
    .clk(transmit_trigger),
    .do({open_n114,C_ACT_S0_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S0));  // ../../SGPIO_DEMO_TOP.v(21)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S1_n_syn_1 (
    .a(ACT_S1_dup_1),
    .b(\uut/sgpio_0_data_out [20]),
    .o(C_ACT_S1_n));
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
    .clk(transmit_trigger),
    .do({open_n120,C_ACT_S1_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S1));  // ../../SGPIO_DEMO_TOP.v(26)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S2_n_syn_1 (
    .a(ACT_S2_dup_1),
    .b(\uut/sgpio_0_data_out [17]),
    .o(C_ACT_S2_n));
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
    .clk(transmit_trigger),
    .do({open_n126,C_ACT_S2_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S2));  // ../../SGPIO_DEMO_TOP.v(31)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S3_n_syn_1 (
    .a(ACT_S3_dup_1),
    .b(\uut/sgpio_0_data_out [14]),
    .o(C_ACT_S3_n));
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
    .do({open_n133,open_n134,open_n135,C_ACT_S3_n}),
    .osclk(transmit_trigger),
    .opad(C_ACT_S3));  // ../../SGPIO_DEMO_TOP.v(36)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S4_n_syn_1 (
    .a(ACT_S4_dup_1),
    .b(\uut/sgpio_1_data_out [23]),
    .o(C_ACT_S4_n));
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
    .do({open_n155,open_n156,open_n157,C_ACT_S4_n}),
    .osclk(transmit_trigger),
    .opad(C_ACT_S4));  // ../../SGPIO_DEMO_TOP.v(41)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S5_n_syn_1 (
    .a(ACT_S5_dup_1),
    .b(\uut/sgpio_1_data_out [20]),
    .o(C_ACT_S5_n));
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
    .do({open_n177,open_n178,open_n179,C_ACT_S5_n}),
    .osclk(transmit_trigger),
    .opad(C_ACT_S5));  // ../../SGPIO_DEMO_TOP.v(46)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S6_n_syn_1 (
    .a(ACT_S6_dup_1),
    .b(\uut/sgpio_1_data_out [17]),
    .o(C_ACT_S6_n));
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
    .clk(transmit_trigger),
    .do({open_n198,C_ACT_S6_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S6));  // ../../SGPIO_DEMO_TOP.v(51)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    C_ACT_S7_n_syn_1 (
    .a(ACT_S7_dup_1),
    .b(\uut/sgpio_1_data_out [14]),
    .o(C_ACT_S7_n));
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
    .clk(transmit_trigger),
    .do({open_n204,C_ACT_S7_n}),
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
    .clk(SCL_SGPIO_0_dup_1),
    .do({open_n210,\uut/data_buffer_0 [20]}),
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
    .clk(SCL_SGPIO_0_dup_1),
    .do({open_n216,\uut/data_buffer_0 [17]}),
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
    .clk(SCL_SGPIO_0_dup_1),
    .do({open_n222,\uut/data_buffer_0 [14]}),
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
    .do({open_n228,open_n229,open_n230,\uut/data_buffer_0 [11]}),
    .osclk(SCL_SGPIO_0_dup_1),
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
    .do({open_n249,open_n250,open_n251,\uut/data_buffer_1 [20]}),
    .osclk(SCL_SGPIO_1_dup_1),
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
    .do({open_n270,open_n271,open_n272,\uut/data_buffer_1 [17]}),
    .osclk(SCL_SGPIO_1_dup_1),
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
    .clk(SCL_SGPIO_1_dup_1),
    .do({open_n291,\uut/data_buffer_1 [14]}),
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
    .clk(SCL_SGPIO_1_dup_1),
    .do({open_n297,\uut/data_buffer_1 [11]}),
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
    .do({open_n305,C_LOCATE_S0_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S0));  // ../../SGPIO_DEMO_TOP.v(19)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S0_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_0_data_out [22]),
    .o(C_LOCATE_S0_dup_1));  // ../../SGPIO_DEMO_TOP.v(19)
  EF2_PHY_SPAD #(
    //.LOCATION("P14"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S1_syn_2 (
    .do({open_n314,C_LOCATE_S1_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S1));  // ../../SGPIO_DEMO_TOP.v(24)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S1_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_0_data_out [19]),
    .o(C_LOCATE_S1_dup_1));  // ../../SGPIO_DEMO_TOP.v(24)
  EF2_PHY_SPAD #(
    //.LOCATION("P18"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S2_syn_2 (
    .do({open_n323,C_LOCATE_S2_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S2));  // ../../SGPIO_DEMO_TOP.v(29)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S2_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_0_data_out [16]),
    .o(C_LOCATE_S2_dup_1));  // ../../SGPIO_DEMO_TOP.v(29)
  EF2_PHY_PAD #(
    //.LOCATION("P27"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S3_syn_2 (
    .do({open_n331,open_n332,open_n333,C_LOCATE_S3_dup_1}),
    .opad(C_LOCATE_S3));  // ../../SGPIO_DEMO_TOP.v(34)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S3_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_0_data_out [13]),
    .o(C_LOCATE_S3_dup_1));  // ../../SGPIO_DEMO_TOP.v(34)
  EF2_PHY_PAD #(
    //.LOCATION("P40"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S4_syn_2 (
    .do({open_n354,open_n355,open_n356,C_LOCATE_S4_dup_1}),
    .opad(C_LOCATE_S4));  // ../../SGPIO_DEMO_TOP.v(39)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S4_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_1_data_out [22]),
    .o(C_LOCATE_S4_dup_1));  // ../../SGPIO_DEMO_TOP.v(39)
  EF2_PHY_PAD #(
    //.LOCATION("P45"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S5_syn_2 (
    .do({open_n377,open_n378,open_n379,C_LOCATE_S5_dup_1}),
    .opad(C_LOCATE_S5));  // ../../SGPIO_DEMO_TOP.v(44)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S5_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_1_data_out [19]),
    .o(C_LOCATE_S5_dup_1));  // ../../SGPIO_DEMO_TOP.v(44)
  EF2_PHY_SPAD #(
    //.LOCATION("P51"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S6_syn_2 (
    .do({open_n401,C_LOCATE_S6_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S6));  // ../../SGPIO_DEMO_TOP.v(49)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S6_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_1_data_out [16]),
    .o(C_LOCATE_S6_dup_1));  // ../../SGPIO_DEMO_TOP.v(49)
  EF2_PHY_SPAD #(
    //.LOCATION("P57"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S7_syn_2 (
    .do({open_n410,C_LOCATE_S7_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S7));  // ../../SGPIO_DEMO_TOP.v(54)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    C_LOCATE_S7_syn_3 (
    .a(transmit_trigger),
    .b(\uut/sgpio_1_data_out [13]),
    .o(C_LOCATE_S7_dup_1));  // ../../SGPIO_DEMO_TOP.v(54)
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
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    _al_n1_syn_312 (
    .a(2'b00),
    .b(2'b01),
    .c(2'b00),
    .d({clk_counter[1],1'b1}),
    .e({clk_counter[2],clk_counter[0]}),
    .f({clk_counter_b1[1],open_n564}),
    .fco(_al_n1_syn_182),
    .fx({clk_counter_b1[2],clk_counter_b1[0]}));
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
    .b({clk_counter[0],open_n676}),
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
    .sr(rst_cnt_b_n),
    .f({poll_counter_b1[4],open_n718}),
    .fco(_al_n1_syn_292),
    .q({open_n721,poll_counter[3]}));
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
    .a({open_n758,rst_cnt[15]}),
    .c(2'b00),
    .d({open_n763,1'b0}),
    .fci(add3_syn_96),
    .f({open_n780,rst_cnt_b1[15]}));  // ../../SGPIO_DEMO_TOP.v(77)
  EF2_PHY_LSLICE #(
    //.MACRO("add3_syn_98"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    add3_syn_98 (
    .a({rst_cnt[1],1'b0}),
    .b({rst_cnt[2],rst_cnt[0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({rst_cnt_b1[1],open_n803}),
    .fco(add3_syn_84),
    .fx({rst_cnt_b1[2],rst_cnt_b1[0]}));  // ../../SGPIO_DEMO_TOP.v(77)
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
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[0]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[0]),
    .o(clk_counter_b[0]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[10]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[10]),
    .o(clk_counter_b[10]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[11]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[11]),
    .o(clk_counter_b[11]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[12]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[12]),
    .o(clk_counter_b[12]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[13]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[13]),
    .o(clk_counter_b[13]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[15]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[15]),
    .o(clk_counter_b[15]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[17]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[17]),
    .o(clk_counter_b[17]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[18]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[18]),
    .o(clk_counter_b[18]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[19]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[19]),
    .o(clk_counter_b[19]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[20]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[20]),
    .o(clk_counter_b[20]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[21]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[21]),
    .o(clk_counter_b[21]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[23]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[23]),
    .o(clk_counter_b[23]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \clk_counter_b[5]_syn_1  (
    .a(clk_counter_b_n),
    .b(clk_counter_b1[5]),
    .o(clk_counter_b[5]));
  EF2_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \device_addr_b[5]_syn_1  (
    .a(rw_flag_b),
    .o(device_addr_b[5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \device_reg_addr_b[0]_syn_1  (
    .a(device_sel_reg[0]),
    .b(rw_flag_b),
    .o(device_reg_addr_b[0]));
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_42 (
    .a(2'b00),
    .b({rdata[0],open_n871}),
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
    .f({pwm_control_b1_n,open_n987}));  // ../../SGPIO_DEMO_TOP.v(357)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \poll_counter_b[1]_syn_1  (
    .a(poll_counter[6]),
    .b(poll_counter[7]),
    .c(poll_counter[8]),
    .d(poll_counter[9]),
    .o(\poll_counter_b[1]_syn_2 ));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \poll_counter_b[1]_syn_10  (
    .a(device_sel_reg_b_n),
    .b(poll_counter_b1[1]),
    .o(poll_counter_b[1]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    \poll_counter_b[1]_syn_3  (
    .a(\poll_counter_b[1]_syn_2 ),
    .b(poll_counter[4]),
    .c(poll_counter[5]),
    .o(\poll_counter_b[1]_syn_4 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \poll_counter_b[1]_syn_5  (
    .a(poll_counter[12]),
    .b(poll_counter[13]),
    .c(poll_counter[14]),
    .d(poll_counter[15]),
    .o(\poll_counter_b[1]_syn_6 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    \poll_counter_b[1]_syn_7  (
    .a(clk_counter[0]),
    .b(poll_counter[1]),
    .c(poll_counter[2]),
    .d(poll_counter[3]),
    .o(\poll_counter_b[1]_syn_8 ));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*C*B*A)"),
    .INIT(32'h00000080))
    \poll_counter_b[1]_syn_9  (
    .a(\poll_counter_b[1]_syn_4 ),
    .b(\poll_counter_b[1]_syn_6 ),
    .c(\poll_counter_b[1]_syn_8 ),
    .d(poll_counter[10]),
    .e(poll_counter[11]),
    .o(device_sel_reg_b_n));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \poll_counter_b[4]_syn_1  (
    .a(device_sel_reg_b_n),
    .b(poll_counter_b1[4]),
    .o(poll_counter_b[4]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \poll_counter_b[5]_syn_1  (
    .a(device_sel_reg_b_n),
    .b(poll_counter_b1[5]),
    .o(poll_counter_b[5]));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_30 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[0]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[0]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_32 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[1]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[1]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_34 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[2]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[2]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_36 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[3]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[3]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_38 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[4]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[4]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_40 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[5]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[5]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_42 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[6]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[6]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_44 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[7]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[7]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_46 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[8]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[8]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_48 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[9]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[9]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_50 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[10]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[10]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_52 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[11]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[11]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_54 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[12]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[12]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_56 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[13]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[13]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_58 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[14]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[14]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_60 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[15]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[15]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_62 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[16]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[16]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_64 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[17]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[17]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_66 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[18]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[18]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_68 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[19]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[19]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_70 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[20]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[20]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_72 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[21]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[21]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_74 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[22]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[22]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_76 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b[23]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[23]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_78 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[24]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[24]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_80 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[25]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[25]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_82 (
    .clk(sys_clk_dup_1),
    .d(clk_counter_b1[26]),
    .sr(rst_cnt_b_n),
    .q(clk_counter[26]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg1_syn_13 (
    .clk(sys_clk_dup_1),
    .d(rw_flag_b),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/device_addr [0]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg1_syn_15 (
    .clk(sys_clk_dup_1),
    .d(1'b1),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/device_addr [2]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg1_syn_17 (
    .clk(sys_clk_dup_1),
    .d(device_addr_b[5]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/device_addr [5]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg2_syn_12 (
    .clk(sys_clk_dup_1),
    .d(device_reg_addr_b[0]),
    .sr(rst_cnt_b_n),
    .q(device_reg_addr[0]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    reg3_syn_6 (
    .a(device_sel_reg_b_n),
    .b(device_sel_reg[0]),
    .o(reg3_syn_5));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg3_syn_8 (
    .clk(sys_clk_dup_1),
    .d(reg3_syn_5),
    .sr(rst_cnt_b_n),
    .q(device_sel_reg[0]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_19 (
    .clk(sys_clk_dup_1),
    .d(poll_counter_b[1]),
    .sr(rst_cnt_b_n),
    .q(poll_counter[1]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_25 (
    .clk(sys_clk_dup_1),
    .d(poll_counter_b[4]),
    .sr(rst_cnt_b_n),
    .q(poll_counter[4]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg4_syn_27 (
    .clk(sys_clk_dup_1),
    .d(poll_counter_b[5]),
    .sr(rst_cnt_b_n),
    .q(poll_counter[5]));  // ../../SGPIO_DEMO_TOP.v(136)
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
    .sr(rst_cnt_b_n),
    .f({open_n1044,poll_counter_b1[1]}),
    .fco(_al_n1_syn_290),
    .q({poll_counter[2],open_n1047}));  // ../../SGPIO_DEMO_TOP.v(136)
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
    .sr(rst_cnt_b_n),
    .f({open_n1064,poll_counter_b1[5]}),
    .fco(_al_n1_syn_294),
    .q({poll_counter[6],open_n1067}));  // ../../SGPIO_DEMO_TOP.v(136)
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
    .sr(rst_cnt_b_n),
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
    .sr(rst_cnt_b_n),
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
    .sr(rst_cnt_b_n),
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
    .sr(rst_cnt_b_n),
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
    .a({open_n1148,1'b0}),
    .b({open_n1149,poll_counter[15]}),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_302),
    .sr(rst_cnt_b_n),
    .q({open_n1171,poll_counter[15]}));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    reg5_syn_16 (
    .a(pwm_control_b1_n),
    .b(pwm_control[5]),
    .c(transmit_trigger),
    .o(reg5_syn_15));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~(C*B*A))"),
    .INIT(32'h0000007f))
    reg5_syn_17 (
    .a(rdata[3]),
    .b(rdata[4]),
    .c(rdata[5]),
    .d(rdata[6]),
    .e(rdata[7]),
    .o(reg5_syn_18));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_MAP_LUT3 #(
    .EQN("~(~B*~(A)*~(C)+~B*A*~(C)+~(~B)*A*C+~B*A*C)"),
    .INIT(8'h5c))
    reg5_syn_19 (
    .a(reg5_syn_18),
    .b(pwm_control[0]),
    .c(transmit_trigger),
    .o(reg5_syn_13));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg5_syn_21 (
    .clk(sys_clk_dup_1),
    .d(reg5_syn_13),
    .sr(rst_cnt_b_n),
    .q(pwm_control[0]));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg5_syn_23 (
    .clk(sys_clk_dup_1),
    .d(reg5_syn_15),
    .sr(rst_cnt_b_n),
    .q(pwm_control[5]));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    reg6_syn_20 (
    .a(rst_cnt_b_n),
    .b(rst_cnt_b1[4]),
    .o(reg6_syn_19));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_22 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b[0]),
    .q(rst_cnt[0]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_24 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b[1]),
    .q(rst_cnt[1]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_26 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b[2]),
    .q(rst_cnt[2]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_28 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b[3]),
    .q(rst_cnt[3]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_30 (
    .clk(sys_clk_dup_1),
    .d(reg6_syn_19),
    .q(rst_cnt[4]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_32 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[5]),
    .q(rst_cnt[5]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_34 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[6]),
    .q(rst_cnt[6]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_36 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[7]),
    .q(rst_cnt[7]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_38 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[8]),
    .q(rst_cnt[8]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_40 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[9]),
    .q(rst_cnt[9]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_42 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[10]),
    .q(rst_cnt[10]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_44 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[11]),
    .q(rst_cnt[11]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_46 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[12]),
    .q(rst_cnt[12]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_48 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[13]),
    .q(rst_cnt[13]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_50 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[14]),
    .q(rst_cnt[14]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_52 (
    .clk(sys_clk_dup_1),
    .d(rst_cnt_b1[15]),
    .q(rst_cnt[15]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \rst_cnt_b[0]_syn_1  (
    .a(rst_cnt_b_n),
    .b(rst_cnt_b1[0]),
    .o(rst_cnt_b[0]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \rst_cnt_b[1]_syn_1  (
    .a(rst_cnt_b_n),
    .b(rst_cnt_b1[1]),
    .o(rst_cnt_b[1]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \rst_cnt_b[2]_syn_1  (
    .a(rst_cnt_b_n),
    .b(rst_cnt_b1[2]),
    .o(rst_cnt_b[2]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \rst_cnt_b[3]_syn_1  (
    .a(rst_cnt_b_n),
    .b(rst_cnt_b1[3]),
    .o(rst_cnt_b[3]));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    rw_flag_b_reg (
    .clk(sys_clk_dup_1),
    .d(rw_flag_b_reg_syn_3),
    .q(rw_flag_b));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    rw_flag_b_reg_syn_10 (
    .a(rst_cnt[0]),
    .b(rst_cnt[1]),
    .c(rst_cnt[2]),
    .d(rst_cnt[3]),
    .o(rw_flag_b_reg_syn_11));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT5 #(
    .EQN("(~E*D*C*B*A)"),
    .INIT(32'h00008000))
    rw_flag_b_reg_syn_12 (
    .a(rw_flag_b_reg_syn_7),
    .b(rw_flag_b_reg_syn_9),
    .c(rw_flag_b_reg_syn_11),
    .d(rst_cnt[10]),
    .e(rst_cnt[11]),
    .o(rst_cnt_b_n));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*~A)"),
    .INIT(16'h4000))
    rw_flag_b_reg_syn_13 (
    .a(clk_counter[16]),
    .b(clk_counter[17]),
    .c(clk_counter[18]),
    .d(clk_counter[19]),
    .o(rw_flag_b_reg_syn_14));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT3 #(
    .EQN("(C*~B*A)"),
    .INIT(8'h20))
    rw_flag_b_reg_syn_15 (
    .a(rw_flag_b_reg_syn_14),
    .b(clk_counter[14]),
    .c(clk_counter[15]),
    .o(rw_flag_b_reg_syn_16));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    rw_flag_b_reg_syn_17 (
    .a(clk_counter[22]),
    .b(clk_counter[23]),
    .c(clk_counter[24]),
    .d(clk_counter[25]),
    .o(rw_flag_b_reg_syn_18));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    rw_flag_b_reg_syn_19 (
    .a(rw_flag_b_reg_syn_16),
    .b(rw_flag_b_reg_syn_18),
    .c(clk_counter[20]),
    .d(clk_counter[21]),
    .o(rw_flag_b_reg_syn_20));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    rw_flag_b_reg_syn_21 (
    .a(clk_counter[4]),
    .b(clk_counter[5]),
    .c(clk_counter[6]),
    .d(clk_counter[7]),
    .o(rw_flag_b_reg_syn_22));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    rw_flag_b_reg_syn_23 (
    .a(rw_flag_b_reg_syn_22),
    .b(clk_counter[2]),
    .c(clk_counter[3]),
    .o(rw_flag_b_reg_syn_24));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    rw_flag_b_reg_syn_25 (
    .a(clk_counter[10]),
    .b(clk_counter[11]),
    .c(clk_counter[12]),
    .d(clk_counter[13]),
    .o(rw_flag_b_reg_syn_26));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    rw_flag_b_reg_syn_27 (
    .a(rw_flag_b_reg_syn_24),
    .b(rw_flag_b_reg_syn_26),
    .c(clk_counter[8]),
    .d(clk_counter[9]),
    .o(rw_flag_b_reg_syn_28));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT5 #(
    .EQN("(~E*D*C*B*A)"),
    .INIT(32'h00008000))
    rw_flag_b_reg_syn_29 (
    .a(rw_flag_b_reg_syn_20),
    .b(rw_flag_b_reg_syn_28),
    .c(clk_counter[0]),
    .d(clk_counter[1]),
    .e(clk_counter[26]),
    .o(clk_counter_b_n));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    rw_flag_b_reg_syn_30 (
    .a(clk_counter_b_n),
    .b(rst_cnt_b_n),
    .c(rw_flag_b),
    .o(rw_flag_b_reg_syn_3));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(D*C*~B*~A)"),
    .INIT(16'h1000))
    rw_flag_b_reg_syn_4 (
    .a(rst_cnt[6]),
    .b(rst_cnt[7]),
    .c(rst_cnt[8]),
    .d(rst_cnt[9]),
    .o(rw_flag_b_reg_syn_5));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    rw_flag_b_reg_syn_6 (
    .a(rw_flag_b_reg_syn_5),
    .b(rst_cnt[4]),
    .c(rst_cnt[5]),
    .o(rw_flag_b_reg_syn_7));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    rw_flag_b_reg_syn_8 (
    .a(rst_cnt[12]),
    .b(rst_cnt[13]),
    .c(rst_cnt[14]),
    .d(rst_cnt[15]),
    .o(rw_flag_b_reg_syn_9));  // ../../SGPIO_DEMO_TOP.v(118)
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
    .do({open_n1208,\u_iic_drive/scl_n }),
    .rst(rst_cnt_b_n),
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
    .do({open_n1214,\u_iic_drive/sda_out }),
    .rst(rst_cnt_b_n),
    .ts(\u_iic_drive/sda_out_en ),
    .di(smb_iic_sda_dup_3),
    .diq({open_n1216,\u_iic_drive/rdata_r [0]}),
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
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    transmit_trigger_reg_syn_5 (
    .a(clk_counter_b_n),
    .b(transmit_trigger),
    .o(transmit_trigger_reg_syn_4));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    transmit_trigger_reg_syn_7 (
    .clk(sys_clk_dup_1),
    .d(transmit_trigger_reg_syn_4),
    .sr(rst_cnt_b_n),
    .q(transmit_trigger));  // ../../SGPIO_DEMO_TOP.v(118)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_70  (
    .a({\u_iic_drive/div_cnt [0],1'b0}),
    .b({1'b1,open_n1242}),
    .f({\u_iic_drive/div_cnt_b2 [0],open_n1262}),
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
    .a({open_n1333,\u_iic_drive/div_cnt [7]}),
    .b({open_n1334,1'b0}),
    .fci(\u_iic_drive/add0_syn_48 ),
    .f({open_n1353,\u_iic_drive/div_cnt_b2 [7]}));  // ../../i2c_master.v(186)
  AL_MAP_LUT4 #(
    .EQN("(B*(~(A)*C*~(D)+~(A)*~(C)*D+A*~(C)*D))"),
    .INIT(16'h0c40))
    \u_iic_drive/bit_cnt_b[0]_syn_1  (
    .a(\u_iic_drive/state_c[0]_syn_459 ),
    .b(\u_iic_drive/div_cnt_b_n ),
    .c(\u_iic_drive/end_div_cnt ),
    .d(\u_iic_drive/bit_cnt [0]),
    .o(\u_iic_drive/bit_cnt_b [0]));
  AL_MAP_LUT5 #(
    .EQN("(B*(~(A)*C*D*~(E)+~(A)*~(C)*~(D)*E+A*~(C)*~(D)*E+~(A)*C*~(D)*E+~(A)*~(C)*D*E+A*~(C)*D*E))"),
    .INIT(32'h0c4c4000))
    \u_iic_drive/bit_cnt_b[1]_syn_1  (
    .a(\u_iic_drive/state_c[0]_syn_459 ),
    .b(\u_iic_drive/div_cnt_b_n ),
    .c(\u_iic_drive/end_div_cnt ),
    .d(\u_iic_drive/bit_cnt [0]),
    .e(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/bit_cnt_b [1]));
  AL_MAP_LUT4 #(
    .EQN("(A*(D@(C*B)))"),
    .INIT(16'h2a80))
    \u_iic_drive/bit_cnt_b[2]_syn_1  (
    .a(\u_iic_drive/div_cnt_b_n ),
    .b(\u_iic_drive/add1_syn_16 ),
    .c(\u_iic_drive/end_div_cnt ),
    .d(\u_iic_drive/bit_cnt [2]),
    .o(\u_iic_drive/bit_cnt_b [2]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    \u_iic_drive/bit_cnt_b[3]_syn_1  (
    .a(\u_iic_drive/add1_syn_16 ),
    .b(\u_iic_drive/end_div_cnt ),
    .c(\u_iic_drive/bit_cnt [2]),
    .o(\u_iic_drive/bit_cnt_b[3]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(B*~A*(D@C))"),
    .INIT(16'h0440))
    \u_iic_drive/bit_cnt_b[3]_syn_3  (
    .a(\u_iic_drive/state_c[0]_syn_461 ),
    .b(\u_iic_drive/div_cnt_b_n ),
    .c(\u_iic_drive/bit_cnt_b[3]_syn_2 ),
    .d(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/bit_cnt_b [3]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \u_iic_drive/bit_cnt_num_n_syn_1  (
    .a(\u_iic_drive/bit_cnt_num_b [0]),
    .o(\u_iic_drive/bit_cnt_num_n ));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[0]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [0]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[1]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [1]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[2]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [2]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[3]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [3]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[4]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [4]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[5]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [5]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[6]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [6]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \u_iic_drive/div_cnt_b1[7]_syn_1  (
    .a(\u_iic_drive/div_cnt_b2 [7]),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [7]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    \u_iic_drive/end_div_cnt_n_syn_1  (
    .a(\u_iic_drive/div_cnt [0]),
    .b(\u_iic_drive/div_cnt [3]),
    .c(\u_iic_drive/div_cnt [4]),
    .o(\u_iic_drive/end_div_cnt_n_syn_2 ));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    \u_iic_drive/end_div_cnt_n_syn_3  (
    .a(\u_iic_drive/end_div_cnt_n_syn_2 ),
    .b(\u_iic_drive/rd_flag_n_syn_4 ),
    .c(\u_iic_drive/div_cnt [1]),
    .d(\u_iic_drive/div_cnt [2]),
    .e(\u_iic_drive/div_cnt [6]),
    .o(\u_iic_drive/end_div_cnt_n ));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/end_div_cnt_reg_syn_4  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/end_div_cnt_n ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/end_div_cnt ));  // ../../i2c_master.v(192)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    \u_iic_drive/h2l_flag_n_syn_1  (
    .a(\u_iic_drive/l2h_flag_n_syn_2 ),
    .b(\u_iic_drive/div_cnt [2]),
    .c(\u_iic_drive/div_cnt [5]),
    .d(\u_iic_drive/div_cnt [6]),
    .o(\u_iic_drive/h2l_flag_n ));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/h2l_flag_reg_syn_4  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/h2l_flag_n ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/h2l_flag ));  // ../../i2c_master.v(192)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/l2h_flag_n_syn_1  (
    .a(\u_iic_drive/end_div_cnt_n_syn_2 ),
    .b(\u_iic_drive/div_cnt [1]),
    .c(\u_iic_drive/div_cnt [7]),
    .o(\u_iic_drive/l2h_flag_n_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \u_iic_drive/l2h_flag_n_syn_3  (
    .a(\u_iic_drive/l2h_flag_n_syn_2 ),
    .b(\u_iic_drive/div_cnt [2]),
    .c(\u_iic_drive/div_cnt [5]),
    .d(\u_iic_drive/div_cnt [6]),
    .o(\u_iic_drive/l2h_flag_n ));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/l2h_flag_reg_syn_4  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/l2h_flag_n ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/l2h_flag ));  // ../../i2c_master.v(192)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \u_iic_drive/mux6_syn_41  (
    .a(\u_iic_drive/reg3_syn_35 ),
    .b(\u_iic_drive/add1_syn_16 ),
    .o(\u_iic_drive/mux6_syn_11 ));  // ../../i2c_master.v(365)
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*~A)"),
    .INIT(16'h0400))
    \u_iic_drive/rd_flag_n_syn_1  (
    .a(\u_iic_drive/div_cnt [0]),
    .b(\u_iic_drive/div_cnt [1]),
    .c(\u_iic_drive/div_cnt [3]),
    .d(\u_iic_drive/div_cnt [4]),
    .o(\u_iic_drive/rd_flag_n_syn_2 ));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \u_iic_drive/rd_flag_n_syn_3  (
    .a(\u_iic_drive/div_cnt [5]),
    .b(\u_iic_drive/div_cnt [7]),
    .o(\u_iic_drive/rd_flag_n_syn_4 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    \u_iic_drive/rd_flag_n_syn_5  (
    .a(\u_iic_drive/rd_flag_n_syn_2 ),
    .b(\u_iic_drive/rd_flag_n_syn_4 ),
    .c(\u_iic_drive/div_cnt [2]),
    .d(\u_iic_drive/div_cnt [6]),
    .o(\u_iic_drive/rd_flag_n ));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/rd_flag_reg_syn_4  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rd_flag_n ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rd_flag ));  // ../../i2c_master.v(192)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \u_iic_drive/rdata_vld_r_n1_syn_1  (
    .a(\u_iic_drive/rdata_r_b_n8 ),
    .b(\u_iic_drive/rdata_vld_r_n2 ),
    .o(\u_iic_drive/rdata_vld_r_n1 ));
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/rdata_vld_r_reg  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_vld_r_n1 ),
    .q(\u_iic_drive/rdata_vld_r ));  // ../../i2c_master.v(371)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg0_syn_10  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt_num_n ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/bit_cnt_num [1]));  // ../../i2c_master.v(230)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg0_syn_8  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt_num_b [0]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/bit_cnt_num [0]));  // ../../i2c_master.v(230)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg1_syn_11  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt_b [0]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/bit_cnt [0]));  // ../../i2c_master.v(210)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg1_syn_13  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt_b [1]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/bit_cnt [1]));  // ../../i2c_master.v(210)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg1_syn_15  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt_b [2]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/bit_cnt [2]));  // ../../i2c_master.v(210)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg1_syn_17  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/bit_cnt_b [3]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/bit_cnt [3]));  // ../../i2c_master.v(210)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_19  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [0]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [0]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_21  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [1]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [1]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_23  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [2]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [2]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_25  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [3]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [3]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_27  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [4]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [4]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_29  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [5]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [5]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_31  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [6]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [6]));  // ../../i2c_master.v(179)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg2_syn_33  (
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/div_cnt_b1 [7]),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/div_cnt [7]));  // ../../i2c_master.v(179)
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*B*A)"),
    .INIT(32'h00000800))
    \u_iic_drive/reg3_syn_32  (
    .a(\u_iic_drive/state_c[0]_syn_455 ),
    .b(\u_iic_drive/rd_flag ),
    .c(\u_iic_drive/state_c [4]),
    .d(\u_iic_drive/state_c [5]),
    .e(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/rdata_r_b_n8 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \u_iic_drive/reg3_syn_33  (
    .a(\u_iic_drive/bit_cnt [0]),
    .b(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/add1_syn_16 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    \u_iic_drive/reg3_syn_34  (
    .a(\u_iic_drive/rdata_r_b_n8 ),
    .b(\u_iic_drive/bit_cnt [2]),
    .c(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/reg3_syn_35 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT4 #(
    .EQN("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    .INIT(16'hf870))
    \u_iic_drive/reg3_syn_36  (
    .a(\u_iic_drive/rdata_r_b_n8 ),
    .b(\u_iic_drive/rdata_r_b_n9 ),
    .c(\u_iic_drive/rdata_r [7]),
    .d(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_31 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/reg3_syn_37  (
    .a(\u_iic_drive/rdata_r_b_n8 ),
    .b(\u_iic_drive/bit_cnt [2]),
    .c(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/reg3_syn_38 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT5 #(
    .EQN("(D*~(E)*~((~C*B*A))+D*E*~((~C*B*A))+~(D)*E*(~C*B*A)+D*E*(~C*B*A))"),
    .INIT(32'hff08f700))
    \u_iic_drive/reg3_syn_39  (
    .a(\u_iic_drive/reg3_syn_38 ),
    .b(\u_iic_drive/bit_cnt [0]),
    .c(\u_iic_drive/bit_cnt [1]),
    .d(\u_iic_drive/rdata_r [6]),
    .e(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_29 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT5 #(
    .EQN("(D*~(E)*~((C*~B*A))+D*E*~((C*~B*A))+~(D)*E*(C*~B*A)+D*E*(C*~B*A))"),
    .INIT(32'hff20df00))
    \u_iic_drive/reg3_syn_40  (
    .a(\u_iic_drive/reg3_syn_38 ),
    .b(\u_iic_drive/bit_cnt [0]),
    .c(\u_iic_drive/bit_cnt [1]),
    .d(\u_iic_drive/rdata_r [5]),
    .e(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_27 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT4 #(
    .EQN("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    .INIT(16'hf870))
    \u_iic_drive/reg3_syn_41  (
    .a(\u_iic_drive/reg3_syn_38 ),
    .b(\u_iic_drive/add1_syn_16 ),
    .c(\u_iic_drive/rdata_r [4]),
    .d(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_25 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT4 #(
    .EQN("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    .INIT(16'hf870))
    \u_iic_drive/reg3_syn_42  (
    .a(\u_iic_drive/reg3_syn_35 ),
    .b(\u_iic_drive/sda_out_en_reg_syn_5 ),
    .c(\u_iic_drive/rdata_r [3]),
    .d(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_23 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT5 #(
    .EQN("(D*~(E)*~((~C*B*A))+D*E*~((~C*B*A))+~(D)*E*(~C*B*A)+D*E*(~C*B*A))"),
    .INIT(32'hff08f700))
    \u_iic_drive/reg3_syn_43  (
    .a(\u_iic_drive/reg3_syn_35 ),
    .b(\u_iic_drive/bit_cnt [0]),
    .c(\u_iic_drive/bit_cnt [1]),
    .d(\u_iic_drive/rdata_r [2]),
    .e(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_21 ));  // ../../i2c_master.v(362)
  AL_MAP_LUT5 #(
    .EQN("(D*~(E)*~((C*~B*A))+D*E*~((C*~B*A))+~(D)*E*(C*~B*A)+D*E*(C*~B*A))"),
    .INIT(32'hff20df00))
    \u_iic_drive/reg3_syn_44  (
    .a(\u_iic_drive/reg3_syn_35 ),
    .b(\u_iic_drive/bit_cnt [0]),
    .c(\u_iic_drive/bit_cnt [1]),
    .d(\u_iic_drive/rdata_r [1]),
    .e(smb_iic_sda_dup_3),
    .o(\u_iic_drive/reg3_syn_19 ));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_46  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_19 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [1]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_48  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_21 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [2]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_50  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_23 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [3]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_52  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_25 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [4]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_54  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_27 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [5]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_56  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_29 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [6]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_58  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg3_syn_31 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rdata_r [7]));  // ../../i2c_master.v(362)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_11  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [0]),
    .q(rdata[0]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_13  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [1]),
    .q(rdata[1]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_15  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [2]),
    .q(rdata[2]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_17  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [3]),
    .q(rdata[3]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_19  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [4]),
    .q(rdata[4]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_21  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [5]),
    .q(rdata[5]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_23  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [6]),
    .q(rdata[6]));  // ../../i2c_master.v(376)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_25  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [7]),
    .q(rdata[7]));  // ../../i2c_master.v(376)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \u_iic_drive/reg5_syn_16  (
    .a(device_reg_addr[0]),
    .b(device_sel_reg[0]),
    .c(\u_iic_drive/reg_addr_r [0]),
    .o(\u_iic_drive/reg5_syn_13 ));  // ../../i2c_master.v(85)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \u_iic_drive/reg5_syn_17  (
    .a(\u_iic_drive/device_addr [5]),
    .b(device_sel_reg[0]),
    .c(\u_iic_drive/reg_addr_r [1]),
    .o(\u_iic_drive/reg5_syn_15 ));  // ../../i2c_master.v(85)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg5_syn_19  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg5_syn_13 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/reg_addr_r [0]));  // ../../i2c_master.v(85)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg5_syn_21  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg5_syn_15 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/reg_addr_r [1]));  // ../../i2c_master.v(85)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_16  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_48 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [0]));  // ../../i2c_master.v(99)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_18  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_90 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [1]));  // ../../i2c_master.v(99)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_20  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_138 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [2]));  // ../../i2c_master.v(99)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_22  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_186 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [3]));  // ../../i2c_master.v(99)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_24  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_234 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [4]));  // ../../i2c_master.v(99)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_26  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_282 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [5]));  // ../../i2c_master.v(99)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_28  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c[0]_syn_330 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/state_c [6]));  // ../../i2c_master.v(99)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \u_iic_drive/reg7_syn_16  (
    .a(device_sel_reg[0]),
    .b(pwm_control[0]),
    .c(\u_iic_drive/wdata_r [0]),
    .o(\u_iic_drive/reg7_syn_13 ));  // ../../i2c_master.v(85)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \u_iic_drive/reg7_syn_17  (
    .a(device_sel_reg[0]),
    .b(pwm_control[5]),
    .c(\u_iic_drive/wdata_r [5]),
    .o(\u_iic_drive/reg7_syn_15 ));  // ../../i2c_master.v(85)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg7_syn_19  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg7_syn_13 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/wdata_r [0]));  // ../../i2c_master.v(85)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg7_syn_21  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/reg7_syn_15 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/wdata_r [5]));  // ../../i2c_master.v(85)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \u_iic_drive/rw_flag_r_reg_syn_5  (
    .a(device_sel_reg[0]),
    .b(rw_flag_b),
    .c(\u_iic_drive/rw_flag_r ),
    .o(\u_iic_drive/rw_flag_r_reg_syn_4 ));  // ../../i2c_master.v(85)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/rw_flag_r_reg_syn_7  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rw_flag_r_reg_syn_4 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/rw_flag_r ));  // ../../i2c_master.v(85)
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*~(B*A)))"),
    .INIT(16'h8f00))
    \u_iic_drive/scl_n_syn_1  (
    .a(\u_iic_drive/ack_flag_n12 ),
    .b(\u_iic_drive/rdata_r_b_n9 ),
    .c(\u_iic_drive/h2l_flag ),
    .d(smb_iic_scl_dup_3),
    .o(\u_iic_drive/scl_n1 ));
  AL_MAP_LUT3 #(
    .EQN("~(~C*B*~A)"),
    .INIT(8'hfb))
    \u_iic_drive/scl_n_syn_2  (
    .a(\u_iic_drive/scl_n1 ),
    .b(\u_iic_drive/div_cnt_b_n ),
    .c(\u_iic_drive/l2h_flag ),
    .o(\u_iic_drive/scl_n ));
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/scl_reg  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/scl_n ),
    .sr(rst_cnt_b_n),
    .q(smb_iic_scl_dup_3));  // ../../i2c_master.v(275)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_en_reg  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/sda_out_en_reg_syn_3 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/sda_out_en ));  // ../../i2c_master.v(334)
  AL_MAP_LUT4 #(
    .EQN("(~A*(~(B)*C*~(D)+B*C*~(D)+B*~(C)*D))"),
    .INIT(16'h0450))
    \u_iic_drive/sda_out_en_reg_syn_10  (
    .a(\u_iic_drive/sda_out_en_reg_syn_9 ),
    .b(\u_iic_drive/state_c[0]_syn_459 ),
    .c(\u_iic_drive/rdata_r_b_n9 ),
    .d(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/sda_out_en_reg_syn_11 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    \u_iic_drive/sda_out_en_reg_syn_12  (
    .a(\u_iic_drive/sda_out_en_reg_syn_11 ),
    .b(\u_iic_drive/state_c [6]),
    .c(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sda_out_en_reg_syn_13 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*~B))"),
    .INIT(8'h54))
    \u_iic_drive/sda_out_en_reg_syn_14  (
    .a(\u_iic_drive/sda_out_en_reg_syn_9 ),
    .b(\u_iic_drive/state_c[0]_syn_459 ),
    .c(\u_iic_drive/rdata_r_b_n9 ),
    .o(\u_iic_drive/sda_out_en_reg_syn_15 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*~(B*A)))"),
    .INIT(16'h8f00))
    \u_iic_drive/sda_out_en_reg_syn_16  (
    .a(\u_iic_drive/state_c[5]_syn_188 ),
    .b(\u_iic_drive/rdata_r_b_n9 ),
    .c(\u_iic_drive/state_c [6]),
    .d(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sda_out_en_reg_syn_17 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D)"),
    .INIT(16'h7750))
    \u_iic_drive/sda_out_en_reg_syn_18  (
    .a(\u_iic_drive/sda_out_en_reg_syn_13 ),
    .b(\u_iic_drive/sda_out_en_reg_syn_15 ),
    .c(\u_iic_drive/sda_out_en_reg_syn_17 ),
    .d(\u_iic_drive/sda_out_en ),
    .o(\u_iic_drive/sda_out_en_reg_syn_3 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \u_iic_drive/sda_out_en_reg_syn_4  (
    .a(\u_iic_drive/bit_cnt [0]),
    .b(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/sda_out_en_reg_syn_5 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/sda_out_en_reg_syn_6  (
    .a(\u_iic_drive/sda_out_en_reg_syn_5 ),
    .b(\u_iic_drive/bit_cnt [2]),
    .c(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/rdata_r_b_n9 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT4 #(
    .EQN("(~A*(B*~(C)*~(D)+~(B)*C*~(D)+~(B)*~(C)*D))"),
    .INIT(16'h0114))
    \u_iic_drive/sda_out_en_reg_syn_7  (
    .a(\u_iic_drive/state_c [0]),
    .b(\u_iic_drive/state_c [1]),
    .c(\u_iic_drive/state_c [2]),
    .d(\u_iic_drive/state_c [3]),
    .o(\u_iic_drive/state_c[3]_syn_222 ));  // ../../i2c_master.v(334)
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf553))
    \u_iic_drive/sda_out_en_reg_syn_8  (
    .a(\u_iic_drive/state_c[0]_syn_455 ),
    .b(\u_iic_drive/state_c[3]_syn_222 ),
    .c(\u_iic_drive/state_c [4]),
    .d(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/sda_out_en_reg_syn_9 ));  // ../../i2c_master.v(334)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_reg  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/sel0_syn_2 ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/sda_out ));  // ../../i2c_master.v(288)
  AL_MAP_LUT4 #(
    .EQN("((D@B)*~(C@A))"),
    .INIT(16'h2184))
    \u_iic_drive/sel0_syn_57  (
    .a(\u_iic_drive/bit_cnt_num [0]),
    .b(\u_iic_drive/bit_cnt_num [1]),
    .c(\u_iic_drive/bit_cnt [0]),
    .d(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/sel0_syn_58 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT4 #(
    .EQN("(A*(~(B)*C*~(D)+B*~(C)*D))"),
    .INIT(16'h0820))
    \u_iic_drive/sel0_syn_59  (
    .a(\u_iic_drive/sel0_syn_58 ),
    .b(\u_iic_drive/bit_cnt_num [1]),
    .c(\u_iic_drive/bit_cnt [2]),
    .d(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/rdata_vld_r_n2 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hff0f5533))
    \u_iic_drive/sel0_syn_60  (
    .a(\u_iic_drive/device_addr [0]),
    .b(\u_iic_drive/device_addr [2]),
    .c(\u_iic_drive/device_addr [5]),
    .d(\u_iic_drive/bit_cnt [0]),
    .e(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/sel0_syn_61 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \u_iic_drive/sel0_syn_62  (
    .a(\u_iic_drive/device_addr [0]),
    .b(\u_iic_drive/device_addr [2]),
    .c(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/sel0_syn_63 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("(~E*(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D))"),
    .INIT(32'h0000dc05))
    \u_iic_drive/sel0_syn_64  (
    .a(\u_iic_drive/sel0_syn_61 ),
    .b(\u_iic_drive/sel0_syn_63 ),
    .c(\u_iic_drive/sda_out_en_reg_syn_5 ),
    .d(\u_iic_drive/bit_cnt [2]),
    .e(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/sda_out_n9 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("(~((~B*~A))*~(C)*~(D)*~(E)+(~B*~A)*~(C)*~(D)*~(E)+~((~B*~A))*C*~(D)*~(E)+(~B*~A)*C*~(D)*~(E)+~((~B*~A))*~(C)*D*~(E)+(~B*~A)*~(C)*D*~(E)+~((~B*~A))*~(C)*~(D)*E+~((~B*~A))*C*~(D)*E+(~B*~A)*C*~(D)*E+~((~B*~A))*~(C)*D*E+~((~B*~A))*C*D*E+(~B*~A)*C*D*E)"),
    .INIT(32'hfefe0fff))
    \u_iic_drive/sel0_syn_65  (
    .a(\u_iic_drive/sda_out_n9 ),
    .b(\u_iic_drive/rdata_vld_r_n2 ),
    .c(\u_iic_drive/rdata_r_b_n9 ),
    .d(\u_iic_drive/rd_flag ),
    .e(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sel0_syn_66 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    \u_iic_drive/sel0_syn_67  (
    .a(\u_iic_drive/sel0_syn_66 ),
    .b(\u_iic_drive/state_c[0]_syn_455 ),
    .c(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/sel0_syn_68 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("(E*B*(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))"),
    .INIT(32'h08c00000))
    \u_iic_drive/sel0_syn_69  (
    .a(\u_iic_drive/state_c[0]_syn_459 ),
    .b(\u_iic_drive/state_c[0]_syn_455 ),
    .c(\u_iic_drive/state_c [4]),
    .d(\u_iic_drive/state_c [5]),
    .e(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sel0_syn_70 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT4 #(
    .EQN("(~C*~A*~(~D*~B))"),
    .INIT(16'h0504))
    \u_iic_drive/sel0_syn_71  (
    .a(\u_iic_drive/sel0_syn_68 ),
    .b(\u_iic_drive/sel0_syn_70 ),
    .c(\u_iic_drive/state_c [6]),
    .d(\u_iic_drive/sda_out ),
    .o(\u_iic_drive/sel0_syn_72 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("(B*(E*~(D)*~((C*A))+E*D*~((C*A))+~(E)*D*(C*A)+E*D*(C*A)))"),
    .INIT(32'hcc4c8000))
    \u_iic_drive/sel0_syn_73  (
    .a(\u_iic_drive/bit_cnt [0]),
    .b(\u_iic_drive/bit_cnt [1]),
    .c(\u_iic_drive/bit_cnt [2]),
    .d(\u_iic_drive/reg_addr_r [0]),
    .e(\u_iic_drive/reg_addr_r [1]),
    .o(\u_iic_drive/sda_out_n11 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT4 #(
    .EQN("~(C*~((~B*~A))*~(D)+C*(~B*~A)*~(D)+~(C)*(~B*~A)*D+C*(~B*~A)*D)"),
    .INIT(16'hee0f))
    \u_iic_drive/sel0_syn_74  (
    .a(\u_iic_drive/bit_cnt [0]),
    .b(\u_iic_drive/bit_cnt [2]),
    .c(\u_iic_drive/state_c [2]),
    .d(\u_iic_drive/state_c [3]),
    .o(\u_iic_drive/sel0_syn_75 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hd8aa))
    \u_iic_drive/sel0_syn_76  (
    .a(\u_iic_drive/sel0_syn_75 ),
    .b(\u_iic_drive/wdata_r [0]),
    .c(\u_iic_drive/wdata_r [5]),
    .d(\u_iic_drive/state_c [3]),
    .o(\u_iic_drive/sel0_syn_77 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT4 #(
    .EQN("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf0ac))
    \u_iic_drive/sel0_syn_78  (
    .a(\u_iic_drive/sda_out_n9 ),
    .b(\u_iic_drive/sda_out_n11 ),
    .c(\u_iic_drive/sel0_syn_77 ),
    .d(\u_iic_drive/state_c [3]),
    .o(\u_iic_drive/sel0_syn_79 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("~(D*~(A)*~((E*~C*B))+D*A*~((E*~C*B))+~(D)*A*(E*~C*B)+D*A*(E*~C*B))"),
    .INIT(32'h04f700ff))
    \u_iic_drive/sel0_syn_80  (
    .a(\u_iic_drive/sel0_syn_79 ),
    .b(\u_iic_drive/state_c[3]_syn_222 ),
    .c(\u_iic_drive/bit_cnt [3]),
    .d(\u_iic_drive/sda_out ),
    .e(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sel0_syn_81 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT5 #(
    .EQN("(C*(A*B*~(D)*~(E)+~(A)*~(B)*D*~(E)+A*~(B)*D*~(E)+~(A)*B*D*~(E)+A*B*D*~(E)+~(A)*~(B)*D*E+~(A)*B*D*E))"),
    .INIT(32'h5000f080))
    \u_iic_drive/sel0_syn_82  (
    .a(\u_iic_drive/state_c[5]_syn_188 ),
    .b(\u_iic_drive/rd_flag ),
    .c(\u_iic_drive/state_c [6]),
    .d(\u_iic_drive/sda_out ),
    .e(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sel0_syn_83 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT4 #(
    .EQN("~((~C*~A)*~(B)*~(D)+(~C*~A)*B*~(D)+~((~C*~A))*B*D+(~C*~A)*B*D)"),
    .INIT(16'h33fa))
    \u_iic_drive/sel0_syn_84  (
    .a(\u_iic_drive/sel0_syn_72 ),
    .b(\u_iic_drive/sel0_syn_81 ),
    .c(\u_iic_drive/sel0_syn_83 ),
    .d(\u_iic_drive/state_c[6]_syn_130 ),
    .o(\u_iic_drive/sel0_syn_2 ));  // ../../i2c_master.v(292)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    \u_iic_drive/state_c[0]_syn_449  (
    .a(\u_iic_drive/state_c [4]),
    .b(\u_iic_drive/state_c [5]),
    .c(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/state_c[6]_syn_130 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \u_iic_drive/state_c[0]_syn_450  (
    .a(\u_iic_drive/state_c [2]),
    .b(\u_iic_drive/state_c [3]),
    .o(\u_iic_drive/state_c[0]_syn_451 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("~(~D*C*B*A)"),
    .INIT(16'hff7f))
    \u_iic_drive/state_c[0]_syn_452  (
    .a(\u_iic_drive/state_c[6]_syn_130 ),
    .b(\u_iic_drive/state_c[0]_syn_451 ),
    .c(\u_iic_drive/state_c [0]),
    .d(\u_iic_drive/state_c [1]),
    .o(\u_iic_drive/div_cnt_b_n ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    \u_iic_drive/state_c[0]_syn_453  (
    .a(\u_iic_drive/state_c[6]_syn_130 ),
    .b(\u_iic_drive/state_c[0]_syn_451 ),
    .c(\u_iic_drive/state_c [0]),
    .d(\u_iic_drive/state_c [1]),
    .o(\u_iic_drive/ack_flag_n12 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/state_c[0]_syn_454  (
    .a(\u_iic_drive/state_c[0]_syn_451 ),
    .b(\u_iic_drive/state_c [0]),
    .c(\u_iic_drive/state_c [1]),
    .o(\u_iic_drive/state_c[0]_syn_455 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("(~A*~(~E*~D*C*B))"),
    .INIT(32'h55555515))
    \u_iic_drive/state_c[0]_syn_456  (
    .a(\u_iic_drive/ack_flag_n12 ),
    .b(\u_iic_drive/state_c[0]_syn_455 ),
    .c(\u_iic_drive/state_c [4]),
    .d(\u_iic_drive/state_c [5]),
    .e(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/bit_cnt_num_b [0]));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(C)*~((D@B))+~(A)*C*~((D@B))+A*C*~((D@B))+~(A)*~(C)*(D@B)+A*~(C)*(D@B)+A*C*(D@B))"),
    .INIT(16'he7bd))
    \u_iic_drive/state_c[0]_syn_457  (
    .a(\u_iic_drive/bit_cnt_num [0]),
    .b(\u_iic_drive/bit_cnt_num [1]),
    .c(\u_iic_drive/bit_cnt [0]),
    .d(\u_iic_drive/bit_cnt [1]),
    .o(\u_iic_drive/eq14_syn_24 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("(~A*((~C*~B)*D*~(E)+~((~C*~B))*~(D)*E))"),
    .INIT(32'h00540100))
    \u_iic_drive/state_c[0]_syn_458  (
    .a(\u_iic_drive/eq14_syn_24 ),
    .b(\u_iic_drive/bit_cnt_num [0]),
    .c(\u_iic_drive/bit_cnt_num [1]),
    .d(\u_iic_drive/bit_cnt [2]),
    .e(\u_iic_drive/bit_cnt [3]),
    .o(\u_iic_drive/state_c[0]_syn_459 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \u_iic_drive/state_c[0]_syn_460  (
    .a(\u_iic_drive/state_c[0]_syn_459 ),
    .b(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_c[0]_syn_461 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/state_c[0]_syn_462  (
    .a(\u_iic_drive/state_c[0]_syn_455 ),
    .b(\u_iic_drive/state_c [4]),
    .c(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/state_c[5]_syn_188 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("(~B*~A*(C*~(D)*~(E)+~(C)*D*~(E)+~(C)*~(D)*E))"),
    .INIT(32'h00010110))
    \u_iic_drive/state_c[0]_syn_463  (
    .a(\u_iic_drive/state_c [0]),
    .b(\u_iic_drive/state_c [1]),
    .c(\u_iic_drive/state_c [2]),
    .d(\u_iic_drive/state_c [3]),
    .e(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/state_c[0]_syn_464 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/state_c[0]_syn_465  (
    .a(\u_iic_drive/state_c[0]_syn_464 ),
    .b(\u_iic_drive/state_c [4]),
    .c(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/add_byte_cnt_n ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("(D*~C*A*~(E*B))"),
    .INIT(32'h02000a00))
    \u_iic_drive/state_c[0]_syn_466  (
    .a(\u_iic_drive/bit_cnt_num_b [0]),
    .b(\u_iic_drive/state_c[5]_syn_188 ),
    .c(\u_iic_drive/add_byte_cnt_n ),
    .d(\u_iic_drive/div_cnt_b_n ),
    .e(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/state_c[0]_syn_140 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .INIT(16'h5140))
    \u_iic_drive/state_c[0]_syn_467  (
    .a(\u_iic_drive/state_c[0]_syn_140 ),
    .b(\u_iic_drive/state_c[0]_syn_461 ),
    .c(\u_iic_drive/state_c [4]),
    .d(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/state_c[0]_syn_282 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    \u_iic_drive/state_c[0]_syn_468  (
    .a(\u_iic_drive/state_c[0]_syn_461 ),
    .b(\u_iic_drive/state_c [2]),
    .c(\u_iic_drive/rw_flag_r ),
    .o(\u_iic_drive/state_c[0]_syn_469 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~A*~(D*~C)))"),
    .INIT(16'h2322))
    \u_iic_drive/state_c[0]_syn_470  (
    .a(\u_iic_drive/state_c[0]_syn_469 ),
    .b(\u_iic_drive/state_c[0]_syn_140 ),
    .c(\u_iic_drive/state_c[0]_syn_461 ),
    .d(\u_iic_drive/state_c [4]),
    .o(\u_iic_drive/state_c[0]_syn_234 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("(~B*(D*~((~E*C))*~(A)+D*(~E*C)*~(A)+~(D)*(~E*C)*A+D*(~E*C)*A))"),
    .INIT(32'h11003120))
    \u_iic_drive/state_c[0]_syn_471  (
    .a(\u_iic_drive/state_c[0]_syn_461 ),
    .b(\u_iic_drive/state_c[0]_syn_140 ),
    .c(\u_iic_drive/state_c [2]),
    .d(\u_iic_drive/state_c [3]),
    .e(\u_iic_drive/rw_flag_r ),
    .o(\u_iic_drive/state_c[0]_syn_186 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \u_iic_drive/state_c[0]_syn_472  (
    .a(\u_iic_drive/state_c[0]_syn_461 ),
    .b(\u_iic_drive/state_c [1]),
    .o(\u_iic_drive/state_c[1]_syn_35 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~A*~(D*C)))"),
    .INIT(16'h3222))
    \u_iic_drive/state_c[0]_syn_473  (
    .a(\u_iic_drive/state_c[1]_syn_35 ),
    .b(\u_iic_drive/state_c[0]_syn_140 ),
    .c(device_sel_reg[0]),
    .d(\u_iic_drive/state_c [0]),
    .o(\u_iic_drive/state_c[0]_syn_90 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .INIT(16'h5140))
    \u_iic_drive/state_c[0]_syn_474  (
    .a(\u_iic_drive/state_c[0]_syn_140 ),
    .b(\u_iic_drive/state_c[0]_syn_461 ),
    .c(\u_iic_drive/state_c [1]),
    .d(\u_iic_drive/state_c [2]),
    .o(\u_iic_drive/state_c[0]_syn_138 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("~(~A*(~(B)*~(C)*~(D)*~(E)+B*~(C)*~(D)*~(E)+~(B)*C*~(D)*~(E)+B*C*~(D)*~(E)+B*~(C)*D*~(E)+B*C*D*~(E)+~(B)*~(C)*~(D)*E+B*~(C)*~(D)*E))"),
    .INIT(32'hfffabbaa))
    \u_iic_drive/state_c[0]_syn_475  (
    .a(\u_iic_drive/state_c[0]_syn_140 ),
    .b(device_sel_reg[0]),
    .c(\u_iic_drive/end_div_cnt ),
    .d(\u_iic_drive/state_c [0]),
    .e(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/state_c[0]_syn_48 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \u_iic_drive/state_c[0]_syn_476  (
    .a(\u_iic_drive/end_div_cnt ),
    .b(\u_iic_drive/state_c [3]),
    .c(\u_iic_drive/state_c [5]),
    .o(\u_iic_drive/state_c[0]_syn_477 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT4 #(
    .EQN("(~C*~B*~(~D*~A))"),
    .INIT(16'h0302))
    \u_iic_drive/state_c[0]_syn_478  (
    .a(\u_iic_drive/state_c[0]_syn_461 ),
    .b(\u_iic_drive/state_c[0]_syn_140 ),
    .c(\u_iic_drive/state_c[0]_syn_477 ),
    .d(\u_iic_drive/state_c [6]),
    .o(\u_iic_drive/state_c[0]_syn_330 ));  // ../../i2c_master.v(47)
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*C*~B*A)"),
    .INIT(32'h00000020))
    \u_iic_drive/wr_flag_n_syn_1  (
    .a(\u_iic_drive/rd_flag_n_syn_2 ),
    .b(\u_iic_drive/div_cnt [2]),
    .c(\u_iic_drive/div_cnt [5]),
    .d(\u_iic_drive/div_cnt [6]),
    .e(\u_iic_drive/div_cnt [7]),
    .o(\u_iic_drive/wr_flag_n ));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/wr_flag_reg_syn_4  (
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/wr_flag_n ),
    .sr(rst_cnt_b_n),
    .q(\u_iic_drive/wr_flag ));  // ../../i2c_master.v(192)
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    \uut/bit_count_0_b[0]_syn_1  (
    .a(\uut/bit_count_0 [0]),
    .b(\uut/bit_count_0 [1]),
    .c(\uut/bit_count_0 [2]),
    .o(\uut/bit_count_0_b[0]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    \uut/bit_count_0_b[0]_syn_3  (
    .a(\uut/bit_count_0_b[0]_syn_2 ),
    .b(SLOAD_SGPIO_0_dup_1),
    .c(\uut/bit_count_0 [3]),
    .d(\uut/bit_count_0 [4]),
    .o(\uut/bit_count_0_b1_n ));
  AL_MAP_LUT3 #(
    .EQN("(C*~(~B*~A))"),
    .INIT(8'he0))
    \uut/bit_count_0_b[0]_syn_4  (
    .a(\uut/bit_count_0_b[0]_syn_2 ),
    .b(\uut/bit_count_0 [3]),
    .c(\uut/bit_count_0 [4]),
    .o(\uut/bit_count_0_b[0]_syn_5 ));
  AL_MAP_LUT3 #(
    .EQN("(~(A)*~(B)*~(C)+A*~(B)*~(C)+~(A)*B*C)"),
    .INIT(8'h43))
    \uut/bit_count_0_b[0]_syn_6  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/bit_count_0 [0]),
    .o(\uut/bit_count_0_b [0]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D)"),
    .INIT(16'h4730))
    \uut/bit_count_0_b[1]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/bit_count_0 [0]),
    .d(\uut/bit_count_0 [1]),
    .o(\uut/bit_count_0_b [1]));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*(D*C)*~(E)+A*~(B)*(D*C)*~(E)+~(A)*~(B)*~((D*C))*E+A*~(B)*~((D*C))*E+~(A)*B*~((D*C))*E+~(A)*B*(D*C)*E)"),
    .INIT(32'h47773000))
    \uut/bit_count_0_b[2]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/bit_count_0 [0]),
    .d(\uut/bit_count_0 [1]),
    .e(\uut/bit_count_0 [2]),
    .o(\uut/bit_count_0_b [2]));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf7a0))
    \uut/bit_count_0_b[4]_syn_1  (
    .a(\uut/bit_count_0_b[0]_syn_2 ),
    .b(SLOAD_SGPIO_0_dup_1),
    .c(\uut/bit_count_0 [3]),
    .d(\uut/bit_count_0 [4]),
    .o(\uut/bit_count_0_b [4]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    \uut/bit_count_1_b[0]_syn_1  (
    .a(\uut/bit_count_1 [0]),
    .b(\uut/bit_count_1 [1]),
    .c(\uut/bit_count_1 [2]),
    .o(\uut/bit_count_1_b[0]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    \uut/bit_count_1_b[0]_syn_3  (
    .a(\uut/bit_count_1_b[0]_syn_2 ),
    .b(SLOAD_SGPIO_1_dup_1),
    .c(\uut/bit_count_1 [3]),
    .d(\uut/bit_count_1 [4]),
    .o(\uut/bit_count_1_b1_n ));
  AL_MAP_LUT3 #(
    .EQN("(C*~(~B*~A))"),
    .INIT(8'he0))
    \uut/bit_count_1_b[0]_syn_4  (
    .a(\uut/bit_count_1_b[0]_syn_2 ),
    .b(\uut/bit_count_1 [3]),
    .c(\uut/bit_count_1 [4]),
    .o(\uut/bit_count_1_b[0]_syn_5 ));
  AL_MAP_LUT3 #(
    .EQN("(~(A)*~(B)*~(C)+A*~(B)*~(C)+~(A)*B*C)"),
    .INIT(8'h43))
    \uut/bit_count_1_b[0]_syn_6  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/bit_count_1 [0]),
    .o(\uut/bit_count_1_b [0]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D)"),
    .INIT(16'h4730))
    \uut/bit_count_1_b[1]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/bit_count_1 [0]),
    .d(\uut/bit_count_1 [1]),
    .o(\uut/bit_count_1_b [1]));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*(D*C)*~(E)+A*~(B)*(D*C)*~(E)+~(A)*~(B)*~((D*C))*E+A*~(B)*~((D*C))*E+~(A)*B*~((D*C))*E+~(A)*B*(D*C)*E)"),
    .INIT(32'h47773000))
    \uut/bit_count_1_b[2]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/bit_count_1 [0]),
    .d(\uut/bit_count_1 [1]),
    .e(\uut/bit_count_1 [2]),
    .o(\uut/bit_count_1_b [2]));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf7a0))
    \uut/bit_count_1_b[4]_syn_1  (
    .a(\uut/bit_count_1_b[0]_syn_2 ),
    .b(SLOAD_SGPIO_1_dup_1),
    .c(\uut/bit_count_1 [3]),
    .d(\uut/bit_count_1 [4]),
    .o(\uut/bit_count_1_b [4]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[0]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(DATAOUT_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [0]),
    .o(\uut/data_buffer_0_b [0]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[10]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [9]),
    .d(\uut/data_buffer_0 [10]),
    .o(\uut/data_buffer_0_b [10]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[11]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [10]),
    .d(\uut/data_buffer_0 [11]),
    .o(\uut/data_buffer_0_b [11]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[12]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [11]),
    .d(\uut/data_buffer_0 [12]),
    .o(\uut/data_buffer_0_b [12]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[13]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [12]),
    .d(\uut/data_buffer_0 [13]),
    .o(\uut/data_buffer_0_b [13]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[14]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [13]),
    .d(\uut/data_buffer_0 [14]),
    .o(\uut/data_buffer_0_b [14]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[15]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [14]),
    .d(\uut/data_buffer_0 [15]),
    .o(\uut/data_buffer_0_b [15]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[16]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [15]),
    .d(\uut/data_buffer_0 [16]),
    .o(\uut/data_buffer_0_b [16]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[17]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [16]),
    .d(\uut/data_buffer_0 [17]),
    .o(\uut/data_buffer_0_b [17]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[18]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [17]),
    .d(\uut/data_buffer_0 [18]),
    .o(\uut/data_buffer_0_b [18]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[19]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [18]),
    .d(\uut/data_buffer_0 [19]),
    .o(\uut/data_buffer_0_b [19]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[1]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [0]),
    .d(\uut/data_buffer_0 [1]),
    .o(\uut/data_buffer_0_b [1]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[20]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [19]),
    .d(\uut/data_buffer_0 [20]),
    .o(\uut/data_buffer_0_b [20]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[21]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [20]),
    .d(\uut/data_buffer_0 [21]),
    .o(\uut/data_buffer_0_b [21]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[22]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [21]),
    .d(\uut/data_buffer_0 [22]),
    .o(\uut/data_buffer_0_b [22]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[2]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [1]),
    .d(\uut/data_buffer_0 [2]),
    .o(\uut/data_buffer_0_b [2]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[3]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [2]),
    .d(\uut/data_buffer_0 [3]),
    .o(\uut/data_buffer_0_b [3]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[4]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [3]),
    .d(\uut/data_buffer_0 [4]),
    .o(\uut/data_buffer_0_b [4]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[5]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [4]),
    .d(\uut/data_buffer_0 [5]),
    .o(\uut/data_buffer_0_b [5]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[6]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [5]),
    .d(\uut/data_buffer_0 [6]),
    .o(\uut/data_buffer_0_b [6]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[7]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [6]),
    .d(\uut/data_buffer_0 [7]),
    .o(\uut/data_buffer_0_b [7]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[8]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [7]),
    .d(\uut/data_buffer_0 [8]),
    .o(\uut/data_buffer_0_b [8]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_0_b[9]_syn_1  (
    .a(\uut/bit_count_0_b1_n ),
    .b(\uut/bit_count_0_b[0]_syn_5 ),
    .c(\uut/data_buffer_0 [8]),
    .d(\uut/data_buffer_0 [9]),
    .o(\uut/data_buffer_0_b [9]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[0]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(DATAOUT_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [0]),
    .o(\uut/data_buffer_1_b [0]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[10]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [9]),
    .d(\uut/data_buffer_1 [10]),
    .o(\uut/data_buffer_1_b [10]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[11]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [10]),
    .d(\uut/data_buffer_1 [11]),
    .o(\uut/data_buffer_1_b [11]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[12]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [11]),
    .d(\uut/data_buffer_1 [12]),
    .o(\uut/data_buffer_1_b [12]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[13]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [12]),
    .d(\uut/data_buffer_1 [13]),
    .o(\uut/data_buffer_1_b [13]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[14]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [13]),
    .d(\uut/data_buffer_1 [14]),
    .o(\uut/data_buffer_1_b [14]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[15]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [14]),
    .d(\uut/data_buffer_1 [15]),
    .o(\uut/data_buffer_1_b [15]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[16]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [15]),
    .d(\uut/data_buffer_1 [16]),
    .o(\uut/data_buffer_1_b [16]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[17]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [16]),
    .d(\uut/data_buffer_1 [17]),
    .o(\uut/data_buffer_1_b [17]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[18]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [17]),
    .d(\uut/data_buffer_1 [18]),
    .o(\uut/data_buffer_1_b [18]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[19]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [18]),
    .d(\uut/data_buffer_1 [19]),
    .o(\uut/data_buffer_1_b [19]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[1]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [0]),
    .d(\uut/data_buffer_1 [1]),
    .o(\uut/data_buffer_1_b [1]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[20]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [19]),
    .d(\uut/data_buffer_1 [20]),
    .o(\uut/data_buffer_1_b [20]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[21]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [20]),
    .d(\uut/data_buffer_1 [21]),
    .o(\uut/data_buffer_1_b [21]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[22]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [21]),
    .d(\uut/data_buffer_1 [22]),
    .o(\uut/data_buffer_1_b [22]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[2]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [1]),
    .d(\uut/data_buffer_1 [2]),
    .o(\uut/data_buffer_1_b [2]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[3]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [2]),
    .d(\uut/data_buffer_1 [3]),
    .o(\uut/data_buffer_1_b [3]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[4]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [3]),
    .d(\uut/data_buffer_1 [4]),
    .o(\uut/data_buffer_1_b [4]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[5]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [4]),
    .d(\uut/data_buffer_1 [5]),
    .o(\uut/data_buffer_1_b [5]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[6]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [5]),
    .d(\uut/data_buffer_1 [6]),
    .o(\uut/data_buffer_1_b [6]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[7]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [6]),
    .d(\uut/data_buffer_1 [7]),
    .o(\uut/data_buffer_1_b [7]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[8]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [7]),
    .d(\uut/data_buffer_1 [8]),
    .o(\uut/data_buffer_1_b [8]));
  AL_MAP_LUT4 #(
    .EQN("(C*~((D*~A))*~(B)+C*(D*~A)*~(B)+~(C)*(D*~A)*B+C*(D*~A)*B)"),
    .INIT(16'h7430))
    \uut/data_buffer_1_b[9]_syn_1  (
    .a(\uut/bit_count_1_b1_n ),
    .b(\uut/bit_count_1_b[0]_syn_5 ),
    .c(\uut/data_buffer_1 [8]),
    .d(\uut/data_buffer_1 [9]),
    .o(\uut/data_buffer_1_b [9]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \uut/mux13_syn_73  (
    .a(rst_cnt_b_n),
    .b(\uut/bit_count_1_b1_n ),
    .o(\uut/mux13_syn_27 ));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \uut/mux6_syn_73  (
    .a(rst_cnt_b_n),
    .b(\uut/bit_count_0_b1_n ),
    .o(\uut/mux6_syn_27 ));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_27  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [12]),
    .q(\uut/sgpio_1_data_out [13]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_29  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [13]),
    .q(\uut/sgpio_1_data_out [14]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_31  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [15]),
    .q(\uut/sgpio_1_data_out [16]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_33  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [16]),
    .q(\uut/sgpio_1_data_out [17]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_35  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [18]),
    .q(\uut/sgpio_1_data_out [19]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_37  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [19]),
    .q(\uut/sgpio_1_data_out [20]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_39  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [21]),
    .q(\uut/sgpio_1_data_out [22]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_41  (
    .ce(\uut/mux13_syn_27 ),
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1 [22]),
    .q(\uut/sgpio_1_data_out [23]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_11  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/bit_count_0_b [0]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_0 [0]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_13  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/bit_count_0_b [1]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_0 [1]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_15  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/bit_count_0_b [2]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_0 [2]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_17  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/reg2_syn_8 ),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_0 [3]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_19  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/bit_count_0_b [4]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_0 [4]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_LUT3 #(
    .EQN("(B@(~C*A))"),
    .INIT(8'hc6))
    \uut/reg2_syn_9  (
    .a(\uut/bit_count_0_b[0]_syn_2 ),
    .b(\uut/bit_count_0 [3]),
    .c(\uut/bit_count_0 [4]),
    .o(\uut/reg2_syn_8 ));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_11  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/bit_count_1_b [0]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_1 [0]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_13  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/bit_count_1_b [1]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_1 [1]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_15  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/bit_count_1_b [2]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_1 [2]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_17  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/reg3_syn_8 ),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_1 [3]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_19  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/bit_count_1_b [4]),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_1 [4]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_LUT3 #(
    .EQN("(B@(~C*A))"),
    .INIT(8'hc6))
    \uut/reg3_syn_9  (
    .a(\uut/bit_count_1_b[0]_syn_2 ),
    .b(\uut/bit_count_1 [3]),
    .c(\uut/bit_count_1 [4]),
    .o(\uut/reg3_syn_8 ));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_27  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [0]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [0]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_29  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [1]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [1]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_31  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [2]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [2]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_33  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [3]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [3]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_35  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [4]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [4]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_37  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [5]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [5]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_39  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [6]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [6]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_41  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [7]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [7]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_43  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [8]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [8]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_45  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [9]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [9]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_47  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [10]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [10]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_49  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [11]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [11]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_51  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [12]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [12]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_53  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [13]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [13]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_55  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [14]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [14]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_57  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [15]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [15]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_59  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [16]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [16]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_61  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [17]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [17]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_63  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [18]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [18]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_65  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [19]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [19]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_67  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [20]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [20]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_69  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [21]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [21]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_71  (
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0_b [22]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [22]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_27  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [0]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [0]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_29  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [1]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [1]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_31  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [2]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [2]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_33  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [3]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [3]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_35  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [4]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [4]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_37  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [5]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [5]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_39  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [6]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [6]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_41  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [7]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [7]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_43  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [8]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [8]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_45  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [9]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [9]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_47  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [10]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [10]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_49  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [11]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [11]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_51  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [12]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [12]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_53  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [13]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [13]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_55  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [14]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [14]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_57  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [15]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [15]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_59  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [16]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [16]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_61  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [17]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [17]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_63  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [18]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [18]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_65  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [19]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [19]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_67  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [20]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [20]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_69  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [21]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [21]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_71  (
    .clk(SCL_SGPIO_1_dup_1),
    .d(\uut/data_buffer_1_b [22]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [22]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_27  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [12]),
    .q(\uut/sgpio_0_data_out [13]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_29  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [13]),
    .q(\uut/sgpio_0_data_out [14]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_31  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [15]),
    .q(\uut/sgpio_0_data_out [16]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_33  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [16]),
    .q(\uut/sgpio_0_data_out [17]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_35  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [18]),
    .q(\uut/sgpio_0_data_out [19]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_37  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [19]),
    .q(\uut/sgpio_0_data_out [20]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_39  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [21]),
    .q(\uut/sgpio_0_data_out [22]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_41  (
    .ce(\uut/mux6_syn_27 ),
    .clk(SCL_SGPIO_0_dup_1),
    .d(\uut/data_buffer_0 [22]),
    .q(\uut/sgpio_0_data_out [23]));  // ../../SGPIO_Controller_Slave.v(37)

endmodule 

