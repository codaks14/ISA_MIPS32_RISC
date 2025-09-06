`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 22:51:00
// Design Name: 
// Module Name: bit32_pip
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



module bit32_pip(input wire [31:0] a,input wire che,output reg [31:0] c,input rst);

always @(posedge che or posedge rst)
    if(rst)begin
        c<=0;
    end
    else if(che)
    begin
        c<=a;
    end
endmodule
