`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 17:00:21
// Design Name: 
// Module Name: bit4_decoder
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


module bit4_decoder(input wire [3:0]inp,input wire act,output wire [15:0] out);
wire [3:0] t0;
bit2_decoder d0(inp[3:2],1'b1,t0);
bit2_decoder d1(inp[1:0],t0[0] & act,out[3:0]);
bit2_decoder d2(inp[1:0],t0[1] & act,out[7:4]);
bit2_decoder d3(inp[1:0],t0[2] & act,out[11:8]);
bit2_decoder d4(inp[1:0],t0[3] & act,out[15:12]);
endmodule
