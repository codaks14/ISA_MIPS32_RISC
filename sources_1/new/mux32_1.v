`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 18:52:27
// Design Name: 
// Module Name: mux32_1
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


module mux32_1(input wire a0,input wire a1,input wire a2,input wire a3,input wire a4,input wire a5,input wire a6,input wire a7,input wire a8,input wire a9,input wire a10,input wire a11,input wire a12,input wire a13,input wire a14,input wire a15,input wire a16,input wire a17,input wire a18,input wire a19,input wire a20,input wire a21,input wire a22,input wire a23,input wire a24,input wire a25,input wire a26,input wire a27,input wire a28,input wire a29,input wire a30,input wire a31,input wire [4:0] sel,output wire s);
wire t1,t2;
mux16_1 m0(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,sel[3:0],t1);
mux16_1 m1(a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,sel[3:0],t2);
mux2_1 m2(t1,t2,sel[4],s);

endmodule
