`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
module Mul(a,b,out);
input [3:0]a,b;
output [7:0]out;
genvar i;
genvar j;wire [11:0]s;
wire [15:0]p;
wire [1:0]c;
generate
for(j=0;j<4;j=j+1) begin
for(i=0;i<4;i=i+1) begin 
assign p[j*4+i]=a[j]&b[i];
end
end 
endgenerate
rca_ c1(.a({1'b0,p[3:1]}),.b((p[7:4])),.cin(1'b0),.s(s[3:0]),.c(c[0]));//(s,c,a,b,cin);
rca_ c2(.a({c[0],s[3:1]}),.b((p[11:8])),.cin(1'b0),.s(s[7:4]),.c(c[1]));
rca_ c3(.a({c[1],s[7:5]}),.b((p[15:12])),.cin(1'b0),.s(s[11:8]),.c(out[7]));
assign out[6:0]={s[11:8],s[4],s[1],p[0]};
endmodule
