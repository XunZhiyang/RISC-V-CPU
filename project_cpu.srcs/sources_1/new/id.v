module id(
    input wire rst,
    input wire[`InstAddrBus] pc_i,
    input wire[`InstBus] inst_i,

    input wire[`RegBus] reg1_data_i,
    input wire[`RegBus] reg2_data_i,

    output reg reg1_data_o,
    output reg reg2_data_o,
    output reg[`RegAddrBus] reg1_addr_o,
    output reg[`RegAddrBus] reg2_addr_o,

    output reg[`AluOpBus] aluop_o,
    output reg[`AluSelBus] alusel_o,
    output reg[`RegBus] reg1_o,
    output reg[`RegBus] reg2_o,
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o
    )

    wire[2:0] op = inst_i[14:12];

    reg[`RegBus] imm

    reg instvalid;

    always @ (*) begin
        if (rst == `Enable) begin
            aluop_o <= `EXE_NOP_OP;
            alusel_o <= `EXE_RES_NOP;
            wd_o <= `NOPRegAddr;
            wreg_o <= `Disable;
            instvalid <= `Valid;
            reg1_read_o <= `Disable;
            reg2_read_o <= `Disable;
            reg1_addr_o <= `NOPRegAddr;
            reg2_addr_o <= `NOPRegAddr;
            imm <= `ZeroWord;
        end else begin
            aluop_o <= `EXE_NOP_OP;
            alusel_o <= `EXE_RES_NOP;
            wd_o <= inst_i[11:7];
            wreg_o <= `Disable;
            instvalid <= `Invalid;
            reg1_read_o <= `Disable;
            reg2_read_o <= `Disable;
            reg1_addr_o <= inst_i[19:15];
            reg2_addr_o <= inst_i[11:7];
            imm <= `ZeroWord;

            case(op)
endmodule
