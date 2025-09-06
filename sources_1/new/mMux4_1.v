`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:16 09/11/2024 
// Design Name: 
// Module Name:    Mux4_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux4_1(input wire [31:0] a,input wire [31:0] b,input wire [31:0] c,input wire [31:0] d,input wire [1:0] select,output wire[31:0] out);
wire [31:0] tem1,tem2;

Mux2_1 m0(a,b,select[0],tem1);
Mux2_1 m1(c,d,select[0],tem2);
Mux2_1 m2(tem1,tem2,select[1],out);

endmodule
