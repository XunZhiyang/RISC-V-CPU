`include "defines.v"
module pc_reg(
    input wire clk,
    input wire rst,
    output reg[`InstAddrBus] pc,
    output reg ce
    );

    always @ (posedge clk) begin
        if (rst == `Enable) begin
            ce <= `Disable
        end else begin
            ce <= `Enable
        end
    end

    always @ (posedge clk) begin
        if (ce == `Disable) begin
            pc <= 32'h0000000
        end else begin
            pc <= pc + 4'h4
        end
    end

endmodule
