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
module fpadder(A, B, CLK, RESETn, Sum);
	input [15:0] A, B;
	input CLK, RESETn;
	output [15:0] Sum;
	reg [4:0] exp, expA, expB, expA_R, expB_R;
	reg  sA, sB, s, S, temp;
	reg [10:0] mtsA,  mtsB, mts, mtsA_R, mtsB_R;
	reg [11:0] R_mts, mts_temp;
	reg [4:0] Difference;
	
	always@(posedge CLK, negedge RESETn) begin
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
		mts = mts_temp[11:1];
		exp = expA_R;
		repeat(11) begin
			if (mts[10] == 1'b0) begin
				mts = mts << 1'b1;
				exp = exp - 5'd1;
			end
		end
	end
	assign Sum = {s, exp, mts[9:0]};
endmodule
