module iFetch(
    input wire rst;

    input wire[`InstAddrBus] pc,
    // input wire fetch;
    input wire read_inst_ok,
    input wire[`InstBus] read_inst_data,

    output reg stall,
    output reg[`InstAddrBus] read_inst_addr

    output reg[`InstBus] inst_o,
);

    always @ (*) begin
        if (rst) begin
            stall <= `Disable;
            read_inst_addr <= `ZeroWord;
            inst_o <= `ZeroWord;
        end
        else if (read_inst_ok) begin
            stall <= `Disable;
            read_inst_addr <= `ZeroWord;
            inst_o = read_inst_data;
        end
        else begin
            stall <= `Enable;
            read_inst_addr <= pc;
            inst_o <= `ZeroWord;
        end
    end 
    // always @ (*) begin
    //     if (read_inst_ok == `Enable) begin
    //         stall <= `Disable;
    //     end else
    //     if (fetch == `Enable) begin
    //         stall <= `Enable;
    //         read_inst_addr <= pc;

    //     end
    // end
endmodule