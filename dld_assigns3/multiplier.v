`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:33:58 10/17/2022 
// Design Name: 
// Module Name:    multiplier 
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


module multiplier
	#(parameter bw = 16)
	(
		A, B, out,
		CLK,RESETn
    );
	 
	 input CLK,RESETn;
	 
	 input [bw:1] A, B;
	 output reg[2*bw:1] out;
	 
	 wire [2*bw:1] psum [bw-1:0];
	 wire [2*bw:1] sum [bw:0];
	 wire cout;
	 
	 genvar i;
	 
	 assign sum[0] = 0;
	 generate
		for(i=0; i < bw; i=i+1)begin:loop_1
			assign psum[i] = A[i+1] ? {{bw{1'b0}}, B} << i : 0;
			kogge_stone_Nbit_NOCLK #(.bw(2*bw)) U0(.A(psum[i]), .B(sum[i]), .cin(0), .sum(sum[i+1]), .cout(cout));
		end
			
	 endgenerate
	 
	 //assign out = sum[bw-1];
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= sum[bw];
		end
	 end
	 


endmodule

module full_adder(
	A,B,cin,
	sum,cout);
	
	input A,B,cin;
	output sum, cout;
	
	assign sum = A ^ B ^ cin;
	assign cout = (A&B) | (B&cin)|(A&cin);
	
endmodule

module half_adder(
	A,B,sum,cout);
	
	input A,B;
	output sum, cout;
	
	assign sum = A^B;
	assign cout = A&B;
	
endmodule


module multiplier_array #(bw = 16)
	(A, B, out, CLK, RESETn);
	
	input [bw:1] A, B;
	input CLK, RESETn;
	output reg [2*bw:1] out;
	
	wire [2*bw:1] pSum [bw:1];
	
	wire [2*bw:1] sum [bw:1];
	wire [2*bw:0] carry [bw:1];
	
	genvar i;
	generate
		for(i=1; i <= bw; i=i+1) begin: gen
			assign pSum[i] = {A&{bw{B[i]}}} << (i-1);
		end
	endgenerate
	
	genvar j;
	generate
		for(j = 1; j <= bw; j = j+1) begin: tmp
			assign carry[j][0] = 1'b0;
		end
	endgenerate
	
	assign sum[1] = pSum[1];
	
	genvar r, c;
	generate
		for(r=1; r < bw; r=r+1) begin : psum_row
			for(c=1; c <= 2*bw; c=c+1) begin : psum_col
				full_adder u0(sum[r][c],pSum[r+1][c],carry[r][c-1],sum[r+1][c],carry[r][c]);
			end
		end
	endgenerate
	
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= sum[bw];
		end
	end
	
endmodule



module multiplier_array_pipe #(bw = 16)
	(A, B, out, CLK, RESETn);
	
	input [bw:1] A, B;
	input CLK, RESETn;
	output reg [2*bw:1] out;
	
	wire [2*bw:1] pSum [bw:1];
	
	wire [2*bw:1] sum [bw:1];
	wire [2*bw:0] carry [bw:1];
	
	reg [bw:1] A_reg [bw:1];
	reg [bw:1] B_reg [bw:1];
	
	reg [2*bw:0] sum_reg [bw:1];
	
	genvar i, r, c;
	genvar j;
	generate
		for(j = 1; j <= bw; j = j+1) begin: tmp
			assign carry[j][0] = 1'b0;
		end
	endgenerate
	
	for(i=1; i <= 2; i=i+1) begin :pSumgen
			assign pSum[i] = {A&{bw{B[i]}}} << (i-1);
		end
	assign sum[1] = pSum[1];
	
	for(c=1; c<=2*bw; c=c+1) begin :psum_col_0
		full_adder u0(sum[1][c],pSum[2][c],carry[1][c-1],sum[2][c],carry[1][c]);
	end
	
	generate
		for(r=2; r < bw; r=r+1) begin : psum_row
			if(r != 1) begin
				assign pSum[r+1] = {A_reg[r]&{bw{B_reg[r][r+1]}}} << (r);
			end
			
			for(c=1; c <= 2*bw; c=c+1) begin : psum_col
				full_adder u0(sum_reg[r][c],pSum[r+1][c],carry[r][c-1],sum[r+1][c],carry[r][c]);
			end
		end
	endgenerate
	
	generate
		for(i=1; i<=bw; i=i+1) begin:ain
			always@(negedge RESETn) begin
				if(!RESETn) begin
					A_reg[i] <= 0;
					B_reg[i] <= 0;
					sum_reg[i] <= 0;
				end
			end
		end
	endgenerate
	

	
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= sum[bw];
			A_reg[2] <= A;
			B_reg[2] <= B;
		end
	end
	
	generate
		for(i=2; i<bw; i=i+1) begin:ain2
			always@(posedge CLK) begin
				sum_reg[i] <= sum[i];
				A_reg[i+1] <= A_reg[i];
				B_reg[i+1] <= B_reg[i];
			end
		end
	endgenerate
	
	
endmodule

