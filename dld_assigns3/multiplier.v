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
	output [2*bw:1] out;
	
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
	
	assign out = sum[bw];
	
endmodule

