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
/*
	a = 16'h0xcaca;
	b = 16'h0xd035;
	#200
*/
	#53
	a = 16'h0xb9d4;
	b = 16'h0xbda0;
	#20
	a = 16'h0x366d;
	b = 16'h0x2961;
	#20
	a = 16'h0x3974;
	b = 16'h0xbf20;
	#20
	a = 16'h0x3668;
	b = 16'h0xb727;
	#20
	a = 16'h0x3c22;
	b = 16'h0xb962;
	#20
	a = 16'h0x3f21;
	b = 16'h0xbd6f;
	#20
	a = 16'h0x3bd9;
	b = 16'h0xbdfe;
	#20
	a = 16'h0x3a10;
	b = 16'h0x2d07;
	#20
	a = 16'h0x3219;
	b = 16'h0xbc20;
	#20
	a = 16'h0x3d7e;
	b = 16'h0xae7a;
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

