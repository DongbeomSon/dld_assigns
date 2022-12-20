`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:20:56 12/13/2022 
// Design Name: 
// Module Name:    fpadder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fpadder(A, B, CLK, RESETn, Sum);
   input [15:0] A, B;
   input CLK, RESETn;
   output reg [15:0] Sum;
   
   wire [4:0] exptempA, exptempB;
   wire [10:0] mtstempA, mtstempB;
   wire s, S;
   wire [11:0] R_temp;
   wire [10:0] mts;
   wire [4:0] exp;
   
   compshift cs0(A[14:10], B[14:10], {1'b1, A[9:0]}, {1'b1, B[9:0]}, exptempA, exptempB, mtstempA, mtstempB, S);
   mantissa mts0(A[15], B[15], mtstempA, mtstempB, R_temp);
   normalization nor0(A[15], B[15], s, S, exptempA, exp, R_temp, mts);
   

   
   always@(posedge CLK, negedge RESETn) begin
      if(!RESETn) begin
         Sum <= 0;
      end
      else begin
         Sum <= {s, exp, mts[9:0]};
      end
   end
   
endmodule
   
      //compare exponential and shift mantissa
module compshift(expA, expB, mtsA, mtsB, expA_R, expB_R, mtsA_R, mtsB_R, S);
   input [4:0] expA, expB;
   input [10:0] mtsA, mtsB;
   output wire [4:0] expA_R, expB_R;
   output wire [10:0] mtsA_R, mtsB_R;
   output wire S;
   
   wire [10:0] mts_temp0;
   wire [4:0] Difference;
         
   assign expA_R = (expA == expB | expA > expB) ? expA + 5'd1 : expB + 5'd1;
   assign expB_R = (expA == expB | expA < expB) ? expB + 5'd1 : expA + 5'd1;
   assign Difference = (expA > expB) ? expA - expB : expB - expA;
   assign mtsA_R = (expA == expB | expA > expB) ? mtsA : mtsB;
   assign mtsB_R = (expA == expB) ? mtsB : mts_temp0;
   assign mts_temp0 = (expA > expB) ? mtsB >> Difference : mtsA >> Difference;
   assign S = (expA == expB | expA > expB) ? 1'b1 : 1'b0;
         
endmodule
      

         
//Sub Add
module mantissa(sA, sB, mtsA_R, mtsB_R, R_mts);
   input sA, sB;
   input wire [10:0] mtsA_R, mtsB_R;
   output wire [11:0] R_mts;
         
   assign R_mts = (sA ^ sB) ? mtsA_R - mtsB_R : mtsA_R + mtsB_R;
endmodule
      
module normalization(sA, sB, s, S, expA_R, exp, R_mts, mts);
   input sA, sB;
   input wire S;
   input wire [11:0] R_mts;
   input wire[4:0] expA_R;
   output s;
   output wire [4:0] exp;
   output wire [10:0] mts;
   wire temp;
	wire [4:0] exp_temp;
	wire [10:0] mts_temp;
   wire [11:0] mts_temp1;
      
   assign temp = sA ^ sB;
   assign s = S ? (sA ^ (R_mts[11] & temp)) : (sB ^ (R_mts[11] & temp));
   assign mts_temp1 = (R_mts[11] & temp) ? (~R_mts + 12'd1) : R_mts;
   assign mts_temp = mts_temp1[11:1];
   assign exp_temp = expA_R;
	
	
	genvar i;
	generate 
		for(i=0; i<11; i=i+1) begin : loop_1
			assign mts = (mts_temp[10] == 1'b0) ? mts_temp << 1'b1 : mts_temp;
			assign exp = (mts_temp[10] == 1'b0) ? exp_temp - 5'd1 : exp_temp;
		end
	endgenerate
	

				
		
		
      
endmodule
