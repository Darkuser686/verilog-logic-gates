module nand_dataflow (
    input A, B,
    output Y
);

    assign Y = ~(A & B);

endmodule
