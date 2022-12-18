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

