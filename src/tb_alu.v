`timescale 1ns/1ps

// Testbench for an ALU
module tb_alu;
    // variables needed
    reg  [3:0] a;
    reg  [3:0] b;
    reg  [1:0] sel;
    wire [3:0] c;

    // DUT - Device Under Test
    alu dut(
        .a(a),
        .b(b),
        .sel(sel),
        .c(c)
    );

    // generation of waveform file
    initial begin
        $dumpfile("tb_alu.vcd");
        $dumpvars(0, tb_alu);
    end

    initial begin
        a = 4'b0;
        b = 4'b0;
        sel = 2'b00;
        #10
        a = 4'b1010;
        b = 4'b0101;
        sel = 2'b10;
        #10
        a = 'd7;
        b = 'd7;
        #10
        a = 'd4;
        b = 'd3;
        sel = 2'b11;
        #10
        a = 'd9;
        b = 'd5;
        #10
        a = 4'b0111;
        b = 4'b0101;
        sel = 2'b00;
        #10
        sel = 2'b01;
        #10
        a = 4'b1000;
        b = 4'b1101;
        sel = 2'b00;
        #10
        sel = 2'b01;
        #10
        #10;
        $finish;
    end
endmodule
