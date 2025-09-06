`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 16:11:07
// Design Name: 
// Module Name: bit32_shift_right_01
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


module bit32_shift_right_01(input wire [31:0] a,input wire b,output [31:0] c);
mux2_1 m0(a[0],a[1],b,c[0]);
mux2_1 m1(a[1],a[2],b,c[1]);
mux2_1 m2(a[2],a[3],b,c[2]);
mux2_1 m3(a[3],a[4],b,c[3]);
mux2_1 m4(a[4],a[5],b,c[4]);
mux2_1 m5(a[5],a[6],b,c[5]);
mux2_1 m6(a[6],a[7],b,c[6]);
mux2_1 m7(a[7],a[8],b,c[7]);
mux2_1 m8(a[8],a[9],b,c[8]);
mux2_1 m9(a[9],a[10],b,c[9]);
mux2_1 m10(a[10],a[11],b,c[10]);
mux2_1 m11(a[11],a[12],b,c[11]);
mux2_1 m12(a[12],a[13],b,c[12]);
mux2_1 m13(a[13],a[14],b,c[13]);
mux2_1 m14(a[14],a[15],b,c[14]);
mux2_1 m15(a[15],a[16],b,c[15]);
mux2_1 m16(a[16],a[17],b,c[16]);
mux2_1 m17(a[17],a[18],b,c[17]);
mux2_1 m18(a[18],a[19],b,c[18]);
mux2_1 m19(a[19],a[20],b,c[19]);
mux2_1 m20(a[20],a[21],b,c[20]);
mux2_1 m21(a[21],a[22],b,c[21]);
mux2_1 m22(a[22],a[23],b,c[22]);
mux2_1 m23(a[23],a[24],b,c[23]);
mux2_1 m24(a[24],a[25],b,c[24]);
mux2_1 m25(a[25],a[26],b,c[25]);
mux2_1 m26(a[26],a[27],b,c[26]);
mux2_1 m27(a[27],a[28],b,c[27]);
mux2_1 m28(a[28],a[29],b,c[28]);
mux2_1 m29(a[29],a[30],b,c[29]);
mux2_1 m30(a[30],a[31],b,c[30]);
mux2_1 m31(a[31],0,b,c[31]);
endmodule
