`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 19:22:21
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(input wire a,b,c,d,input wire [2:0] sel,output wire cout);
wire t1,t2;
mux2_1 b0(a,b,sel[0],t1);
mux2_1 b1(c,d,sel[0],t2);
mux2_1 b2(t1,t2,sel[1],cout);

endmodule
