module CSA #(parameter bw = 4)(A, B, Cin, Co, Sum, Cout);
input [bw-1:0] A, B, Cin, Co;
output [bw:0] Sum;
output Cout;

wire [bw-1:0] S0, S1;
wire [bw-1:0] C0, C1;

full_adder fa0(.A(A[0]), .B(B[0]), .Cin(Cin[0]), .Sum(S0[0]), .Cout(C0[0]));
full_adder fa1(.A(A[1]), .B(B[1]), .Cin(Cin[1]), .Sum(S0[1]), .Cout(C0[1]));
full_adder fa2(.A(A[2]), .B(B[2]), .Cin(Cin[2]), .Sum(S0[2]), .Cout(C0[2]));
full_adder fa3(.A(A[3]), .B(B[3]), .Cin(Cin[3]), .Sum(S0[3]), .Cout(C0[3]));

full_adder fa4(.A(Co[0]), .B(S0[0]), .Cin(1'b0)  , .Sum(Sum[0]),.Cout(C1[0]));
full_adder fa5(.A(Co[1]), .B(S0[1]), .Cin(C0[0]), .Sum(S1[0]), .Cout(C1[1]));
full_adder fa6(.A(Co[2]), .B(S0[2]), .Cin(C0[1]), .Sum(S1[1]), .Cout(C1[2]));
full_adder fa7(.A(Co[3]), .B(S0[3]), .Cin(C0[2]), .Sum(S1[2]), .Cout(C1[3]));

RCA #(.bw(4)) r0(.A(C1[bw-1:0]), .B({C0[bw-1], S1[bw-2:0]}), .Cin(1'b0), .Sum(Sum[bw:1]), .Cout(Cout));

endmodule 

module RCA #(parameter bw = 4)(A, B, Cin, Sum, Cout);
	//can be subsitude with other adder to recude delay
	input [bw:1] A;
	input [bw:1] B;
	input Cin;
	output [bw:1] Sum;
	output Cout;
	
	wire [bw:0] G;
	wire [bw:0] P;
	wire [bw:0] GG;
	
	assign G[0] = Cin;
	assign P[0] = 0;
	assign G[bw:1] = A & B;
	assign P[bw:1] = A ^ B;
	
	assign GG[0] = G[0];
	G_Cell U0(G[0], G[1], P[1], GG[1]);
	
	genvar i;
	generate
		for(i=1; i<=bw; i=i+1) begin: loop_1
			if(i<bw)
				G_Cell U1(GG[i], G[i+1], P[i+1], GG[i+1]);
			assign Sum[i] = P[i] ^ GG[i-1];
		end
	endgenerate
	
	assign Cout = GG[bw];
	
endmodule

module G_Cell(G0, G1, P1, GG);
	input G0;
	input G1;
	input P1;
	output GG;
	
	assign GG = G1 | (P1 & G0);
endmodule

module full_adder(
	A,B,Cin,
	Sum,Cout);
	
	input A,B,Cin;
	output Sum, Cout;
	
	assign Sum = A ^ B ^ Cin;
	assign Cout = (A&B) | (B&Cin)|(A&Cin);
	
endmodule

