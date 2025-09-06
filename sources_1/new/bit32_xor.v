`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 22:07:48
// Design Name: 
// Module Name: bit32_xor
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


module bit32_xor(input wire [31:0] a,input wire [31:0] b,output wire [31:0] s);
bit8_xor b0(a[7:0],b[7:0],s[7:0]);
bit8_xor b1(a[15:8],b[15:8],s[15:8]);
bit8_xor b2(a[23:16],b[23:16],s[23:16]);
bit8_xor b3(a[31:24],b[31:24],s[31:24]);

endmodule