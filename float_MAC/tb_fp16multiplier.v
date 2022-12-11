`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:48 12/10/2022
// Design Name:   fp16multiplier
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_fp16multiplier.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fp16multiplier;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	fp16multiplier uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
	A = 16'b1100011010010101;
	B = 16'b1011100110011010;
	#200
	A = 16'h0xd11d;
	B = 16'h0x599a;
	#200
	A = 16'h0xd2b4;
	B = 16'h0x5804;
	#200
	A = 16'h0x5311;
	B = 16'h0x5999;
	#200
	A = 16'h0x4e56;
	B = 16'h0x5783;
	#200
	A = 16'h0x596d;
	B = 16'h0xd521;
	#200
	A = 16'h0xce4c;
	B = 16'h0xd448;
	#200
	A = 16'h0xd049;
	B = 16'h0xd426;
	#200
	A = 16'h0xd199;
	B = 16'h0x5450;
	#200
	A = 16'h0x5777;
	B = 16'h0x57ad;
	#200

		
		// Wait 100 ns for global reset to finish
		#100000;
        		
		$finish;
		// Add stimulus here

	end
   
	initial begin
		CLK = 0;
		RESETn = 0;
		#50;
		RESETn = 1;
		forever #10 CLK = ~CLK;
	end
      
endmodule

