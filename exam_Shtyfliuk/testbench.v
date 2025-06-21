module tb_arithmetic_unit();

    reg [3:0] X2, X1, X0;
    wire [3:0] F;

    arithmetic_unit uut (
        .X2(X2),
        .X1(X1),
        .X0(X0),
        .F(F)
    );

    initial begin
        // ????? 3124 ? ??????: X2=1100, X1=0011, X0=0100
        X2 = 4'b1100;
        X1 = 4'b0011;
        X0 = 4'b0100;

        #10;  // ??? ??? ??????????

        $display("F = %b", F);

        // ????????? ???????????
        if (F == 4'b0111) 
            $display("Test Passed");
        else
            $display("Test Failed");

        $finish;
    end
endmodule
