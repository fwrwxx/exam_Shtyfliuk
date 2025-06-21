# exam_Shtyfliuk

### програмний код
1. main_module
```
module arithmetic_unit (
    input  [3:0] X2,
    input  [3:0] X1,
    input  [3:0] X0,
    output reg [3:0] F
);

    reg [3:0] tmp1, tmp2;
    reg [3:0] F_reg;

    always @(*) begin
        F_reg = 4'b0000;             // Ініціалізація F
        tmp1 = X2 & X0;              // AND
        tmp2 = tmp1 | X1;            // OR
        F = tmp2 ^ F_reg;            // XOR
    end

endmodule
```
2. testbench
```
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
        // Число 3124 в бінарі: X2=1100, X1=0011, X0=0100
        X2 = 4'b1100;
        X1 = 4'b0011;
        X0 = 4'b0100;

        #10;  // Час для обчислення

        $display("F = %b", F);

        // Перевірка результатів
        if (F == 4'b0111) 
            $display("Test Passed");
        else
            $display("Test Failed");

        $finish;
    end
endmodule
```

### компіляція файлів:
![image](https://github.com/user-attachments/assets/23b07910-eb9e-48c2-b44b-d9a8cd4e9482)

### діаграма станів
![image](https://github.com/user-attachments/assets/97260ef8-b2cb-4d68-92de-cfe29e664f4b)
