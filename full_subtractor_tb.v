`timescale 1ns/1ps

module full_subtractor_tb;

    reg A;
    reg B;
    reg Bin;

    wire Difference;
    wire Bout;

    // Instantiate Full Subtractor
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Difference(Difference),
        .Bout(Bout)
    );

    // Generate waveform
    initial begin
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, full_subtractor_tb);
    end

    // Test all possible input combinations
    initial begin
        $display("============================================");
        $display("        FULL SUBTRACTOR SIMULATION");
        $display("============================================");
        $display("Time   A B Bin | Difference Bout");
        $display("--------------------------------------------");

        $monitor("%-6t %b %b  %b  |     %b        %b",
                 $time, A, B, Bin, Difference, Bout);

        A = 1'b0;
        B = 1'b0;
        Bin = 1'b0;
        #10;

        A = 1'b0;
        B = 1'b0;
        Bin = 1'b1;
        #10;

        A = 1'b0;
        B = 1'b1;
        Bin = 1'b0;
        #10;

        A = 1'b0;
        B = 1'b1;
        Bin = 1'b1;
        #10;

        A = 1'b1;
        B = 1'b0;
        Bin = 1'b0;
        #10;

        A = 1'b1;
        B = 1'b0;
        Bin = 1'b1;
        #10;

        A = 1'b1;
        B = 1'b1;
        Bin = 1'b0;
        #10;

        A = 1'b1;
        B = 1'b1;
        Bin = 1'b1;
        #10;

        $display("--------------------------------------------");
        $display("Simulation completed successfully.");
        $finish;
    end

endmodule
