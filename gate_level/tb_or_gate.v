module tb_or_gate;

    reg A, B;
    wire Y;

    or_gate dut (Y, A, B);

    initial
    begin
        $monitor("Time=%0t A=%b B=%b Y=%b",
                  $time, A, B, Y);

        A = 0; B = 0;
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;
        #10 $finish;
    end

endmodule
