`include "defines.v"

module mem(
    input wire rst,
    input wire[`InstAddrBus] pc_i,

    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,
    input wire[`RegBus] wdata_i,

    input wire[`AddrBus] mem_data_addr,
    input wire mem_rw,
    input wire[2:0] mem_byte_num,
    input wire mem_sign,

    input wire[`DataBus] mem_result,
    input wire op_data_ok,

    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o,

    output reg op_data_o,
    output reg[`AddrBus] op_data_addr,
    output reg op_rw,
    output reg[2:0] op_num,
    output reg[`DataBus] write_content,

    output reg[`InstAddrBus] pc_o,

    output mem_stall

    );

    assign pc_o = pc_i;

    always @ (*) begin  // considering reset here is unnecessary
        if (rst) begin
            mem_stall <= `Disable;
            wreg_o <= `Disable;
            op_num <= 0;
            op_data_o <= `Disable;
        end
        else if (mem_byte_num) begin
            if (op_data_ok) begin
                mem_stall <= `Disable;
                op_data_o <= `Disable;
                // wdata_o <= mem_result;
                wreg_o <= wreg_i;
                wd_o <= wd_i;
                if (mem_sign) wdata_o <= $signed(mem_result);
                else wdata_o <= mem_result;
                // wdata_o <= wdata_i;
                // op_data_addr <= `ZeroWord;
            end else begin
                mem_stall <= `Enable;
                op_data_o <= `Enable;
                op_data_addr <= mem_data_addr;
                op_rw <= mem_rw;
                op_num <= mem_byte_num;
                write_content <= wdata_i;
            end
        end else begin 
            mem_stall <= `Disable;
            op_data_o <= `Disable;
            wd_o <= wd_i;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i;
        end
    end
endmodule