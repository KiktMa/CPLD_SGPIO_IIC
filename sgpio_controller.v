module sgpio_controller #(
    parameter CLK_FREQ = 50_000_000, // 系统时钟频率
    parameter SCLK_FREQ = 100_000,    // SGPIO时钟频率
    parameter SGPIO_WIDTH = 12,      // SGPIO 数据宽度、
    parameter SGPIO_BIT_WIDTH = 12,   // SGPIO 每次传输的位宽
    parameter SGPIO_CYCLE_BIT = 4    // LOAD 计数器位宽
)(
    input wire sys_clk,                  // 系统时钟
    input wire reset_n,              // 异步复位信号，低电平有效
    input wire i_sample_clk,          // 采样时钟
    output wire scl_sgpio_0,          // SClock信号 (SGPIO_0)
    output wire sload_sgpio_0,        // SLoad信号 (SGPIO_0)
    output wire sdata_out_0,          // SDataOut信号 (SGPIO_0)
    input wire sdata_in_0,           // SDataIn信号 (SGPIO_0)
    output wire scl_sgpio_1,          // SClock信号 (SGPIO_1)
    output wire sload_sgpio_1,        // SLoad信号 (SGPIO_1)
    output wire sdata_out_1,          // SDataOut信号 (SGPIO_1)
    input wire sdata_in_1,           // SDataIn信号 (SGPIO_1)
    output reg [11:0] out_data_0,       // Locate信号 (8个硬盘)
    output reg [11:0] out_data_1        // Error信号 (8个硬盘)
);

    // 参数计算
    localparam DIVIDER = (CLK_FREQ / SCLK_FREQ)/2; // 分频系数
    reg [8:0] clk_counter_0;  // 分频计数器 (SGPIO_0)
    reg [8:0] clk_counter_1;  // 分频计数器 (SGPIO_1)
    // 内部寄存器
    reg [11:0] recevice_sdata_0;					  // 接收来自sdatain0的数据
    reg [11:0] recevice_sdata_1;					  // 接收来自sdatain1的数据
    reg [11:0] sgpio_bit_cnt_0;				  
    reg [11:0] sgpio_bit_cnt_1;
    wire sgpio_act_flg_0;               // SGPIO_0活动标志信号
    wire sgpio_act_flg_1;               // SGPIO_0活动标志信号
    reg scl_sgpio_0_reg;
    reg scl_sgpio_1_reg;
    reg [2:0] state_0;
    reg [2:0] next_state_0;
    reg [2:0] state_1;
    reg [2:0] next_state_1;
    
    //  SGPIO_0
    reg [11:0] sgpio_bitw_d_0;
    reg [SGPIO_WIDTH-1:0] receive_data_d_0, receive_data_q_0; // 接收数据寄存器
    reg sgpio_load_d_0, sgpio_load_q_0;   // LOAD 信号寄存器
    wire o_data_out_0;
    wire sgpio_load_pose_0, sgpio_load_nege_0; // LOAD 上升沿和下降沿检测
    reg [3:0] sgpio_load_count_0; // LOAD 计数器
    reg orcrtl_flg_0;                   // 状态机控制标志
    reg sgpio_load_n_0;
    wire iwr_enable_0;				  // 写使能
    assign iwr_enable_0 = 1'b1;
    reg iwcrtl_flg_0;
    reg [SGPIO_BIT_WIDTH-1:0] data_out1_0, data_out2_0; // DO输出数据寄存器
    
    
    //  SGPIO_1
    reg [11:0] sgpio_bitw_d_1;
    reg [SGPIO_WIDTH-1:0] receive_data_d_1, receive_data_q_1; // 接收数据寄存器
    reg sgpio_load_d_1, sgpio_load_q_1;   // LOAD 信号寄存器
    wire o_data_out_1;
    wire sgpio_load_pose_1, sgpio_load_nege_1; // LOAD 上升沿和下降沿检测
    reg [3:0] sgpio_load_count_1; // LOAD 计数器
    reg orcrtl_flg_1;                   // 状态机控制标志
    reg sgpio_load_n_1;
    wire iwr_enable_1;				  // 写使能
    assign iwr_enable_1 = 1'b1;
    reg iwcrtl_flg_1;
    reg [SGPIO_BIT_WIDTH-1:0] data_out1_1, data_out2_1; // DO输出数据寄存器
    
    
    // 状态
    localparam IDLE = 3'b000;         // 空闲状态
    localparam CYCLE_START = 3'b001;  // 周期开始状态
    localparam CYCLE_VALID = 3'b010;  // 数据有效状态
    localparam CYCLE_END = 3'b011;    // 周期结束状态
    localparam CYCLE_STOP = 3'b100;   // 停止状态
    
    /**
    	SGPIO_0总线部分
    */
	// 生成SGPIO_0的100khz时钟
	always @(posedge sys_clk or negedge reset_n) begin
    	if (!reset_n || state_0 == IDLE) begin
        	clk_counter_0 <= 0;
        	scl_sgpio_0_reg <= 1;
    	end else begin
        	// 参数化分频逻辑
        	if (clk_counter_0 == DIVIDER - 1) begin
            	clk_counter_0 <= 0;
            	scl_sgpio_0_reg <= ~scl_sgpio_0_reg;
        	end else begin
            	clk_counter_0 <= clk_counter_0 + 1;
        	end
    	end
	end
    
    assign scl_sgpio_0 = scl_sgpio_0_reg;
    
    
    // 检测SGPIO_0总线状态
    always@(posedge scl_sgpio_0 or negedge reset_n)begin
		if(!reset_n)
			sgpio_bit_cnt_0 <= 12'h000;
		else if(i_sample_clk)
			sgpio_bit_cnt_0 <= {sgpio_bit_cnt_0[10:0] , scl_sgpio_0};
		else
			sgpio_bit_cnt_0 <= sgpio_bit_cnt_0;
	end

	assign sgpio_act_flg_0 = (sgpio_bit_cnt_0 == 12'hfff || sgpio_bit_cnt_0 == 12'h000) ? 1'b0 : 1'b1;
    
    // 捕获LOAD_0信号
    always @(posedge scl_sgpio_0 or negedge reset_n) begin
        if (!reset_n) begin
            sgpio_load_d_0 <= 1'b1;
            sgpio_load_q_0 <= 1'b1;
        end else begin
            sgpio_load_d_0 <= sload_sgpio_0;
            sgpio_load_q_0 <= sgpio_load_d_0;
        end
    end

    assign sgpio_load_pose_0 = (sgpio_load_d_0 && ~sgpio_load_q_0);
    assign sgpio_load_nege_0 = (sgpio_load_q_0 && ~sgpio_load_d_0);
    
    // 获取SGPIO_0位宽逻辑块
	always@(negedge scl_sgpio_0 or negedge reset_n)begin
		if(!reset_n || sgpio_load_pose_0)
			sgpio_bitw_d_0 <= {12'h000};
		else if(!sgpio_load_pose_0)
			sgpio_bitw_d_0 <= sgpio_bitw_d_0 + 1'b1;
		else
			sgpio_bitw_d_0 <= sgpio_bitw_d_0;
	end

	// 采样并获取DI_0的数据
    always @(negedge scl_sgpio_0 or negedge reset_n) begin
        if (!reset_n) begin
            receive_data_d_0 <= {SGPIO_WIDTH{1'b0}};
            receive_data_q_0 <= {SGPIO_WIDTH{1'b0}};
        end else begin
            if (!sgpio_load_pose_0)
                receive_data_d_0 <= {sdata_in_0, receive_data_d_0[SGPIO_WIDTH - 1'b1 : 1]};
            else
                receive_data_q_0 <= {sdata_in_0, receive_data_d_0[SGPIO_WIDTH - 1'b1 : 1]};
        end
    end
    
    always @(posedge scl_sgpio_0 or negedge reset_n) begin
        if (!reset_n)
            out_data_0 <= {SGPIO_WIDTH{1'b0}};
        else
            out_data_0 <= sgpio_act_flg_0 ? receive_data_q_0 : {SGPIO_WIDTH{1'b0}};
    end
    	
    // LOAD_0逻辑块
    always@(posedge scl_sgpio_0 or negedge reset_n)begin
		if(!reset_n || state_0 == IDLE || (state_0 == CYCLE_END && orcrtl_flg_0 == 1'b0) ) begin
			sgpio_load_count_0 	<= {(SGPIO_CYCLE_BIT + 1'b1){1'b0}};
		end
		else if(sgpio_load_count_0 == (SGPIO_BIT_WIDTH - 1'b1))begin
			sgpio_load_count_0 	<= {(SGPIO_CYCLE_BIT + 1'b1){1'b0}};
		end
		else begin
			sgpio_load_count_0 <= sgpio_load_count_0 + 1'b1;
		end	
	end


	always@(posedge sys_clk or negedge reset_n)begin
		if(!reset_n || state_0 == IDLE || state_0 == CYCLE_STOP) begin
			sgpio_load_n_0 <= 1'b1;
		end
		else if(sgpio_load_count_0 == 8'd23)begin
			sgpio_load_n_0 <= 1'b1;
		end
		else begin
			sgpio_load_n_0 <= 1'b0;
		end	
	end
    
    // SGPIO_0状态机
    always@(posedge sys_clk or negedge reset_n)begin
		if(!reset_n)
			state_0 <= IDLE;
		else
			state_0 <= next_state_0;
	end

	always@(*)begin
		case(state_0)
		
			IDLE : begin
				if(iwr_enable_0 == 1'b1)
					next_state_0 <= CYCLE_START;
				else
					next_state_0 <= IDLE;
			end
			
			CYCLE_START : begin
				if(sgpio_load_count_0 == (SGPIO_BIT_WIDTH - 1'b1))
					next_state_0 <= CYCLE_VALID;
				else
					next_state_0 <= CYCLE_START;
			end
	
			CYCLE_VALID : begin
				if(iwcrtl_flg_0 == 1'b1)
					next_state_0 <= CYCLE_VALID;
				else
					next_state_0 <= CYCLE_END;		
			end
			
			CYCLE_END : begin
				if(orcrtl_flg_0 == 1'b1)
					next_state_0 <= CYCLE_END;
				else
					next_state_0 <= CYCLE_STOP;			
			end
			
			CYCLE_STOP : begin
				if(sgpio_load_count_0 == (SGPIO_BIT_WIDTH - 1'b1))
					next_state_0 <= IDLE;
				else
					next_state_0 <= CYCLE_STOP;
			end
			
			default : begin
				next_state_0 <= IDLE;
			end	
	
		endcase
	end
    
	always@(posedge sys_clk or negedge reset_n)begin
		if(!reset_n || state_0 == IDLE)
			orcrtl_flg_0 <= 1'b0;
		else if(state_0 == CYCLE_END || state_0 == CYCLE_STOP)begin
			if(sgpio_load_count_0 == (SGPIO_BIT_WIDTH - 1'b1))
				orcrtl_flg_0 <= 1'b0;
			else
				orcrtl_flg_0 <= 1'b1;
		end
		else
			orcrtl_flg_0 <= 1'b1;
	end
    
    // DO_0输出数据
    always@(negedge scl_sgpio_0 or negedge reset_n)begin
		if(!reset_n) begin
			data_out1_0 <= {SGPIO_BIT_WIDTH{1'b0}};
			data_out2_0 <= {SGPIO_BIT_WIDTH{1'b0}};
		end
		else if(!sgpio_load_n_0)begin
			data_out1_0 <= {data_out1_0[SGPIO_BIT_WIDTH - 2 : 0] , sdata_in_0};
		end
		else begin
			data_out2_0 <= {data_out1_0[SGPIO_BIT_WIDTH - 1 : 1] , sdata_in_0};
		end	
	end
    
    /**
    	SGPIO_1总线部分
    */
    // 生成SGPIO_1的100khz信号
  	always @(posedge sys_clk or negedge reset_n) begin
    	if (!reset_n || state_1 == IDLE) begin
        	clk_counter_1 <= 0;
        	scl_sgpio_1_reg <= 1;
    	end else begin
        	// 参数化分频逻辑
        	if (clk_counter_1 == DIVIDER - 1) begin
            	clk_counter_1 <= 0;
            	scl_sgpio_1_reg <= ~scl_sgpio_1_reg;
        	end else begin
            	clk_counter_1 <= clk_counter_1 + 1;
        	end
    	end
	end
    
    // 检测SGPIO_1总线状态
    always@(posedge scl_sgpio_1 or negedge reset_n)begin
		if(!reset_n)
			sgpio_bit_cnt_1 <= 12'h000;
		else if(scl_sgpio_1)
			sgpio_bit_cnt_1 <= {sgpio_bit_cnt_1[10:0] , scl_sgpio_1};
		else
			sgpio_bit_cnt_1 <= sgpio_bit_cnt_1;
	end

	assign sgpio_act_flg_1 = (sgpio_bit_cnt_1 == 12'hfff || sgpio_bit_cnt_1 == 12'h000) ? 1'b0 : 1'b1;
    
    // 捕获LOAD_1信号
    always @(posedge scl_sgpio_1 or negedge reset_n) begin
        if (!reset_n) begin
            sgpio_load_d_1 <= 1'b1;
            sgpio_load_q_1 <= 1'b1;
        end else begin
            sgpio_load_d_1 <= sload_sgpio_1;
            sgpio_load_q_1 <= sgpio_load_d_1;
        end
    end

    assign sgpio_load_pose_1 = (sgpio_load_d_1 && ~sgpio_load_q_1);
    assign sgpio_load_nege_1 = (sgpio_load_q_1 && ~sgpio_load_d_1);
    
    // 获取SGPIO_1位宽逻辑块
	always@(negedge scl_sgpio_1 or negedge reset_n)begin
		if(!reset_n || sgpio_load_pose_1)
			sgpio_bitw_d_1 <= {12'h000};
		else if(!sgpio_load_pose_1)
			sgpio_bitw_d_1 <= sgpio_bitw_d_1 + 1'b1;
		else
			sgpio_bitw_d_1 <= sgpio_bitw_d_1;
	end

	// 采样并获取DI_1的数据
    always @(negedge scl_sgpio_1 or negedge reset_n) begin
        if (!reset_n) begin
            receive_data_d_1 <= {SGPIO_WIDTH{1'b0}};
            receive_data_q_1 <= {SGPIO_WIDTH{1'b0}};
        end else begin
            if (!sgpio_load_pose_1)
                receive_data_d_1 <= {sdata_in_1, receive_data_d_1[SGPIO_WIDTH - 1'b1 : 1]};
            else
                receive_data_q_1 <= {sdata_in_1, receive_data_d_1[SGPIO_WIDTH - 1'b1 : 1]};
        end
    end
	
    // LOAD_1逻辑块
    always @(posedge scl_sgpio_1 or negedge reset_n) begin
        if (!reset_n)
            out_data_1 <= {SGPIO_WIDTH{1'b0}};
        else
            out_data_1 <= sgpio_act_flg_1 ? receive_data_q_1 : {SGPIO_WIDTH{1'b0}};
    end
    
    always@(posedge scl_sgpio_0 or negedge reset_n)begin
		if(!reset_n || state_1 == IDLE || (state_1 == CYCLE_END && orcrtl_flg_1 == 1'b0) ) begin
			sgpio_load_count_1 	<= {(SGPIO_CYCLE_BIT + 1'b1){1'b0}};
		end
		else if(sgpio_load_count_1 == (SGPIO_BIT_WIDTH - 1'b1))begin
			sgpio_load_count_1 	<= {(SGPIO_CYCLE_BIT + 1'b1){1'b0}};
		end
		else begin
			sgpio_load_count_1 <= sgpio_load_count_1 + 1'b1;
		end	
	end


	always@(posedge sys_clk or negedge reset_n)begin
		if(!reset_n || state_1 == IDLE || state_1 == CYCLE_STOP) begin
			sgpio_load_n_1 <= 1'b1;
		end
		else if(sgpio_load_count_1 == 8'd23)begin
			sgpio_load_n_1 <= 1'b1;
		end
		else begin
			sgpio_load_n_1 <= 1'b0;
		end	
	end
    
    
    //SGPIO_1状态机
    always@(posedge sys_clk or negedge reset_n)begin
		if(!reset_n)
			state_1 <= IDLE;
		else
			state_1 <= next_state_1;
	end

	always@(*)begin
		case(state_1)
		
			IDLE : begin
				if(iwr_enable_1 == 1'b1)
					next_state_1 <= CYCLE_START;
				else
					next_state_1 <= IDLE;
			end
			
			CYCLE_START : begin
				if(sgpio_load_count_1 == (SGPIO_BIT_WIDTH - 1'b1))
					next_state_1 <= CYCLE_VALID;
				else
					next_state_1 <= CYCLE_START;
			end
	
			CYCLE_VALID : begin
				if(iwcrtl_flg_1 == 1'b1)
					next_state_1 <= CYCLE_VALID;
				else
					next_state_1 <= CYCLE_END;		
			end
			
			CYCLE_END : begin
				if(orcrtl_flg_1 == 1'b1)
					next_state_1 <= CYCLE_END;
				else
					next_state_1 <= CYCLE_STOP;			
			end
			
			CYCLE_STOP : begin
				if(sgpio_load_count_1 == (SGPIO_BIT_WIDTH - 1'b1))
					next_state_1 <= IDLE;
				else
					next_state_1 <= CYCLE_STOP;
			end
			
			default : begin
				next_state_1 <= IDLE;
			end	
	
		endcase
	end
    
	always@(posedge sys_clk or negedge reset_n)begin
		if(!reset_n || state_1 == IDLE)
			orcrtl_flg_1 <= 1'b0;
		else if(state_1 == CYCLE_END || state_1 == CYCLE_STOP)begin
			if(sgpio_load_count_1 == (SGPIO_BIT_WIDTH - 1'b1))
				orcrtl_flg_1 <= 1'b0;
			else
				orcrtl_flg_1 <= 1'b1;
		end
		else
			orcrtl_flg_1 <= 1'b1;
	end
    
    // DO_1输出数据
    always@(negedge scl_sgpio_1 or negedge reset_n)begin
		if(!reset_n) begin
			data_out1_1 <= {SGPIO_BIT_WIDTH{1'b0}};
			data_out2_1 <= {SGPIO_BIT_WIDTH{1'b0}};
		end
		else if(!sgpio_load_n_1)begin
			data_out1_1 <= {data_out1_1[SGPIO_BIT_WIDTH - 2 : 0] , sdata_in_1};
		end
		else begin
			data_out2_1 <= {data_out1_1[SGPIO_BIT_WIDTH - 1 : 1] , sdata_in_1};
		end	
	end
endmodule