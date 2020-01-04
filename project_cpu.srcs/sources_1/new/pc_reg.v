`include "defines.v"
module pc_reg(
    input wire clk,
    input wire rst,
    input wire[`CtrlBus] stall,
    input wire br,
    input wire[`InstAddrBus] des_pc,

    output reg[`InstAddrBus] pc,
    output reg pc_stalling
    // output reg wr  //0 for read 1 for write
    );
    always @ (posedge clk) begin
        // $display("WOWOWOWOW");
        if (rst == `Enable) begin
            pc_stalling <= 1'b0;
            pc <= 32'h0;
        end else if (br) begin
            pc_stalling <= 1'b0;
            pc <= des_pc;
        end else if (stall[0] == 1'b0)begin
            pc_stalling <= 1'b0;
            pc <= pc + 4'h4;   
        end else begin
            pc <= pc;
            pc_stalling <= 1'b1;
        end
    end
        // if (rst == `Disable) begin
        //     pc <= pc + 32'h4;
        // end else begin
        //     pc <= 32'h0;
        // end
    // always @ (posedge clk) begin
    //     if (rst == `Enable) begin
    //         ce <= `Disable;
    //     end else begin
    //         ce <= `Enable;
    //     end
    // end

    // always @ (posedge clk) begin
    //     if (ce == `Disable) begin
    //         pc <= 32'h0000000;
    //     end else begin
    //         pc <= pc + 4'h4;
    //     end
    // end

endmodule
