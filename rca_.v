`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2025 20:59:10
// Design Name: 
// Module Name: rca_
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


module rca_ #(parameter N=4)(s,c,a,b,cin);
output [N-1:0]s;
output c;
input [N-1:0]a,b;
input cin;
wire [N-2:0]ci;
fa_ f1(.a(a[0]),.b(b[0]),.co(ci[0]),.s(s[0]),.ci(cin));
genvar i;
generate 
for(i=1;i<N-1;i=i+1) begin
fa_ f(.a(a[i]),.b(b[i]),.co(ci[i]),.s(s[i]),.ci(ci[i-1]));
end
endgenerate
fa_ fn(.a(a[N-1]),.b(b[N-1]),.co(c),.s(s[N-1]),.ci(ci[N-2]));
endmodule
