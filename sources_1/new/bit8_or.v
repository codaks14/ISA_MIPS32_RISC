`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 15:33:16
// Design Name: 
// Module Name: bit8_or
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


module bit8_or(input wire [7:0] a,input wire [7:0] b,output wire [7:0] z);
or r1(z[0],a[0],b[0]);
or r2(z[1],a[1],b[1]);
or r3(z[2],a[2],b[2]);
or r4(z[3],a[3],b[3]);
or r5(z[4],a[4],b[4]);
or r6(z[5],a[5],b[5]);
or r7(z[6],a[6],b[6]);
or r8(z[7],a[7],b[7]);
endmodule