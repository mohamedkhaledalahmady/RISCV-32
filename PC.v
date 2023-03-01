module PC
    #(parameter n = 32)
    (
        input [n-1:0] PCNext,
        input clk, areset, load,
        output reg [n-1:0] PC
    );

    always @(posedge clk, negedge areset) begin
        if (!areset) begin
            PC <= {n{1'b0}};
        end
        else if (load) begin
            PC <= PCNext;
        end
    end
endmodule
