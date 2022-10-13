`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:42 10/14/2022 
// Design Name: 
// Module Name:    kogge_stone 
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
module G_Cell(G0, G1, P1, GG);
	input G0;
	input G1;
	input P1;
	output GG;
	
	assign GG = G1 || (P1 & G0);
endmodule

module B_Cell(G1, G0, P1, P0, GG, PP);
	input G0;
	input G1;
	input P0;
	input P1;
	output GG;
	output PP;
	
	assign GG = G1 || (P1 & G0);
	assign PP = P1 & P0;
endmodule

module Generate(A, B, G);
	input A;
	input B;
	output G;
	
	assign G = A & B;
endmodule

module Propagate(A, B, P);
	input A; 
	input B;
	output P;
	
	assign P = A ^ B;
endmodule

module T_sum(S, P, Cin);
	input P;
	input Cin;
	output S;
	
	assign S = P ^ Cin;
endmodule

module kogge_stone(A, B, Cin, S, Cout);
	input [31:0] A;
	input [31:0] B;
	input Cin;
	output [31:0] S;
	output Cout;
	
	wire [31:0] col0G;
	wire [31:0] col0P;
	wire [31:0] col1G;
	wire [31:0] col1P;
	wire [31:0] col2G;
	wire [31:0] col2P;
	wire [31:0] col3G;
	wire [31:0] col3P;
	wire [31:0] col4G;
	wire [31:0] col4P;
	wire [31:0] col5G;
	wire [31:0] col5P;
	
	//column 0 �ڵ� �ݺ����� ����ؼ� Black Cell ��� �����ϱ�
	assign col0G[0] = Cin; //�츮�� G0 = Cin, P0 = 0���� �˰� �ִ�.
	assign col0P[0] = 0;
	
	generate
		for(genvar i=1; i<32; i=i+1) begin
			Generate G(A[i], B[i], col0G[i]);
			Propagate P(A[i], B[i], col0P[i]);
		end
	endgenerate
	//column 0 end CLA ó�� generate, propagate ���� ����
	
	//buffer? <1��>
	G_Cell col1_G_Cell(col0G[1], col0P[1], col0G[0], col1G[1]);
	generate
		for(genvar i=2; i<32; i=i+1) begin	
			B_Cell col1_B_Cell(col0G[i], col0P[i], col0G[i-1], col0P[i-1], col1G[i], col1P[i]);
		end
	endgenerate
	//column 1 end
	
	//buffer <1��>
	assign col2G[0] = col1G[0];
	assign col2P[0] = col1P[0];
	G_Cell col2_G_Cell1(col1G[2], col1P[2], col1G[0], col2G[2]);
	G_Cell col2_G_Cell2(col1G[3], col1P[3], col1G[1], col2G[3]);
	generate
		for(genvar i=4; i<32; i=i+1) begin
			B_Cell col2_B_Cell(col1G[i], col1P[i], col1G[i-2], col1P[i-2], col2G[i], col2P[i]);
		end
	endgenerate
	//column 2 end
	
	//buffer <2��>
	assign col3G[0] = col2G[0];
	assign col3P[0] = col2P[0];
	assign col3G[1] = col2G[1];
	assign col3G[1] = col2G[1];
	G_Cell col3_G_Cell1(col2G[4], col2P[4], col2G[0], col3G[4]);
	G_Cell col3_G_Cell2(col2G[5], col2P[5], col2G[1], col3G[5]);
	G_Cell col3_G_Cell3(col2G[6], col2P[6], col2G[2], col3G[6]);
	G_Cell col3_G_Cell4(col2G[7], col2P[7], col2G[3], col3G[7]);
	generate
		for(genvar i=8; i<32; i=i+1) begin
			B_Cell col3_B_Cell(col2G[i], col2P[i], col2G[i-4], col2P[i-4], col3G[i], col3P[i]);
		end
	endgenerate
	//column 3 end
	
	//buffer <4��>
	assign col4G[0] = col3G[0];
	assign col4P[0] = col3P[0];
	assign col4G[1] = col3G[1];
	assign col4P[1] = col3P[1];
	assign col4G[2] = col3G[2];
	assign col4G[2] = col3P[2];
	assign col4G[3] = col3G[3];
	assign col4G[3] = col3P[3];
	
	G_Cell col4_G_Cell1(col3G[8], col3P[8], col3G[0], col4G[8]);
	G_Cell col4_G_Cell2(col3G[9], col3P[9], col3G[1], col4G[9]);
	G_Cell col4_G_Cell3(col3G[10], col3P[10], col3G[2], col4G[10]);
	G_Cell col4_G_Cell4(col3G[11], col3P[11], col3G[3], col4G[11]);
	G_Cell col4_G_Cell5(col3G[12], col3P[12], col3G[4], col4G[12]);
	G_Cell col4_G_Cell6(col3G[13], col3P[13], col3G[5], col4G[13]);
	G_Cell col4_G_Cell7(col3G[14], col3P[14], col3G[6], col4G[14]);
	G_Cell col4_G_Cell8(col3G[15], col3P[15], col3G[7], col4G[15]);
	
	generate
		for(genvar i=16; i<32; i=i+1) begin	
			B_Cell col4_B_Cell(col3G[i], col3P[i], col3G[i-8], col3P[i-8], col4G[i]);
		end
	endgenerate
	
	//column 4 end 
	
	//buffer 8�� assign 16��
	assign col5G[0] = col4G[0];
	assign col5P[0] = col4P[0];
	assign col5G[1] = col4G[1];
	assign col5P[1] = col4P[1];
	assign col5G[2] = col4G[2];
	assign col5P[2] = col4P[2];
	assign col5G[3] = col4G[3];
	assign col5P[3] = col4P[3];
	assign col5G[4] = col4G[4];
	assign col5P[4] = col4P[4];
	assign col5G[5] = col4G[5];
	assign col5P[5] = col4P[5];
	assign col5G[6] = col4G[6];
	assign col5P[6] = col4P[6];
	assign col5G[7] = col4G[7];
	assign col5P[7] = col4P[7];
	
	generate
		for(genvar i=16; i<32; i=i+1) begin	
			G_Cell col5_G_cell(col4G[i], col4P[i], col5G[i-16], col5G[i]);
		end
	endgenerate
	
	//column 5 end
	
	//sum
	generate 
		assign S[0] = col1P[1] ^ col1G[0];
		for(genvar i=1; i<32; i=i+1) begin	
			T_sum total_s(S[i], col1P[i], col5G[i-1]);
		end
	endgenerate
	
	assign Cout = col5G[31];
	
endmodule
	

	