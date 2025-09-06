`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 22:12:23
// Design Name: 
// Module Name: bit8_PIPO
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


module bit8_PIPO(input wire [7:0] a,input wire che,output reg [7:0] c,input rst);
always @(posedge che or posedge rst)
    if(rst) c<=0;
    else
    if(che)
    begin
        c<=a;
    end
endmodule
