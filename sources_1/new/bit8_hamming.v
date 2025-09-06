`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:09:24
// Design Name: 
// Module Name: bit8_hamming
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


module bit8_hamming(input wire [7:0] a,output wire [7:0] z);
wire [1:0] t1,t2,t3;
wire t4;
fulladderstru b0(a[0],a[1],a[2],t1[0],t1[1]);
fulladderstru b1(a[3],a[4],a[5],t2[0],t2[1]);
bit2_adder b2(t1,t2,a[6],t3,t4);
wire [2:0] t5,t6;
assign t5[0]=t3[0];
assign t5[1]=t3[1];
assign t5[2]=t4;
bit3_adder b3(t5,3'b000,a[7],t6,z[3]);

assign z[7]=0;
assign z[6]=0;
assign z[5]=0;
assign z[4]=0;
assign z[2]=t6[2];
assign z[1]=t6[1];
assign z[0]=t6[0];

endmodule
