`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:25:25 10/14/2022 
// Design Name: 
// Module Name:    kogge_stone_4bit 
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
module B_cell(
	input G,
	input P,
	input GG,
	input PP,
	output GGG,
	output PPP
	);
	
	assign GGG = G | (P & GG);
	assign PPP = P & PP;
	
endmodule

module G_cell(
	input G,
	input P,
	input GG,
	input PP,
	output GGG,
	output PPP
	);
	
	assign GGG = G | (P& GG);
	assign PPP = P;
	
endmodule

module buffer(
	input G,
	input P,
	output GGG,
	output PPP
	);
	
	
	assign GGG = G;
	assign PPP = P;
	
endmodule
	
module kogge_stone_4bit(
	input A[bw:1],
	input B[bw:1],
	input cin,
	output cout,
	output sum[bw:1]
    );
	 
	wire G[bw:1] = A & B;
	wire P[bw:1] = A ^ B;
	
	wire GG[4:1][bw:0];
	wire PP[4:1][bw:0];
	
	assign GG[4:1][0] = {4{cin}};
	assign PP[4:1][0] =	4'b0000;
	assign GG[1][bw:1] = A & B;
	assign PP[1][bw:1] = A ^ B;
	
	parameter bw = 4;
	genvar i;
	genvar j;
	
	generate
		for(i = 1; (2**(i-1) -1)<= bw; i = i+1) begin:
			for(j = 1; j <= (2**(i-1); j = j+1) begin:
				if(j <= bw) begin:
					G_cell UG(GG[i][j], PP[i][j], GG[i][j-(2**i)], PP[i][j-(2**i)],GG[i+1][j], PP[i+1][j]];
				end
			end
			for(; j <= bw; j = j+1) begin:
				B_cell UB(GG[i][j], PP[i][j], GG[i][j-(2**i)], PP[i][j-(2**i)],GG[i+1][j], PP[i+1][j]];
			end
		end
	endgenerate

endmodule
