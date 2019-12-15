`include "defines.v"

module mem_wb(
    input wire clk, 
    input wire rst,

    input wire[`RegAddrBus] mem_wd,
    input wire mem_wreg,
    input wire mem_wdata,

    output reg[`RegAddrBus] wb_wd,
    output reg wb_wreg,
    output reg[`RegBus] wb_wdata
    );

    always @ (posedge clk) begin
        if (rst == `Enable) begin
            wb_wd <= `NOPRegAddr;
            wb_wreg <= `Disable;
            wb_wdata <= `ZeroWord;
        end else begin
            wb_wd <= mem_wd;
            wb_wreg <= mem_wreg;
            wb_wdata <= mem_wdata;
        end
    end
endmodule
