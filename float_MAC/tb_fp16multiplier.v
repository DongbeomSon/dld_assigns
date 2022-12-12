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
	A = 16'h0xd5c7;
	B = 16'h0x528f;
	#200
	A = 16'h0x4e6e;
	B = 16'h0x5502;
	#200
	A = 16'h0x4fc1;
	B = 16'h0xd4e1;
	#200
	A = 16'h0x54c7;
	B = 16'h0xc366;
	#200
	A = 16'h0x5803;
	B = 16'h0x59de;
	#200
	A = 16'h0xd17a;
	B = 16'h0x591a;
	#200
	A = 16'h0xc13c;
	B = 16'h0x5944;
	#200
	A = 16'h0x488b;
	B = 16'h0xd006;
	#200
	A = 16'h0xd630;
	B = 16'h0x528f;
	#200
	A = 16'h0x54d4;
	B = 16'h0x5850;
	#200


		
		// Wait 100 ns for global reset to finish
		#5000;
        		
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

