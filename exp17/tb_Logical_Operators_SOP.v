module tb_Logical_Operators_SOP;

    reg A, B, C;
    wire Y;
    integer i;

    Logical_Operators_SOP dut (
        .A(A),
        .B(B),
        .C(C),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t A=%b B=%b C=%b Y=%b",
                 $time, A, B, C, Y);

        for (i = 0; i < 8; i = i + 1) begin
            {A, B, C} = i;
            #10;
        end

        $finish;
    end

endmodule
