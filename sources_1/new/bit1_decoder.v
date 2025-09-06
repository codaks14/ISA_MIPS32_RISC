`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 16:39:19
// Design Name: 
// Module Name: bit1_decoder
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


module bit1_decoder(input wire a,input wire act,output wire [1:0] out);
wire t1,t2,t3;
not n0(t3,a);
and a0(t1,a,act);
and a1(t2,t3,act);
mux2_1 m0(1'b0,1'b1,t2,out[0]);
mux2_1 m1(1'b0,1'b1,t1,out[1]);
endmodule
