`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:34 10/12/2022
// Design Name:   ripple_carry_adder
// Module Name:   C:/Xilinx/14.7/dld_assign2/tb_ripple_carray_adder.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ripple_carray_adder;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder uut (
		.A(A), 
		.B(B), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		A = 14;
		B = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

