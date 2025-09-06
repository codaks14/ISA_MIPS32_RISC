`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 15:34:24
// Design Name: 
// Module Name: bit8_xor
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


module bit8_xor(input wire [7:0] a,input wire [7:0] b,output wire [7:0] z);
xor x1(z[0],a[0],b[0]);
xor x2(z[1],a[1],b[1]);
xor x3(z[2],a[2],b[2]);
xor x4(z[3],a[3],b[3]);
xor x5(z[4],a[4],b[4]);
xor x6(z[5],a[5],b[5]);
xor x7(z[6],a[6],b[6]);
xor x8(z[7],a[7],b[7]);
endmodule
