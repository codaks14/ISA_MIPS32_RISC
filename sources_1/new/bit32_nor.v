`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 15:35:56
// Design Name: 
// Module Name: bit32_nor
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


module bit32_nor(input wire [31:0] a,input wire [31:0] b,output wire [31:0] c);
wire [31:0] t;
bit32_or o1(a,b,t);
bit32_not n1(t,c);
endmodule
