module ctrl(
    input wire rst,
    input wire stallreq_from_if,
    input wire stallreq_from_id,
    input wire stallreq_from_ex,
    input wire stallreq_from_mem,
    output reg[5:0] stall
);

    always @ (*) begin
        if (rst == `Enable) begin
            stall = 6'b000000;
        end else if (stallreq_from_mem == `Enable) begin
            stall = 6'b011111;
        end else if (stallreq_from_ex == `Enable) begin
            stall = 6'b001111;
        end else if (stallreq_from_id == `Enable) begin
            stall = 6'b000111;
        end else if (stallreq_from_if == `Enable) begin
            stall = 6'b000011; 
        end else begin
            stall = 6'b000000;
        end
    end
endmodule