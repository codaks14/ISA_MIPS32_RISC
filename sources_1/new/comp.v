`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 01:07:04
// Design Name: 
// Module Name: comp
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


module comp(input wire [31:0] a,input wire [4:0] opcode,output reg select_MUX);
wire [31:0] t1,t2;
wire cout1,cout2;
assign t1[0]=a[0];
//bit32_subtractor n0(a,32'b00000000000000000000000000000000,1'b0,t1,cout1);
//bit32_subtractor n1(32'b00000000000000000000000000000000,a,1'b0,t2,cout2);
generate
    genvar i;
    for(i=0;i<31;i=i+1)
    begin
        or O (t1[i+1],a[i],t1[i]);
    end
  endgenerate
always @(opcode)
    if(opcode==5'b10100)
    begin
        select_MUX<=1;
    end
    else if(opcode==5'b10000)
    begin
        if(a[31]==1)
        begin
            select_MUX<=1;
        end
        else
        begin
            select_MUX<=0;
        end
    end
    else if(opcode==5'b10001)
    begin
        if(a[31]==0 && t1[31]!=0)
        begin
            select_MUX<=1;
        end
        else
        begin
            select_MUX<=0;
        end
    end
    else if(opcode==5'b10010)
    begin
        if(t1[31]==0)
            begin
                select_MUX<=1;
            end
        else
        begin
            select_MUX<=0;
        end
     end
    else
    begin
        select_MUX<=0;
    end
endmodule
