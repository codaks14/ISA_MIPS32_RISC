`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 17:31:38
// Design Name: 
// Module Name: bit32_and
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


module bit32_and(input wire [31:0] a,input wire [31:0] b,output wire [31:0] s);
bit8_and b0(a[7:0],b[7:0],s[7:0]);
bit8_and b1(a[15:8],b[15:8],s[15:8]);
bit8_and b2(a[23:16],b[23:16],s[23:16]);
bit8_and b3(a[31:24],b[31:24],s[31:24]);

endmodule
