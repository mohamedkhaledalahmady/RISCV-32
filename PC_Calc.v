module PC_Calc
    #(parameter n = 32)
    (
        input [n-1:0] ImmExt, PC,
        input PCSrc,
        output reg [n-1:0] PCNext
    );

    always @(*) begin
        if (PCSrc) begin
            PCNext <= PC + ImmExt;            
        end
        else begin
            PCNext <= PC + 32'd4;
        end
    end
endmodule
