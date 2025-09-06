`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 19:03:29
// Design Name: 
// Module Name: ISA_12oct_test
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


module ISA_12oct_test();
reg clk;
wire [15:0] out;
reg rst;

top_module n0(clk,rst,out);
initial
begin
clk=0;
rst=0;
#2 rst=1;
#3 rst=0;
end
always #1
    clk=~clk;
endmodule
