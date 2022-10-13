`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:13:47 10/14/2022
// Design Name:   kogge_stone_4bit
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/dld_assign2/tb_kogge_stone_4bit.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: kogge_stone_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_kogge_stone_4bit;

	// Inputs
	reg [4:1] A;
	reg [4:1] B;
	reg cin;

	// Outputs
	wire cout;
	wire [4:1] sum;

	// Instantiate the Unit Under Test (UUT)
	kogge_stone_4bit uut (
		.A(A), 
		.B(B), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		A = 3;
		B = 6;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

