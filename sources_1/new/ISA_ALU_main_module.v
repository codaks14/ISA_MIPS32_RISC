`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 18:26:18
// Design Name: 
// Module Name: main_mod
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


module main_mod(input wire [15:0] ins,input wire clock,output wire [15:0] ot);
wire [31:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
wire [31:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
wire cout,flag,cout1,cout2,cout3;

wire [3:0] rs,rt,rd,func;
wire [4:0] opcode;
wire [31:0] w1;
wire [31:0] inp1,inp2;


assign opcode[3:0]=ins[15:12];
assign rs=ins[11:8];
assign rt=ins[7:4];
assign rd=ins[3:0];
reg sloclock;
integer cnt=0;
initial
begin
sloclock=0;
end

always @(posedge clock)
begin
    cnt<=cnt+1;
    if(cnt==100000000)
    begin
    sloclock<=~sloclock;
    cnt<=0;
    end
end

registerbank_8 rb0(rs,rt,rd,w1,sloclock,opcode,inp1,inp2,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15);

bit32_adder l0(inp1,inp2,1'b0,a,cout);
bit32_subtractor l1(inp1,inp2,1'b0,b,cout1);
bit32_slt l2(inp1,inp2,c);
bit32_sgt l3(inp1,inp2,d);
bit32_and l4(inp1,inp2,e);
bit32_or l5(inp1,inp2,f);
bit32_xor l6(inp1,inp2,g);
bit32_not l7(inp1,h);
bit32_nor l8(inp1,inp2,i);
bit32_lui l9(inp1,j);
bit32_shift_left_01 l10(inp1,inp2[0],k);
bit32_shift_right_01 l11(inp1,inp2[0],l);
bit32_shift_right_arithmetic_01 l12(inp1,inp2[0],m);
bit32_adder l13(inp1,32'b00000000000000000000000000000100,1'b0,n,cout2);
bit32_subtractor l14(inp1,32'b00000000000000000000000000000100,1'b0,o,cout3);
bit32_hamming l15(inp1,p);




Mux16_1 m0(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,opcode[3:0],w1);
mux2_1 h0(w1[0],w1[16],sloclock,ot[0]);
mux2_1 h1(w1[1],w1[17],sloclock,ot[1]);
mux2_1 h2(w1[2],w1[18],sloclock,ot[2]);
mux2_1 h3(w1[3],w1[19],sloclock,ot[3]);
mux2_1 h4(w1[4],w1[20],sloclock,ot[4]);
mux2_1 h5(w1[5],w1[21],sloclock,ot[5]);
mux2_1 h6(w1[6],w1[22],sloclock,ot[6]);
mux2_1 h7(w1[7],w1[23],sloclock,ot[7]);
mux2_1 h8(w1[8],w1[24],sloclock,ot[8]);
mux2_1 h9(w1[9],w1[25],sloclock,ot[9]);
mux2_1 h10(w1[10],w1[26],sloclock,ot[10]);
mux2_1 h11(w1[11],w1[27],sloclock,ot[11]);
mux2_1 h12(w1[12],w1[28],sloclock,ot[12]);
mux2_1 h13(w1[13],w1[29],sloclock,ot[13]);
mux2_1 h14(w1[14],w1[30],sloclock,ot[14]);
mux2_1 h15(w1[15],w1[31],sloclock,ot[15]);




endmodule
