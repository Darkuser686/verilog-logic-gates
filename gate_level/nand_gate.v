module nand_gate (Y, A, B);

    input A, B;
    output Y;

    nand g1 (Y, A, B);

endmodule
