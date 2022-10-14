`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:23 10/13/2022 
// Design Name: 
// Module Name:    CLA 
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
module CLA_4bit(
	A, B, cin, sum, cout);
	
	input [3:0] A;
	input	[3:0] B;
	input cin;
	
	output [3:0] sum;
	output cout;
	
	wire [3:0] G;
	wire [3:0] P;
	wire [2:0] C;
	
	assign G = A & B;
	assign P = A ^ B;
	
	assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
	assign PP = P[3] & P[2] & P[1] & P[0];
	
	assign C[0] = G[0] | (P[0] & cin);
	assign C[1] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin);
	assign C[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);
	assign cout = GG | (PP & cin);
	
	assign sum[0] = P[0] ^ cin;
	assign sum[3:1] = P[3:1] ^ C[2:0]; 
	

endmodule
	


module CLA_32bit(
	A, B, cin, sum, cout,
	CLK, RESETn
    );
	 
	 input [31:0] A;
	 input [31:0] B;
	 input cin;
	 output reg [31:0]sum;
	 output reg cout;
	 
	 input CLK, RESETn;
	 
	 wire [7:0] C;
	 wire [31:0] S;
	 wire CO;
	 
	 CLA_4bit U0(A[3:0], B[3:0], cin, S[3:0], C[0]);
	 CLA_4bit U1(A[7:4], B[7:4], C[0], S[7:4], C[1]);
	 CLA_4bit U2(A[11:8], B[11:8], C[1], S[11:8], C[2]);
	 CLA_4bit U3(A[15:12], B[15:12], C[2], S[15:12], C[3]);
	 CLA_4bit U4(A[19:16], B[19:16], C[3], S[19:16], C[4]);
	 CLA_4bit U5(A[23:20], B[23:20], C[4], S[23:20], C[5]);
	 CLA_4bit U6(A[27:24], B[27:24], C[5], S[27:24], C[6]);
	 CLA_4bit U7(A[31:28], B[31:28], C[6], S[31:28], CO);

	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			sum <= 0;
			cout <= 0;
		end else begin
			sum <= S;
			cout <= CO;
		end
	 end

endmodule
