`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 16:35:37
// Design Name: 
// Module Name: bit2_decoder
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


module bit2_decoder(input wire [1:0] inp,input wire act,output wire [3:0] out);
wire [1:0] t0;
bit1_decoder d0(inp[1],1'b1,t0);
bit1_decoder d1(inp[0],t0[0] & act,out[1:0]);
bit1_decoder d2(inp[0],t0[1] & act,out[3:2]);
endmodule
