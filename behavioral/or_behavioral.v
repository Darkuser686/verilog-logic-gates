module or_behavioral (
    input A, B,
    output reg Y
);

    always @(*)
    begin
        Y = A | B;
    end

endmodule
