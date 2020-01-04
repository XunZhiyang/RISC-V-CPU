`include "defines.v"
module id(
    input wire rst,
    input wire[`InstAddrBus] pc_i,
    input wire[`InstBus] inst_i,

    input wire branch_interception,

    input wire[`RegBus] reg1_data_i,
    input wire[`RegBus] reg2_data_i,

    input wire ex_wreg_i,
    input wire[`RegBus] ex_wdata_i,
    input wire[`RegAddrBus] ex_wd_i,
    input wire[2:0] ex_byte_num,

    input wire mem_wreg_i,
    input wire[`RegBus] mem_wdata_i,
    input wire[`RegAddrBus] mem_wd_i,

    input wire exmem_wreg_i,
    input wire[`RegBus] exmem_wdata_i,
    input wire[`RegAddrBus] exmem_wd_i,
    input wire[2:0] exmem_byte_num,

    output reg reg1_read_o,
    output reg reg2_read_o,
    output reg[`RegAddrBus] reg1_addr_o,
    output reg[`RegAddrBus] reg2_addr_o,

    output reg[`AluOpBus] aluop_o,
    output reg[`AluSelBus] alusel_o,
    output reg[`RegBus] reg1_o,
    output reg[`RegBus] reg2_o,
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] imm,
    output reg addi,

    // output reg func7,

    output wire id_stall,
    output reg[`InstAddrBus] pc_o

    );


    wire[`AluOpBus] op = inst_i[6:0];
    // wire[11:0] iType_imm = inst_i[31:20];
    wire[4:0] iType_rs1 = inst_i[19:15];
    // wire[4:0] iType_rd = inst_i[11:7];


    // reg instvalid;

    always @ (*) begin
        if (rst == `Enable || branch_interception == `Enable || !inst_i) begin
            addi = 0;
            pc_o = `ZeroWord;
            aluop_o = `OP_NOP;
            alusel_o = `EXE_RES_NOP;
            wd_o = `NOPRegAddr;
            wreg_o = `Disable;
            reg1_read_o = `Disable;
            reg2_read_o = `Disable;
            reg1_addr_o = `NOPRegAddr;
            reg2_addr_o = `NOPRegAddr;
            imm = `ZeroWord;
            // func7 = 0;
        end else begin
            addi = 0;
            pc_o = pc_i;
            aluop_o = op;
            alusel_o = {2'b00, inst_i[14:12]};
            // alusel_o[2:0] = inst_i[14:12];
            wd_o = inst_i[11:7];
            wreg_o = `Disable;
            reg1_read_o = `Disable;
            reg2_read_o = `Disable;
            reg1_addr_o = inst_i[19:15];
            reg2_addr_o = inst_i[24:20];
            imm = `ZeroWord;
            // func7 = inst_i[30];
            case(op)
                `OP_ORI: begin 
                    addi = 1;
                    alusel_o[4:3] = 2'b00;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b1;
                    reg2_read_o = 1'b0;
                    imm = {{20{inst_i[31]}}, inst_i[31:20]};
                end
                `OP_LOAD: begin
                    alusel_o[4:3] = 2'b11;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b1;
                    reg2_read_o = 1'b0;
                    imm = {{20{inst_i[31]}}, inst_i[31:20]};
                end
                `OP_STORE: begin
                    wreg_o = `Disable;
                    reg1_read_o = 1'b1;
                    reg2_read_o = 1'b1;
                    imm = {{20{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
                    case(inst_i[14:12])
                        3'b000: begin
                            alusel_o = `SEL_SB;
                        end
                        3'b001: begin
                            alusel_o = `SEL_SH;
                        end
                        3'b010: begin
                            alusel_o = `SEL_SW;
                        end
                    endcase
                end
                `OP_ADD: begin
                    alusel_o[4:3] = 2'b00;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b1;
                    reg2_read_o = 1'b1;
                    imm = {{20{inst_i[31]}}, inst_i[31:20]};
                end
                `OP_LUI: begin
                    alusel_o = `SEL_LUI;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b0;
                    reg2_read_o = 1'b0;
                    imm = {inst_i[31:12], 12'b0};
                end
                `OP_AUIPC: begin
                    alusel_o = `SEL_AUIPC;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b0;
                    reg2_read_o = 1'b0;
                    imm = {inst_i[31:12], 12'b0};
                end
                `OP_BRANCH: begin
                    alusel_o[4:3] = 2'b10;
                    wreg_o = `Disable;
                    reg1_read_o = 1'b1;
                    reg2_read_o = 1'b1;
                    imm = {{20{inst_i[31]}}, inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
                end                
                `OP_JAL: begin
                    // $display("i get in JAL_OP in id stage now,    %h, %h", pc_i, `SEL_JAL);
                    alusel_o = `SEL_JAL;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b0;
                    reg2_read_o = 1'b0;
                    imm = {{12{inst_i[31]}}, inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};
                end
                `OP_JALR: begin
                    alusel_o = `SEL_JALR;
                    wreg_o = `Enable;
                    reg1_read_o = 1'b1;
                    reg2_read_o = 1'b0;
                    imm = {{20{inst_i[31]}}, inst_i[31:20]};
                end
                default: begin
                    alusel_o = `EXE_RES_NOP;
                end
            endcase
        end
    end

    reg stall1, stall2;
    assign id_stall = stall1 | stall2;

    always @ (*) begin
        stall1 = 0;
        if (rst == `Enable ||(reg1_read_o && (reg1_addr_o == 0))) begin
            reg1_o = `ZeroWord;
        end else if ((reg1_read_o == 1'b1) && (ex_wd_i == reg1_addr_o)
                      && ex_wreg_i && ex_byte_num) begin
            stall1 = 1'b1;
            reg1_o = 0;
        end else if ((reg1_read_o == 1'b1) && (ex_wreg_i == 1'b1) 
                      && (ex_wd_i == reg1_addr_o)) begin
            reg1_o = ex_wdata_i;
        end else if ((reg1_read_o == 1'b1) && (mem_wreg_i == 1'b1) 
                      && (mem_wd_i == reg1_addr_o)) begin
            reg1_o = mem_wdata_i;
        end else if (reg1_read_o && exmem_wreg_i && reg1_addr_o == exmem_wd_i && exmem_byte_num) begin
            reg1_o = 0;
            stall1 = 1'b1;
        end else if (reg1_read_o == 1'b1) begin
            reg1_o = reg1_data_i;
        end else if (reg1_read_o == 1'b0) begin
            reg1_o = imm;
        end else begin
            reg1_o = `ZeroWord;
        end 
    end

    always @ (*) begin
        stall2 = 0;
        if (rst == `Enable ||(reg2_read_o && (reg2_addr_o == 0))) begin
            reg2_o = `ZeroWord;
        end else if ((reg2_read_o == 1'b1) && (ex_wd_i == reg2_addr_o)
                      && ex_wreg_i && ex_byte_num) begin
            stall2 = 1'b1;
            reg2_o = 0;
        end else if ((reg2_read_o == 1'b1) && (ex_wreg_i == 1'b1) 
                      && (ex_wd_i == reg2_addr_o)) begin
            reg2_o = ex_wdata_i;
        end else if ((reg2_read_o == 1'b1) && (mem_wreg_i == 1'b1) 
                      && (mem_wd_i == reg2_addr_o)) begin
            reg2_o = mem_wdata_i;
        end else if (reg2_read_o && exmem_wreg_i && reg2_addr_o == exmem_wd_i && exmem_byte_num) begin
            reg2_o = 0;
            stall2 = 1'b1;
        end else if (reg2_read_o == 1'b1) begin
            reg2_o = reg2_data_i;
        end else if (reg2_read_o == 1'b0) begin
            reg2_o = imm;
        end else begin
            reg2_o = `ZeroWord;
        end 
    end
endmodule