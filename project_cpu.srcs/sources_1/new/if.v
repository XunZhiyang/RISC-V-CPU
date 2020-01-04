module iFetch(
    input wire rst,

    input wire[`InstAddrBus] pc,
    input wire pc_stalling,
    // input wire fetch;
    input wire read_inst_ok,
    input wire[`InstBus] read_inst_data,

    output reg stall,
    output reg reading,
    output reg[`InstAddrBus] read_inst_addr,
    output reg[`InstAddrBus] pc_o,

    output reg[`InstBus] inst_o
);

    always @ (*) begin
        if (rst) begin
            pc_o = 0;
            stall = `Disable;
            read_inst_addr = `ZeroWord;
            inst_o = `ZeroWord;
            reading = `Disable;
        end
        else if (read_inst_ok) begin
            pc_o = pc;
            stall = `Disable;
            read_inst_addr = `ZeroWord;
            inst_o = read_inst_data;
            reading = `Disable;
        end
        else begin
            pc_o = 0;
            stall = `Enable;
            read_inst_addr = pc;   
            inst_o = `ZeroWord;
            reading = `Enable;
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