`include "defines.v"
module mem_ctrl(
    input wire clk,
    input wire rst,

    input wire read_inst_i,
    input wire[`AddrBus] read_inst_addr,

    input wire op_data_i,
    input wire[`AddrBus] op_data_addr,

    input wire op_rw,
    input wire[2:0] op_num,
    input wire[`DataBus] write_content,
    input wire[7:0] mem_return,

    input wire br,

    output reg read_inst_ok,
    output reg op_data_ok,

    output reg ram_rw,
    output reg[`AddrBus] address_o,
    output reg[7:0] write_ram_o,
 
    output reg[`DataBus] result_o,
    output reg[1:0] state,

    output reg[`RegAddrBus] wd_back,
    output reg wreg_back,
    output reg signed_back,
    output reg[2:0] op_num_back,
    input wire[`RegAddrBus] wd_mem,
    input wire wreg_mem,
    input wire signed_mem
);
    reg channel;  //1 for data 0 for inst
    reg[2:0] cnt;
    reg[2:0] byte_num;

    reg[`RegAddrBus] wd_back_buffer;
    reg wreg_back_buffer;
    reg signed_back_buffer;
    reg[2:0] op_num_back_buffer;

    reg[`DataBus] save_write_content;

    always @ (posedge clk) begin
        if (rst == `Enable || (br && channel == 1'b0)) begin
            state <= `WAITING;
            read_inst_ok <= 1'b0;
            op_data_ok <= 1'b0;
            ram_rw <= `MemRead;
            address_o <= 0;
            write_ram_o <= 0;
            result_o <= 0;

            channel <= 0;
            cnt <= 0;
            byte_num <= 0;
            wd_back_buffer <= 0;
            wreg_back_buffer <= 0;
            signed_back_buffer <= 0;
            op_num_back_buffer <= 0;
            wd_back <= 0;
            wreg_back <= 0;
            signed_back <= 0;
            op_num_back <= 0;
            save_write_content <= 0;
        end
        else begin
            case (state)
                `WAITING: begin
                    cnt <= 0;
                    read_inst_ok <= 1'b0;
                    op_data_ok <= 1'b0;
                    address_o <= 4'h0;
                    result_o <= 4'h0;
                    save_write_content <= 0;
                    if (op_data_i) begin
                        wd_back_buffer <= wd_mem;
                        wreg_back_buffer <= wreg_mem;
                        signed_back_buffer <= signed_mem;
                        op_num_back_buffer <= op_num;
                        ram_rw <= op_rw;
                        address_o <= op_data_addr;
                        byte_num <= op_num;
                        if (op_rw == `MemRead) begin
                            state <= `READING;
                        end
                        else begin
                            state <= `WRITING;
                            write_ram_o <= write_content[7:0];
                            save_write_content <= write_content;
                            // address_o <= address_o + 1;  //to be cautious!!!!!!!!!!!
                        end
                        channel <= 1'b1;
                    end
                    else if (read_inst_i) begin
                        ram_rw <= `MemRead;
                        address_o <= read_inst_addr;
                        byte_num <= 3'b100;
                        state <= `READING;
                        channel <= 1'b0;
                    end
                end
                `READING: begin
                    cnt <= cnt + 1;
                    if (cnt < byte_num - 1) begin
                        address_o <= address_o + 1;
                    end
                    if (cnt == 1) begin
                        result_o[7:0] <= mem_return;
                    end
                    else if (cnt == 2) begin
                        result_o[15:8] <= mem_return;
                    end
                    else if (cnt == 3) begin
                        result_o[23:16] <= mem_return;
                    end
                    else if (cnt == 4) begin
                        result_o[31:24] <= mem_return;
                    end

                    if (cnt == byte_num) begin
                        state <= `WAITING;
                        address_o <= 0;
                        if (channel == 1'b1) begin
                            op_data_ok <= 1'b1;
                            wd_back <= wd_back_buffer;
                            wreg_back <= wreg_back_buffer;
                            signed_back <= signed_back_buffer;
                            op_num_back <= op_num_back_buffer;
                        end 
                        else begin
                            read_inst_ok <= 1'b1;
                        end
                        // cnt <= 0;
                    end
                end
                `WRITING: begin
                   cnt <= cnt + 1;
                    // if (cnt < byte_num - 1) begin
                    //     address_o <= address_o + 1;
                    //  end
                    if (cnt == 0) begin
                        write_ram_o <= save_write_content[15:8];
                    end
                    else if (cnt == 1) begin
                        write_ram_o <= save_write_content[23:16];
                    end
                    else if (cnt == 2) begin
                        write_ram_o <= save_write_content[31:24];
                    end
                
                    if (cnt + 2 <= byte_num)
                        address_o <= address_o + 1;
                    else
                        address_o <= 32'b0;
                    if (cnt + 2 >= byte_num) begin
                        state <= `WAITING;
                        op_data_ok <= 1'b1;
                        wd_back <= wd_back_buffer;
                        wreg_back <= wreg_back_buffer;
                        signed_back <= signed_back_buffer;
                        op_num_back <= op_num_back_buffer;
                        // cnt <= 0;
                    end
                end
            endcase
        end
    end

endmodule