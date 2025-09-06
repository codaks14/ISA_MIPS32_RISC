`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 22:43:54
// Design Name: 
// Module Name: registerbank_8
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


module registerbank_8(input wire load,input wire [3:0] in1,input wire [3:0] in2,input wire [3:0] des1,input wire [31:0] w1,input wire clock,input wire[4:0] con,output wire [31:0] re1,output wire [31:0] re2,output reg [31:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,input wire rst);
reg strobe;


initial
begin
strobe=0;
end

//wire t1,t2,t3,t4,t5,t6,t7,t8;
//assign t1=in1[0];
//assign t2=in1[1];
//assign t3=in1[2];
//assign t4=in1[3];
//assign t5=in2[0];
//assign t6=in2[1];
//assign t7=in2[2];
//assign t8=in2[3];


Mux16_1 m0(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,in1,re1);
Mux16_1 m1(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,in2,re2);

//always @(con)
//    strobe=1;
    
wire [15:0] ld;
bit4_decoder d0(des1,1,ld);

wire GND = 32'b0;
    
always @(posedge load or posedge rst)
    begin
    r0 <= GND;
    if(rst)r1<=1;
    else if(ld[1])
        begin
        r1=w1;
        end
    if(rst)r2<=2;
    else
    if(ld[2])
        begin
        r2=w1;
        end
     if(rst)r3<=3;
     else
     if(ld[3])
        begin
        r3=w1;
        end
     if(rst)r4<=4;
     else
     if(ld[4])
        begin
        r4=w1;
        end
     if(rst)r5<=5;
     else
     if(ld[5])
        begin
        r5=w1;
        end
     if(rst)r6<=6;
     else
     if(ld[6])
        begin
        r6=w1;
        end
     if(rst)r7<=7;
     else
     if(ld[7])
        begin
        r7=w1;
        end
     if(rst)r8<=8;
     else
     if(ld[8])
        begin
        r8=w1;
        end
     if(rst)r9<=9;
     else
     if(ld[9])
        begin
        r9=w1;
        end
     if(rst)r10<=10;
     else
     if(ld[10])
        begin
        r10=w1;
        end
     if(rst)r11<=11;
     else
     if(ld[11])
        begin
        r11=w1;
        end
     if(rst)r12<=12;
     else
     if(ld[12])
        begin
        r12=w1;
        end
     if(rst)r13<=0;
     else
     if(ld[13])
        begin
        r13=w1;
        end
     if(rst)r14<=0;
     else
     if(ld[14])
        begin
        r14=w1;
        end
     if(rst)r15<=0;
     else
     if(ld[15])
        begin
        r15=w1;
        end 
//        strobe=0;
//        end 
end    















//always @(posedge clock)
//    if(rst)
//    begin
//        r0=0;
//        r1=1;
//        r2=1;
//        r3=1;
//        r4=1;
//        r5=1;
//        r6=1;
//        r7=1;
//        rst=0;
//    end

//always @(negedge clock)
//begin
//case(in1)
//    3'b000: re1 <= r0;
//    3'b001: re1 <= r1;
//    3'b010: re1 <= r2;
//    3'b011: re1 <= r3;
//    3'b100: re1 <= r4;
//    3'b101: re1 <= r5;
//    3'b110: re1 <= r6;
//    3'b111: re1 <= r7;
//endcase
//end 

//always @(con)
//	begin
//	strobe=1;
//	end

//always @(negedge clock)
//begin
//case(in2)
//    3'b000: re2 <= r0;
//    3'b001: re2 <= r1;
//    3'b010: re2 <= r2;
//    3'b011: re2 <= r3;
//    3'b100: re2 <= r4;
//    3'b101: re2 <= r5;
//    3'b110: re2 <= r6;
//    3'b111: re2 <= r7;
//endcase
//end 

//always @(posedge clock)
//begin
//case(des1)
//    3'b000:
//		begin
//		if(strobe)
//			r0 = w1;
//		end
//    3'b001: 
//	 begin
//	 if(strobe)
//		r1 = w1;
//	 end
//    3'b010:
//		begin
//		if(strobe)
//			r2 = w1;
//		end
//    3'b011: 
//	 begin 
//	 if(strobe)
//		r3 = w1;
//	end
//    3'b100: 
//	 begin
//	 if(strobe)
//		r4 = w1;
//	 end
//    3'b101: 
//	 begin 
//	 if(strobe)
//		r5 = w1;
//	 end
//    3'b110: 
//	 begin
//	 if(strobe)
//		r6 = w1;
//	 end
//    3'b111:
//	 begin
//	 if(strobe)
//			r7 = w1;
//	 end
//endcase
//strobe=0;
//end 




endmodule
