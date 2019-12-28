`include "defines.v"
module id_ex(
    input wire clk,
    input wire rst,

    input wire[`AluOpBus] id_aluop,
    input wire[`AluSelBus] id_alusel,
    input wire[`RegBus] id_reg1,
    input wire[`RegBus] id_reg2,
    // input wire[`RegAddrBus] reg1_addr_i,
    // input wire[`RegAddrBus] reg2_addr_i,
    input wire[`RegAddrBus] id_wd,
    input wire id_wreg,

    output reg[`AluOpBus] ex_aluop,
    output reg[`AluSelBus] ex_alusel,
    output reg[`RegBus] ex_reg1,
    output reg[`RegBus] ex_reg2,
    output reg[`RegAddrBus] ex_wd,
    output reg ex_wreg

    // output reg[`RegAddrBus] reg1_addr_ex_o,
    // output reg[`RegAddrBus] reg2_addr_ex_o,  
    );

    always @ (posedge clk) begin
        if (rst == `Enable) begin
            ex_aluop <= `EXE_NOP_OP;
            ex_alusel <= `EXE_RES_NOP;
            ex_reg1 <= `ZeroWord;
            ex_reg2 <= `ZeroWord;
            ex_wd <= `NOPRegAddr;
            ex_wreg <= `Disable;
            // reg1_addr_ex_o <= `ZeroWord;
            // reg2_addr_ex_o <= `ZeroWord;
        end else begin
            ex_aluop <= id_aluop;
            ex_alusel <= id_alusel;
            ex_reg1 <= id_reg1;
            ex_reg2 <= id_reg2;
            ex_wd <= id_wd;
            ex_wreg <= id_wreg;
            // reg1_addr_ex_o <= `reg1_addr_i;
            // reg2_addr_ex_o <= `reg2_addr_i;
        end
    end

endmodule