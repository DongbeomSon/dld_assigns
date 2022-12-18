`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:23:02 12/13/2022
// Design Name:   fpadder
// Module Name:   C:/Xilinx/14.7/fpadder1/tb_fpadder.v
// Project Name:  fpadder1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fpadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fpadder;

   // Inputs
   reg [15:0] A;
   reg [15:0] B;
   reg CLK;
   reg RESETn;

   // Outputs
   wire [15:0] Sum;

   // Instantiate the Unit Under Test (UUT)
   fpadder uut (
      .A(A), 
      .B(B), 
      .CLK(CLK), 
      .RESETn(RESETn), 
      .sum(Sum)
   );

   initial begin
      // Initialize Inputs
	#40
	A = 16'h0x3db1;
	B = 16'h0x2520;
	#20
	A = 16'h0x3f64;
	B = 16'h0xb158;
	#20
	A = 16'h0xba1c;
	B = 16'h0xbaa5;
	#20
	A = 16'h0x3df0;
	B = 16'h0x8d86;
	#20
	A = 16'h0xb87a;
	B = 16'h0x3934;
	#20
	A = 16'h0xb7e2;
	B = 16'h0x3f5e;
	#20
	A = 16'h0x263b;
	B = 16'h0xb479;
	#20
	A = 16'h0xb27a;
	B = 16'h0x3554;
	#20
	A = 16'h0xae24;
	B = 16'h0x3f4b;
	#20
	A = 16'h0x3617;
	B = 16'h0xbb1d;
	#20


      // Wait 100 ns for global reset to finish
      #5000;
        
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

