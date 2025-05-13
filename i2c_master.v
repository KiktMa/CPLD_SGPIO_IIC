module i2c_master #(
    parameter           FCLK                    =   100_000_000         ,//系统时钟频率，默认100MHz。
    parameter           FSCL                    =   400_000             ,//IIC时钟频率，默认400KHz。
    parameter           REG_ADDR_BYTE_NUM       =   1                   ,//寄存器地址字节数；
    parameter      DATA_BYTE_NUM           =   1                //读写数据字节数。
)(
    input                          clk                ,//系统时钟信号；
    input                          rst_n              ,//系统复位信号，低电平有效；

    input                                           start               ,//开始进行读写操作；
    input                                           rw_flag             ,//读写标志信号，高电平表示读操作，低电平表示写操作；
    input				[REG_ADDR_BYTE_NUM*8-1 : 0]	device_addr			,
    input               [REG_ADDR_BYTE_NUM*8-1 : 0] reg_addr            ,//寄存器地址,读写操作时共用的地址信号；
    input               [DATA_BYTE_NUM*8 - 1 : 0]   wdata               ,//写数据；

    output  reg         [DATA_BYTE_NUM*8 - 1 : 0]   rdata               ,//读数据信号；
    output  reg                                     rdata_vld           ,//读数据输出使能信号，高电平有效；
    output  reg                                     rdy                 ,//模块忙闲指示信号，位高电平时可以接收上游模块的读写使能信号；

    output  reg                                     scl                 ,//IIC的时钟信号；
    inout                                           sda                 ,//IIC的双向数据信号；
    output  reg                                     ack_flag            ,//高电平表示应答失败；
    output	reg 									done
);
    localparam          CLK_DIV             =       FCLK / FSCL         ;//计算计数器div_cnt的结束值；
    localparam          CLK_DIV_W           =       clogb2(CLK_DIV - 1) ;//计算计数器div_cnt的位宽；
    //根据比较寄存器地址和读写数据的大小，然后自动计算处byte_cnt计数器位宽。
    localparam          BYTE_CNT_W          =       (REG_ADDR_BYTE_NUM  > DATA_BYTE_NUM) ? clogb2(REG_ADDR_BYTE_NUM-1) : clogb2(DATA_BYTE_NUM-1);
    //Four-stage state machine;
    localparam          IDLE                =       7'b0000001          ;//状态机空闲状态；
    localparam          W_DEVICE_ADDR       =       7'b0000010          ;//状态机写器件地址状态；
    localparam          W_REG_ADDR          =       7'b0000100          ;//状态机写寄存器地址状态；
    localparam          WDATA               =       7'b0001000          ;//状态机写数据状态；
    localparam          R_DEVICE_ADDR       =       7'b0010000          ;//状态机发送读器件地址状态；
    localparam          RDATA              =       7'b0100000          ;//状态机读数据状态；
    localparam          STOP              =       7'b1000000          ;//状态机停止状态；

    reg                                             l2h_flag            ;
    reg                                             h2l_flag            ;
    reg                                             wr_flag             ;
    reg                                             rd_flag             ;
    reg                                             end_div_cnt         ;
    reg                                             rw_flag_r           ;//
    reg                                             sda_out             ;
    reg                                             sda_out_en          ;
    reg                 [6 : 0]                      state_n             ;
    reg                 [6 : 0]                      state_c             ;
    reg                 [3 : 0]                   bit_cnt             ;//
    reg                 [3 : 0]                     bit_cnt_num         ;//
    reg                 [CLK_DIV_W - 1 : 0]       div_cnt             ;//
    reg                 [BYTE_CNT_W - 1 : 0]       byte_cnt            ;//
    reg                 [BYTE_CNT_W - 1 : 0]        byte_cnt_num        ;//
    reg                 [DATA_BYTE_NUM*8 - 1 : 0]   wdata_r             ;
    reg                 [REG_ADDR_BYTE_NUM*8 - 1 : 0] reg_addr_r        ;
    reg                 [DATA_BYTE_NUM*8 - 1 : 0]   rdata_r             ;
    reg                                             rdata_vld_r         ;

    wire                                         add_byte_cnt        ;
    wire                                         end_byte_cnt        ;
    wire                [8 : 0]                     device_addr_r         ;
    wire                                            sda_in              ;
    wire                                           add_bit_cnt         ;
    wire                                           end_bit_cnt         ;

    //双向IO控制;
    assign sda_in = sda;
    assign sda = sda_out_en ? sda_out : 1'bz;

    //自动计算位宽函数；
    function integer clogb2(input integer depth);
        begin
            if(depth == 0)
                clogb2 = 1;
            else if(depth != 0)
                for(clogb2=0 ; depth>0 ; clogb2=clogb2+1)
                    depth=depth >> 1;
        end
    endfunction

    //暂存器件地址和起始位还有写指示位。
    assign device_addr_r = {1'b0,device_addr,1'b0};

    //开始信号有效时，把待发送的信号暂存。
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            wdata_r <= 0;
            rw_flag_r <= 1'b0;
            reg_addr_r <= 0;
        end
        else if(start)begin
            wdata_r <= wdata;
            rw_flag_r <= rw_flag;
            reg_addr_r <= reg_addr;
        end
    end

    //状态机，次态到现态的转换；
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            state_c <= IDLE;
        end
        else begin
            state_c <= state_n;
        end
    end
    
    //状态机次态的跳转；
    always@(*)begin
        case(state_c)
            IDLE : begin
                if(start)begin//开始信号有效时，跳转到发送起始位和器件地址的状态；
                    state_n = W_DEVICE_ADDR;
                    done    <= 1'b0;
                end
                else begin
                    state_n = state_c;
                end
            end
            W_DEVICE_ADDR : begin
                if(end_bit_cnt)begin//器件地址发送完成后，跳转到写寄存器地址状态；
                    state_n = W_REG_ADDR;
                end
                else begin
                    state_n = state_c;
                end
            end
            W_REG_ADDR : begin
                if(end_byte_cnt)begin//寄存器地址写入完成后，
                    if(rw_flag_r)//如果是读操作，则跳转到重复起始位和写器件地址状态；
                        state_n = R_DEVICE_ADDR;
                    else//如果是写操作，跳转到写数据状态；
                        state_n = WDATA;
                end
                else begin
                    state_n = state_c;
                end
            end
            WDATA : begin
                if(end_byte_cnt)begin//如果数据全部写入完成，则跳转到停止状态；
                    state_n = STOP;
                end
                else begin
                    state_n = state_c;
                end
            end
            R_DEVICE_ADDR : begin
                if(end_bit_cnt)begin//如果重复起始位、器件地址、读指示位写入完毕，则跳转到读数据状态；
                    state_n = RDATA;
                end
                else begin
                    state_n = state_c;
                end
            end
            RDATA : begin
                if(end_byte_cnt)begin//读出一次需要读出的所有数据后，跳转到停止状态；
                    state_n = STOP;
                end
                else begin
                    state_n = state_c;
                end
            end
            STOP : begin
                if(end_div_cnt)begin//停止位发送完毕后，跳转到空闲状态；
                    state_n = IDLE;
                    done    <= 1'b1;
                end
                else begin
                    state_n = state_c;
                end
            end
            default:begin//
                state_n = IDLE;
            end
        endcase
    end

    //分频计数器，用于生成SCL信号。
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//
            div_cnt <= 0;
        end
        else if(state_c != IDLE)begin
            if(end_div_cnt)//状态机不处于空闲状态时，对系统时钟进行计数；
                div_cnt <= 0;
            else
                div_cnt <= div_cnt + 1;
        end
    end

    //根据clk_cnt生成各种标志信号，由于计数器从零开始计数，并且下面为时序电路，所以产生条件是为对应值减2。
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            l2h_flag <= 1'b0;
            h2l_flag <= 1'b0;
            wr_flag  <= 1'b0;
            rd_flag  <= 1'b0;
            end_div_cnt <= 1'b0;
        end
        else begin
            l2h_flag <= (div_cnt == CLK_DIV / 2);//在计数器div_cnt计数到一半时scl拉高；
            h2l_flag <= (div_cnt == 0);//在计数器div_cnt计数0时scl拉低；
            end_div_cnt <= (div_cnt == CLK_DIV - 2);//在计数器div_cnt计数结束时scl拉低；
            wr_flag <= (div_cnt == CLK_DIV / 4);//在计数器div_cnt计数四分之一处SDA写入数据；
            rd_flag <= (div_cnt == CLK_DIV*3 / 4);//在计数器div_cnt计数四分之三处从SDA读取数据；
        end
    end

    //数据位计数器bit_cnt，初始值为0，当分频计数器计数结束的时候加一。
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0；
            bit_cnt <= 0;
        end
        else if(state_c == IDLE)begin//状态机处于空闲状态时清零；
            bit_cnt <= 0;
        end
        else if(add_bit_cnt)begin
            if(end_bit_cnt)
                bit_cnt <= 0;
            else
                bit_cnt <= bit_cnt + 1;
        end
    end
    
    assign add_bit_cnt = end_div_cnt;//计数器加一条件，当分频计数器计数结束时有效；
    assign end_bit_cnt = add_bit_cnt && (bit_cnt == bit_cnt_num - 1);

    //用于表示每个状态每次发送的数据位数，发送器件地址之前需要发送起始位，在加上应答位，需要是个SCL时钟。
    //其余状态每次发送一字节数据后需要发送应答位，所以计数器最大值为9。
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            bit_cnt_num <= 4'd9;
        end//写器件地址和起始位、读写指示位，总共是10位数据，所以计数器的最大值为10-1；
        else if((state_c == W_DEVICE_ADDR) || (state_c == R_DEVICE_ADDR))begin
            bit_cnt_num <= 4'd10;
        end
        else begin//其余状态下计数器最大值为9。
            bit_cnt_num <= 4'd9;
        end
    end

    //发送字节数的计数器，用于计数发送数据的字节数据。
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0。
            byte_cnt <= 0;
        end
        else if(state_c == IDLE)begin//状态机处于空闲状态时清零；
            byte_cnt <= 0;
        end
        else if(add_byte_cnt)begin
            if(end_byte_cnt)
                byte_cnt <= 0;
            else
                byte_cnt <= byte_cnt + 1;
        end
    end
    //当状态机处于写寄存器地址或写数据或读数据状态且发送数据位计数器计数结束时加1。
    assign add_byte_cnt = ((state_c == W_REG_ADDR) || (state_c == WDATA) || (state_c == RDATA)) && end_bit_cnt;
    assign end_byte_cnt = add_byte_cnt && (byte_cnt == byte_cnt_num);//当计数到指定数值时清零。

    //字节计数器的最大值，初始值为写寄存器地址的长度；
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            byte_cnt_num <= REG_ADDR_BYTE_NUM - 1;
        end
        else if(state_c == W_REG_ADDR)begin
            byte_cnt_num <= REG_ADDR_BYTE_NUM - 1;
        end
        else if((state_c == WDATA) || (state_c == RDATA))begin
            byte_cnt_num <= DATA_BYTE_NUM - 1;
        end
    end

    //生成串行时钟信号；
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            scl <= 1'b1;
        end//当拉高条件有效或者状态机处于空闲状态时拉高。
        else if(l2h_flag || state_c == IDLE)begin
            scl <= 1'b1;
        end//只有在初始发送起始位时满足拉低条件时不拉低，其余情况下满足条件均要拉低；
        else if((((state_c == W_DEVICE_ADDR) && bit_cnt > 0) || (state_c != W_DEVICE_ADDR)) && h2l_flag)begin
            scl <= 1'b0;
        end
    end

    //赋值输出信号；
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            sda_out <= 1'b1;
        end
        else begin
            case (state_c)
                W_DEVICE_ADDR : begin
                    if((~bit_cnt[3]) && wr_flag)//输出器件地址和写指示位；
                        sda_out <= device_addr_r[8 - bit_cnt];
                end
                W_REG_ADDR : begin
                    if((~bit_cnt[3]) && wr_flag)//输出需要写入的寄存器地址；
                        sda_out <= reg_addr_r[REG_ADDR_BYTE_NUM*8 - 1 - byte_cnt*8 - bit_cnt];//reg_addr_r[7 - bit_cnt];
                end
                WDATA : begin//输出写数据，先输出高字节数据；
                    if((~bit_cnt[3]) && wr_flag)
                        sda_out <= wdata_r[DATA_BYTE_NUM*8 - 1 - byte_cnt*8 - bit_cnt];
                end
                R_DEVICE_ADDR : begin//输出重复开始信号，器件地址和读指示位；
                    if(wr_flag)//当SCL低电平时把SDA拉低，便于后续产生起始位；
                        if(bit_cnt == 0 || bit_cnt == bit_cnt_num - 2)
                            sda_out <= 1'b1;
                        else//产生起始位之后，在SCL低电平中间发送器件地址；
                            sda_out <= device_addr_r[8 - bit_cnt];
                    else if(rd_flag && bit_cnt == 0)//在SCL高电平的时候拉低SDA，发送重复起始位；
                        sda_out <= 1'b0;
                end
                RDATA : begin
                    if(bit_cnt == bit_cnt_num - 1 && wr_flag)
                        if(byte_cnt == DATA_BYTE_NUM - 1)//如果是读取的最后一字节数据，则不应答。
                            sda_out <= 1'b1;
                        else//如果不是最后一字节数据，则进行应答。
                            sda_out <= 1'b0;
                end
                STOP : begin
                    if(wr_flag)//停止信号需要先拉低；
                        sda_out <= 1'b0;
                    else if(rd_flag)//在SCL高电平的时候拉高，表示停止位；
                        sda_out <= 1'b1;
                end
                default : sda_out <= sda_out;
            endcase
        end
    end

    //赋值输出使能信号，除了从机应答之外，其余全为高电平；
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为1;
            sda_out_en <= 1'b1;
        end
        else if(wr_flag)begin
            case (state_c)//在写器件地址、写寄存器地址、写数据、读过程的写器件地址的从机应答状态，都需要释放总线；
                W_DEVICE_ADDR,WDATA,R_DEVICE_ADDR,W_REG_ADDR : begin
                    if(bit_cnt == 0)//当计数器为0时，总线拉高，开始写入下一字节数据；
                        sda_out_en <= 1'b1;
                    else if(bit_cnt == bit_cnt_num - 1)//当写入最后一位数据后，将使能信号拉低，释放总线；
                        sda_out_en <= 1'b0;
                end
                STOP : begin
                    if(bit_cnt == 0)//当计数器为0时，总线拉高，开始写入下一字节数据；
                        sda_out_en <= 1'b1;
                end
                RDATA : begin//在读数据阶段，主机应答时需要控制总线，其余时间释放总线；
                    if(bit_cnt == 0)
                        sda_out_en <= 1'b0;
                    else if(bit_cnt == bit_cnt_num - 1)
                        sda_out_en <= 1'b1;
                end
                default: ;
            endcase
        end
    end

    //在读数据阶段，读取总线上的数据；
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            rdata_r <= 0;
        end//当处于读数据阶段时，在SCL高电平中间读取数据总线上的数据；
        else if(state_c == RDATA && rd_flag)begin
            rdata_r[DATA_BYTE_NUM*8 - 1 - byte_cnt*8 - bit_cnt] <= sda_in;
        end
    end

    //数据输出有效指示信号，该信号为高电平时，表示读取的数据rdata有效；
    always@(posedge clk)begin
        rdata_vld_r <= (state_c == RDATA) && rd_flag && (bit_cnt == bit_cnt_num - 2) && (byte_cnt == byte_cnt_num);
    end

    //将读取的数据输出。
    always@(posedge clk)begin
        rdata <= rdata_vld_r ? rdata_r : rdata;
        rdata_vld <= rdata_vld_r;
    end

    //模块忙闲指示信号，当模块接收到开始信号或者状态机不处于空闲状态时拉低，表示模块处于工作状态；
    always@(*)begin
        if((state_c != IDLE))
            rdy = 1'b0;
        else//其余时间拉高，表示模块处于空闲状态，上游模块可以发起写或者读操作；
            rdy = 1'b1;
    end

    //从机应答失败标志信号，高电平表示应答失败，每次开始读写操作时清零；
    always@(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin//初始值为0;
            ack_flag <= 1'b0;
        end
        else if(start)begin//接收到开始读写请求信号时拉低；
            ack_flag <= 1'b0;
        end//在从机应答状态下，将接收到的应答信号输出，高电平表示应答失败，低电平表示应答成功。
        else if(((state_c == WDATA) || (state_c == W_DEVICE_ADDR) || (state_c == W_REG_ADDR) || (state_c == R_DEVICE_ADDR)) && rd_flag && (bit_cnt == bit_cnt_num - 1))begin
            ack_flag <= sda_in;
        end
    end

endmodule