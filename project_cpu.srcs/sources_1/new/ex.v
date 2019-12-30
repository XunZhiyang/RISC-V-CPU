`include "defines.v"

module ex(
    input wire rst,
    input wire[`InstAddrBus] pc_i,

    input wire[`AluOpBus] aluop_i,
    input wire[`AluSelBus] alusel_i,
    input wire[`RegBus] reg1_i,
    input wire[`RegBus] reg2_i,
    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,

    input wire[`RegBus] imm,
    input wire func7,

    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o,

    output reg[`InstAddrBus] pc_o

    output reg br,
    output reg[`InstBus] npc,

    output reg[`AddrBus] mem_data_addr,
    output reg mem_rw,
    output reg[2:0] byte_num_o,
    output reg sign_o

    // input wire[`RegAddrBus] reg1_addr_ex_i, 
    // input wire[`RegAddrBus] reg2_addr_ex_i,

    // input wire ex_wreg_i,               //data forwarding
    // input wire[`RegBus] ex_wdata_i,
    // input wire[`RegAddrBus] ex_wd_i,

    // input wire mem_wreg_i,
    // input wire[`RegBus] mem_wdata_i,
    // input wire[`RegAddrBus] mem_wd_i,
    );

    // reg[`RegBus] wdata_o;

    assign pc_o = pc_i;

    always @ (*) begin
        if (rst == `Enable) begin
            br <= 1'b0;
            wd_o <= NOPRegAddr;     //wht not in pdf
            wreg_o <= `Disable;
            byte_num_o <= 2'b00;
            wdata_o <= `ZeroWord;
        end else begin
            br <= 1'b0;
            wd_o <= wd_i;
            wreg_o <= wreg_i;
            byte_num_o <= 2'b00;
            wdata_o <= `ZeroWord;
            case(alusel_i)
                `SEL_OR: begin
                    wdata_o <= reg1_i | reg2_i;
                end
                `SEL_AND: begin
                    wdata_o <= reg1_i & reg2_i;
                end
                `SEL_XOR: begin
                    wdata_o <= reg1_i ^ reg2_i;
                end
                `SEL_ADD: begin
                    if (func7 == 0) wdata_o <= reg1_i + reg2_i;
                    else wdata_o <= reg1_i - reg2_i;
                end
                `SEL_SLT: begin
                    if ($signed(reg1_i) < $signed(reg2_i)) 
                        wdata_o <= 1;
                    else wdata_o <= 0;
                end
                `SEL_SLTU: begin
                    if (reg1_i < reg2_i) wdata_o <= reg1_i;
                    else wdata_o <= 0;
                end
                `SEL_SLL: begin
                    wdata_o <= reg1_i << reg2_i[4:0];
                end
                `SEL_SRL: begin
                    if (func7 == 1'b0)
                        wdata_o <= reg1_i >> reg2_i[4:0];
                    else
                        wdata_o <= $signed(reg1_i) >>> reg2_i[4:0];
                end
                `SEL_LUI: begin
                    wdata_o <= reg1_i;
                end
                `SEL_AUIPC: begin
                    wdata_o <= reg1_i + pc_i;
                end
                `SEL_JAL: begin
                    wdata_o <= pc_i + 4;
                    npc <= reg1_i + pc_i;
                    br <= 1'b1;
                end
                `SEL_JALR: begin
                    wdata_o <= pc_i + 4;
                    npc <= (reg1_i + reg2_i) & (-2);
                    br <= 1'b1;
                end
                `SEL_BEQ: begin
                    wdata_o <= 0;
                    if (reg1_i == reg2_i) begin
                        npc <= imm + pc_i;
                        br <= 1'b1;
                    end
                end
                `SEL_BNE: begin
                    wdata_o <= 0;
                    if (reg1_i != reg2_i) begin
                        npc <= imm + pc_i;
                        br <= 1'b1;
                    end
                end
                `SEL_BLTU: begin
                    wdata_o <= 0;
                    if (reg1_i < reg2_i) begin
                        npc <= imm + pc_i;
                        br <= 1'b1;
                    end
                end
                `SEL_BGEU: begin
                    wdata_o <= 0;
                    if (reg1_i >= reg2_i) begin
                        npc <= imm + pc_i;
                        br <= 1'b1;
                    end
                end
                `SEL_BLT: begin
                    wdata_o <= 0;
                    if ($signed(reg1_i) < $signed(reg2_i)) begin
                        npc <= imm + pc_i;
                        br <= 1'b1;
                    end
                end
                `SEL_BGE: begin
                    wdata_o <= 0;
                    if ($signed(reg1_i) >= $signed(reg2_i)) begin
                        npc <= imm + pc_i;
                        br <= 1'b1;
                    end
                end
                `SEL_LB: begin
                    mem_data_addr <= reg1_i + reg2_i;
                    mem_rw <= `MemRead;
                    byte_num_o <= 2'b01;
                    sign_o <= 1;
                end
                `SEL_LH: begin
                    mem_data_addr <= reg1_i + reg2_i;
                    mem_rw <= `MemRead;
                    byte_num_o <= 2'b10;
                    sign_o <= 1;
                end
                `SEL_LW: begin
                    mem_data_addr <= reg1_i + reg2_i;
                    mem_rw <= `MemRead;
                    byte_num_o <= 2'b11;
                    sign_o <= 1;
                end
                `SEL_LBU: begin
                    mem_data_addr <= reg1_i + reg2_i;
                    mem_rw <= `MemRead;
                    byte_num_o <= 2'b01;
                    sign_o <= 0;
                end
                `SEL_LHU: begin
                    mem_data_addr <= reg1_i + reg2_i;
                    mem_rw <= `MemRead;
                    byte_num_o <= 2'b10;
                    sign_o <= 0;
                end
                `SEL_SB: begin
                    wdata_o <= reg2_i;
                    mem_data_addr <= reg1_i + opr3_i;
                    mem_rw <= `MemWrite;
                    byte_num_o <= 2'b01;
                end
                `SEL_SH: begin
                    wdata_o <= reg2_i;
                    mem_data_addr <= reg1_i + opr3_i;
                    mem_rw <= `MemWrite;
                    byte_num_o <= 2'b10;
                end
                `SEL_SW: begin
                    wdata_o <= reg2_i;
                    mem_data_addr <= reg1_i + opr3_i;
                    mem_rw <= `MemWrite;
                    byte_num_o <= 2'b11;
                end
            endcase
        end
    end

    // always @ (*) begin
    //     wd_o <= wd_i;
    //     wreg_o <= wreg_i;
    //     case (alusel_i)
    //         `EXE_RES_LOGIC: begin
    //             wdata_o <= wdata_o;
    //         end
    //         default: begin
    //             wdata_o <= `ZeroWord;
    //         end
    //     endcase
    // end

endmodule