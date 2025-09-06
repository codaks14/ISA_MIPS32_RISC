`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 17:19:26
// Design Name: 
// Module Name: bit32_adder
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


module bit32_adder(input wire [31:0] a,input wire [31:0] b,input wire cin,output wire [31:0] s,output wire cout);
wire c1,c2,c3;
bit8_adder b0(a[7:0],b[7:0],cin,s[7:0],c1);
bit8_adder b1(a[15:8],b[15:8],c1,s[15:8],c2);
bit8_adder b2(a[23:16],b[23:16],c2,s[23:16],c3);
bit8_adder b3(a[31:24],b[31:24],c3,s[31:24],cout);

endmodule
