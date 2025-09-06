`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 22:16:50
// Design Name: 
// Module Name: bit32_eqa
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


module bit32_eqa(input wire [31:0] a,input wire [31:0] b,output wire [31:0] s);
assign s=a[31:0];
endmodule
