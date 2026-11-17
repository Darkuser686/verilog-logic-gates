module pos_gate_level (
    input A,
    input B,
    input C,
    output F
);

    wire t1, t2, t3, t4;

    or  (t1, A, B, C);       // Maxterm 0
    or  (t2, A, ~B, ~C);     // Maxterm 3
    or  (t3, ~A, B, C);      // Maxterm 4
    or  (t4, ~A, ~B, C);     // Maxterm 6

    and (F, t1, t2, t3, t4);

endmodule
