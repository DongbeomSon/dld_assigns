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
		A = 16'b1010100000000000;
		B = 16'b0000110000000000;
		
		// Wait 100 ns for global reset to finish
		#100;
        		
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

