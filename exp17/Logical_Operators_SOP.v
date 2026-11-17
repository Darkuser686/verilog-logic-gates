module Logical_Operators_SOP (
    input A,
    input B,
    input C,
    output Y
);

    assign Y = (~B & C) | (~A & B) | (A & C);

endmodule
