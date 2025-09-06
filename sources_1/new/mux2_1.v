`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 18:53:56
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(input wire a,input wire b,input wire select,output wire c);
wire nsel,t1,t2;
not n0(nsel,select);
and n1(t1,a,nsel);
and n2(t2,b,select);
or n3(c,t1,t2);

endmodule
