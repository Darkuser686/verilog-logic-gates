module sop_conditional (
    input A,
    input B,
    input C,
    output F
);

    assign F = (A==0 && B==0 && C==1) ? 1'b1 :
               (A==0 && B==1 && C==0) ? 1'b1 :
               (A==1 && B==0 && C==1) ? 1'b1 :
               (A==1 && B==1 && C==1) ? 1'b1 :
               1'b0;

endmodule
