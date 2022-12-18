`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:43:22 12/14/2022
// Design Name:   fp16MAC
// Module Name:   C:/Xilinx/14.7/dld_assigns/float_MAC/tb_fp16MAC.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16MAC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fp16MAC;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg CLK;
	reg RESETn;

	// Outputs
	wire [15:0] acc;

	// Instantiate the Unit Under Test (UUT)
	fp16MAC uut (
		.a(a), 
		.b(b), 
		.acc(acc), 
		.CLK(CLK), 
		.RESETn(RESETn)
	);

	initial begin
		// Initialize Inputs
	#53
	a = 16'h0x3db1;
	b = 16'h0x2520;
	#20
	a = 16'h0x3f64;
	b = 16'h0xb158;
	#20
	a = 16'h0xba1c;
	b = 16'h0xbaa5;
	#20
	a = 16'h0x3df0;
	b = 16'h0x8d86;
	#20
	a = 16'h0xb87a;
	b = 16'h0x3934;
	#20
	a = 16'h0xb7e2;
	b = 16'h0x3f5e;
	#20
	a = 16'h0x263b;
	b = 16'h0xb479;
	#20
	a = 16'h0xb27a;
	b = 16'h0x3554;
	#20
	a = 16'h0xae24;
	b = 16'h0x3f4b;
	#20
	a = 16'h0x3617;
	b = 16'h0xbb1d;
	#20

	





		
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

