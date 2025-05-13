// Verilog netlist created by Tang Dynasty v5.6.119222
// Tue May 13 09:53:03 2025

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
  wire [26:0] clk_counter;  // ../../SGPIO_DEMO_TOP.v(109)
  wire [26:0] clk_counter_b1;
  wire [7:0] device_reg_addr;  // ../../SGPIO_DEMO_TOP.v(166)
  wire [1:0] device_sel_reg;  // ../../SGPIO_DEMO_TOP.v(65)
  wire [15:0] poll_counter;  // ../../SGPIO_DEMO_TOP.v(66)
  wire [15:0] poll_counter_b1;
  wire [7:0] pwm_control;  // ../../SGPIO_DEMO_TOP.v(61)
  wire [7:0] rdata;  // ../../SGPIO_DEMO_TOP.v(261)
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
  wire [4:0] \uut/bit_count_0 ;  // ../../SGPIO_Controller_Slave.v(24)
  wire [3:0] \uut/bit_count_0_local ;  // ../../SGPIO_Controller_Slave.v(30)
  wire [4:0] \uut/bit_count_1 ;  // ../../SGPIO_Controller_Slave.v(25)
  wire [3:0] \uut/bit_count_1_local ;  // ../../SGPIO_Controller_Slave.v(31)
  wire [23:0] \uut/data_buffer_0 ;  // ../../SGPIO_Controller_Slave.v(22)
  wire [11:0] \uut/data_buffer_0_local ;  // ../../SGPIO_Controller_Slave.v(28)
  wire [23:0] \uut/data_buffer_1 ;  // ../../SGPIO_Controller_Slave.v(23)
  wire [11:0] \uut/data_buffer_1_local ;  // ../../SGPIO_Controller_Slave.v(29)
  wire [23:0] \uut/sgpio_0_data_out ;  // ../../SGPIO_Controller_Slave.v(15)
  wire [11:0] \uut/sgpio_0_data_out_local ;  // ../../SGPIO_Controller_Slave.v(17)
  wire [23:0] \uut/sgpio_1_data_out ;  // ../../SGPIO_Controller_Slave.v(16)
  wire [11:0] \uut/sgpio_1_data_out_local ;  // ../../SGPIO_Controller_Slave.v(18)
  wire add3_syn_84;  // ../../SGPIO_DEMO_TOP.v(77)
  wire add3_syn_88;  // ../../SGPIO_DEMO_TOP.v(77)
  wire add3_syn_92;  // ../../SGPIO_DEMO_TOP.v(77)
  wire add3_syn_96;  // ../../SGPIO_DEMO_TOP.v(77)
  wire lt0_syn_5;  // ../../SGPIO_DEMO_TOP.v(292)
  wire lt0_syn_9;  // ../../SGPIO_DEMO_TOP.v(292)
  wire lt0_syn_13;  // ../../SGPIO_DEMO_TOP.v(292)
  wire lt0_syn_17;  // ../../SGPIO_DEMO_TOP.v(292)
  wire lt1_syn_5;  // ../../SGPIO_DEMO_TOP.v(294)
  wire lt1_syn_9;  // ../../SGPIO_DEMO_TOP.v(294)
  wire lt1_syn_13;  // ../../SGPIO_DEMO_TOP.v(294)
  wire lt1_syn_17;  // ../../SGPIO_DEMO_TOP.v(294)
  wire rw_flag_b_reg_syn_5;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_7;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_9;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_11;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_14;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_16;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_18;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_20;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_22;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_24;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_26;  // ../../SGPIO_DEMO_TOP.v(117)
  wire rw_flag_b_reg_syn_28;  // ../../SGPIO_DEMO_TOP.v(117)
  wire ACT_S0_syn_1;  // ../../SGPIO_DEMO_TOP.v(22)
  wire ACT_S1_syn_1;  // ../../SGPIO_DEMO_TOP.v(27)
  wire ACT_S2_syn_1;  // ../../SGPIO_DEMO_TOP.v(32)
  wire ACT_S3_syn_1;  // ../../SGPIO_DEMO_TOP.v(37)
  wire ACT_S4_syn_1;  // ../../SGPIO_DEMO_TOP.v(42)
  wire ACT_S5_syn_1;  // ../../SGPIO_DEMO_TOP.v(47)
  wire ACT_S6_syn_1;  // ../../SGPIO_DEMO_TOP.v(52)
  wire ACT_S7_syn_1;  // ../../SGPIO_DEMO_TOP.v(57)
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
  wire _al_n1_syn_185;
  wire _al_n1_syn_189;
  wire _al_n1_syn_193;
  wire _al_n1_syn_197;
  wire _al_n1_syn_201;
  wire _al_n1_syn_205;
  wire _al_n1_syn_291;
  wire _al_n1_syn_293;
  wire _al_n1_syn_295;
  wire _al_n1_syn_297;
  wire _al_n1_syn_299;
  wire _al_n1_syn_301;
  wire _al_n1_syn_303;
  wire _al_n1_syn_305;
  wire \poll_counter_b[1]_syn_2 ;
  wire \poll_counter_b[1]_syn_4 ;
  wire \poll_counter_b[1]_syn_6 ;
  wire \poll_counter_b[1]_syn_8 ;
  wire pwm_control_b1_n;
  wire pwm_control_b1_n1;
  wire rst_cnt_b_n;
  wire rst_cnt_b_n_dup_1;
  wire rst_cnt_b_n_dup_2;
  wire rst_cnt_b_n_dup_3;
  wire rst_cnt_b_n_dup_4;
  wire rw_flag_b;  // ../../SGPIO_DEMO_TOP.v(113)
  wire smb_iic_scl_dup_3;  // ../../SGPIO_DEMO_TOP.v(6)
  wire smb_iic_sda_dup_3;  // ../../SGPIO_DEMO_TOP.v(7)
  wire sys_clk_dup_1;  // ../../SGPIO_DEMO_TOP.v(3)
  wire transmit_trigger;  // ../../SGPIO_DEMO_TOP.v(110)
  wire transmit_trigger_syn_4;  // ../../SGPIO_DEMO_TOP.v(110)
  wire \u_iic_drive/add0_syn_42 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_44 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_46 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/add0_syn_48 ;  // ../../i2c_master.v(186)
  wire \u_iic_drive/eq14_syn_25 ;  // ../../i2c_master.v(225)
  wire \u_iic_drive/mux6_syn_11 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/reg3_syn_34 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/reg3_syn_37 ;  // ../../i2c_master.v(362)
  wire \u_iic_drive/sda_out_en_reg_syn_5 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_9 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_11 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_13 ;  // ../../i2c_master.v(334)
  wire \u_iic_drive/sda_out_en_reg_syn_15 ;  // ../../i2c_master.v(334)
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
  wire \uut/mux13_syn_27 ;  // ../../SGPIO_Controller_Slave.v(66)
  wire \uut/mux20_syn_15 ;  // ../../SGPIO_Controller_Slave.v(85)
  wire \uut/mux27_syn_15 ;  // ../../SGPIO_Controller_Slave.v(104)
  wire \uut/mux6_syn_27 ;  // ../../SGPIO_Controller_Slave.v(47)
  wire \uut/reg10_syn_23 ;  // ../../SGPIO_Controller_Slave.v(104)
  wire \uut/reg8_syn_23 ;  // ../../SGPIO_Controller_Slave.v(85)
  wire \uut/bit_count_0_b[1]_syn_2 ;
  wire \uut/bit_count_1_b[1]_syn_2 ;
  wire \uut/bit_count_0_b1_n ;
  wire \uut/bit_count_0_b_n ;
  wire \uut/bit_count_0_local_b1_n ;
  wire \uut/bit_count_0_local_b_n ;
  wire \uut/bit_count_1_b1_n ;
  wire \uut/bit_count_1_b_n ;
  wire \uut/bit_count_1_local_b1_n ;
  wire \uut/bit_count_1_local_b_n ;

  assign ACT_S0_syn_1 = ACT_S0;
  assign ACT_S1_syn_1 = ACT_S1;
  assign ACT_S2_syn_1 = ACT_S2;
  assign ACT_S3_syn_1 = ACT_S3;
  assign ACT_S4_syn_1 = ACT_S4;
  assign ACT_S5_syn_1 = ACT_S5;
  assign ACT_S6_syn_1 = ACT_S6;
  assign ACT_S7_syn_1 = ACT_S7;
  assign DATAIN_SGPIO_0 = DATAIN_SGPIO_0_syn_1;
  assign DATAIN_SGPIO_1 = DATAIN_SGPIO_1_syn_1;
  EF2_PHY_SPAD #(
    //.LOCATION("P10"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S0_syn_2 (
    .ipad(ACT_S0_syn_1),
    .ts(1'b1));  // ../../SGPIO_DEMO_TOP.v(22)
  EF2_PHY_SPAD #(
    //.LOCATION("P17"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S1_syn_2 (
    .ipad(ACT_S1_syn_1),
    .ts(1'b1));  // ../../SGPIO_DEMO_TOP.v(27)
  EF2_PHY_SPAD #(
    //.LOCATION("P25"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S2_syn_2 (
    .ipad(ACT_S2_syn_1),
    .ts(1'b1));  // ../../SGPIO_DEMO_TOP.v(32)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P30"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    ACT_S3_syn_2 (
    .ipad(ACT_S3_syn_1));  // ../../SGPIO_DEMO_TOP.v(37)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P43"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    ACT_S4_syn_2 (
    .ipad(ACT_S4_syn_1));  // ../../SGPIO_DEMO_TOP.v(42)
  EF2_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("P49"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    ACT_S5_syn_2 (
    .ipad(ACT_S5_syn_1));  // ../../SGPIO_DEMO_TOP.v(47)
  EF2_PHY_SPAD #(
    //.LOCATION("P54"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S6_syn_2 (
    .ipad(ACT_S6_syn_1),
    .ts(1'b1));  // ../../SGPIO_DEMO_TOP.v(52)
  EF2_PHY_SPAD #(
    //.LOCATION("P60"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    ACT_S7_syn_2 (
    .ipad(ACT_S7_syn_1),
    .ts(1'b1));  // ../../SGPIO_DEMO_TOP.v(57)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    C_ACT_S0_n_syn_5 (
    .d({open_n130,\uut/sgpio_0_data_out [23]}),
    .f({open_n148,C_ACT_S0_n}));
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
    .do({open_n154,C_ACT_S0_n}),
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
    .do({open_n160,C_ACT_S1_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S1));  // ../../SGPIO_DEMO_TOP.v(26)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .MODE("LOGIC"))
    C_ACT_S2_n_syn_5 (
    .d({open_n174,\uut/sgpio_0_data_out [17]}),
    .f({open_n188,C_ACT_S2_n}));
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
    .do({open_n194,C_ACT_S2_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S2));  // ../../SGPIO_DEMO_TOP.v(31)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .MODE("LOGIC"))
    C_ACT_S3_n_syn_5 (
    .d({open_n208,\uut/sgpio_0_data_out [14]}),
    .f({open_n222,C_ACT_S3_n}));
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
    .do({open_n229,open_n230,open_n231,C_ACT_S3_n}),
    .osclk(transmit_trigger_syn_4),
    .opad(C_ACT_S3));  // ../../SGPIO_DEMO_TOP.v(36)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    C_ACT_S4_n_syn_5 (
    .d({open_n258,\uut/sgpio_1_data_out [23]}),
    .f({open_n276,C_ACT_S4_n}));
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
    .do({open_n283,open_n284,open_n285,C_ACT_S4_n}),
    .osclk(transmit_trigger_syn_4),
    .opad(C_ACT_S4));  // ../../SGPIO_DEMO_TOP.v(41)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    C_ACT_S5_n_syn_5 (
    .d({open_n312,\uut/sgpio_1_data_out [20]}),
    .f({open_n330,C_ACT_S5_n}));
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
    .do({open_n337,open_n338,open_n339,C_ACT_S5_n}),
    .osclk(transmit_trigger_syn_4),
    .opad(C_ACT_S5));  // ../../SGPIO_DEMO_TOP.v(46)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .MODE("LOGIC"))
    C_ACT_S6_n_syn_5 (
    .d({open_n366,\uut/sgpio_1_data_out [17]}),
    .f({open_n380,C_ACT_S6_n}));
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
    .do({open_n386,C_ACT_S6_n}),
    .rst(1'b0),
    .ts(1'b1),
    .opad(C_ACT_S6));  // ../../SGPIO_DEMO_TOP.v(51)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .MODE("LOGIC"))
    C_ACT_S7_n_syn_5 (
    .d({open_n400,\uut/sgpio_1_data_out [14]}),
    .f({open_n414,C_ACT_S7_n}));
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
    .do({open_n420,C_ACT_S7_n}),
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
    .do({open_n426,\uut/data_buffer_0 [20]}),
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
    .do({open_n432,\uut/data_buffer_0 [17]}),
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
    .do({open_n438,\uut/data_buffer_0 [14]}),
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
    .do({open_n444,open_n445,open_n446,\uut/data_buffer_0 [11]}),
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
    .do({open_n465,open_n466,open_n467,\uut/data_buffer_1 [20]}),
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
    .do({open_n486,open_n487,open_n488,\uut/data_buffer_1 [17]}),
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
    .do({open_n507,\uut/data_buffer_1 [14]}),
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
    .do({open_n513,\uut/data_buffer_1 [11]}),
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
    .do({open_n521,C_LOCATE_S0_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S0));  // ../../SGPIO_DEMO_TOP.v(19)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    .INIT_LUT0(16'b1111000000000000),
    .MODE("LOGIC"))
    C_LOCATE_S0_syn_7 (
    .c({open_n532,\uut/sgpio_0_data_out_local [10]}),
    .d({open_n535,transmit_trigger}),
    .f({open_n549,C_LOCATE_S0_dup_1}));  // ../../SGPIO_DEMO_TOP.v(19)
  EF2_PHY_SPAD #(
    //.LOCATION("P14"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S1_syn_2 (
    .do({open_n557,C_LOCATE_S1_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S1));  // ../../SGPIO_DEMO_TOP.v(24)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    C_LOCATE_S1_syn_7 (
    .b({open_n566,\uut/data_buffer_0 [22]}),
    .c({\uut/sgpio_0_data_out_local [7],\uut/sgpio_0_data_out [23]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({transmit_trigger,\uut/mux6_syn_27 }),
    .f({C_LOCATE_S1_dup_1,open_n581}),
    .q({open_n585,\uut/sgpio_0_data_out [23]}));  // ../../SGPIO_DEMO_TOP.v(24)
  EF2_PHY_SPAD #(
    //.LOCATION("P18"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S2_syn_2 (
    .do({open_n588,C_LOCATE_S2_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S2));  // ../../SGPIO_DEMO_TOP.v(29)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    C_LOCATE_S2_syn_7 (
    .b({open_n597,\uut/data_buffer_0 [19]}),
    .c({\uut/sgpio_0_data_out_local [4],\uut/sgpio_0_data_out [20]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({transmit_trigger,\uut/mux6_syn_27 }),
    .f({C_LOCATE_S2_dup_1,open_n616}),
    .q({open_n620,\uut/sgpio_0_data_out [20]}));  // ../../SGPIO_DEMO_TOP.v(29)
  EF2_PHY_PAD #(
    //.LOCATION("P27"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S3_syn_2 (
    .do({open_n622,open_n623,open_n624,C_LOCATE_S3_dup_1}),
    .opad(C_LOCATE_S3));  // ../../SGPIO_DEMO_TOP.v(34)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    .INIT_LUT0(16'b1111000000000000),
    .MODE("LOGIC"))
    C_LOCATE_S3_syn_7 (
    .c({open_n648,\uut/sgpio_0_data_out_local [1]}),
    .d({open_n651,transmit_trigger}),
    .f({open_n665,C_LOCATE_S3_dup_1}));  // ../../SGPIO_DEMO_TOP.v(34)
  EF2_PHY_PAD #(
    //.LOCATION("P40"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S4_syn_2 (
    .do({open_n672,open_n673,open_n674,C_LOCATE_S4_dup_1}),
    .opad(C_LOCATE_S4));  // ../../SGPIO_DEMO_TOP.v(39)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    C_LOCATE_S4_syn_7 (
    .c({open_n698,\uut/sgpio_1_data_out_local [10]}),
    .d({open_n701,transmit_trigger}),
    .f({open_n719,C_LOCATE_S4_dup_1}));  // ../../SGPIO_DEMO_TOP.v(39)
  EF2_PHY_PAD #(
    //.LOCATION("P45"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    C_LOCATE_S5_syn_2 (
    .do({open_n726,open_n727,open_n728,C_LOCATE_S5_dup_1}),
    .opad(C_LOCATE_S5));  // ../../SGPIO_DEMO_TOP.v(44)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000011001100),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    C_LOCATE_S5_syn_7 (
    .b({open_n750,\uut/sgpio_1_data_out [20]}),
    .c({\uut/sgpio_1_data_out_local [7],\uut/data_buffer_1 [19]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({transmit_trigger,\uut/mux13_syn_27 }),
    .f({C_LOCATE_S5_dup_1,open_n765}),
    .q({open_n769,\uut/sgpio_1_data_out [20]}));  // ../../SGPIO_DEMO_TOP.v(44)
  EF2_PHY_SPAD #(
    //.LOCATION("P51"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S6_syn_2 (
    .do({open_n772,C_LOCATE_S6_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S6));  // ../../SGPIO_DEMO_TOP.v(49)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000011001100),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000011001100),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    C_LOCATE_S6_syn_7 (
    .b({open_n781,\uut/sgpio_1_data_out [17]}),
    .c({\uut/sgpio_1_data_out_local [4],\uut/data_buffer_1 [16]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({transmit_trigger,\uut/mux13_syn_27 }),
    .f({C_LOCATE_S6_dup_1,open_n800}),
    .q({open_n804,\uut/sgpio_1_data_out [17]}));  // ../../SGPIO_DEMO_TOP.v(49)
  EF2_PHY_SPAD #(
    //.LOCATION("P57"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    C_LOCATE_S7_syn_2 (
    .do({open_n807,C_LOCATE_S7_dup_1}),
    .ts(1'b1),
    .opad(C_LOCATE_S7));  // ../../SGPIO_DEMO_TOP.v(54)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000011001100),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000011001100),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    C_LOCATE_S7_syn_7 (
    .b({open_n816,\uut/sgpio_1_data_out [14]}),
    .c({\uut/sgpio_1_data_out_local [1],\uut/data_buffer_1 [13]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({transmit_trigger,\uut/mux13_syn_27 }),
    .f({C_LOCATE_S7_dup_1,open_n835}),
    .q({open_n839,\uut/sgpio_1_data_out [14]}));  // ../../SGPIO_DEMO_TOP.v(54)
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
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_319 (
    .a(2'b00),
    .b(2'b01),
    .c(2'b00),
    .clk(sys_clk_dup_1),
    .d({clk_counter[1],1'b1}),
    .e({clk_counter[2],clk_counter[0]}),
    .mi(clk_counter_b1[4:3]),
    .sr(rst_cnt_b_n_dup_4),
    .f({clk_counter_b1[1],open_n983}),
    .fco(_al_n1_syn_185),
    .fx({clk_counter_b1[2],clk_counter_b1[0]}),
    .q(clk_counter[4:3]));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_320 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[5],clk_counter[3]}),
    .e({clk_counter[6],clk_counter[4]}),
    .fci(_al_n1_syn_185),
    .f({clk_counter_b1[5],clk_counter_b1[3]}),
    .fco(_al_n1_syn_189),
    .fx({clk_counter_b1[6],clk_counter_b1[4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_321 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[9],clk_counter[7]}),
    .e({clk_counter[10],clk_counter[8]}),
    .fci(_al_n1_syn_189),
    .f({clk_counter_b1[9],clk_counter_b1[7]}),
    .fco(_al_n1_syn_193),
    .fx({clk_counter_b1[10],clk_counter_b1[8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_322 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[13],clk_counter[11]}),
    .e({clk_counter[14],clk_counter[12]}),
    .fci(_al_n1_syn_193),
    .f({clk_counter_b1[13],clk_counter_b1[11]}),
    .fco(_al_n1_syn_197),
    .fx({clk_counter_b1[14],clk_counter_b1[12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_323 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[17],clk_counter[15]}),
    .e({clk_counter[18],clk_counter[16]}),
    .fci(_al_n1_syn_197),
    .f({clk_counter_b1[17],clk_counter_b1[15]}),
    .fco(_al_n1_syn_201),
    .fx({clk_counter_b1[18],clk_counter_b1[16]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_324 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[21],clk_counter[19]}),
    .e({clk_counter[22],clk_counter[20]}),
    .fci(_al_n1_syn_201),
    .f({clk_counter_b1[21],clk_counter_b1[19]}),
    .fco(_al_n1_syn_205),
    .fx({clk_counter_b1[22],clk_counter_b1[20]}));
  EF2_PHY_LSLICE #(
    //.MACRO("_al_n1_syn_319"),
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
    _al_n1_syn_325 (
    .a(2'b00),
    .b(2'b00),
    .c(2'b00),
    .d({clk_counter[25],clk_counter[23]}),
    .e({clk_counter[26],clk_counter[24]}),
    .fci(_al_n1_syn_205),
    .f({clk_counter_b1[25],clk_counter_b1[23]}),
    .fx({clk_counter_b1[26],clk_counter_b1[24]}));
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    _al_n1_syn_350 (
    .a(2'b10),
    .b({clk_counter[0],open_n1093}),
    .fco(_al_n1_syn_291));
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    _al_n1_syn_353 (
    .a(2'b00),
    .b(poll_counter[4:3]),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_293),
    .sr(rst_cnt_b_n_dup_3),
    .f({poll_counter_b1[4],open_n1135}),
    .fco(_al_n1_syn_295),
    .q({open_n1138,poll_counter[3]}));
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
    .a({open_n1175,rst_cnt[15]}),
    .c(2'b00),
    .d({open_n1180,1'b0}),
    .fci(add3_syn_96),
    .f({open_n1197,rst_cnt_b1[15]}));  // ../../SGPIO_DEMO_TOP.v(77)
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
    .mi(rst_cnt_b1[10:9]),
    .f({rst_cnt_b1[1],open_n1217}),
    .fco(add3_syn_84),
    .fx({rst_cnt_b1[2],rst_cnt_b1[0]}),
    .q(rst_cnt[10:9]));  // ../../SGPIO_DEMO_TOP.v(77)
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
    //.MACRO("lt0_syn_42"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    lt0_syn_42 (
    .a(2'b00),
    .b({rdata[0],open_n1283}),
    .clk(sys_clk_dup_1),
    .mi(clk_counter_b1[25:24]),
    .sr(rst_cnt_b_n_dup_4),
    .fco(lt0_syn_5),
    .q(clk_counter[25:24]));  // ../../SGPIO_DEMO_TOP.v(292)
  EF2_PHY_MSLICE #(
    //.MACRO("lt0_syn_42"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt0_syn_45 (
    .a(2'b00),
    .b(rdata[2:1]),
    .fci(lt0_syn_5),
    .fco(lt0_syn_9));  // ../../SGPIO_DEMO_TOP.v(292)
  EF2_PHY_MSLICE #(
    //.MACRO("lt0_syn_42"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt0_syn_48 (
    .a(2'b00),
    .b(rdata[4:3]),
    .fci(lt0_syn_9),
    .fco(lt0_syn_13));  // ../../SGPIO_DEMO_TOP.v(292)
  EF2_PHY_MSLICE #(
    //.MACRO("lt0_syn_42"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt0_syn_51 (
    .a(2'b00),
    .b(rdata[6:5]),
    .fci(lt0_syn_13),
    .fco(lt0_syn_17));  // ../../SGPIO_DEMO_TOP.v(292)
  EF2_PHY_MSLICE #(
    //.MACRO("lt0_syn_42"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt0_syn_54 (
    .a(2'b01),
    .b({1'b1,rdata[7]}),
    .fci(lt0_syn_17),
    .f({pwm_control_b1_n1,open_n1393}));  // ../../SGPIO_DEMO_TOP.v(292)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    lt1_syn_42 (
    .a(2'b00),
    .b({rdata[0],open_n1399}),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .mi({open_n1414,\u_iic_drive/rdata_r [0]}),
    .fco(lt1_syn_5),
    .q({open_n1420,rdata[0]}));  // ../../SGPIO_DEMO_TOP.v(294)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_45 (
    .a(2'b00),
    .b(rdata[2:1]),
    .fci(lt1_syn_5),
    .fco(lt1_syn_9));  // ../../SGPIO_DEMO_TOP.v(294)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_48 (
    .a(2'b01),
    .b(rdata[4:3]),
    .fci(lt1_syn_9),
    .fco(lt1_syn_13));  // ../../SGPIO_DEMO_TOP.v(294)
  EF2_PHY_MSLICE #(
    //.MACRO("lt1_syn_42"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    lt1_syn_51 (
    .a(2'b01),
    .b(rdata[6:5]),
    .fci(lt1_syn_13),
    .fco(lt1_syn_17));  // ../../SGPIO_DEMO_TOP.v(294)
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
    .f({pwm_control_b1_n,open_n1511}));  // ../../SGPIO_DEMO_TOP.v(294)
  EF2_PHY_MSLICE #(
    //.LUT0("(~0*~D*C*B*A)"),
    //.LUT1("(~1*~D*C*B*A)"),
    .INIT_LUT0(16'b0000000010000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \poll_counter_b[1]_syn_23  (
    .a({\poll_counter_b[1]_syn_4 ,\poll_counter_b[1]_syn_4 }),
    .b({\poll_counter_b[1]_syn_6 ,\poll_counter_b[1]_syn_6 }),
    .c({\poll_counter_b[1]_syn_8 ,\poll_counter_b[1]_syn_8 }),
    .d({poll_counter[10],poll_counter[10]}),
    .mi({open_n1529,poll_counter[11]}),
    .fx({open_n1534,device_sel_reg_b_n}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C@D)"),
    //.LUTF1("(~D*~C*~B*A)"),
    //.LUTG0("(C@D)"),
    //.LUTG1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111111110000),
    .INIT_LUTF1(16'b0000000000000010),
    .INIT_LUTG0(16'b0000111111110000),
    .INIT_LUTG1(16'b0000000000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \poll_counter_b[1]_syn_25  (
    .a({clk_counter[0],open_n1537}),
    .b({poll_counter[1],open_n1538}),
    .c({poll_counter[2],transmit_trigger}),
    .clk(sys_clk_dup_1),
    .d({poll_counter[3],clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\poll_counter_b[1]_syn_8 ,open_n1556}),
    .q({open_n1560,transmit_trigger}));
  EF2_PHY_MSLICE #(
    //.LUT0("(C@D)"),
    //.LUT1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111111110000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \poll_counter_b[1]_syn_27  (
    .a({poll_counter[6],open_n1561}),
    .b({poll_counter[7],open_n1562}),
    .c({poll_counter[8],device_sel_reg[0]}),
    .clk(sys_clk_dup_1),
    .d({poll_counter[9],device_sel_reg_b_n}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\poll_counter_b[1]_syn_2 ,open_n1576}),
    .q({open_n1580,device_sel_reg[0]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \poll_counter_b[1]_syn_29  (
    .b({poll_counter[4],open_n1583}),
    .c({poll_counter[5],poll_counter_b1[4]}),
    .clk(sys_clk_dup_1),
    .d({\poll_counter_b[1]_syn_2 ,device_sel_reg_b_n}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\poll_counter_b[1]_syn_4 ,open_n1597}),
    .q({open_n1601,poll_counter[4]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~A)"),
    //.LUTG0("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \poll_counter_b[1]_syn_31  (
    .a({open_n1602,poll_counter[12]}),
    .b({open_n1603,poll_counter[13]}),
    .c({open_n1604,poll_counter[14]}),
    .d({open_n1607,poll_counter[15]}),
    .f({open_n1625,\poll_counter_b[1]_syn_6 }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_129 (
    .a({rw_flag_b_reg_syn_16,rw_flag_b_reg_syn_20}),
    .b({rw_flag_b_reg_syn_18,rw_flag_b_reg_syn_28}),
    .c({clk_counter[20],clk_counter[0]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[21],clk_counter[1]}),
    .e({open_n1632,clk_counter[26]}),
    .mi({clk_counter_b1[14],clk_counter_b1[8]}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_20,clk_counter_b_n}),
    .q({clk_counter[14],clk_counter[8]}));  // ../../SGPIO_DEMO_TOP.v(117)
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
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_131 (
    .a({open_n1648,rw_flag_b_reg_syn_7}),
    .b({open_n1649,rw_flag_b_reg_syn_9}),
    .c({clk_counter_b1[0],rw_flag_b_reg_syn_11}),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,rst_cnt[10]}),
    .e({open_n1651,rst_cnt[11]}),
    .sr(rst_cnt_b_n_dup_4),
    .f({open_n1666,rst_cnt_b_n_dup_4}),
    .q({clk_counter[0],open_n1670}));  // ../../SGPIO_DEMO_TOP.v(117)
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
    reg0_syn_134 (
    .c({clk_counter_b1[11],clk_counter_b1[13]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q({clk_counter[11],clk_counter[13]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*C*B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0100000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_137 (
    .a({clk_counter[16],open_n1697}),
    .b({clk_counter[17],open_n1698}),
    .c({clk_counter[18],clk_counter_b1[15]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[19],clk_counter_b_n}),
    .mi({clk_counter_b1[22],open_n1703}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_14,open_n1715}),
    .q({clk_counter[22],clk_counter[15]}));  // ../../SGPIO_DEMO_TOP.v(117)
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
    reg0_syn_140 (
    .c(clk_counter_b1[18:17]),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q(clk_counter[18:17]));  // ../../SGPIO_DEMO_TOP.v(117)
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
    reg0_syn_143 (
    .a({clk_counter[22],open_n1741}),
    .b({clk_counter[23],open_n1742}),
    .c({clk_counter[24],clk_counter_b1[19]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[25],clk_counter_b_n}),
    .mi({clk_counter_b1[26],open_n1754}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_18,open_n1755}),
    .q({clk_counter[26],clk_counter[19]}));  // ../../SGPIO_DEMO_TOP.v(117)
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
    reg0_syn_146 (
    .c(clk_counter_b1[21:20]),
    .clk(sys_clk_dup_1),
    .d({clk_counter_b_n,clk_counter_b_n}),
    .sr(rst_cnt_b_n_dup_4),
    .q(clk_counter[21:20]));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~B*D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0011000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0011000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_149 (
    .b({clk_counter[14],open_n1787}),
    .c({clk_counter[15],clk_counter_b1[23]}),
    .clk(sys_clk_dup_1),
    .d({rw_flag_b_reg_syn_14,clk_counter_b_n}),
    .mi({clk_counter_b1[16],open_n1792}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_16,open_n1804}),
    .q({clk_counter[16],clk_counter[23]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000000000010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_152 (
    .a({clk_counter[4],open_n1808}),
    .b({clk_counter[5],open_n1809}),
    .c({clk_counter[6],clk_counter_b1[5]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[7],clk_counter_b_n}),
    .mi({clk_counter_b1[7],open_n1821}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_22,open_n1822}),
    .q({clk_counter[7],clk_counter[5]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_155 (
    .a({clk_counter[10],open_n1826}),
    .b({clk_counter[11],open_n1827}),
    .c({clk_counter[12],clk_counter_b1[10]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[13],clk_counter_b_n}),
    .mi({clk_counter_b1[9],open_n1839}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_26,open_n1840}),
    .q({clk_counter[9],clk_counter[10]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_158 (
    .a({rw_flag_b_reg_syn_24,open_n1844}),
    .b({rw_flag_b_reg_syn_26,open_n1845}),
    .c({clk_counter[8],clk_counter_b1[12]}),
    .clk(sys_clk_dup_1),
    .d({clk_counter[9],clk_counter_b_n}),
    .mi({clk_counter_b1[6],open_n1850}),
    .sr(rst_cnt_b_n_dup_4),
    .f({rw_flag_b_reg_syn_28,open_n1862}),
    .q({clk_counter[6],clk_counter[12]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*B*D)"),
    //.LUTG0("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100000000000000),
    .INIT_LUTG0(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_160 (
    .b({open_n1868,clk_counter[2]}),
    .c({open_n1869,clk_counter[3]}),
    .clk(sys_clk_dup_1),
    .d({open_n1871,rw_flag_b_reg_syn_22}),
    .mi({open_n1875,clk_counter_b1[2]}),
    .sr(rst_cnt_b_n_dup_4),
    .f({open_n1887,rw_flag_b_reg_syn_24}),
    .q({open_n1891,clk_counter[2]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg0_syn_162 (
    .clk(sys_clk_dup_1),
    .mi({open_n1911,clk_counter_b1[1]}),
    .sr(rst_cnt_b_n_dup_4),
    .q({open_n1917,clk_counter[1]}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg1_syn_27 (
    .clk(sys_clk_dup_1),
    .d({open_n1925,rw_flag_b}),
    .sr(rst_cnt_b_n_dup_2),
    .q({open_n1947,\u_iic_drive/device_addr [5]}));  // ../../SGPIO_DEMO_TOP.v(169)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUT1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110000001100),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    reg2_syn_16 (
    .b({open_n1950,pwm_control[5]}),
    .c({rw_flag_b,transmit_trigger}),
    .clk(sys_clk_dup_1),
    .d({device_sel_reg[0],pwm_control_b1_n}),
    .sr(rst_cnt_b_n_dup_3),
    .q({device_reg_addr[0],pwm_control[5]}));  // ../../SGPIO_DEMO_TOP.v(169)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .fci(_al_n1_syn_291),
    .sr(rst_cnt_b_n_dup_3),
    .f({open_n1985,poll_counter_b1[1]}),
    .fco(_al_n1_syn_293),
    .q({poll_counter[2],open_n1988}));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .fci(_al_n1_syn_295),
    .sr(rst_cnt_b_n_dup_3),
    .f({open_n2005,poll_counter_b1[5]}),
    .fco(_al_n1_syn_297),
    .q({poll_counter[6],open_n2008}));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .fci(_al_n1_syn_297),
    .sr(rst_cnt_b_n_dup_3),
    .fco(_al_n1_syn_299),
    .q(poll_counter[8:7]));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .fci(_al_n1_syn_299),
    .sr(rst_cnt_b_n_dup_3),
    .fco(_al_n1_syn_301),
    .q(poll_counter[10:9]));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .fci(_al_n1_syn_301),
    .sr(rst_cnt_b_n_dup_3),
    .fco(_al_n1_syn_303),
    .q(poll_counter[12:11]));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .fci(_al_n1_syn_303),
    .sr(rst_cnt_b_n_dup_3),
    .fco(_al_n1_syn_305),
    .q(poll_counter[14:13]));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_MSLICE #(
    //.MACRO("_al_n1_syn_350"),
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
    .a({open_n2089,1'b0}),
    .b({open_n2090,poll_counter[15]}),
    .clk(sys_clk_dup_1),
    .fci(_al_n1_syn_305),
    .sr(rst_cnt_b_n_dup_3),
    .q({open_n2112,poll_counter[15]}));  // ../../SGPIO_DEMO_TOP.v(135)
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
    .c({poll_counter_b1[5],poll_counter_b1[1]}),
    .clk(sys_clk_dup_1),
    .d({device_sel_reg_b_n,device_sel_reg_b_n}),
    .sr(rst_cnt_b_n_dup_3),
    .q({poll_counter[5],poll_counter[1]}));  // ../../SGPIO_DEMO_TOP.v(135)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_76 (
    .c({rst_cnt_b1[2],rst_cnt_b1[0]}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt_b_n_dup_4,rst_cnt_b_n_dup_4}),
    .q({rst_cnt[2],rst_cnt[0]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_79 (
    .a({rst_cnt[0],open_n2166}),
    .b({rst_cnt[1],open_n2167}),
    .c({rst_cnt[2],rst_cnt_b1[1]}),
    .clk(sys_clk_dup_1),
    .d({rst_cnt[3],rst_cnt_b_n_dup_4}),
    .mi({rst_cnt_b1[8],open_n2172}),
    .f({rw_flag_b_reg_syn_11,open_n2185}),
    .q({rst_cnt[8],rst_cnt[1]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_82 (
    .c(rst_cnt_b1[4:3]),
    .clk(sys_clk_dup_1),
    .d({rst_cnt_b_n_dup_4,rst_cnt_b_n_dup_4}),
    .q(rst_cnt[4:3]));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D*~C*B*~A)"),
    //.LUT1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000100),
    .INIT_LUT1(16'b0000001100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_85 (
    .a({open_n2212,rst_cnt[12]}),
    .b({rst_cnt[4],rst_cnt[13]}),
    .c({rst_cnt[5],rst_cnt[14]}),
    .clk(sys_clk_dup_1),
    .d({rw_flag_b_reg_syn_5,rst_cnt[15]}),
    .mi({rst_cnt_b1[14],rst_cnt_b1[15]}),
    .f({rw_flag_b_reg_syn_7,rw_flag_b_reg_syn_9}),
    .q({rst_cnt[14],rst_cnt[15]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    //.LUT0("(D*C*~B*~A)"),
    //.LUT1("(~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0001000000000000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_88 (
    .a({open_n2228,rst_cnt[6]}),
    .b({open_n2229,rst_cnt[7]}),
    .c({open_n2230,rst_cnt[8]}),
    .clk(sys_clk_dup_1),
    .d({\uut/sgpio_0_data_out [20],rst_cnt[9]}),
    .mi({rst_cnt_b1[12],rst_cnt_b1[13]}),
    .f({C_ACT_S1_n,rw_flag_b_reg_syn_5}),
    .q({rst_cnt[12],rst_cnt[13]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_91 (
    .clk(sys_clk_dup_1),
    .mi({rst_cnt_b1[7],rst_cnt_b1[11]}),
    .q({rst_cnt[7],rst_cnt[11]}));  // ../../SGPIO_DEMO_TOP.v(72)
  EF2_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    reg6_syn_94 (
    .clk(sys_clk_dup_1),
    .mi({rst_cnt_b1[5],rst_cnt_b1[6]}),
    .q({rst_cnt[5],rst_cnt[6]}));  // ../../SGPIO_DEMO_TOP.v(72)
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
    .mi({open_n2308,rst_cnt[11]}),
    .fx({open_n2313,rst_cnt_b_n}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~0*D*C*B*A)"),
    //.LUTF1("(~0*D*C*B*A)"),
    //.LUTG0("(~1*D*C*B*A)"),
    //.LUTG1("(~1*D*C*B*A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    rw_flag_b_reg_syn_65 (
    .a({rw_flag_b_reg_syn_7,rw_flag_b_reg_syn_7}),
    .b({rw_flag_b_reg_syn_9,rw_flag_b_reg_syn_9}),
    .c({rw_flag_b_reg_syn_11,rw_flag_b_reg_syn_11}),
    .d({rst_cnt[10],rst_cnt[10]}),
    .e({rst_cnt[11],rst_cnt[11]}),
    .f({rst_cnt_b_n_dup_2,rst_cnt_b_n_dup_3}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_MSLICE #(
    //.LUT0("(~0*D*C*B*A)"),
    //.LUT1("(~1*D*C*B*A)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    rw_flag_b_reg_syn_68 (
    .a({rw_flag_b_reg_syn_7,rw_flag_b_reg_syn_7}),
    .b({rw_flag_b_reg_syn_9,rw_flag_b_reg_syn_9}),
    .c({rw_flag_b_reg_syn_11,rw_flag_b_reg_syn_11}),
    .d({rst_cnt[10],rst_cnt[10]}),
    .mi({open_n2350,rst_cnt[11]}),
    .fx({open_n2355,rst_cnt_b_n_dup_1}));  // ../../SGPIO_DEMO_TOP.v(117)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C@(B*D))"),
    //.LUTG0("(C@(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011110011110000),
    .INIT_LUTG0(16'b0011110011110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    rw_flag_b_reg_syn_70 (
    .b({open_n2360,rst_cnt_b_n_dup_4}),
    .c({open_n2361,rw_flag_b}),
    .clk(sys_clk_dup_1),
    .d({open_n2363,clk_counter_b_n}),
    .q({open_n2386,rw_flag_b}));  // ../../SGPIO_DEMO_TOP.v(117)
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
    .do({open_n2387,\u_iic_drive/scl_n }),
    .rst(rst_cnt_b_n_dup_1),
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
    .do({open_n2393,\u_iic_drive/sda_out }),
    .rst(rst_cnt_b_n_dup_1),
    .ts(\u_iic_drive/sda_out_en ),
    .di(smb_iic_sda_dup_3),
    .diq({open_n2395,\u_iic_drive/rdata_r [0]}),
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
    .clko(transmit_trigger_syn_4));  // ../../SGPIO_DEMO_TOP.v(110)
  EF2_PHY_MSLICE #(
    //.MACRO("u_iic_drive/add0_syn_70"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \u_iic_drive/add0_syn_70  (
    .a({\u_iic_drive/div_cnt [0],1'b0}),
    .b({1'b1,open_n2420}),
    .f({\u_iic_drive/div_cnt_b2 [0],open_n2440}),
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
    .a({open_n2511,\u_iic_drive/div_cnt [7]}),
    .b({open_n2512,1'b0}),
    .fci(\u_iic_drive/add0_syn_48 ),
    .f({open_n2531,\u_iic_drive/div_cnt_b2 [7]}));  // ../../i2c_master.v(186)
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
    .b({\u_iic_drive/div_cnt [3],open_n2539}),
    .c({\u_iic_drive/div_cnt [4],\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [0],\u_iic_drive/div_cnt_b2 [0]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/end_div_cnt_n_syn_2 ,open_n2552}),
    .q({open_n2556,\u_iic_drive/div_cnt [0]}));
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
    .sr(rst_cnt_b_n_dup_2),
    .q({\u_iic_drive/h2l_flag ,\u_iic_drive/l2h_flag }));  // ../../i2c_master.v(192)
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/l2h_flag_n_syn_8  (
    .a({open_n2575,\u_iic_drive/end_div_cnt_n_syn_2 }),
    .b({\u_iic_drive/div_cnt [1],\u_iic_drive/rd_flag_n_syn_4 }),
    .c({\u_iic_drive/div_cnt [7],\u_iic_drive/div_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/end_div_cnt_n_syn_2 ,\u_iic_drive/div_cnt [2]}),
    .e({open_n2577,\u_iic_drive/div_cnt [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/l2h_flag_n_syn_2 ,open_n2592}),
    .q({open_n2596,\u_iic_drive/end_div_cnt }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~(0)*~((C*~B*A))+D*0*~((C*~B*A))+~(D)*0*(C*~B*A)+D*0*(C*~B*A))"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(D*~(1)*~((C*~B*A))+D*1*~((C*~B*A))+~(D)*1*(C*~B*A)+D*1*(C*~B*A))"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101111100000000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b1111111100100000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/mux6_syn_45  (
    .a({open_n2597,\u_iic_drive/reg3_syn_37 }),
    .b({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/reg3_syn_34 ,\u_iic_drive/rdata_r [5]}),
    .e({open_n2599,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/mux6_syn_11 ,open_n2614}),
    .q({open_n2618,\u_iic_drive/rdata_r [5]}));  // ../../i2c_master.v(365)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/rd_flag_n_syn_12  (
    .c({\u_iic_drive/div_cnt [7],\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [5],\u_iic_drive/div_cnt_b2 [7]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/rd_flag_n_syn_4 ,open_n2639}),
    .q({open_n2643,\u_iic_drive/div_cnt [7]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~C*B*~A)"),
    //.LUTG0("(D*~C*B*~A)"),
    .INIT_LUTF0(16'b0000010000000000),
    .INIT_LUTG0(16'b0000010000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/rd_flag_n_syn_14  (
    .a({open_n2644,\u_iic_drive/div_cnt [0]}),
    .b({open_n2645,\u_iic_drive/div_cnt [1]}),
    .c({open_n2646,\u_iic_drive/div_cnt [3]}),
    .d({open_n2649,\u_iic_drive/div_cnt [4]}),
    .f({open_n2667,\u_iic_drive/rd_flag_n_syn_2 }));
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
    .d({\u_iic_drive/div_cnt_b2 [4],\u_iic_drive/div_cnt_b2 [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/div_cnt [4],\u_iic_drive/div_cnt [6]}));  // ../../i2c_master.v(179)
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
    \u_iic_drive/reg2_syn_58  (
    .c({\u_iic_drive/end_div_cnt ,\u_iic_drive/end_div_cnt }),
    .ce(\u_iic_drive/div_cnt_b_n ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt_b2 [3],\u_iic_drive/div_cnt_b2 [5]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/div_cnt [3],\u_iic_drive/div_cnt [5]}));  // ../../i2c_master.v(179)
  EF2_PHY_LSLICE #(
    //.LUTF0("(A*(0@(D*C*B)))"),
    //.LUTF1("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    //.LUTG0("(A*(1@(D*C*B)))"),
    //.LUTG1("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1111100001110000),
    .INIT_LUTG0(16'b0010101010101010),
    .INIT_LUTG1(16'b1111100001110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_86  (
    .a({\u_iic_drive/reg3_syn_34 ,\u_iic_drive/div_cnt_b_n }),
    .b({\u_iic_drive/sda_out_en_reg_syn_5 ,\u_iic_drive/end_div_cnt }),
    .c({\u_iic_drive/rdata_r [3],\u_iic_drive/bit_cnt [0]}),
    .clk(sys_clk_dup_1),
    .d({smb_iic_sda_dup_3,\u_iic_drive/bit_cnt [1]}),
    .e({open_n2741,\u_iic_drive/bit_cnt [2]}),
    .sr(rst_cnt_b_n_dup_2),
    .q({\u_iic_drive/rdata_r [3],\u_iic_drive/bit_cnt [2]}));  // ../../i2c_master.v(362)
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
    \u_iic_drive/reg3_syn_89  (
    .a({\u_iic_drive/reg3_syn_34 ,\u_iic_drive/reg3_syn_34 }),
    .b({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/rdata_r [2:1]),
    .e({smb_iic_sda_dup_3,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_2),
    .q(\u_iic_drive/rdata_r [2:1]));  // ../../i2c_master.v(362)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~(0)*~((C*B*A))+D*0*~((C*B*A))+~(D)*0*(C*B*A)+D*0*(C*B*A))"),
    //.LUTF1("(D*~(0)*~((~C*B*A))+D*0*~((~C*B*A))+~(D)*0*(~C*B*A)+D*0*(~C*B*A))"),
    //.LUTG0("(D*~(1)*~((C*B*A))+D*1*~((C*B*A))+~(D)*1*(C*B*A)+D*1*(C*B*A))"),
    //.LUTG1("(D*~(1)*~((~C*B*A))+D*1*~((~C*B*A))+~(D)*1*(~C*B*A)+D*1*(~C*B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0111111100000000),
    .INIT_LUTF1(16'b1111011100000000),
    .INIT_LUTG0(16'b1111111110000000),
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
    \u_iic_drive/reg3_syn_92  (
    .a({\u_iic_drive/reg3_syn_37 ,\u_iic_drive/reg3_syn_37 }),
    .b({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/rdata_r [6],\u_iic_drive/rdata_r [4]}),
    .e({smb_iic_sda_dup_3,smb_iic_sda_dup_3}),
    .sr(rst_cnt_b_n_dup_2),
    .q({\u_iic_drive/rdata_r [6],\u_iic_drive/rdata_r [4]}));  // ../../i2c_master.v(362)
  EF2_PHY_MSLICE #(
    //.LUT0("(~0*D*~C*B*A)"),
    //.LUT1("(~1*D*~C*B*A)"),
    .INIT_LUT0(16'b0000100000000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/reg3_syn_95  (
    .a({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/state_c[0]_syn_455 }),
    .b({\u_iic_drive/rd_flag ,\u_iic_drive/rd_flag }),
    .c({\u_iic_drive/state_c [4],\u_iic_drive/state_c [4]}),
    .d({\u_iic_drive/state_c [5],\u_iic_drive/state_c [5]}),
    .mi({open_n2813,\u_iic_drive/state_c [6]}),
    .fx({open_n2818,\u_iic_drive/rdata_r_b_n8 }));  // ../../i2c_master.v(362)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*(~(A)*C*~(D)+~(A)*~(C)*D+A*~(C)*D))"),
    //.LUT1("(C*~(D)*~((B*A))+C*D*~((B*A))+~(C)*D*(B*A)+C*D*(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000110001000000),
    .INIT_LUT1(16'b1111100001110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg3_syn_97  (
    .a({\u_iic_drive/rdata_r_b_n8 ,\u_iic_drive/state_c[0]_syn_459 }),
    .b({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/rdata_r [7],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d({smb_iic_sda_dup_3,\u_iic_drive/bit_cnt [0]}),
    .sr(rst_cnt_b_n_dup_2),
    .q({\u_iic_drive/rdata_r [7],\u_iic_drive/bit_cnt [0]}));  // ../../i2c_master.v(362)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*~B*D)"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(~C*~B*D)"),
    //.LUTG1("(~C*~B*D)"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b0000001100000000),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/reg3_syn_99  (
    .b({\u_iic_drive/bit_cnt [2],\u_iic_drive/bit_cnt [2]}),
    .c({\u_iic_drive/bit_cnt [3],\u_iic_drive/bit_cnt [3]}),
    .d({\u_iic_drive/rdata_r_b_n8 ,\u_iic_drive/sda_out_en_reg_syn_5 }),
    .f({\u_iic_drive/reg3_syn_37 ,\u_iic_drive/rdata_r_b_n9 }));  // ../../i2c_master.v(362)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*(0*~(D)*~((C*A))+0*D*~((C*A))+~(0)*D*(C*A)+0*D*(C*A)))"),
    //.LUTF1("(~0*(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D))"),
    //.LUTG0("(B*(1*~(D)*~((C*A))+1*D*~((C*A))+~(1)*D*(C*A)+1*D*(C*A)))"),
    //.LUTG1("(~1*(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1101110000000101),
    .INIT_LUTG0(16'b1100110001001100),
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
    \u_iic_drive/reg4_syn_38  (
    .a({\u_iic_drive/sel0_syn_61 ,\u_iic_drive/bit_cnt [0]}),
    .b({\u_iic_drive/sel0_syn_63 ,\u_iic_drive/bit_cnt [1]}),
    .c({\u_iic_drive/sda_out_en_reg_syn_5 ,\u_iic_drive/bit_cnt [2]}),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/bit_cnt [2],\u_iic_drive/reg_addr_r [0]}),
    .e({\u_iic_drive/bit_cnt [3],\u_iic_drive/reg_addr_r [1]}),
    .mi({\u_iic_drive/rdata_r [4],\u_iic_drive/rdata_r [6]}),
    .f({\u_iic_drive/sda_out_n9 ,\u_iic_drive/sda_out_n11 }),
    .q({rdata[4],rdata[6]}));  // ../../i2c_master.v(376)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1000000000000000),
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
    \u_iic_drive/reg4_syn_41  (
    .a({open_n2881,\u_iic_drive/end_div_cnt }),
    .b({open_n2882,\u_iic_drive/bit_cnt [0]}),
    .c({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [2]}),
    .mi({\u_iic_drive/rdata_r [3],\u_iic_drive/rdata_r [7]}),
    .f({\u_iic_drive/sda_out_en_reg_syn_5 ,\u_iic_drive/bit_cnt_b[3]_syn_2 }),
    .q({rdata[3],rdata[7]}));  // ../../i2c_master.v(376)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110000001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_43  (
    .b({open_n2903,\u_iic_drive/device_addr [2]}),
    .c({open_n2904,\u_iic_drive/bit_cnt [1]}),
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .d({open_n2905,\u_iic_drive/device_addr [0]}),
    .mi({open_n2916,\u_iic_drive/rdata_r [5]}),
    .f({open_n2918,\u_iic_drive/sel0_syn_63 }),
    .q({open_n2922,rdata[5]}));  // ../../i2c_master.v(376)
  EF2_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/reg4_syn_46  (
    .ce(\u_iic_drive/rdata_vld_r ),
    .clk(sys_clk_dup_1),
    .mi({\u_iic_drive/rdata_r [1],\u_iic_drive/rdata_r [2]}),
    .q({rdata[1],rdata[2]}));  // ../../i2c_master.v(376)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUT1("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110000001100),
    .INIT_LUT1(16'b1111110000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg5_syn_29  (
    .b({device_sel_reg[0],pwm_control[0]}),
    .c({\u_iic_drive/reg_addr_r [0],transmit_trigger}),
    .clk(sys_clk_dup_1),
    .d({device_reg_addr[0],pwm_control_b1_n1}),
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/reg_addr_r [0],pwm_control[0]}));  // ../../i2c_master.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUTG0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000110000),
    .INIT_LUTG0(16'b1111110000110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg5_syn_31  (
    .b({open_n2973,device_sel_reg[0]}),
    .c({open_n2974,\u_iic_drive/reg_addr_r [1]}),
    .clk(sys_clk_dup_1),
    .d({open_n2976,\u_iic_drive/device_addr [5]}),
    .sr(rst_cnt_b_n_dup_3),
    .q({open_n2998,\u_iic_drive/reg_addr_r [1]}));  // ../../i2c_master.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(~C*~B*~(~D*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b0000001100000010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/reg6_syn_47  (
    .a({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/state_c[0]_syn_140 }),
    .b({\u_iic_drive/state_c[0]_syn_140 ,\u_iic_drive/state_c[0]_syn_461 }),
    .c({\u_iic_drive/state_c[0]_syn_477 ,\u_iic_drive/state_c [4]}),
    .clk(sys_clk_dup_1),
    .d(\u_iic_drive/state_c [6:5]),
    .sr(rst_cnt_b_n_dup_2),
    .q(\u_iic_drive/state_c [6:5]));  // ../../i2c_master.v(99)
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
    .sr(rst_cnt_b_n_dup_3),
    .q({\u_iic_drive/wdata_r [5],\u_iic_drive/rw_flag_r }));  // ../../i2c_master.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*B*D)"),
    //.LUT1("(D*~(C*~(B*A)))"),
    .INIT_LUT0(16'b0000110000000000),
    .INIT_LUT1(16'b1000111100000000),
    .MODE("LOGIC"))
    \u_iic_drive/scl_n_syn_7  (
    .a({\u_iic_drive/ack_flag_n12 ,open_n3041}),
    .b({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/bit_cnt [2]}),
    .c({\u_iic_drive/h2l_flag ,\u_iic_drive/bit_cnt [3]}),
    .d({smb_iic_scl_dup_3,\u_iic_drive/rdata_r_b_n8 }),
    .f({\u_iic_drive/scl_n1 ,\u_iic_drive/reg3_syn_34 }));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*B*~D)"),
    //.LUTG0("~(~C*B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110011),
    .INIT_LUTG0(16'b1111111111110011),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/scl_reg_syn_5  (
    .b({open_n3064,\u_iic_drive/div_cnt_b_n }),
    .c({open_n3065,\u_iic_drive/l2h_flag }),
    .clk(sys_clk_dup_1),
    .d({open_n3067,\u_iic_drive/scl_n1 }),
    .sr(rst_cnt_b_n_dup_4),
    .f({open_n3084,\u_iic_drive/scl_n }),
    .q({open_n3088,smb_iic_scl_dup_3}));  // ../../i2c_master.v(275)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~((~0*C))*~(A)+D*(~0*C)*~(A)+~(D)*(~0*C)*A+D*(~0*C)*A))"),
    //.LUTF1("(~A*(B*~(C)*~(D)+~(B)*C*~(D)+~(B)*~(C)*D))"),
    //.LUTG0("(~B*(D*~((~1*C))*~(A)+D*(~1*C)*~(A)+~(D)*(~1*C)*A+D*(~1*C)*A))"),
    //.LUTG1("(~A*(B*~(C)*~(D)+~(B)*C*~(D)+~(B)*~(C)*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0000000100010100),
    .INIT_LUTG0(16'b0001000100000000),
    .INIT_LUTG1(16'b0000000100010100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_en_reg_syn_34  (
    .a({\u_iic_drive/state_c [0],\u_iic_drive/state_c[0]_syn_461 }),
    .b({\u_iic_drive/state_c [1],\u_iic_drive/state_c[0]_syn_140 }),
    .c({\u_iic_drive/state_c [2],\u_iic_drive/state_c [2]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/state_c [3]}),
    .e({open_n3090,\u_iic_drive/rw_flag_r }),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[3]_syn_222 ,open_n3105}),
    .q({open_n3109,\u_iic_drive/state_c [3]}));  // ../../i2c_master.v(334)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*~(0*~D*~B*~A))"),
    //.LUT1("(~C*~(1*~D*~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111100001111),
    .INIT_LUT1(16'b0000111100001110),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("SET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_en_reg_syn_36  (
    .a({\u_iic_drive/sda_out_en_reg_syn_11 ,\u_iic_drive/sda_out_en_reg_syn_11 }),
    .b({\u_iic_drive/sda_out_en_reg_syn_13 ,\u_iic_drive/sda_out_en_reg_syn_13 }),
    .c({\u_iic_drive/sda_out_en_reg_syn_15 ,\u_iic_drive/sda_out_en_reg_syn_15 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [6],\u_iic_drive/state_c [6]}),
    .mi({open_n3121,\u_iic_drive/wr_flag }),
    .sr(rst_cnt_b_n_dup_2),
    .q({open_n3127,\u_iic_drive/sda_out_en }));  // ../../i2c_master.v(334)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D*~(0*~(C*~(B*A))))"),
    //.LUT1("(~D*~(1*~(C*~(B*A))))"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000000001110000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/sda_out_en_reg_syn_38  (
    .a({\u_iic_drive/state_c[5]_syn_188 ,\u_iic_drive/state_c[5]_syn_188 }),
    .b({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/rdata_r_b_n9 }),
    .c({\u_iic_drive/state_c [6],\u_iic_drive/state_c [6]}),
    .d({\u_iic_drive/sda_out_en ,\u_iic_drive/sda_out_en }),
    .mi({open_n3140,\u_iic_drive/wr_flag }),
    .fx({open_n3145,\u_iic_drive/sda_out_en_reg_syn_15 }));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*(A*B*~(D)*~(0)+~(A)*~(B)*D*~(0)+A*~(B)*D*~(0)+~(A)*B*D*~(0)+A*B*D*~(0)+~(A)*~(B)*D*0+~(A)*B*D*0))"),
    //.LUTF1("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(C*(A*B*~(D)*~(1)+~(A)*~(B)*D*~(1)+A*~(B)*D*~(1)+~(A)*B*D*~(1)+A*B*D*~(1)+~(A)*~(B)*D*1+~(A)*B*D*1))"),
    //.LUTG1("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT_LUTF0(16'b1111000010000000),
    .INIT_LUTF1(16'b1111010101010011),
    .INIT_LUTG0(16'b0101000000000000),
    .INIT_LUTG1(16'b1111010101010011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sda_out_en_reg_syn_40  (
    .a({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/state_c[5]_syn_188 }),
    .b({\u_iic_drive/state_c[3]_syn_222 ,\u_iic_drive/rd_flag }),
    .c({\u_iic_drive/state_c [4],\u_iic_drive/state_c [6]}),
    .d({\u_iic_drive/state_c [5],\u_iic_drive/sda_out }),
    .e({open_n3150,\u_iic_drive/wr_flag }),
    .f({\u_iic_drive/sda_out_en_reg_syn_9 ,\u_iic_drive/sel0_syn_83 }));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(~(B)*C*~(D)+B*C*~(D)+B*~(C)*D))"),
    //.LUTF1("(D*~(~A*~(~C*~B)))"),
    //.LUTG0("(~A*(~(B)*C*~(D)+B*C*~(D)+B*~(C)*D))"),
    //.LUTG1("(D*~(~A*~(~C*~B)))"),
    .INIT_LUTF0(16'b0000010001010000),
    .INIT_LUTF1(16'b1010101100000000),
    .INIT_LUTG0(16'b0000010001010000),
    .INIT_LUTG1(16'b1010101100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sda_out_en_reg_syn_43  (
    .a({\u_iic_drive/sda_out_en_reg_syn_9 ,\u_iic_drive/sda_out_en_reg_syn_9 }),
    .b({\u_iic_drive/state_c[0]_syn_459 ,\u_iic_drive/state_c[0]_syn_459 }),
    .c({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/rdata_r_b_n9 }),
    .d({\u_iic_drive/sda_out_en ,\u_iic_drive/state_c [5]}),
    .f({\u_iic_drive/sda_out_en_reg_syn_13 ,\u_iic_drive/sda_out_en_reg_syn_11 }));  // ../../i2c_master.v(334)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*~(~0*~D*C*B))"),
    //.LUTF1("~((~C*~A)*~(B)*~(D)+(~C*~A)*B*~(D)+~((~C*~A))*B*D+(~C*~A)*B*D)"),
    //.LUTG0("(~A*~(~1*~D*C*B))"),
    //.LUTG1("~((~C*~A)*~(B)*~(D)+(~C*~A)*B*~(D)+~((~C*~A))*B*D+(~C*~A)*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101010100010101),
    .INIT_LUTF1(16'b0011001111111010),
    .INIT_LUTG0(16'b0101010101010101),
    .INIT_LUTG1(16'b0011001111111010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .REG1_REGSET("SET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sda_out_reg_syn_5  (
    .a({\u_iic_drive/sel0_syn_72 ,\u_iic_drive/ack_flag_n12 }),
    .b({\u_iic_drive/sel0_syn_81 ,\u_iic_drive/state_c[0]_syn_455 }),
    .c({\u_iic_drive/sel0_syn_83 ,\u_iic_drive/state_c [4]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[6]_syn_130 ,\u_iic_drive/state_c [5]}),
    .e({open_n3196,\u_iic_drive/state_c [6]}),
    .sr(rst_cnt_b_n_dup_2),
    .f({open_n3211,\u_iic_drive/bit_cnt_num_b [0]}),
    .q({\u_iic_drive/sda_out ,\u_iic_drive/bit_cnt_num [0]}));  // ../../i2c_master.v(288)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTF1("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    //.LUTG1("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101010100110011),
    .INIT_LUTF1(16'b1111000010101100),
    .INIT_LUTG0(16'b1111111100001111),
    .INIT_LUTG1(16'b1111000010101100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sel0_syn_112  (
    .a({\u_iic_drive/sda_out_n9 ,\u_iic_drive/device_addr [0]}),
    .b({\u_iic_drive/sda_out_n11 ,\u_iic_drive/device_addr [2]}),
    .c({\u_iic_drive/sel0_syn_77 ,\u_iic_drive/device_addr [5]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/bit_cnt [0]}),
    .e({open_n3216,\u_iic_drive/bit_cnt [1]}),
    .mi({open_n3218,1'b1}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/sel0_syn_79 ,\u_iic_drive/sel0_syn_61 }),
    .q({open_n3233,\u_iic_drive/device_addr [2]}));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*B*(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))"),
    //.LUTF1("(~C*~A*~(~D*~B))"),
    //.LUTG0("(1*B*(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))"),
    //.LUTG1("(~C*~A*~(~D*~B))"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000010100000100),
    .INIT_LUTG0(16'b0000100011000000),
    .INIT_LUTG1(16'b0000010100000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_115  (
    .a({\u_iic_drive/sel0_syn_68 ,\u_iic_drive/state_c[0]_syn_459 }),
    .b({\u_iic_drive/sel0_syn_70 ,\u_iic_drive/state_c[0]_syn_455 }),
    .c({\u_iic_drive/state_c [6],\u_iic_drive/state_c [4]}),
    .d({\u_iic_drive/sda_out ,\u_iic_drive/state_c [5]}),
    .e({open_n3236,\u_iic_drive/wr_flag }),
    .f({\u_iic_drive/sel0_syn_72 ,\u_iic_drive/sel0_syn_70 }));  // ../../i2c_master.v(292)
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
    \u_iic_drive/sel0_syn_119  (
    .a({\u_iic_drive/sda_out_n9 ,\u_iic_drive/sel0_syn_79 }),
    .b({\u_iic_drive/rdata_vld_r_n2 ,\u_iic_drive/state_c[3]_syn_222 }),
    .c({\u_iic_drive/rdata_r_b_n9 ,\u_iic_drive/bit_cnt [3]}),
    .d({\u_iic_drive/rd_flag ,\u_iic_drive/sda_out }),
    .e({\u_iic_drive/wr_flag ,\u_iic_drive/wr_flag }),
    .f({\u_iic_drive/sel0_syn_66 ,\u_iic_drive/sel0_syn_81 }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(C*~((~B*~A))*~(D)+C*(~B*~A)*~(D)+~(C)*(~B*~A)*D+C*(~B*~A)*D)"),
    //.LUTF1("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("~(C*~((~B*~A))*~(D)+C*(~B*~A)*~(D)+~(C)*(~B*~A)*D+C*(~B*~A)*D)"),
    //.LUTG1("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110111000001111),
    .INIT_LUTF1(16'b1101100010101010),
    .INIT_LUTG0(16'b1110111000001111),
    .INIT_LUTG1(16'b1101100010101010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/sel0_syn_121  (
    .a({\u_iic_drive/sel0_syn_75 ,\u_iic_drive/bit_cnt [0]}),
    .b({\u_iic_drive/wdata_r [0],\u_iic_drive/bit_cnt [2]}),
    .c({\u_iic_drive/wdata_r [5],\u_iic_drive/state_c [2]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/state_c [3]}),
    .mi({open_n3283,rw_flag_b}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/sel0_syn_77 ,\u_iic_drive/sel0_syn_75 }),
    .q({open_n3298,\u_iic_drive/device_addr [0]}));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("((D@B)*~(C@A))"),
    //.LUT1("(A*(~(B)*C*~(D)+B*~(C)*D))"),
    .INIT_LUT0(16'b0010000110000100),
    .INIT_LUT1(16'b0000100000100000),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_124  (
    .a({\u_iic_drive/sel0_syn_58 ,\u_iic_drive/bit_cnt_num [0]}),
    .b({\u_iic_drive/bit_cnt_num [1],\u_iic_drive/bit_cnt_num [1]}),
    .c({\u_iic_drive/bit_cnt [2],\u_iic_drive/bit_cnt [0]}),
    .d({\u_iic_drive/bit_cnt [3],\u_iic_drive/bit_cnt [1]}),
    .f({\u_iic_drive/rdata_vld_r_n2 ,\u_iic_drive/sel0_syn_58 }));  // ../../i2c_master.v(292)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*~B*~D)"),
    //.LUT1("(~C*B*~D)"),
    .INIT_LUT0(16'b0000000000000011),
    .INIT_LUT1(16'b0000000000001100),
    .MODE("LOGIC"))
    \u_iic_drive/sel0_syn_126  (
    .b({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/state_c [5]}),
    .c({\u_iic_drive/state_c [5],\u_iic_drive/state_c [6]}),
    .d({\u_iic_drive/sel0_syn_66 ,\u_iic_drive/state_c [4]}),
    .f({\u_iic_drive/sel0_syn_68 ,\u_iic_drive/state_c[6]_syn_130 }));  // ../../i2c_master.v(292)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*(~(A)*C*D*~(0)+~(A)*~(C)*~(D)*0+A*~(C)*~(D)*0+~(A)*C*~(D)*0+~(A)*~(C)*D*0+A*~(C)*D*0))"),
    //.LUTF1("(~A*(B*~(D)*~((0@C))+~(B)*D*(0@C)))"),
    //.LUTG0("(B*(~(A)*C*D*~(1)+~(A)*~(C)*~(D)*1+A*~(C)*~(D)*1+~(A)*C*~(D)*1+~(A)*~(C)*D*1+A*~(C)*D*1))"),
    //.LUTG1("(~A*(B*~(D)*~((1@C))+~(B)*D*(1@C)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100000000000000),
    .INIT_LUTF1(16'b0001000000000100),
    .INIT_LUTG0(16'b0000110001001100),
    .INIT_LUTG1(16'b0000000101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_518  (
    .a({\u_iic_drive/eq14_syn_25 ,\u_iic_drive/state_c[0]_syn_459 }),
    .b({\u_iic_drive/bit_cnt_num [0],\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/bit_cnt_num [1],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/bit_cnt [0],\u_iic_drive/bit_cnt [0]}),
    .e({\u_iic_drive/bit_cnt [1],\u_iic_drive/bit_cnt [1]}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/state_c[0]_syn_459 ,open_n3356}),
    .q({open_n3360,\u_iic_drive/bit_cnt [1]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~A*(~(B)*~(C)*~(D)*~(0)+B*~(C)*~(D)*~(0)+~(B)*C*~(D)*~(0)+B*C*~(D)*~(0)+B*~(C)*D*~(0)+B*C*D*~(0)+~(B)*~(C)*~(D)*0+B*~(C)*~(D)*0))"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("~(~A*(~(B)*~(C)*~(D)*~(1)+B*~(C)*~(D)*~(1)+~(B)*C*~(D)*~(1)+B*C*~(D)*~(1)+B*~(C)*D*~(1)+B*C*D*~(1)+~(B)*~(C)*~(D)*1+B*~(C)*~(D)*1))"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011101110101010),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b1111111111111010),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_520  (
    .a({open_n3361,\u_iic_drive/state_c[0]_syn_140 }),
    .b({\u_iic_drive/state_c [3],device_sel_reg[0]}),
    .c({\u_iic_drive/state_c [5],\u_iic_drive/end_div_cnt }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/end_div_cnt ,\u_iic_drive/state_c [0]}),
    .e({open_n3363,\u_iic_drive/state_c [6]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_477 ,open_n3378}),
    .q({open_n3382,\u_iic_drive/state_c [0]}));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~B*~A*(C*~(D)*~(0)+~(C)*D*~(0)+~(C)*~(D)*0))"),
    //.LUT1("(~B*~A*(C*~(D)*~(1)+~(C)*D*~(1)+~(C)*~(D)*1))"),
    .INIT_LUT0(16'b0000000100010000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \u_iic_drive/state_c[0]_syn_522  (
    .a({\u_iic_drive/state_c [0],\u_iic_drive/state_c [0]}),
    .b({\u_iic_drive/state_c [1],\u_iic_drive/state_c [1]}),
    .c({\u_iic_drive/state_c [2],\u_iic_drive/state_c [2]}),
    .d({\u_iic_drive/state_c [3],\u_iic_drive/state_c [3]}),
    .mi({open_n3395,\u_iic_drive/state_c [5]}),
    .fx({open_n3400,\u_iic_drive/state_c[0]_syn_464 }));  // ../../i2c_master.v(47)
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
    \u_iic_drive/state_c[0]_syn_525  (
    .a({open_n3403,\u_iic_drive/bit_cnt_num_b [0]}),
    .b({\u_iic_drive/state_c [4],\u_iic_drive/state_c[5]_syn_188 }),
    .c({\u_iic_drive/state_c [5],\u_iic_drive/add_byte_cnt_n }),
    .d({\u_iic_drive/state_c[0]_syn_455 ,\u_iic_drive/div_cnt_b_n }),
    .e({open_n3406,\u_iic_drive/state_c [6]}),
    .f({\u_iic_drive/state_c[5]_syn_188 ,\u_iic_drive/state_c[0]_syn_140 }));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_527  (
    .a({open_n3427,\u_iic_drive/state_c[0]_syn_140 }),
    .b({\u_iic_drive/state_c [2],\u_iic_drive/state_c[0]_syn_461 }),
    .c({\u_iic_drive/rw_flag_r ,\u_iic_drive/state_c [1]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/state_c [2]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_469 ,open_n3441}),
    .q({open_n3445,\u_iic_drive/state_c [2]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~B*~(~A*~(D*C)))"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~B*~(~A*~(D*C)))"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011001000100010),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0011001000100010),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_529  (
    .a({open_n3446,\u_iic_drive/state_c[1]_syn_35 }),
    .b({open_n3447,\u_iic_drive/state_c[0]_syn_140 }),
    .c({\u_iic_drive/state_c [1],device_sel_reg[0]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[0]_syn_461 ,\u_iic_drive/state_c [0]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[1]_syn_35 ,open_n3465}),
    .q({open_n3469,\u_iic_drive/state_c [1]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~A*(D@C))"),
    //.LUTF1("(D*~C*B*A)"),
    //.LUTG0("(B*~A*(D@C))"),
    //.LUTG1("(D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000010001000000),
    .INIT_LUTF1(16'b0000100000000000),
    .INIT_LUTG0(16'b0000010001000000),
    .INIT_LUTG1(16'b0000100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_531  (
    .a({\u_iic_drive/state_c[6]_syn_130 ,\u_iic_drive/state_c[0]_syn_461 }),
    .b({\u_iic_drive/state_c[0]_syn_451 ,\u_iic_drive/div_cnt_b_n }),
    .c({\u_iic_drive/state_c [0],\u_iic_drive/bit_cnt_b[3]_syn_2 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [1],\u_iic_drive/bit_cnt [3]}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/ack_flag_n12 ,open_n3487}),
    .q({open_n3491,\u_iic_drive/bit_cnt [3]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~B*~(~A*~(D*~C)))"),
    //.LUTF1("~(~D*C*B*A)"),
    //.LUTG0("(~B*~(~A*~(D*~C)))"),
    //.LUTG1("~(~D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0010001100100010),
    .INIT_LUTF1(16'b1111111101111111),
    .INIT_LUTG0(16'b0010001100100010),
    .INIT_LUTG1(16'b1111111101111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_533  (
    .a({\u_iic_drive/state_c[6]_syn_130 ,\u_iic_drive/state_c[0]_syn_469 }),
    .b({\u_iic_drive/state_c[0]_syn_451 ,\u_iic_drive/state_c[0]_syn_140 }),
    .c({\u_iic_drive/state_c [0],\u_iic_drive/state_c[0]_syn_461 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [1],\u_iic_drive/state_c [4]}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/div_cnt_b_n ,open_n3509}),
    .q({open_n3513,\u_iic_drive/state_c [4]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_535  (
    .b({open_n3516,pwm_control[0]}),
    .c({\u_iic_drive/state_c [3],\u_iic_drive/wdata_r [0]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c [2],device_sel_reg[0]}),
    .sr(rst_cnt_b_n_dup_3),
    .f({\u_iic_drive/state_c[0]_syn_451 ,open_n3534}),
    .q({open_n3538,\u_iic_drive/wdata_r [0]}));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~D*C*B*A)"),
    //.LUT1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000010000000),
    .INIT_LUT1(16'b0000001100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_537  (
    .a({open_n3539,\u_iic_drive/rd_flag_n_syn_2 }),
    .b({\u_iic_drive/state_c [4],\u_iic_drive/rd_flag_n_syn_4 }),
    .c({\u_iic_drive/state_c [6],\u_iic_drive/div_cnt [2]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[0]_syn_464 ,\u_iic_drive/div_cnt [6]}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/add_byte_cnt_n ,open_n3553}),
    .q({open_n3557,\u_iic_drive/rd_flag }));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/state_c[0]_syn_539  (
    .c({\u_iic_drive/end_div_cnt ,open_n3562}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/state_c[0]_syn_459 ,\u_iic_drive/bit_cnt_num_b [0]}),
    .sr(rst_cnt_b_n_dup_2),
    .f({\u_iic_drive/state_c[0]_syn_461 ,open_n3580}),
    .q({open_n3584,\u_iic_drive/bit_cnt_num [1]}));  // ../../i2c_master.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(~((~B*~A))*~(C)*~(D)+(~B*~A)*~(C)*~(D)+~((~B*~A))*C*~(D)+(~B*~A)*~(C)*D+~((~B*~A))*C*D+(~B*~A)*C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(~((~B*~A))*~(C)*~(D)+(~B*~A)*~(C)*~(D)+~((~B*~A))*C*~(D)+(~B*~A)*~(C)*D+~((~B*~A))*C*D+(~B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000111101111),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000111101111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \u_iic_drive/state_c[0]_syn_541  (
    .a({\u_iic_drive/bit_cnt_num [0],open_n3585}),
    .b({\u_iic_drive/bit_cnt_num [1],open_n3586}),
    .c({\u_iic_drive/bit_cnt [2],\u_iic_drive/rdata_vld_r_n2 }),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/bit_cnt [3],\u_iic_drive/rdata_r_b_n8 }),
    .f({\u_iic_drive/eq14_syn_25 ,open_n3605}),
    .q({open_n3609,\u_iic_drive/rdata_vld_r }));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~C*~B*D)"),
    .INIT_LUT0(16'b0000001100000000),
    .MODE("LOGIC"))
    \u_iic_drive/state_c[0]_syn_544  (
    .b({open_n3612,\u_iic_drive/state_c [0]}),
    .c({open_n3613,\u_iic_drive/state_c [1]}),
    .d({open_n3616,\u_iic_drive/state_c[0]_syn_451 }),
    .f({open_n3630,\u_iic_drive/state_c[0]_syn_455 }));  // ../../i2c_master.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~0*~D*C*~B*A)"),
    //.LUT1("(~1*~D*C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000100000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \u_iic_drive/wr_flag_reg_syn_8  (
    .a({\u_iic_drive/rd_flag_n_syn_2 ,\u_iic_drive/rd_flag_n_syn_2 }),
    .b({\u_iic_drive/div_cnt [2],\u_iic_drive/div_cnt [2]}),
    .c({\u_iic_drive/div_cnt [5],\u_iic_drive/div_cnt [5]}),
    .clk(sys_clk_dup_1),
    .d({\u_iic_drive/div_cnt [6],\u_iic_drive/div_cnt [6]}),
    .mi({open_n3647,\u_iic_drive/div_cnt [7]}),
    .sr(rst_cnt_b_n_dup_2),
    .q({open_n3653,\u_iic_drive/wr_flag }));  // ../../i2c_master.v(192)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(D)*B*~(C)+D*B*~(C)+~(D)*~(B)*C)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(~(D)*B*~(C)+D*B*~(C)+~(D)*~(B)*C)"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110000111100),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0000110000111100),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_0_b[1]_syn_14  (
    .b({\uut/bit_count_0 [1],\uut/bit_count_0_b_n }),
    .c({\uut/bit_count_0 [2],\uut/bit_count_0 [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [0],\uut/bit_count_0_b1_n }),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_b[1]_syn_2 ,open_n3673}),
    .q({open_n3677,\uut/bit_count_0 [0]}));
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUT1("(C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .INIT_LUT1(16'b0011000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_0_b[1]_syn_16  (
    .a({open_n3678,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0 [3],\uut/bit_count_0_b_n }),
    .c({\uut/bit_count_0 [4],\uut/data_buffer_0 [4]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0_b[1]_syn_2 ,\uut/data_buffer_0 [5]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_b1_n ,open_n3692}),
    .q({open_n3696,\uut/data_buffer_0 [5]}));
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUT1("(~B*~(D*~(~C*~A)))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000110100000),
    .INIT_LUT1(16'b0000000100110011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_0_b[1]_syn_18  (
    .a({\uut/bit_count_0_b[1]_syn_2 ,\uut/bit_count_0_local_b_n }),
    .b({SLOAD_SGPIO_0_dup_1,\uut/bit_count_0_local_b1_n }),
    .c({\uut/bit_count_0 [3],DATAOUT_SGPIO_0_dup_1}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [4],\uut/data_buffer_0_local [0]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_b_n ,open_n3710}),
    .q({open_n3714,\uut/data_buffer_0_local [0]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUT1("(~B*~(D*~(~C*~A)))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111010100100000),
    .INIT_LUT1(16'b0000000100110011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_0_local_b[1]_syn_7  (
    .a({\uut/reg8_syn_23 ,\uut/reg8_syn_23 }),
    .b({SLOAD_SGPIO_0_dup_1,SLOAD_SGPIO_0_dup_1}),
    .c({\uut/bit_count_0_local [2],\uut/bit_count_0_local [2]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0_local [3],\uut/bit_count_0_local [3]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_local_b_n ,open_n3728}),
    .q({open_n3732,\uut/bit_count_0_local [3]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(A)*(D*C*B)*~(0)+A*(D*C*B)*~(0)+~(A)*~((D*C*B))*0)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(~(A)*(D*C*B)*~(1)+A*(D*C*B)*~(1)+~(A)*~((D*C*B))*1)"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100000000000000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0001010101010101),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_1_b[1]_syn_14  (
    .a({open_n3733,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1 [1],\uut/bit_count_1_b_n }),
    .c({\uut/bit_count_1 [2],\uut/bit_count_1 [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1 [0],\uut/bit_count_1 [1]}),
    .e({open_n3735,\uut/bit_count_1 [2]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_1_b[1]_syn_2 ,open_n3750}),
    .q({open_n3754,\uut/bit_count_1 [2]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C@(B*D))"),
    //.LUTF1("(C*~B*D)"),
    //.LUTG0("(C@(B*D))"),
    //.LUTG1("(C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011110011110000),
    .INIT_LUTF1(16'b0011000000000000),
    .INIT_LUTG0(16'b0011110011110000),
    .INIT_LUTG1(16'b0011000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_1_b[1]_syn_16  (
    .b({\uut/bit_count_1 [3],\uut/bit_count_1_b[1]_syn_2 }),
    .c(\uut/bit_count_1 [4:3]),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_b[1]_syn_2 ,\uut/bit_count_1_b_n }),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_1_b1_n ,open_n3774}),
    .q({open_n3778,\uut/bit_count_1 [3]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(~B*~(D*~(~C*~A)))"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(~B*~(D*~(~C*~A)))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0000000100110011),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0000000100110011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_1_b[1]_syn_18  (
    .a({\uut/bit_count_1_b[1]_syn_2 ,\uut/bit_count_1_local_b_n }),
    .b({SLOAD_SGPIO_1_dup_1,\uut/bit_count_1_local_b1_n }),
    .c({\uut/bit_count_1 [3],\uut/data_buffer_1_local [8]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1 [4],\uut/data_buffer_1_local [9]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_1_b_n ,open_n3796}),
    .q({open_n3800,\uut/data_buffer_1_local [9]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUT1("(~B*~(D*~(~C*~A)))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111010100100000),
    .INIT_LUT1(16'b0000000100110011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/bit_count_1_local_b[1]_syn_7  (
    .a({\uut/reg10_syn_23 ,\uut/reg10_syn_23 }),
    .b({SLOAD_SGPIO_1_dup_1,SLOAD_SGPIO_1_dup_1}),
    .c({\uut/bit_count_1_local [2],\uut/bit_count_1_local [2]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_local [3],\uut/bit_count_1_local [3]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_1_local_b_n ,open_n3814}),
    .q({open_n3818,\uut/bit_count_1_local [3]}));
  EF2_PHY_MSLICE #(
    //.LUT0("(~B*(D@(C*A)))"),
    //.LUT1("(D*~(B)*~(C)+D*B*~(C)+~(D)*~(B)*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0001001100100000),
    .INIT_LUT1(16'b0000111100110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg0_syn_28  (
    .a({open_n3819,\uut/bit_count_0_local_b_n }),
    .b({\uut/bit_count_0_local_b1_n ,\uut/bit_count_0_local_b1_n }),
    .c({\uut/bit_count_0_local [0],\uut/bit_count_0_local [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0_local_b_n ,\uut/bit_count_0_local [1]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_0_local [0],\uut/bit_count_0_local [1]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUT1("(C@(B*D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000110100000),
    .INIT_LUT1(16'b0011110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg0_syn_30  (
    .a({open_n3838,\uut/bit_count_0_local_b_n }),
    .b({\uut/reg8_syn_23 ,\uut/bit_count_0_local_b1_n }),
    .c({\uut/bit_count_0_local [2],\uut/data_buffer_0_local [1]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0_local_b_n ,\uut/data_buffer_0_local [2]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_0_local [2],\uut/data_buffer_0_local [2]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg10_syn_57  (
    .a({open_n3857,\uut/bit_count_1_b1_n }),
    .b({open_n3858,\uut/bit_count_1_b_n }),
    .c({\uut/bit_count_1_local_b1_n ,\uut/data_buffer_1 [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({rst_cnt_b_n,\uut/data_buffer_1 [1]}),
    .sr(rst_cnt_b_n),
    .f({\uut/mux27_syn_15 ,open_n3872}),
    .q({open_n3876,\uut/data_buffer_1 [1]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_MSLICE #(
    //.LUT0("(C@(B*D))"),
    //.LUT1("(C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011110011110000),
    .INIT_LUT1(16'b0011000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg10_syn_59  (
    .b({\uut/bit_count_1_local [2],\uut/reg10_syn_23 }),
    .c(\uut/bit_count_1_local [3:2]),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/reg10_syn_23 ,\uut/bit_count_1_local_b_n }),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_1_local_b1_n ,open_n3892}),
    .q({open_n3896,\uut/bit_count_1_local [2]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111010100100000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111010100100000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg10_syn_61  (
    .a({open_n3897,\uut/bit_count_1_b[1]_syn_2 }),
    .b({open_n3898,SLOAD_SGPIO_1_dup_1}),
    .c({\uut/bit_count_1_local [1],\uut/bit_count_1 [3]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_local [0],\uut/bit_count_1 [4]}),
    .sr(rst_cnt_b_n),
    .f({\uut/reg10_syn_23 ,open_n3916}),
    .q({open_n3920,\uut/bit_count_1 [4]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUT1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000011001100),
    .INIT_LUT1(16'b1111000011001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg10_syn_64  (
    .b({\uut/sgpio_1_data_out_local [4],\uut/sgpio_1_data_out_local [7]}),
    .c({\uut/data_buffer_1_local [3],\uut/data_buffer_1_local [6]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/mux27_syn_15 ,\uut/mux27_syn_15 }),
    .q({\uut/sgpio_1_data_out_local [4],\uut/sgpio_1_data_out_local [7]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000011001100),
    .INIT_LUTG0(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg10_syn_66  (
    .b({open_n3944,\uut/sgpio_1_data_out_local [1]}),
    .c({open_n3945,\uut/data_buffer_1_local [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n3947,\uut/mux27_syn_15 }),
    .q({open_n3970,\uut/sgpio_1_data_out_local [1]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000011001100),
    .INIT_LUTG0(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg10_syn_68  (
    .b({open_n3973,\uut/sgpio_1_data_out_local [10]}),
    .c({open_n3974,\uut/data_buffer_1_local [9]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n3976,\uut/mux27_syn_15 }),
    .q({open_n3999,\uut/sgpio_1_data_out_local [10]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg11_syn_62  (
    .a({open_n4000,\uut/bit_count_1_b1_n }),
    .b({open_n4001,\uut/bit_count_1_b_n }),
    .c({\uut/bit_count_1_b1_n ,\uut/data_buffer_1 [18]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({rst_cnt_b_n,\uut/data_buffer_1 [19]}),
    .sr(rst_cnt_b_n),
    .f({\uut/mux13_syn_27 ,open_n4015}),
    .q({open_n4019,\uut/data_buffer_1 [19]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_MSLICE #(
    //.LUT0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000011001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg11_syn_67  (
    .b({open_n4022,\uut/sgpio_1_data_out [23]}),
    .c({open_n4023,\uut/data_buffer_1 [22]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({open_n4025,\uut/mux13_syn_27 }),
    .q({open_n4044,\uut/sgpio_1_data_out [23]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~(A)*(D*C*B)*~(0)+A*(D*C*B)*~(0)+~(A)*~((D*C*B))*0)"),
    //.LUTF1("(~A*(D@(C*B)))"),
    //.LUTG0("(~(A)*(D*C*B)*~(1)+A*(D*C*B)*~(1)+~(A)*~((D*C*B))*1)"),
    //.LUTG1("(~A*(D@(C*B)))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100000000000000),
    .INIT_LUTF1(16'b0001010101000000),
    .INIT_LUTG0(16'b0001010101010101),
    .INIT_LUTG1(16'b0001010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg1_syn_33  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/bit_count_0 [0],\uut/bit_count_0 [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [1],\uut/bit_count_0 [1]}),
    .e({open_n4046,\uut/bit_count_0 [2]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_0 [1],\uut/bit_count_0 [2]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(C@(B*D))"),
    //.LUT1("(A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011110011110000),
    .INIT_LUT1(16'b1111010100100000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg1_syn_37  (
    .a({\uut/bit_count_0_b[1]_syn_2 ,open_n4066}),
    .b({SLOAD_SGPIO_0_dup_1,\uut/bit_count_0_b[1]_syn_2 }),
    .c({\uut/bit_count_0 [3],\uut/bit_count_0 [3]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/bit_count_0 [4],\uut/bit_count_0_b_n }),
    .sr(rst_cnt_b_n),
    .q(\uut/bit_count_0 [4:3]));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(~B*(D@(C*A)))"),
    //.LUT1("(D*~(B)*~(C)+D*B*~(C)+~(D)*~(B)*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0001001100100000),
    .INIT_LUT1(16'b0000111100110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg2_syn_28  (
    .a({open_n4085,\uut/bit_count_1_local_b_n }),
    .b({\uut/bit_count_1_local_b1_n ,\uut/bit_count_1_local_b1_n }),
    .c({\uut/bit_count_1_local [0],\uut/bit_count_1_local [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_local_b_n ,\uut/bit_count_1_local [1]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_1_local [0],\uut/bit_count_1_local [1]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_MSLICE #(
    //.LUT0("(~(A)*(C*B)*~(D)+A*(C*B)*~(D)+~(A)*~((C*B))*D)"),
    //.LUT1("(~(D)*B*~(C)+D*B*~(C)+~(D)*~(B)*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0001010111000000),
    .INIT_LUT1(16'b0000110000111100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg3_syn_34  (
    .a({open_n4104,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/bit_count_1 [0],\uut/bit_count_1 [0]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/bit_count_1_b1_n ,\uut/bit_count_1 [1]}),
    .sr(rst_cnt_b_n),
    .q({\uut/bit_count_1 [0],\uut/bit_count_1 [1]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg4_syn_57  (
    .a({\uut/bit_count_0_local_b_n ,\uut/bit_count_0_local_b_n }),
    .b({\uut/bit_count_0_local_b1_n ,\uut/bit_count_0_local_b1_n }),
    .c({\uut/data_buffer_0_local [5],\uut/data_buffer_0_local [2]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0_local [6],\uut/data_buffer_0_local [3]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0_local [6],\uut/data_buffer_0_local [3]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg4_syn_61  (
    .a({\uut/bit_count_0_local_b_n ,\uut/bit_count_0_local_b_n }),
    .b({\uut/bit_count_0_local_b1_n ,\uut/bit_count_0_local_b1_n }),
    .c({\uut/data_buffer_0_local [7],\uut/data_buffer_0_local [3]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0_local [8],\uut/data_buffer_0_local [4]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0_local [8],\uut/data_buffer_0_local [4]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg4_syn_64  (
    .a({\uut/bit_count_0_local_b_n ,\uut/bit_count_0_local_b_n }),
    .b({\uut/bit_count_0_local_b1_n ,\uut/bit_count_0_local_b1_n }),
    .c({\uut/data_buffer_0_local [4],\uut/data_buffer_0_local [6]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0_local [5],\uut/data_buffer_0_local [7]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0_local [5],\uut/data_buffer_0_local [7]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUT1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .INIT_LUT1(16'b1101000111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_120  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c(\uut/data_buffer_0 [14:13]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [15:14]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [15:14]));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTF1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000111000000),
    .INIT_LUTF1(16'b1101000111000000),
    .INIT_LUTG0(16'b1101000111000000),
    .INIT_LUTG1(16'b1101000111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_124  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c(\uut/data_buffer_0 [20:19]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [21:20]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [21:20]));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTF1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000111000000),
    .INIT_LUTF1(16'b1101000111000000),
    .INIT_LUTG0(16'b1101000111000000),
    .INIT_LUTG1(16'b1101000111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_127  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c(\uut/data_buffer_0 [11:10]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [12:11]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [12:11]));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTF1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000111000000),
    .INIT_LUTF1(16'b1101000111000000),
    .INIT_LUTG0(16'b1101000111000000),
    .INIT_LUTG1(16'b1101000111000000),
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
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/data_buffer_0 [15],\uut/data_buffer_0 [12]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [16],\uut/data_buffer_0 [13]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [16],\uut/data_buffer_0 [13]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUT1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .INIT_LUT1(16'b1101000111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_133  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/data_buffer_0 [17],\uut/data_buffer_0 [18]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [18],\uut/data_buffer_0 [19]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [18],\uut/data_buffer_0 [19]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTF1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000111000000),
    .INIT_LUTF1(16'b1101000111000000),
    .INIT_LUTG0(16'b1101000111000000),
    .INIT_LUTG1(16'b1101000111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_136  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/data_buffer_0 [7],\uut/data_buffer_0 [8]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [8],\uut/data_buffer_0 [9]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [8],\uut/data_buffer_0 [9]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUT1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .INIT_LUT1(16'b1101000111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_139  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/data_buffer_0 [6],\uut/data_buffer_0 [9]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [7],\uut/data_buffer_0 [10]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [7],\uut/data_buffer_0 [10]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_141  (
    .a({open_n4331,\uut/bit_count_0_b1_n }),
    .b({open_n4332,\uut/bit_count_0_b_n }),
    .c({open_n4333,\uut/data_buffer_0 [21]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4335,\uut/data_buffer_0 [22]}),
    .sr(rst_cnt_b_n),
    .q({open_n4353,\uut/data_buffer_0 [22]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTF1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000111000000),
    .INIT_LUTF1(16'b1101000111000000),
    .INIT_LUTG0(16'b1101000111000000),
    .INIT_LUTG1(16'b1101000111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_144  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/data_buffer_0 [0],DATAOUT_SGPIO_0_dup_1}),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [1:0]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [1:0]));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTF1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUTG1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000111000000),
    .INIT_LUTF1(16'b1101000111000000),
    .INIT_LUTG0(16'b1101000111000000),
    .INIT_LUTG1(16'b1101000111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_147  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c(\uut/data_buffer_0 [2:1]),
    .clk(SCL_SGPIO_0_syn_4),
    .d(\uut/data_buffer_0 [3:2]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_0 [3:2]));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUT1("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .INIT_LUT1(16'b1101000111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg5_syn_150  (
    .a({\uut/bit_count_0_b1_n ,\uut/bit_count_0_b1_n }),
    .b({\uut/bit_count_0_b_n ,\uut/bit_count_0_b_n }),
    .c({\uut/data_buffer_0 [5],\uut/data_buffer_0 [3]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/data_buffer_0 [6],\uut/data_buffer_0 [4]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_0 [6],\uut/data_buffer_0 [4]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg6_syn_55  (
    .a({\uut/bit_count_1_local_b_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_local_b1_n ,\uut/bit_count_1_b_n }),
    .c({DATAOUT_SGPIO_1_dup_1,DATAOUT_SGPIO_1_dup_1}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1_local [0],\uut/data_buffer_1 [0]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1_local [0],\uut/data_buffer_1 [0]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg6_syn_58  (
    .a({\uut/bit_count_1_local_b_n ,\uut/bit_count_1_local_b_n }),
    .b({\uut/bit_count_1_local_b1_n ,\uut/bit_count_1_local_b1_n }),
    .c(\uut/data_buffer_1_local [3:2]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1_local [4:3]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1_local [4:3]));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUT1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000110100000),
    .INIT_LUT1(16'b1011000110100000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg6_syn_61  (
    .a({\uut/bit_count_1_local_b_n ,\uut/bit_count_1_local_b_n }),
    .b({\uut/bit_count_1_local_b1_n ,\uut/bit_count_1_local_b1_n }),
    .c(\uut/data_buffer_1_local [6:5]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1_local [7:6]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1_local [7:6]));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUT1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000110100000),
    .INIT_LUT1(16'b1011000110100000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg6_syn_64  (
    .a({\uut/bit_count_1_local_b_n ,\uut/bit_count_1_local_b_n }),
    .b({\uut/bit_count_1_local_b1_n ,\uut/bit_count_1_local_b1_n }),
    .c(\uut/data_buffer_1_local [1:0]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1_local [2:1]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1_local [2:1]));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg6_syn_67  (
    .a({\uut/bit_count_1_local_b_n ,\uut/bit_count_1_local_b_n }),
    .b({\uut/bit_count_1_local_b1_n ,\uut/bit_count_1_local_b1_n }),
    .c({\uut/data_buffer_1_local [7],\uut/data_buffer_1_local [4]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1_local [8],\uut/data_buffer_1_local [5]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1_local [8],\uut/data_buffer_1_local [5]}));  // ../../SGPIO_Controller_Slave.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0101000101000000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0101000101000000),
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
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [16],\uut/data_buffer_1 [13]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [17],\uut/data_buffer_1 [14]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [17],\uut/data_buffer_1 [14]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0101000101000000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0101000101000000),
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
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c(\uut/data_buffer_1 [20:19]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [21:20]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [21:20]));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0101000101000000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0101000101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_126  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c(\uut/data_buffer_1 [11:10]),
    .clk(SCL_SGPIO_1_syn_4),
    .d(\uut/data_buffer_1 [12:11]),
    .sr(rst_cnt_b_n),
    .q(\uut/data_buffer_1 [12:11]));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b0101000101000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_129  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [15],\uut/data_buffer_1 [12]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [16],\uut/data_buffer_1 [13]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [16],\uut/data_buffer_1 [13]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0101000101000000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0101000101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_133  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [17],\uut/data_buffer_1 [14]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [18],\uut/data_buffer_1 [15]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [18],\uut/data_buffer_1 [15]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b0101000101000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_136  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [7],\uut/data_buffer_1 [8]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [8],\uut/data_buffer_1 [9]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [8],\uut/data_buffer_1 [9]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b0101000101000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_139  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [6],\uut/data_buffer_1 [9]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [7],\uut/data_buffer_1 [10]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [7],\uut/data_buffer_1 [10]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0101000101000000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0101000101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_142  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [5],\uut/data_buffer_1 [21]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [6],\uut/data_buffer_1 [22]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [6],\uut/data_buffer_1 [22]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_MSLICE #(
    //.LUT0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUT1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000101000000),
    .INIT_LUT1(16'b0101000101000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_147  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [3],\uut/data_buffer_1 [1]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [4],\uut/data_buffer_1 [2]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [4],\uut/data_buffer_1 [2]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTF1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG0("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    //.LUTG1("(~A*(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101000101000000),
    .INIT_LUTF1(16'b0101000101000000),
    .INIT_LUTG0(16'b0101000101000000),
    .INIT_LUTG1(16'b0101000101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg7_syn_150  (
    .a({\uut/bit_count_1_b1_n ,\uut/bit_count_1_b1_n }),
    .b({\uut/bit_count_1_b_n ,\uut/bit_count_1_b_n }),
    .c({\uut/data_buffer_1 [4],\uut/data_buffer_1 [2]}),
    .clk(SCL_SGPIO_1_syn_4),
    .d({\uut/data_buffer_1 [5],\uut/data_buffer_1 [3]}),
    .sr(rst_cnt_b_n),
    .q({\uut/data_buffer_1 [5],\uut/data_buffer_1 [3]}));  // ../../SGPIO_Controller_Slave.v(66)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUT1("(C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000110100000),
    .INIT_LUT1(16'b0011000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg8_syn_57  (
    .a({open_n4722,\uut/bit_count_0_local_b_n }),
    .b({\uut/bit_count_0_local [2],\uut/bit_count_0_local_b1_n }),
    .c({\uut/bit_count_0_local [3],\uut/data_buffer_0_local [0]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/reg8_syn_23 ,\uut/data_buffer_0_local [1]}),
    .sr(rst_cnt_b_n),
    .f({\uut/bit_count_0_local_b1_n ,open_n4736}),
    .q({open_n4740,\uut/data_buffer_0_local [1]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000110100000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg8_syn_59  (
    .a({open_n4741,\uut/bit_count_0_local_b_n }),
    .b({open_n4742,\uut/bit_count_0_local_b1_n }),
    .c({\uut/bit_count_0_local_b1_n ,\uut/data_buffer_0_local [8]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({rst_cnt_b_n,\uut/data_buffer_0_local [9]}),
    .sr(rst_cnt_b_n),
    .f({\uut/mux20_syn_15 ,open_n4756}),
    .q({open_n4760,\uut/data_buffer_0_local [9]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
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
    .SRMUX("0"))
    \uut/reg8_syn_62  (
    .b({\uut/data_buffer_0_local [9],\uut/data_buffer_0_local [6]}),
    .c({\uut/sgpio_0_data_out_local [10],\uut/sgpio_0_data_out_local [7]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({\uut/mux20_syn_15 ,\uut/mux20_syn_15 }),
    .q({\uut/sgpio_0_data_out_local [10],\uut/sgpio_0_data_out_local [7]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg8_syn_64  (
    .b({open_n4788,\uut/data_buffer_0_local [3]}),
    .c({open_n4789,\uut/sgpio_0_data_out_local [4]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4791,\uut/mux20_syn_15 }),
    .q({open_n4814,\uut/sgpio_0_data_out_local [4]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg8_syn_66  (
    .b({open_n4817,\uut/data_buffer_0_local [0]}),
    .c({open_n4818,\uut/sgpio_0_data_out_local [1]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4820,\uut/mux20_syn_15 }),
    .q({open_n4839,\uut/sgpio_0_data_out_local [1]}));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \uut/reg8_syn_68  (
    .c({open_n4844,\uut/bit_count_0_local [1]}),
    .d({open_n4847,\uut/bit_count_0_local [0]}),
    .f({open_n4865,\uut/reg8_syn_23 }));  // ../../SGPIO_Controller_Slave.v(85)
  EF2_PHY_MSLICE #(
    //.LUT0("((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101000111000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \uut/reg9_syn_62  (
    .a({open_n4871,\uut/bit_count_0_b1_n }),
    .b({open_n4872,\uut/bit_count_0_b_n }),
    .c({\uut/bit_count_0_b1_n ,\uut/data_buffer_0 [16]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({rst_cnt_b_n,\uut/data_buffer_0 [17]}),
    .sr(rst_cnt_b_n),
    .f({\uut/mux6_syn_27 ,open_n4886}),
    .q({open_n4890,\uut/data_buffer_0 [17]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_65  (
    .b({open_n4893,\uut/data_buffer_0 [16]}),
    .c({open_n4894,\uut/sgpio_0_data_out [17]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4896,\uut/mux6_syn_27 }),
    .q({open_n4919,\uut/sgpio_0_data_out [17]}));  // ../../SGPIO_Controller_Slave.v(47)
  EF2_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \uut/reg9_syn_67  (
    .b({open_n4922,\uut/data_buffer_0 [13]}),
    .c({open_n4923,\uut/sgpio_0_data_out [14]}),
    .clk(SCL_SGPIO_0_syn_4),
    .d({open_n4925,\uut/mux6_syn_27 }),
    .q({open_n4944,\uut/sgpio_0_data_out [14]}));  // ../../SGPIO_Controller_Slave.v(47)

endmodule 

