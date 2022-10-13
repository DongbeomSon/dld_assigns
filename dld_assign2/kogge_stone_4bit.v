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
module B_cell(G,P,GG,PP,GGG,PPP);
	input G;
	input P;
	input GG;
	input PP;
	output GGG;
	output PPP;
	
	assign GGG = G | (P & GG);
	assign PPP = P & PP;
	
endmodule

module G_cell(G,P,GG,PP,GGG,PPP);
	input G;
	input P;
	input GG;
	input PP;
	output GGG;
	output PPP;
	
	assign GGG = G | (P& GG);
	assign PPP = P;
	
endmodule

module buffer(
	G,P,GGG,PPP
	);
	
	input G;
	input P;
	output GGG;
	output PPP;
	
	assign GGG = G;
	assign PPP = P;
	
endmodule
	
module kogge_stone_4bit(
	A,B,cin,
	cout,sum
    );
	 
	parameter bw = 4;
	
	input [bw:1] A;
	input [bw:1] B;
	input cin;
	output cout;
	output [bw:1] sum;
	
	wire [bw:1] G;
	wire [bw:1] P;
	
	assign G = A & B;
	assign P = A ^ B;
	
	wire [bw*4:0] GG;
	wire [bw*4:0] PP;
	
	assign GG[0] = cin;
	assign GG[bw] = cin;
	assign GG[bw*2] = cin;
	assign GG[bw*3] = cin;
	assign PP[0] = 0;
	assign PP[bw] = 0;
	assign PP[bw*2] = 0;
	assign PP[bw*3] = 0;
	assign GG[bw:1] = A & B;
	assign PP[bw:1] = A ^ B;

	
	genvar i;
	genvar j;
	genvar k;
	//(2**(i-1))
	
	 
	
/*	generate
		for(i=1; (2**i -1)<= bw; i=i+1) begin :loop_1
			for(j=1; j <= bw; j = j+1) begin :loop_2
				if(j <= (2**(i-1))) begin
					G_cell U1(GG[(i-1)*bw + j], PP[(i-1)*bw + j], GG[(i-1)*bw + (j-(2**i))], PP[(i-1)*bw + (j-(2**i))],GG[i*bw + j], PP[i*bw + j]);
					assign sum[2**(i-1) + (j-1)] = P[2**(i-1) + (j-1)] ^ GG[i*bw + j];
				end
				else	begin
					B_cell U2(GG[(i-1)*bw + j], PP[(i-1)*bw + j], GG[(i-1)*bw + (j-(2**i))], PP[(i-1)*bw + (j-(2**i))],GG[i*bw + j], PP[i*bw + j]);
				end
			end
		end
	endgenerate*/
	
		generate
		for(i=1; (2**(i-1))<= bw; i=i+1) begin :loop_1
			for(j=(2**(i-1)); j <= bw; j = j+1) begin :loop_2
				if(j <= (2**i -1)) begin
					G_cell U1(GG[(i-1)*bw + j], PP[(i-1)*bw + j], GG[(i-1)*bw + j - (2**(i-1))], PP[(i-1)*bw + j - (2**(i-1))],GG[i*bw + j], PP[i*bw + j]);
					assign sum[j] = P[j] ^ GG[i*bw + j];
				end
				else	begin
					B_cell U2(GG[(i-1)*bw + j], PP[(i-1)*bw + j], GG[(i-1)*bw + j - (2**(i-1))], PP[(i-1)*bw + j - (2**(i-1))],GG[i*bw + j], PP[i*bw + j]);
				end
			end
		end
	endgenerate
	
	


endmodule
