module SGPIO_Controller_Slave (
    input wire clk,          // 系统时钟
    input wire rest_n,
    // 第一组SGPIO输入
    input wire SCL_SGPIO_0,
    input wire SLOAD_SGPIO_0,
    input wire DATAOUT_SGPIO_0,
    output wire DATAIN_SGPIO_0,
    // 第二组SGPIO输入
    input wire SCL_SGPIO_1,
    input wire SLOAD_SGPIO_1,
    input wire DATAOUT_SGPIO_1,
    output wire DATAIN_SGPIO_1,
    // 输出控制信号
    output reg [23:0] sgpio_0_data_out, // SGPIO_0组 信号输出 (12 个硬盘)
    output reg [23:0] sgpio_1_data_out,  // SGPIO_1组 信号输出 (12 个硬盘)
    output reg [11:0] sgpio_0_data_out_local, // SGPIO_0组 信号输出 (12 个硬盘)
    output reg [11:0] sgpio_1_data_out_local,  // SGPIO_1组 信号输出 (12 个硬盘)
    output reg   data_valid,   // 数据有效标志
    output reg   data_valid1  // 数据有效标志
);

    // 内部寄存器定义
    reg [23:0] data_buffer_0 = 24'd0; // 第一组数据缓冲区
    reg [23:0] data_buffer_1 = 24'd0; // 第二组数据缓冲区
    reg [4:0] bit_count_0 = 5'd0;     // 第一组位计数器
    reg [4:0] bit_count_1 = 5'd0;     // 第二组位计数器
    
    // 内部寄存器定义
    reg [11:0] data_buffer_0_local = 12'd0; // 第一组数据缓冲区
    reg [11:0] data_buffer_1_local = 12'd0; // 第二组数据缓冲区
    reg [3:0] bit_count_0_local = 4'd0;     // 第一组位计数器
    reg [3:0] bit_count_1_local = 4'd0;     // 第二组位计数器
    
    // 第一组SGPIO解析逻辑
    always @(negedge SCL_SGPIO_0 or negedge rest_n) begin
        if (!rest_n) begin
            bit_count_0 <= 5'd0; // 重置位计数器
            data_buffer_0 <= 24'd0; // 清空数据缓冲区
//            sgpio_0_data_out <= 24'd0;
        end else
            if (bit_count_0 < 5'd23) begin
                data_buffer_0 <= {data_buffer_0[22:0], DATAOUT_SGPIO_0}; // 移位存储数据
                bit_count_0 <= bit_count_0 + 1;
            end else 
                // 解析完成，更新灯状态
                if (bit_count_0 == 5'd23 && SLOAD_SGPIO_0) begin
            		sgpio_0_data_out <= {data_buffer_0[22:0], DATAOUT_SGPIO_0};
                    bit_count_0 <= 5'd0; // 重置位计数器
            		data_buffer_0 <= 24'd0;
        		end
    end

    // 第二组SGPIO解析逻辑
    always @(negedge SCL_SGPIO_1 or negedge rest_n) begin
        if (!rest_n) begin
            bit_count_1 <= 5'd0; // 重置位计数器
            data_buffer_1 <= 24'd0; // 清空数据缓冲区
//            sgpio_1_data_out <= 24'd0;
        end else
            if (bit_count_1 < 5'd23) begin
                data_buffer_1 <= {data_buffer_1[22:0], DATAOUT_SGPIO_1}; // 移位存储数据
                bit_count_1 <= bit_count_1 + 1;
            end else
                // 解析完成，更新灯状态
                if (bit_count_1 == 5'd23 && SLOAD_SGPIO_1) begin
            		sgpio_1_data_out <= {data_buffer_1[22:0], DATAOUT_SGPIO_1};
                    bit_count_1 <= 5'd0; // 重置位计数器
            		data_buffer_1 <= 24'd0;
        		end
    end
    
    // 第一组SGPIO LOCAL解析逻辑
    always @(negedge SCL_SGPIO_0 or negedge rest_n) begin
        if (!rest_n/* || start_new_cycle*/) begin
            bit_count_0_local <= 4'd0; // 重置位计数器
            data_buffer_0_local <= 12'd0; // 清空数据缓冲区
            sgpio_0_data_out_local <= 12'd0;
        end else
            if (bit_count_0_local < 4'd11 && (~SLOAD_SGPIO_0)) begin
                data_buffer_0_local <= {data_buffer_0_local[10:0], DATAOUT_SGPIO_0}; // 移位存储数据
                bit_count_0_local <= bit_count_0_local + 1;
            end else 
                // 解析完成，更新灯状态
                if (bit_count_0_local == 4'd11 && SLOAD_SGPIO_0) begin
            		sgpio_0_data_out_local <= {data_buffer_0_local[10:0], DATAOUT_SGPIO_0};
                    bit_count_0_local <= 4'd0; // 重置位计数器
            		data_buffer_0_local <= 12'd0; // 清空数据缓冲区
        		end
    end
    
//    always @(negedge SCL_SGPIO_1 or negedge rest_n) begin
//        if (!rest_n/* || start_new_cycle*/) begin
//            bit_count_1_local <= 4'd0; // 重置位计数器
//            data_buffer_1_local <= 12'd0; // 清空数据缓冲区
//            sgpio_1_data_out_local <= 12'd0;
//        end else
//            if (bit_count_1_local < 4'd11 && (~SLOAD_SGPIO_1)) begin
//                data_buffer_1_local <= {data_buffer_1_local[10:0], DATAOUT_SGPIO_1}; // 移位存储数据
//                bit_count_1_local <= bit_count_1_local + 1;
//            end else 
//                // 解析完成，更新灯状态
//                if (bit_count_1_local == 4'd11 && SLOAD_SGPIO_1) begin
//            		sgpio_1_data_out_local <= {data_buffer_1_local[10:0], DATAOUT_SGPIO_1};
//                    bit_count_1_local <= 4'd0; // 重置位计数器
//            		data_buffer_1_local <= 12'd0; // 清空数据缓冲区
//        		end
//    end

    
    reg [3:0] bit_count = 4'd0;     // 位计数器，0-11
    reg [3:0] bit_count1 = 4'd0;     // 位计数器，0-11

//    always @(negedge SCL_SGPIO_0) begin
//        // 每个时钟下降沿采集一位数据
//        data_buffer_0_local <= {data_buffer_0_local[10:0], DATAOUT_SGPIO_0};
//        // 更新位计数器
//        if (bit_count == 4'd11) begin
//            bit_count <= 4'd0;
//        end else begin
//            bit_count <= bit_count + 1;
//        end
        
//        // 在sload上升沿锁存数据并置位有效标志
//        if (SLOAD_SGPIO_0 && bit_count == 4'd11) begin
//            data_valid <= 1'b1;
//        end else begin
//            data_valid <= 1'b0;
//        end
//    end
    
//    always @(negedge SLOAD_SGPIO_0) begin
//    	if(data_valid)begin
//        	sgpio_0_data_out_local <= data_buffer_0_local;
//        end
//    end
    
    
    // 第二组SGPIO LOCAL解析逻辑
    always @(negedge SCL_SGPIO_1) begin
        // 每个时钟下降沿采集一位数据
//        data_buffer_0_local[bit_count] <= DATAOUT_SGPIO_0;
        data_buffer_1_local <= {data_buffer_1_local[10:0], DATAOUT_SGPIO_1};
        // 更新位计数器
        if (bit_count1 == 4'd11) begin
            bit_count1 <= 4'd0;
        end else begin
            bit_count1 <= bit_count1 + 1;
        end
        
        // 在sload上升沿锁存数据并置位有效标志
        if (SLOAD_SGPIO_1 && bit_count1 == 4'd11) begin
            data_valid1 <= 1'b1;
        end else begin
            data_valid1 <= 1'b0;
        end
    end
    
    always @(negedge SLOAD_SGPIO_1) begin
    	if(data_valid1)begin
        	sgpio_1_data_out_local <= data_buffer_1_local;
        end
    end

endmodule