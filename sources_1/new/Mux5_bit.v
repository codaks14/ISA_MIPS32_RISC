`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 04:19:09
// Design Name: 
// Module Name: Mux5_bit
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


module Mux5_bit(input wire [3:0] a,input wire [3:0] b,input wire sel,output wire [3:0] out);
wire [3:0] t;
and a0(t[0],b[0],sel);
and a1(t[1],b[1],sel);
and a2(t[2],b[2],sel);
and a3(t[3],b[3],sel);

wire nsel;
not n0(nsel,sel);

wire [3:0] t1;
and b0(t1[0],a[0],nsel);
and b1(t1[1],a[1],nsel);
and b2(t1[2],a[2],nsel);
and b3(t1[3],a[3],nsel);

or c0(out[0],t[0],t1[0]);
or c1(out[1],t[1],t1[1]);
or c2(out[2],t[2],t1[2]);
or c3(out[3],t[3],t1[3]);

endmodule
