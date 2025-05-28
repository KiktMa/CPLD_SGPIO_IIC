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
  wire [1:0] device_sel_reg_b1;
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
  wire [3:0] \u_iic_drive/bit_cnt_b1 ;
  wire [3:0] \u_iic_drive/bit_cnt_b2 ;
  wire [3:0] \u_iic_drive/bit_cnt_b3 ;
  wire [3:0] \u_iic_drive/bit_cnt_num ;  // ../../i2c_master.v(49)
  wire [1:0] \u_iic_drive/bit_cnt_num_b ;
  wire [7:0] \u_iic_drive/device_addr ;  // ../../i2c_master.v(12)
  wire [7:0] \u_iic_drive/div_cnt ;  // ../../i2c_master.v(50)
  wire [7:0] \u_iic_drive/div_cnt_b1 ;
  wire [7:0] \u_iic_drive/div_cnt_b2 ;
  wire [7:0] \u_iic_drive/rdata_r ;  // ../../i2c_master.v(55)
  wire [7:0] \u_iic_drive/rdata_r_b1 ;
  wire [31:0] \u_iic_drive/rdata_r_b2 ;
  wire [31:0] \u_iic_drive/rdata_r_b4 ;
  wire [4:0] \u_iic_drive/rdata_vld_r_b ;
  wire [7:0] \u_iic_drive/reg_addr_r ;  // ../../i2c_master.v(54)
  wire [4:0] \u_iic_drive/sda_out_b ;
  wire  \u_iic_drive/sel0_syn_10 ;
  wire  \u_iic_drive/sel0_syn_12 ;
  wire  \u_iic_drive/sel0_syn_14 ;
  wire  \u_iic_drive/sel0_syn_16 ;
  wire  \u_iic_drive/sel0_syn_2 ;
  wire  \u_iic_drive/sel0_syn_4 ;
  wire  \u_iic_drive/sel0_syn_6 ;
  wire  \u_iic_drive/sel0_syn_8 ;
  wire  \u_iic_drive/sel1_syn_2 ;
  wire  \u_iic_drive/sel1_syn_4 ;
  wire  \u_iic_drive/sel1_syn_6 ;
  wire  \u_iic_drive/sel1_syn_8 ;
  wire [6:0] \u_iic_drive/state_c ;  // ../../i2c_master.v(47)
  wire [6:0] \u_iic_drive/state_n_b ;
  wire [6:0] \u_iic_drive/state_n_b1 ;
  wire [6:0] \u_iic_drive/state_n_b2 ;
  wire [6:0] \u_iic_drive/state_n_b3 ;
  wire [6:0] \u_iic_drive/state_n_b4 ;
  wire [6:0] \u_iic_drive/state_n_b5 ;
  wire [6:0] \u_iic_drive/state_n_b6 ;
  wire [4:0] \u_iic_drive/state_n_b7 ;
  wire [7:0] \u_iic_drive/wdata_r ;  // ../../i2c_master.v(53)
  wire [4:0] \uut/bit_count_0 ;  // ../../SGPIO_Controller_Slave.v(26)
  wire [4:0] \uut/bit_count_0_b ;
  wire [4:0] \uut/bit_count_0_b1 ;
  wire [4:0] \uut/bit_count_0_b2 ;
  wire [4:0] \uut/bit_count_1 ;  // ../../SGPIO_Controller_Slave.v(27)
  wire [4:0] \uut/bit_count_1_b ;
  wire [4:0] \uut/bit_count_1_b1 ;
  wire [4:0] \uut/bit_count_1_b2 ;
  wire [23:0] \uut/data_buffer_0 ;  // ../../SGPIO_Controller_Slave.v(24)
  wire [23:0] \uut/data_buffer_0_b ;
  wire [23:0] \uut/data_buffer_0_b1 ;
  wire [23:0] \uut/data_buffer_1 ;  // ../../SGPIO_Controller_Slave.v(25)
  wire [23:0] \uut/data_buffer_1_b ;
  wire [23:0] \uut/data_buffer_1_b1 ;
  wire [23:0] \uut/sgpio_0_data_out ;  // ../../SGPIO_Controller_Slave.v(15)
  wire [23:0] \uut/sgpio_1_data_out ;  // ../../SGPIO_Controller_Slave.v(16)
  wire rw_flag_b_i_syn_3;  // ../../SGPIO_DEMO_TOP.v(118)
  wire C_ACT_S0_n;
  wire C_ACT_S0_n1;
  wire C_ACT_S1_n;
  wire C_ACT_S1_n1;
  wire C_ACT_S2_n;
  wire C_ACT_S2_n1;
  wire C_ACT_S3_n;
  wire C_ACT_S3_n1;
  wire C_ACT_S4_n;
  wire C_ACT_S4_n1;
  wire C_ACT_S5_n;
  wire C_ACT_S5_n1;
  wire C_ACT_S6_n;
  wire C_ACT_S6_n1;
  wire C_ACT_S7_n;
  wire C_ACT_S7_n1;
  wire clk_counter_b_n;
  wire device_sel_reg_b_n;
  wire pwm_control_b1_n;
  wire pwm_control_b1_n1;
  wire rst_cnt_b_n;
  wire rw_flag_b;  // ../../SGPIO_DEMO_TOP.v(114)
  wire transmit_trigger;  // ../../SGPIO_DEMO_TOP.v(111)
  wire transmit_trigger_n1;
  wire \u_iic_drive/mux6_syn_11 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_15 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_19 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_23 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_27 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_31 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_35 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/mux6_syn_39 ;  // ../../i2c_master.v(365)
  wire \u_iic_drive/sel1_syn_11 ;  // ../../i2c_master.v(338)
  wire \u_iic_drive/sub3_syn_5 ;  // ../../i2c_master.v(307)
  wire \u_iic_drive/sub4_syn_5 ;  // ../../i2c_master.v(225)
  wire \u_iic_drive/state_c[6]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_4 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_20 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_22 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_38 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_40 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_56 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_58 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_74 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_76 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_92 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_94 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_102 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_110 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_112 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_114 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[6]_syn_130 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_28 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_80 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_102 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_106 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_132 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_158 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_188 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_192 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_194 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_196 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_206 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_214 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_218 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[5]_syn_222 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_4 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_32 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_34 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_62 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_64 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_92 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_94 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_106 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_122 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_124 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_128 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_152 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_154 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_182 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[4]_syn_184 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_4 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_32 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_34 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_62 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_64 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_92 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_94 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_104 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_122 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_124 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_128 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_182 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_184 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_214 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_218 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_220 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[3]_syn_222 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_4 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_32 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_34 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_62 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_64 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_92 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_94 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_104 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_122 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_124 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_128 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_152 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_182 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[2]_syn_184 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_4 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_35 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_37 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_68 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_70 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_105 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_107 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_132 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_200 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[1]_syn_202 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_2 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_4 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_42 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_48 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_50 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_52 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_90 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_102 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_104 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_128 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_130 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_132 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_134 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_136 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_138 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_140 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_186 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_194 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_196 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_234 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_282 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_290 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_292 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/state_c[0]_syn_330 ;  // ../../i2c_master.v(47)
  wire \u_iic_drive/ack_flag_n10 ;
  wire \u_iic_drive/ack_flag_n11 ;
  wire \u_iic_drive/ack_flag_n12 ;
  wire \u_iic_drive/ack_flag_n5 ;
  wire \u_iic_drive/ack_flag_n8 ;
  wire \u_iic_drive/add_byte_cnt ;  // ../../i2c_master.v(58)
  wire \u_iic_drive/add_byte_cnt_n ;
  wire \u_iic_drive/add_byte_cnt_n2 ;
  wire \u_iic_drive/bit_cnt_b_n ;
  wire \u_iic_drive/bit_cnt_num_n ;
  wire \u_iic_drive/div_cnt_b_n ;
  wire \u_iic_drive/done_n13 ;
  wire \u_iic_drive/end_bit_cnt ;  // ../../i2c_master.v(63)
  wire \u_iic_drive/end_div_cnt ;  // ../../i2c_master.v(42)
  wire \u_iic_drive/end_div_cnt_n ;
  wire \u_iic_drive/h2l_flag ;  // ../../i2c_master.v(39)
  wire \u_iic_drive/h2l_flag_n ;
  wire \u_iic_drive/l2h_flag ;  // ../../i2c_master.v(38)
  wire \u_iic_drive/l2h_flag_n ;
  wire \u_iic_drive/rd_flag ;  // ../../i2c_master.v(41)
  wire \u_iic_drive/rd_flag_n ;
  wire \u_iic_drive/rdata_r_b_n10 ;
  wire \u_iic_drive/rdata_r_b_n11 ;
  wire \u_iic_drive/rdata_r_b_n12 ;
  wire \u_iic_drive/rdata_r_b_n13 ;
  wire \u_iic_drive/rdata_r_b_n14 ;
  wire \u_iic_drive/rdata_r_b_n15 ;
  wire \u_iic_drive/rdata_r_b_n16 ;
  wire \u_iic_drive/rdata_r_b_n17 ;
  wire \u_iic_drive/rdata_r_b_n18 ;
  wire \u_iic_drive/rdata_r_b_n19 ;
  wire \u_iic_drive/rdata_r_b_n20 ;
  wire \u_iic_drive/rdata_r_b_n21 ;
  wire \u_iic_drive/rdata_r_b_n24 ;
  wire \u_iic_drive/rdata_r_b_n25 ;
  wire \u_iic_drive/rdata_r_b_n8 ;
  wire \u_iic_drive/rdata_r_b_n9 ;
  wire \u_iic_drive/rdata_vld_r ;  // ../../i2c_master.v(56)
  wire \u_iic_drive/rdata_vld_r_n1 ;
  wire \u_iic_drive/rdata_vld_r_n2 ;
  wire \u_iic_drive/rw_flag_r ;  // ../../i2c_master.v(43)
  wire \u_iic_drive/scl_n ;
  wire \u_iic_drive/scl_n1 ;
  wire \u_iic_drive/scl_n2 ;
  wire \u_iic_drive/scl_n3 ;
  wire \u_iic_drive/scl_n4 ;
  wire \u_iic_drive/scl_n5 ;
  wire \u_iic_drive/scl_n6 ;
  wire \u_iic_drive/scl_n7 ;
  wire \u_iic_drive/sda_out ;  // ../../i2c_master.v(44)
  wire \u_iic_drive/sda_out_en ;  // ../../i2c_master.v(45)
  wire \u_iic_drive/sda_out_en_n3 ;
  wire \u_iic_drive/sda_out_en_n5 ;
  wire \u_iic_drive/sda_out_en_n8 ;
  wire \u_iic_drive/sda_out_en_n9 ;
  wire \u_iic_drive/sda_out_n10 ;
  wire \u_iic_drive/sda_out_n11 ;
  wire \u_iic_drive/sda_out_n12 ;
  wire \u_iic_drive/sda_out_n13 ;
  wire \u_iic_drive/sda_out_n14 ;
  wire \u_iic_drive/sda_out_n16 ;
  wire \u_iic_drive/sda_out_n17 ;
  wire \u_iic_drive/sda_out_n2 ;
  wire \u_iic_drive/sda_out_n20 ;
  wire \u_iic_drive/sda_out_n21 ;
  wire \u_iic_drive/sda_out_n22 ;
  wire \u_iic_drive/sda_out_n25 ;
  wire \u_iic_drive/sda_out_n3 ;
  wire \u_iic_drive/sda_out_n4 ;
  wire \u_iic_drive/sda_out_n5 ;
  wire \u_iic_drive/sda_out_n6 ;
  wire \u_iic_drive/sda_out_n7 ;
  wire \u_iic_drive/sda_out_n9 ;
  wire \u_iic_drive/wr_flag ;  // ../../i2c_master.v(40)
  wire \u_iic_drive/wr_flag_n ;
  wire \uut/mux13_syn_27 ;  // ../../SGPIO_Controller_Slave.v(56)
  wire \uut/mux6_syn_27 ;  // ../../SGPIO_Controller_Slave.v(37)
  wire \uut/bit_count_0_b1_n ;
  wire \uut/bit_count_0_b1_n1 ;
  wire \uut/bit_count_0_b_n ;
  wire \uut/bit_count_1_b1_n ;
  wire \uut/bit_count_1_b1_n1 ;
  wire \uut/bit_count_1_b_n ;

  not C_ACT_S0_i (C_ACT_S0_n, C_ACT_S0_n1);  // ../../SGPIO_DEMO_TOP.v(210)
  and C_ACT_S0_i1 (C_ACT_S0_n1, \uut/sgpio_0_data_out [23], ACT_S0);  // ../../SGPIO_DEMO_TOP.v(210)
  AL_LATCH_X C_ACT_S0_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S0_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S0));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S1_i (C_ACT_S1_n, C_ACT_S1_n1);  // ../../SGPIO_DEMO_TOP.v(211)
  and C_ACT_S1_i1 (C_ACT_S1_n1, \uut/sgpio_0_data_out [20], ACT_S1);  // ../../SGPIO_DEMO_TOP.v(211)
  AL_LATCH_X C_ACT_S1_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S1_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S1));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S2_i (C_ACT_S2_n, C_ACT_S2_n1);  // ../../SGPIO_DEMO_TOP.v(212)
  and C_ACT_S2_i1 (C_ACT_S2_n1, \uut/sgpio_0_data_out [17], ACT_S2);  // ../../SGPIO_DEMO_TOP.v(212)
  AL_LATCH_X C_ACT_S2_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S2_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S2));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S3_i (C_ACT_S3_n, C_ACT_S3_n1);  // ../../SGPIO_DEMO_TOP.v(213)
  and C_ACT_S3_i1 (C_ACT_S3_n1, \uut/sgpio_0_data_out [14], ACT_S3);  // ../../SGPIO_DEMO_TOP.v(213)
  AL_LATCH_X C_ACT_S3_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S3_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S3));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S4_i (C_ACT_S4_n, C_ACT_S4_n1);  // ../../SGPIO_DEMO_TOP.v(215)
  and C_ACT_S4_i1 (C_ACT_S4_n1, \uut/sgpio_1_data_out [23], ACT_S4);  // ../../SGPIO_DEMO_TOP.v(215)
  AL_LATCH_X C_ACT_S4_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S4_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S4));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S5_i (C_ACT_S5_n, C_ACT_S5_n1);  // ../../SGPIO_DEMO_TOP.v(216)
  and C_ACT_S5_i1 (C_ACT_S5_n1, \uut/sgpio_1_data_out [20], ACT_S5);  // ../../SGPIO_DEMO_TOP.v(216)
  AL_LATCH_X C_ACT_S5_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S5_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S5));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S6_i (C_ACT_S6_n, C_ACT_S6_n1);  // ../../SGPIO_DEMO_TOP.v(217)
  and C_ACT_S6_i1 (C_ACT_S6_n1, \uut/sgpio_1_data_out [17], ACT_S6);  // ../../SGPIO_DEMO_TOP.v(217)
  AL_LATCH_X C_ACT_S6_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S6_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S6));  // ../../SGPIO_DEMO_TOP.v(185)
  not C_ACT_S7_i (C_ACT_S7_n, C_ACT_S7_n1);  // ../../SGPIO_DEMO_TOP.v(218)
  and C_ACT_S7_i1 (C_ACT_S7_n1, \uut/sgpio_1_data_out [14], ACT_S7);  // ../../SGPIO_DEMO_TOP.v(218)
  AL_LATCH_X C_ACT_S7_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(transmit_trigger),
    .d(C_ACT_S7_n),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ACT_S7));  // ../../SGPIO_DEMO_TOP.v(185)
  AL_MUX C_LOCATE_S0_i (
    .i0(1'b0),
    .i1(\uut/sgpio_0_data_out [22]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S0));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S1_i (
    .i0(1'b0),
    .i1(\uut/sgpio_0_data_out [19]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S1));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S2_i (
    .i0(1'b0),
    .i1(\uut/sgpio_0_data_out [16]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S2));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S3_i (
    .i0(1'b0),
    .i1(\uut/sgpio_0_data_out [13]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S3));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S4_i (
    .i0(1'b0),
    .i1(\uut/sgpio_1_data_out [22]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S4));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S5_i (
    .i0(1'b0),
    .i1(\uut/sgpio_1_data_out [19]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S5));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S6_i (
    .i0(1'b0),
    .i1(\uut/sgpio_1_data_out [16]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S6));  // ../../SGPIO_DEMO_TOP.v(186)
  AL_MUX C_LOCATE_S7_i (
    .i0(1'b0),
    .i1(\uut/sgpio_1_data_out [13]),
    .sel(transmit_trigger),
    .o(C_LOCATE_S7));  // ../../SGPIO_DEMO_TOP.v(186)
  add_pu27_pu27_o27 add0 (
    .i0(clk_counter),
    .i1(27'b000000000000000000000000001),
    .o(clk_counter_b1));  // ../../SGPIO_DEMO_TOP.v(127)
  add_pu1_pu1_o1 add1 (
    .i0(device_sel_reg[0]),
    .i1(1'b1),
    .o(device_sel_reg_b1[0]));  // ../../SGPIO_DEMO_TOP.v(144)
  add_pu16_pu16_o16 add2 (
    .i0({poll_counter[15:1],clk_counter[0]}),
    .i1(16'b0000000000000001),
    .o({poll_counter_b1[15:1],open_n0}));  // ../../SGPIO_DEMO_TOP.v(147)
  add_pu16_pu16_o16 add3 (
    .i0(rst_cnt),
    .i1(16'b0000000000000001),
    .o(rst_cnt_b1));  // ../../SGPIO_DEMO_TOP.v(77)
  not device_addr_b_i (device_addr_b[5], rw_flag_b);  // ../../SGPIO_DEMO_TOP.v(174)
  eq_w27 eq0 (
    .i0(clk_counter),
    .i1(27'b000101111101011110000011111),
    .o(clk_counter_b_n));  // ../../SGPIO_DEMO_TOP.v(122)
  eq_w16 eq1 (
    .i0({poll_counter[15:1],clk_counter[0]}),
    .i1(16'b0000000000110001),
    .o(device_sel_reg_b_n));  // ../../SGPIO_DEMO_TOP.v(142)
  eq_w16 eq2 (
    .i0(rst_cnt),
    .i1(16'b0010011100001111),
    .o(rst_cnt_b_n));  // ../../SGPIO_DEMO_TOP.v(73)
  lt_u5_u5 lt0 (
    .ci(1'b0),
    .i0(5'b00110),
    .i1(rdata[7:3]),
    .o(pwm_control_b1_n1));  // ../../SGPIO_DEMO_TOP.v(355)
  lt_u8_u8 lt1 (
    .ci(1'b0),
    .i0(8'b00011110),
    .i1(rdata),
    .o(pwm_control_b1_n));  // ../../SGPIO_DEMO_TOP.v(357)
  binary_mux_s1_w1 mux2_syn_1 (
    .i0(clk_counter_b1[0]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[0]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_11 (
    .i0(clk_counter_b1[10]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[10]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_12 (
    .i0(clk_counter_b1[11]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[11]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_13 (
    .i0(clk_counter_b1[12]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[12]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_14 (
    .i0(clk_counter_b1[13]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[13]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_16 (
    .i0(clk_counter_b1[15]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[15]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_18 (
    .i0(clk_counter_b1[17]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[17]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_19 (
    .i0(clk_counter_b1[18]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[18]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_20 (
    .i0(clk_counter_b1[19]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[19]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_21 (
    .i0(clk_counter_b1[20]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[20]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_22 (
    .i0(clk_counter_b1[21]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[21]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_24 (
    .i0(clk_counter_b1[23]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[23]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux2_syn_6 (
    .i0(clk_counter_b1[5]),
    .i1(1'b0),
    .sel(clk_counter_b_n),
    .o(clk_counter_b[5]));  // ../../SGPIO_DEMO_TOP.v(122)
  binary_mux_s1_w1 mux3_syn_2 (
    .i0(poll_counter_b1[1]),
    .i1(1'b0),
    .sel(device_sel_reg_b_n),
    .o(poll_counter_b[1]));  // ../../SGPIO_DEMO_TOP.v(142)
  binary_mux_s1_w1 mux3_syn_5 (
    .i0(poll_counter_b1[4]),
    .i1(1'b0),
    .sel(device_sel_reg_b_n),
    .o(poll_counter_b[4]));  // ../../SGPIO_DEMO_TOP.v(142)
  binary_mux_s1_w1 mux3_syn_6 (
    .i0(poll_counter_b1[5]),
    .i1(1'b0),
    .sel(device_sel_reg_b_n),
    .o(poll_counter_b[5]));  // ../../SGPIO_DEMO_TOP.v(142)
  binary_mux_s1_w1 mux6_syn_1 (
    .i0(device_sel_reg[0]),
    .i1(1'b0),
    .sel(rw_flag_b),
    .o(device_reg_addr_b[0]));  // ../../SGPIO_DEMO_TOP.v(174)
  binary_mux_s1_w1 mux7_syn_1 (
    .i0(rst_cnt_b1[0]),
    .i1(1'b1),
    .sel(rst_cnt_b_n),
    .o(rst_cnt_b[0]));  // ../../SGPIO_DEMO_TOP.v(73)
  binary_mux_s1_w1 mux7_syn_2 (
    .i0(rst_cnt_b1[1]),
    .i1(1'b1),
    .sel(rst_cnt_b_n),
    .o(rst_cnt_b[1]));  // ../../SGPIO_DEMO_TOP.v(73)
  binary_mux_s1_w1 mux7_syn_3 (
    .i0(rst_cnt_b1[2]),
    .i1(1'b1),
    .sel(rst_cnt_b_n),
    .o(rst_cnt_b[2]));  // ../../SGPIO_DEMO_TOP.v(73)
  binary_mux_s1_w1 mux7_syn_4 (
    .i0(rst_cnt_b1[3]),
    .i1(1'b1),
    .sel(rst_cnt_b_n),
    .o(rst_cnt_b[3]));  // ../../SGPIO_DEMO_TOP.v(73)
  AL_DFF_0 reg0_syn_10 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[8]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_11 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[9]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_12 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[10]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_13 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[11]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_14 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[12]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_15 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[13]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_16 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[14]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_17 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[15]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_18 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[16]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_19 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[17]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_2 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[0]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_20 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[18]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_21 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[19]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_22 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[20]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_23 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[21]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_24 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[22]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_25 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[23]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_26 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[24]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_27 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[25]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_28 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[26]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_3 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[1]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_4 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[2]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_5 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[3]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_6 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[4]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_7 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[5]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_8 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[6]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg0_syn_9 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(clk_counter_b1[7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(clk_counter[7]));  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 reg1_syn_10 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/device_addr [2]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_DFF_0 reg1_syn_11 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(device_addr_b[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/device_addr [5]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_DFF_0 reg1_syn_9 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(rw_flag_b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/device_addr [0]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_DFF_0 reg2_syn_10 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(device_reg_addr_b[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(device_reg_addr[0]));  // ../../SGPIO_DEMO_TOP.v(170)
  AL_DFF_0 reg3_syn_2 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(device_sel_reg_b1[0]),
    .en(device_sel_reg_b_n),
    .sr(1'b0),
    .ss(1'b0),
    .q(device_sel_reg[0]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_10 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[8]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_11 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[9]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_12 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[10]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_13 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[11]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_14 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[12]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_15 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[13]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_16 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[14]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_17 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[15]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_3 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[1]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_4 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[2]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_5 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[3]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_6 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b[4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[4]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_7 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[5]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_8 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[6]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg4_syn_9 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(poll_counter_b1[7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(poll_counter[7]));  // ../../SGPIO_DEMO_TOP.v(136)
  AL_DFF_0 reg5_syn_10 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(pwm_control_b1_n1),
    .en(transmit_trigger),
    .sr(1'b0),
    .ss(1'b0),
    .q(pwm_control[0]));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_DFF_0 reg5_syn_11 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(pwm_control_b1_n),
    .en(transmit_trigger),
    .sr(1'b0),
    .ss(1'b0),
    .q(pwm_control[5]));  // ../../SGPIO_DEMO_TOP.v(367)
  AL_DFF_0 reg6_syn_10 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[8]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_11 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[9]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_12 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[10]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_13 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[11]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_14 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[12]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_15 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[13]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_16 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[14]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_17 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[15]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[0]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[1]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[2]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[3]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[4]),
    .en(1'b1),
    .sr(rst_cnt_b_n),
    .ss(1'b0),
    .q(rst_cnt[4]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[5]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[6]));  // ../../SGPIO_DEMO_TOP.v(72)
  AL_DFF_0 reg6_syn_9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(rst_cnt_b1[7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rst_cnt[7]));  // ../../SGPIO_DEMO_TOP.v(72)
  and rw_flag_b_i_syn_2 (rw_flag_b_i_syn_3, rst_cnt_b_n, clk_counter_b_n);  // ../../SGPIO_DEMO_TOP.v(118)
  AL_DFF_0 rw_flag_b_reg (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(device_addr_b[5]),
    .en(rw_flag_b_i_syn_3),
    .sr(1'b0),
    .ss(1'b0),
    .q(rw_flag_b));  // ../../SGPIO_DEMO_TOP.v(118)
  not transmit_trigger_i1 (transmit_trigger_n1, transmit_trigger);  // ../../SGPIO_DEMO_TOP.v(124)
  AL_DFF_0 transmit_trigger_reg_syn_2 (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(transmit_trigger_n1),
    .en(clk_counter_b_n),
    .sr(1'b0),
    .ss(1'b0),
    .q(transmit_trigger));  // ../../SGPIO_DEMO_TOP.v(118)
  add_pu8_pu8_o8 \u_iic_drive/add0  (
    .i0(\u_iic_drive/div_cnt ),
    .i1(8'b00000001),
    .o(\u_iic_drive/div_cnt_b2 ));  // ../../i2c_master.v(186)
  add_pu4_pu4_o4 \u_iic_drive/add1  (
    .i0(\u_iic_drive/bit_cnt ),
    .i1(4'b0001),
    .o({\u_iic_drive/bit_cnt_b3 [3:2],open_n1,\u_iic_drive/bit_cnt_b3 [0]}));  // ../../i2c_master.v(220)
  and \u_iic_drive/add_byte_cnt_i  (\u_iic_drive/add_byte_cnt , \u_iic_drive/add_byte_cnt_n , \u_iic_drive/end_bit_cnt );  // ../../i2c_master.v(257)
  or \u_iic_drive/add_byte_cnt_i1  (\u_iic_drive/add_byte_cnt_n , \u_iic_drive/done_n13 , \u_iic_drive/add_byte_cnt_n2 );  // ../../i2c_master.v(257)
  not \u_iic_drive/bit_cnt_num_b_i  (\u_iic_drive/bit_cnt_num_b [0], \u_iic_drive/bit_cnt_num_n );  // ../../i2c_master.v(233)
  or \u_iic_drive/bit_cnt_num_i  (\u_iic_drive/bit_cnt_num_n , \u_iic_drive/ack_flag_n12 , \u_iic_drive/ack_flag_n8 );  // ../../i2c_master.v(233)
  binary_decoder_3 \u_iic_drive/dec0  (
    .i(\u_iic_drive/rdata_r_b2 [2:0]),
    .o(\u_iic_drive/rdata_r_b1 ));  // ../../i2c_master.v(366)
  or \u_iic_drive/done_i10  (\u_iic_drive/done_n13 , \u_iic_drive/ack_flag_n11 , \u_iic_drive/ack_flag_n10 );  // ../../i2c_master.v(109)
  and \u_iic_drive/end_bit_cnt_i  (\u_iic_drive/end_bit_cnt , \u_iic_drive/end_div_cnt , \u_iic_drive/ack_flag_n5 );  // ../../i2c_master.v(225)
  AL_DFF_0 \u_iic_drive/end_div_cnt_reg_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/end_div_cnt_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/end_div_cnt ));  // ../../i2c_master.v(192)
  eq_w4 \u_iic_drive/eq0  (
    .i0(\u_iic_drive/bit_cnt ),
    .i1(4'b0000),
    .o(\u_iic_drive/sda_out_n25 ));  // ../../i2c_master.v(307)
  eq_w4 \u_iic_drive/eq1  (
    .i0(\u_iic_drive/bit_cnt ),
    .i1({\u_iic_drive/sub3_syn_5 ,\u_iic_drive/rdata_vld_r_b [2:1],\u_iic_drive/bit_cnt_num [0]}),
    .o(\u_iic_drive/rdata_vld_r_n2 ));  // ../../i2c_master.v(307)
  eq_w8 \u_iic_drive/eq10  (
    .i0(\u_iic_drive/div_cnt ),
    .i1(8'b00000000),
    .o(\u_iic_drive/h2l_flag_n ));  // ../../i2c_master.v(201)
  eq_w8 \u_iic_drive/eq11  (
    .i0(\u_iic_drive/div_cnt ),
    .i1(8'b11000110),
    .o(\u_iic_drive/end_div_cnt_n ));  // ../../i2c_master.v(202)
  eq_w8 \u_iic_drive/eq12  (
    .i0(\u_iic_drive/div_cnt ),
    .i1(8'b00110010),
    .o(\u_iic_drive/wr_flag_n ));  // ../../i2c_master.v(203)
  eq_w8 \u_iic_drive/eq13  (
    .i0(\u_iic_drive/div_cnt ),
    .i1(8'b10010110),
    .o(\u_iic_drive/rd_flag_n ));  // ../../i2c_master.v(204)
  eq_w4 \u_iic_drive/eq14  (
    .i0(\u_iic_drive/bit_cnt ),
    .i1({\u_iic_drive/sub4_syn_5 ,\u_iic_drive/ack_flag_b [2:0]}),
    .o(\u_iic_drive/ack_flag_n5 ));  // ../../i2c_master.v(225)
  eq_w7 \u_iic_drive/eq2  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0000001),
    .o(\u_iic_drive/bit_cnt_b_n ));  // ../../i2c_master.v(110)
  eq_w7 \u_iic_drive/eq3  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0000010),
    .o(\u_iic_drive/ack_flag_n12 ));  // ../../i2c_master.v(119)
  eq_w7 \u_iic_drive/eq4  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0000100),
    .o(\u_iic_drive/ack_flag_n10 ));  // ../../i2c_master.v(127)
  eq_w7 \u_iic_drive/eq5  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0001000),
    .o(\u_iic_drive/ack_flag_n11 ));  // ../../i2c_master.v(138)
  eq_w7 \u_iic_drive/eq6  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0010000),
    .o(\u_iic_drive/ack_flag_n8 ));  // ../../i2c_master.v(146)
  eq_w7 \u_iic_drive/eq7  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0100000),
    .o(\u_iic_drive/add_byte_cnt_n2 ));  // ../../i2c_master.v(154)
  eq_w8 \u_iic_drive/eq9  (
    .i0(\u_iic_drive/div_cnt ),
    .i1(8'b01100100),
    .o(\u_iic_drive/l2h_flag_n ));  // ../../i2c_master.v(200)
  AL_DFF_0 \u_iic_drive/h2l_flag_reg_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/h2l_flag_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/h2l_flag ));  // ../../i2c_master.v(192)
  AL_DFF_0 \u_iic_drive/l2h_flag_reg_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/l2h_flag_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/l2h_flag ));  // ../../i2c_master.v(192)
  lt_u4_u4 \u_iic_drive/lt0  (
    .ci(1'b0),
    .i0(4'b0000),
    .i1(\u_iic_drive/bit_cnt ),
    .o(\u_iic_drive/scl_n7 ));  // ../../i2c_master.v(281)
  binary_mux_s4_w1 \u_iic_drive/mux0  (
    .i0(1'b0),
    .i1(\u_iic_drive/device_addr [0]),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(\u_iic_drive/device_addr [0]),
    .i3(\u_iic_drive/device_addr [2]),
    .i4(\u_iic_drive/device_addr [2]),
    .i5(1'b0),
    .i6(\u_iic_drive/device_addr [5]),
    .i7(\u_iic_drive/device_addr [0]),
    .i8(1'b0),
    .i9(1'b0),
    .sel({\u_iic_drive/sda_out_b [3:1],\u_iic_drive/bit_cnt [0]}),
    .o(\u_iic_drive/sda_out_n9 ));  // ../../i2c_master.v(295)
  binary_mux_s3_w1 \u_iic_drive/mux1  (
    .i0(\u_iic_drive/reg_addr_r [0]),
    .i1(\u_iic_drive/reg_addr_r [1]),
    .i2(1'b0),
    .i3(1'b0),
    .i4(\u_iic_drive/reg_addr_r [1]),
    .i5(\u_iic_drive/reg_addr_r [1]),
    .i6(1'b0),
    .i7(1'b0),
    .sel(\u_iic_drive/rdata_r_b2 [2:0]),
    .o(\u_iic_drive/sda_out_n11 ));  // ../../i2c_master.v(299)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_1  (
    .i0(\u_iic_drive/state_c [0]),
    .i1(1'b1),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [0]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_2  (
    .i0(\u_iic_drive/state_c [1]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [1]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_3  (
    .i0(\u_iic_drive/state_c [2]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [2]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_4  (
    .i0(\u_iic_drive/state_c [3]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [3]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_5  (
    .i0(\u_iic_drive/state_c [4]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [4]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_6  (
    .i0(\u_iic_drive/state_c [5]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [5]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux10_syn_7  (
    .i0(1'b1),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/state_n_b6 [6]));  // ../../i2c_master.v(163)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_1  (
    .i0(\u_iic_drive/div_cnt_b2 [0]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [0]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_2  (
    .i0(\u_iic_drive/div_cnt_b2 [1]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [1]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_3  (
    .i0(\u_iic_drive/div_cnt_b2 [2]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [2]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_4  (
    .i0(\u_iic_drive/div_cnt_b2 [3]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [3]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_5  (
    .i0(\u_iic_drive/div_cnt_b2 [4]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [4]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_6  (
    .i0(\u_iic_drive/div_cnt_b2 [5]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [5]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_7  (
    .i0(\u_iic_drive/div_cnt_b2 [6]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [6]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux11_syn_8  (
    .i0(\u_iic_drive/div_cnt_b2 [7]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/div_cnt_b1 [7]));  // ../../i2c_master.v(183)
  binary_mux_s1_w1 \u_iic_drive/mux13_syn_1  (
    .i0(\u_iic_drive/bit_cnt_b3 [0]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/bit_cnt_b2 [0]));  // ../../i2c_master.v(217)
  binary_mux_s1_w1 \u_iic_drive/mux13_syn_2  (
    .i0(\u_iic_drive/sda_out_b [1]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/bit_cnt_b2 [1]));  // ../../i2c_master.v(217)
  binary_mux_s1_w1 \u_iic_drive/mux13_syn_3  (
    .i0(\u_iic_drive/bit_cnt_b3 [2]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/bit_cnt_b2 [2]));  // ../../i2c_master.v(217)
  binary_mux_s1_w1 \u_iic_drive/mux13_syn_4  (
    .i0(\u_iic_drive/bit_cnt_b3 [3]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/bit_cnt_b2 [3]));  // ../../i2c_master.v(217)
  binary_mux_s1_w1 \u_iic_drive/mux14_syn_1  (
    .i0(\u_iic_drive/bit_cnt [0]),
    .i1(\u_iic_drive/bit_cnt_b2 [0]),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/bit_cnt_b1 [0]));  // ../../i2c_master.v(216)
  binary_mux_s1_w1 \u_iic_drive/mux14_syn_2  (
    .i0(\u_iic_drive/bit_cnt [1]),
    .i1(\u_iic_drive/bit_cnt_b2 [1]),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/bit_cnt_b1 [1]));  // ../../i2c_master.v(216)
  binary_mux_s1_w1 \u_iic_drive/mux14_syn_3  (
    .i0(\u_iic_drive/bit_cnt [2]),
    .i1(\u_iic_drive/bit_cnt_b2 [2]),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/bit_cnt_b1 [2]));  // ../../i2c_master.v(216)
  binary_mux_s1_w1 \u_iic_drive/mux14_syn_4  (
    .i0(\u_iic_drive/bit_cnt [3]),
    .i1(\u_iic_drive/bit_cnt_b2 [3]),
    .sel(\u_iic_drive/end_div_cnt ),
    .o(\u_iic_drive/bit_cnt_b1 [3]));  // ../../i2c_master.v(216)
  binary_mux_s1_w1 \u_iic_drive/mux15_syn_1  (
    .i0(\u_iic_drive/bit_cnt_b1 [0]),
    .i1(1'b0),
    .sel(\u_iic_drive/bit_cnt_b_n ),
    .o(\u_iic_drive/bit_cnt_b [0]));  // ../../i2c_master.v(213)
  binary_mux_s1_w1 \u_iic_drive/mux15_syn_2  (
    .i0(\u_iic_drive/bit_cnt_b1 [1]),
    .i1(1'b0),
    .sel(\u_iic_drive/bit_cnt_b_n ),
    .o(\u_iic_drive/bit_cnt_b [1]));  // ../../i2c_master.v(213)
  binary_mux_s1_w1 \u_iic_drive/mux15_syn_3  (
    .i0(\u_iic_drive/bit_cnt_b1 [2]),
    .i1(1'b0),
    .sel(\u_iic_drive/bit_cnt_b_n ),
    .o(\u_iic_drive/bit_cnt_b [2]));  // ../../i2c_master.v(213)
  binary_mux_s1_w1 \u_iic_drive/mux15_syn_4  (
    .i0(\u_iic_drive/bit_cnt_b1 [3]),
    .i1(1'b0),
    .sel(\u_iic_drive/bit_cnt_b_n ),
    .o(\u_iic_drive/bit_cnt_b [3]));  // ../../i2c_master.v(213)
  binary_mux_s3_w1 \u_iic_drive/mux2  (
    .i0(\u_iic_drive/wdata_r [0]),
    .i1(\u_iic_drive/wdata_r [0]),
    .i2(\u_iic_drive/wdata_r [0]),
    .i3(\u_iic_drive/wdata_r [0]),
    .i4(\u_iic_drive/wdata_r [0]),
    .i5(\u_iic_drive/wdata_r [5]),
    .i6(\u_iic_drive/wdata_r [0]),
    .i7(\u_iic_drive/wdata_r [5]),
    .sel(\u_iic_drive/rdata_r_b2 [2:0]),
    .o(\u_iic_drive/sda_out_n12 ));  // ../../i2c_master.v(303)
  binary_mux_s1_w1 \u_iic_drive/mux5_syn_1  (
    .i0(1'b1),
    .i1(1'b0),
    .sel(device_sel_reg[0]),
    .o(\u_iic_drive/state_n_b [0]));  // ../../i2c_master.v(111)
  binary_mux_s1_w1 \u_iic_drive/mux5_syn_2  (
    .i0(\u_iic_drive/state_c [1]),
    .i1(1'b1),
    .sel(device_sel_reg[0]),
    .o(\u_iic_drive/state_n_b [1]));  // ../../i2c_master.v(111)
  binary_mux_s1_w1 \u_iic_drive/mux5_syn_5  (
    .i0(\u_iic_drive/state_c [4]),
    .i1(1'b0),
    .sel(device_sel_reg[0]),
    .o(\u_iic_drive/state_n_b [4]));  // ../../i2c_master.v(111)
  binary_mux_s1_w1 \u_iic_drive/mux5_syn_7  (
    .i0(\u_iic_drive/state_c [6]),
    .i1(1'b0),
    .sel(device_sel_reg[0]),
    .o(\u_iic_drive/state_n_b [6]));  // ../../i2c_master.v(111)
  and \u_iic_drive/mux6_syn_10  (\u_iic_drive/mux6_syn_11 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n16 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_14  (\u_iic_drive/mux6_syn_15 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n15 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_18  (\u_iic_drive/mux6_syn_19 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n14 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_22  (\u_iic_drive/mux6_syn_23 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n13 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_26  (\u_iic_drive/mux6_syn_27 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n12 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_30  (\u_iic_drive/mux6_syn_31 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n11 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_34  (\u_iic_drive/mux6_syn_35 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n10 );  // ../../i2c_master.v(365)
  and \u_iic_drive/mux6_syn_38  (\u_iic_drive/mux6_syn_39 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_r_b_n9 );  // ../../i2c_master.v(365)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_1  (
    .i0(\u_iic_drive/state_c [0]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b4 [0]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_10  (
    .i0(\u_iic_drive/state_c [2]),
    .i1(1'b1),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b1 [2]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_11  (
    .i0(\u_iic_drive/state_c [3]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b4 [3]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_12  (
    .i0(1'b1),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b4 [4]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_14  (
    .i0(\u_iic_drive/state_c [6]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b1 [6]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_2  (
    .i0(\u_iic_drive/state_c [1]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b4 [1]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_3  (
    .i0(\u_iic_drive/state_c [2]),
    .i1(1'b0),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b4 [2]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux8_syn_6  (
    .i0(\u_iic_drive/state_c [5]),
    .i1(1'b1),
    .sel(\u_iic_drive/end_bit_cnt ),
    .o(\u_iic_drive/state_n_b4 [5]));  // ../../i2c_master.v(120)
  binary_mux_s1_w1 \u_iic_drive/mux9_syn_10  (
    .i0(\u_iic_drive/state_c [2]),
    .i1(1'b0),
    .sel(\u_iic_drive/add_byte_cnt ),
    .o(\u_iic_drive/state_n_b3 [2]));  // ../../i2c_master.v(128)
  binary_mux_s1_w1 \u_iic_drive/mux9_syn_11  (
    .i0(\u_iic_drive/state_c [3]),
    .i1(1'b0),
    .sel(\u_iic_drive/add_byte_cnt ),
    .o(\u_iic_drive/state_n_b3 [3]));  // ../../i2c_master.v(128)
  binary_mux_s1_w1 \u_iic_drive/mux9_syn_13  (
    .i0(\u_iic_drive/state_c [5]),
    .i1(1'b0),
    .sel(\u_iic_drive/add_byte_cnt ),
    .o(\u_iic_drive/state_n_b5 [5]));  // ../../i2c_master.v(128)
  binary_mux_s1_w1 \u_iic_drive/mux9_syn_14  (
    .i0(\u_iic_drive/state_c [6]),
    .i1(1'b1),
    .sel(\u_iic_drive/add_byte_cnt ),
    .o(\u_iic_drive/state_n_b5 [6]));  // ../../i2c_master.v(128)
  binary_mux_s1_w1 \u_iic_drive/mux9_syn_18  (
    .i0(\u_iic_drive/state_c [3]),
    .i1(\u_iic_drive/state_n_b7 [3]),
    .sel(\u_iic_drive/add_byte_cnt ),
    .o(\u_iic_drive/state_n_b2 [3]));  // ../../i2c_master.v(128)
  binary_mux_s1_w1 \u_iic_drive/mux9_syn_19  (
    .i0(\u_iic_drive/state_c [4]),
    .i1(\u_iic_drive/rw_flag_r ),
    .sel(\u_iic_drive/add_byte_cnt ),
    .o(\u_iic_drive/state_n_b2 [4]));  // ../../i2c_master.v(128)
  ne_w7 \u_iic_drive/neq0  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0000010),
    .o(\u_iic_drive/scl_n6 ));  // ../../i2c_master.v(281)
  ne_w7 \u_iic_drive/neq1  (
    .i0(\u_iic_drive/state_c ),
    .i1(7'b0000001),
    .o(\u_iic_drive/div_cnt_b_n ));  // ../../i2c_master.v(182)
  AL_DFF_0 \u_iic_drive/rd_flag_reg_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rd_flag_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rd_flag ));  // ../../i2c_master.v(192)
  and \u_iic_drive/rdata_r_b_i10  (\u_iic_drive/rdata_r_b_n10 , \u_iic_drive/rdata_r_b1 [6], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i11  (\u_iic_drive/rdata_r_b_n11 , \u_iic_drive/rdata_r_b1 [5], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i12  (\u_iic_drive/rdata_r_b_n12 , \u_iic_drive/rdata_r_b1 [4], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i13  (\u_iic_drive/rdata_r_b_n13 , \u_iic_drive/rdata_r_b1 [3], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i14  (\u_iic_drive/rdata_r_b_n14 , \u_iic_drive/rdata_r_b1 [2], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i15  (\u_iic_drive/rdata_r_b_n15 , \u_iic_drive/rdata_r_b1 [1], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i16  (\u_iic_drive/rdata_r_b_n16 , \u_iic_drive/rdata_r_b1 [0], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  not \u_iic_drive/rdata_r_b_i17  (\u_iic_drive/rdata_r_b_n17 , \u_iic_drive/rdata_r_b_n18 );  // ../../i2c_master.v(366)
  or \u_iic_drive/rdata_r_b_i18  (\u_iic_drive/rdata_r_b_n18 , \u_iic_drive/rdata_r_b_n19 , \u_iic_drive/rdata_r_b_n20 );  // ../../i2c_master.v(366)
  or \u_iic_drive/rdata_r_b_i19  (\u_iic_drive/rdata_r_b_n19 , \u_iic_drive/rdata_r_b_n21 , \u_iic_drive/rdata_r_b4 [4]);  // ../../i2c_master.v(366)
  or \u_iic_drive/rdata_r_b_i20  (\u_iic_drive/rdata_r_b_n20 , \u_iic_drive/rdata_r_b4 [4], \u_iic_drive/rdata_r_b_n24 );  // ../../i2c_master.v(366)
  or \u_iic_drive/rdata_r_b_i21  (\u_iic_drive/rdata_r_b_n21 , \u_iic_drive/rdata_r_b_n25 , \u_iic_drive/rdata_r_b4 [4]);  // ../../i2c_master.v(366)
  or \u_iic_drive/rdata_r_b_i24  (\u_iic_drive/rdata_r_b_n24 , \u_iic_drive/rdata_r_b4 [4], \u_iic_drive/rdata_r_b4 [4]);  // ../../i2c_master.v(366)
  or \u_iic_drive/rdata_r_b_i25  (\u_iic_drive/rdata_r_b_n25 , \u_iic_drive/rdata_r_b4 [3], \u_iic_drive/rdata_r_b4 [4]);  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_r_b_i8  (\u_iic_drive/rdata_r_b_n8 , \u_iic_drive/add_byte_cnt_n2 , \u_iic_drive/rd_flag );  // ../../i2c_master.v(365)
  and \u_iic_drive/rdata_r_b_i9  (\u_iic_drive/rdata_r_b_n9 , \u_iic_drive/rdata_r_b1 [7], \u_iic_drive/rdata_r_b_n17 );  // ../../i2c_master.v(366)
  and \u_iic_drive/rdata_vld_r_i1  (\u_iic_drive/rdata_vld_r_n1 , \u_iic_drive/rdata_r_b_n8 , \u_iic_drive/rdata_vld_r_n2 );  // ../../i2c_master.v(372)
  AL_DFF_X \u_iic_drive/rdata_vld_r_reg  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_vld_r_n1 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_vld_r ));  // ../../i2c_master.v(371)
  AL_DFF_X \u_iic_drive/reg0_syn_2  (
    .ar(1'b0),
    .as(~rst_cnt_b_n),
    .clk(sys_clk),
    .d(\u_iic_drive/bit_cnt_num_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/bit_cnt_num [0]));  // ../../i2c_master.v(230)
  AL_DFF_0 \u_iic_drive/reg0_syn_6  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/bit_cnt_num_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/bit_cnt_num [1]));  // ../../i2c_master.v(230)
  AL_DFF_0 \u_iic_drive/reg1_syn_6  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/bit_cnt_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/bit_cnt [0]));  // ../../i2c_master.v(210)
  AL_DFF_0 \u_iic_drive/reg1_syn_7  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/bit_cnt_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/bit_cnt [1]));  // ../../i2c_master.v(210)
  AL_DFF_0 \u_iic_drive/reg1_syn_8  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/bit_cnt_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/bit_cnt [2]));  // ../../i2c_master.v(210)
  AL_DFF_0 \u_iic_drive/reg1_syn_9  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/bit_cnt_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/bit_cnt [3]));  // ../../i2c_master.v(210)
  AL_DFF_0 \u_iic_drive/reg2_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [0]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [0]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [1]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [1]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_12  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [2]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [2]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_13  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [3]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [3]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_14  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [4]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [4]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_15  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [5]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [5]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_16  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [6]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [6]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg2_syn_17  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/div_cnt_b1 [7]),
    .en(\u_iic_drive/div_cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/div_cnt [7]));  // ../../i2c_master.v(179)
  AL_DFF_0 \u_iic_drive/reg3_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_11 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [0]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_15 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [1]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_12  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_19 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [2]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_13  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_23 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [3]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_14  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [4]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_15  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [5]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_16  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_35 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [6]));  // ../../i2c_master.v(362)
  AL_DFF_0 \u_iic_drive/reg3_syn_17  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(smb_iic_sda),
    .en(\u_iic_drive/mux6_syn_39 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rdata_r [7]));  // ../../i2c_master.v(362)
  AL_DFF_X \u_iic_drive/reg4_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [0]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[0]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [1]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[1]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [2]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[2]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [3]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[3]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_6  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [4]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[4]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_7  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [5]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[5]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_8  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [6]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[6]));  // ../../i2c_master.v(376)
  AL_DFF_X \u_iic_drive/reg4_syn_9  (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/rdata_r [7]),
    .en(\u_iic_drive/rdata_vld_r ),
    .sr(1'b0),
    .ss(1'b0),
    .q(rdata[7]));  // ../../i2c_master.v(376)
  AL_DFF_0 \u_iic_drive/reg5_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(device_reg_addr[0]),
    .en(device_sel_reg[0]),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/reg_addr_r [0]));  // ../../i2c_master.v(85)
  AL_DFF_0 \u_iic_drive/reg5_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/device_addr [5]),
    .en(device_sel_reg[0]),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/reg_addr_r [1]));  // ../../i2c_master.v(85)
  AL_DFF_0 \u_iic_drive/reg6_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_138 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [2]));  // ../../i2c_master.v(99)
  AL_DFF_0 \u_iic_drive/reg6_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_186 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [3]));  // ../../i2c_master.v(99)
  AL_DFF_0 \u_iic_drive/reg6_syn_12  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_234 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [4]));  // ../../i2c_master.v(99)
  AL_DFF_0 \u_iic_drive/reg6_syn_13  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_282 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [5]));  // ../../i2c_master.v(99)
  AL_DFF_0 \u_iic_drive/reg6_syn_14  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_330 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [6]));  // ../../i2c_master.v(99)
  AL_DFF_X \u_iic_drive/reg6_syn_2  (
    .ar(1'b0),
    .as(~rst_cnt_b_n),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_48 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [0]));  // ../../i2c_master.v(99)
  AL_DFF_0 \u_iic_drive/reg6_syn_9  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/state_c[0]_syn_90 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/state_c [1]));  // ../../i2c_master.v(99)
  AL_DFF_0 \u_iic_drive/reg7_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(pwm_control[0]),
    .en(device_sel_reg[0]),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/wdata_r [0]));  // ../../i2c_master.v(85)
  AL_DFF_0 \u_iic_drive/reg7_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(pwm_control[5]),
    .en(device_sel_reg[0]),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/wdata_r [5]));  // ../../i2c_master.v(85)
  AL_DFF_0 \u_iic_drive/rw_flag_r_reg_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(rw_flag_b),
    .en(device_sel_reg[0]),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/rw_flag_r ));  // ../../i2c_master.v(85)
  AL_MUX \u_iic_drive/scl_i  (
    .i0(\u_iic_drive/scl_n1 ),
    .i1(1'b1),
    .sel(\u_iic_drive/scl_n2 ),
    .o(\u_iic_drive/scl_n ));  // ../../i2c_master.v(278)
  AL_MUX \u_iic_drive/scl_i1  (
    .i0(smb_iic_scl),
    .i1(1'b0),
    .sel(\u_iic_drive/scl_n3 ),
    .o(\u_iic_drive/scl_n1 ));  // ../../i2c_master.v(281)
  or \u_iic_drive/scl_i2  (\u_iic_drive/scl_n2 , \u_iic_drive/l2h_flag , \u_iic_drive/bit_cnt_b_n );  // ../../i2c_master.v(278)
  and \u_iic_drive/scl_i3  (\u_iic_drive/scl_n3 , \u_iic_drive/scl_n4 , \u_iic_drive/h2l_flag );  // ../../i2c_master.v(281)
  or \u_iic_drive/scl_i4  (\u_iic_drive/scl_n4 , \u_iic_drive/scl_n5 , \u_iic_drive/scl_n6 );  // ../../i2c_master.v(281)
  and \u_iic_drive/scl_i5  (\u_iic_drive/scl_n5 , \u_iic_drive/ack_flag_n12 , \u_iic_drive/scl_n7 );  // ../../i2c_master.v(281)
  AL_DFF_X \u_iic_drive/scl_reg  (
    .ar(1'b0),
    .as(~rst_cnt_b_n),
    .clk(sys_clk),
    .d(\u_iic_drive/scl_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(smb_iic_scl));  // ../../i2c_master.v(275)
  bufif1 \u_iic_drive/sda_i  (smb_iic_sda, \u_iic_drive/sda_out , \u_iic_drive/sda_out_en );  // ../../i2c_master.v(67)
  AL_MUX \u_iic_drive/sda_out_en_i2  (
    .i0(\u_iic_drive/sda_out_en_n8 ),
    .i1(1'b1),
    .sel(\u_iic_drive/sda_out_n25 ),
    .o(\u_iic_drive/sda_out_en_n3 ));  // ../../i2c_master.v(340)
  AL_MUX \u_iic_drive/sda_out_en_i4  (
    .i0(\u_iic_drive/sda_out_en_n9 ),
    .i1(1'b0),
    .sel(\u_iic_drive/sda_out_n25 ),
    .o(\u_iic_drive/sda_out_en_n5 ));  // ../../i2c_master.v(350)
  AL_MUX \u_iic_drive/sda_out_en_i7  (
    .i0(\u_iic_drive/sda_out_en ),
    .i1(1'b0),
    .sel(\u_iic_drive/ack_flag_n5 ),
    .o(\u_iic_drive/sda_out_en_n8 ));  // ../../i2c_master.v(342)
  AL_MUX \u_iic_drive/sda_out_en_i8  (
    .i0(\u_iic_drive/sda_out_en ),
    .i1(1'b1),
    .sel(\u_iic_drive/ack_flag_n5 ),
    .o(\u_iic_drive/sda_out_en_n9 ));  // ../../i2c_master.v(352)
  AL_DFF_X \u_iic_drive/sda_out_en_reg  (
    .ar(1'b0),
    .as(~rst_cnt_b_n),
    .clk(sys_clk),
    .d(\u_iic_drive/sel1_syn_2 ),
    .en(\u_iic_drive/wr_flag ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/sda_out_en ));  // ../../i2c_master.v(334)
  AL_MUX \u_iic_drive/sda_out_i1  (
    .i0(\u_iic_drive/sda_out ),
    .i1(\u_iic_drive/sda_out_n9 ),
    .sel(\u_iic_drive/sda_out_n10 ),
    .o(\u_iic_drive/sda_out_n2 ));  // ../../i2c_master.v(294)
  AL_MUX \u_iic_drive/sda_out_i10  (
    .i0(\u_iic_drive/sda_out_n9 ),
    .i1(1'b1),
    .sel(\u_iic_drive/sda_out_n22 ),
    .o(\u_iic_drive/sda_out_n14 ));  // ../../i2c_master.v(307)
  and \u_iic_drive/sda_out_i12  (\u_iic_drive/sda_out_n16 , \u_iic_drive/ack_flag_n5 , \u_iic_drive/wr_flag );  // ../../i2c_master.v(315)
  AL_MUX \u_iic_drive/sda_out_i13  (
    .i0(\u_iic_drive/sda_out ),
    .i1(1'b1),
    .sel(\u_iic_drive/rd_flag ),
    .o(\u_iic_drive/sda_out_n17 ));  // ../../i2c_master.v(324)
  not \u_iic_drive/sda_out_i16  (\u_iic_drive/sda_out_n20 , \u_iic_drive/bit_cnt [3]);  // ../../i2c_master.v(294)
  and \u_iic_drive/sda_out_i17  (\u_iic_drive/sda_out_n21 , \u_iic_drive/rd_flag , \u_iic_drive/sda_out_n25 );  // ../../i2c_master.v(311)
  or \u_iic_drive/sda_out_i18  (\u_iic_drive/sda_out_n22 , \u_iic_drive/sda_out_n25 , \u_iic_drive/rdata_vld_r_n2 );  // ../../i2c_master.v(307)
  AL_MUX \u_iic_drive/sda_out_i2  (
    .i0(\u_iic_drive/sda_out ),
    .i1(\u_iic_drive/sda_out_n11 ),
    .sel(\u_iic_drive/sda_out_n10 ),
    .o(\u_iic_drive/sda_out_n3 ));  // ../../i2c_master.v(298)
  AL_MUX \u_iic_drive/sda_out_i3  (
    .i0(\u_iic_drive/sda_out ),
    .i1(\u_iic_drive/sda_out_n12 ),
    .sel(\u_iic_drive/sda_out_n10 ),
    .o(\u_iic_drive/sda_out_n4 ));  // ../../i2c_master.v(302)
  AL_MUX \u_iic_drive/sda_out_i4  (
    .i0(\u_iic_drive/sda_out_n13 ),
    .i1(\u_iic_drive/sda_out_n14 ),
    .sel(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sda_out_n5 ));  // ../../i2c_master.v(306)
  AL_MUX \u_iic_drive/sda_out_i5  (
    .i0(\u_iic_drive/sda_out ),
    .i1(1'b1),
    .sel(\u_iic_drive/sda_out_n16 ),
    .o(\u_iic_drive/sda_out_n6 ));  // ../../i2c_master.v(315)
  AL_MUX \u_iic_drive/sda_out_i6  (
    .i0(\u_iic_drive/sda_out_n17 ),
    .i1(1'b0),
    .sel(\u_iic_drive/wr_flag ),
    .o(\u_iic_drive/sda_out_n7 ));  // ../../i2c_master.v(322)
  and \u_iic_drive/sda_out_i8  (\u_iic_drive/sda_out_n10 , \u_iic_drive/sda_out_n20 , \u_iic_drive/wr_flag );  // ../../i2c_master.v(294)
  AL_MUX \u_iic_drive/sda_out_i9  (
    .i0(\u_iic_drive/sda_out ),
    .i1(1'b0),
    .sel(\u_iic_drive/sda_out_n21 ),
    .o(\u_iic_drive/sda_out_n13 ));  // ../../i2c_master.v(311)
  AL_DFF_X \u_iic_drive/sda_out_reg  (
    .ar(1'b0),
    .as(~rst_cnt_b_n),
    .clk(sys_clk),
    .d(\u_iic_drive/sel0_syn_2 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/sda_out ));  // ../../i2c_master.v(288)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_1  (
    .i0(\u_iic_drive/sel0_syn_4 ),
    .i1(\u_iic_drive/sel0_syn_6 ),
    .sel(\u_iic_drive/state_c[6]_syn_130 ),
    .o(\u_iic_drive/sel0_syn_2 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_11  (
    .i0(\u_iic_drive/sda_out_n4 ),
    .i1(\u_iic_drive/sel0_syn_16 ),
    .sel(\u_iic_drive/state_c[3]_syn_104 ),
    .o(\u_iic_drive/sel0_syn_12 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_13  (
    .i0(\u_iic_drive/sda_out_n6 ),
    .i1(\u_iic_drive/sda_out_n5 ),
    .sel(\u_iic_drive/state_c[5]_syn_102 ),
    .o(\u_iic_drive/sel0_syn_14 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_15  (
    .i0(\u_iic_drive/sda_out_n3 ),
    .i1(\u_iic_drive/sda_out_n2 ),
    .sel(\u_iic_drive/state_c[2]_syn_104 ),
    .o(\u_iic_drive/sel0_syn_16 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_3  (
    .i0(\u_iic_drive/sel0_syn_8 ),
    .i1(\u_iic_drive/sel0_syn_10 ),
    .sel(\u_iic_drive/state_c[6]_syn_102 ),
    .o(\u_iic_drive/sel0_syn_4 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_5  (
    .i0(\u_iic_drive/sda_out ),
    .i1(\u_iic_drive/sel0_syn_12 ),
    .sel(\u_iic_drive/state_c[3]_syn_222 ),
    .o(\u_iic_drive/sel0_syn_6 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_7  (
    .i0(\u_iic_drive/sda_out ),
    .i1(\u_iic_drive/sda_out_n7 ),
    .sel(\u_iic_drive/state_c[5]_syn_188 ),
    .o(\u_iic_drive/sel0_syn_8 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel0_syn_9  (
    .i0(\u_iic_drive/sda_out ),
    .i1(\u_iic_drive/sel0_syn_14 ),
    .sel(\u_iic_drive/state_c[5]_syn_196 ),
    .o(\u_iic_drive/sel0_syn_10 ));  // ../../i2c_master.v(292)
  binary_mux_s1_w1 \u_iic_drive/sel1_syn_1  (
    .i0(\u_iic_drive/sel1_syn_4 ),
    .i1(\u_iic_drive/sel1_syn_6 ),
    .sel(\u_iic_drive/state_c[6]_syn_102 ),
    .o(\u_iic_drive/sel1_syn_2 ));  // ../../i2c_master.v(338)
  and \u_iic_drive/sel1_syn_10  (\u_iic_drive/sel1_syn_11 , \u_iic_drive/state_c[5]_syn_188 , \u_iic_drive/sda_out_n25 );  // ../../i2c_master.v(338)
  AL_MUX \u_iic_drive/sel1_syn_12  (
    .i0(\u_iic_drive/sda_out_en ),
    .i1(1'b1),
    .sel(\u_iic_drive/sel1_syn_11 ),
    .o(\u_iic_drive/sel1_syn_4 ));  // ../../i2c_master.v(338)
  binary_mux_s1_w1 \u_iic_drive/sel1_syn_5  (
    .i0(\u_iic_drive/sda_out_en ),
    .i1(\u_iic_drive/sel1_syn_8 ),
    .sel(\u_iic_drive/state_c[5]_syn_222 ),
    .o(\u_iic_drive/sel1_syn_6 ));  // ../../i2c_master.v(338)
  binary_mux_s1_w1 \u_iic_drive/sel1_syn_7  (
    .i0(\u_iic_drive/sda_out_en_n5 ),
    .i1(\u_iic_drive/sda_out_en_n3 ),
    .sel(\u_iic_drive/state_c[5]_syn_102 ),
    .o(\u_iic_drive/sel1_syn_8 ));  // ../../i2c_master.v(338)
  and \u_iic_drive/state_c[0]_syn_1  (\u_iic_drive/state_c[0]_syn_2 , \u_iic_drive/state_c [0], \u_iic_drive/state_n_b [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[0]_syn_101  (\u_iic_drive/state_c[0]_syn_102 , \u_iic_drive/state_c [0]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_103  (\u_iic_drive/state_c[0]_syn_104 , \u_iic_drive/state_c[0]_syn_102 , \u_iic_drive/state_c[1]_syn_107 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_127  (\u_iic_drive/state_c[0]_syn_128 , \u_iic_drive/state_c[0]_syn_104 , \u_iic_drive/add_byte_cnt_n2 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_129  (\u_iic_drive/state_c[0]_syn_130 , \u_iic_drive/ack_flag_n8 , \u_iic_drive/state_c[0]_syn_128 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_131  (\u_iic_drive/state_c[0]_syn_132 , \u_iic_drive/ack_flag_n11 , \u_iic_drive/state_c[0]_syn_130 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_133  (\u_iic_drive/state_c[0]_syn_134 , \u_iic_drive/ack_flag_n10 , \u_iic_drive/state_c[0]_syn_132 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_135  (\u_iic_drive/state_c[0]_syn_136 , \u_iic_drive/ack_flag_n12 , \u_iic_drive/state_c[0]_syn_134 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_137  (\u_iic_drive/state_c[0]_syn_138 , \u_iic_drive/state_c[1]_syn_70 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[0]_syn_139  (\u_iic_drive/state_c[0]_syn_140 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_185  (\u_iic_drive/state_c[0]_syn_186 , \u_iic_drive/state_c[2]_syn_94 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_193  (\u_iic_drive/state_c[0]_syn_194 , \u_iic_drive/state_c [0], \u_iic_drive/state_n_b [4]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_195  (\u_iic_drive/state_c[0]_syn_196 , \u_iic_drive/state_c[0]_syn_194 , \u_iic_drive/state_c[2]_syn_124 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_233  (\u_iic_drive/state_c[0]_syn_234 , \u_iic_drive/state_c[0]_syn_196 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_281  (\u_iic_drive/state_c[0]_syn_282 , \u_iic_drive/state_c[4]_syn_154 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_289  (\u_iic_drive/state_c[0]_syn_290 , \u_iic_drive/state_c [0], \u_iic_drive/state_n_b [6]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_291  (\u_iic_drive/state_c[0]_syn_292 , \u_iic_drive/state_c[0]_syn_290 , \u_iic_drive/state_c[1]_syn_202 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_3  (\u_iic_drive/state_c[0]_syn_4 , \u_iic_drive/state_c[0]_syn_2 , \u_iic_drive/state_c[1]_syn_4 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_329  (\u_iic_drive/state_c[0]_syn_330 , \u_iic_drive/state_c[0]_syn_292 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_41  (\u_iic_drive/state_c[0]_syn_42 , \u_iic_drive/state_c[0]_syn_4 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_47  (\u_iic_drive/state_c[0]_syn_48 , \u_iic_drive/state_c[0]_syn_42 , \u_iic_drive/state_c[0]_syn_140 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_49  (\u_iic_drive/state_c[0]_syn_50 , \u_iic_drive/state_c [0], \u_iic_drive/state_n_b [1]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[0]_syn_51  (\u_iic_drive/state_c[0]_syn_52 , \u_iic_drive/state_c[0]_syn_50 , \u_iic_drive/state_c[1]_syn_37 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[0]_syn_89  (\u_iic_drive/state_c[0]_syn_90 , \u_iic_drive/state_c[0]_syn_52 , \u_iic_drive/state_c[1]_syn_132 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[1]_syn_1  (\u_iic_drive/state_c[1]_syn_2 , \u_iic_drive/state_c [1], \u_iic_drive/state_n_b4 [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[1]_syn_104  (\u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c [1]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[1]_syn_106  (\u_iic_drive/state_c[1]_syn_107 , \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[2]_syn_128 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[1]_syn_130  (\u_iic_drive/state_c[1]_syn_132 , \u_iic_drive/bit_cnt_b_n , \u_iic_drive/state_c[0]_syn_136 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[1]_syn_199  (\u_iic_drive/state_c[1]_syn_200 , \u_iic_drive/state_c [1], \u_iic_drive/state_n_b1 [6]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[1]_syn_201  (\u_iic_drive/state_c[1]_syn_202 , \u_iic_drive/state_c[1]_syn_200 , \u_iic_drive/state_c[2]_syn_184 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[1]_syn_3  (\u_iic_drive/state_c[1]_syn_4 , \u_iic_drive/state_c[1]_syn_2 , \u_iic_drive/state_c[2]_syn_4 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[1]_syn_34  (\u_iic_drive/state_c[1]_syn_35 , \u_iic_drive/state_c [1], \u_iic_drive/state_n_b4 [1]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[1]_syn_36  (\u_iic_drive/state_c[1]_syn_37 , \u_iic_drive/state_c[1]_syn_35 , \u_iic_drive/state_c[2]_syn_34 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[1]_syn_67  (\u_iic_drive/state_c[1]_syn_68 , \u_iic_drive/state_c [1], \u_iic_drive/state_n_b1 [2]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[1]_syn_69  (\u_iic_drive/state_c[1]_syn_70 , \u_iic_drive/state_c[1]_syn_68 , \u_iic_drive/state_c[2]_syn_64 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_1  (\u_iic_drive/state_c[2]_syn_2 , \u_iic_drive/state_c [2], \u_iic_drive/state_c [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[2]_syn_103  (\u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c [2]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_121  (\u_iic_drive/state_c[2]_syn_122 , \u_iic_drive/state_c [2], \u_iic_drive/state_n_b2 [4]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[2]_syn_123  (\u_iic_drive/state_c[2]_syn_124 , \u_iic_drive/state_c[2]_syn_122 , \u_iic_drive/state_c[3]_syn_124 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_127  (\u_iic_drive/state_c[2]_syn_128 , \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c[3]_syn_128 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_151  (\u_iic_drive/state_c[2]_syn_152 , \u_iic_drive/state_c [2], \u_iic_drive/state_n_b5 [5]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_181  (\u_iic_drive/state_c[2]_syn_182 , \u_iic_drive/state_c [2], \u_iic_drive/state_c [6]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[2]_syn_183  (\u_iic_drive/state_c[2]_syn_184 , \u_iic_drive/state_c[2]_syn_182 , \u_iic_drive/state_c[3]_syn_184 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[2]_syn_3  (\u_iic_drive/state_c[2]_syn_4 , \u_iic_drive/state_c[2]_syn_2 , \u_iic_drive/state_c[3]_syn_4 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_31  (\u_iic_drive/state_c[2]_syn_32 , \u_iic_drive/state_c [2], \u_iic_drive/state_c [1]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[2]_syn_33  (\u_iic_drive/state_c[2]_syn_34 , \u_iic_drive/state_c[2]_syn_32 , \u_iic_drive/state_c[3]_syn_34 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_61  (\u_iic_drive/state_c[2]_syn_62 , \u_iic_drive/state_c [2], \u_iic_drive/state_n_b3 [2]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[2]_syn_63  (\u_iic_drive/state_c[2]_syn_64 , \u_iic_drive/state_c[2]_syn_62 , \u_iic_drive/state_c[3]_syn_64 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[2]_syn_91  (\u_iic_drive/state_c[2]_syn_92 , \u_iic_drive/state_c [2], \u_iic_drive/state_n_b2 [3]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[2]_syn_93  (\u_iic_drive/state_c[2]_syn_94 , \u_iic_drive/state_c[2]_syn_92 , \u_iic_drive/state_c[3]_syn_94 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_1  (\u_iic_drive/state_c[3]_syn_2 , \u_iic_drive/state_c [3], \u_iic_drive/state_c [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[3]_syn_103  (\u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c [3]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_121  (\u_iic_drive/state_c[3]_syn_122 , \u_iic_drive/state_c [3], \u_iic_drive/state_c [4]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_123  (\u_iic_drive/state_c[3]_syn_124 , \u_iic_drive/state_c[3]_syn_122 , \u_iic_drive/state_c[4]_syn_124 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_127  (\u_iic_drive/state_c[3]_syn_128 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c[4]_syn_128 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_181  (\u_iic_drive/state_c[3]_syn_182 , \u_iic_drive/state_c [3], \u_iic_drive/state_n_b5 [6]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_183  (\u_iic_drive/state_c[3]_syn_184 , \u_iic_drive/state_c[3]_syn_182 , \u_iic_drive/state_c[4]_syn_184 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_211  (\u_iic_drive/state_c[3]_syn_214 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c [1], \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_215  (\u_iic_drive/state_c[3]_syn_218 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c [2], \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_219  (\u_iic_drive/state_c[3]_syn_220 , \u_iic_drive/state_c [3], \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_221  (\u_iic_drive/state_c[3]_syn_222 , \u_iic_drive/state_c[3]_syn_214 , \u_iic_drive/state_c[3]_syn_218 , \u_iic_drive/state_c[3]_syn_220 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_3  (\u_iic_drive/state_c[3]_syn_4 , \u_iic_drive/state_c[3]_syn_2 , \u_iic_drive/state_c[4]_syn_4 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_31  (\u_iic_drive/state_c[3]_syn_32 , \u_iic_drive/state_c [3], \u_iic_drive/state_c [1]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_33  (\u_iic_drive/state_c[3]_syn_34 , \u_iic_drive/state_c[3]_syn_32 , \u_iic_drive/state_c[4]_syn_34 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_61  (\u_iic_drive/state_c[3]_syn_62 , \u_iic_drive/state_c [3], \u_iic_drive/state_n_b3 [2]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_63  (\u_iic_drive/state_c[3]_syn_64 , \u_iic_drive/state_c[3]_syn_62 , \u_iic_drive/state_c[4]_syn_64 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[3]_syn_91  (\u_iic_drive/state_c[3]_syn_92 , \u_iic_drive/state_c [3], \u_iic_drive/state_n_b3 [3]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[3]_syn_93  (\u_iic_drive/state_c[3]_syn_94 , \u_iic_drive/state_c[3]_syn_92 , \u_iic_drive/state_c[4]_syn_94 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_1  (\u_iic_drive/state_c[4]_syn_2 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b4 [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[4]_syn_105  (\u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c [4]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_121  (\u_iic_drive/state_c[4]_syn_122 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b4 [4]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_123  (\u_iic_drive/state_c[4]_syn_124 , \u_iic_drive/state_c[4]_syn_122 , \u_iic_drive/state_c[6]_syn_76 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_127  (\u_iic_drive/state_c[4]_syn_128 , \u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c[6]_syn_114 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_151  (\u_iic_drive/state_c[4]_syn_152 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b4 [5]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_153  (\u_iic_drive/state_c[4]_syn_154 , \u_iic_drive/state_c[4]_syn_152 , \u_iic_drive/state_c[6]_syn_94 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_181  (\u_iic_drive/state_c[4]_syn_182 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b1 [6]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_183  (\u_iic_drive/state_c[4]_syn_184 , \u_iic_drive/state_c[4]_syn_182 , \u_iic_drive/state_c[6]_syn_112 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_3  (\u_iic_drive/state_c[4]_syn_4 , \u_iic_drive/state_c[4]_syn_2 , \u_iic_drive/state_c[6]_syn_4 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_31  (\u_iic_drive/state_c[4]_syn_32 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b4 [1]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_33  (\u_iic_drive/state_c[4]_syn_34 , \u_iic_drive/state_c[4]_syn_32 , \u_iic_drive/state_c[6]_syn_22 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_61  (\u_iic_drive/state_c[4]_syn_62 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b4 [2]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_63  (\u_iic_drive/state_c[4]_syn_64 , \u_iic_drive/state_c[4]_syn_62 , \u_iic_drive/state_c[6]_syn_40 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[4]_syn_91  (\u_iic_drive/state_c[4]_syn_92 , \u_iic_drive/state_c [4], \u_iic_drive/state_n_b4 [3]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[4]_syn_93  (\u_iic_drive/state_c[4]_syn_94 , \u_iic_drive/state_c[4]_syn_92 , \u_iic_drive/state_c[6]_syn_58 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_1  (\u_iic_drive/state_c[5]_syn_2 , \u_iic_drive/state_c [5], \u_iic_drive/state_c [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[5]_syn_101  (\u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c [5]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_105  (\u_iic_drive/state_c[5]_syn_106 , \u_iic_drive/state_c [5], \u_iic_drive/state_c [4]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_131  (\u_iic_drive/state_c[5]_syn_132 , \u_iic_drive/state_c [5], \u_iic_drive/state_n_b5 [5]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_157  (\u_iic_drive/state_c[5]_syn_158 , \u_iic_drive/state_c [5], \u_iic_drive/state_n_b5 [6]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_185  (\u_iic_drive/state_c[5]_syn_188 , \u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_189  (\u_iic_drive/state_c[5]_syn_192 , \u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c [4], \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_193  (\u_iic_drive/state_c[5]_syn_194 , \u_iic_drive/state_c [5], \u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[5]_syn_195  (\u_iic_drive/state_c[5]_syn_196 , \u_iic_drive/state_c[5]_syn_192 , \u_iic_drive/state_c[5]_syn_194 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_203  (\u_iic_drive/state_c[5]_syn_206 , \u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c [2], \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_211  (\u_iic_drive/state_c[5]_syn_214 , \u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c [3], \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c[1]_syn_105 , \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_215  (\u_iic_drive/state_c[5]_syn_218 , \u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c[4]_syn_106 , \u_iic_drive/state_c[3]_syn_104 , \u_iic_drive/state_c[2]_syn_104 , \u_iic_drive/state_c [1], \u_iic_drive/state_c[0]_syn_102 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[5]_syn_221  (\u_iic_drive/state_c[5]_syn_222 , \u_iic_drive/state_c[5]_syn_206 , \u_iic_drive/state_c[5]_syn_192 , \u_iic_drive/state_c[5]_syn_214 , \u_iic_drive/state_c[5]_syn_218 , \u_iic_drive/state_c[5]_syn_194 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_27  (\u_iic_drive/state_c[5]_syn_28 , \u_iic_drive/state_c [5], \u_iic_drive/state_c [1]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[5]_syn_79  (\u_iic_drive/state_c[5]_syn_80 , \u_iic_drive/state_c [5], \u_iic_drive/state_n_b3 [3]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_1  (\u_iic_drive/state_c[6]_syn_2 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [0]);  // ../../i2c_master.v(47)
  not \u_iic_drive/state_c[6]_syn_101  (\u_iic_drive/state_c[6]_syn_102 , \u_iic_drive/state_c [6]);  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_109  (\u_iic_drive/state_c[6]_syn_110 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [6]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_111  (\u_iic_drive/state_c[6]_syn_112 , \u_iic_drive/state_c[6]_syn_110 , \u_iic_drive/state_c[5]_syn_158 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_113  (\u_iic_drive/state_c[6]_syn_114 , \u_iic_drive/state_c [6], \u_iic_drive/state_c[5]_syn_102 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_127  (\u_iic_drive/state_c[6]_syn_130 , \u_iic_drive/state_c[6]_syn_102 , \u_iic_drive/state_c[5]_syn_102 , \u_iic_drive/state_c[4]_syn_106 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_19  (\u_iic_drive/state_c[6]_syn_20 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [1]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_21  (\u_iic_drive/state_c[6]_syn_22 , \u_iic_drive/state_c[6]_syn_20 , \u_iic_drive/state_c[5]_syn_28 );  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_3  (\u_iic_drive/state_c[6]_syn_4 , \u_iic_drive/state_c[6]_syn_2 , \u_iic_drive/state_c[5]_syn_2 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_37  (\u_iic_drive/state_c[6]_syn_38 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [2]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_39  (\u_iic_drive/state_c[6]_syn_40 , \u_iic_drive/state_c[6]_syn_38 , \u_iic_drive/state_c[2]_syn_152 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_55  (\u_iic_drive/state_c[6]_syn_56 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [3]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_57  (\u_iic_drive/state_c[6]_syn_58 , \u_iic_drive/state_c[6]_syn_56 , \u_iic_drive/state_c[5]_syn_80 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_73  (\u_iic_drive/state_c[6]_syn_74 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [4]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_75  (\u_iic_drive/state_c[6]_syn_76 , \u_iic_drive/state_c[6]_syn_74 , \u_iic_drive/state_c[5]_syn_106 );  // ../../i2c_master.v(47)
  and \u_iic_drive/state_c[6]_syn_91  (\u_iic_drive/state_c[6]_syn_92 , \u_iic_drive/state_c [6], \u_iic_drive/state_n_b6 [5]);  // ../../i2c_master.v(47)
  or \u_iic_drive/state_c[6]_syn_93  (\u_iic_drive/state_c[6]_syn_94 , \u_iic_drive/state_c[6]_syn_92 , \u_iic_drive/state_c[5]_syn_132 );  // ../../i2c_master.v(47)
  not \u_iic_drive/state_n_b7_i  (\u_iic_drive/state_n_b7 [3], \u_iic_drive/rw_flag_r );  // ../../i2c_master.v(129)
  add_pu4_mu4_o4 \u_iic_drive/sub0  (
    .i0(4'b1000),
    .i1(\u_iic_drive/bit_cnt ),
    .o({\u_iic_drive/sda_out_b [3:1],open_n2}));  // ../../i2c_master.v(295)
  add_pu4_mu4_o5 \u_iic_drive/sub2  (
    .i0(4'b0111),
    .i1(\u_iic_drive/bit_cnt ),
    .o({\u_iic_drive/rdata_r_b4 [4:3],\u_iic_drive/rdata_r_b2 [2:0]}));  // ../../i2c_master.v(299)
  not \u_iic_drive/sub3_syn_4  (\u_iic_drive/sub3_syn_5 , \u_iic_drive/rdata_vld_r_b [2]);  // ../../i2c_master.v(307)
  add_pu2_mu2_o3 \u_iic_drive/sub3_syn_7  (
    .i0(\u_iic_drive/bit_cnt_num [1:0]),
    .i1(2'b10),
    .o({\u_iic_drive/rdata_vld_r_b [2:1],open_n3}));  // ../../i2c_master.v(307)
  not \u_iic_drive/sub4_syn_4  (\u_iic_drive/sub4_syn_5 , \u_iic_drive/ack_flag_b [2]);  // ../../i2c_master.v(225)
  add_pu2_mu2_o3 \u_iic_drive/sub4_syn_7  (
    .i0(\u_iic_drive/bit_cnt_num [1:0]),
    .i1(2'b01),
    .o(\u_iic_drive/ack_flag_b [2:0]));  // ../../i2c_master.v(225)
  AL_DFF_0 \u_iic_drive/wr_flag_reg_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(sys_clk),
    .d(\u_iic_drive/wr_flag_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\u_iic_drive/wr_flag ));  // ../../i2c_master.v(192)
  add_pu5_pu5_o5 \uut/add0  (
    .i0(\uut/bit_count_1 ),
    .i1(5'b00001),
    .o(\uut/bit_count_1_b2 ));  // ../../SGPIO_Controller_Slave.v(63)
  add_pu5_pu5_o5 \uut/add3  (
    .i0(\uut/bit_count_0 ),
    .i1(5'b00001),
    .o(\uut/bit_count_0_b2 ));  // ../../SGPIO_Controller_Slave.v(44)
  and \uut/bit_count_0_b1_i  (\uut/bit_count_0_b1_n , \uut/bit_count_0_b1_n1 , SLOAD_SGPIO_0);  // ../../SGPIO_Controller_Slave.v(47)
  and \uut/bit_count_1_b1_i  (\uut/bit_count_1_b1_n , \uut/bit_count_1_b1_n1 , SLOAD_SGPIO_1);  // ../../SGPIO_Controller_Slave.v(66)
  eq_w5 \uut/eq0  (
    .i0(\uut/bit_count_1 ),
    .i1(5'b10111),
    .o(\uut/bit_count_1_b1_n1 ));  // ../../SGPIO_Controller_Slave.v(66)
  eq_w5 \uut/eq3  (
    .i0(\uut/bit_count_0 ),
    .i1(5'b10111),
    .o(\uut/bit_count_0_b1_n1 ));  // ../../SGPIO_Controller_Slave.v(47)
  lt_u5_u5 \uut/lt0  (
    .ci(1'b0),
    .i0(\uut/bit_count_1 ),
    .i1(5'b10111),
    .o(\uut/bit_count_1_b_n ));  // ../../SGPIO_Controller_Slave.v(61)
  lt_u5_u5 \uut/lt2  (
    .ci(1'b0),
    .i0(\uut/bit_count_0 ),
    .i1(5'b10111),
    .o(\uut/bit_count_0_b_n ));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux10_syn_1  (
    .i0(\uut/data_buffer_1_b1 [0]),
    .i1(DATAOUT_SGPIO_1),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [0]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_10  (
    .i0(\uut/data_buffer_1_b1 [9]),
    .i1(\uut/data_buffer_1 [8]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [9]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_11  (
    .i0(\uut/data_buffer_1_b1 [10]),
    .i1(\uut/data_buffer_1 [9]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [10]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_12  (
    .i0(\uut/data_buffer_1_b1 [11]),
    .i1(\uut/data_buffer_1 [10]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [11]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_13  (
    .i0(\uut/data_buffer_1_b1 [12]),
    .i1(\uut/data_buffer_1 [11]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [12]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_14  (
    .i0(\uut/data_buffer_1_b1 [13]),
    .i1(\uut/data_buffer_1 [12]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [13]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_15  (
    .i0(\uut/data_buffer_1_b1 [14]),
    .i1(\uut/data_buffer_1 [13]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [14]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_16  (
    .i0(\uut/data_buffer_1_b1 [15]),
    .i1(\uut/data_buffer_1 [14]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [15]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_17  (
    .i0(\uut/data_buffer_1_b1 [16]),
    .i1(\uut/data_buffer_1 [15]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [16]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_18  (
    .i0(\uut/data_buffer_1_b1 [17]),
    .i1(\uut/data_buffer_1 [16]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [17]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_19  (
    .i0(\uut/data_buffer_1_b1 [18]),
    .i1(\uut/data_buffer_1 [17]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [18]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_2  (
    .i0(\uut/data_buffer_1_b1 [1]),
    .i1(\uut/data_buffer_1 [0]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [1]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_20  (
    .i0(\uut/data_buffer_1_b1 [19]),
    .i1(\uut/data_buffer_1 [18]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [19]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_21  (
    .i0(\uut/data_buffer_1_b1 [20]),
    .i1(\uut/data_buffer_1 [19]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [20]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_22  (
    .i0(\uut/data_buffer_1_b1 [21]),
    .i1(\uut/data_buffer_1 [20]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [21]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_23  (
    .i0(\uut/data_buffer_1_b1 [22]),
    .i1(\uut/data_buffer_1 [21]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [22]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_3  (
    .i0(\uut/data_buffer_1_b1 [2]),
    .i1(\uut/data_buffer_1 [1]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [2]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_4  (
    .i0(\uut/data_buffer_1_b1 [3]),
    .i1(\uut/data_buffer_1 [2]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [3]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_5  (
    .i0(\uut/data_buffer_1_b1 [4]),
    .i1(\uut/data_buffer_1 [3]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [4]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_6  (
    .i0(\uut/data_buffer_1_b1 [5]),
    .i1(\uut/data_buffer_1 [4]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [5]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_7  (
    .i0(\uut/data_buffer_1_b1 [6]),
    .i1(\uut/data_buffer_1 [5]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [6]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_8  (
    .i0(\uut/data_buffer_1_b1 [7]),
    .i1(\uut/data_buffer_1 [6]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [7]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux10_syn_9  (
    .i0(\uut/data_buffer_1_b1 [8]),
    .i1(\uut/data_buffer_1 [7]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/data_buffer_1_b [8]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux11_syn_1  (
    .i0(\uut/bit_count_1_b1 [0]),
    .i1(\uut/bit_count_1_b2 [0]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/bit_count_1_b [0]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux11_syn_2  (
    .i0(\uut/bit_count_1_b1 [1]),
    .i1(\uut/bit_count_1_b2 [1]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/bit_count_1_b [1]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux11_syn_3  (
    .i0(\uut/bit_count_1_b1 [2]),
    .i1(\uut/bit_count_1_b2 [2]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/bit_count_1_b [2]));  // ../../SGPIO_Controller_Slave.v(61)
  binary_mux_s1_w1 \uut/mux11_syn_5  (
    .i0(\uut/bit_count_1_b1 [4]),
    .i1(\uut/bit_count_1_b2 [4]),
    .sel(\uut/bit_count_1_b_n ),
    .o(\uut/bit_count_1_b [4]));  // ../../SGPIO_Controller_Slave.v(61)
  and \uut/mux13_syn_26  (\uut/mux13_syn_27 , rst_cnt_b_n, \uut/bit_count_1_b1_n );  // ../../SGPIO_Controller_Slave.v(56)
  binary_mux_s1_w1 \uut/mux1_syn_1  (
    .i0(\uut/bit_count_0 [0]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/bit_count_0_b1 [0]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux1_syn_2  (
    .i0(\uut/bit_count_0 [1]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/bit_count_0_b1 [1]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux1_syn_3  (
    .i0(\uut/bit_count_0 [2]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/bit_count_0_b1 [2]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux1_syn_5  (
    .i0(\uut/bit_count_0 [4]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/bit_count_0_b1 [4]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_1  (
    .i0(\uut/data_buffer_0 [0]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [0]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_10  (
    .i0(\uut/data_buffer_0 [9]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [9]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_11  (
    .i0(\uut/data_buffer_0 [10]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [10]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_12  (
    .i0(\uut/data_buffer_0 [11]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [11]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_13  (
    .i0(\uut/data_buffer_0 [12]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [12]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_14  (
    .i0(\uut/data_buffer_0 [13]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [13]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_15  (
    .i0(\uut/data_buffer_0 [14]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [14]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_16  (
    .i0(\uut/data_buffer_0 [15]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [15]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_17  (
    .i0(\uut/data_buffer_0 [16]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [16]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_18  (
    .i0(\uut/data_buffer_0 [17]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [17]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_19  (
    .i0(\uut/data_buffer_0 [18]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [18]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_2  (
    .i0(\uut/data_buffer_0 [1]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [1]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_20  (
    .i0(\uut/data_buffer_0 [19]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [19]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_21  (
    .i0(\uut/data_buffer_0 [20]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [20]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_22  (
    .i0(\uut/data_buffer_0 [21]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [21]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_23  (
    .i0(\uut/data_buffer_0 [22]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [22]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_3  (
    .i0(\uut/data_buffer_0 [2]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [2]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_4  (
    .i0(\uut/data_buffer_0 [3]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [3]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_5  (
    .i0(\uut/data_buffer_0 [4]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [4]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_6  (
    .i0(\uut/data_buffer_0 [5]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [5]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_7  (
    .i0(\uut/data_buffer_0 [6]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [6]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_8  (
    .i0(\uut/data_buffer_0 [7]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [7]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux2_syn_9  (
    .i0(\uut/data_buffer_0 [8]),
    .i1(1'b0),
    .sel(\uut/bit_count_0_b1_n ),
    .o(\uut/data_buffer_0_b1 [8]));  // ../../SGPIO_Controller_Slave.v(47)
  binary_mux_s1_w1 \uut/mux3_syn_1  (
    .i0(\uut/data_buffer_0_b1 [0]),
    .i1(DATAOUT_SGPIO_0),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [0]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_10  (
    .i0(\uut/data_buffer_0_b1 [9]),
    .i1(\uut/data_buffer_0 [8]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [9]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_11  (
    .i0(\uut/data_buffer_0_b1 [10]),
    .i1(\uut/data_buffer_0 [9]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [10]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_12  (
    .i0(\uut/data_buffer_0_b1 [11]),
    .i1(\uut/data_buffer_0 [10]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [11]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_13  (
    .i0(\uut/data_buffer_0_b1 [12]),
    .i1(\uut/data_buffer_0 [11]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [12]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_14  (
    .i0(\uut/data_buffer_0_b1 [13]),
    .i1(\uut/data_buffer_0 [12]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [13]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_15  (
    .i0(\uut/data_buffer_0_b1 [14]),
    .i1(\uut/data_buffer_0 [13]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [14]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_16  (
    .i0(\uut/data_buffer_0_b1 [15]),
    .i1(\uut/data_buffer_0 [14]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [15]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_17  (
    .i0(\uut/data_buffer_0_b1 [16]),
    .i1(\uut/data_buffer_0 [15]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [16]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_18  (
    .i0(\uut/data_buffer_0_b1 [17]),
    .i1(\uut/data_buffer_0 [16]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [17]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_19  (
    .i0(\uut/data_buffer_0_b1 [18]),
    .i1(\uut/data_buffer_0 [17]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [18]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_2  (
    .i0(\uut/data_buffer_0_b1 [1]),
    .i1(\uut/data_buffer_0 [0]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [1]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_20  (
    .i0(\uut/data_buffer_0_b1 [19]),
    .i1(\uut/data_buffer_0 [18]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [19]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_21  (
    .i0(\uut/data_buffer_0_b1 [20]),
    .i1(\uut/data_buffer_0 [19]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [20]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_22  (
    .i0(\uut/data_buffer_0_b1 [21]),
    .i1(\uut/data_buffer_0 [20]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [21]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_23  (
    .i0(\uut/data_buffer_0_b1 [22]),
    .i1(\uut/data_buffer_0 [21]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [22]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_3  (
    .i0(\uut/data_buffer_0_b1 [2]),
    .i1(\uut/data_buffer_0 [1]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [2]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_4  (
    .i0(\uut/data_buffer_0_b1 [3]),
    .i1(\uut/data_buffer_0 [2]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [3]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_5  (
    .i0(\uut/data_buffer_0_b1 [4]),
    .i1(\uut/data_buffer_0 [3]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [4]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_6  (
    .i0(\uut/data_buffer_0_b1 [5]),
    .i1(\uut/data_buffer_0 [4]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [5]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_7  (
    .i0(\uut/data_buffer_0_b1 [6]),
    .i1(\uut/data_buffer_0 [5]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [6]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_8  (
    .i0(\uut/data_buffer_0_b1 [7]),
    .i1(\uut/data_buffer_0 [6]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [7]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux3_syn_9  (
    .i0(\uut/data_buffer_0_b1 [8]),
    .i1(\uut/data_buffer_0 [7]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/data_buffer_0_b [8]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux4_syn_1  (
    .i0(\uut/bit_count_0_b1 [0]),
    .i1(\uut/bit_count_0_b2 [0]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/bit_count_0_b [0]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux4_syn_2  (
    .i0(\uut/bit_count_0_b1 [1]),
    .i1(\uut/bit_count_0_b2 [1]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/bit_count_0_b [1]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux4_syn_3  (
    .i0(\uut/bit_count_0_b1 [2]),
    .i1(\uut/bit_count_0_b2 [2]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/bit_count_0_b [2]));  // ../../SGPIO_Controller_Slave.v(42)
  binary_mux_s1_w1 \uut/mux4_syn_5  (
    .i0(\uut/bit_count_0_b1 [4]),
    .i1(\uut/bit_count_0_b2 [4]),
    .sel(\uut/bit_count_0_b_n ),
    .o(\uut/bit_count_0_b [4]));  // ../../SGPIO_Controller_Slave.v(42)
  and \uut/mux6_syn_26  (\uut/mux6_syn_27 , rst_cnt_b_n, \uut/bit_count_0_b1_n );  // ../../SGPIO_Controller_Slave.v(37)
  binary_mux_s1_w1 \uut/mux8_syn_1  (
    .i0(\uut/bit_count_1 [0]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/bit_count_1_b1 [0]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux8_syn_2  (
    .i0(\uut/bit_count_1 [1]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/bit_count_1_b1 [1]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux8_syn_3  (
    .i0(\uut/bit_count_1 [2]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/bit_count_1_b1 [2]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux8_syn_5  (
    .i0(\uut/bit_count_1 [4]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/bit_count_1_b1 [4]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_1  (
    .i0(\uut/data_buffer_1 [0]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [0]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_10  (
    .i0(\uut/data_buffer_1 [9]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [9]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_11  (
    .i0(\uut/data_buffer_1 [10]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [10]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_12  (
    .i0(\uut/data_buffer_1 [11]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [11]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_13  (
    .i0(\uut/data_buffer_1 [12]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [12]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_14  (
    .i0(\uut/data_buffer_1 [13]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [13]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_15  (
    .i0(\uut/data_buffer_1 [14]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [14]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_16  (
    .i0(\uut/data_buffer_1 [15]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [15]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_17  (
    .i0(\uut/data_buffer_1 [16]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [16]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_18  (
    .i0(\uut/data_buffer_1 [17]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [17]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_19  (
    .i0(\uut/data_buffer_1 [18]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [18]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_2  (
    .i0(\uut/data_buffer_1 [1]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [1]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_20  (
    .i0(\uut/data_buffer_1 [19]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [19]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_21  (
    .i0(\uut/data_buffer_1 [20]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [20]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_22  (
    .i0(\uut/data_buffer_1 [21]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [21]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_23  (
    .i0(\uut/data_buffer_1 [22]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [22]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_3  (
    .i0(\uut/data_buffer_1 [2]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [2]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_4  (
    .i0(\uut/data_buffer_1 [3]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [3]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_5  (
    .i0(\uut/data_buffer_1 [4]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [4]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_6  (
    .i0(\uut/data_buffer_1 [5]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [5]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_7  (
    .i0(\uut/data_buffer_1 [6]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [6]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_8  (
    .i0(\uut/data_buffer_1 [7]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [7]));  // ../../SGPIO_Controller_Slave.v(66)
  binary_mux_s1_w1 \uut/mux9_syn_9  (
    .i0(\uut/data_buffer_1 [8]),
    .i1(1'b0),
    .sel(\uut/bit_count_1_b1_n ),
    .o(\uut/data_buffer_1_b1 [8]));  // ../../SGPIO_Controller_Slave.v(66)
  AL_DFF_X \uut/reg11_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [11]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S7));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_15  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [12]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [13]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [13]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [14]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_17  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [14]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S6));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_18  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [15]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [16]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_19  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [16]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [17]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_20  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [17]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S5));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_21  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [18]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [19]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_22  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [19]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [20]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_23  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [20]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S4));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_24  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [21]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [22]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg11_syn_25  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1 [22]),
    .en(\uut/mux13_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_1_data_out [23]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg2_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/bit_count_0_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_0 [0]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg2_syn_3  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/bit_count_0_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_0 [1]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg2_syn_4  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/bit_count_0_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_0 [2]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg2_syn_5  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/bit_count_0_b2 [3]),
    .en(\uut/bit_count_0_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_0 [3]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg2_syn_6  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/bit_count_0_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_0 [4]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg3_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/bit_count_1_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_1 [0]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg3_syn_3  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/bit_count_1_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_1 [1]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg3_syn_4  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/bit_count_1_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_1 [2]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg3_syn_5  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/bit_count_1_b2 [3]),
    .en(\uut/bit_count_1_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_1 [3]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg3_syn_6  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/bit_count_1_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/bit_count_1 [4]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg5_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [8]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [9]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_12  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [10]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_13  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [11]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_14  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [12]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_15  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [13]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_16  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [14]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_17  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [15]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_18  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [16]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_19  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [17]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [0]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_20  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [18]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_21  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [19]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_22  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [20]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_23  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [21]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_24  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [22]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_3  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [1]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_4  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [2]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_5  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [3]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_6  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [4]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_7  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [5]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_8  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [6]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg5_syn_9  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_0 [7]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_0 \uut/reg7_syn_10  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [8]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_11  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [9]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_12  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [10]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_13  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [11]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_14  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [12]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_15  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [13]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_16  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [14]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_17  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [15]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_18  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [16]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_19  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [17]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_2  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [0]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_20  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [18]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_21  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [19]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_22  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [20]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_23  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [21]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_24  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [22]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_3  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [1]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_4  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [2]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_5  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [3]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_6  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [4]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_7  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [5]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_8  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [6]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_0 \uut/reg7_syn_9  (
    .ar(~rst_cnt_b_n),
    .as(1'b0),
    .clk(~SCL_SGPIO_1),
    .d(\uut/data_buffer_1_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/data_buffer_1 [7]));  // ../../SGPIO_Controller_Slave.v(56)
  AL_DFF_X \uut/reg9_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [11]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S3));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_15  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [12]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [13]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [13]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [14]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_17  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [14]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S2));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_18  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [15]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [16]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_19  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [16]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [17]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_20  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [17]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S1));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_21  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [18]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [19]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_22  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [19]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [20]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_23  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [20]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(C_ERROR_S0));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_24  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [21]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [22]));  // ../../SGPIO_Controller_Slave.v(37)
  AL_DFF_X \uut/reg9_syn_25  (
    .ar(1'b0),
    .as(1'b0),
    .clk(~SCL_SGPIO_0),
    .d(\uut/data_buffer_0 [22]),
    .en(\uut/mux6_syn_27 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uut/sgpio_0_data_out [23]));  // ../../SGPIO_Controller_Slave.v(37)

endmodule 

module add_pu27_pu27_o27
  (
  i0,
  i1,
  o
  );

  input [26:0] i0;
  input [26:0] i1;
  output [26:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_a8;
  wire net_b8;
  wire net_sum8;
  wire net_cout8;
  wire net_a9;
  wire net_b9;
  wire net_sum9;
  wire net_cout9;
  wire net_a10;
  wire net_b10;
  wire net_sum10;
  wire net_cout10;
  wire net_a11;
  wire net_b11;
  wire net_sum11;
  wire net_cout11;
  wire net_a12;
  wire net_b12;
  wire net_sum12;
  wire net_cout12;
  wire net_a13;
  wire net_b13;
  wire net_sum13;
  wire net_cout13;
  wire net_a14;
  wire net_b14;
  wire net_sum14;
  wire net_cout14;
  wire net_a15;
  wire net_b15;
  wire net_sum15;
  wire net_cout15;
  wire net_a16;
  wire net_b16;
  wire net_sum16;
  wire net_cout16;
  wire net_a17;
  wire net_b17;
  wire net_sum17;
  wire net_cout17;
  wire net_a18;
  wire net_b18;
  wire net_sum18;
  wire net_cout18;
  wire net_a19;
  wire net_b19;
  wire net_sum19;
  wire net_cout19;
  wire net_a20;
  wire net_b20;
  wire net_sum20;
  wire net_cout20;
  wire net_a21;
  wire net_b21;
  wire net_sum21;
  wire net_cout21;
  wire net_a22;
  wire net_b22;
  wire net_sum22;
  wire net_cout22;
  wire net_a23;
  wire net_b23;
  wire net_sum23;
  wire net_cout23;
  wire net_a24;
  wire net_b24;
  wire net_sum24;
  wire net_cout24;
  wire net_a25;
  wire net_b25;
  wire net_sum25;
  wire net_cout25;
  wire net_a26;
  wire net_b26;
  wire net_sum26;
  wire net_cout26;

  assign net_a26 = i0[26];
  assign net_a25 = i0[25];
  assign net_a24 = i0[24];
  assign net_a23 = i0[23];
  assign net_a22 = i0[22];
  assign net_a21 = i0[21];
  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b26 = i1[26];
  assign net_b25 = i1[25];
  assign net_b24 = i1[24];
  assign net_b23 = i1[23];
  assign net_b22 = i1[22];
  assign net_b21 = i1[21];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[26] = net_sum26;
  assign o[25] = net_sum25;
  assign o[24] = net_sum24;
  assign o[23] = net_sum23;
  assign o[22] = net_sum22;
  assign o[21] = net_sum21;
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_159 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_160 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_161 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_162 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_163 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_164 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_165 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_166 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD al_167 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD al_168 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  AL_FADD al_169 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD al_170 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD al_171 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD al_172 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD al_173 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD al_174 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD al_175 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD al_176 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD al_177 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD al_178 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD al_179 (
    .a(net_a20),
    .b(net_b20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD al_180 (
    .a(net_a21),
    .b(net_b21),
    .c(net_cout20),
    .cout(net_cout21),
    .sum(net_sum21));
  AL_FADD al_181 (
    .a(net_a22),
    .b(net_b22),
    .c(net_cout21),
    .cout(net_cout22),
    .sum(net_sum22));
  AL_FADD al_182 (
    .a(net_a23),
    .b(net_b23),
    .c(net_cout22),
    .cout(net_cout23),
    .sum(net_sum23));
  AL_FADD al_183 (
    .a(net_a24),
    .b(net_b24),
    .c(net_cout23),
    .cout(net_cout24),
    .sum(net_sum24));
  AL_FADD al_184 (
    .a(net_a25),
    .b(net_b25),
    .c(net_cout24),
    .cout(net_cout25),
    .sum(net_sum25));
  AL_FADD al_185 (
    .a(net_a26),
    .b(net_b26),
    .c(net_cout25),
    .cout(net_cout26),
    .sum(net_sum26));

endmodule 

module add_pu1_pu1_o1
  (
  i0,
  i1,
  o
  );

  input i0;
  input i1;
  output o;

  wire net_a0;
  wire net_sum0;
  wire net_cout0;
  wire net_cin;

  assign net_a0 = i0;
  assign net_cin = i1;
  assign o = net_sum0;
  AL_FADD al_247 (
    .a(net_a0),
    .b(1'b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));

endmodule 

module add_pu16_pu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_a8;
  wire net_b8;
  wire net_sum8;
  wire net_cout8;
  wire net_a9;
  wire net_b9;
  wire net_sum9;
  wire net_cout9;
  wire net_a10;
  wire net_b10;
  wire net_sum10;
  wire net_cout10;
  wire net_a11;
  wire net_b11;
  wire net_sum11;
  wire net_cout11;
  wire net_a12;
  wire net_b12;
  wire net_sum12;
  wire net_cout12;
  wire net_a13;
  wire net_b13;
  wire net_sum13;
  wire net_cout13;
  wire net_a14;
  wire net_b14;
  wire net_sum14;
  wire net_cout14;
  wire net_a15;
  wire net_b15;
  wire net_sum15;
  wire net_cout15;

  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_188 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_189 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_190 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_191 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_192 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_193 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_194 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_195 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD al_196 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD al_197 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  AL_FADD al_198 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD al_199 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD al_200 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD al_201 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD al_202 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD al_203 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));

endmodule 

module eq_w27
  (
  i0,
  i1,
  o
  );

  input [26:0] i0;
  input [26:0] i1;
  output o;

  wire i0_syn_28;
  wire i0_syn_30;
  wire i0_syn_32;
  wire i0_syn_34;
  wire i0_syn_36;
  wire i0_syn_38;
  wire i0_syn_40;
  wire i0_syn_42;
  wire i0_syn_44;
  wire i0_syn_46;
  wire i0_syn_48;
  wire i0_syn_50;
  wire i0_syn_52;
  wire i0_syn_54;
  wire i0_syn_56;
  wire i0_syn_58;
  wire i0_syn_60;
  wire i0_syn_62;
  wire i0_syn_64;
  wire i0_syn_66;
  wire i0_syn_68;
  wire i0_syn_70;
  wire i0_syn_72;
  wire i0_syn_74;
  wire i0_syn_76;
  wire i0_syn_78;
  wire i0_syn_80;
  wire i0_syn_82;
  wire i0_syn_84;
  wire i0_syn_86;
  wire i0_syn_88;
  wire i0_syn_90;
  wire i0_syn_92;
  wire i0_syn_94;
  wire i0_syn_96;
  wire i0_syn_98;
  wire i0_syn_100;
  wire i0_syn_102;
  wire i0_syn_104;
  wire i0_syn_106;
  wire i0_syn_108;
  wire i0_syn_110;
  wire i0_syn_112;
  wire i0_syn_114;
  wire i0_syn_116;
  wire i0_syn_118;
  wire i0_syn_120;
  wire i0_syn_122;
  wire i0_syn_124;
  wire i0_syn_126;
  wire i0_syn_128;
  wire i0_syn_130;
  wire i0_syn_132;

  not al_204 (o, i0_syn_132);
  or i0_syn_101 (i0_syn_102, i0_syn_94, i0_syn_100);
  or i0_syn_103 (i0_syn_104, i0_syn_90, i0_syn_102);
  or i0_syn_105 (i0_syn_106, i0_syn_56, i0_syn_58);
  or i0_syn_107 (i0_syn_108, i0_syn_54, i0_syn_106);
  or i0_syn_109 (i0_syn_110, i0_syn_60, i0_syn_62);
  or i0_syn_111 (i0_syn_112, i0_syn_64, i0_syn_66);
  or i0_syn_113 (i0_syn_114, i0_syn_110, i0_syn_112);
  or i0_syn_115 (i0_syn_116, i0_syn_108, i0_syn_114);
  or i0_syn_117 (i0_syn_118, i0_syn_70, i0_syn_72);
  or i0_syn_119 (i0_syn_120, i0_syn_68, i0_syn_118);
  or i0_syn_121 (i0_syn_122, i0_syn_74, i0_syn_76);
  or i0_syn_123 (i0_syn_124, i0_syn_78, i0_syn_80);
  or i0_syn_125 (i0_syn_126, i0_syn_122, i0_syn_124);
  or i0_syn_127 (i0_syn_128, i0_syn_120, i0_syn_126);
  or i0_syn_129 (i0_syn_130, i0_syn_116, i0_syn_128);
  or i0_syn_131 (i0_syn_132, i0_syn_104, i0_syn_130);
  xor i0_syn_27 (i0_syn_28, i0[0], i1[0]);
  xor i0_syn_29 (i0_syn_30, i0[1], i1[1]);
  xor i0_syn_31 (i0_syn_32, i0[2], i1[2]);
  xor i0_syn_33 (i0_syn_34, i0[3], i1[3]);
  xor i0_syn_35 (i0_syn_36, i0[4], i1[4]);
  xor i0_syn_37 (i0_syn_38, i0[5], i1[5]);
  xor i0_syn_39 (i0_syn_40, i0[6], i1[6]);
  xor i0_syn_41 (i0_syn_42, i0[7], i1[7]);
  xor i0_syn_43 (i0_syn_44, i0[8], i1[8]);
  xor i0_syn_45 (i0_syn_46, i0[9], i1[9]);
  xor i0_syn_47 (i0_syn_48, i0[10], i1[10]);
  xor i0_syn_49 (i0_syn_50, i0[11], i1[11]);
  xor i0_syn_51 (i0_syn_52, i0[12], i1[12]);
  xor i0_syn_53 (i0_syn_54, i0[13], i1[13]);
  xor i0_syn_55 (i0_syn_56, i0[14], i1[14]);
  xor i0_syn_57 (i0_syn_58, i0[15], i1[15]);
  xor i0_syn_59 (i0_syn_60, i0[16], i1[16]);
  xor i0_syn_61 (i0_syn_62, i0[17], i1[17]);
  xor i0_syn_63 (i0_syn_64, i0[18], i1[18]);
  xor i0_syn_65 (i0_syn_66, i0[19], i1[19]);
  xor i0_syn_67 (i0_syn_68, i0[20], i1[20]);
  xor i0_syn_69 (i0_syn_70, i0[21], i1[21]);
  xor i0_syn_71 (i0_syn_72, i0[22], i1[22]);
  xor i0_syn_73 (i0_syn_74, i0[23], i1[23]);
  xor i0_syn_75 (i0_syn_76, i0[24], i1[24]);
  xor i0_syn_77 (i0_syn_78, i0[25], i1[25]);
  xor i0_syn_79 (i0_syn_80, i0[26], i1[26]);
  or i0_syn_81 (i0_syn_82, i0_syn_30, i0_syn_32);
  or i0_syn_83 (i0_syn_84, i0_syn_28, i0_syn_82);
  or i0_syn_85 (i0_syn_86, i0_syn_36, i0_syn_38);
  or i0_syn_87 (i0_syn_88, i0_syn_34, i0_syn_86);
  or i0_syn_89 (i0_syn_90, i0_syn_84, i0_syn_88);
  or i0_syn_91 (i0_syn_92, i0_syn_42, i0_syn_44);
  or i0_syn_93 (i0_syn_94, i0_syn_40, i0_syn_92);
  or i0_syn_95 (i0_syn_96, i0_syn_46, i0_syn_48);
  or i0_syn_97 (i0_syn_98, i0_syn_50, i0_syn_52);
  or i0_syn_99 (i0_syn_100, i0_syn_96, i0_syn_98);

endmodule 

module eq_w16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output o;

  wire i0_syn_134;
  wire i0_syn_136;
  wire i0_syn_138;
  wire i0_syn_140;
  wire i0_syn_142;
  wire i0_syn_144;
  wire i0_syn_146;
  wire i0_syn_148;
  wire i0_syn_150;
  wire i0_syn_152;
  wire i0_syn_154;
  wire i0_syn_156;
  wire i0_syn_158;
  wire i0_syn_160;
  wire i0_syn_162;
  wire i0_syn_164;
  wire i0_syn_166;
  wire i0_syn_168;
  wire i0_syn_170;
  wire i0_syn_172;
  wire i0_syn_174;
  wire i0_syn_176;
  wire i0_syn_178;
  wire i0_syn_180;
  wire i0_syn_182;
  wire i0_syn_184;
  wire i0_syn_186;
  wire i0_syn_188;
  wire i0_syn_190;
  wire i0_syn_192;
  wire i0_syn_194;

  not al_205 (o, i0_syn_194);
  xor i0_syn_133 (i0_syn_134, i0[0], i1[0]);
  xor i0_syn_135 (i0_syn_136, i0[1], i1[1]);
  xor i0_syn_137 (i0_syn_138, i0[2], i1[2]);
  xor i0_syn_139 (i0_syn_140, i0[3], i1[3]);
  xor i0_syn_141 (i0_syn_142, i0[4], i1[4]);
  xor i0_syn_143 (i0_syn_144, i0[5], i1[5]);
  xor i0_syn_145 (i0_syn_146, i0[6], i1[6]);
  xor i0_syn_147 (i0_syn_148, i0[7], i1[7]);
  xor i0_syn_149 (i0_syn_150, i0[8], i1[8]);
  xor i0_syn_151 (i0_syn_152, i0[9], i1[9]);
  xor i0_syn_153 (i0_syn_154, i0[10], i1[10]);
  xor i0_syn_155 (i0_syn_156, i0[11], i1[11]);
  xor i0_syn_157 (i0_syn_158, i0[12], i1[12]);
  xor i0_syn_159 (i0_syn_160, i0[13], i1[13]);
  xor i0_syn_161 (i0_syn_162, i0[14], i1[14]);
  xor i0_syn_163 (i0_syn_164, i0[15], i1[15]);
  or i0_syn_165 (i0_syn_166, i0_syn_134, i0_syn_136);
  or i0_syn_167 (i0_syn_168, i0_syn_138, i0_syn_140);
  or i0_syn_169 (i0_syn_170, i0_syn_166, i0_syn_168);
  or i0_syn_171 (i0_syn_172, i0_syn_142, i0_syn_144);
  or i0_syn_173 (i0_syn_174, i0_syn_146, i0_syn_148);
  or i0_syn_175 (i0_syn_176, i0_syn_172, i0_syn_174);
  or i0_syn_177 (i0_syn_178, i0_syn_170, i0_syn_176);
  or i0_syn_179 (i0_syn_180, i0_syn_150, i0_syn_152);
  or i0_syn_181 (i0_syn_182, i0_syn_154, i0_syn_156);
  or i0_syn_183 (i0_syn_184, i0_syn_180, i0_syn_182);
  or i0_syn_185 (i0_syn_186, i0_syn_158, i0_syn_160);
  or i0_syn_187 (i0_syn_188, i0_syn_162, i0_syn_164);
  or i0_syn_189 (i0_syn_190, i0_syn_186, i0_syn_188);
  or i0_syn_191 (i0_syn_192, i0_syn_184, i0_syn_190);
  or i0_syn_193 (i0_syn_194, i0_syn_178, i0_syn_192);

endmodule 

module lt_u5_u5
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [4:0] i0;
  input [4:0] i1;
  output o;

  wire [4:0] al_401;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;

  xor al_406 (al_401[0], i0[0], i1[0]);
  xor al_407 (al_401[1], i0[1], i1[1]);
  xor al_408 (al_401[2], i0[2], i1[2]);
  xor al_409 (al_401[3], i0[3], i1[3]);
  xor al_410 (al_401[4], i0[4], i1[4]);
  AL_MUX al_411 (
    .i0(ci),
    .i1(i1[0]),
    .sel(al_401[0]),
    .o(o_0));
  AL_MUX al_412 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(al_401[1]),
    .o(o_1));
  AL_MUX al_413 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(al_401[2]),
    .o(o_2));
  AL_MUX al_414 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(al_401[3]),
    .o(o_3));
  AL_MUX al_415 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(al_401[4]),
    .o(o));

endmodule 

module lt_u8_u8
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [7:0] i0;
  input [7:0] i1;
  output o;

  wire [7:0] al_206;
  wire diff_6_7;
  wire less_6_7;
  wire less_6_7_syn_7;
  wire less_6_7_syn_10;
  wire less_6_7_syn_11;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;

  xor al_214 (al_206[0], i0[0], i1[0]);
  xor al_215 (al_206[1], i0[1], i1[1]);
  xor al_216 (al_206[2], i0[2], i1[2]);
  xor al_217 (al_206[3], i0[3], i1[3]);
  xor al_218 (al_206[4], i0[4], i1[4]);
  xor al_219 (al_206[5], i0[5], i1[5]);
  xor al_220 (al_206[6], i0[6], i1[6]);
  xor al_221 (al_206[7], i0[7], i1[7]);
  or al_222 (diff_6_7, al_206[6], al_206[7]);
  AL_MUX al_227 (
    .i0(ci),
    .i1(i1[0]),
    .sel(al_206[0]),
    .o(o_0));
  AL_MUX al_228 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(al_206[1]),
    .o(o_1));
  AL_MUX al_229 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(al_206[2]),
    .o(o_2));
  AL_MUX al_230 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(al_206[3]),
    .o(o_3));
  AL_MUX al_231 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(al_206[4]),
    .o(o_4));
  AL_MUX al_232 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(al_206[5]),
    .o(o_5));
  AL_MUX al_233 (
    .i0(o_5),
    .i1(less_6_7),
    .sel(diff_6_7),
    .o(o));
  xor less_6_7_syn_2 (less_6_7_syn_7, i0[6], i1[6]);
  AL_MUX less_6_7_syn_3 (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(less_6_7_syn_7),
    .o(less_6_7_syn_10));
  xor less_6_7_syn_4 (less_6_7_syn_11, i0[7], i1[7]);
  AL_MUX less_6_7_syn_5 (
    .i0(less_6_7_syn_10),
    .i1(i1[7]),
    .sel(less_6_7_syn_11),
    .o(less_6_7));

endmodule 

module binary_mux_s1_w1
  (
  i0,
  i1,
  sel,
  o
  );

  input i0;
  input i1;
  input sel;
  output o;


  AL_MUX al_234 (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .o(o));

endmodule 

module add_pu8_pu8_o8
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output [7:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;

  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_235 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_236 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_237 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_238 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_239 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_240 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_241 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_242 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));

endmodule 

module add_pu4_pu4_o4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [3:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;

  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_243 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_244 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_245 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_246 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));

endmodule 

module binary_decoder_3
  (
  i,
  o
  );

  input [2:0] i;
  output [7:0] o;

  wire i_syn_4;
  wire i_syn_6;
  wire i_syn_8;
  wire i_syn_12;
  wire i_syn_14;
  wire i_syn_18;
  wire i_syn_20;
  wire i_syn_24;
  wire i_syn_28;
  wire i_syn_30;
  wire i_syn_34;
  wire i_syn_38;

  not i_syn_11 (i_syn_12, i[1]);
  not i_syn_13 (i_syn_14, i[2]);
  and i_syn_15 (o[1], i_syn_14, i_syn_12, i[0]);
  not i_syn_17 (i_syn_18, i[0]);
  not i_syn_19 (i_syn_20, i[2]);
  and i_syn_21 (o[2], i_syn_20, i[1], i_syn_18);
  not i_syn_23 (i_syn_24, i[2]);
  and i_syn_25 (o[3], i_syn_24, i[1], i[0]);
  not i_syn_27 (i_syn_28, i[0]);
  not i_syn_29 (i_syn_30, i[1]);
  not i_syn_3 (i_syn_4, i[0]);
  and i_syn_31 (o[4], i[2], i_syn_30, i_syn_28);
  not i_syn_33 (i_syn_34, i[1]);
  and i_syn_35 (o[5], i[2], i_syn_34, i[0]);
  not i_syn_37 (i_syn_38, i[0]);
  and i_syn_39 (o[6], i[2], i[1], i_syn_38);
  and i_syn_41 (o[7], i[2], i[1], i[0]);
  not i_syn_5 (i_syn_6, i[1]);
  not i_syn_7 (i_syn_8, i[2]);
  and i_syn_9 (o[0], i_syn_8, i_syn_6, i_syn_4);

endmodule 

module eq_w4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output o;

  wire i0_syn_196;
  wire i0_syn_198;
  wire i0_syn_200;
  wire i0_syn_202;
  wire i0_syn_204;
  wire i0_syn_206;
  wire i0_syn_208;

  not al_248 (o, i0_syn_208);
  xor i0_syn_195 (i0_syn_196, i0[0], i1[0]);
  xor i0_syn_197 (i0_syn_198, i0[1], i1[1]);
  xor i0_syn_199 (i0_syn_200, i0[2], i1[2]);
  xor i0_syn_201 (i0_syn_202, i0[3], i1[3]);
  or i0_syn_203 (i0_syn_204, i0_syn_196, i0_syn_198);
  or i0_syn_205 (i0_syn_206, i0_syn_200, i0_syn_202);
  or i0_syn_207 (i0_syn_208, i0_syn_204, i0_syn_206);

endmodule 

module eq_w8
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output o;

  wire i0_syn_336;
  wire i0_syn_338;
  wire i0_syn_340;
  wire i0_syn_342;
  wire i0_syn_344;
  wire i0_syn_346;
  wire i0_syn_348;
  wire i0_syn_350;
  wire i0_syn_352;
  wire i0_syn_354;
  wire i0_syn_356;
  wire i0_syn_358;
  wire i0_syn_360;
  wire i0_syn_362;
  wire i0_syn_364;

  not al_250 (o, i0_syn_364);
  xor i0_syn_335 (i0_syn_336, i0[0], i1[0]);
  xor i0_syn_337 (i0_syn_338, i0[1], i1[1]);
  xor i0_syn_339 (i0_syn_340, i0[2], i1[2]);
  xor i0_syn_341 (i0_syn_342, i0[3], i1[3]);
  xor i0_syn_343 (i0_syn_344, i0[4], i1[4]);
  xor i0_syn_345 (i0_syn_346, i0[5], i1[5]);
  xor i0_syn_347 (i0_syn_348, i0[6], i1[6]);
  xor i0_syn_349 (i0_syn_350, i0[7], i1[7]);
  or i0_syn_351 (i0_syn_352, i0_syn_336, i0_syn_338);
  or i0_syn_353 (i0_syn_354, i0_syn_340, i0_syn_342);
  or i0_syn_355 (i0_syn_356, i0_syn_352, i0_syn_354);
  or i0_syn_357 (i0_syn_358, i0_syn_344, i0_syn_346);
  or i0_syn_359 (i0_syn_360, i0_syn_348, i0_syn_350);
  or i0_syn_361 (i0_syn_362, i0_syn_358, i0_syn_360);
  or i0_syn_363 (i0_syn_364, i0_syn_356, i0_syn_362);

endmodule 

module eq_w7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output o;

  wire i0_syn_366;
  wire i0_syn_368;
  wire i0_syn_370;
  wire i0_syn_372;
  wire i0_syn_374;
  wire i0_syn_376;
  wire i0_syn_378;
  wire i0_syn_380;
  wire i0_syn_382;
  wire i0_syn_384;
  wire i0_syn_386;
  wire i0_syn_388;
  wire i0_syn_390;

  not al_251 (o, i0_syn_390);
  xor i0_syn_365 (i0_syn_366, i0[0], i1[0]);
  xor i0_syn_367 (i0_syn_368, i0[1], i1[1]);
  xor i0_syn_369 (i0_syn_370, i0[2], i1[2]);
  xor i0_syn_371 (i0_syn_372, i0[3], i1[3]);
  xor i0_syn_373 (i0_syn_374, i0[4], i1[4]);
  xor i0_syn_375 (i0_syn_376, i0[5], i1[5]);
  xor i0_syn_377 (i0_syn_378, i0[6], i1[6]);
  or i0_syn_379 (i0_syn_380, i0_syn_368, i0_syn_370);
  or i0_syn_381 (i0_syn_382, i0_syn_366, i0_syn_380);
  or i0_syn_383 (i0_syn_384, i0_syn_372, i0_syn_374);
  or i0_syn_385 (i0_syn_386, i0_syn_376, i0_syn_378);
  or i0_syn_387 (i0_syn_388, i0_syn_384, i0_syn_386);
  or i0_syn_389 (i0_syn_390, i0_syn_382, i0_syn_388);

endmodule 

module lt_u4_u4
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [3:0] i0;
  input [3:0] i1;
  output o;

  wire [3:0] al_252;
  wire o_0;
  wire o_1;
  wire o_2;

  xor al_256 (al_252[0], i0[0], i1[0]);
  xor al_257 (al_252[1], i0[1], i1[1]);
  xor al_258 (al_252[2], i0[2], i1[2]);
  xor al_259 (al_252[3], i0[3], i1[3]);
  AL_MUX al_260 (
    .i0(ci),
    .i1(i1[0]),
    .sel(al_252[0]),
    .o(o_0));
  AL_MUX al_261 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(al_252[1]),
    .o(o_1));
  AL_MUX al_262 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(al_252[2]),
    .o(o_2));
  AL_MUX al_263 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(al_252[3]),
    .o(o));

endmodule 

module binary_mux_s4_w1
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i11;
  input i12;
  input i13;
  input i14;
  input i15;
  input i2;
  input i3;
  input i4;
  input i5;
  input i6;
  input i7;
  input i8;
  input i9;
  input [3:0] sel;
  output o;

  wire  al_264;
  wire  al_265;
  wire  al_266;
  wire  al_267;
  wire  al_268;
  wire  al_269;
  wire  al_270;
  wire  al_271;
  wire  al_272;
  wire  al_273;
  wire  al_274;
  wire  al_275;
  wire  al_276;
  wire  al_277;

  AL_MUX al_278 (
    .i0(al_264),
    .i1(al_265),
    .sel(sel[3]),
    .o(o));
  AL_MUX al_279 (
    .i0(al_266),
    .i1(al_267),
    .sel(sel[2]),
    .o(al_264));
  AL_MUX al_280 (
    .i0(al_268),
    .i1(al_269),
    .sel(sel[2]),
    .o(al_265));
  AL_MUX al_281 (
    .i0(al_270),
    .i1(al_271),
    .sel(sel[1]),
    .o(al_266));
  AL_MUX al_282 (
    .i0(al_272),
    .i1(al_273),
    .sel(sel[1]),
    .o(al_267));
  AL_MUX al_283 (
    .i0(al_274),
    .i1(al_275),
    .sel(sel[1]),
    .o(al_268));
  AL_MUX al_284 (
    .i0(al_276),
    .i1(al_277),
    .sel(sel[1]),
    .o(al_269));
  AL_MUX al_285 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(al_270));
  AL_MUX al_286 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(al_271));
  AL_MUX al_287 (
    .i0(i4),
    .i1(i5),
    .sel(sel[0]),
    .o(al_272));
  AL_MUX al_288 (
    .i0(i6),
    .i1(i7),
    .sel(sel[0]),
    .o(al_273));
  AL_MUX al_289 (
    .i0(i8),
    .i1(i9),
    .sel(sel[0]),
    .o(al_274));
  AL_MUX al_290 (
    .i0(i10),
    .i1(i11),
    .sel(sel[0]),
    .o(al_275));
  AL_MUX al_291 (
    .i0(i12),
    .i1(i13),
    .sel(sel[0]),
    .o(al_276));
  AL_MUX al_292 (
    .i0(i14),
    .i1(i15),
    .sel(sel[0]),
    .o(al_277));

endmodule 

module binary_mux_s3_w1
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input i0;
  input i1;
  input i2;
  input i3;
  input i4;
  input i5;
  input i6;
  input i7;
  input [2:0] sel;
  output o;

  wire  al_293;
  wire  al_294;
  wire  al_295;
  wire  al_296;
  wire  al_297;
  wire  al_298;

  AL_MUX al_299 (
    .i0(al_293),
    .i1(al_294),
    .sel(sel[2]),
    .o(o));
  AL_MUX al_300 (
    .i0(al_295),
    .i1(al_296),
    .sel(sel[1]),
    .o(al_293));
  AL_MUX al_301 (
    .i0(al_297),
    .i1(al_298),
    .sel(sel[1]),
    .o(al_294));
  AL_MUX al_302 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(al_295));
  AL_MUX al_303 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(al_296));
  AL_MUX al_304 (
    .i0(i4),
    .i1(i5),
    .sel(sel[0]),
    .o(al_297));
  AL_MUX al_305 (
    .i0(i6),
    .i1(i7),
    .sel(sel[0]),
    .o(al_298));

endmodule 

module ne_w7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output o;

  wire [6:0] al_306;

  or al_313 (o, al_306[0], al_306[1], al_306[2], al_306[3], al_306[4], al_306[5], al_306[6]);
  xor al_314 (al_306[0], i0[0], i1[0]);
  xor al_315 (al_306[1], i0[1], i1[1]);
  xor al_316 (al_306[2], i0[2], i1[2]);
  xor al_317 (al_306[3], i0[3], i1[3]);
  xor al_318 (al_306[4], i0[4], i1[4]);
  xor al_319 (al_306[5], i0[5], i1[5]);
  xor al_320 (al_306[6], i0[6], i1[6]);

endmodule 

module add_pu4_mu4_o4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [3:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_nb0;
  wire net_nb1;
  wire net_nb2;
  wire net_nb3;

  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_426 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_427 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_428 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_429 (
    .a(net_a3),
    .b(net_nb3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  not al_430 (net_nb0, net_b0);
  not al_431 (net_nb1, net_b1);
  not al_432 (net_nb2, net_b2);
  not al_433 (net_nb3, net_b3);

endmodule 

module add_pu4_mu4_o5
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [4:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_nb0;
  wire net_nb1;
  wire net_nb2;
  wire net_nb3;
  wire net_ncout;

  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[4] = net_ncout;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_416 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_417 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_418 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_419 (
    .a(net_a3),
    .b(net_nb3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  not al_420 (net_nb0, net_b0);
  not al_421 (net_nb1, net_b1);
  not al_422 (net_nb2, net_b2);
  not al_423 (net_nb3, net_b3);
  not al_424 (net_ncout, net_cout3);

endmodule 

module add_pu2_mu2_o3
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output [2:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_nb0;
  wire net_nb1;
  wire net_ncout;

  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[2] = net_ncout;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_444 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_445 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  not al_446 (net_nb0, net_b0);
  not al_447 (net_nb1, net_b1);
  not al_448 (net_ncout, net_cout1);

endmodule 

module add_pu5_pu5_o5
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output [4:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;

  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_395 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_396 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_397 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_398 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_399 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));

endmodule 

module eq_w5
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output o;

  wire i0_syn_392;
  wire i0_syn_394;
  wire i0_syn_396;
  wire i0_syn_398;
  wire i0_syn_400;
  wire i0_syn_402;
  wire i0_syn_404;
  wire i0_syn_406;
  wire i0_syn_408;

  not al_400 (o, i0_syn_408);
  xor i0_syn_391 (i0_syn_392, i0[0], i1[0]);
  xor i0_syn_393 (i0_syn_394, i0[1], i1[1]);
  xor i0_syn_395 (i0_syn_396, i0[2], i1[2]);
  xor i0_syn_397 (i0_syn_398, i0[3], i1[3]);
  xor i0_syn_399 (i0_syn_400, i0[4], i1[4]);
  or i0_syn_401 (i0_syn_402, i0_syn_392, i0_syn_394);
  or i0_syn_403 (i0_syn_404, i0_syn_398, i0_syn_400);
  or i0_syn_405 (i0_syn_406, i0_syn_396, i0_syn_404);
  or i0_syn_407 (i0_syn_408, i0_syn_402, i0_syn_406);

endmodule 

