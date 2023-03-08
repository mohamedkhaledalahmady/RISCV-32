`include "Top_Module.v"
`timescale 1ns/1ps

module Top_Module_tb;
    
    reg clk, areset;
    integer i;
    Top_Module T0 (.clk(clk), .areset(areset));

    always begin
        #10 clk=~clk;
    end

    initial begin
        $dumpfile("Top_Module.vcd");
        $dumpvars(0, Top_Module_tb);
        $display("GCD is %d", T0.R0.memory[2]);
        clk = 1'b0; areset=1'b0;
        #10 areset=1'b1;
        #10000
        $display("GCD is %d", T0.R0.memory[2]);
        #10 $finish;
    end
endmodule
