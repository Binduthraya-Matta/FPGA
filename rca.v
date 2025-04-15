`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2025 10:51:10
// Design Name: 
// Module Name: rca
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
// 4 bit rca
module rca(a,b,c,sum,carry);
input [3:0]a,b;
input c;
wire [3:0]ci;
genvar i;
output [3:0]sum;
output carry;
assign sum[0]=a[0]^b[0]^c;
assign ci[0] = (a[0] & b[0]) | (a[0] & c) | (b[0] & c);
generate
for(i=1;i<4;i=i+1) begin
assign sum[i]=a[i]^b[i]^ci[i-1];
assign ci[i] = (a[i] & b[i]) | (a[i] & ci[i-1]) | (b[i] & ci[i-1]);
end
assign carry=ci[3];
endgenerate
endmodule