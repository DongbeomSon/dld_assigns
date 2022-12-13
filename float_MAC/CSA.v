`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:44 12/13/2022 
// Design Name: 
// Module Name:    CSA 
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
module CSA #(parameter bw = 4)(A, B, Cin, Co, Sum, Cout);
	input [bw-1:0] A, B, Cin, Co;
	output [bw:0] Sum;
	output Cout;

	wire [bw-1:0] S0, S1;
	wire [bw-1:0] C0, C1;
	
	genvar i;
	generate
		for(i=0; i<bw; i=i+1) begin : loop_1
			full_adder fa0(.A(A[i]), .B(B[i]), .Cin(Cin[i]), .Sum(S0[i]), .Cout(C0[i]));
		end
	endgenerate
	
	genvar j;
	generate
		for(j=0; j<bw; j=j+1) begin : loop_2
			if(j == 0) begin
				full_adder fa1(.A(Co[0]), .B(S0[0]), .Cin(1'b0)  , .Sum(Sum[0]),.Cout(C1[0]));
			end
			else begin
				full_adder fa2(.A(Co[j]), .B(S0[j]), .Cin(C0[j-1])  , .Sum(S1[j-1]),.Cout(C1[j]));
			end
		end
	endgenerate	

	RCA #(.bw(4)) r0(.A(C1[bw-1:0]), .B({C0[bw-1], S1[bw-2:0]}), .Cin(1'b0), .Sum(Sum[bw:1]), .Cout(Cout));

endmodule 

module RCA #(parameter bw = 4)(A, B, Cin, Sum, Cout);
	//can be subsitude with other adder to recude delay
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
	
	genvar i;
	generate
		for(i=1; i<=bw; i=i+1) begin: loop_1
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

module full_adder(
	A,B,Cin,
	Sum,Cout);
	
	input A,B,Cin;
	output Sum, Cout;
	
	assign Sum = A ^ B ^ Cin;
	assign Cout = (A&B) | (B&Cin)|(A&Cin);
	
endmodule

