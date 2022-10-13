`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:20:26 10/13/2022
// Design Name:   CLA_32bit
// Module Name:   C:/Xilinx/14.7/dld_assign2/tb_CLA_32bit.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CLA_32bit;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg cin;

	// Outputs
	wire [31:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_32bit uut (
		.A(A), 
		.B(B), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		A = 128;
		B = 64;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

