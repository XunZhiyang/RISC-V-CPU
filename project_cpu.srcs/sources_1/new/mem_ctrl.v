`include "defines.v"
module mem_ctrl(
    input wire clk,
    input wire rst,

    input wire read_inst_i,
    input wire[`InstAddrBus] read_inst_addr,

    output reg read_inst_ok,
    output reg[`InstBus] read_inst_o
);
    reg[2:0] step = 3'b000;

endmodule