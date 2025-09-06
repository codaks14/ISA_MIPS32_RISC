`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01.10.2024 23:37:51
// Design Name:
// Module Name: bit32_hamming
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


module bit32_hamming(input wire [31:0] a,output wire [31:0] b);
wire [7:0] t1,t2,t3,t4;
bit8_hamming n1(a[7:0],t1);
bit8_hamming n2(a[15:8],t2);
bit8_hamming n3(a[23:16],t3);
bit8_hamming n4(a[31:24],t4);

wire d1,d2,d3;
wire [7:0] p1,p2;
bit8_adder a1(t1,t2,0,p1,d1);
bit8_adder a2(t3,t4,0,p2,d2);
bit8_adder a3(p1,p2,0,b[7:0],d3);

assign b[8]=0;
assign b[9]=0;
assign b[10]=0;
assign b[11]=0;
assign b[12]=0;
assign b[13]=0;
assign b[14]=0;
assign b[15]=0;
assign b[16]=0;
assign b[17]=0;
assign b[18]=0;
assign b[19]=0;
assign b[20]=0;
assign b[21]=0;
assign b[22]=0;
assign b[23]=0;
assign b[24]=0;
assign b[25]=0;
assign b[26]=0;
assign b[27]=0;
assign b[28]=0;
assign b[29]=0;
assign b[30]=0;
assign b[31]=0;
endmodule
