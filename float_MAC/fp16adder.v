`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:18 12/09/2022 
// Design Name: 
// Module Name:    fp16adder 
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
module fpAdder(A, B, done, CLK, sum, opt, start, RESETn)
input [15:0] A, B; //16비트 input A,B
input start, CLK, RESETn;
input [2:0] opt; //case 구분 option 요소
output reg [15:0] sum; //16비트 출력(합)
output reg done;
reg [4:0] exA, exB; //exopnential
reg [9:0] mtsA, mtsB; //mantissa
reg sA, sB; //sign bit
reg [2:0] state, add; //case 구분
reg ovf, exbA, exbB, exb; //overflow, expA, expB
parameter cs0 = 2'b00, cs1 = 2'b01, cs2 = 2'b10;
parameter buffer = 2'b00, addition = 2'b01;

always@(posedge CLK or negedge RESETn) begin
	if(!RESETn)
		state <= cs0;
	else 
		case(state) //cs에 따라 case 구분, 지수 동일, 지수 차이(A>B, A<B)인 경우
			cs0 : begin	
				sum  <= 0;
				done <= 0;
				add  <= 0;
				ovf  <= 0;
				if(start) 
					state <= cs1; //초기 설정
				end
			cs1 : case(opt)
				buffer : begin
					state <= cs1;
					mtsA <= A[9:0]; mtsB <= B[9:0]; exA <= A[14:10]; exB <= B[14:10]; sA <= A[15:14}; sB <= B[15:14};
					exbA <= A[14:10] ? 1 : 0;
					exbB <= B[14:10] ? 1 : 0;
					exb  <= 0;
				end
				
				addition : case(add)
					2'b00 : if(exA > exB) begin
								{exbB, mtsB} <= {1'b0, exbB, mtsB[9:1]}; //A의 지수가 B의 지수보다 큰 경우 지수 통일 및 가수 자리수 맞추기
								exB <= exB +1;
								add <= 2'b00;
							end
							else if(exA < exB) begin //B의 지수가 A의 지수보다 큰 경우 지수 통일 및 가수 자리수 맞추기
								{exbA, mtsA} <= {1'b0, exbA, mtsA[9:1]};
								exA <= exA +1;
								add <= 2'b00;
							end	
							else begin
								case({sA, sB}) //A, B의 sign bit에 대해서
									2'b00, 2'b11 : begin //sign bit가 00, 11인 경우
										sum[15] <= sA; //sign bit에 0, 1 넣기
										sum[14:10] <= exA; //지수부 그대로
										{ovf, exb, sum[9:0]} <= {{exbA, mtsA} + {exbB, mtsB}}; //mantissa는 overflow bit + 기존 mantissa
										add <= 2'b01;
									end
									2'b01, 2'b10 : begin
										sum[14:10] <= exA;
										{exb, sum[9:0]} <= ({exbA, mtsA} > {exbB, mtsB}) ? ({exbA, mtsA} - {exbB, mtsB}) : ({exbB, mtsB} - {exbA, mtsA});
										//sign bit가 01, 10인 경우, exp, mantissa -
                                        sum[15] <= ({exbA, mtsA} > {exbB, mtsB}) ? sA : sB; //sign bit는 큰거 따라 감
                                        add <= 2'b01;
                                    end
                endcase
                    2'b01 : begin //output normalization
                        if(ovf == 1 && exb == 1) begin	
                            sum[9:0] <= {1'b1, sum[9:1]};
                            sum[14:10] <= sum[14:10] + 1;
                            ovf = 0;
                            add <= 2'b01;
                            state <= s1;
                        end
                        else if(ovf == 0 && exb == 1) begin
                            add <= 2'b10;
                            state <= s2;
                        end
                        else if(ovf == 0 && exb == 0 && ~(sA ^ sB)) begin
                            sum[9:0] <= sum[9:0] >> 1;
                            sum[14:10] <= sum[14:10] + 1;
                            add <= 2'b10;
                            state <= s2;
                        end
                        else if(ovf == 0 && exb == 0 && (sA ^ sB)) begin
							sum[9:0] <= sum[9:0] << 1;
                            sum[14:10] <= sum[14:10] - 1;
                            add <= 2'b10;
                            state <= s2;
                        end
                        else if((sum[9:0] == 0) | (~sum[9:0] == 0)) begin
                            sum <= 0;
                            add <= 2'b10;
                            state <= s2;
                        end
                    end
                    2'b10 : add <= 2'b10;
        endcase
		s2 : begin
			done <= 1; state <= s2;
		end
		
	endcase
endmodule

										
									
//e4 e3 e2 e1 e0 m9 m8 m7 m6 m5 m4 m3 m2 m1 m0 = 0 e4 e3 e2 e1 e0 m9 m8 m7 m6 m5 m4 m3 m2 m1
