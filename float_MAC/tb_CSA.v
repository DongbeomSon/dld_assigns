`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:55:50 12/13/2022
// Design Name:   CSA
// Module Name:   C:/Xilinx/14.7/CSA/tb_CSA.v
// Project Name:  CSA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CSA;

	// Inputs
	reg [4:1] A;
	reg [4:1] B;
	reg [4:1] Cin;
	

	// Outputs
	wire [4:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CSA uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;
		
		
		A=4'b1010; B=4'b0011; Cin=4'b0000; 
		#100
		A=4'b1101; B=4'b0111; Cin=4'b0001;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

