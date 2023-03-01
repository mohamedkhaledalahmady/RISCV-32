module Data_Mem
#(
    parameter entries       = 64,
    parameter width         = 32,   
    parameter address_lines = 32    
) (
    input clk, WE,
    input [width-1:0] WD, 
    input [address_lines-1:0] A, 
    output [width-1:0] RD
);
    reg [width-1:0] memory [entries-1:0];    /* 2D Data-Memory */
    
    initial begin
        $readmemh("data_memory.hex", memory);
    end   
    
    /* Sync write data */
    always @(posedge clk) begin
        if (WE) begin
            memory[A] <= WD;
        end
    end

    /* Async read data */
    assign RD = memory[A];

endmodule