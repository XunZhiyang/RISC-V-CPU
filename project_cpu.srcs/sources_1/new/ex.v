`include "defines.v"

module ex(
    input wire rst,

    // input wire[`AluOpBus] aluop_i,
    input wire[`AluSelBus] alusel_i,
    input wire[`RegBus] reg1_i,
    input wire[`RegBus] reg2_i,
    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,

    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o

    // input wire[`RegAddrBus] reg1_addr_ex_i, 
    // input wire[`RegAddrBus] reg2_addr_ex_i,

    // input wire ex_wreg_i,               //data forwarding
    // input wire[`RegBus] ex_wdata_i,
    // input wire[`RegAddrBus] ex_wd_i,

    // input wire mem_wreg_i,
    // input wire[`RegBus] mem_wdata_i,
    // input wire[`RegAddrBus] mem_wd_i,
    );

    reg[`RegBus] logicout;

    always @ (*) begin
        if (rst == `Enable) begin
            logicout <= `ZeroWord;
            // wd_o <= NOPRegAddr;     //wht not in pdf
            // wreg_o <= `Disable;
            // wdata_o <= `ZeroWord;
        end else begin
            case (aluop_i)  
                `EXE_OR_OP: begin
                    logicout <= reg1_i | reg2_i;
                end
                default: begin
                    logicout <= `ZeroWord;
                end
            endcase
        end
    end

    always @ (*) begin
        wd_o <= wd_i;
        wreg_o <= wreg_i;
        case (alusel_i)
            `EXE_RES_LOGIC: begin
                wdata_o <= logicout;
            end
            default: begin
                wdata_o <= `ZeroWord;
            end
        endcase
    end

endmodule