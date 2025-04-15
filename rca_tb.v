`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2025 21:32:17
// Design Name: 
// Module Name: rca_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rca_tb;
    reg [3:0] a, b;  // 4-bit input operands
    reg cin;          // Carry-in
    wire [3:0] s;     // 4-bit sum output
    wire c;           // Carry-out

    // Instantiate the RCA module
    rca_  uut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .c(c)
    );

    initial begin
        // Apply test vectors
        a = 4'b1010; b = 4'b1100; cin = 0;   // Test 1
        #10;
        a = 4'b1111; b = 4'b0001; cin = 1;   // Test 2
        #10;
        a = 4'b0101; b = 4'b1011; cin = 0;   // Test 3
        #10;
        a = 4'b1111; b = 4'b1111; cin = 0;   // Test 4
        #10;
        
        $stop;  // End the simulation
    end
endmodule

