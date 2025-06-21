module arithmetic_unit (
    input  [3:0] X2,
    input  [3:0] X1,
    input  [3:0] X0,
    output reg [3:0] F
);

    reg [3:0] tmp1, tmp2;
    reg [3:0] F_reg;

    always @(*) begin
        F_reg = 4'b0000;             // ????????????? F
        tmp1 = X2 & X0;              // AND
        tmp2 = tmp1 | X1;            // OR
        F = tmp2 ^ F_reg;            // XOR
    end

endmodule
