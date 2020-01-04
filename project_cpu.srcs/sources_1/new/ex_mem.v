`include "defines.v"

module ex_mem (
    input wire clk,
    input wire rst,
    input wire[`InstAddrBus] pc_i,
    input wire[`CtrlBus] stall,

    input wire[`RegAddrBus] ex_wd,
    input wire ex_wreg,
    input wire[`RegBus] ex_wdata,

    input wire[`AddrBus] ex_data_addr,
    input wire ex_rw,
    input wire[2:0] ex_byte_num,
    input wire ex_sign,

    output reg[`RegAddrBus] mem_wd,
    output reg mem_wreg,
    output reg[`RegBus] mem_wdata,
    
    output reg[`AddrBus] mem_data_addr,
    output reg mem_rw,
    output reg[2:0] mem_byte_num,
    output reg mem_sign,
    
    output reg[`InstAddrBus] pc_o
    );


    always @ (posedge clk) begin
        if (rst == `Enable) begin
            pc_o <= `ZeroWord;
            mem_wd <= `NOPRegAddr;
            mem_wreg <= `Disable;
            mem_wdata <= `ZeroWord;
            mem_data_addr <= `ZeroWord;
            mem_rw <= 1'b0;
            mem_byte_num <= 2'b00;
            mem_sign <= 1'b0;
        end else if (stall[4] == 1'b0) begin
            pc_o <= pc_i;
            mem_wd <= ex_wd;
            mem_wreg <= ex_wreg;
            mem_wdata <= ex_wdata;
            mem_data_addr <= ex_data_addr;
            mem_rw <= ex_rw;
            mem_byte_num <= ex_byte_num;
            mem_sign <= ex_sign;
        end
    end

endmodule