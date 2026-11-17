module tb_not_gate;

    reg A;
    wire Y;

    not_gate dut (Y, A);

    initial
    begin
        $monitor("Time=%0t A=%b Y=%b",
                  $time, A, Y);

        A = 0;
        #10 A = 1;
        #10 $finish;
    end

endmodule
