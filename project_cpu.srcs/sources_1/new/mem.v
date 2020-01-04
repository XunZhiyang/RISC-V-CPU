`include "defines.v"

module mem(
    input wire rst,
    input wire[`InstAddrBus] pc_i,

    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,
    input wire[`RegBus] wdata_i,

    input wire[`AddrBus] mem_data_addr,
    input wire mem_rw,
    input wire[2:0] mem_byte_num,
    input wire mem_sign,

    input wire[`DataBus] mem_result,
    input wire op_data_ok,
    input wire[1:0] mem_ctrl_state,

    input wire[`RegAddrBus] wd_back,
    input wire wreg_back,
    input wire signed_back,
    input wire[2:0] op_num_back,
    
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o,

    output reg op_data_o,
    output reg[`AddrBus] op_data_addr,
    output reg op_rw,
    output reg[2:0] op_num,
    output reg[`DataBus] write_content,

    output reg[`InstAddrBus] pc_o,

    output reg mem_stall,

    output reg[`RegAddrBus] wd_mem,
    output reg wreg_mem,
    output reg signed_mem

    );

    always @ (*) begin
        if (rst || mem_ctrl_state) begin
            wd_o = 0;
            wreg_o = 0; 
            pc_o = 0;
            wdata_o = 0;
        end else if (op_data_ok) begin
            ///wd_o = wd_back; we need that?
            //
            wd_o = wd_back;
            wreg_o = wreg_back;
            wdata_o = mem_result;
            pc_o = pc_i;
           if (signed_back) begin
                if (op_num_back == 3'b001)
                    wdata_o = $signed(mem_result[7:0]);
                else if (op_num_back == 3'b010)
                    wdata_o = $signed(mem_result[15:0]);
                else
                    wdata_o = $signed(mem_result[31:0]);
            end
            else begin
                if (op_num_back == 3'b001)
                    wdata_o = {{24{1'b0}}, mem_result[7:0]};
                else if (op_num_back == 3'b010)
                    wdata_o = {{16{1'b0}}, mem_result[15:0]};
                else begin end
            end
        end else if (!mem_byte_num) begin
            pc_o = pc_i;
            wd_o = wd_i;
            wreg_o = wreg_i;
            wdata_o = wdata_i;
        end else begin
            pc_o = 0;
            wd_o = 0;
            wreg_o = 0;
            wdata_o = 0;
        end
    end

    always @ (*) begin
        if (rst) begin
            mem_stall = 0;
            op_data_addr = 0;
            op_data_o = 0;
            op_rw = 0;
            write_content = 0;
            op_num = 0;
            wd_mem = 0;
            wreg_mem = 0;
            signed_mem = 0;
        end else if (mem_ctrl_state) begin
            mem_stall = 1;
            op_data_addr = 0;
            op_data_o = 0;
            op_rw = 0;
            write_content = 0;
            op_num = 0;
            wd_mem = 0;
            wreg_mem = 0;
            signed_mem = 0;
        end else if (mem_data_addr && mem_byte_num) begin
            mem_stall = 0;
            op_data_addr = mem_data_addr;
            op_data_o = 1;
            op_rw = mem_rw;
            write_content = wdata_i;
            op_num = mem_byte_num;
            wd_mem = wd_i;
            wreg_mem = wreg_i;
            signed_mem = mem_sign;
        end else if (mem_byte_num) begin
            mem_stall = 1;
            op_data_addr = 0;
            op_data_o = 0;
            op_rw = 0;
            write_content = 0;
            op_num = 0;
            wd_mem = 0;
            wreg_mem = 0;
            signed_mem = 0;
        end else if (op_data_ok && !mem_byte_num) begin
            mem_stall = 1;
            op_data_addr = 0;
            op_data_o = 0;
            op_rw = 0;
            write_content = 0;
            op_num = 0;
            wd_mem = 0;
            wreg_mem = 0;
            signed_mem = 0;
        end else begin
            mem_stall = 0;
            op_data_addr = 0;
            op_data_o = 0;
            op_rw = 0;
            write_content = 0;
            op_num = 0;
            wd_mem = 0;
            wreg_mem = 0;
            signed_mem = 0;
        end 
    end
    // reg lock_mem_stall;

    // always @(*) begin
    //     if (rst) begin
    //         wd_o <= 0;
    //         wreg_o <= 0;
    //         wdata_o <= 0;
    //         mem_stall <= `Disable;
    //         op_data_o <= 0;
    //         op_data_addr <= 0;
    //         op_rw <= 0;
    //         op_num <= 0;
    //         write_content <= 0;
    //     end
    //     else if (mem_byte_num == 3'b000) begin
    //             wd_o <= wd_i;
    //             wreg_o <= wreg_i;
    //             wdata_o <= wdata_i;
    //             mem_stall <= `Disable;
    //             op_data_o <= 0;
    //             op_data_addr <= 0;
    //             op_rw <= 0;
    //             op_num <= 0;
    //             write_content <= 0;       
    //     end
    //     else if (mem_rw == 0) begin
    //         mem_stall <= `Enable;
    //         write_content <= 0;
    //         wd_o <= wd_i;
    //         wdata_o <= 0;
    //         wreg_o <= `Enable;
    //         op_data_o <= `Enable;
    //         op_rw <= mem_rw;
    //         op_data_addr <= wdata_o;
    //         op_num <= mem_byte_num;
    //         if (op_data_ok) begin
    //             if (mem_sign) begin
    //                 if (mem_byte_num == 3'b001)
    //                     wdata_o <= $signed(mem_result[7:0]);
    //                 else if (mem_byte_num == 3'b010)
    //                     wdata_o <= $signed(mem_result[15:0]);
    //                 else
    //                     wdata_o <= $signed(mem_result[31:0]);
    //             end
    //             else begin
    //                 if (mem_byte_num == 3'b001)
    //                     wdata_o <= {{24{1'b0}}, mem_result[7:0]};
    //                 else if (mem_byte_num == 3'b010)
    //                     wdata_o <= {{16{1'b0}}, mem_result[15:0]};
    //             end
    //             mem_stall <= `Disable;
    //             op_data_o <= 0;
    //         end
    //         // else if (mem_ctrl_state == `WAITING) begin
    //         //     mem_stall <= `Enable;
    //         // end
    //         // else begin
    //         //     mem_stall <= lock_mem_stall;
    //         // end
    //     end
    //     else begin
    //         mem_stall <= `Enable;
    //         write_content <= wdata_i;
    //         wd_o <= wd_i;
    //         wdata_o <= 0;
    //         wreg_o <= `Disable;
    //         op_data_o <= `Enable;
    //         op_rw <= mem_rw;
    //         op_data_addr <= mem_data_addr;
    //         op_num <= mem_byte_num;
    //         if (op_data_ok) begin
    //             mem_stall <= 0;
    //             op_data_o <= 0;
    //         end
    //         // else if (mem_ctrl_state == `WAITING) begin
    //         //     mem_stall <= `Enable;
    //         // end
    //         // else begin
    //         //     mem_stall <= lock_mem_stall;
    //         // end
    //     end
    // end

    // // always @ (*) begin  // considering reset here is unnecessary
    // //     if (rst || mem_ctrl_state) begin
    // //         pc_o <= `ZeroWord;
    // //         mem_stall <= `Disable;
    // //         wreg_o <= `Disable;
    // //         op_num <= 0;
    // //         op_data_o <= `Disable;
    // //     end
    // //     else begin
    // //         pc_o <= pc_i;
    // //         if (op_data_ok) begin
    // //             mem_stall <= `Disable;
    // //             op_data_o <= `Disable;
    // //             // wdata_o <= mem_result;
    // //             wreg_o <= wreg_i;
    // //             wd_o <= wd_i;
    // //             if (mem_sign) wdata_o <= $signed(mem_result);
    // //             else wdata_o <= mem_result;
    // //             // wdata_o <= wdata_i;
    // //             // op_data_addr <= `ZeroWord;
    // //         end else begin
    // //             mem_stall <= `Enable;
    // //             op_data_o <= `Enable;
    // //             op_data_addr <= mem_data_addr;
    // //             op_rw <= mem_rw;
    // //             op_num <= mem_byte_num;
    // //             write_content <= wdata_i;
    // //         end
    // //         end else begin 
    // //             mem_stall <= `Disable;
    // //             op_data_o <= `Disable;
    // //             wd_o <= wd_i;
    // //             wreg_o <= wreg_i;
    // //             wdata_o <= wdata_i;
    // //         end
    // //         else begin
    // //     end
    // // end
    // //     lock_mem_stall <= mem_stall;
    // // end
endmodule