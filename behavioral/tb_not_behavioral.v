module tb_not_behavioral;

    reg A;
    wire Y;

    not_behavioral dut (A, Y);

    initial
    begin
        $monitor("Time=%0t A=%b Y=%b",
                  $time, A, Y);

        A = 0;
        #10 A = 1;
        #10 $finish;
    end

endmodule
