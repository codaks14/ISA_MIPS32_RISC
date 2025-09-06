`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 19:57:14
// Design Name: 
// Module Name: Muxt2_1
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


module Muxt2_1(input wire [31:0] a,input wire [31:0] b,input wire sel,output wire [31:0] z);

mux2_1 b0(a[0],b[0],sel,z[0]);
mux2_1 b1(a[1],b[1],sel,z[1]);
mux2_1 b2(a[2],b[2],sel,z[2]);
mux2_1 b3(a[3],b[3],sel,z[3]);
mux2_1 b4(a[4],b[4],sel,z[4]);
mux2_1 b5(a[5],b[5],sel,z[5]);
mux2_1 b6(a[6],b[6],sel,z[6]);
mux2_1 b7(a[7],b[7],sel,z[7]);
mux2_1 b8(a[8],b[8],sel,z[8]);
mux2_1 b9(a[9],b[9],sel,z[9]);
mux2_1 b10(a[10],b[10],sel,z[10]);
mux2_1 b11(a[11],b[11],sel,z[11]);
mux2_1 b12(a[12],b[12],sel,z[12]);
mux2_1 b13(a[13],b[13],sel,z[13]);
mux2_1 b14(a[14],b[14],sel,z[14]);
mux2_1 b15(a[15],b[15],sel,z[15]);
mux2_1 b16(a[16],b[16],sel,z[16]);
mux2_1 b17(a[17],b[17],sel,z[17]);
mux2_1 b18(a[18],b[18],sel,z[18]);
mux2_1 b19(a[19],b[19],sel,z[19]);
mux2_1 b20(a[20],b[20],sel,z[20]);
mux2_1 b21(a[21],b[21],sel,z[21]);
mux2_1 b22(a[22],b[22],sel,z[22]);
mux2_1 b23(a[23],b[23],sel,z[23]);
mux2_1 b24(a[24],b[24],sel,z[24]);
mux2_1 b25(a[25],b[25],sel,z[25]);
mux2_1 b26(a[26],b[26],sel,z[26]);
mux2_1 b27(a[27],b[27],sel,z[27]);
mux2_1 b28(a[28],b[28],sel,z[28]);
mux2_1 b29(a[29],b[29],sel,z[29]);
mux2_1 b30(a[30],b[30],sel,z[30]);
mux2_1 b31(a[31],b[31],sel,z[31]);

endmodule
