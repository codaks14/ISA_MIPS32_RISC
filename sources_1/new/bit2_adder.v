`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:23:43
// Design Name: 
// Module Name: bit2_adder
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


module bit2_adder(input wire [1:0] a,input wire [1:0] b,input wire cin,output wire [1:0] s,output wire cout);
wire t;

fulladderstru f0(a[0],b[0],cin,s[0],t);
fulladderstru f1(a[1],b[1],t,s[1],cout);

endmodule
