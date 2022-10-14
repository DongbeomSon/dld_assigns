`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:17 10/12/2022 
// Design Name: 
// Module Name:    ripple_carry_adder 
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

module gray_cell(Gi, Pi, Gp, Gout);
	 input Gi, Pi;
	 input Gp;
	 output Gout;
	 
	 assign Gout = Gi | (Pi & Gp);

endmodule


module ripple_carry_adder(
		A, B, cin, 
		sum, cout
    );
	 
	 parameter bw = 4;
	 
	 input [bw:1] A;
	 input [bw:1] B;
	 input cin;
	 output [bw:1] sum;
	 output cout;
	 
	 
	 wire [bw:0] G;
	 wire [bw:0] P;
	 wire [bw:0] Gout;
	 // wire [bw:0] Pout; RCA에선 gray cell만 이용
	 
	 assign	G[bw:1] = A & B;
	 assign	P[bw:1] = A ^ B;
	 
	 //P, G part
	 assign Gout[0] = cin;
	 //gray_cell U0(G[0], P[0], cin, Gout[1]);
	 
	 genvar i;
	 generate
		for(i = 1; i <= bw; i=i+1) begin: loop_1
			gray_cell U1(G[i], P[i], Gout[i-1], Gout[i]);
			assign sum[i] = P[i] ^ Gout[i-1];
		end
	 endgenerate
	 
	 assign cout = Gout[bw];
	 

endmodule
