`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 18:53:01
// Design Name: 
// Module Name: mux16_1
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


module mux16_1(input wire a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,input wire [3:0] select,output wire z);
wire t1,t2,t3;
mux8_1 b0(a,b,c,d,e,f,g,h,select[2:0],t1);
mux8_1 b1(i,j,k,l,m,n,o,p,select[2:0],t2);
mux2_1 b2(t1,t2,select[3],z);

endmodule
