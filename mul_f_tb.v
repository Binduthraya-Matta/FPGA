`timescale 1ns / 1ps


module mul_f_tb();

    // Inputs
    reg [3:0] s;
    reg button;
    
    // Output
    wire [3:0] out;

    // Instantiate the mul_fpga module
    mul_fpga uut (
        .s(s),
        .button(button),
        .out(out)
    );

    // Initial block for applying test cases
    initial begin
        // Test all combinations of s and button
        // Loop through all 16 possible values of s
        for (s = 4'b0000; s <= 4'b1111; s = s + 1) begin
            // Test both button values (0 and 1)
            button = 1'b0; #10;  // button = 0, wait 10 time units
            button = 1'b1; #10;  // button = 1, wait 10 time units
        end

        // End the simulation after all test cases
        #80;
        $finish;
    end

    // Display the values of the inputs and output during simulation
    initial begin
        $monitor("Time = %0t | s = %b | button = %b | out = %b", $time, s, button, out);
    end

    // Add initial delay to see the changes clearly
    initial begin
        $display("Starting Simulation");
        #1;
    end

endmodule



