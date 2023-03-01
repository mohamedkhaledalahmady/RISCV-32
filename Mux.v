module Mux
    #(parameter  n = 32)
    (
        input [n-1:0] In1, In2,
        input sel,
        output [n-1:0] out
    );

    assign out = sel ? In2 : In1;
endmodule
