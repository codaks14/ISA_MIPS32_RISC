`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:56 09/04/2024 
// Design Name: 
// Module Name:    bit8_not 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bit8_not(input wire [7:0] a,output wire [7:0] z);
not n0(z[0],a[0]);
not n1(z[1],a[1]);
not n2(z[2],a[2]);
not n3(z[3],a[3]);
not n4(z[4],a[4]);
not n5(z[5],a[5]);
not n6(z[6],a[6]);
not n7(z[7],a[7]);

endmodule
