`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:18 12/09/2022 
// Design Name: 
// Module Name:    fp16adder 
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

module encoder_add(
	A,B, product,
	out
);

	input [15:0] A, B;
	input [15:0] product;
	
	output [15:0] out;
	
	wire [4:0] bA = A[14:10];
	wire [4:0] bB = B[14:10];
	
	wire [9:0] sA = A[9:0];
	wire [9:0] sB = B[9:0];
	
	wire nzsA, nzsB;
	
	assign nzsA = (A[0] | A[1] | A[2] | A[3] | A[4] | A[5] | A[6] | A[7] | A[8] | A[9]);
	assign nzsB = (B[0] | B[1] | B[2] | B[3] | B[4] | B[5] | B[6] | B[7] | B[8] | B[9]);
	
	wire zA = ~(bA[0] | bA[1] | bA[2] | bA[3] | bA[4]);
	wire zB = ~(bB[0] | bB[1] | bB[2] | bB[3] | bB[4]);
	
	wire zzA = zA & ~(nzsA);
	wire zzB = zB & ~(nzsB);
	
	wire iA = bA[0] & bA[1] & bA[2] & bA[3] & bA[4];
	wire iB = bB[0] & bB[1] & bB[2] & bB[3] & bB[4];
	
	wire z = zzA | zzB;
	wire i = iA | iB;
	
	wire nanA = iA & nzsA;
	wire nanB = iB & nzsB;
	
	wire nan = nanA | nanB;
	
	wire [15:0] nanOut = {6'b011111,10'b1};
	wire [14:0] inf = 15'h7c00;
	
	wire sign = A[15]^B[15];

	
	assign out = nan ? nanOut : (zA ? B : (zB ? A : (iA ? (sign ? nanOut : {A[15],inf}) : (iB ? (sign ? nanOut : {A[15],inf}) : product))));
	
endmodule


module fpadder(A, B, CLK, RESETn, sum);
	input [15:0] A, B;
	input CLK, RESETn;
	output [15:0] sum;
	reg [4:0] exp, expA, expB, expA_R, expB_R;
	reg  sA, sB, s, S, temp;
	reg [10:0] mtsA,  mtsB, mtsA_R, mtsB_R;
	reg [11:0] R_mts, mts_temp, mts;
	reg [11:0] mts_rnd;
	reg [4:0] Difference;
	reg g, r;
	reg rndup;
	reg [15:0] Sum;
	
	wire e;
	
	encoder_add en(A,B,Sum,sum);
	//assign sum = 
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			Sum <= 0;
		end else begin
		//initial value sign, exponential, mantissa
		sA = A[15];
		sB = B[15];
		expA = A[14:10];
		expB = B[14:10];
		mtsA = {1'b1, A[9:0]};
		mtsB = {1'b1, B[9:0]};
		
		//compare exponential and shift mantissa
		if (expA == expB) begin
			expA_R = expA + 5'd1;
			expB_R = expB + 5'd1;
			mtsA_R = mtsA;
			mtsB_R = mtsB;
			S = 1'b1;
		end
		else if (expA > expB) begin
			Difference = expA - expB; 
			expA_R = expA + 5'd1;
			expB_R = expA + 5'd1;
			mtsA_R = mtsA;
			mtsB_R = mtsB >> Difference;
			S = 1'b1;
		end
		else begin
			Difference = expB - expA;
			expA_R = expB + 5'd1;
			expB_R = expB + 5'd1;
			mtsA_R = mtsB;
			mtsB_R = mtsA >> Difference;
			S = 1'b0;
		end
		
		//Sub Add
		if (sA ^ sB) begin
			R_mts = mtsA_R - mtsB_R;
		end
		else begin
			R_mts = mtsA_R + mtsB_R;
		end
		
		//normalize
		temp = sA ^ sB;
		s = S ? (sA ^ (R_mts[11] & temp)) : (sB ^ (R_mts[11] & temp));
		mts_temp = (R_mts[11] & temp) ? (~R_mts + 12'd1) : R_mts;
		mts = mts_temp[11:0];
		exp = expA_R;
		repeat(11) begin
			if (mts[11] == 1'b0) begin
				mts = mts << 1'b1;
				exp = exp - 5'd1;
			end
		end
		g = mts[1];
		r = mts[0];
		rndup = g & r;
		mts_rnd = mts + rndup;
		Sum <= {s, exp, mts_rnd[10:1]};
	end
	end
endmodule
