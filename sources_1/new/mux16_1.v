`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 16:48:28
// Design Name: 
// Module Name: Mux16_1
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


module Mux16_1(input wire[31:0] a,input wire [31:0] b,input wire[31:0] c,input wire [31:0] d, input wire [31:0] e,input wire [31:0] f,input wire [31:0] g,input wire [31:0] h, input wire [31:0] i,input wire [31:0] j,input wire [31:0] k,input wire [31:0] l, input wire [31:0] m,input wire [31:0] n,input wire [31:0] o,input wire [31:0] p, input wire [3:0] select,output wire [31:0] out);
    wire [31:0] d0,d1,d2,d3;
    wire [2:0] t;
    assign t[0] = select[0];
    assign t[1] = select[1];
    assign t[2] = select[2];
    Mux8_1 m0(a,b,c,d,e,f,g,h,t,d1);
    Mux8_1 m1(i,j,k,l,m,n,o,p,t,d2);
    Mux2_1 m2(d1,d2,select[3],out);
endmodule
