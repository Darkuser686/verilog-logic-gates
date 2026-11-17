module tb_and_behavioral;

    reg A, B;
    wire Y;

    and_behavioral dut (A, B, Y);

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
