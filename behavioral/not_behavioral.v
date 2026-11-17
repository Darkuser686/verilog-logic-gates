module not_behavioral (
    input A,
    output reg Y
);

    always @(*)
    begin
        Y = ~A;
    end

endmodule
