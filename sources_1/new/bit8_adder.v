`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 16:59:40
// Design Name: 
// Module Name: bit8_adder
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


module bit8_adder(a,b,c0,s,cout);
input wire [7:0] a;
input wire [7:0] b;
input c0;
output wire [7:0] s;
output wire cout;
wire c1,c2,c3,c4,c5,c6,c7;

bit1_adder fa0(a[0],b[0],c0,s[0],c1);
bit1_adder fa1(a[1],b[1],c1,s[1],c2);
bit1_adder fa2(a[2],b[2],c2,s[2],c3);
bit1_adder fa3(a[3],b[3],c3,s[3],c4);
bit1_adder fa4(a[4],b[4],c4,s[4],c5);
bit1_adder fa5(a[5],b[5],c5,s[5],c6);
bit1_adder fa6(a[6],b[6],c6,s[6],c7);
bit1_adder fa7(a[7],b[7],c7,s[7],cout);

endmodule