`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:25 12/10/2022 
// Design Name: 
// Module Name:    fp16multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module RCA #(parameter bw = 4)(A, B, Cin, Sum, Cout);
	input [bw:1] A;
	input [bw:1] B;
	input Cin;
	output [bw:1] Sum;
	output Cout;
	
	wire [bw:0] G;
	wire [bw:0] P;
	wire [bw:0] GG;
	
	assign G[0] = Cin;
	assign P[0] = 0;
	assign G[bw:1] = A & B;
	assign P[bw:1] = A ^ B;
	
	assign GG[0] = G[0];
	G_Cell U0(G[0], G[1], P[1], GG[1]);
	
	generate
		for(genvar i=1; i<=bw; i=i+1) begin: loop_1
			if(i<bw)
				G_Cell U1(GG[i], G[i+1], P[i+1], GG[i+1]);
			assign Sum[i] = P[i] ^ GG[i-1];
		end
	endgenerate
	
	assign Cout = GG[bw];
	
endmodule

module G_Cell(G0, G1, P1, GG);
	input G0;
	input G1;
	input P1;
	output GG;
	
	assign GG = G1 | (P1 & G0);
endmodule


module Adder3(
	a, b, c, d, add,
	lsb, msb
	);
	
	input a,b,c,d;
	input [1:0] add;
	
	output lsb;
	output [2:0] msb;
	
	
	wire [1:0] pSum [2:0];
	wire [2:0] out;
	wire carry;

	//stage1
	full_adder u0(a,b,c,pSum[0][0],pSum[0][1]);
	
	//stage2
	full_adder u1(d,add[0],pSum[0][0],out[0],pSum[1][0]);
	full_adder u2(0,add[1],pSum[0][1],pSum[1][1],pSum[1][2]);
	
	//RCA
	full_adder u3(pSum[1][1],pSum[1][0],0,out[1],carry);
	full_adder u4(carry,pSum[1][2],0,out[2]);
	
	assign lsb = out[0];
	assign msb = out[2:1];
	
endmodule


module Adder2(
	a, b, c, add,
	lsb, msb
	);
	
	input a,b,c, add;
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,c,temp[0],carry[0]);
	full_adder u1(add,temp[0],0,sum[0],carry[1]);
	full_adder u2(carry[0],carry[1],0,sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb[1:0] = sum[2:1];
	
endmodule

module Adder4(
	a, b, c, add,
	lsb, msb
	);
	
	input a,b,c;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,c,temp[0],temp[1]);
	full_adder u1(temp[0],add[0],0,sum[0],carry[0]);
	full_adder u2(temp[1],add[1],carry[0],sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb = sum[2:1];
	
endmodule

module Adder5(
	a, b, add,
	lsb, msb
	);
	
	input a,b;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,add[0],sum[0],carry[0]);
	full_adder u1(add[1],carry[0],0,sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb[1:0] = sum[2:1];
	
endmodule


module biasAdder(
	A,B,
	out
	);
	input [4:0] A,B;
	output [4:0] out;
	assign out = A+B-5'b01111;
	
endmodule

module vedic_4bit(
	a,b,
	out);
	
	input [3:0] a,b;
	output [7:0] out;
	wire [7:0] pSum;
	
	wire [1:0] add[7:0];
	
	assign pSum[0] = a[0]&b[0];
	
	full_adder adder1(a[0]&b[1],a[1]&b[0],0,pSum[1],add[1][0]);
	
	Adder2 adder2(a[0]&b[2], a[1]&b[1], a[2]&b[0], add[1][0], pSum[2], add[2]);
	
	Adder3 adder3(a[0]&b[3], a[1]&b[2], a[2]&b[1], a[3]&b[0], add[2], pSum[3], add[3]);
	
	Adder4 adder4(a[3]&b[1], a[2]&b[2], a[1]&b[3], add[3], pSum[4], add[4]);
	
	Adder5 adder5(a[3]&b[2], a[2]&b[3], add[4], pSum[5], add[5]);
	
	assign pSum[6] = add[5][0] ^ a[3]&b[3];
	
	assign pSum[7] = add[5][1] + add[5][0]&a[3]&b[3];

	assign out = pSum;
	
endmodule

module menMult(
	A,B,
	out
	);
	
	input [9:0] A,B;
	output [9:0] out;
	
	wire [19:0] multi;
	
	
	
	
	assign out = 0;
	
endmodule

module fp16multiplier(
		A,B,	CLK,	RESETn,
		out
    );
	 input [15:0] A,B;
	 input CLK, RESETn;
	 output reg [15:0] out;
	 
	 wire [15:0] product;
	 
	 assign product[15] = A[15]^B[15];
	 biasAdder U0(A[14:10],B[14:10], product[14:10]);
	 menMult U1(A[9:0], B[9:0], product[9:0]);
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= product;
		end
	 end


endmodule
