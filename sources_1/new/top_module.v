`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 15:06:56
// Design Name: 
// Module Name: top_module
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


module top_module(input clk,input rst,output [15:0] out);
wire [31:0] PC;
wire [31:0] NPC;
wire [31:0] LMD;
wire [31:0] IR;
wire [31:0] IRtemp;
wire [31:0] A,B;
wire load_PC,load_IR,write_REG,select_MUX1,select_MUX2,select_MUX3,select_MUX7,select_MUX6,select_MUX5,select_MUX4,COMPout,select_ALUOUT,select_MUX8,select_MUX0;
wire [31:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
wire [31:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
wire [3:0] ALU_FUNC;
wire [31:0] ALU_OUT;
wire cout;
//Data made a0
//INS made a1

// read_from_IM wrIM(PC,IRtemp);
// write_to_IR wrIR(IRtemp,wsel_IR,IR);
wire [31:0] dina,douta;
wire weaIR,weaDM;
reg en;
initial
en=1;


blk_mem_gen_0 n0(
.douta(IR),
.addra(PC[13:0]),
.clka(clk));
//assign IR = 32'b00000001100010010000000000000000;

wire [3:0] rs,rt,rd;
wire [3:0] rdd;
wire [31:0] imm1,imm2,Ret,IMM;
wire [5:0] func;
wire [4:0] opcode;
assign opcode=IR[31:27];
assign rs = IR[26:23];
assign rt = IR[22:19];
assign rd = IR[18:15];
assign func = IR[5:0];
assign imm1[17:0] =IR[17:0];
assign imm2[26:0] = IR[26:0];
assign imm1[31:18]={14{IR[17]}};
assign imm2[31:27]={5{IR[26]}};
assign optemp=opcode[0] || opcode[1] || opcode[2] || opcode[3] || opcode[4];
reg sloclock;
integer cnt=0;
initial
begin
sloclock=0;
end

always @(posedge clk)
begin
    cnt<=cnt+1;
    if(cnt==1000000000)
    begin
    sloclock<=~sloclock;
    cnt<=0;
    end
end

wire [31:0] outMUX1,outMUX2,outMUX3,ALUout,outMUX,outMUX7,outMUX6,outMUX5,outMUX4;
wire LoadRET;

//reg_bank r0(rs,rt,rd,write_REG,A,B);
registerbank_8 rb0(write_REG,rs,rt,rdd,ALUout,clk,ALU_FUNC,A,B,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,rst);
Mux2_1 m1(A,B,select_MUX1,outMUX1);
Mux2_1 m2(NPC,outMUX1,select_MUX2,outMUX2);
Mux2_1 m8(imm1,imm2,select_MUX8,IMM);
Mux2_1 m3(IMM,B,select_MUX3,outMUX3);
Mux5_bit m67(rd,rt,optemp,rdd);

//always @(PC)
//    if(optemp==0)
//    begin
//        rdd<=rd;
//    end
//    else 
//    begin
//        rdd<=rt;
//    end
        

//ALU alu(outMUX2,outMUX3,ALU_FUNC,ALUout);

Mux2_1 m0(NPC,ALUout,select_MUX0,outMUX);
Mux2_1 m7(RetOUT,outMUX,select_MUX7,outMUX7);
Mux2_1 m6(outMUX4,outMUX5,select_MUX6,outMUX6);
Mux2_1 m5(A,B,select_MUX5,outMUX5); //doubt in select
Mux2_1 m4(ALUout,LMD,select_MUX4,outMUX4);

bit32_adder l0(outMUX2,outMUX3,1'b0,a,cout);
bit32_subtractor l1(outMUX2,outMUX3,1'b0,b,cout1);
bit32_slt l2(outMUX2,outMUX3,c);
bit32_sgt l3(outMUX2,outMUX3,d);
bit32_and l4(outMUX2,outMUX3,e);
bit32_or l5(outMUX2,outMUX3,f);
bit32_xor l6(outMUX2,outMUX3,g);
bit32_not l7(outMUX2,h);
bit32_nor l8(outMUX2,outMUX3,i);
bit32_lui l9(outMUX2,j);
bit32_shift_left_01 l10(outMUX2,outMUX3[0],k);
bit32_shift_right_01 l11(outMUX2,outMUX3[0],l);
bit32_shift_right_arithmetic_01 l12(outMUX2,outMUX3[0],m);
bit32_adder l13(outMUX2,32'b00000000000000000000000000000100,1'b0,n,cout2);
bit32_subtractor l14(outMUX2,32'b00000000000000000000000000000100,1'b0,o,cout3);
bit32_hamming l15(outMUX2,p);

wire cout4;
wire [31:0] outMUX7e;
bit32_subtractor s89(outMUX,32'b00000000000000000000000000000100,1'b0,outMUX7e,cout4);

// write_to_DM wrDM(ALUout,B);
blk_mem_gen_1 n1(.addra(ALUout[9:0]),.clka(clk),.dina(B),.douta(LMD),.wea(weaDM));
bit8_PIPO p1(outMUX6,LoadRET,Ret,rst);

wire [31:0] w1;

bit32_adder a0(PC,1,0,NPC,cout);
bit32_pip a1(outMUX7,load_PC,PC,rst);
Mux16_1 maa(a,b,e,f,g,i,h,k,l,m,n,o,c,d,p,j,ALU_FUNC,w1);

bit32_pip f14(w1,select_ALUOUT,ALUout,rst);

wire [2:0] timesta;
wire camehere;
comp c100(outMUX1,opcode,select_MUX0);
control_signal c0(optemp,func,opcode,clk,camehere,load_PC,load_IR,select_MUX1,select_MUX3,select_MUX2,select_MUX6,write_REG,timesta,select_MUX4,rst,ALU_FUNC,select_ALUOUT,select_MUX5,select_MUX7,weaDM,COMPout,select_MUX8);
assign out=r1[15:0];
endmodule