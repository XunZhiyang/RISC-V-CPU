`include "defines.v"
module id_ex(
    input wire clk,
    input wire rst,
    input wire[`InstAddrBus] pc_i,
    input wire[`CtrlBus] stall,
    input wire addi_id,

    input wire br,

    input wire[`AluOpBus] id_aluop,
    input wire[`AluSelBus] id_alusel,
    input wire[`RegBus] id_reg1,
    input wire[`RegBus] id_reg2,
    // input wire[`RegAddrBus] reg1_addr_i,
    // input wire[`RegAddrBus] reg2_addr_i,
    input wire[`RegAddrBus] id_wd,
    input wire id_wreg,
    input wire[`RegBus] id_imm,
    // input wire id_func7,

    output reg[`AluOpBus] ex_aluop,
    output reg[`AluSelBus] ex_alusel,
    output reg[`RegBus] ex_reg1,
    output reg[`RegBus] ex_reg2,
    output reg[`RegAddrBus] ex_wd,
    output reg ex_wreg,
    output reg[`RegBus] ex_imm,
    // output reg ex_func7,

    output reg[`InstAddrBus] pc_o,
    output reg addi_ex

    // output reg[`RegAddrBus] reg1_addr_ex_o,
    // output reg[`RegAddrBus] reg2_addr_ex_o,  
    );


    always @ (posedge clk) begin
        if (rst) begin
            ex_aluop <= `OP_NOP;
            ex_alusel <= `EXE_RES_NOP;
            ex_reg1 <= `ZeroWord;
            ex_reg2 <= `ZeroWord;
            ex_wd <= `NOPRegAddr;
            ex_wreg <= `Disable;
            ex_imm <= `ZeroWord;
            pc_o <= 4'h0;
            addi_ex <= 0;
        end
        else if (stall[3] == `Enable) begin end
        else if (br || stall[2] == `Enable) begin
            ex_aluop <= `OP_NOP;
            ex_alusel <= `EXE_RES_NOP;
            ex_reg1 <= `ZeroWord;
            ex_reg2 <= `ZeroWord;
            ex_wd <= `NOPRegAddr;
            ex_wreg <= `Disable;
            ex_imm <= `ZeroWord;
            addi_ex <= 0;
            pc_o <= 4'h0;
            // reg1_addr_ex_o <= `ZeroWord;
            // reg2_addr_ex_o <= `ZeroWord;
        end else if (stall[3] == `Disable) begin
            ex_aluop <= id_aluop;
            ex_alusel <= id_alusel;
            ex_reg1 <= id_reg1;
            ex_reg2 <= id_reg2;
            ex_wd <= id_wd;
            ex_wreg <= id_wreg;
            ex_imm <= id_imm;
            // ex_func7 <= id_func7;
            pc_o <= pc_i;
            addi_ex <= addi_id;
            // reg1_addr_ex_o <= `reg1_addr_i;
            // reg2_addr_ex_o <= `reg2_addr_i;
        end
    end

endmodule