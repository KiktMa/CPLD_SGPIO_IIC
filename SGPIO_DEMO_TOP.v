module SGPIO_DEMO_TOP(
	
    input  sys_clk      ,   //50mhz  =》20ns

	// SMBUS 读温度传感器的温度 0x4E、0x4F
    output  smb_iic_scl  ,    
    inout  smb_iic_sda  ,    
    // SGPIO_0  第一组SPGIO
	input  SCL_SGPIO_0	,
    input  SLOAD_SGPIO_0	,
    input  DATAOUT_SGPIO_0	,
    output  DATAIN_SGPIO_0	,
    // SGPIO_1  第二组SPGIO
    input  SCL_SGPIO_1		,
    input  SLOAD_SGPIO_1	,
    input  DATAOUT_SGPIO_1	,
    output  DATAIN_SGPIO_1	,
    // SAS/SATA0 磁盘连接
    output reg C_LOCATE_S0	,
    output C_ERROR_S0	,
    output reg C_ACT_S0		,
    input  ACT_S0		,
    // SAS/SATA1 磁盘连接
    output reg C_LOCATE_S1	,
    output C_ERROR_S1	,
    output reg C_ACT_S1		,
    input  ACT_S1		,
    // SAS/SATA2 磁盘连接
    output reg C_LOCATE_S2	,
    output C_ERROR_S2	,
    output reg C_ACT_S2		,
    input  ACT_S2		,
    // SAS/SATA3 磁盘连接
    output reg C_LOCATE_S3	,
    output C_ERROR_S3	,
    output reg C_ACT_S3		,
    input  ACT_S3		,
    // SAS/SATA4 磁盘连接
    output reg C_LOCATE_S4	,
    output C_ERROR_S4	,
    output reg C_ACT_S4		,
    input  ACT_S4		,
    // SAS/SATA5 磁盘连接
    output reg C_LOCATE_S5	,
    output C_ERROR_S5	,
    output reg C_ACT_S5		,
    input  ACT_S5		,
    // SAS/SATA6 磁盘连接
    output reg C_LOCATE_S6	,
    output C_ERROR_S6	,
    output reg C_ACT_S6		,
    input  ACT_S6		,
    // SAS/SATA7 磁盘连接
    output reg C_LOCATE_S7	,
    output C_ERROR_S7	,
    output reg C_ACT_S7		,
    input  ACT_S7	
);

	wire 	[7:0] read_data;
    reg 	[7:0] pwm_control;
	wire    rdy_1;     // 第一个模块的0总线忙1空闲
	wire    rdy_2;     // 第二个模块的0总线忙1空闲

   	reg [1:0] device_sel_reg = 2'b00; // 内部寄存器存储 device_sel
	reg [15:0] poll_counter = 16'd0;  // 轮询计数器，用于控制切换频率
    reg start_write_signel;
    reg [15:0]  	rst_cnt=0;
    wire        	rst_n;
    
    // 1ms复位一次
    always @(posedge sys_clk) begin
        if(rst_cnt == 16'd9999) begin
            rst_cnt <= rst_cnt;
        end
        else begin
            rst_cnt <= rst_cnt + 1;
        end
    end
    
    assign rst_n = (rst_cnt == 16'd9999) ? 1 : 0;
    
	// 实例化 sgpio_controller 模块
    wire [23:0] sgpio_0_data_out; // SGPIO_0组 信号输出 (4 个硬盘)
    wire [23:0] sgpio_1_data_out;  // SGPIO_1组 信号输出 (4 个硬盘)
	wire [11:0] sgpio_0_data_out_local; // SGPIO_0组 信号输出 (4 个硬盘)
    wire [11:0] sgpio_1_data_out_local;  // SGPIO_1组 信号输出 (4 个硬盘)
    // 实例化模块
    SGPIO_Controller_Slave uut (
        .clk				(sys_clk),
        .rest_n				(rst_n),
        .SCL_SGPIO_0		(SCL_SGPIO_0),
        .SLOAD_SGPIO_0		(SLOAD_SGPIO_0),
        .DATAOUT_SGPIO_0	(DATAOUT_SGPIO_0),
        .DATAIN_SGPIO_0		(DATAIN_SGPIO_0),
        .SCL_SGPIO_1		(SCL_SGPIO_1),
        .SLOAD_SGPIO_1		(SLOAD_SGPIO_1),
        .DATAOUT_SGPIO_1	(DATAOUT_SGPIO_1),
        .DATAIN_SGPIO_1		(DATAIN_SGPIO_1),
        .sgpio_0_data_out	(sgpio_0_data_out),
        .sgpio_1_data_out	(sgpio_1_data_out),
        .sgpio_0_data_out_local	(sgpio_0_data_out_local),
        .sgpio_1_data_out_local	(sgpio_1_data_out_local)
    );

    parameter TRANSMIT_INTERVAL = 250_000_000; // 传输间隔 (0.25 秒)

    // 内部信号
    reg [26:0] clk_counter = 27'd0;       // 计数器 (最多计数到 12,500,000)
    reg transmit_trigger;         // 传输触发信号
	reg start_signal;
    
    reg            rw_flag_b = 1'b0; // iic读或写
    wire             rw_flag; // iic读或写
    // 分频计数器逻辑
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_counter <= 0;
            transmit_trigger <= 0;
        end else begin
            if (clk_counter == (TRANSMIT_INTERVAL / 20 - 1)) begin
                clk_counter <= 0; // 计数器清零
                transmit_trigger <= ~transmit_trigger; // 翻转触发信号
                rw_flag_b <= ~rw_flag_b;
            end else begin
                clk_counter <= clk_counter + 1;
            end
        end
    end
    
    assign rw_flag = rw_flag_b;
    
    // 自动轮询逻辑
	always @(posedge sys_clk or negedge rst_n) begin
    	if (!rst_n) begin
        	device_sel_reg <= 2'b00; // 复位时默认选择 0x4E
        	poll_counter <= 16'd0;   // 复位轮询计数器
            start_signal <= 1'b0;
    	end else begin
        	// 计数器递增
        	if (poll_counter == 16'd49) begin // 每隔 2us 切换一次
            	poll_counter <= 16'd0;          // 重置计数器
            	device_sel_reg <= device_sel_reg + 1'b1; // 切换 device_sel
                start_signal <= ~start_signal;
        	end else begin
            	poll_counter <= poll_counter + 1; // 继续计数	
        	end
    	end
	end

	assign device_sel = device_sel_reg; // 将寄存器输出到 device_sel
    
    // 根据 device_sel 动态生成从设备地址
    reg [7:0] reg_addr_adt;
    always @(*) begin
        case (device_sel)
            2'd0: reg_addr_adt = 8'h32; 
            2'd1: reg_addr_adt = 8'h33; 
            2'd2: reg_addr_adt = 8'h34; 
            2'd3: reg_addr_adt = 8'h35; 
            default: reg_addr_adt = 8'h32;
        endcase
    end
    
    reg [6:0] device_addr;
    reg [7:0] device_reg_addr;
    
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            device_addr <= 0;
            device_reg_addr <= 0;
        end else begin
            if (rw_flag) begin
                device_addr <= 7'b1001111;
                device_reg_addr <= 8'h00;
            end else begin
                device_addr <= 7'b0101100;
                device_reg_addr <= reg_addr_adt;
            end
        end
    end

    
    // 数据传输逻辑
    always @(*) begin
    	if (transmit_trigger) begin
            //更新输出信号
            C_LOCATE_S0 <= sgpio_0_data_out_local[10];
    		C_LOCATE_S1 <= sgpio_0_data_out_local[7];
    		C_LOCATE_S2 <= sgpio_0_data_out_local[4];
    		C_LOCATE_S3 <= sgpio_0_data_out_local[1];
    		
    		// 第二组SGPIO
    		C_LOCATE_S4 <= sgpio_1_data_out_local[10];
    		C_LOCATE_S5 <= sgpio_1_data_out_local[7];
    		C_LOCATE_S6 <= sgpio_1_data_out_local[4];
    		C_LOCATE_S7 <= sgpio_1_data_out_local[1];
            
            C_ACT_S0 <= ~sgpio_0_data_out[23];
    		C_ACT_S1 <= ~sgpio_0_data_out[20];
    		C_ACT_S2 <= ~sgpio_0_data_out[17];
    		C_ACT_S3 <= ~sgpio_0_data_out[14];
    		
    		// 第二组SGPIO
    		C_ACT_S4 <= ~sgpio_1_data_out[23];
    		C_ACT_S5 <= ~sgpio_1_data_out[20];
    		C_ACT_S6 <= ~sgpio_1_data_out[17];
    		C_ACT_S7 <= ~sgpio_1_data_out[14];
        end else begin
        	//更新输出信号
            C_LOCATE_S0 <= sgpio_0_data_out_local[10] & ~sgpio_0_data_out_local[10];
    		C_LOCATE_S1 <= sgpio_0_data_out_local[7] & ~sgpio_0_data_out_local[7];
    		C_LOCATE_S2 <= sgpio_0_data_out_local[4] & ~sgpio_0_data_out_local[4];
    		C_LOCATE_S3 <= sgpio_0_data_out_local[1] & ~sgpio_0_data_out_local[1];
    		
    		// 第二组SGPIO
    		C_LOCATE_S4 <= sgpio_1_data_out_local[10] & ~sgpio_1_data_out_local[10];
    		C_LOCATE_S5 <= sgpio_1_data_out_local[7] & ~sgpio_1_data_out_local[7];
    		C_LOCATE_S6 <= sgpio_1_data_out_local[4] & ~sgpio_1_data_out_local[4];
    		C_LOCATE_S7 <= sgpio_1_data_out_local[1] & ~sgpio_1_data_out_local[1];
        end
    end

    // 第一组SGPIO
//    assign C_ACT_S0 = ~sgpio_0_data_out[11];
    assign C_ERROR_S0 = sgpio_0_data_out[21];
    
//    assign C_ACT_S1 = ~sgpio_0_data_out[8];
    assign C_ERROR_S1 = sgpio_0_data_out[18];
    
//    assign C_ACT_S2 = ~sgpio_0_data_out[5];
    assign C_ERROR_S2 = sgpio_0_data_out[15];
    
//    assign C_ACT_S3 = ~sgpio_0_data_out[2];
    assign C_ERROR_S3 = sgpio_0_data_out[12];
    
    // 第二组SGPIO
//    assign C_ACT_S4 = ~sgpio_1_data_out[11];
    assign C_ERROR_S4 = sgpio_1_data_out[21];
    
//    assign C_ACT_S5 = ~sgpio_1_data_out[8];
    assign C_ERROR_S5 = sgpio_1_data_out[18];
    
//    assign C_ACT_S6 = ~sgpio_1_data_out[5];
    assign C_ERROR_S6 = sgpio_1_data_out[15];
    
//    assign C_ACT_S7 = ~sgpio_1_data_out[2];
    assign C_ERROR_S7 = sgpio_1_data_out[12];
    
    parameter   FCLK                =       50_000_000 ;//系统时钟频率，默认100MHz。    
    parameter   FSCL                =       250_000    ;//IIC时钟频率，默认400KHz。    
    parameter   REG_ADDR_BYTE_NUM   =       1          ;//寄存器地址字节数，最小值为1；    
    parameter   DATA_BYTE_NUM       =       1          ;//读写数据字节数，最小值为1.
    
    wire        [REG_ADDR_BYTE_NUM*8-1 : 0] reg_addr;
    assign		reg_addr = device_reg_addr;
    
    wire        [DATA_BYTE_NUM*8-1 : 0]     wdata;
    assign		wdata = pwm_control;
    
    wire        [DATA_BYTE_NUM*8-1 : 0]     rdata;
    wire                                    rdata_vld;
    wire                                    ack_flag;
    
    //例化IIC接口驱动模块；    
    i2c_master #(
    	.FCLK               ( FCLK              ),//系统时钟频率，默认100MHz。        
    	.FSCL               ( FSCL              ),//IIC时钟频率，默认400KHz。        
    	.REG_ADDR_BYTE_NUM  ( REG_ADDR_BYTE_NUM ),//寄存器地址字节数；        
    	.DATA_BYTE_NUM      ( DATA_BYTE_NUM     ) //读写数据字节数
    ) u_iic_drive (        
    	.clk        ( sys_clk       ),//系统时钟信号；
    	.rst_n      ( rst_n         ),//系统复位信号，低电平有效；        
    	.start      ( start_signal 	),//开始进行读写操作；        
    	.rw_flag    ( rw_flag       ),//读写标志信号，高电平表示读操作，低电平表示写操作；  
        .device_addr( device_addr	),      
    	.reg_addr   ( reg_addr      ),//寄存器地址,读写操作时共用的地址信号；        
    	.wdata      ( wdata         ),//写数据；        
    	.rdata      ( rdata		    ),//读数据信号；        
    	.rdata_vld  ( rdata_vld     ),//读数据输出使能信号，高电平有效；        
    	.rdy        ( rdy_2         ),//模块忙闲指示信号，位高电平时可以接收上游模块的读写使能信号；        
    	.scl        ( smb_iic_scl	),//IIC的时钟信号；
    	.sda        ( smb_iic_sda  ),//IIC的双向数据信号；
    	.ack_flag   ( ack_flag      ) //高电平表示应答失败；
    );
    
    function [7:0] calculate_pwm(input [7:0] temp_data_4E);
        reg [7:0] pwm_value;
        begin
            pwm_value = 0;
            // 示例逻辑：根据温度调整 PWM 输出
            if (temp_data_4E > 8'h80) begin
                pwm_value = 8'hFF; // 高速风扇
            end else if (temp_data_4E > 8'h28) begin
                pwm_value = 8'hA0; // 中速风扇
            end else begin
                pwm_value = 8'h00; // 低速风扇
            end
            calculate_pwm = pwm_value;
        end
    endfunction
    
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
        pwm_control <= 0;
        end else if (transmit_trigger) begin
            //更新输出信号
            pwm_control = calculate_pwm(rdata[7:0]);
        end
    end

endmodule
