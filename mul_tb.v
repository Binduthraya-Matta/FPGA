`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2025 22:32:59
// Design Name: 
// Module Name: mul_tb
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


module mul_tb();
reg [3:0]a,b;
wire [6:0]sum;
wire carry;
    Mul uut(.a(a),.b(b),.sum(sum),.carry(carry));
    initial begin
    
    a=4'b1011;b=4'b1101;
    #10 a=4'b0111;b=4'b0101;
    #10 a=4'h6;b=4'h4;
    #10 a=4'h9;b=4'h9;
    #40 $finish;
    end
initial  begin $monitor("Time=%g | a=%b, b=%b => sum=%b, carry=%b", 
              $time, a, b, sum, carry); end
endmodule
