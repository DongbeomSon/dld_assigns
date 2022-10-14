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
	
module kogge_stone_Nbit(
	A,B,cin,
	cout,sum,
	clk, resetn
    );
	 
	parameter bw = 32;
	parameter integer level = $ceil($clog2(bw+1))+1;
	
	input [bw:1] A;
	input [bw:1] B;
	input cin;
	input clk;
	input resetn;
	output reg cout;
	output reg [bw:1] sum;
	
	wire Co;
	wire [bw:1] S;
	
	wire [bw:1] G;
	wire [bw:1] P;
	
	assign G = A & B;
	assign P = A ^ B;
	
	wire [(bw+1)*level:0] GG;
	wire [(bw+1)*level:0] PP;

	
	genvar i;
	genvar j;
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
/*	assign GG[0] = cin;
	assign GG[(bw+1)] = cin;
	assign GG[(bw+1)*2] = cin;
	assign GG[(bw+1)*3] = cin;
	assign PP[0] = 0;
	assign PP[(bw+1)] = 0;
	assign PP[(bw+1)*2] = 0;
	assign PP[(bw+1)*3] = 0;*/
	
	generate
		for(i=1; i <= level+1;i=i+1)begin:loop_init
			assign GG[(bw+1)*(i-1)] = cin; 
			assign PP[(bw+1)*(i-1)] = 0;
		end
	endgenerate
	
	assign GG[bw:1] = A & B;
	assign PP[bw:1] = A ^ B;
	
	generate
		for(i=1; (2**(i-1))<= bw; i=i+1) begin :loop_1
			if(i > 1) begin
				for(j=2**(i-2); j <= bw; j = j+1) begin : loop_2
					if(j <=(2**(i-1)-1)) begin
						buffer U0(GG[(i-1)*(bw+1) + j], PP[(i-1)*(bw+1) + j],GG[i*(bw+1) + j], PP[i*(bw+1) + j]);
					end
				end
			end
			for(j=(2**(i-1)); j <= bw; j = j+1) begin :loop_3
				if(j <= (2**i -1)) begin
					G_cell U1(GG[(i-1)*(bw+1) + j], PP[(i-1)*(bw+1) + j], GG[(i-1)*(bw+1) + j - (2**(i-1))], PP[(i-1)*(bw+1) + j - (2**(i-1))],GG[i*(bw+1) + j], PP[i*(bw+1) + j]);
					assign S[j] = P[j] ^ GG[i*(bw+1) + j-1];
				end
				else	begin
					B_cell U2(GG[(i-1)*(bw+1) + j], PP[(i-1)*(bw+1) + j], GG[(i-1)*(bw+1) + j - (2**(i-1))], PP[(i-1)*(bw+1) + j - (2**(i-1))],GG[i*(bw+1) + j], PP[i*(bw+1) + j]);
				end
			end
			
			if(2**i > bw) begin
				assign Co = GG[(i*(bw+1) + bw)];
			end
		end
	endgenerate
	
	always@(posedge clk, negedge resetn) begin
		if(!resetn) begin
			cout <= 0;
			sum <= 0;
		end else begin
			cout <= Co;
			sum <= S;
		end
	end


endmodule
