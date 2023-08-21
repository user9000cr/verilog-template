`timescale 1ns/1ps

module alu(
    input      [3:0] a,
    input      [3:0] b,
    input      [1:0] sel,
    output reg [3:0] c
);

    // case statement for ALU operations
    always @(*) begin
        case(sel)
            2'b00: c = a & b; // AND operation
            2'b01: c = a | b; // OR operation
            2'b10: c = a + b; // ADD operation
            2'b11: c = a - b; // SUBSTRACT operation
            default: c = 4'bxxxx;
        endcase
    end

endmodule
