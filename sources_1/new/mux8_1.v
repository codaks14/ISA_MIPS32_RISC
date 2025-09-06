`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 18:53:14
// Design Name: 
// Module Name: mux8_1
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


module mux8_1(input wire a,b,c,d,e,f,g,h,input wire [2:0] select,output wire z);
wire t1,t2,t3;
mux4_1 b0(a,b,c,d,select[1:0],t1);
mux4_1 b1(e,f,g,h,select[1:0],t2);
mux2_1 b2(t1,t2,select[2],z);

endmodule
