`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 17:05:45
// Design Name: 
// Module Name: bit8_subtractor
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


module bit8_subtractor(input wire [7:0] a,input wire [7:0] b,input wire flag,output wire [7:0] z,output wire cout);
wire [7:0] dum;
bit8_not n1(b,dum);
bit8_adder e1(a,dum,~flag,z,cout);
endmodule
