module tb_sop_conditional;

    reg A, B, C;
    wire F;
    integer i;

    sop_conditional dut (
        .A(A),
        .B(B),
        .C(C),
        .F(F)
    );

    initial begin
        $monitor("Time=%0t A=%b B=%b C=%b F=%b",
                 $time, A, B, C, F);

        for (i = 0; i < 8; i = i + 1) begin
            {A, B, C} = i;
            #10;
        end

        $finish;
    end

endmodule
