`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:27 12/11/2022
// Design Name:   karastuba_12bit
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_karastuba_12bit.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: karastuba_12bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_karastuba_12bit;

	// Inputs
	reg [11:0] a;
	reg [11:0] b;

	// Outputs
	wire [23:0] out;

	// Instantiate the Unit Under Test (UUT)
	karastuba_12bit uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 12'd1460;
		b = 12'd1156;

		// Wait 100 ns for global reset to finish
		#50000;
		$finish;
		// Add stimulus here

	end
	
	always #50 a=a+4;
	always #50 b=b+4;
      
endmodule

