`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:06 09/11/2024 
// Design Name: 
// Module Name:    Mux2_1 
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
module Mux2_1(input wire [31:0] a,input wire [31:0] b,input wire select,output wire [31:0] out);
wire [31:0] t;
and a0(t[0],b[0],select);
and a1(t[1],b[1],select);
and a2(t[2],b[2],select);
and a3(t[3],b[3],select);
and a4(t[4],b[4],select);
and a5(t[5],b[5],select);
and a6(t[6],b[6],select);
and a7(t[7],b[7],select);
and a8(t[8],b[8],select);
and a9(t[9],b[9],select);
and a10(t[10],b[10],select);
and a11(t[11],b[11],select);
and a12(t[12],b[12],select);
and a13(t[13],b[13],select);
and a14(t[14],b[14],select);
and a15(t[15],b[15],select);
and a16(t[16],b[16],select);
and a17(t[17],b[17],select);
and a18(t[18],b[18],select);
and a19(t[19],b[19],select);
and a20(t[20],b[20],select);
and a21(t[21],b[21],select);
and a22(t[22],b[22],select);
and a23(t[23],b[23],select);
and a24(t[24],b[24],select);
and a25(t[25],b[25],select);
and a26(t[26],b[26],select);
and a27(t[27],b[27],select);
and a28(t[28],b[28],select);
and a29(t[29],b[29],select);
and a30(t[30],b[30],select);
and a31(t[31],b[31],select);


wire nsel;
not n0(nsel,select);

wire [31:0] t1;
and b0(t1[0],a[0],nsel);
and b1(t1[1],a[1],nsel);
and b2(t1[2],a[2],nsel);
and b3(t1[3],a[3],nsel);
and b4(t1[4],a[4],nsel);
and b5(t1[5],a[5],nsel);
and b6(t1[6],a[6],nsel);
and b7(t1[7],a[7],nsel);
and b8(t1[8],a[8],nsel);
and b9(t1[9],a[9],nsel);
and b10(t1[10],a[10],nsel);
and b11(t1[11],a[11],nsel);
and b12(t1[12],a[12],nsel);
and b13(t1[13],a[13],nsel);
and b14(t1[14],a[14],nsel);
and b15(t1[15],a[15],nsel);
and b16(t1[16],a[16],nsel);
and b17(t1[17],a[17],nsel);
and b18(t1[18],a[18],nsel);
and b19(t1[19],a[19],nsel);
and b20(t1[20],a[20],nsel);
and b21(t1[21],a[21],nsel);
and b22(t1[22],a[22],nsel);
and b23(t1[23],a[23],nsel);
and b24(t1[24],a[24],nsel);
and b25(t1[25],a[25],nsel);
and b26(t1[26],a[26],nsel);
and b27(t1[27],a[27],nsel);
and b28(t1[28],a[28],nsel);
and b29(t1[29],a[29],nsel);
and b30(t1[30],a[30],nsel);
and b31(t1[31],a[31],nsel);

or c0(out[0],t[0],t1[0]);
or c1(out[1],t[1],t1[1]);
or c2(out[2],t[2],t1[2]);
or c3(out[3],t[3],t1[3]);
or c4(out[4],t[4],t1[4]);
or c5(out[5],t[5],t1[5]);
or c6(out[6],t[6],t1[6]);
or c7(out[7],t[7],t1[7]);
or c8(out[8],t[8],t1[8]);
or c9(out[9],t[9],t1[9]);
or c10(out[10],t[10],t1[10]);
or c11(out[11],t[11],t1[11]);
or c12(out[12],t[12],t1[12]);
or c13(out[13],t[13],t1[13]);
or c14(out[14],t[14],t1[14]);
or c15(out[15],t[15],t1[15]);
or c16(out[16],t[16],t1[16]);
or c17(out[17],t[17],t1[17]);
or c18(out[18],t[18],t1[18]);
or c19(out[19],t[19],t1[19]);
or c20(out[20],t[20],t1[20]);
or c21(out[21],t[21],t1[21]);
or c22(out[22],t[22],t1[22]);
or c23(out[23],t[23],t1[23]);
or c24(out[24],t[24],t1[24]);
or c25(out[25],t[25],t1[25]);
or c26(out[26],t[26],t1[26]);
or c27(out[27],t[27],t1[27]);
or c28(out[28],t[28],t1[28]);
or c29(out[29],t[29],t1[29]);
or c30(out[30],t[30],t1[30]);
or c31(out[31],t[31],t1[31]);

endmodule

