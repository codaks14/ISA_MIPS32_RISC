`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01.10.2024 23:01:18
// Design Name:
// Module Name: bit32_slt
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


module bit32_sgt(input wire [31:0] a,input wire [31:0] b,output [31:0]c);
wire cout;
wire [31:0] z;
bit32_subtractor n1(b,a,0,z,cout);
assign c[0] = z[31];
assign c[31:1] = 0;
endmodule
