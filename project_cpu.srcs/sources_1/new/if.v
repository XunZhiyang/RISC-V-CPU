module iFetch(
    input wire[`InstAddrBus] pc,
    // input wire fetch;
    input wire read_inst_ok,
    input wire[`InstBus] read_inst_data,

    output reg stall;
    output reg read_inst_o,
    output reg[`InstAddrBus] read_inst_addr
);

    always @ (*) begin
        if (read_inst_ok == `Enable) begin
            stall <= `Disable;
        end else
        if (fetch == `Enable) begin
            stall <= `Enable;
            read_inst_addr <= pc;

        end
    end
endmodule