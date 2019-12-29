`include "defines.v"

module mem(
    input wire rst,

    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,
    input wire[`RegBus] wdata_i,
    input wire[`DataBus] mem_result,

    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o,

    output reg op_data_o,
    output reg[`AddrBus] op_data_addr,

    output reg op_rw,
    output reg[2:0] op_num,
    output reg[`DataBus] write_content





    );

    always @ (*) begin  // considering reset here is unnecessary
        wd_o <= wd_i;
        wreg_o <= wreg_i;
        wdata_o <= wdata_i;
    end
endmodule