`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 13:38:31
// Design Name: 
// Module Name: mux_16
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


module mux_16(i,s,out);
input [15:0]i;
input [3:0]s;
output reg out;
always @(*) begin
   casex(s) 
   4'h0: out=i[0];
   4'h1: out=i[1];
   4'h2: out=i[2];
   4'h3: out=i[3];
   4'h4: out=i[4];
   4'h5: out=i[5];
   4'h6: out=i[6];
   4'h7: out=i[7];
   4'h8: out=i[8];
   4'h9: out=i[9];
   4'h10: out=i[10];
   4'h11: out=i[11];
   4'h12: out=i[12];
   4'h13: out=i[13];
   4'h14: out=i[14];
   4'h15: out=i[15];
   endcase end
endmodule
