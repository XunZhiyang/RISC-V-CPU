`include "defines.v"
module if_id(
    input wire clk,
    input wire rst,
    input wire[`CtrlBus] stall,
    
    input wire[`InstAddrBus] if_pc,
    input wire[`InstBus] if_inst,

    input wire br,
    
    output reg[`InstAddrBus] id_pc,
    output reg[`InstBus] id_inst
    );
    
    reg[`InstAddrBus] lock_pc;
    reg[`InstBus] lock_inst;

    always @ (posedge clk) begin
        if (rst == `Enable || br) begin
            id_pc <= `ZeroWord;
            id_inst <=`ZeroWord;
            // lock_pc <= `ZeroWord;
            // lock_inst <= `ZeroWord;
        end else if (stall[2] == `Disable) begin
            // if (lock_inst) begin
            //     // id_pc <= lock_pc;
            //     // id_inst <= lock_inst;
            //     // lock_pc <= `ZeroWord;
            //     // lock_inst <= `ZeroWord;
            // end else begin
                id_pc <= if_pc;
                id_inst <= if_inst;
            // end
        end else if (if_inst) begin
            // lock_pc <= if_pc;
            // lock_inst <= if_inst;
        end
    end
endmodule
