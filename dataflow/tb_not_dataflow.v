module tb_not_dataflow;

    reg A;
    wire Y;

    not_dataflow dut (A, Y);

    initial
    begin
        $monitor("Time=%0t A=%b Y=%b",
                  $time, A, Y);

        A = 0;
        #10 A = 1;
        #10 $finish;
    end

endmodule
