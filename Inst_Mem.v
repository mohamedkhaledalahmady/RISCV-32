module Inst_Mem
    #(
        parameter n       = 32,
        parameter width   = 32,
        parameter entries = 265
    )
    (
        input  [n-1:0] A,
        output [n-1:0] RD
    );

    reg [width-1:0] memory [0:entries-1];

    /* Initialize Instruction Memory with machine code of program */
    initial begin
        $readmemh("memory_file.hex", memory);
    end

    assign RD = memory[A[31:2]];
endmodule
