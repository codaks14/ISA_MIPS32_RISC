`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 16:03:35
// Design Name: 
// Module Name: bit32_PIPO
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


module bit32_PIPO(output reg [31:0] dout,input wire [31:0] din,input wire ld,input wire clr,input wire clk,input wire strobe);
wire [31:0] t1;
wire t2;
and a0(t2,ld,strobe);
Mux2_1 m0(dout,din,t2,t1);
Mux2_1 m1(t1,32'b0,clr,dout);
endmodule
