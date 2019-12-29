`include "defines.v"
module pc_reg(
    input wire clk,
    input wire rst,
    input wire[`CtrlBus] stall,

    output reg[`InstAddrBus] pc
    // output reg wr  //0 for read 1 for write
    );
    always @ (posedge clk) begin
        if (rst == `Enable) begin
            pc <= 32'h0;
        end
        else if (stall[0] == 0) begin
            pc <= pc + 4;   
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
