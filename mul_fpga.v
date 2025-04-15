`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 11:56:41
// Design Name: 
// Module Name: mul_fpga
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
module mul_fpga(s,button,out);
   input [3:0]s; //select lines
   input button; //for select line for final output
   output reg [3:0]out;
   reg [3:0]a,b;
   wire [7:0]w;
   parameter A = 1, B = 2, C = 3, D = 4, 
             E = 5, F = 6, G = 7, H = 8, 
             I = 9, J = 10, K = 11, L = 12, 
             M = 13, N = 14, O = 15, P = 0;
   always @(*) begin
   casex(s) 
         4'b0000: begin a = A; b = B; end
         4'b0001: begin a = C; b = D; end
         4'b0010: begin a = E; b = F; end
         4'b0011: begin a = G; b = H; end
         4'b0100: begin a = I; b = J; end
         4'b0101: begin a = K; b = L; end
         4'b0110: begin a = M; b = N; end
         4'b0111: begin a = O; b = P; end
         default: begin a = 0; b = 0; end
   endcase end
   Mul m1(.a(a),.b(b),.out(w));
always @(*) begin
casex(button) 
1'b0: out=w[3:0];
1'b1: out=w[7:4];
default: out=4'h0;
endcase
end
endmodule
