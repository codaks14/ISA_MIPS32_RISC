`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01.10.2024 23:25:09
// Design Name:
// Module Name: bit32_lui
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


module bit32_lui(input wire [31:0] a,output wire [31:0] b);
assign b[15:0]=a[31:16];
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