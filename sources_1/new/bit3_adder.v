`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:27:38
// Design Name: 
// Module Name: bit3_adder
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


module bit3_adder(input wire [2:0] a,input wire [2:0] b,input wire cin,output wire [2:0] s,output wire cout);
wire t1,t2;
fulladderstru f0(a[0],b[0],cin,s[0],t1);
fulladderstru f1(a[1],b[1],t1,s[1],t2);
fulladderstru f2(a[2],b[2],t2,s[2],cout);

endmodule
