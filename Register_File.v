module Register_File
    #(
        parameter n             = 32,
        parameter width         = 32,
        parameter address_lines = 5,
        parameter entries       = 32
    )
    (
        input  [width-1:0] WD3,
        input  [address_lines-1:0] A1, A2, A3,
        input  clk, areset, WE3, 
        output [width-1:0] RD1, RD2
    );

    reg [width-1:0] memory [entries-1:0];

    // /* Initialize Instruction Memory with machine code of program */
    // initial begin
    //     $readmemh("data_memory.hex", memory);
    // end

    initial begin
        $readmemh("data_memory.hex", memory);
    end
    always @(posedge clk, negedge areset) begin
        if (!areset) begin
            // $readmemh("data_memory.hex", memory); /* or put zeros in all data */
        end
        else if (WE3) begin
            memory[A3] <= WD3;
        end
    end

    assign RD1 = memory[A1];
    assign RD2 = memory[A2];

endmodule
