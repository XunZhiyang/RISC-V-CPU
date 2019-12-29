`include "defines.v"
module mem_ctrl(
    input wire clk,
    input wire rst,

    input wire read_inst_i,
    input wire[`AddrBus] read_inst_addr,

    input wire op_data_i,
    input wire[`AddrBus] op_data_addr,

    input wire op_rw,
    input wire[2:0] op_num,
    input wire[`DataBus] write_content,

    output reg read_inst_ok,
    output reg op_data_ok,

    output reg ram_rw,
    output reg[`AddrBus] address_o,
    output reg[`DataBus] write_ram_o,
 
    output reg[`DataBus] result_o
);
    reg[1:0] state;
    reg channel;  //1 for data 0 for inst
    reg mem_rw;
    reg[2:0] cnt;
    reg[2:0] byte_num;

    always @ (posedge clk) begin
        if (rst == `Enable) begin
            state <= `WAITING;
            read_inst_ok <= 1'b0;
            op_data_ok <= 1'b0;
        end
        else if (!rdy) begin
        end
        else begin
            case (state)
                `WAITING: begin
                    if (op_data_i) begin
                        ram_rw <= op_rw;
                        address_o <= op_data_addr;
                        byte_num <= op_num;
                        if (op_rw == `MemRead) begin
                            state <= `READING;
                        end
                        else begin
                            state <= `WRITING;
                            write_ram_o <= write_content[7:0];
                            address_o <= address_o + 1;  //to be cautious!!!!!!!!!!!
                        end
                        channel <= 1'b1;
                    end
                    else if (read_inst_i) begin
                        ram_rw <= `MemRead;
                        address_o <= read_inst_addr;
                        byte_num <= 3'b1;
                        state <= `READING;
                        channel <= 1'b0;
                    end
                end
                `READING: begin00
                    cnt <= cnt + 1;
                    if (cnt < byte_num - 1) begin
                        address_o <= address_o + 1;
                     end
                    if (cnt == 1) begin
                        result_o[7:0] <= data_from_mem;
                    end
                    else if (cnt == 2) begin
                        result_o[15:8] <= data_from_mem;
                    end
                    else if (cnt == 3) begin
                        result_o[23:16] <= data_from_mem;
                    end
                    else if (cnt == 4) begin
                        result_o[31:24] <= data_from_mem;
                    end

                    if (cnt == byte_num) begin
                        state <= `WAITING;
                        if (channel == 1'b1) begin
                            op_data_ok <= 1'b1;
                        end 
                        else begin
                            read_inst_ok <= 1'b0;
                        end
                    end
                end
                `WRITING: begin
                   cnt <= cnt + 1;
                    // if (cnt < byte_num - 1) begin
                    //     address_o <= address_o + 1;
                    //  end
                    if (cnt == 0) begin
                        write_ram_o <= write_content[15:8];
                    end
                    else if (cnt == 1) begin
                        write_ram_o <= write_content[23:16];
                    end
                    else if (cnt == 2) begin
                        write_ram_o <= write_content[31:24];
                    end
                
                    address_o <= address_o + 1;
                    if (cnt == byte_num - 2) begin
                        state <= `WAITING;
                        op_data_ok <= 1'b1;
                    end
                end
                default: ;
            endcase
        end
    end

endmodule