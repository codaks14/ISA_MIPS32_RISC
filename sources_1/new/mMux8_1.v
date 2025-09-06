`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:48 09/11/2024 
// Design Name: 
// Module Name:    Mux8_1 
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
module Mux8_1(input wire[31:0] a,input wire [31:0] b,input wire[31:0] c,input wire [31:0] d,
input wire [31:0] e,input wire [31:0] f,input wire [31:0] g,input wire [31:0] h,
input wire [2:0] select,output wire [31:0] out
    );
wire [31:0] d0,d1,d2,d3;
wire [1:0] t;
assign t[0] = select[0];
assign t[1] = select[1];
Mux4_1 m0(a,b,c,d,t,d1);
Mux4_1 m1(e,f,g,h,t,d2);
Mux2_1 m2(d1,d2,select[2],out);

endmodule
