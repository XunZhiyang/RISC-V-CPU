`include "defines.v"
module id(
    input wire rst,
    input wire[`InstAddrBus] pc_i,
    input wire[`InstBus] inst_i,

    input wire[`RegBus] reg1_data_i,
    input wire[`RegBus] reg2_data_i,

    input wire ex_wreg_i,
    input wire[`RegBus] ex_wdata_i,
    input wire[`RegAddrBus] ex_wd_i,

    input wire mem_wreg_i,
    input wire[`RegBus] mem_wdata_i,
    input wire[`RegAddrBus] mem_wd_i,

    output reg reg1_read_o,
    output reg reg2_read_o,
    output reg[`RegAddrBus] reg1_addr_o,
    output reg[`RegAddrBus] reg2_addr_o,

    // output reg[`AluOpBus] aluop_o,
    output reg[`AluSelBus] alusel_o,
    output reg[`RegBus] reg1_o,
    output reg[`RegBus] reg2_o,
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o


    );

    // wire[`AluOpBus] op = inst_i[6:0];
    // wire[11:0] iType_imm = inst_i[31:20];
    wire[4:0] iType_rs1 = inst_i[19:15];
    // wire[4:0] iType_rd = inst_i[11:7];

    reg[`RegBus] imm;

    // reg instvalid;

    always @ (*) begin
        if (rst == `Enable) begin
            // aluop_o <= `EXE_NOP_OP;
            // alusel_o <= `EXE_RES_NOP;
            wd_o <= `NOPRegAddr;
            wreg_o <= `Disable;
            // instvalid <= `Valid;
            reg1_read_o <= `Disable;
            reg2_read_o <= `Disable;
            reg1_addr_o <= `NOPRegAddr;
            reg2_addr_o <= `NOPRegAddr;
            imm <= `ZeroWord;
        end else begin
            // aluop_o <= `EXE_NOP_OP;
            // alusel_o <= `EXE_RES_NOP;
            alusel_o <= inst_i[14:12]
            wd_o <= inst_i[11:7];           // target register address
            wreg_o <= `Disable;
            // instvalid <= `Invalid;
            reg1_read_o <= `Disable;
            reg2_read_o <= `Disable;
            reg1_addr_o <= inst_i[19:15];
            reg2_addr_o <= inst_i[24:20];
            imm <= `ZeroWord;
            // aluop_o <= `
            case(op)
                `OP_ORI: begin 
                    wreg_o <= `Enable;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    imm <= {{20{inst_i[31]}}, inst_i[31:20]};
                    // wd_o <= iType_rd;
                    // aluop_o <= `OP_ORI;
                    // alusel_o <= `EXE_RES_LOGIC;
                    // instvalid <= `Valid;
                end
                `OP_LOAD: begin
                    wreg_o = `Enable;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    imm <= {{20{inst_i[31]}}, inst_i[31:20]};
                end
                `OP_STORE: begin
                    wreg_o = `Disable;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    imm <= {{20{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
                end
                `OP_ADD: begin
                    wreg_o = `Enable;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    imm <= 32'b0;
                end
                `OP_LUI: begin
                    wreg_o = `Enable;
                    reg1_read_o <= 1'b0;
                    reg2_read_o <= 1'b0;
                    imm <= {inst_i[31:12], 12'b0};
                end
                `OP_AUIPC: begin
                    wreg_o = `Enable;
                    reg1_read_o <= 1'b0;
                    reg2_read_o <= 1'b0;
                    imm <= {inst_i[31:12], 12'b0};
                end
                `OP_BRANCH: begin
                    wreg_o = `Disable;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    imm <= {{20{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
                end                
                `OP_JAL: begin
                    wreg_o = `Enable;
                    reg1_read_o <= 1'b0;
                    reg2_read_o <= 1'b0;
                    imm <= {{12{inst_i[31]}}, inst_i[31:12]};
                end
                `OP_JALR: begin
                    wreg_o <= `Enable;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    imm <= {{20{inst_i[31]}}, inst_i[31:20]};
                end
                default: begin
                end
            endcase
        end
    end

    always @ (*) begin
        if (rst == `Enable) begin
            reg1_o <= `ZeroWord;
        end else if ((reg1_read_o == 1'b1) && (ex_wreg_i == 1'b1) 
                      && (ex_wd_i == reg1_addr_o)) begin
            reg1_o <= ex_wdata_i;
        end else if ((reg1_read_o == 1'b1) && (mem_wreg_i == 1'b1) 
                      && (mem_wd_i == reg1_addr_o)) begin
            reg1_o <= mem_wdata_i;
        end else if (reg1_read_o == 1'b1) begin
            reg1_o <= reg1_data_i;
        end else if (reg1_read_o == 1'b0) begin
            reg1_o <= imm;
        end else begin
            reg1_o <= `ZeroWord;
        end 
    end

    always @ (*) begin
        if (rst == `Enable) begin
            reg2_o <= `ZeroWord;
        end else if ((reg2_read_o == 1'b1) && (ex_wreg_i == 1'b1) 
                      && (ex_wd_i == reg2_addr_o)) begin
            reg2_o <= ex_wdata_i;
        end else if ((reg2_read_o == 1'b1) && (mem_wreg_i == 1'b1) 
                      && (mem_wd_i == reg2_addr_o)) begin
            reg2_o <= mem_wdata_i;
        end else if (reg2_read_o == 1'b1) begin
            reg2_o <= reg2_data_i;
        end else if (reg2_read_o == 1'b0) begin
            reg2_o <= imm;
        end else begin
            reg2_o <= `ZeroWord;
        end 
    end
endmodule