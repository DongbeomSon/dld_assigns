`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:40 12/23/2022
// Design Name:   fp16adder
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_fp16adder.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fp16adder;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;
	
	//for verification
	wire [15:0] error;
	reg [15:0] ans;
	reg [15:0] ans_reg;
	assign error = sum - ans_reg;

	// Outputs
	wire [15:0] sum;

	// Instantiate the Unit Under Test (UUT)
	fp16adder uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
	#50	
	A = 16'hdf4b;
	B = 16'h671e;
	ans = 16'h654b;
	#20
	A = 16'hdbdd;
	B = 16'hf69b;
	ans = 16'hf6ab;
	#20
	A = 16'h7390;
	B = 16'h70d8;
	ans = 16'h7634;
	#20
	A = 16'h7744;
	B = 16'hf23f;
	ans = 16'h7424;
	#20
	A = 16'hef8e;
	B = 16'hf5a8;
	ans = 16'hf78c;
	#20
	A = 16'h7296;
	B = 16'hf1f3;
	ans = 16'h6518;
	#20
	A = 16'hf619;
	B = 16'hf260;
	ans = 16'hf8a4;
	#20
	A = 16'hf3c1;
	B = 16'h69fc;
	ans = 16'hf242;
	#20
	A = 16'hf386;
	B = 16'h7653;
	ans = 16'h7120;
	#20
	A = 16'hf0c0;
	B = 16'hf254;
	ans = 16'hf58a;
	#20
	A = 16'hf438;
	B = 16'hf603;
	ans = 16'hf91e;
	#20
	A = 16'h6d56;
	B = 16'h6cd5;
	ans = 16'h7116;
	#20
	A = 16'h744f;
	B = 16'hf076;
	ans = 16'h7028;
	#20
	A = 16'h6c9d;
	B = 16'h7176;
	ans = 16'h73c4;
	#20
	A = 16'hf1e9;
	B = 16'hf1b4;
	ans = 16'hf5ce;
	#20
	A = 16'h7495;
	B = 16'hf51a;
	ans = 16'he828;
	#20
	A = 16'hefd5;
	B = 16'h731a;
	ans = 16'h6e5f;
	#20
	A = 16'hec0b;
	B = 16'hf3f5;
	ans = 16'hf4fd;
	#20
	A = 16'hee95;
	B = 16'h7445;
	ans = 16'h7140;
	#20
	A = 16'hf6f1;
	B = 16'hf6bf;
	ans = 16'hfad8;
	#20
	A = 16'he01d;
	B = 16'hf492;
	ans = 16'hf4b3;
	#20
	A = 16'hee3a;
	B = 16'he846;
	ans = 16'hf02e;
	#20
	A = 16'hf013;
	B = 16'h760c;
	ans = 16'h7402;
	#20
	A = 16'hf44b;
	B = 16'h71ad;
	ans = 16'hedd2;
	#20
	A = 16'hf52f;
	B = 16'hf04c;
	ans = 16'hf755;
	#20
	A = 16'h735e;
	B = 16'hebda;
	ans = 16'h7168;
	#20
	A = 16'h70d4;
	B = 16'h748b;
	ans = 16'h76f5;
	#20
	A = 16'hefcf;
	B = 16'hf0da;
	ans = 16'hf461;
	#20
	A = 16'heb33;
	B = 16'h6c43;
	ans = 16'h614c;
	#20
	A = 16'hf595;
	B = 16'hf657;
	ans = 16'hf9f6;
	#20
	A = 16'h7134;
	B = 16'h64b9;
	ans = 16'h71cb;
	#20
	A = 16'h768a;
	B = 16'h6b3a;
	ans = 16'h7771;
	#20
	A = 16'hf4be;
	B = 16'h70a7;
	ans = 16'hf0d5;
	#20
	A = 16'h757c;
	B = 16'h73eb;
	ans = 16'h78b9;
	#20
	A = 16'h7473;
	B = 16'h7509;
	ans = 16'h78be;
	#20
	A = 16'he833;
	B = 16'h65d0;
	ans = 16'he12c;
	#20
	A = 16'hf5b0;
	B = 16'hf169;
	ans = 16'hf832;
	#20
	A = 16'h75b8;
	B = 16'h71d9;
	ans = 16'h7852;
	#20
	A = 16'hf2dc;
	B = 16'h7587;
	ans = 16'h7032;
	#20
	A = 16'h7548;
	B = 16'hf1ad;
	ans = 16'h70e3;
	#20
	A = 16'h7607;
	B = 16'hf59b;
	ans = 16'h66c0;
	#20
	A = 16'hdbc8;
	B = 16'h7406;
	ans = 16'h73ed;
	#20
	A = 16'hf4c9;
	B = 16'hf0b8;
	ans = 16'hf725;
	#20
	A = 16'h7434;
	B = 16'hed88;
	ans = 16'h71a4;
	#20
	A = 16'hf58f;
	B = 16'heeda;
	ans = 16'hf746;
	#20
	A = 16'hf4ce;
	B = 16'heb9f;
	ans = 16'hf5c2;
	#20
	A = 16'hecf2;
	B = 16'h7541;
	ans = 16'h7404;
	#20
	A = 16'hf12c;
	B = 16'heeeb;
	ans = 16'hf451;
	#20
	A = 16'h7189;
	B = 16'heed3;
	ans = 16'h6c3f;
	#20
	A = 16'hf4fb;
	B = 16'hf5a0;
	ans = 16'hf94e;
	#20
	A = 16'hf4fd;
	B = 16'h6d2b;
	ans = 16'hf364;
	#20
	A = 16'h76aa;
	B = 16'hf4d0;
	ans = 16'h6f68;
	#20
	A = 16'hf23f;
	B = 16'hf0e6;
	ans = 16'hf592;
	#20
	A = 16'he1f3;
	B = 16'hf48b;
	ans = 16'hf4bb;
	#20
	A = 16'hf2bd;
	B = 16'hf700;
	ans = 16'hf92f;
	#20
	A = 16'h7541;
	B = 16'hecee;
	ans = 16'h7406;
	#20
	A = 16'h72df;
	B = 16'h7694;
	ans = 16'h7902;
	#20
	A = 16'h76f8;
	B = 16'hf5cf;
	ans = 16'h6ca4;
	#20
	A = 16'hf576;
	B = 16'hf036;
	ans = 16'hf791;
	#20
	A = 16'h6146;
	B = 16'hf652;
	ans = 16'hf628;
	#20
	A = 16'h672d;
	B = 16'h73c7;
	ans = 16'h7456;
	#20
	A = 16'h7488;
	B = 16'hf0dd;
	ans = 16'h7033;
	#20
	A = 16'h7455;
	B = 16'h72e7;
	ans = 16'h77c8;
	#20
	A = 16'h7427;
	B = 16'hf27d;
	ans = 16'h6b44;
	#20
	A = 16'hf070;
	B = 16'h74e3;
	ans = 16'h7156;
	#20
	A = 16'h718d;
	B = 16'hf621;
	ans = 16'hf2b5;
	#20
	A = 16'h73d4;
	B = 16'hf6d3;
	ans = 16'hf1d2;
	#20
	A = 16'hec38;
	B = 16'h6d23;
	ans = 16'h6358;
	#20
	A = 16'h7680;
	B = 16'h6803;
	ans = 16'h7700;
	#20
	A = 16'h714d;
	B = 16'h729f;
	ans = 16'h75f6;
	#20
	A = 16'hf54d;
	B = 16'h75ce;
	ans = 16'h6808;
	#20
	A = 16'hed4a;
	B = 16'h7021;
	ans = 16'h69f0;
	#20
	A = 16'hf208;
	B = 16'hec35;
	ans = 16'hf411;
	#20
	A = 16'h7486;
	B = 16'h6bfc;
	ans = 16'h7586;
	#20
	A = 16'hf2fd;
	B = 16'hf5e3;
	ans = 16'hf8b1;
	#20
	A = 16'h7730;
	B = 16'hf0f2;
	ans = 16'h74b7;
	#20
	A = 16'he891;
	B = 16'h726b;
	ans = 16'h7147;
	#20
	A = 16'h6b2f;
	B = 16'hf3c5;
	ans = 16'hf1f9;
	#20
	A = 16'hed61;
	B = 16'hf1e3;
	ans = 16'hf44a;
	#20
	A = 16'hee31;
	B = 16'h6f87;
	ans = 16'h6558;
	#20
	A = 16'h7523;
	B = 16'hf4eb;
	ans = 16'h6300;
	#20
	A = 16'h704b;
	B = 16'h7235;
	ans = 16'h7540;
	#20
	A = 16'hf476;
	B = 16'he5ca;
	ans = 16'hf4d3;
	#20
	A = 16'h761b;
	B = 16'hf704;
	ans = 16'heb48;
	#20
	A = 16'hf51a;
	B = 16'h7396;
	ans = 16'hed3c;
	#20
	A = 16'h72fc;
	B = 16'h6d06;
	ans = 16'h74c0;
	#20
	A = 16'hedc9;
	B = 16'hf2d4;
	ans = 16'hf4dc;
	#20
	A = 16'h76bc;
	B = 16'hf17c;
	ans = 16'h73fc;
	#20
	A = 16'heeea;
	B = 16'hf4d6;
	ans = 16'hf690;
	#20
	A = 16'hf544;
	B = 16'h765e;
	ans = 16'h6c68;
	#20
	A = 16'h7146;
	B = 16'hf48f;
	ans = 16'hefb0;
	#20
	A = 16'hf601;
	B = 16'h7232;
	ans = 16'hf1d0;
	#20
	A = 16'he41c;
	B = 16'h772a;
	ans = 16'h76e8;
	#20
	A = 16'h745d;
	B = 16'h6c5a;
	ans = 16'h7574;
	#20
	A = 16'hf44c;
	B = 16'hf0cc;
	ans = 16'hf6b2;
	#20
	A = 16'hf35c;
	B = 16'h72fd;
	ans = 16'he1f0;
	#20
	A = 16'hf724;
	B = 16'hf62f;
	ans = 16'hfaaa;
	#20
	A = 16'h7666;
	B = 16'hf178;
	ans = 16'h7354;
	#20
	A = 16'hf48e;
	B = 16'h7386;
	ans = 16'hea58;
	#20
	A = 16'h751a;
	B = 16'hf4ae;
	ans = 16'h66c0;
	#20
	A = 16'hea49;
	B = 16'h762d;
	ans = 16'h7564;
	#20
	A = 16'hf6ca;
	B = 16'hf44d;
	ans = 16'hf98c;
	#20
	A = 16'h7400;
	B = 16'h68a0;
	ans = 16'h7494;
	#20
	A = 16'heb24;
	B = 16'h7306;
	ans = 16'h713d;
	#20
	A = 16'h7402;
	B = 16'hf158;
	ans = 16'h6d58;
	#20
	A = 16'hed4e;
	B = 16'hf588;
	ans = 16'hf6dc;
	#20
	A = 16'h72c3;
	B = 16'hf5ce;
	ans = 16'hf0d9;
	#20
	A = 16'h7475;
	B = 16'h761e;
	ans = 16'h794a;
	#20
	A = 16'hf468;
	B = 16'hf27a;
	ans = 16'hf7a5;
	#20
	A = 16'hf51c;
	B = 16'hf5f7;
	ans = 16'hf98a;
	#20
	A = 16'h76ba;
	B = 16'h762b;
	ans = 16'h7a72;
	#20
	A = 16'hf482;
	B = 16'hf752;
	ans = 16'hf9ea;
	#20
	A = 16'hf058;
	B = 16'hf65f;
	ans = 16'hf846;
	#20
	A = 16'h752a;
	B = 16'h6d1f;
	ans = 16'h7672;
	#20
	A = 16'h76ff;
	B = 16'h68b2;
	ans = 16'h7795;
	#20
	A = 16'h7642;
	B = 16'h6fac;
	ans = 16'h7816;
	#20
	A = 16'he819;
	B = 16'hf612;
	ans = 16'hf695;
	#20
	A = 16'h6ffe;
	B = 16'hed64;
	ans = 16'h6934;
	#20
	A = 16'hf417;
	B = 16'h748e;
	ans = 16'h6770;
	#20
	A = 16'hf090;
	B = 16'he1d6;
	ans = 16'hf0ed;
	#20
	A = 16'hebb5;
	B = 16'he3b1;
	ans = 16'hecd1;
	#20
	A = 16'hef98;
	B = 16'h6852;
	ans = 16'hed6f;
	#20
	A = 16'heec6;
	B = 16'hea30;
	ans = 16'hf0ef;
	#20
	A = 16'hf602;
	B = 16'h76ab;
	ans = 16'h6948;
	#20
	A = 16'h766d;
	B = 16'hf04d;
	ans = 16'h7446;
	#20
	A = 16'h6a68;
	B = 16'h7635;
	ans = 16'h7702;
	#20
	A = 16'hed94;
	B = 16'hf069;
	ans = 16'hf333;
	#20
	A = 16'hf42b;
	B = 16'hf3f2;
	ans = 16'hf812;
	#20
	A = 16'h685a;
	B = 16'h7441;
	ans = 16'h74cc;
	#20
	A = 16'h740f;
	B = 16'heda6;
	ans = 16'h714b;
	#20
	A = 16'h7010;
	B = 16'hf592;
	ans = 16'hf314;
	#20
	A = 16'hf51d;
	B = 16'hef2e;
	ans = 16'hf6e8;
	#20
	A = 16'h740d;
	B = 16'h73a0;
	ans = 16'h77dd;
	#20
	A = 16'h760c;
	B = 16'hf5f0;
	ans = 16'h5f00;
	#20
	A = 16'h754b;
	B = 16'h713a;
	ans = 16'h77e8;
	#20
	A = 16'h741f;
	B = 16'hf17e;
	ans = 16'h6d80;
	#20
	A = 16'hed11;
	B = 16'hea68;
	ans = 16'hf022;
	#20
	A = 16'h70e7;
	B = 16'h7723;
	ans = 16'h78cb;
	#20
	A = 16'h6cd0;
	B = 16'hf4ce;
	ans = 16'hf334;
	#20
	A = 16'h74a5;
	B = 16'hf6dc;
	ans = 16'hf06e;
	#20
	A = 16'h75ea;
	B = 16'hf081;
	ans = 16'h7353;
	#20
	A = 16'h767c;
	B = 16'hda0c;
	ans = 16'h7670;
	#20
	A = 16'hf572;
	B = 16'h70e6;
	ans = 16'hf1fe;
	#20
	A = 16'h737a;
	B = 16'h62a4;
	ans = 16'h73e4;
	#20
	A = 16'h7081;
	B = 16'hed63;
	ans = 16'h6b3e;
	#20
	A = 16'hf52c;
	B = 16'hf696;
	ans = 16'hf9e1;
	#20
	A = 16'hf530;
	B = 16'hf4b6;
	ans = 16'hf8f3;
	#20
	A = 16'hf6de;
	B = 16'hf68f;
	ans = 16'hfab6;
	#20
	A = 16'h72c4;
	B = 16'hf60e;
	ans = 16'hf158;
	#20
	A = 16'heb7e;
	B = 16'hf594;
	ans = 16'hf684;
	#20
	A = 16'h7397;
	B = 16'hf6a6;
	ans = 16'hf1b5;
	#20
	A = 16'h74b1;
	B = 16'hf114;
	ans = 16'h704e;
	#20
	A = 16'hf73d;
	B = 16'h55f1;
	ans = 16'hf737;
	#20
	A = 16'hf135;
	B = 16'hf4cd;
	ans = 16'hf768;
	#20
	A = 16'hf44a;
	B = 16'hf3d5;
	ans = 16'hf81a;
	#20
	A = 16'hf61b;
	B = 16'h6936;
	ans = 16'hf574;
	#20
	A = 16'h701a;
	B = 16'h770d;
	ans = 16'h788d;
	#20
	A = 16'heef3;
	B = 16'h6ed9;
	ans = 16'hd680;
	#20
	A = 16'h7748;
	B = 16'h7365;
	ans = 16'h797d;
	#20
	A = 16'heb16;
	B = 16'hf621;
	ans = 16'hf704;
	#20
	A = 16'hf649;
	B = 16'h7566;
	ans = 16'heb18;
	#20
	A = 16'h7457;
	B = 16'h75bc;
	ans = 16'h790a;
	#20
	A = 16'h72ad;
	B = 16'hf67b;
	ans = 16'hf249;
	#20
	A = 16'hee5b;
	B = 16'h7506;
	ans = 16'h72de;
	#20
	A = 16'h592c;
	B = 16'h76ba;
	ans = 16'h76c4;
	#20
	A = 16'hf22b;
	B = 16'he5e5;
	ans = 16'hf2e8;
	#20
	A = 16'hf53c;
	B = 16'h727a;
	ans = 16'heffc;
	#20
	A = 16'h74c9;
	B = 16'h70d9;
	ans = 16'h7736;
	#20
	A = 16'hf4d4;
	B = 16'h6132;
	ans = 16'hf4aa;
	#20
	A = 16'hf684;
	B = 16'h757d;
	ans = 16'hec1c;
	#20
	A = 16'heec2;
	B = 16'hefd9;
	ans = 16'hf34e;
	#20
	A = 16'h7463;
	B = 16'hee13;
	ans = 16'h71bc;
	#20
	A = 16'hf3ff;
	B = 16'hf09e;
	ans = 16'hf64e;
	#20
	A = 16'h6cb2;
	B = 16'h72a9;
	ans = 16'h7481;
	#20
	A = 16'hf324;
	B = 16'hf331;
	ans = 16'hf72a;
	#20
	A = 16'h5f65;
	B = 16'hed0d;
	ans = 16'hec97;
	#20
	A = 16'he8af;
	B = 16'heec5;
	ans = 16'hf08e;
	#20
	A = 16'he314;
	B = 16'h6c19;
	ans = 16'h6a6d;
	#20
	A = 16'h5f73;
	B = 16'hf482;
	ans = 16'hf464;
	#20
	A = 16'h7419;
	B = 16'hf6fd;
	ans = 16'hf1c8;
	#20
	A = 16'he160;
	B = 16'hf67b;
	ans = 16'hf6a6;
	#20
	A = 16'h7271;
	B = 16'h7040;
	ans = 16'h7558;
	#20
	A = 16'hf67f;
	B = 16'h7683;
	ans = 16'h5400;
	#20
	A = 16'hf51d;
	B = 16'hf168;
	ans = 16'hf7d1;
	#20
	A = 16'hec0c;
	B = 16'hd90c;
	ans = 16'hec34;
	#20
	A = 16'h6ddb;
	B = 16'hf50f;
	ans = 16'hf330;
	#20
	A = 16'h70f6;
	B = 16'h6f79;
	ans = 16'h7459;
	#20
	A = 16'hf5bb;
	B = 16'hf3d7;
	ans = 16'hf8d3;
	#20
	A = 16'hedce;
	B = 16'h69bb;
	ans = 16'he9e1;
	#20
	A = 16'h6e9b;
	B = 16'hefd9;
	ans = 16'he4f8;
	#20
	A = 16'hf14a;
	B = 16'h76e5;
	ans = 16'h7440;
	#20
	A = 16'hf65e;
	B = 16'hf4df;
	ans = 16'hf99e;
	#20
	A = 16'h7561;
	B = 16'h73c5;
	ans = 16'h78a2;
	#20
	A = 16'h762d;
	B = 16'h69ac;
	ans = 16'h76e2;
	#20
	A = 16'h74a7;
	B = 16'h76ba;
	ans = 16'h79b0;
	#20
	A = 16'hf092;
	B = 16'h7459;
	ans = 16'h7020;
	#20
	A = 16'hf515;
	B = 16'hf3de;
	ans = 16'hf882;
	#20
	A = 16'hd262;
	B = 16'hf0b8;
	ans = 16'hf0be;
	#20
	A = 16'hf386;
	B = 16'h68c2;
	ans = 16'hf256;
	#20
	A = 16'h75b7;
	B = 16'h7308;
	ans = 16'h789e;
	#20
	A = 16'h734b;
	B = 16'h7600;
	ans = 16'h78d3;
	#20
	A = 16'hf4c1;
	B = 16'h7196;
	ans = 16'hefd8;
	#20
	A = 16'h762e;
	B = 16'hf46d;
	ans = 16'h6f04;
	#20
	A = 16'hf0b3;
	B = 16'h70f5;
	ans = 16'h6020;
	#20
	A = 16'h7566;
	B = 16'h7680;
	ans = 16'h79f3;
	#20
	A = 16'h75c4;
	B = 16'hf328;
	ans = 16'h7060;
	#20
	A = 16'h762a;
	B = 16'hecf0;
	ans = 16'h74ee;
	#20
	A = 16'hf471;
	B = 16'hf62d;
	ans = 16'hf94f;
	#20
	A = 16'he926;
	B = 16'h6d84;
	ans = 16'h69e2;
	#20
	A = 16'hf5e4;
	B = 16'h76a0;
	ans = 16'h69e0;
	#20
	A = 16'hf70d;
	B = 16'h7402;
	ans = 16'hf216;
	#20
	A = 16'h7687;
	B = 16'hf341;
	ans = 16'h71cd;
	#20
	A = 16'hf19e;
	B = 16'hf564;
	ans = 16'hf81a;
	#20
	A = 16'h7106;
	B = 16'head5;
	ans = 16'h6ea2;
	#20
	A = 16'hf50e;
	B = 16'hec8b;
	ans = 16'hf631;
	#20
	A = 16'hf6a4;
	B = 16'hf42f;
	ans = 16'hf96a;
	#20
	A = 16'h75eb;
	B = 16'h770c;
	ans = 16'h7a7c;
	#20
	A = 16'hf24e;
	B = 16'hf0b3;
	ans = 16'hf580;
	#20
	A = 16'hf284;
	B = 16'h7074;
	ans = 16'hec20;
	#20
	A = 16'hf4d7;
	B = 16'hedc7;
	ans = 16'hf649;
	#20
	A = 16'h7389;
	B = 16'h7604;
	ans = 16'h78e4;
	#20
	A = 16'hf659;
	B = 16'hf6ce;
	ans = 16'hfa94;
	#20
	A = 16'hf25f;
	B = 16'h7524;
	ans = 16'h6fd2;
	#20
	A = 16'h6746;
	B = 16'h7415;
	ans = 16'h7489;
	#20
	A = 16'hea61;
	B = 16'hf5a8;
	ans = 16'hf674;
	#20
	A = 16'he981;
	B = 16'h7516;
	ans = 16'h7466;
	#20
	A = 16'hf31f;
	B = 16'hf3cf;
	ans = 16'hf777;
	#20
	A = 16'hf39a;
	B = 16'hf5a8;
	ans = 16'hf8ba;
	#20
	A = 16'h73cd;
	B = 16'hf5cb;
	ans = 16'hef92;
	#20
	A = 16'h725b;
	B = 16'h6c7b;
	ans = 16'h744c;
	#20
	A = 16'h6ef4;
	B = 16'hf3ca;
	ans = 16'hf050;
	#20
	A = 16'heb3d;
	B = 16'hf719;
	ans = 16'hf800;
	#20
	A = 16'h7599;
	B = 16'h74a7;
	ans = 16'h7920;
	#20
	A = 16'h768b;
	B = 16'hf38e;
	ans = 16'h7188;
	#20
	A = 16'hf1ce;
	B = 16'hf548;
	ans = 16'hf818;
	#20
	A = 16'h764c;
	B = 16'h753b;
	ans = 16'h79c4;
	#20
	A = 16'hf17a;
	B = 16'h70a8;
	ans = 16'he690;
	#20
	A = 16'hf687;
	B = 16'h72d4;
	ans = 16'hf23a;
	#20
	A = 16'hed8e;
	B = 16'h7009;
	ans = 16'h6908;
	#20
	A = 16'h703c;
	B = 16'h76f9;
	ans = 16'h788c;
	#20
	A = 16'hf4a1;
	B = 16'h75d4;
	ans = 16'h6ccc;
	#20
	A = 16'hf502;
	B = 16'hf497;
	ans = 16'hf8cc;
	#20
	A = 16'h773b;
	B = 16'hf508;
	ans = 16'h7066;
	#20
	A = 16'hf34c;
	B = 16'hf40c;
	ans = 16'hf7b2;
	#20
	A = 16'hf4b7;
	B = 16'h7187;
	ans = 16'hefce;
	#20
	A = 16'h73de;
	B = 16'h6b2a;
	ans = 16'h74d4;
	#20
	A = 16'h7668;
	B = 16'h724a;
	ans = 16'h78c6;
	#20
	A = 16'h6f7e;
	B = 16'h7643;
	ans = 16'h7811;
	#20
	A = 16'h70e0;
	B = 16'h7647;
	ans = 16'h785c;
	#20
	A = 16'he4b9;
	B = 16'h7741;
	ans = 16'h76f5;
	#20
	A = 16'h74aa;
	B = 16'h68c2;
	ans = 16'h7542;
	#20
	A = 16'hf2a7;
	B = 16'h7520;
	ans = 16'h6f32;
	#20
	A = 16'hef7b;
	B = 16'h72e5;
	ans = 16'h6e4f;
	#20
	A = 16'h648d;
	B = 16'hf5a7;
	ans = 16'hf55e;
	#20
	A = 16'hf73b;
	B = 16'hf14f;
	ans = 16'hf8f1;
	#20
	A = 16'hed57;
	B = 16'h7117;
	ans = 16'h6cd7;
	#20
	A = 16'hf6a2;
	B = 16'h6a47;
	ans = 16'hf5d9;
	#20
	A = 16'h754a;
	B = 16'h72f2;
	ans = 16'h7862;
	#20
	A = 16'hf0bd;
	B = 16'h71be;
	ans = 16'h6804;
	#20
	A = 16'h7643;
	B = 16'hf69a;
	ans = 16'he570;
	#20
	A = 16'hf33e;
	B = 16'hf2c8;
	ans = 16'hf703;
	#20
	A = 16'hf380;
	B = 16'hf406;
	ans = 16'hf7c6;
	#20
	A = 16'hf37c;
	B = 16'h72d2;
	ans = 16'he550;
	#20
	A = 16'h758b;
	B = 16'hf188;
	ans = 16'h718e;
	#20
	A = 16'hf6ef;
	B = 16'hf391;
	ans = 16'hf95c;
	#20
	A = 16'hf43e;
	B = 16'h72e4;
	ans = 16'hea60;
	#20
	A = 16'hf43e;
	B = 16'hf3f3;
	ans = 16'hf81c;
	#20
	A = 16'h76ed;
	B = 16'h753e;
	ans = 16'h7a16;
	#20
	A = 16'hf558;
	B = 16'hf62a;
	ans = 16'hf9c1;
	#20
	A = 16'h718c;
	B = 16'hf1f8;
	ans = 16'he2c0;
	#20
	A = 16'heffd;
	B = 16'h773e;
	ans = 16'h753f;
	#20
	A = 16'h7619;
	B = 16'hf0c8;
	ans = 16'h736a;
	#20
	A = 16'he885;
	B = 16'h7527;
	ans = 16'h7496;
	#20
	A = 16'hf506;
	B = 16'h7579;
	ans = 16'h6730;
	#20
	A = 16'hf53d;
	B = 16'h75cc;
	ans = 16'h6878;
	#20
	A = 16'h75d6;
	B = 16'h7443;
	ans = 16'h790c;
	#20
	A = 16'hf624;
	B = 16'h7495;
	ans = 16'hee3c;
	#20
	A = 16'hf1df;
	B = 16'h6f33;
	ans = 16'hec8b;
	#20
	A = 16'h7482;
	B = 16'hf569;
	ans = 16'heb38;
	#20
	A = 16'hf0cd;
	B = 16'hf65d;
	ans = 16'hf862;
	#20
	A = 16'h6e1c;
	B = 16'he4c3;
	ans = 16'h6ceb;
	#20
	A = 16'heaa9;
	B = 16'hef8f;
	ans = 16'hf172;
	#20
	A = 16'hf580;
	B = 16'hf65c;
	ans = 16'hf9ee;
	#20
	A = 16'hf4d9;
	B = 16'hf6c8;
	ans = 16'hf9d0;
	#20
	A = 16'hf70c;
	B = 16'h708a;
	ans = 16'hf4c7;
	#20
	A = 16'h768b;
	B = 16'hee35;
	ans = 16'h74fe;
	#20
	A = 16'h75ed;
	B = 16'hf589;
	ans = 16'h6640;
	#20
	A = 16'hf4a1;
	B = 16'hf0c6;
	ans = 16'hf704;
	#20
	A = 16'h75e7;
	B = 16'h75a0;
	ans = 16'h79c4;
	#20
	A = 16'h7288;
	B = 16'h7093;
	ans = 16'h758e;
	#20
	A = 16'h6f24;
	B = 16'h70aa;
	ans = 16'h741e;
	#20
	A = 16'h7662;
	B = 16'h76c8;
	ans = 16'h7a95;
	#20
	A = 16'h7717;
	B = 16'h7732;
	ans = 16'h7b24;
	#20
	A = 16'h773e;
	B = 16'hf21c;
	ans = 16'h7430;
	#20
	A = 16'hf693;
	B = 16'h7468;
	ans = 16'hf056;
	#20
	A = 16'hf617;
	B = 16'h6d89;
	ans = 16'hf4b5;
	#20
	A = 16'hf5ee;
	B = 16'he21a;
	ans = 16'hf61f;
	#20
	A = 16'hf0e5;
	B = 16'h6a7a;
	ans = 16'hee8d;
	#20
	A = 16'h75f8;
	B = 16'h6c9c;
	ans = 16'h771f;
	#20
	A = 16'hf66a;
	B = 16'hed90;
	ans = 16'hf7ce;
	#20
	A = 16'hee8c;
	B = 16'hf55b;
	ans = 16'hf6fe;
	#20
	A = 16'hf2a2;
	B = 16'hf09e;
	ans = 16'hf5a0;
	#20
	A = 16'h7320;
	B = 16'hf4b8;
	ans = 16'heca0;
	#20
	A = 16'h7600;
	B = 16'hf22d;
	ans = 16'h71d3;
	#20
	A = 16'h76b7;
	B = 16'hf468;
	ans = 16'h709e;
	#20
	A = 16'h705b;
	B = 16'hf5d6;
	ans = 16'hf351;
	#20
	A = 16'hf43c;
	B = 16'h75cf;
	ans = 16'h6e4c;
	#20
	A = 16'h7540;
	B = 16'h721f;
	ans = 16'h7828;
	#20
	A = 16'hf0be;
	B = 16'hf404;
	ans = 16'hf663;
	#20
	A = 16'h7600;
	B = 16'hf4ba;
	ans = 16'h6d18;
	#20
	A = 16'h7409;
	B = 16'h7048;
	ans = 16'h762d;
	#20
	A = 16'h72ec;
	B = 16'h7507;
	ans = 16'h783e;
	#20
	A = 16'h739f;
	B = 16'h7301;
	ans = 16'h7750;
	#20
	A = 16'hf5a3;
	B = 16'hf689;
	ans = 16'hfa16;
	#20
	A = 16'hf367;
	B = 16'hd981;
	ans = 16'hf37d;
	#20
	A = 16'h735f;
	B = 16'h7145;
	ans = 16'h7652;
	#20
	A = 16'h7576;
	B = 16'h7219;
	ans = 16'h7841;
	#20
	A = 16'hf5af;
	B = 16'hf642;
	ans = 16'hf9f8;
	#20
	A = 16'hf2d1;
	B = 16'hf09c;
	ans = 16'hf5b6;
	#20
	A = 16'hf516;
	B = 16'h7489;
	ans = 16'he868;
	#20
	A = 16'hebe9;
	B = 16'h766c;
	ans = 16'h756f;
	#20
	A = 16'hee1a;
	B = 16'h7073;
	ans = 16'h6998;
	#20
	A = 16'hefa4;
	B = 16'h6cdc;
	ans = 16'he990;
	#20
	A = 16'hf2ad;
	B = 16'hec5d;
	ans = 16'hf46e;
	#20
	A = 16'h772b;
	B = 16'h7076;
	ans = 16'h78b3;
	#20
	A = 16'hf1ae;
	B = 16'h7084;
	ans = 16'he8a8;
	#20
	A = 16'h6f9c;
	B = 16'hf296;
	ans = 16'hed90;
	#20
	A = 16'h7704;
	B = 16'hf6b8;
	ans = 16'h64c0;
	#20
	A = 16'h7087;
	B = 16'hf4b0;
	ans = 16'hf0d9;
	#20
	A = 16'hf6fd;
	B = 16'h762a;
	ans = 16'hea98;
	#20
	A = 16'he1dd;
	B = 16'hdf28;
	ans = 16'he4b8;
	#20
	A = 16'h6fea;
	B = 16'hf1ea;
	ans = 16'hebd4;
	#20
	A = 16'hf64c;
	B = 16'h6637;
	ans = 16'hf5e9;
	#20
	A = 16'h740a;
	B = 16'h6f66;
	ans = 16'h75e4;
	#20
	A = 16'hf51d;
	B = 16'h754f;
	ans = 16'h6240;
	#20
	A = 16'hf461;
	B = 16'hf5a1;
	ans = 16'hf901;
	#20
	A = 16'hf1f0;
	B = 16'hf50a;
	ans = 16'hf801;
	#20
	A = 16'hf5ff;
	B = 16'h7702;
	ans = 16'h6c0c;
	#20
	A = 16'hf444;
	B = 16'hf2e6;
	ans = 16'hf7b7;
	#20
	A = 16'h6e02;
	B = 16'h6c2d;
	ans = 16'h7118;
	#20
	A = 16'h763c;
	B = 16'h747a;
	ans = 16'h795b;
	#20
	A = 16'hf5a3;
	B = 16'hecc4;
	ans = 16'hf6d4;
	#20
	A = 16'hf261;
	B = 16'h735d;
	ans = 16'h67e0;
	#20
	A = 16'h6e72;
	B = 16'he59c;
	ans = 16'h6d0b;
	#20
	A = 16'hf41b;
	B = 16'hf427;
	ans = 16'hf821;
	#20
	A = 16'h6ed8;
	B = 16'hf38f;
	ans = 16'hf023;
	#20
	A = 16'h762e;
	B = 16'h71d6;
	ans = 16'h788c;
	#20
	A = 16'hed09;
	B = 16'hecc0;
	ans = 16'hf0e4;
	#20
	A = 16'hf226;
	B = 16'h6ad9;
	ans = 16'hf070;
	#20
	A = 16'h6bca;
	B = 16'h72e9;
	ans = 16'h746e;
	#20
	A = 16'h7578;
	B = 16'h7666;
	ans = 16'h79ef;
	#20
	A = 16'h7548;
	B = 16'hebfa;
	ans = 16'h7449;
	#20
	A = 16'hf72e;
	B = 16'hee4e;
	ans = 16'hf861;
	#20
	A = 16'h75de;
	B = 16'hf427;
	ans = 16'h6edc;
	#20
	A = 16'h7442;
	B = 16'hf399;
	ans = 16'h6758;
	#20
	A = 16'hf73f;
	B = 16'h68a2;
	ans = 16'hf6ab;
	#20
	A = 16'hf5b7;
	B = 16'h7633;
	ans = 16'h67c0;
	#20
	A = 16'hf5b7;
	B = 16'hf577;
	ans = 16'hf997;
	#20
	A = 16'he567;
	B = 16'hf5f5;
	ans = 16'hf64b;
	#20
	A = 16'h7722;
	B = 16'h76c9;
	ans = 16'h7af6;
	#20
	A = 16'hf203;
	B = 16'he2bd;
	ans = 16'hf26f;
	#20
	A = 16'hf617;
	B = 16'h740c;
	ans = 16'hf016;
	#20
	A = 16'hf450;
	B = 16'hefb9;
	ans = 16'hf63e;
	#20
	A = 16'h7017;
	B = 16'h6b08;
	ans = 16'h71d9;
	#20
	A = 16'hf223;
	B = 16'h7096;
	ans = 16'hea34;
	#20
	A = 16'hf47d;
	B = 16'hf1e9;
	ans = 16'hf772;
	#20
	A = 16'h7633;
	B = 16'hf701;
	ans = 16'hea70;
	#20
	A = 16'h72ea;
	B = 16'h7191;
	ans = 16'h763e;
	#20
	A = 16'hf47e;
	B = 16'h73bb;
	ans = 16'he904;
	#20
	A = 16'hf6aa;
	B = 16'h767e;
	ans = 16'he180;
	#20
	A = 16'h74bf;
	B = 16'hee9e;
	ans = 16'h722f;
	#20
	A = 16'hf284;
	B = 16'hf64f;
	ans = 16'hf8c8;
	#20
	A = 16'hf40e;
	B = 16'hf087;
	ans = 16'hf652;
	#20
	A = 16'hf3f5;
	B = 16'h7421;
	ans = 16'h60d0;
	#20
	A = 16'h6973;
	B = 16'h7656;
	ans = 16'h7704;
	#20
	A = 16'h7515;
	B = 16'h73f1;
	ans = 16'h7887;
	#20
	A = 16'h67c6;
	B = 16'h6d5f;
	ans = 16'h6f50;
	#20
	A = 16'hf120;
	B = 16'hed32;
	ans = 16'hf3b9;
	#20
	A = 16'h6d0a;
	B = 16'h73c7;
	ans = 16'h7526;
	#20
	A = 16'h68eb;
	B = 16'h741e;
	ans = 16'h74bb;
	#20
	A = 16'h7421;
	B = 16'heccb;
	ans = 16'h71dc;
	#20
	A = 16'hf00d;
	B = 16'h6429;
	ans = 16'hef10;
	#20
	A = 16'hf530;
	B = 16'hf41b;
	ans = 16'hf8a6;
	#20
	A = 16'h6662;
	B = 16'hede3;
	ans = 16'hec4a;
	#20
	A = 16'h7000;
	B = 16'hf45e;
	ans = 16'hf0bc;
	#20
	A = 16'hee27;
	B = 16'h6d27;
	ans = 16'he400;
	#20
	A = 16'h73b9;
	B = 16'hf4e9;
	ans = 16'hec32;
	#20
	A = 16'hf567;
	B = 16'h7431;
	ans = 16'hecd8;
	#20
	A = 16'hf74a;
	B = 16'h6fa2;
	ans = 16'hf562;
	#20
	A = 16'hf4e6;
	B = 16'h7726;
	ans = 16'h7080;
	#20
	A = 16'h7369;
	B = 16'h719e;
	ans = 16'h7684;
	#20
	A = 16'h76ac;
	B = 16'h6b8d;
	ans = 16'h779e;
	#20
	A = 16'hf523;
	B = 16'h6f3f;
	ans = 16'hf2a6;
	#20
	A = 16'hf444;
	B = 16'h7477;
	ans = 16'h6260;
	#20
	A = 16'hf309;
	B = 16'hec18;
	ans = 16'hf48a;
	#20
	A = 16'hec21;
	B = 16'hf711;
	ans = 16'hf80d;
	#20
	A = 16'h7704;
	B = 16'he39a;
	ans = 16'h76c7;
	#20
	A = 16'hf5c3;
	B = 16'hf458;
	ans = 16'hf90e;
	#20
	A = 16'hf22e;
	B = 16'hf4e5;
	ans = 16'hf7fc;
	#20
	A = 16'hf477;
	B = 16'h74d6;
	ans = 16'h65f0;
	#20
	A = 16'he425;
	B = 16'h744c;
	ans = 16'h740a;
	#20
	A = 16'h7722;
	B = 16'hf5c4;
	ans = 16'h6d78;
	#20
	A = 16'h751c;
	B = 16'he8b9;
	ans = 16'h7485;
	#20
	A = 16'h7254;
	B = 16'h7540;
	ans = 16'h7835;
	#20
	A = 16'h7586;
	B = 16'hf516;
	ans = 16'h6700;
	#20
	A = 16'hf5f3;
	B = 16'headc;
	ans = 16'hf6ce;
	#20
	A = 16'h70fa;
	B = 16'h6897;
	ans = 16'h7220;
	#20
	A = 16'h697f;
	B = 16'hf0ad;
	ans = 16'hee9a;
	#20
	A = 16'heb0f;
	B = 16'he6e4;
	ans = 16'hed40;
	#20
	A = 16'hf3c6;
	B = 16'h6fe5;
	ans = 16'hefa7;
	#20
	A = 16'hf748;
	B = 16'h667e;
	ans = 16'hf6e0;
	#20
	A = 16'h7108;
	B = 16'h7416;
	ans = 16'h769a;
	#20
	A = 16'h6414;
	B = 16'hf528;
	ans = 16'hf4e7;
	#20
	A = 16'hea63;
	B = 16'hea1a;
	ans = 16'hee3e;
	#20
	A = 16'hf5c5;
	B = 16'hf4ed;
	ans = 16'hf959;
	#20
	A = 16'h6c1c;
	B = 16'hf57d;
	ans = 16'hf476;
	#20
	A = 16'hf4a9;
	B = 16'hf537;
	ans = 16'hf8f0;
	#20
	A = 16'hdc60;
	B = 16'hf6e9;
	ans = 16'hf6fa;
	#20
	A = 16'h7502;
	B = 16'hf28f;
	ans = 16'h6eea;
	#20
	A = 16'h7650;
	B = 16'hf6ef;
	ans = 16'he8f8;
	#20
	A = 16'hed1e;
	B = 16'he4c6;
	ans = 16'hee50;
	#20
	A = 16'hebb4;
	B = 16'h7595;
	ans = 16'h749e;
	#20
	A = 16'he951;
	B = 16'hea13;
	ans = 16'hedb2;
	#20
	A = 16'h7539;
	B = 16'h741f;
	ans = 16'h78ac;
	#20
	A = 16'h72fb;
	B = 16'h6b41;
	ans = 16'h7466;
	#20
	A = 16'h731b;
	B = 16'h7410;
	ans = 16'h779e;
	#20
	A = 16'h67bc;
	B = 16'hf2a9;
	ans = 16'hf1b2;
	#20
	A = 16'h6842;
	B = 16'h7684;
	ans = 16'h770c;
	#20
	A = 16'hf594;
	B = 16'hf410;
	ans = 16'hf8d2;
	#20
	A = 16'hefb5;
	B = 16'hf470;
	ans = 16'hf65d;
	#20
	A = 16'h705e;
	B = 16'hf4ed;
	ans = 16'hf17c;
	#20
	A = 16'hf67a;
	B = 16'h75f0;
	ans = 16'he850;
	#20
	A = 16'hf443;
	B = 16'hf324;
	ans = 16'hf7d5;
	#20
	A = 16'hf748;
	B = 16'he910;
	ans = 16'hf7ea;
	#20
	A = 16'hf487;
	B = 16'hf480;
	ans = 16'hf884;
	#20
	A = 16'hf4d3;
	B = 16'h6c6e;
	ans = 16'hf36f;
	#20
	A = 16'hf6d3;
	B = 16'h7161;
	ans = 16'hf422;
	#20
	A = 16'h749b;
	B = 16'hf732;
	ans = 16'hf12e;
	#20
	A = 16'hf439;
	B = 16'h7493;
	ans = 16'h65a0;
	#20
	A = 16'h721d;
	B = 16'h703a;
	ans = 16'h752c;
	#20
	A = 16'h62c2;
	B = 16'hf4f7;
	ans = 16'hf4c1;
	#20
	A = 16'hee5d;
	B = 16'hee91;
	ans = 16'hf277;
	#20
	A = 16'h70e3;
	B = 16'he518;
	ans = 16'h7040;
	#20
	A = 16'h6826;
	B = 16'h7403;
	ans = 16'h7488;
	#20
	A = 16'h7401;
	B = 16'heed6;
	ans = 16'h7097;
	#20
	A = 16'hefee;
	B = 16'h5b0d;
	ans = 16'hefb6;
	#20
	A = 16'h73da;
	B = 16'h74e4;
	ans = 16'h7868;
	#20
	A = 16'h766e;
	B = 16'h772c;
	ans = 16'h7acd;
	#20
	A = 16'h758f;
	B = 16'h73d0;
	ans = 16'h78bc;
	#20
	A = 16'hf45e;
	B = 16'hf4e9;
	ans = 16'hf8a4;
	#20
	A = 16'h73d8;
	B = 16'h7055;
	ans = 16'h7616;
	#20
	A = 16'h6f1f;
	B = 16'h74bb;
	ans = 16'h7683;
	#20
	A = 16'h7733;
	B = 16'h74f9;
	ans = 16'h7a16;
	#20
	A = 16'h7697;
	B = 16'h501e;
	ans = 16'h7699;
	#20
	A = 16'h744b;
	B = 16'h70c9;
	ans = 16'h76b0;
	#20
	A = 16'hf4bf;
	B = 16'h7431;
	ans = 16'he870;
	#20
	A = 16'h62a4;
	B = 16'hf1c5;
	ans = 16'hf15b;
	#20
	A = 16'h760f;
	B = 16'h56c7;
	ans = 16'h7616;
	#20
	A = 16'h7476;
	B = 16'h75b0;
	ans = 16'h7913;
	#20
	A = 16'heeb9;
	B = 16'hf3c3;
	ans = 16'hf590;
	#20
	A = 16'h7176;
	B = 16'heb2d;
	ans = 16'h6f56;
	#20
	A = 16'hf615;
	B = 16'h76a8;
	ans = 16'h6898;
	#20
	A = 16'hecad;
	B = 16'h711e;
	ans = 16'h6d8f;
	#20
	A = 16'he587;
	B = 16'h7062;
	ans = 16'h6f62;
	#20
	A = 16'h5f71;
	B = 16'hf689;
	ans = 16'hf66b;
	#20
	A = 16'hf41d;
	B = 16'hf622;
	ans = 16'hf920;
	#20
	A = 16'h6f53;
	B = 16'h7485;
	ans = 16'h765a;
	#20
	A = 16'h62e1;
	B = 16'hf2b1;
	ans = 16'hf243;
	#20
	A = 16'heeb2;
	B = 16'hf622;
	ans = 16'hf7ce;
	#20
	A = 16'hf50c;
	B = 16'hf4f9;
	ans = 16'hf902;
	#20
	A = 16'hf4db;
	B = 16'h72c1;
	ans = 16'hedea;
	#20
	A = 16'h761e;
	B = 16'h6e24;
	ans = 16'h77a7;
	#20
	A = 16'hf59a;
	B = 16'he037;
	ans = 16'hf5bc;
	#20
	A = 16'h7673;
	B = 16'heafd;
	ans = 16'h7593;
	#20
	A = 16'heed4;
	B = 16'h6e01;
	ans = 16'he298;
	#20
	A = 16'h7608;
	B = 16'hf518;
	ans = 16'h6b80;
	#20
	A = 16'h753f;
	B = 16'h772b;
	ans = 16'h7a35;
	#20
	A = 16'hf311;
	B = 16'h6dc7;
	ans = 16'hf02e;
	#20
	A = 16'hf360;
	B = 16'h7569;
	ans = 16'h6ee4;
	#20
	A = 16'hf480;
	B = 16'h75b9;
	ans = 16'h6ce4;
	#20
	A = 16'hdbe1;
	B = 16'h715f;
	ans = 16'h713f;
	#20
	A = 16'h7661;
	B = 16'hf543;
	ans = 16'h6c78;
	#20
	A = 16'hefc9;
	B = 16'h756a;
	ans = 16'h72f0;
	#20
	A = 16'h7198;
	B = 16'h7124;
	ans = 16'h755e;
	#20
	A = 16'h76d8;
	B = 16'h768a;
	ans = 16'h7ab1;
	#20
	A = 16'hf11a;
	B = 16'hf555;
	ans = 16'hf7e2;
	#20
	A = 16'heeb7;
	B = 16'hf203;
	ans = 16'hf4af;
	#20
	A = 16'hf49a;
	B = 16'h7435;
	ans = 16'he650;
	#20
	A = 16'hf525;
	B = 16'h6513;
	ans = 16'hf4d4;
	#20
	A = 16'h71e2;
	B = 16'he9aa;
	ans = 16'h7078;
	#20
	A = 16'h6e76;
	B = 16'h7222;
	ans = 16'h74ae;
	#20
	A = 16'h7368;
	B = 16'he98e;
	ans = 16'h7204;
	#20
	A = 16'hf40a;
	B = 16'h7385;
	ans = 16'he478;
	#20
	A = 16'hf4e8;
	B = 16'h7059;
	ans = 16'hf177;
	#20
	A = 16'heed0;
	B = 16'hf6a3;
	ans = 16'hf82c;
	#20
	A = 16'h7445;
	B = 16'hf739;
	ans = 16'hf1e8;
	#20
	A = 16'hf41b;
	B = 16'h766d;
	ans = 16'h70a4;
	#20
	A = 16'hf24f;
	B = 16'hf552;
	ans = 16'hf83d;
	#20
	A = 16'hf2c7;
	B = 16'h714d;
	ans = 16'he9e8;
	#20
	A = 16'hf058;
	B = 16'hf609;
	ans = 16'hf81a;
	#20
	A = 16'h745b;
	B = 16'hf4cc;
	ans = 16'he710;
	#20
	A = 16'h69ea;
	B = 16'h765e;
	ans = 16'h771b;
	#20
	A = 16'h75cf;
	B = 16'hf589;
	ans = 16'h6460;
	#20
	A = 16'hf297;
	B = 16'h7733;
	ans = 16'h73cf;
	#20
	A = 16'he698;
	B = 16'hf712;
	ans = 16'hf77c;
	#20
	A = 16'h6b1d;
	B = 16'hf539;
	ans = 16'hf455;
	#20
	A = 16'h748a;
	B = 16'hec6e;
	ans = 16'h72dd;
	#20
	A = 16'h6d3a;
	B = 16'h7350;
	ans = 16'h74f6;
	#20
	A = 16'he8d2;
	B = 16'h76b3;
	ans = 16'h7619;
	#20
	A = 16'h6e5b;
	B = 16'h6f28;
	ans = 16'h72c2;
	#20
	A = 16'h7423;
	B = 16'heb31;
	ans = 16'h727a;
	#20
	A = 16'h6a06;
	B = 16'hf72b;
	ans = 16'hf66a;
	#20
	A = 16'h6c9f;
	B = 16'hf079;
	ans = 16'hec53;
	#20
	A = 16'h75e4;
	B = 16'hea14;
	ans = 16'h7522;
	#20
	A = 16'h74ef;
	B = 16'h761a;
	ans = 16'h7984;
	#20
	A = 16'h69e1;
	B = 16'hf67a;
	ans = 16'hf5be;
	#20
	A = 16'hf1fa;
	B = 16'hf21b;
	ans = 16'hf60a;
	#20
	A = 16'h6df0;
	B = 16'hf305;
	ans = 16'hf00d;
	#20
	A = 16'h6cef;
	B = 16'hf473;
	ans = 16'hf26e;
	#20
	A = 16'h6d82;
	B = 16'hf491;
	ans = 16'hf261;
	#20
	A = 16'h7594;
	B = 16'h73a7;
	ans = 16'h78b4;
	#20
	A = 16'h7336;
	B = 16'hf542;
	ans = 16'hee9c;
	#20
	A = 16'hf0b7;
	B = 16'hf428;
	ans = 16'hf684;
	#20
	A = 16'hf579;
	B = 16'h730f;
	ans = 16'hefc6;
	#20
	A = 16'h772c;
	B = 16'h7188;
	ans = 16'h78f8;
	#20
	A = 16'hef03;
	B = 16'hf441;
	ans = 16'hf602;
	#20
	A = 16'hf667;
	B = 16'h7363;
	ans = 16'hf16b;
	#20
	A = 16'hef39;
	B = 16'hf216;
	ans = 16'hf4d9;
	#20
	A = 16'h72dd;
	B = 16'h6c15;
	ans = 16'h7474;
	#20
	A = 16'h7608;
	B = 16'heefa;
	ans = 16'h744a;
	#20
	A = 16'hf2a6;
	B = 16'h744c;
	ans = 16'h6bc8;
	#20
	A = 16'hf734;
	B = 16'h75fd;
	ans = 16'hecdc;
	#20
	A = 16'hf72d;
	B = 16'hf734;
	ans = 16'hfb30;
	#20
	A = 16'he73a;
	B = 16'h684d;
	ans = 16'h5d80;
	#20
	A = 16'h76b3;
	B = 16'h6ea4;
	ans = 16'h782e;
	#20
	A = 16'h7029;
	B = 16'hf2f8;
	ans = 16'hed9e;
	#20
	A = 16'hf07a;
	B = 16'h6c20;
	ans = 16'hecd4;
	#20
	A = 16'hf4ec;
	B = 16'hf35c;
	ans = 16'hf84d;
	#20
	A = 16'h7658;
	B = 16'hf6e0;
	ans = 16'he840;
	#20
	A = 16'hf5fb;
	B = 16'hf3db;
	ans = 16'hf8f4;
	#20
	A = 16'h7508;
	B = 16'hf5c8;
	ans = 16'hea00;
	#20
	A = 16'hf528;
	B = 16'h75de;
	ans = 16'h69b0;
	#20
	A = 16'hf142;
	B = 16'h75e6;
	ans = 16'h728a;
	#20
	A = 16'hf052;
	B = 16'hf510;
	ans = 16'hf739;
	#20
	A = 16'hf5ba;
	B = 16'hf44b;
	ans = 16'hf902;
	#20
	A = 16'h7724;
	B = 16'hf5dc;
	ans = 16'h6d20;
	#20
	A = 16'h7698;
	B = 16'h59da;
	ans = 16'h76a4;
	#20
	A = 16'h7579;
	B = 16'hf039;
	ans = 16'h72b9;
	#20
	A = 16'hf114;
	B = 16'h6a70;
	ans = 16'heef0;
	#20
	A = 16'h7737;
	B = 16'h6c94;
	ans = 16'h782e;
	#20
	A = 16'hee87;
	B = 16'hf6bc;
	ans = 16'hf82f;
	#20
	A = 16'h765c;
	B = 16'h75c6;
	ans = 16'h7a11;
	#20
	A = 16'h7481;
	B = 16'h759f;
	ans = 16'h7910;
	#20
	A = 16'heb30;
	B = 16'h6efa;
	ans = 16'h6ac4;
	#20
	A = 16'hf10d;
	B = 16'hf461;
	ans = 16'hf6e8;
	#20
	A = 16'heeda;
	B = 16'hf6be;
	ans = 16'hf83a;
	#20
	A = 16'hec5d;
	B = 16'h6cd0;
	ans = 16'h5f30;
	#20
	A = 16'h74cd;
	B = 16'hf1d3;
	ans = 16'h6f8e;
	#20
	A = 16'hf1aa;
	B = 16'h7034;
	ans = 16'he9d8;
	#20
	A = 16'h74db;
	B = 16'h750b;
	ans = 16'h78f3;
	#20
	A = 16'hdd99;
	B = 16'hf506;
	ans = 16'hf51c;
	#20
	A = 16'hf4d2;
	B = 16'heea9;
	ans = 16'hf67c;
	#20
	A = 16'h74cd;
	B = 16'hf416;
	ans = 16'h69b8;
	#20
	A = 16'h696b;
	B = 16'hf6b6;
	ans = 16'hf609;
	#20
	A = 16'h75f9;
	B = 16'h765b;
	ans = 16'h7a2a;
	#20
	A = 16'h6fb5;
	B = 16'h71bf;
	ans = 16'h74cd;
	#20
	A = 16'h76b4;
	B = 16'hf655;
	ans = 16'h65f0;
	#20
	A = 16'h75e2;
	B = 16'hf662;
	ans = 16'he800;
	#20
	A = 16'hf080;
	B = 16'h7576;
	ans = 16'h726c;
	#20
	A = 16'hf653;
	B = 16'hec35;
	ans = 16'hf760;
	#20
	A = 16'hf41e;
	B = 16'hf3e5;
	ans = 16'hf808;
	#20
	A = 16'h7190;
	B = 16'hf5b0;
	ans = 16'hf1d0;
	#20
	A = 16'hf193;
	B = 16'h74f5;
	ans = 16'h7057;
	#20
	A = 16'h7253;
	B = 16'h76fc;
	ans = 16'h7913;
	#20
	A = 16'h74dc;
	B = 16'hf4c5;
	ans = 16'h5dc0;
	#20
	A = 16'hf537;
	B = 16'h7541;
	ans = 16'h5900;
	#20
	A = 16'hf33f;
	B = 16'h60ca;
	ans = 16'hf2f2;
	#20
	A = 16'hec0d;
	B = 16'h7642;
	ans = 16'h753f;
	#20
	A = 16'h6c46;
	B = 16'hf352;
	ans = 16'hf12f;
	#20
	A = 16'h66d1;
	B = 16'h7734;
	ans = 16'h77a1;
	#20
	A = 16'hf538;
	B = 16'h7720;
	ans = 16'h6fa0;
	#20
	A = 16'hf467;
	B = 16'hf473;
	ans = 16'hf86d;
	#20
	A = 16'h729b;
	B = 16'h6d68;
	ans = 16'h74a8;
	#20
	A = 16'hf248;
	B = 16'hf74e;
	ans = 16'hf939;
	#20
	A = 16'h7286;
	B = 16'h7412;
	ans = 16'h7755;
	#20
	A = 16'h6c62;
	B = 16'heef4;
	ans = 16'he924;
	#20
	A = 16'h6d7b;
	B = 16'hf001;
	ans = 16'he90e;
	#20
	A = 16'hec7b;
	B = 16'h7011;
	ans = 16'h6b4e;
	#20
	A = 16'hf55d;
	B = 16'h6bd1;
	ans = 16'hf463;
	#20
	A = 16'h7518;
	B = 16'hdc58;
	ans = 16'h7507;
	#20
	A = 16'hf6e3;
	B = 16'h74af;
	ans = 16'hf068;
	#20
	A = 16'h6cd0;
	B = 16'h76a0;
	ans = 16'h77d4;
	#20
	A = 16'h6866;
	B = 16'hf1f4;
	ans = 16'hf0da;
	#20
	A = 16'h6e3f;
	B = 16'hf2f8;
	ans = 16'hefb1;
	#20
	A = 16'h7422;
	B = 16'hecd6;
	ans = 16'h71d9;
	#20
	A = 16'h6dca;
	B = 16'hf645;
	ans = 16'hf4d2;
	#20
	A = 16'h76ff;
	B = 16'h7459;
	ans = 16'h79ac;
	#20
	A = 16'h76ff;
	B = 16'h7612;
	ans = 16'h7a88;
	#20
	A = 16'h7298;
	B = 16'hf26d;
	ans = 16'h5d60;
	#20
	A = 16'h6b80;
	B = 16'hf33e;
	ans = 16'hf15e;
	#20
	A = 16'h74c3;
	B = 16'hf509;
	ans = 16'he460;
	#20
	A = 16'h75bb;
	B = 16'h72f1;
	ans = 16'h789a;
	#20
	A = 16'h5f36;
	B = 16'h7652;
	ans = 16'h766f;
	#20
	A = 16'hf546;
	B = 16'hf38d;
	ans = 16'hf886;
	#20
	A = 16'h746d;
	B = 16'h6c37;
	ans = 16'h757b;
	#20
	A = 16'h74e6;
	B = 16'h745f;
	ans = 16'h78a2;
	#20
	A = 16'hf65e;
	B = 16'hf39e;
	ans = 16'hf916;
	#20
	A = 16'h7442;
	B = 16'hf4f5;
	ans = 16'he998;
	#20
	A = 16'hdff3;
	B = 16'h67da;
	ans = 16'h65dd;
	#20
	A = 16'h7496;
	B = 16'hf576;
	ans = 16'heb00;
	#20
	A = 16'h699e;
	B = 16'hf5ac;
	ans = 16'hf4f8;
	#20
	A = 16'h7503;
	B = 16'hf624;
	ans = 16'hec84;
	#20
	A = 16'hf586;
	B = 16'hec51;
	ans = 16'hf69a;
	#20
	A = 16'hf4a9;
	B = 16'hed20;
	ans = 16'hf5f1;
	#20
	A = 16'he4f2;
	B = 16'hecd7;
	ans = 16'hee14;
	#20
	A = 16'h7703;
	B = 16'hf432;
	ans = 16'h71a2;
	#20
	A = 16'h6496;
	B = 16'h7553;
	ans = 16'h759c;
	#20
	A = 16'h6d20;
	B = 16'h70e4;
	ans = 16'h7374;
	#20
	A = 16'hf107;
	B = 16'hf65e;
	ans = 16'hf871;
	#20
	A = 16'h7523;
	B = 16'h74b7;
	ans = 16'h78ed;
	#20
	A = 16'h6247;
	B = 16'hf0bc;
	ans = 16'hf058;
	#20
	A = 16'hf5a0;
	B = 16'hf57f;
	ans = 16'hf990;
	#20
	A = 16'hf396;
	B = 16'h726b;
	ans = 16'he8ac;
	#20
	A = 16'hf30a;
	B = 16'h746b;
	ans = 16'h6b30;
	#20
	A = 16'h71be;
	B = 16'hf2b4;
	ans = 16'he7b0;
	#20
	A = 16'h6ab6;
	B = 16'h6bd7;
	ans = 16'h6f46;
	#20
	A = 16'h7706;
	B = 16'hf5a1;
	ans = 16'h6d94;
	#20
	A = 16'hf69c;
	B = 16'hf600;
	ans = 16'hfa4e;
	#20
	A = 16'h7603;
	B = 16'hf673;
	ans = 16'he700;
	#20
	A = 16'hf537;
	B = 16'hf6a8;
	ans = 16'hf9f0;
	#20
	A = 16'heed9;
	B = 16'h6891;
	ans = 16'hec90;
	#20
	A = 16'h6f42;
	B = 16'h76e8;
	ans = 16'h785c;
	#20
	A = 16'hf5ab;
	B = 16'h7402;
	ans = 16'heea4;
	#20
	A = 16'h6ce0;
	B = 16'hf472;
	ans = 16'hf274;
	#20
	A = 16'hed58;
	B = 16'hf0ef;
	ans = 16'hf39b;
	#20
	A = 16'h75af;
	B = 16'hf69f;
	ans = 16'heb80;
	#20
	A = 16'h749f;
	B = 16'hf095;
	ans = 16'h70a9;
	#20
	A = 16'h6f32;
	B = 16'hf534;
	ans = 16'hf2cf;
	#20
	A = 16'h73b4;
	B = 16'h6702;
	ans = 16'h744a;
	#20
	A = 16'h768a;
	B = 16'he9c0;
	ans = 16'h75d2;
	#20
	A = 16'h7475;
	B = 16'hf30e;
	ans = 16'h6b70;
	#20
	A = 16'hf079;
	B = 16'hf033;
	ans = 16'hf456;
	#20
	A = 16'he81f;
	B = 16'hf354;
	ans = 16'hf42e;
	#20
	A = 16'hef18;
	B = 16'h75a7;
	ans = 16'h73c2;
	#20
	A = 16'hf5d1;
	B = 16'hf52a;
	ans = 16'hf97e;
	#20
	A = 16'h70b0;
	B = 16'hf4f4;
	ans = 16'hf138;
	#20
	A = 16'h73d2;
	B = 16'hdb0b;
	ans = 16'h73b6;
	#20
	A = 16'hf5b9;
	B = 16'hf486;
	ans = 16'hf920;
	#20
	A = 16'h7707;
	B = 16'hf698;
	ans = 16'h66f0;
	#20
	A = 16'h767a;
	B = 16'hf2f4;
	ans = 16'h7200;
	#20
	A = 16'h7187;
	B = 16'hf06b;
	ans = 16'h6870;
	#20
	A = 16'h6e61;
	B = 16'hf6bb;
	ans = 16'hf523;
	#20
	A = 16'hf171;
	B = 16'h74a1;
	ans = 16'h6fa2;
	#20
	A = 16'heea6;
	B = 16'h752a;
	ans = 16'h7301;
	#20
	A = 16'h743f;
	B = 16'hf074;
	ans = 16'h700a;
	#20
	A = 16'hf54f;
	B = 16'hf2d1;
	ans = 16'hf85c;
	#20
	A = 16'h747e;
	B = 16'h7543;
	ans = 16'h78e0;
	#20
	A = 16'hf681;
	B = 16'hf189;
	ans = 16'hf8a3;
	#20
	A = 16'hf3d2;
	B = 16'heacc;
	ans = 16'hf4c2;
	#20
	A = 16'hefc7;
	B = 16'hf228;
	ans = 16'hf506;
	#20
	A = 16'hf3f4;
	B = 16'h7579;
	ans = 16'h6dfc;
	#20
	A = 16'hf682;
	B = 16'h719d;
	ans = 16'hf367;
	#20
	A = 16'h7713;
	B = 16'h652f;
	ans = 16'h7766;
	#20
	A = 16'hf743;
	B = 16'hedca;
	ans = 16'hf85b;
	#20
	A = 16'hf2ba;
	B = 16'hed92;
	ans = 16'hf4c2;
	#20
	A = 16'hf5ec;
	B = 16'hf2d2;
	ans = 16'hf8aa;
	#20
	A = 16'hea86;
	B = 16'hf0bf;
	ans = 16'hf260;
	#20
	A = 16'hf28d;
	B = 16'h7177;
	ans = 16'he858;
	#20
	A = 16'hf4b5;
	B = 16'hf360;
	ans = 16'hf832;
	#20
	A = 16'h643f;
	B = 16'hf6aa;
	ans = 16'hf666;
	#20
	A = 16'h6df3;
	B = 16'h7087;
	ans = 16'h7380;
	#20
	A = 16'h6c93;
	B = 16'hf033;
	ans = 16'heba6;
	#20
	A = 16'h73bb;
	B = 16'h6cfc;
	ans = 16'h751c;
	#20
	A = 16'hf32d;
	B = 16'h6c58;
	ans = 16'hf101;
	#20
	A = 16'h75d1;
	B = 16'he96f;
	ans = 16'h7523;
	#20
	A = 16'h75ea;
	B = 16'h75ca;
	ans = 16'h79da;
	#20
	A = 16'hf717;
	B = 16'hf4d5;
	ans = 16'hf9f6;
	#20
	A = 16'heee9;
	B = 16'hd868;
	ans = 16'hef0c;
	#20
	A = 16'h72ec;
	B = 16'h63e8;
	ans = 16'h736a;
	#20
	A = 16'he357;
	B = 16'hed24;
	ans = 16'hee0f;
	#20
	A = 16'h768b;
	B = 16'hf115;
	ans = 16'h7400;
	#20
	A = 16'h7439;
	B = 16'h750d;
	ans = 16'h78a3;
	#20
	A = 16'h70cd;
	B = 16'hf413;
	ans = 16'heeb2;
	#20
	A = 16'hf472;
	B = 16'h6cfb;
	ans = 16'hf266;
	#20
	A = 16'hea50;
	B = 16'h72e0;
	ans = 16'h714c;
	#20
	A = 16'hd0cd;
	B = 16'hf6d3;
	ans = 16'hf6d5;
	#20
	A = 16'h6ffd;
	B = 16'h742b;
	ans = 16'h762a;
	#20
	A = 16'he30f;
	B = 16'hd493;
	ans = 16'he3a1;
	#20
	A = 16'hf21e;
	B = 16'h68b7;
	ans = 16'hf0f0;
	#20
	A = 16'h5c0d;
	B = 16'h73dd;
	ans = 16'h73fd;
	#20
	A = 16'hf6f4;
	B = 16'h75b1;
	ans = 16'hed0c;
	#20
	A = 16'h76e4;
	B = 16'hf3dc;
	ans = 16'h71ec;
	#20
	A = 16'h7638;
	B = 16'h6493;
	ans = 16'h7681;
	#20
	A = 16'h76a8;
	B = 16'hf41f;
	ans = 16'h7112;
	#20
	A = 16'h7241;
	B = 16'hf0b7;
	ans = 16'h6a28;
	#20
	A = 16'h7557;
	B = 16'hf319;
	ans = 16'h6f2a;
	#20
	A = 16'hf1f1;
	B = 16'hf676;
	ans = 16'hf8b7;
	#20
	A = 16'hee6b;
	B = 16'h5de8;
	ans = 16'hee0c;
	#20
	A = 16'h6957;
	B = 16'h7060;
	ans = 16'h71b6;
	#20
	A = 16'head0;
	B = 16'hf4fa;
	ans = 16'hf5d4;
	#20
	A = 16'h6b73;
	B = 16'h6e39;
	ans = 16'h70f9;
	#20
	A = 16'hf5ec;
	B = 16'h7322;
	ans = 16'hf0b6;
	#20
	A = 16'hf57c;
	B = 16'h58ba;
	ans = 16'hf573;
	#20
	A = 16'h71b2;
	B = 16'h707d;
	ans = 16'h7518;
	#20
	A = 16'hefdb;
	B = 16'hedbb;
	ans = 16'hf2cb;
	#20
	A = 16'hf115;
	B = 16'he96f;
	ans = 16'hf271;
	#20
	A = 16'hf49b;
	B = 16'hee6f;
	ans = 16'hf637;
	#20
	A = 16'hec93;
	B = 16'hf179;
	ans = 16'hf3c2;
	#20
	A = 16'hea2d;
	B = 16'hf5b7;
	ans = 16'hf67d;
	#20
	A = 16'heca0;
	B = 16'h6290;
	ans = 16'heb9c;
	#20
	A = 16'hf672;
	B = 16'h746a;
	ans = 16'hf010;
	#20
	A = 16'he8db;
	B = 16'hf18c;
	ans = 16'hf2c3;
	#20
	A = 16'hedac;
	B = 16'h684c;
	ans = 16'heb0c;
	#20
	A = 16'h74fe;
	B = 16'hf69a;
	ans = 16'hee70;
	#20
	A = 16'h7302;
	B = 16'he943;
	ans = 16'h71b1;
	#20
	A = 16'h6cfa;
	B = 16'hf569;
	ans = 16'hf42a;
	#20
	A = 16'hf250;
	B = 16'hf717;
	ans = 16'hf920;
	#20
	A = 16'h76ad;
	B = 16'h771f;
	ans = 16'h7ae6;
	#20
	A = 16'h736d;
	B = 16'hf42f;
	ans = 16'he788;
	#20
	A = 16'hf0b2;
	B = 16'hecfe;
	ans = 16'hf331;
	#20
	A = 16'hf6e1;
	B = 16'hf0a6;
	ans = 16'hf89a;
	#20
	A = 16'hf565;
	B = 16'h695f;
	ans = 16'hf4b9;
	#20
	A = 16'hf5bd;
	B = 16'h7630;
	ans = 16'h6730;
	#20
	A = 16'h6a91;
	B = 16'hf54a;
	ans = 16'hf478;
	#20
	A = 16'h7062;
	B = 16'h7512;
	ans = 16'h7743;
	#20
	A = 16'hee16;
	B = 16'h7593;
	ans = 16'h740e;
	#20
	A = 16'h7591;
	B = 16'hf568;
	ans = 16'h6120;
	#20
	A = 16'hf045;
	B = 16'h6b3a;
	ans = 16'heced;
	#20
	A = 16'h7165;
	B = 16'hf199;
	ans = 16'hde80;
	#20
	A = 16'h733b;
	B = 16'hf4ee;
	ans = 16'hed42;
	#20
	A = 16'hf56e;
	B = 16'hebb3;
	ans = 16'hf664;
	#20
	A = 16'h770b;
	B = 16'hf5d8;
	ans = 16'h6ccc;
	#20
	A = 16'he5e3;
	B = 16'h7687;
	ans = 16'h7629;
	#20
	A = 16'h7079;
	B = 16'hf154;
	ans = 16'he6d8;
	#20
	A = 16'h748d;
	B = 16'hf6c8;
	ans = 16'hf076;
	#20
	A = 16'h75d7;
	B = 16'hf72f;
	ans = 16'hed60;
	#20
	A = 16'h576b;
	B = 16'hf6df;
	ans = 16'hf6d8;
	#20
	A = 16'hf1f0;
	B = 16'hef41;
	ans = 16'hf4c8;
	#20
	A = 16'h768c;
	B = 16'h76fc;
	ans = 16'h7ac4;
	#20
	A = 16'hccf3;
	B = 16'hf443;
	ans = 16'hf444;
	#20
	A = 16'he1ff;
	B = 16'hf711;
	ans = 16'hf741;
	#20
	A = 16'h75cf;
	B = 16'hed7c;
	ans = 16'h7470;
	#20
	A = 16'hf643;
	B = 16'hf4ad;
	ans = 16'hf978;
	#20
	A = 16'hef07;
	B = 16'hf520;
	ans = 16'hf6e2;
	#20
	A = 16'hece7;
	B = 16'h75e9;
	ans = 16'h74af;
	#20
	A = 16'h740f;
	B = 16'h7097;
	ans = 16'h765a;
	#20
	A = 16'hf54a;
	B = 16'h70ec;
	ans = 16'hf1a8;
	#20
	A = 16'hf52c;
	B = 16'h7423;
	ans = 16'hec24;
	#20
	A = 16'hf43f;
	B = 16'hf159;
	ans = 16'hf6ec;
	#20
	A = 16'hf197;
	B = 16'h74ab;
	ans = 16'h6f7e;
	#20
	A = 16'hf043;
	B = 16'h756b;
	ans = 16'h7293;
	#20
	A = 16'he978;
	B = 16'h69ea;
	ans = 16'h5b20;
	#20
	A = 16'hef66;
	B = 16'h76cb;
	ans = 16'h74f2;
	#20
	A = 16'h6c19;
	B = 16'h74b7;
	ans = 16'h75bd;
	#20
	A = 16'h73b7;
	B = 16'hf6f5;
	ans = 16'hf233;
	#20
	A = 16'hf0a4;
	B = 16'hf63c;
	ans = 16'hf847;
	#20
	A = 16'hf060;
	B = 16'hf607;
	ans = 16'hf81c;
	#20
	A = 16'h7728;
	B = 16'h5487;
	ans = 16'h772d;
	#20
	A = 16'hef12;
	B = 16'hf346;
	ans = 16'hf568;
	#20
	A = 16'h72e7;
	B = 16'h71db;
	ans = 16'h7661;
	#20
	A = 16'h74bd;
	B = 16'hee7e;
	ans = 16'h723b;
	#20
	A = 16'hf39d;
	B = 16'h748a;
	ans = 16'h69dc;
	#20
	A = 16'h6dc0;
	B = 16'h7347;
	ans = 16'h7514;
	#20
	A = 16'h74ab;
	B = 16'hf627;
	ans = 16'hedf0;
	#20
	A = 16'hf170;
	B = 16'h683e;
	ans = 16'hf060;
	#20
	A = 16'hec0a;
	B = 16'h75d5;
	ans = 16'h74d2;
	#20
	A = 16'he593;
	B = 16'hf47b;
	ans = 16'hf4d4;
	#20
	A = 16'hef97;
	B = 16'h73d0;
	ans = 16'h7004;
	#20
	A = 16'h75c6;
	B = 16'he584;
	ans = 16'h756e;
	#20
	A = 16'h75cc;
	B = 16'hf015;
	ans = 16'h7383;
	#20
	A = 16'h69a9;
	B = 16'heb8b;
	ans = 16'he388;
	#20
	A = 16'h71dc;
	B = 16'h7580;
	ans = 16'h7837;
	#20
	A = 16'h6a05;
	B = 16'hf5ea;
	ans = 16'hf529;
	#20
	A = 16'h742a;
	B = 16'hf632;
	ans = 16'hf010;
	#20
	A = 16'heda3;
	B = 16'h758f;
	ans = 16'h7426;
	#20
	A = 16'h759f;
	B = 16'hf5a1;
	ans = 16'hd000;
	#20
	A = 16'h72da;
	B = 16'hf4ee;
	ans = 16'hee04;
	#20
	A = 16'hdce5;
	B = 16'h6f1a;
	ans = 16'h6ecc;
	#20
	A = 16'hf2b6;
	B = 16'h75c6;
	ans = 16'h70d6;
	#20
	A = 16'hf522;
	B = 16'h74e4;
	ans = 16'he3c0;
	#20
	A = 16'h74b7;
	B = 16'h74d0;
	ans = 16'h78c4;
	#20
	A = 16'h6add;
	B = 16'hf40c;
	ans = 16'hf261;
	#20
	A = 16'h7587;
	B = 16'h7133;
	ans = 16'h7810;
	#20
	A = 16'h730d;
	B = 16'h740f;
	ans = 16'h7796;
	#20
	A = 16'hf452;
	B = 16'h71ae;
	ans = 16'hedec;
	#20
	A = 16'hf4d7;
	B = 16'h75b3;
	ans = 16'h6ae0;
	#20
	A = 16'hf55c;
	B = 16'hf115;
	ans = 16'hf7e6;
	#20
	A = 16'he2a8;
	B = 16'h7635;
	ans = 16'h7600;
	#20
	A = 16'hf11f;
	B = 16'h72a5;
	ans = 16'h6a18;
	#20
	A = 16'hebeb;
	B = 16'h6ace;
	ans = 16'he074;
	#20
	A = 16'h7385;
	B = 16'heaee;
	ans = 16'h71ca;
	#20
	A = 16'hf1dc;
	B = 16'hf6c0;
	ans = 16'hf8d7;
	#20
	A = 16'h7285;
	B = 16'hf404;
	ans = 16'hea0c;
	#20
	A = 16'hf27e;
	B = 16'hf451;
	ans = 16'hf790;
	#20
	A = 16'hf72b;
	B = 16'hf5b3;
	ans = 16'hfa6f;
	#20
	A = 16'he809;
	B = 16'h76fc;
	ans = 16'h767b;
	#20
	A = 16'h7586;
	B = 16'hf605;
	ans = 16'he7f0;
	#20
	A = 16'h745a;
	B = 16'h7357;
	ans = 16'h7803;
	#20
	A = 16'hf249;
	B = 16'h71c6;
	ans = 16'he418;
	#20
	A = 16'hf590;
	B = 16'h70b2;
	ans = 16'hf26e;
	#20
	A = 16'he8ea;
	B = 16'h7125;
	ans = 16'h6fd5;
	#20
	A = 16'heff8;
	B = 16'h6f6a;
	ans = 16'he070;
	#20
	A = 16'hf33b;
	B = 16'h764e;
	ans = 16'h7161;
	#20
	A = 16'h7411;
	B = 16'h7723;
	ans = 16'h799a;
	#20
	A = 16'h760a;
	B = 16'hf0e3;
	ans = 16'h7331;
	#20
	A = 16'h72d3;
	B = 16'h6c77;
	ans = 16'h7487;
	#20
	A = 16'hec1c;
	B = 16'hf738;
	ans = 16'hf820;
	#20
	A = 16'h6e64;
	B = 16'h7489;
	ans = 16'h7622;
	#20
	A = 16'hf4bd;
	B = 16'hf712;
	ans = 16'hf9e8;
	#20
	A = 16'h771f;
	B = 16'hf6b1;
	ans = 16'h66e0;
	#20
	A = 16'hf34b;
	B = 16'hf666;
	ans = 16'hf906;
	#20
	A = 16'hf229;
	B = 16'hf1d5;
	ans = 16'hf5ff;
	#20
	A = 16'h7661;
	B = 16'hf3e9;
	ans = 16'h70d9;
	#20
	A = 16'hf33b;
	B = 16'h76c7;
	ans = 16'h7253;
	#20
	A = 16'h6c12;
	B = 16'hf671;
	ans = 16'hf56c;
	#20
	A = 16'hf1f0;
	B = 16'h6c10;
	ans = 16'hefd0;
	#20
	A = 16'h743a;
	B = 16'h769a;
	ans = 16'h796a;
	#20
	A = 16'hf508;
	B = 16'hf046;
	ans = 16'hf72b;
	#20
	A = 16'h6960;
	B = 16'h738d;
	ans = 16'h7472;
	#20
	A = 16'h75d2;
	B = 16'h75b6;
	ans = 16'h79c4;
	#20
	A = 16'hf0a0;
	B = 16'h753f;
	ans = 16'h71de;
	#20
	A = 16'hf432;
	B = 16'h75fc;
	ans = 16'h6f28;
	#20
	A = 16'hef72;
	B = 16'h703b;
	ans = 16'h6410;
	#20
	A = 16'hf36c;
	B = 16'h6f68;
	ans = 16'hef70;
	#20
	A = 16'hf174;
	B = 16'hf5fd;
	ans = 16'hf85c;
	#20
	A = 16'h69e1;
	B = 16'hf6d0;
	ans = 16'hf614;
	#20
	A = 16'h71c2;
	B = 16'hf64c;
	ans = 16'hf2d6;
	#20
	A = 16'h75bc;
	B = 16'h6f5d;
	ans = 16'h7793;
	#20
	A = 16'h75d9;
	B = 16'h760f;
	ans = 16'h79f4;
	#20
	A = 16'h75e9;
	B = 16'heaab;
	ans = 16'h7514;
	#20
	A = 16'h74ea;
	B = 16'hf583;
	ans = 16'he8c8;
	#20
	A = 16'h64f0;
	B = 16'he4c9;
	ans = 16'h50e0;
	#20
	A = 16'h685b;
	B = 16'hec38;
	ans = 16'he815;
	#20
	A = 16'head3;
	B = 16'hf44e;
	ans = 16'hf528;
	#20
	A = 16'h71fa;
	B = 16'hf59b;
	ans = 16'hf13c;
	#20
	A = 16'h7499;
	B = 16'hedbb;
	ans = 16'h7254;
	#20
	A = 16'h76ff;
	B = 16'h74b8;
	ans = 16'h79dc;
	#20
	A = 16'h7647;
	B = 16'h76d4;
	ans = 16'h7a8e;
	#20
	A = 16'h75d3;
	B = 16'hf44d;
	ans = 16'h6e18;
	#20
	A = 16'hf33b;
	B = 16'h73c4;
	ans = 16'h6448;
	#20
	A = 16'h74a3;
	B = 16'hf0bf;
	ans = 16'h7087;
	#20
	A = 16'h7564;
	B = 16'he0b5;
	ans = 16'h753e;
	#20
	A = 16'h702a;
	B = 16'hef83;
	ans = 16'h6288;
	#20
	A = 16'he4ca;
	B = 16'hf12f;
	ans = 16'hf1c8;
	#20
	A = 16'h7398;
	B = 16'hf5e8;
	ans = 16'hf038;
	#20
	A = 16'h7566;
	B = 16'hf408;
	ans = 16'h6d78;
	#20
	A = 16'h6d3b;
	B = 16'h7476;
	ans = 16'h75c5;
	#20
	A = 16'h731a;
	B = 16'hf169;
	ans = 16'h6ac4;
	#20
	A = 16'he96c;
	B = 16'h751d;
	ans = 16'h7470;
	#20
	A = 16'h712d;
	B = 16'h766c;
	ans = 16'h7881;
	#20
	A = 16'heaca;
	B = 16'h7216;
	ans = 16'h7064;
	#20
	A = 16'hd7ff;
	B = 16'h7103;
	ans = 16'h70f3;
	#20
	A = 16'he976;
	B = 16'hf1ba;
	ans = 16'hf318;
	#20
	A = 16'h760f;
	B = 16'hf0dc;
	ans = 16'h7342;
	#20
	A = 16'hf725;
	B = 16'he91f;
	ans = 16'hf7c9;
	#20
	A = 16'he54b;
	B = 16'h76af;
	ans = 16'h765a;
	#20
	A = 16'he14c;
	B = 16'heaf2;
	ans = 16'hec22;
	#20
	A = 16'h62bd;
	B = 16'heef0;
	ans = 16'hee18;
	#20
	A = 16'h7657;
	B = 16'hebad;
	ans = 16'h7561;
	#20
	A = 16'h75a3;
	B = 16'h70b3;
	ans = 16'h77fc;
	#20
	A = 16'he4e7;
	B = 16'h74a9;
	ans = 16'h745b;
	#20
	A = 16'hf06e;
	B = 16'h6e0b;
	ans = 16'he9a2;
	#20
	A = 16'hf662;
	B = 16'hec7f;
	ans = 16'hf782;
	#20
	A = 16'hf701;
	B = 16'hd914;
	ans = 16'hf70b;
	#20
	A = 16'h6ff6;
	B = 16'hf5dd;
	ans = 16'hf3bf;
	#20
	A = 16'hf660;
	B = 16'hf2d3;
	ans = 16'hf8e5;
	#20
	A = 16'h73e6;
	B = 16'h6da5;
	ans = 16'h755c;
	#20
	A = 16'hf451;
	B = 16'h7190;
	ans = 16'hee24;
	#20
	A = 16'h74c3;
	B = 16'hf5ac;
	ans = 16'heb48;
	#20
	A = 16'hf3c6;
	B = 16'hedf4;
	ans = 16'hf560;
	#20
	A = 16'h76a8;
	B = 16'hf1b6;
	ans = 16'h739a;
	#20
	A = 16'h7668;
	B = 16'he49e;
	ans = 16'h761e;
	#20
	A = 16'hea64;
	B = 16'hf69e;
	ans = 16'hf76a;
	#20
	A = 16'hf085;
	B = 16'he9d8;
	ans = 16'hf1fb;
	#20
	A = 16'he8ee;
	B = 16'hf565;
	ans = 16'hf603;
	#20
	A = 16'hf42f;
	B = 16'h672f;
	ans = 16'hf378;
	#20
	A = 16'h71fe;
	B = 16'hf3e0;
	ans = 16'heb88;
	#20
	A = 16'h74b3;
	B = 16'hf4ed;
	ans = 16'he340;
	#20
	A = 16'h761e;
	B = 16'h70db;
	ans = 16'h7846;
	#20
	A = 16'h7404;
	B = 16'hea11;
	ans = 16'h7284;
	#20
	A = 16'h69b7;
	B = 16'hf086;
	ans = 16'hee30;
	#20
	A = 16'hf5b1;
	B = 16'he3b3;
	ans = 16'hf5ef;
	#20
	A = 16'h7073;
	B = 16'hf395;
	ans = 16'hee44;
	#20
	A = 16'hf74d;
	B = 16'hf681;
	ans = 16'hfae7;
	#20
	A = 16'h75e1;
	B = 16'hf519;
	ans = 16'h6a40;
	#20
	A = 16'he990;
	B = 16'h726a;
	ans = 16'h7106;
	#20
	A = 16'heaa3;
	B = 16'hf712;
	ans = 16'hf7e6;
	#20
	A = 16'hf05f;
	B = 16'h6a81;
	ans = 16'hed7e;
	#20
	A = 16'h7502;
	B = 16'hf60b;
	ans = 16'hec24;
	#20
	A = 16'h773a;
	B = 16'heeec;
	ans = 16'h757f;
	#20
	A = 16'hf418;
	B = 16'hf687;
	ans = 16'hf950;
	#20
	A = 16'h7690;
	B = 16'hf561;
	ans = 16'h6cbc;
	#20
	A = 16'h6bda;
	B = 16'hee6a;
	ans = 16'he8fa;
	#20
	A = 16'h6a86;
	B = 16'h6821;
	ans = 16'h6d54;
	#20
	A = 16'he1ec;
	B = 16'hdf89;
	ans = 16'he4d8;
	#20
	A = 16'heb9c;
	B = 16'hedcb;
	ans = 16'hf0cc;
	#20
	A = 16'hf166;
	B = 16'h75cc;
	ans = 16'h7232;
	#20
	A = 16'hf038;
	B = 16'hf0c7;
	ans = 16'hf480;
	#20
	A = 16'hebec;
	B = 16'he60d;
	ans = 16'hed79;
	#20
	A = 16'h7404;
	B = 16'he64a;
	ans = 16'h733f;
	#20
	A = 16'he0f1;
	B = 16'hf161;
	ans = 16'hf1b0;
	#20
	A = 16'hf596;
	B = 16'h7689;
	ans = 16'h6b98;
	#20
	A = 16'h76b1;
	B = 16'hf748;
	ans = 16'he8b8;
	#20
	A = 16'h7442;
	B = 16'h708c;
	ans = 16'h7688;
	#20
	A = 16'h7660;
	B = 16'hf2ce;
	ans = 16'h71f2;
	#20
	A = 16'h74dc;
	B = 16'hc1dd;
	ans = 16'h74dc;
	#20
	A = 16'h6ee4;
	B = 16'h6d0a;
	ans = 16'h71f7;
	#20
	A = 16'h7662;
	B = 16'h700e;
	ans = 16'h7834;
	#20
	A = 16'h72a7;
	B = 16'h6c26;
	ans = 16'h745d;
	#20
	A = 16'h74a9;
	B = 16'hf026;
	ans = 16'h712c;
	#20
	A = 16'hf56c;
	B = 16'h71e8;
	ans = 16'hf0f0;
	#20
	A = 16'h6dcd;
	B = 16'hf547;
	ans = 16'hf3a8;
	#20
	A = 16'h7749;
	B = 16'he767;
	ans = 16'h76d3;
	#20
	A = 16'h58e3;
	B = 16'hf70b;
	ans = 16'hf701;
	#20
	A = 16'h7475;
	B = 16'he905;
	ans = 16'h73a9;
	#20
	A = 16'h73f3;
	B = 16'he93e;
	ans = 16'h72a4;
	#20
	A = 16'hed09;
	B = 16'h75e1;
	ans = 16'h749f;
	#20
	A = 16'hf42f;
	B = 16'h590c;
	ans = 16'hf425;
	#20
	A = 16'h72e6;
	B = 16'h75f1;
	ans = 16'h78b2;
	#20
	A = 16'heee7;
	B = 16'hf71d;
	ans = 16'hf86b;
	#20
	A = 16'hf582;
	B = 16'h73fe;
	ans = 16'hee0c;
	#20
	A = 16'h7428;
	B = 16'h7692;
	ans = 16'h795d;
	#20
	A = 16'hf444;
	B = 16'h74bf;
	ans = 16'h67b0;
	#20
	A = 16'h73be;
	B = 16'hf72c;
	ans = 16'hf29a;
	#20
	A = 16'hf186;
	B = 16'h68e8;
	ans = 16'hf04c;
	#20
	A = 16'heba1;
	B = 16'hf1ca;
	ans = 16'hf3b2;
	#20
	A = 16'h7538;
	B = 16'hf3ad;
	ans = 16'h6d86;
	#20
	A = 16'heacb;
	B = 16'hf2c7;
	ans = 16'hf43d;
	#20
	A = 16'hf076;
	B = 16'hf28f;
	ans = 16'hf582;
	#20
	A = 16'h7684;
	B = 16'hf4f8;
	ans = 16'h6e30;
	#20
	A = 16'hf43c;
	B = 16'h7524;
	ans = 16'h6b40;
	#20
	A = 16'hf525;
	B = 16'hf6a0;
	ans = 16'hf9e2;
	#20
	A = 16'h7701;
	B = 16'hf58a;
	ans = 16'h6ddc;
	#20
	A = 16'h74d7;
	B = 16'h74ac;
	ans = 16'h78c2;
	#20
	A = 16'hf33c;
	B = 16'h68db;
	ans = 16'hf205;
	#20
	A = 16'hf17f;
	B = 16'hf52c;
	ans = 16'hf7ec;
	#20
	A = 16'hef39;
	B = 16'h6fbe;
	ans = 16'h6028;
	#20
	A = 16'hf660;
	B = 16'h6fc4;
	ans = 16'hf46f;
	#20
	A = 16'hf449;
	B = 16'h74e1;
	ans = 16'h68c0;
	#20
	A = 16'h7579;
	B = 16'h6958;
	ans = 16'h7624;
	#20
	A = 16'h74b1;
	B = 16'hecb2;
	ans = 16'h7309;
	#20
	A = 16'hf4ea;
	B = 16'heee7;
	ans = 16'hf6a4;
	#20
	A = 16'h76e4;
	B = 16'hf57c;
	ans = 16'h6da0;
	#20
	A = 16'hf479;
	B = 16'h7441;
	ans = 16'he300;
	#20
	A = 16'h731c;
	B = 16'hf2b5;
	ans = 16'h6270;
	#20
	A = 16'hf1c1;
	B = 16'hf6fc;
	ans = 16'hf8ee;
	#20
	A = 16'h75f1;
	B = 16'hf29a;
	ans = 16'h7148;
	#20
	A = 16'h76dd;
	B = 16'h7226;
	ans = 16'h78f8;
	#20
	A = 16'h7585;
	B = 16'hf2d3;
	ans = 16'h7037;
	#20
	A = 16'h7105;
	B = 16'hed7a;
	ans = 16'h6c90;
	#20
	A = 16'h741a;
	B = 16'h74ff;
	ans = 16'h788c;
	#20
	A = 16'hf31d;
	B = 16'h620e;
	ans = 16'hf2bc;
	#20
	A = 16'h75c9;
	B = 16'h71a3;
	ans = 16'h784d;
	#20
	A = 16'hf674;
	B = 16'h7359;
	ans = 16'hf18f;
	#20
	A = 16'h733b;
	B = 16'hf628;
	ans = 16'hf115;
	#20
	A = 16'hf4c5;
	B = 16'h696d;
	ans = 16'hf417;
	#20
	A = 16'hf66c;
	B = 16'h65a5;
	ans = 16'hf612;
	#20
	A = 16'h7533;
	B = 16'h6f61;
	ans = 16'h770b;
	#20
	A = 16'heaec;
	B = 16'h7515;
	ans = 16'h7438;
	#20
	A = 16'hf2bd;
	B = 16'h7056;
	ans = 16'hecce;
	#20
	A = 16'hf47b;
	B = 16'h6db7;
	ans = 16'hf21a;
	#20
	A = 16'hf5fd;
	B = 16'h72d4;
	ans = 16'hf126;
	#20
	A = 16'h763c;
	B = 16'h6d18;
	ans = 16'h7782;
	#20
	A = 16'hf133;
	B = 16'h72bf;
	ans = 16'h6a30;
	#20
	A = 16'h6996;
	B = 16'h7660;
	ans = 16'h7713;
	#20
	A = 16'h73cb;
	B = 16'h731d;
	ans = 16'h7774;
	#20
	A = 16'hed1b;
	B = 16'heee3;
	ans = 16'hf1ff;
	#20
	A = 16'h6f48;
	B = 16'h7532;
	ans = 16'h7704;
	#20
	A = 16'h74e8;
	B = 16'h5e83;
	ans = 16'h7502;
	#20
	A = 16'hf6c2;
	B = 16'hf6e5;
	ans = 16'hfad4;
	#20
	A = 16'hf6b0;
	B = 16'hf52d;
	ans = 16'hf9ee;
	#20
	A = 16'h6a87;
	B = 16'hf6cb;
	ans = 16'hf5fa;
	#20
	A = 16'hf4ee;
	B = 16'h7353;
	ans = 16'hed12;
	#20
	A = 16'hedc9;
	B = 16'hf044;
	ans = 16'hf328;
	#20
	A = 16'hebad;
	B = 16'h68b2;
	ans = 16'he5f6;
	#20
	A = 16'h7263;
	B = 16'hea1b;
	ans = 16'h70dc;
	#20
	A = 16'hf540;
	B = 16'h719b;
	ans = 16'hf0e5;
	#20
	A = 16'he439;
	B = 16'hf468;
	ans = 16'hf4ac;
	#20
	A = 16'h6211;
	B = 16'h6e7f;
	ans = 16'h6f41;
	#20
	A = 16'hf458;
	B = 16'h6433;
	ans = 16'hf415;
	#20
	A = 16'h6836;
	B = 16'hf05b;
	ans = 16'hee9b;
	#20
	A = 16'h7698;
	B = 16'h75a8;
	ans = 16'h7a20;
	#20
	A = 16'h76a0;
	B = 16'h694d;
	ans = 16'h774a;
	#20
	A = 16'hf0f8;
	B = 16'hec82;
	ans = 16'hf339;
	#20
	A = 16'h7352;
	B = 16'h75b7;
	ans = 16'h78b0;
	#20
	A = 16'hee77;
	B = 16'hf625;
	ans = 16'hf7c3;
	#20
	A = 16'h6d0e;
	B = 16'hee25;
	ans = 16'he45c;
	#20
	A = 16'h751d;
	B = 16'h70cf;
	ans = 16'h7784;
	#20
	A = 16'hf525;
	B = 16'hf0fb;
	ans = 16'hf7a2;
	#20
	A = 16'h7705;
	B = 16'hf3d7;
	ans = 16'h7233;
	#20
	A = 16'hf439;
	B = 16'h6c01;
	ans = 16'hf272;
	#20
	A = 16'h742c;
	B = 16'h692e;
	ans = 16'h74d2;
	#20
	A = 16'hf715;
	B = 16'hf2e3;
	ans = 16'hf943;
	#20
	A = 16'he082;
	B = 16'he850;
	ans = 16'he970;
	#20
	A = 16'h72a3;
	B = 16'h74f6;
	ans = 16'h7824;
	#20
	A = 16'h737f;
	B = 16'hf3c5;
	ans = 16'he060;
	#20
	A = 16'hf3eb;
	B = 16'hf62e;
	ans = 16'hf912;
	#20
	A = 16'hf366;
	B = 16'h72ad;
	ans = 16'he5c8;
	#20
	A = 16'hf3eb;
	B = 16'hf6f7;
	ans = 16'hf976;
	#20
	A = 16'h71a0;
	B = 16'h75cc;
	ans = 16'h784e;
	#20
	A = 16'hf0f7;
	B = 16'hf6d6;
	ans = 16'hf8a9;
	#20
	A = 16'h7158;
	B = 16'hf2c0;
	ans = 16'he9a0;
	#20
	A = 16'hf733;
	B = 16'h701f;
	ans = 16'hf524;
	#20
	A = 16'hf720;
	B = 16'hf461;
	ans = 16'hf9c0;
	#20
	A = 16'h702f;
	B = 16'hf27b;
	ans = 16'hec98;
	#20
	A = 16'h735b;
	B = 16'h6607;
	ans = 16'h740e;
	#20
	A = 16'he043;
	B = 16'h70b8;
	ans = 16'h7074;
	#20
	A = 16'hf421;
	B = 16'hf3f7;
	ans = 16'hf80e;
	#20
	A = 16'h6cc2;
	B = 16'hf6ec;
	ans = 16'hf5bc;
	#20
	A = 16'hf445;
	B = 16'hedf5;
	ans = 16'hf5c2;
	#20
	A = 16'h7058;
	B = 16'h6da0;
	ans = 16'h7328;
	#20
	A = 16'h606a;
	B = 16'h763e;
	ans = 16'h7661;
	#20
	A = 16'h6471;
	B = 16'hecb3;
	ans = 16'heb2e;
	#20
	A = 16'h7713;
	B = 16'h75d1;
	ans = 16'h7a72;
	#20
	A = 16'h7566;
	B = 16'h740a;
	ans = 16'h78b8;
	#20
	A = 16'h72ce;
	B = 16'h542b;
	ans = 16'h72d6;
	#20
	A = 16'h76da;
	B = 16'h7509;
	ans = 16'h79f2;
	#20
	A = 16'hf5c8;
	B = 16'he584;
	ans = 16'hf620;
	#20
	A = 16'hda46;
	B = 16'hf5bf;
	ans = 16'hf5cc;
	#20
	A = 16'hefed;
	B = 16'h721b;
	ans = 16'h6c49;
	#20
	A = 16'h714e;
	B = 16'hf455;
	ans = 16'heeb8;
	#20
	A = 16'hf723;
	B = 16'h74c1;
	ans = 16'hf0c4;
	#20
	A = 16'h71ca;
	B = 16'h7699;
	ans = 16'h78bf;
	#20
	A = 16'hf191;
	B = 16'hf4ef;
	ans = 16'hf7b8;
	#20
	A = 16'hf48d;
	B = 16'hf53f;
	ans = 16'hf8e6;
	#20
	A = 16'h7615;
	B = 16'hf4ad;
	ans = 16'h6da0;
	#20
	A = 16'hf0cc;
	B = 16'hf1f0;
	ans = 16'hf55e;
	#20
	A = 16'h774a;
	B = 16'h6993;
	ans = 16'h77fc;
	#20
	A = 16'h741b;
	B = 16'h6b7f;
	ans = 16'h750b;
	#20
	A = 16'h6ae2;
	B = 16'hf0bd;
	ans = 16'hee09;
	#20
	A = 16'hf56e;
	B = 16'hf354;
	ans = 16'hf88c;
	#20
	A = 16'h7485;
	B = 16'h6ca8;
	ans = 16'h75af;
	#20
	A = 16'h6d76;
	B = 16'h6ef9;
	ans = 16'h7238;
	#20
	A = 16'h770f;
	B = 16'h7565;
	ans = 16'h7a3a;
	#20
	A = 16'hf4f0;
	B = 16'h602a;
	ans = 16'hf4cf;
	#20
	A = 16'hf62c;
	B = 16'h74d9;
	ans = 16'hed4c;
	#20
	A = 16'h6bc9;
	B = 16'h756b;
	ans = 16'h7664;
	#20
	A = 16'hf2f4;
	B = 16'h7094;
	ans = 16'hecc0;
	#20
	A = 16'h5924;
	B = 16'h7640;
	ans = 16'h764a;
	#20
	A = 16'hec1c;
	B = 16'h75ff;
	ans = 16'h74f8;
	#20
	A = 16'hf5ac;
	B = 16'h73d9;
	ans = 16'heefe;
	#20
	A = 16'h6c23;
	B = 16'hf194;
	ans = 16'hef05;
	#20
	A = 16'hf3a4;
	B = 16'h766b;
	ans = 16'h7132;
	#20
	A = 16'hefa5;
	B = 16'h694a;
	ans = 16'hed00;
	#20
	A = 16'hf677;
	B = 16'hf63e;
	ans = 16'hfa5a;
	#20
	A = 16'hf5fc;
	B = 16'h769d;
	ans = 16'h6908;
	#20
	A = 16'hf496;
	B = 16'h68d1;
	ans = 16'hf3f8;
	#20
	A = 16'h758f;
	B = 16'h742d;
	ans = 16'h78de;
	#20
	A = 16'hf595;
	B = 16'h7592;
	ans = 16'hd200;
	#20
	A = 16'h7266;
	B = 16'hf32a;
	ans = 16'he620;
	#20
	A = 16'hf367;
	B = 16'h6dbf;
	ans = 16'hf088;
	#20
	A = 16'hf455;
	B = 16'hee2c;
	ans = 16'hf5e0;
	#20
	A = 16'h7078;
	B = 16'h750a;
	ans = 16'h7746;
	#20
	A = 16'hf2fe;
	B = 16'hf6dd;
	ans = 16'hf92e;
	#20
	A = 16'hf013;
	B = 16'hd6b3;
	ans = 16'hf020;
	#20
	A = 16'h7520;
	B = 16'he9fe;
	ans = 16'h7460;
	#20
	A = 16'he4c7;
	B = 16'h7642;
	ans = 16'h75f6;
	#20
	A = 16'h7548;
	B = 16'h7604;
	ans = 16'h79a6;
	#20
	A = 16'h753b;
	B = 16'h6b2b;
	ans = 16'h7620;
	#20
	A = 16'hf52f;
	B = 16'h72f1;
	ans = 16'heeda;
	#20
	A = 16'h7749;
	B = 16'he2a5;
	ans = 16'h7714;
	#20
	A = 16'h6fc8;
	B = 16'h691b;
	ans = 16'h712b;
	#20
	A = 16'hf4a0;
	B = 16'he58d;
	ans = 16'hf4f9;
	#20
	A = 16'h63cf;
	B = 16'h749e;
	ans = 16'h74dc;
	#20
	A = 16'he78a;
	B = 16'hf099;
	ans = 16'hf18a;
	#20
	A = 16'heb63;
	B = 16'hf53b;
	ans = 16'hf627;
	#20
	A = 16'h7019;
	B = 16'h7028;
	ans = 16'h7420;
	#20
	A = 16'hef8d;
	B = 16'hf4b8;
	ans = 16'hf69b;
	#20
	A = 16'h73e5;
	B = 16'hf12f;
	ans = 16'h6d6c;
	#20
	A = 16'hf2ce;
	B = 16'hf497;
	ans = 16'hf7fe;
	#20
	A = 16'h6483;
	B = 16'h7283;
	ans = 16'h7313;
	#20
	A = 16'hf53b;
	B = 16'he097;
	ans = 16'hf560;
	#20
	A = 16'h7106;
	B = 16'hf62d;
	ans = 16'hf354;
	#20
	A = 16'hf718;
	B = 16'h6cd6;
	ans = 16'hf5e2;
	#20
	A = 16'h73f0;
	B = 16'hf576;
	ans = 16'hedf8;
	#20
	A = 16'h75aa;
	B = 16'h6fd8;
	ans = 16'h77a0;
	#20
	A = 16'h706a;
	B = 16'h73d8;
	ans = 16'h7621;
	#20
	A = 16'h757d;
	B = 16'hf608;
	ans = 16'he858;
	#20
	A = 16'h769a;
	B = 16'h6cbd;
	ans = 16'h77c9;
	#20
	A = 16'hf038;
	B = 16'he815;
	ans = 16'hf13d;
	#20
	A = 16'hf59d;
	B = 16'hf736;
	ans = 16'hfa6a;
	#20
	A = 16'hf536;
	B = 16'h74b7;
	ans = 16'he7f0;
	#20
	A = 16'h6a12;
	B = 16'h7294;
	ans = 16'h740c;
	#20
	A = 16'h6afa;
	B = 16'h6ed3;
	ans = 16'h7128;
	#20
	A = 16'h746d;
	B = 16'hf1c9;
	ans = 16'h6e22;
	#20
	A = 16'hf680;
	B = 16'h688a;
	ans = 16'hf5ef;
	#20
	A = 16'hf50b;
	B = 16'h7657;
	ans = 16'h6d30;
	#20
	A = 16'h73fc;
	B = 16'he131;
	ans = 16'h73a9;
	#20
	A = 16'h742b;
	B = 16'hf4be;
	ans = 16'he898;
	#20
	A = 16'hed28;
	B = 16'hf128;
	ans = 16'hf3bc;
	#20
	A = 16'hf74d;
	B = 16'hf59b;
	ans = 16'hfa74;
	#20
	A = 16'h6830;
	B = 16'h6d9e;
	ans = 16'h6fb6;
	#20
	A = 16'h7526;
	B = 16'hdff7;
	ans = 16'h7506;
	#20
	A = 16'hf6b0;
	B = 16'h71ae;
	ans = 16'hf3b2;
	#20
	A = 16'he9ad;
	B = 16'hed45;
	ans = 16'hf00e;
	#20
	A = 16'h74ce;
	B = 16'hf64b;
	ans = 16'hedf4;
	#20
	A = 16'hf4b3;
	B = 16'h65df;
	ans = 16'hf455;
	#20
	A = 16'h7457;
	B = 16'h7031;
	ans = 16'h7670;
	#20
	A = 16'h74a9;
	B = 16'hf4ba;
	ans = 16'hdc40;
	#20
	A = 16'hf70b;
	B = 16'h7523;
	ans = 16'hefa0;
	#20
	A = 16'hf2d0;
	B = 16'h75ce;
	ans = 16'h70cc;
	#20
	A = 16'h6e47;
	B = 16'h745c;
	ans = 16'h75ee;
	#20
	A = 16'hf6bc;
	B = 16'hf729;
	ans = 16'hfaf2;
	#20
	A = 16'hf4ff;
	B = 16'h7504;
	ans = 16'h5500;
	#20
	A = 16'hf22c;
	B = 16'h7042;
	ans = 16'heba8;
	#20
	A = 16'hf4eb;
	B = 16'he4ab;
	ans = 16'hf536;
	#20
	A = 16'h6f83;
	B = 16'heeb0;
	ans = 16'h6298;
	#20
	A = 16'h5f58;
	B = 16'h6a53;
	ans = 16'h6b3e;
	#20
	A = 16'heaf6;
	B = 16'hf5ea;
	ans = 16'hf6c9;
	#20
	A = 16'h7524;
	B = 16'hed00;
	ans = 16'h73c8;
	#20
	A = 16'h7006;
	B = 16'h74f3;
	ans = 16'h76f6;
	#20
	A = 16'h731d;
	B = 16'h713a;
	ans = 16'h762c;
	#20
	A = 16'h768d;
	B = 16'h73d9;
	ans = 16'h793d;
	#20
	A = 16'h6d3a;
	B = 16'hf5e9;
	ans = 16'hf49a;
	#20
	A = 16'hf4c8;
	B = 16'h75b6;
	ans = 16'h6b70;
	#20
	A = 16'hf3fb;
	B = 16'h7600;
	ans = 16'h7005;
	#20
	A = 16'hed3e;
	B = 16'h7683;
	ans = 16'h7534;
	#20
	A = 16'h74a8;
	B = 16'hf241;
	ans = 16'h6e1e;
	#20
	A = 16'h7465;
	B = 16'h76cf;
	ans = 16'h799a;
	#20
	A = 16'hf58d;
	B = 16'h6e60;
	ans = 16'hf3ea;
	#20
	A = 16'h726f;
	B = 16'h6e41;
	ans = 16'h74c8;
	#20
	A = 16'h6c51;
	B = 16'hf331;
	ans = 16'hf108;
	#20
	A = 16'h6df3;
	B = 16'hf31e;
	ans = 16'hf024;
	#20
	A = 16'h75a6;
	B = 16'hedc6;
	ans = 16'h7434;
	#20
	A = 16'h773a;
	B = 16'hf03d;
	ans = 16'h751c;
	#20
	A = 16'hf368;
	B = 16'h7141;
	ans = 16'hec4e;
	#20
	A = 16'hf014;
	B = 16'h7709;
	ans = 16'h74ff;
	#20
	A = 16'h71b9;
	B = 16'hf510;
	ans = 16'hf067;
	#20
	A = 16'hf412;
	B = 16'h76d8;
	ans = 16'h718c;
	#20
	A = 16'hf02b;
	B = 16'h7565;
	ans = 16'h729f;
	#20
	A = 16'hec1d;
	B = 16'h7171;
	ans = 16'h6ec5;
	#20
	A = 16'h71aa;
	B = 16'hf427;
	ans = 16'hed48;
	#20
	A = 16'h71b6;
	B = 16'h7055;
	ans = 16'h7506;
	#20
	A = 16'h7526;
	B = 16'h6a49;
	ans = 16'h75ef;
	#20
	A = 16'h7321;
	B = 16'hf5ea;
	ans = 16'hf0b3;
	#20
	A = 16'h76ab;
	B = 16'h7598;
	ans = 16'h7a22;
	#20
	A = 16'h6d0e;
	B = 16'hf705;
	ans = 16'hf5c2;
	#20
	A = 16'h6d6f;
	B = 16'hf55c;
	ans = 16'hf400;
	#20
	A = 16'h751a;
	B = 16'h7657;
	ans = 16'h79b8;
	#20
	A = 16'h6fad;
	B = 16'h74bc;
	ans = 16'h76a7;
	#20
	A = 16'hf456;
	B = 16'hf459;
	ans = 16'hf858;
	#20
	A = 16'h66cf;
	B = 16'hf0c7;
	ans = 16'hefda;
	#20
	A = 16'hf63e;
	B = 16'hef04;
	ans = 16'hf7ff;
	#20
	A = 16'h7196;
	B = 16'h75c3;
	ans = 16'h7847;
	#20
	A = 16'h6f2a;
	B = 16'h74c1;
	ans = 16'h768c;
	#20
	A = 16'h5e16;
	B = 16'h7491;
	ans = 16'h74a9;
	#20
	A = 16'h70e1;
	B = 16'h65e3;
	ans = 16'h719d;
	#20
	A = 16'h76e4;
	B = 16'hf12e;
	ans = 16'h744d;
	#20
	A = 16'hf1a0;
	B = 16'hf246;
	ans = 16'hf5f3;
	#20
	A = 16'hf6e5;
	B = 16'h6ead;
	ans = 16'hf53a;
	#20
	A = 16'hf18d;
	B = 16'h76e7;
	ans = 16'h7420;
	#20
	A = 16'h71c2;
	B = 16'h715b;
	ans = 16'h758e;
	#20
	A = 16'hf314;
	B = 16'hf715;
	ans = 16'hf950;
	#20
	A = 16'hf6f7;
	B = 16'hf10b;
	ans = 16'hf8be;
	#20
	A = 16'he9ca;
	B = 16'hf58e;
	ans = 16'hf647;
	#20
	A = 16'h76b8;
	B = 16'h6924;
	ans = 16'h775c;
	#20
	A = 16'he8a7;
	B = 16'h7580;
	ans = 16'h74eb;
	#20
	A = 16'hf418;
	B = 16'hee13;
	ans = 16'hf59d;
	#20
	A = 16'h773b;
	B = 16'h76e9;
	ans = 16'h7b12;
	#20
	A = 16'h7598;
	B = 16'h6446;
	ans = 16'h75dc;
	#20
	A = 16'hf2de;
	B = 16'h7403;
	ans = 16'h68a0;
	#20
	A = 16'hf131;
	B = 16'h74f1;
	ans = 16'h70b1;
	#20
	A = 16'h76e6;
	B = 16'h754b;
	ans = 16'h7a18;
	#20
	A = 16'heeff;
	B = 16'hf439;
	ans = 16'hf5f9;
	#20
	A = 16'h771a;
	B = 16'h7367;
	ans = 16'h7967;
	#20
	A = 16'h72f6;
	B = 16'hf70f;
	ans = 16'hf328;
	#20
	A = 16'h69be;
	B = 16'hee4e;
	ans = 16'heade;
	#20
	A = 16'h6819;
	B = 16'hf4bb;
	ans = 16'hf438;
	#20
	A = 16'h6f96;
	B = 16'h7101;
	ans = 16'h7466;
	#20
	A = 16'h741b;
	B = 16'h76b6;
	ans = 16'h7968;
	#20
	A = 16'hf023;
	B = 16'h759c;
	ans = 16'h7315;
	#20
	A = 16'h7310;
	B = 16'h724d;
	ans = 16'h76ae;
	#20
	A = 16'h71e3;
	B = 16'h747b;
	ans = 16'h776c;
	#20
	A = 16'h6c34;
	B = 16'h70d8;
	ans = 16'h72f2;
	#20
	A = 16'h744e;
	B = 16'hefd6;
	ans = 16'h70b1;
	#20
	A = 16'hf4e3;
	B = 16'hf568;
	ans = 16'hf926;
	#20
	A = 16'h7743;
	B = 16'h771f;
	ans = 16'h7b31;
	#20
	A = 16'h7264;
	B = 16'h6c53;
	ans = 16'h7447;
	#20
	A = 16'h7111;
	B = 16'h7308;
	ans = 16'h760c;
	#20
	A = 16'h7176;
	B = 16'h766b;
	ans = 16'h7893;
	#20
	A = 16'h7307;
	B = 16'hece1;
	ans = 16'h7096;
	#20
	A = 16'heb22;
	B = 16'hed8c;
	ans = 16'hf08e;
	#20
	A = 16'h76ef;
	B = 16'h6fa8;
	ans = 16'h786c;
	#20
	A = 16'h7116;
	B = 16'h7443;
	ans = 16'h76ce;
	#20
	A = 16'hf2ee;
	B = 16'h7485;
	ans = 16'h6c38;
	#20
	A = 16'h76f2;
	B = 16'hf735;
	ans = 16'he430;
	#20
	A = 16'hdff7;
	B = 16'hf468;
	ans = 16'hf488;
	#20
	A = 16'hf4d1;
	B = 16'hf4c6;
	ans = 16'hf8cc;
	#20
	A = 16'h713e;
	B = 16'h6d60;
	ans = 16'h73ee;
	#20
	A = 16'h7725;
	B = 16'hf683;
	ans = 16'h6910;
	#20
	A = 16'hf47d;
	B = 16'hf19f;
	ans = 16'hf74c;
	#20
	A = 16'heca3;
	B = 16'hf572;
	ans = 16'hf69b;
	#20
	A = 16'hf0c1;
	B = 16'hf095;
	ans = 16'hf4ab;
	#20
	A = 16'hf47e;
	B = 16'he84a;
	ans = 16'hf507;
	#20
	A = 16'h76c3;
	B = 16'h66d5;
	ans = 16'h7730;
	#20
	A = 16'h7410;
	B = 16'hf215;
	ans = 16'h6c16;
	#20
	A = 16'hf152;
	B = 16'h73fe;
	ans = 16'h6d58;
	#20
	A = 16'hf5ab;
	B = 16'h744b;
	ans = 16'hed80;
	#20
	A = 16'hefa2;
	B = 16'h68ff;
	ans = 16'hed22;
	#20
	A = 16'h7260;
	B = 16'h764d;
	ans = 16'h78be;
	#20
	A = 16'hf6e1;
	B = 16'h6de1;
	ans = 16'hf569;
	#20
	A = 16'hf23b;
	B = 16'h68ec;
	ans = 16'hf100;
	#20
	A = 16'hed4a;
	B = 16'h691d;
	ans = 16'he977;
	#20
	A = 16'h74f0;
	B = 16'h73bb;
	ans = 16'h7867;
	#20
	A = 16'hf4a9;
	B = 16'h74a6;
	ans = 16'hd200;
	#20
	A = 16'hf72d;
	B = 16'he932;
	ans = 16'hf7d3;
	#20
	A = 16'he640;
	B = 16'he75b;
	ans = 16'heace;
	#20
	A = 16'h72c8;
	B = 16'hf743;
	ans = 16'hf3be;
	#20
	A = 16'he042;
	B = 16'hf687;
	ans = 16'hf6a9;
	#20
	A = 16'hefc8;
	B = 16'h67a9;
	ans = 16'hedde;
	#20
	A = 16'hf3d2;
	B = 16'h7018;
	ans = 16'hef74;
	#20
	A = 16'hed9b;
	B = 16'h730f;
	ans = 16'h7042;
	#20
	A = 16'hf711;
	B = 16'hf460;
	ans = 16'hf9b8;
	#20
	A = 16'hee42;
	B = 16'hf62a;
	ans = 16'hf7ba;
	#20
	A = 16'h74d3;
	B = 16'hf4ed;
	ans = 16'hde80;
	#20
	A = 16'hf158;
	B = 16'h7641;
	ans = 16'h732a;
	#20
	A = 16'hf493;
	B = 16'h72a3;
	ans = 16'hed06;
	#20
	A = 16'h737d;
	B = 16'h6d37;
	ans = 16'h750c;
	#20
	A = 16'heb5b;
	B = 16'hf5d9;
	ans = 16'hf6c4;
	#20
	A = 16'hf035;
	B = 16'h6854;
	ans = 16'hee40;
	#20
	A = 16'h724b;
	B = 16'hec3c;
	ans = 16'h702d;
	#20
	A = 16'h7154;
	B = 16'hf663;
	ans = 16'hf372;
	#20
	A = 16'h74bb;
	B = 16'h6a1b;
	ans = 16'h757e;
	#20
	A = 16'hf72c;
	B = 16'hebf2;
	ans = 16'hf815;
	#20
	A = 16'he8d5;
	B = 16'hf66c;
	ans = 16'hf707;
	#20
	A = 16'h7576;
	B = 16'h694b;
	ans = 16'h761f;
	#20
	A = 16'h6cae;
	B = 16'headf;
	ans = 16'h64fa;
	#20
	A = 16'hf6c2;
	B = 16'h774a;
	ans = 16'h6840;
	#20
	A = 16'h7211;
	B = 16'hf014;
	ans = 16'h6bf4;
	#20
	A = 16'h72f3;
	B = 16'h6f30;
	ans = 16'h7546;
	#20
	A = 16'h7312;
	B = 16'h74f7;
	ans = 16'h7840;
	#20
	A = 16'h645a;
	B = 16'hf45a;
	ans = 16'hf414;
	#20
	A = 16'h7729;
	B = 16'h75cf;
	ans = 16'h7a7c;
	#20
	A = 16'h728e;
	B = 16'h76cf;
	ans = 16'h790b;
	#20
	A = 16'heb44;
	B = 16'he4ca;
	ans = 16'hecd4;
	#20
	A = 16'hf4e9;
	B = 16'hf2ce;
	ans = 16'hf828;
	#20
	A = 16'hf712;
	B = 16'h6425;
	ans = 16'hf6d0;
	#20
	A = 16'h74a3;
	B = 16'hf5de;
	ans = 16'hecec;
	#20
	A = 16'hf1bc;
	B = 16'h6de3;
	ans = 16'hed95;
	#20
	A = 16'h6ecb;
	B = 16'h759a;
	ans = 16'h774d;
	#20
	A = 16'h6abc;
	B = 16'h6e46;
	ans = 16'h70d2;
	#20
	A = 16'h6c3b;
	B = 16'heeaa;
	ans = 16'he8de;
	#20
	A = 16'h7408;
	B = 16'h700f;
	ans = 16'h7610;
	#20
	A = 16'h7675;
	B = 16'hf524;
	ans = 16'h6d44;
	#20
	A = 16'h7715;
	B = 16'h7542;
	ans = 16'h7a2c;
	#20
	A = 16'h75b1;
	B = 16'h7510;
	ans = 16'h7960;
	#20
	A = 16'hf72b;
	B = 16'h70bc;
	ans = 16'hf4cd;
	#20
	A = 16'h7426;
	B = 16'hf5bf;
	ans = 16'hee64;
	#20
	A = 16'hd759;
	B = 16'h75c6;
	ans = 16'h75bf;
	#20
	A = 16'hf147;
	B = 16'h6dea;
	ans = 16'heca4;
	#20
	A = 16'h66fb;
	B = 16'h6ded;
	ans = 16'h6fac;
	#20
	A = 16'he7c7;
	B = 16'h7450;
	ans = 16'h73a7;
	#20
	A = 16'hf5dc;
	B = 16'h746c;
	ans = 16'hedc0;
	#20
	A = 16'h75d6;
	B = 16'h6b58;
	ans = 16'h76c1;
	#20
	A = 16'hf1d8;
	B = 16'hf6e7;
	ans = 16'hf8ea;
	#20
	A = 16'hf6c0;
	B = 16'h741b;
	ans = 16'hf14a;
	#20
	A = 16'hf0f4;
	B = 16'h7443;
	ans = 16'h6f24;
	#20
	A = 16'h76e6;
	B = 16'h71c4;
	ans = 16'h78e4;
	#20
	A = 16'hf49c;
	B = 16'h60f0;
	ans = 16'hf474;
	#20
	A = 16'h724f;
	B = 16'he9bb;
	ans = 16'h70e0;
	#20
	A = 16'hec5d;
	B = 16'h76ed;
	ans = 16'h75d6;
	#20
	A = 16'hf5dc;
	B = 16'h735c;
	ans = 16'hf05c;
	#20
	A = 16'hf69b;
	B = 16'h73d1;
	ans = 16'hf165;
	#20
	A = 16'hf59d;
	B = 16'h7417;
	ans = 16'hee18;
	#20
	A = 16'hea85;
	B = 16'hf0ba;
	ans = 16'hf25b;
	#20
	A = 16'h7471;
	B = 16'h7060;
	ans = 16'h76a1;
	#20
	A = 16'h758a;
	B = 16'hf4c7;
	ans = 16'h6a18;
	#20
	A = 16'h69d3;
	B = 16'h6ad2;
	ans = 16'h6e52;
	#20
	A = 16'hf695;
	B = 16'hf723;
	ans = 16'hfadc;
	#20
	A = 16'h74dd;
	B = 16'hf2ae;
	ans = 16'h6e18;
	#20
	A = 16'he47b;
	B = 16'h61d0;
	ans = 16'hde4c;
	#20
	A = 16'hf678;
	B = 16'h6d23;
	ans = 16'hf52f;
	#20
	A = 16'h613d;
	B = 16'hf08c;
	ans = 16'hf038;
	#20
	A = 16'hcc6b;
	B = 16'he9b4;
	ans = 16'he9bd;
	#20
	A = 16'h6c9a;
	B = 16'hf51d;
	ans = 16'hf3ed;
	#20
	A = 16'hf31b;
	B = 16'hf4db;
	ans = 16'hf834;
	#20
	A = 16'hf5a5;
	B = 16'h728d;
	ans = 16'hf0bd;
	#20
	A = 16'hec6a;
	B = 16'hf1dc;
	ans = 16'hf408;
	#20
	A = 16'h7433;
	B = 16'h6d3e;
	ans = 16'h7582;
	#20
	A = 16'h76e1;
	B = 16'h669d;
	ans = 16'h774b;
	#20
	A = 16'hf40a;
	B = 16'hf4ec;
	ans = 16'hf87b;
	#20
	A = 16'h70c7;
	B = 16'hf427;
	ans = 16'hef0e;
	#20
	A = 16'hf192;
	B = 16'h7655;
	ans = 16'h7318;
	#20
	A = 16'h75bc;
	B = 16'h74d1;
	ans = 16'h7946;
	#20
	A = 16'h71b4;
	B = 16'h74d7;
	ans = 16'h77b1;
	#20
	A = 16'h71c2;
	B = 16'h7434;
	ans = 16'h7715;
	#20
	A = 16'h71ed;
	B = 16'hf62a;
	ans = 16'hf267;
	#20
	A = 16'hf2e6;
	B = 16'hf2c3;
	ans = 16'hf6d4;
	#20
	A = 16'h7053;
	B = 16'hf218;
	ans = 16'heb14;
	#20
	A = 16'h6d2a;
	B = 16'h7087;
	ans = 16'h731c;
	#20
	A = 16'h7522;
	B = 16'hf730;
	ans = 16'hf01c;
	#20
	A = 16'h7702;
	B = 16'hf6e5;
	ans = 16'h5f40;
	#20
	A = 16'hef75;
	B = 16'hf36f;
	ans = 16'hf595;
	#20
	A = 16'hf471;
	B = 16'h7290;
	ans = 16'heca4;
	#20
	A = 16'hf4c8;
	B = 16'h6c8e;
	ans = 16'hf349;
	#20
	A = 16'h75bb;
	B = 16'h71f7;
	ans = 16'h785b;
	#20
	A = 16'h71b5;
	B = 16'hf410;
	ans = 16'hecd6;
	#20
	A = 16'hdd54;
	B = 16'hf4fd;
	ans = 16'hf512;
	#20
	A = 16'he850;
	B = 16'h730f;
	ans = 16'h71fb;
	#20
	A = 16'h7645;
	B = 16'hf4e7;
	ans = 16'h6d78;
	#20
	A = 16'hf6fe;
	B = 16'hf274;
	ans = 16'hf91c;
	#20
	A = 16'h71b9;
	B = 16'h751f;
	ans = 16'h77fc;
	#20
	A = 16'h723b;
	B = 16'hedbb;
	ans = 16'h6ebb;
	#20
	A = 16'h7562;
	B = 16'hf4a0;
	ans = 16'h6a10;
	#20
	A = 16'h769b;
	B = 16'h762a;
	ans = 16'h7a62;
	#20
	A = 16'hf5c0;
	B = 16'h718b;
	ans = 16'hf1f5;
	#20
	A = 16'hf4dd;
	B = 16'hf50a;
	ans = 16'hf8f4;
	#20
	A = 16'hf0e2;
	B = 16'h75b3;
	ans = 16'h7284;
	#20
	A = 16'h753b;
	B = 16'h74f6;
	ans = 16'h7918;
	#20
	A = 16'hefbe;
	B = 16'h6e93;
	ans = 16'he4ac;
	#20
	A = 16'hf386;
	B = 16'h722f;
	ans = 16'he95c;
	#20
	A = 16'h7267;
	B = 16'h7622;
	ans = 16'h78ab;
	#20
	A = 16'hf1aa;
	B = 16'hef20;
	ans = 16'hf49d;
	#20
	A = 16'h7251;
	B = 16'hf17d;
	ans = 16'h66a0;
	#20
	A = 16'hf4b0;
	B = 16'h76b5;
	ans = 16'h700a;
	#20
	A = 16'hf558;
	B = 16'h66df;
	ans = 16'hf4ea;
	#20
	A = 16'h61e8;
	B = 16'h7515;
	ans = 16'h7544;
	#20
	A = 16'h7297;
	B = 16'h736e;
	ans = 16'h7702;
	#20
	A = 16'h6fe1;
	B = 16'h74ec;
	ans = 16'h76e4;
	#20
	A = 16'h7646;
	B = 16'hf2d4;
	ans = 16'h71b8;
	#20
	A = 16'hf175;
	B = 16'h6d56;
	ans = 16'hed94;
	#20
	A = 16'h69b2;
	B = 16'h7631;
	ans = 16'h76e7;
	#20
	A = 16'h7741;
	B = 16'hf51e;
	ans = 16'h7046;
	#20
	A = 16'hf59a;
	B = 16'h70ff;
	ans = 16'hf235;
	#20
	A = 16'h75df;
	B = 16'h6140;
	ans = 16'h7609;
	#20
	A = 16'h7074;
	B = 16'hf008;
	ans = 16'h62c0;
	#20
	A = 16'h7206;
	B = 16'h769a;
	ans = 16'h78ce;
	#20
	A = 16'he864;
	B = 16'he855;
	ans = 16'hec5c;
	#20
	A = 16'hf324;
	B = 16'h6f3c;
	ans = 16'hef0c;
	#20
	A = 16'hf41a;
	B = 16'h7410;
	ans = 16'hd900;
	#20
	A = 16'hf089;
	B = 16'hf56b;
	ans = 16'hf7b0;
	#20
	A = 16'hf2de;
	B = 16'heabe;
	ans = 16'hf447;
	#20
	A = 16'hf3c0;
	B = 16'h7078;
	ans = 16'hee90;
	#20
	A = 16'hf42b;
	B = 16'hf27b;
	ans = 16'hf768;
	#20
	A = 16'hf4b5;
	B = 16'hf392;
	ans = 16'hf83f;
	#20
	A = 16'hea2d;
	B = 16'heed9;
	ans = 16'hf0f8;
	#20
	A = 16'h737b;
	B = 16'h713d;
	ans = 16'h765c;
	#20
	A = 16'h75b2;
	B = 16'h674e;
	ans = 16'h7627;
	#20
	A = 16'h69cd;
	B = 16'hf1b6;
	ans = 16'hf043;
	#20
	A = 16'hf0c1;
	B = 16'h6db9;
	ans = 16'heb92;
	#20
	A = 16'hec16;
	B = 16'h771d;
	ans = 16'h7618;
	#20
	A = 16'h742a;
	B = 16'hd44a;
	ans = 16'h7426;
	#20
	A = 16'h71d2;
	B = 16'h727d;
	ans = 16'h7628;
	#20
	A = 16'h760f;
	B = 16'hf667;
	ans = 16'he580;
	#20
	A = 16'heec5;
	B = 16'h73da;
	ans = 16'h7078;
	#20
	A = 16'h75c3;
	B = 16'hf5ad;
	ans = 16'h5d80;
	#20
	A = 16'heccc;
	B = 16'h6606;
	ans = 16'hea95;
	#20
	A = 16'hf505;
	B = 16'hf40d;
	ans = 16'hf889;
	#20
	A = 16'h766a;
	B = 16'h6cf4;
	ans = 16'h77a7;
	#20
	A = 16'hf41f;
	B = 16'heb8f;
	ans = 16'hf511;
	#20
	A = 16'h74b4;
	B = 16'h7585;
	ans = 16'h791c;
	#20
	A = 16'h709d;
	B = 16'hf356;
	ans = 16'hed72;
	#20
	A = 16'h7731;
	B = 16'h72bd;
	ans = 16'h7948;
	#20
	A = 16'h74b4;
	B = 16'hf3e5;
	ans = 16'h6a0c;
	#20
	A = 16'h72a5;
	B = 16'h7562;
	ans = 16'h785a;
	#20
	A = 16'h6c31;
	B = 16'hf5f1;
	ans = 16'hf4e5;
	#20
	A = 16'h7404;
	B = 16'h73ad;
	ans = 16'h77da;
	#20
	A = 16'hf521;
	B = 16'hf0e0;
	ans = 16'hf791;
	#20
	A = 16'hf4ad;
	B = 16'hf5c3;
	ans = 16'hf938;
	#20
	A = 16'hea49;
	B = 16'hf62a;
	ans = 16'hf6f3;
	#20
	A = 16'hf287;
	B = 16'h7335;
	ans = 16'h6570;
	#20
	A = 16'h72a1;
	B = 16'hf455;
	ans = 16'hec12;
	#20
	A = 16'h6fda;
	B = 16'hdcd4;
	ans = 16'h6f8d;
	#20
	A = 16'hf3f7;
	B = 16'hf6d3;
	ans = 16'hf967;
	#20
	A = 16'hf6db;
	B = 16'hf53c;
	ans = 16'hfa0c;
	#20
	A = 16'hf5f5;
	B = 16'h74c6;
	ans = 16'hecbc;
	#20
	A = 16'h6ef2;
	B = 16'h71d1;
	ans = 16'h74a5;
	#20
	A = 16'h6e3d;
	B = 16'h7031;
	ans = 16'h7350;
	#20
	A = 16'hee17;
	B = 16'h743a;
	ans = 16'h7168;
	#20
	A = 16'h74e1;
	B = 16'h7472;
	ans = 16'h78aa;
	#20
	A = 16'hf323;
	B = 16'h7514;
	ans = 16'h6e0a;
	#20
	A = 16'h6b8d;
	B = 16'hf032;
	ans = 16'hec9e;
	#20
	A = 16'hf293;
	B = 16'h7195;
	ans = 16'he7f0;
	#20
	A = 16'hf689;
	B = 16'h746c;
	ans = 16'hf03a;
	#20
	A = 16'hf632;
	B = 16'hf116;
	ans = 16'hf85e;
	#20
	A = 16'hf1af;
	B = 16'hf45f;
	ans = 16'hf736;
	#20
	A = 16'h76b1;
	B = 16'h7379;
	ans = 16'h7937;
	#20
	A = 16'h7744;
	B = 16'he8d2;
	ans = 16'h76aa;
	#20
	A = 16'h7105;
	B = 16'h75a9;
	ans = 16'h7816;
	#20
	A = 16'h72ef;
	B = 16'he51c;
	ans = 16'h724c;
	#20
	A = 16'h6f6f;
	B = 16'h701c;
	ans = 16'h73d4;
	#20
	A = 16'he9a7;
	B = 16'hedf3;
	ans = 16'hf063;
	#20
	A = 16'he919;
	B = 16'hf15f;
	ans = 16'hf2a5;
	#20
	A = 16'h7311;
	B = 16'h747e;
	ans = 16'h7803;
	#20
	A = 16'hf512;
	B = 16'h6ec5;
	ans = 16'hf2c2;
	#20
	A = 16'hed68;
	B = 16'h7490;
	ans = 16'h726c;
	#20
	A = 16'he875;
	B = 16'h68bb;
	ans = 16'h5860;
	#20
	A = 16'h7712;
	B = 16'h6ee9;
	ans = 16'h7866;
	#20
	A = 16'hf65a;
	B = 16'hee59;
	ans = 16'hf7f0;
	#20
	A = 16'hf53f;
	B = 16'h75de;
	ans = 16'h68f8;
	#20
	A = 16'hf5df;
	B = 16'h7735;
	ans = 16'h6d58;
	#20
	A = 16'hec37;
	B = 16'h768a;
	ans = 16'h757c;
	#20
	A = 16'hf72c;
	B = 16'h7362;
	ans = 16'hf2f6;
	#20
	A = 16'h6d1e;
	B = 16'hedf5;
	ans = 16'he2b8;
	#20
	A = 16'h715b;
	B = 16'hf538;
	ans = 16'hf115;
	#20
	A = 16'h74df;
	B = 16'hf325;
	ans = 16'h6d32;
	#20
	A = 16'h5d4d;
	B = 16'hf6ea;
	ans = 16'hf6d5;
	#20
	A = 16'hf435;
	B = 16'hf29b;
	ans = 16'hf782;
	#20
	A = 16'hf0bf;
	B = 16'hf5b8;
	ans = 16'hf80c;
	#20
	A = 16'he222;
	B = 16'h7117;
	ans = 16'h70b5;
	#20
	A = 16'h7292;
	B = 16'hf4ed;
	ans = 16'hee90;
	#20
	A = 16'hf1cc;
	B = 16'hf571;
	ans = 16'hf82c;
	#20
	A = 16'hf3d9;
	B = 16'h75b7;
	ans = 16'h6f2a;
	#20
	A = 16'h7430;
	B = 16'h747d;
	ans = 16'h7856;
	#20
	A = 16'h6d6d;
	B = 16'h76fb;
	ans = 16'h782b;
	#20
	A = 16'h7405;
	B = 16'hf732;
	ans = 16'hf25a;
	#20
	A = 16'hf555;
	B = 16'h76d2;
	ans = 16'h6df4;
	#20
	A = 16'h722e;
	B = 16'h76cd;
	ans = 16'h78f2;
	#20
	A = 16'h71bd;
	B = 16'h72b2;
	ans = 16'h7638;
	#20
	A = 16'h6d26;
	B = 16'h761a;
	ans = 16'h7764;
	#20
	A = 16'hf383;
	B = 16'hf6af;
	ans = 16'hf938;
	#20
	A = 16'hf5e1;
	B = 16'h6b2e;
	ans = 16'hf4fb;
	#20
	A = 16'h75f1;
	B = 16'hf55c;
	ans = 16'h68a8;
	#20
	A = 16'h76fa;
	B = 16'h7511;
	ans = 16'h7a06;
	#20
	A = 16'hf29d;
	B = 16'hf6a3;
	ans = 16'hf8f9;
	#20
	A = 16'h71a2;
	B = 16'hf561;
	ans = 16'hf120;
	#20
	A = 16'hf447;
	B = 16'h6f43;
	ans = 16'hf0ec;
	#20
	A = 16'h74cf;
	B = 16'h6db7;
	ans = 16'h763d;
	#20
	A = 16'hed4c;
	B = 16'hf6a1;
	ans = 16'hf7f4;
	#20
	A = 16'hf420;
	B = 16'hf73e;
	ans = 16'hf9af;
	#20
	A = 16'he59c;
	B = 16'hf497;
	ans = 16'hf4f1;
	#20
	A = 16'hf610;
	B = 16'h71d6;
	ans = 16'hf24a;
	#20
	A = 16'hf2c4;
	B = 16'h67e0;
	ans = 16'hf1c8;
	#20
	A = 16'hf24f;
	B = 16'h6e0d;
	ans = 16'hee91;
	#20
	A = 16'h7015;
	B = 16'hf1d7;
	ans = 16'heb08;
	#20
	A = 16'h68e2;
	B = 16'h7466;
	ans = 16'h7502;
	#20
	A = 16'hf10a;
	B = 16'hec12;
	ans = 16'hf313;
	#20
	A = 16'hf324;
	B = 16'h758e;
	ans = 16'h6ff0;
	#20
	A = 16'heb3b;
	B = 16'h618b;
	ans = 16'he9d8;
	#20
	A = 16'h741d;
	B = 16'h7196;
	ans = 16'h76e8;
	#20
	A = 16'h7560;
	B = 16'hf522;
	ans = 16'h63c0;
	#20
	A = 16'h72fb;
	B = 16'hf346;
	ans = 16'he0b0;
	#20
	A = 16'h5090;
	B = 16'he8fb;
	ans = 16'he8e9;
	#20
	A = 16'h76b7;
	B = 16'he86a;
	ans = 16'h762a;
	#20
	A = 16'hf530;
	B = 16'h66bd;
	ans = 16'hf4c4;
	#20
	A = 16'h701a;
	B = 16'he961;
	ans = 16'h6d84;
	#20
	A = 16'h756e;
	B = 16'h6ebe;
	ans = 16'h771e;
	#20
	A = 16'hef8e;
	B = 16'h7499;
	ans = 16'h716b;
	#20
	A = 16'he43e;
	B = 16'hf21e;
	ans = 16'hf2a6;
	#20
	A = 16'h6c4d;
	B = 16'h7360;
	ans = 16'h74c3;
	#20
	A = 16'h7521;
	B = 16'hec1f;
	ans = 16'h7419;
	#20
	A = 16'hf1d8;
	B = 16'hf216;
	ans = 16'hf5f7;
	#20
	A = 16'hefd6;
	B = 16'hd856;
	ans = 16'heff9;
	#20
	A = 16'h75e4;
	B = 16'hed43;
	ans = 16'h7493;
	#20
	A = 16'h68f9;
	B = 16'h6375;
	ans = 16'h6ad6;
	#20
	A = 16'h74af;
	B = 16'hf643;
	ans = 16'hee50;
	#20
	A = 16'h5e88;
	B = 16'hf68c;
	ans = 16'hf672;
	#20
	A = 16'hec37;
	B = 16'h714f;
	ans = 16'h6e67;
	#20
	A = 16'h746e;
	B = 16'hf362;
	ans = 16'h69e8;
	#20
	A = 16'hef1e;
	B = 16'h6d9e;
	ans = 16'he600;
	#20
	A = 16'h7658;
	B = 16'hf07e;
	ans = 16'h7419;
	#20
	A = 16'h774e;
	B = 16'h75b7;
	ans = 16'h7a82;
	#20
	A = 16'he455;
	B = 16'h7525;
	ans = 16'h74e0;
	#20
	A = 16'h74d9;
	B = 16'hf39b;
	ans = 16'h6c2e;
	#20
	A = 16'h7454;
	B = 16'heda1;
	ans = 16'h71d8;
	#20
	A = 16'hf5a8;
	B = 16'hf187;
	ans = 16'hf836;
	#20
	A = 16'h6eeb;
	B = 16'hee05;
	ans = 16'h6330;
	#20
	A = 16'h7428;
	B = 16'h6bc8;
	ans = 16'h7521;
	#20
	A = 16'h711d;
	B = 16'h76e7;
	ans = 16'h78bb;
	#20
	A = 16'hf627;
	B = 16'he760;
	ans = 16'hf69d;
	#20
	A = 16'hf0d3;
	B = 16'hf58b;
	ans = 16'hf7f4;
	#20
	A = 16'hf2cb;
	B = 16'he666;
	ans = 16'hf398;
	#20
	A = 16'h68b3;
	B = 16'he4d6;
	ans = 16'h6490;
	#20
	A = 16'h6985;
	B = 16'hf32b;
	ans = 16'hf1ca;
	#20
	A = 16'h6678;
	B = 16'hec30;
	ans = 16'he924;
	#20
	A = 16'h5cd3;
	B = 16'h72a0;
	ans = 16'h72c7;
	#20
	A = 16'h7291;
	B = 16'hf634;
	ans = 16'hf1d7;
	#20
	A = 16'h6f31;
	B = 16'hf3aa;
	ans = 16'hf012;
	#20
	A = 16'hf0ad;
	B = 16'hf493;
	ans = 16'hf6ea;
	#20
	A = 16'hf0a5;
	B = 16'h752c;
	ans = 16'h71b3;
	#20
	A = 16'h6819;
	B = 16'heb9e;
	ans = 16'he70a;
	#20
	A = 16'h76a7;
	B = 16'h6d39;
	ans = 16'h77f5;
	#20
	A = 16'hf29e;
	B = 16'h6c8e;
	ans = 16'hf057;
	#20
	A = 16'h773d;
	B = 16'h73d1;
	ans = 16'h7993;
	#20
	A = 16'hf371;
	B = 16'h7697;
	ans = 16'h71bd;
	#20
	A = 16'hf576;
	B = 16'hf40f;
	ans = 16'hf8c2;
	#20
	A = 16'hef99;
	B = 16'h71be;
	ans = 16'h6bc6;
	#20
	A = 16'he676;
	B = 16'h71a1;
	ans = 16'h70d2;
	#20
	A = 16'h752c;
	B = 16'hf266;
	ans = 16'h6fe4;
	#20
	A = 16'hee8e;
	B = 16'hf56a;
	ans = 16'hf70e;
	#20
	A = 16'h75a2;
	B = 16'he810;
	ans = 16'h7520;
	#20
	A = 16'h7559;
	B = 16'h75c8;
	ans = 16'h7990;
	#20
	A = 16'hf6bb;
	B = 16'hf738;
	ans = 16'hfafa;
	#20
	A = 16'hf4f8;
	B = 16'h6d74;
	ans = 16'hf336;
	#20
	A = 16'h7164;
	B = 16'hf2f8;
	ans = 16'hea50;
	#20
	A = 16'h74b2;
	B = 16'h7531;
	ans = 16'h78f2;
	#20
	A = 16'hf626;
	B = 16'h76a5;
	ans = 16'h67f0;
	#20
	A = 16'he2be;
	B = 16'h74e8;
	ans = 16'h74b2;
	#20
	A = 16'he981;
	B = 16'h760a;
	ans = 16'h755a;
	#20
	A = 16'h71d8;
	B = 16'h74bb;
	ans = 16'h77a7;
	#20
	A = 16'hf3ab;
	B = 16'hf12c;
	ans = 16'hf66c;
	#20
	A = 16'h6db8;
	B = 16'hefa3;
	ans = 16'he7ac;
	#20
	A = 16'hf50d;
	B = 16'hf1fd;
	ans = 16'hf806;
	#20
	A = 16'hf11f;
	B = 16'hf4a9;
	ans = 16'hf738;
	#20
	A = 16'hf0ff;
	B = 16'hdf21;
	ans = 16'hf138;
	#20
	A = 16'h76e3;
	B = 16'h7136;
	ans = 16'h78bf;
	#20
	A = 16'hc848;
	B = 16'h72d2;
	ans = 16'h72d1;
	#20
	A = 16'hefa9;
	B = 16'h679c;
	ans = 16'hedc2;
	#20
	A = 16'hf69d;
	B = 16'hed11;
	ans = 16'hf7e1;
	#20
	A = 16'hf6f7;
	B = 16'h7106;
	ans = 16'hf474;
	#20
	A = 16'hf24c;
	B = 16'hebba;
	ans = 16'hf41d;
	#20
	A = 16'hf4f1;
	B = 16'he828;
	ans = 16'hf576;
	#20
	A = 16'hf406;
	B = 16'hf4ce;
	ans = 16'hf86a;
	#20
	A = 16'hf753;
	B = 16'hee73;
	ans = 16'hf878;
	#20
	A = 16'h748a;
	B = 16'hf680;
	ans = 16'hefd8;
	#20
	A = 16'hf306;
	B = 16'h7660;
	ans = 16'h71ba;
	#20
	A = 16'hedca;
	B = 16'h65e7;
	ans = 16'hec50;
	#20
	A = 16'hf4bf;
	B = 16'heff1;
	ans = 16'hf6bb;
	#20
	A = 16'hef52;
	B = 16'he9c2;
	ans = 16'hf11a;
	#20
	A = 16'hec1b;
	B = 16'he502;
	ans = 16'hed5c;
	#20
	A = 16'h75ae;
	B = 16'hecc0;
	ans = 16'h747e;
	#20
	A = 16'hf67e;
	B = 16'h7631;
	ans = 16'he4d0;
	#20
	A = 16'hf146;
	B = 16'h648d;
	ans = 16'hf0b4;
	#20
	A = 16'he8cc;
	B = 16'hec97;
	ans = 16'heefd;
	#20
	A = 16'h5d3e;
	B = 16'h5d1a;
	ans = 16'h612c;
	#20
	A = 16'h6f16;
	B = 16'h75ee;
	ans = 16'h77b4;
	#20
	A = 16'h7673;
	B = 16'h7088;
	ans = 16'h785c;
	#20
	A = 16'hf445;
	B = 16'hed70;
	ans = 16'hf5a1;
	#20
	A = 16'hf62c;
	B = 16'hecff;
	ans = 16'hf76c;
	#20
	A = 16'hf4a5;
	B = 16'hee1c;
	ans = 16'hf62c;
	#20
	A = 16'hf6be;
	B = 16'h76df;
	ans = 16'h6020;
	#20
	A = 16'he51b;
	B = 16'h773d;
	ans = 16'h76eb;
	#20
	A = 16'hee3c;
	B = 16'h7138;
	ans = 16'h6c34;
	#20
	A = 16'h686a;
	B = 16'h76c9;
	ans = 16'h7756;
	#20
	A = 16'hee15;
	B = 16'he3a7;
	ans = 16'hef0a;
	#20
	A = 16'h6d41;
	B = 16'h71d6;
	ans = 16'h743b;
	#20
	A = 16'he7c6;
	B = 16'hf639;
	ans = 16'hf6b5;
	#20
	A = 16'h727b;
	B = 16'h74e0;
	ans = 16'h780f;
	#20
	A = 16'h6efc;
	B = 16'h7528;
	ans = 16'h76e7;
	#20
	A = 16'h7582;
	B = 16'h70b2;
	ans = 16'h77db;
	#20
	A = 16'hf46d;
	B = 16'h7273;
	ans = 16'hecce;
	#20
	A = 16'h5667;
	B = 16'h7382;
	ans = 16'h738f;
	#20
	A = 16'hf5cc;
	B = 16'h7259;
	ans = 16'hf13f;
	#20
	A = 16'h74f9;
	B = 16'hf702;
	ans = 16'hf012;
	#20
	A = 16'h74d3;
	B = 16'he6c7;
	ans = 16'h7467;
	#20
	A = 16'hf552;
	B = 16'hedd4;
	ans = 16'hf6c7;
	#20
	A = 16'hf59f;
	B = 16'h6e54;
	ans = 16'hf40a;
	#20
	A = 16'hf476;
	B = 16'h769b;
	ans = 16'h704a;
	#20
	A = 16'heda4;
	B = 16'hf4bf;
	ans = 16'hf628;
	#20
	A = 16'h74c5;
	B = 16'h7540;
	ans = 16'h7902;
	#20
	A = 16'hee24;
	B = 16'h72c2;
	ans = 16'h6f60;
	#20
	A = 16'h74a8;
	B = 16'hf36a;
	ans = 16'h6b98;
	#20
	A = 16'hf5b4;
	B = 16'hf6d7;
	ans = 16'hfa46;
	#20
	A = 16'h772d;
	B = 16'hf057;
	ans = 16'h7502;
	#20
	A = 16'h6de0;
	B = 16'hed18;
	ans = 16'h6240;
	#20
	A = 16'hf28c;
	B = 16'he699;
	ans = 16'hf35f;
	#20
	A = 16'hecc8;
	B = 16'h7561;
	ans = 16'h742f;
	#20
	A = 16'h718f;
	B = 16'hf377;
	ans = 16'heba0;
	#20
	A = 16'hf1e4;
	B = 16'hf013;
	ans = 16'hf4fc;
	#20
	A = 16'h7498;
	B = 16'h6c82;
	ans = 16'h75b8;
	#20
	A = 16'hf25a;
	B = 16'hf302;
	ans = 16'hf6ae;
	#20
	A = 16'h70bf;
	B = 16'h6b42;
	ans = 16'h7290;
	#20
	A = 16'hf537;
	B = 16'hf496;
	ans = 16'hf8e6;
	#20
	A = 16'hddb0;
	B = 16'hed3e;
	ans = 16'hed99;
	#20
	A = 16'h767b;
	B = 16'hec64;
	ans = 16'h7562;
	#20
	A = 16'hf661;
	B = 16'h6f09;
	ans = 16'hf49f;
	#20
	A = 16'h7741;
	B = 16'h7283;
	ans = 16'h7941;
	#20
	A = 16'h75c5;
	B = 16'h7659;
	ans = 16'h7a0f;
	#20
	A = 16'h700a;
	B = 16'hf5f2;
	ans = 16'hf3da;
	#20
	A = 16'h76e5;
	B = 16'hf6a5;
	ans = 16'h6400;
	#20
	A = 16'h74d4;
	B = 16'hf71a;
	ans = 16'hf08c;
	#20
	A = 16'h6a6c;
	B = 16'h74c6;
	ans = 16'h7594;
	#20
	A = 16'h6ec4;
	B = 16'hf3c3;
	ans = 16'hf061;
	#20
	A = 16'h714f;
	B = 16'h7441;
	ans = 16'h76e8;
	#20
	A = 16'h6c16;
	B = 16'h76a4;
	ans = 16'h77aa;
	#20
	A = 16'hf56c;
	B = 16'h76f8;
	ans = 16'h6e30;
	#20
	A = 16'hf2c6;
	B = 16'h7605;
	ans = 16'h7144;
	#20
	A = 16'h6f12;
	B = 16'he7bb;
	ans = 16'h6d23;
	#20
	A = 16'heb34;
	B = 16'h757e;
	ans = 16'h7498;
	#20
	A = 16'h72e8;
	B = 16'h7016;
	ans = 16'h757f;
	#20
	A = 16'hf311;
	B = 16'hf3fd;
	ans = 16'hf787;
	#20
	A = 16'h76d3;
	B = 16'h76cf;
	ans = 16'h7ad1;
	#20
	A = 16'hf2f9;
	B = 16'hf05c;
	ans = 16'hf5aa;
	#20
	A = 16'hede0;
	B = 16'h74e0;
	ans = 16'h72d0;
	#20
	A = 16'h73f4;
	B = 16'h719c;
	ans = 16'h76c8;
	#20
	A = 16'h7084;
	B = 16'h7554;
	ans = 16'h7796;
	#20
	A = 16'hf415;
	B = 16'hf6c0;
	ans = 16'hf96a;
	#20
	A = 16'h7053;
	B = 16'h7681;
	ans = 16'h7855;
	#20
	A = 16'he503;
	B = 16'hedd2;
	ans = 16'hef13;
	#20
	A = 16'hf04a;
	B = 16'h72e2;
	ans = 16'h6d30;
	#20
	A = 16'hf2f9;
	B = 16'h7391;
	ans = 16'h64c0;
	#20
	A = 16'he383;
	B = 16'h73c7;
	ans = 16'h734f;
	#20
	A = 16'h6a18;
	B = 16'heb30;
	ans = 16'he060;
	#20
	A = 16'h71de;
	B = 16'h75db;
	ans = 16'h7865;
	#20
	A = 16'h756c;
	B = 16'h6c26;
	ans = 16'h7676;
	#20
	A = 16'he99b;
	B = 16'hf33d;
	ans = 16'hf452;
	#20
	A = 16'h763f;
	B = 16'h75a3;
	ans = 16'h79f1;
	#20
	A = 16'h7713;
	B = 16'he2f6;
	ans = 16'h76db;
	#20
	A = 16'hed19;
	B = 16'h745a;
	ans = 16'h7228;
	#20
	A = 16'he683;
	B = 16'h7551;
	ans = 16'h74e9;
	#20
	A = 16'hee57;
	B = 16'hf09f;
	ans = 16'hf3ca;
	#20
	A = 16'hf403;
	B = 16'heb54;
	ans = 16'hf4ee;
	#20
	A = 16'hf592;
	B = 16'hf6d6;
	ans = 16'hfa34;
	#20
	A = 16'heb90;
	B = 16'he7f6;
	ans = 16'hedc6;
	#20
	A = 16'h6922;
	B = 16'hf325;
	ans = 16'hf1dc;
	#20
	A = 16'h76af;
	B = 16'hf460;
	ans = 16'h709e;
	#20
	A = 16'h6a4e;
	B = 16'h71a2;
	ans = 16'h7336;
	#20
	A = 16'h73dd;
	B = 16'h75ad;
	ans = 16'h78ce;
	#20
	A = 16'h7505;
	B = 16'hf415;
	ans = 16'h6b80;
	#20
	A = 16'he989;
	B = 16'h743c;
	ans = 16'h7316;
	#20
	A = 16'h771d;
	B = 16'h76ab;
	ans = 16'h7ae4;
	#20
	A = 16'h7523;
	B = 16'hf5a4;
	ans = 16'he808;
	#20
	A = 16'hecf8;
	B = 16'hf265;
	ans = 16'hf470;
	#20
	A = 16'hf2e9;
	B = 16'h6f1a;
	ans = 16'heeb8;
	#20
	A = 16'h764f;
	B = 16'h7653;
	ans = 16'h7a51;
	#20
	A = 16'h74c2;
	B = 16'hf4b6;
	ans = 16'h5a00;
	#20
	A = 16'h7508;
	B = 16'hf095;
	ans = 16'h717b;
	#20
	A = 16'h7668;
	B = 16'hf61b;
	ans = 16'h64d0;
	#20
	A = 16'hf130;
	B = 16'hec0d;
	ans = 16'hf336;
	#20
	A = 16'h7591;
	B = 16'hf4fc;
	ans = 16'h68a8;
	#20
	A = 16'h771f;
	B = 16'hf19c;
	ans = 16'h7451;
	#20
	A = 16'hf414;
	B = 16'h733d;
	ans = 16'he758;
	#20
	A = 16'hf4e3;
	B = 16'hf596;
	ans = 16'hf93c;
	#20
	A = 16'he72c;
	B = 16'h6be3;
	ans = 16'h684d;
	#20
	A = 16'hf4ea;
	B = 16'h702b;
	ans = 16'hf1a9;
	#20
	A = 16'h6f94;
	B = 16'h7501;
	ans = 16'h76e6;
	#20
	A = 16'h7060;
	B = 16'hefe8;
	ans = 16'h62c0;
	#20
	A = 16'h713b;
	B = 16'hf196;
	ans = 16'he1b0;
	#20
	A = 16'he41f;
	B = 16'h705e;
	ans = 16'h6fb4;
	#20
	A = 16'he9a7;
	B = 16'hf26a;
	ans = 16'hf3d4;
	#20
	A = 16'hed34;
	B = 16'hf3e1;
	ans = 16'hf53e;
	#20
	A = 16'hf692;
	B = 16'hea3e;
	ans = 16'hf75a;
	#20
	A = 16'hf5cc;
	B = 16'hf54b;
	ans = 16'hf98c;
	#20
	A = 16'hf0e7;
	B = 16'hf513;
	ans = 16'hf786;
	#20
	A = 16'hf6e3;
	B = 16'h70b4;
	ans = 16'hf489;
	#20
	A = 16'hec11;
	B = 16'he83d;
	ans = 16'hee30;
	#20
	A = 16'hf485;
	B = 16'h75ce;
	ans = 16'h6d24;
	#20
	A = 16'h6e2b;
	B = 16'hf035;
	ans = 16'he87e;
	#20
	A = 16'h75eb;
	B = 16'h6e18;
	ans = 16'h7771;
	#20
	A = 16'hf4a3;
	B = 16'hf2f7;
	ans = 16'hf80f;
	#20
	A = 16'hef9c;
	B = 16'he839;
	ans = 16'hf0dc;
	#20
	A = 16'he5c5;
	B = 16'hf4e2;
	ans = 16'hf53e;
	#20
	A = 16'h6fd4;
	B = 16'h771a;
	ans = 16'h7888;
	#20
	A = 16'hf559;
	B = 16'h650a;
	ans = 16'hf508;
	#20
	A = 16'h7594;
	B = 16'hf705;
	ans = 16'hedc4;
	#20
	A = 16'h6cf6;
	B = 16'he3bc;
	ans = 16'h6bfd;
	#20
	A = 16'h7281;
	B = 16'h746f;
	ans = 16'h77b0;
	#20
	A = 16'hf0b1;
	B = 16'hf734;
	ans = 16'hf8c6;
	#20
	A = 16'hf572;
	B = 16'hd98c;
	ans = 16'hf57d;
	#20
	A = 16'h6f21;
	B = 16'hf635;
	ans = 16'hf46d;
	#20
	A = 16'h6f9c;
	B = 16'h7489;
	ans = 16'h7670;
	#20
	A = 16'h74fd;
	B = 16'h6c76;
	ans = 16'h761a;
	#20
	A = 16'h7423;
	B = 16'he289;
	ans = 16'h73dd;
	#20
	A = 16'hf506;
	B = 16'h6d41;
	ans = 16'hf36c;
	#20
	A = 16'hf691;
	B = 16'h7388;
	ans = 16'hf19a;
	#20
	A = 16'h7333;
	B = 16'hf497;
	ans = 16'hebec;
	#20
	A = 16'hf6ee;
	B = 16'h6f59;
	ans = 16'hf518;
	#20
	A = 16'h7655;
	B = 16'hf52d;
	ans = 16'h6ca0;
	#20
	A = 16'h76e0;
	B = 16'h6c29;
	ans = 16'h77ea;
	#20
	A = 16'hedd3;
	B = 16'h73c2;
	ans = 16'h70d8;
	#20
	A = 16'h73aa;
	B = 16'hf751;
	ans = 16'hf2f8;
	#20
	A = 16'hf277;
	B = 16'h7195;
	ans = 16'he710;
	#20
	A = 16'hf13b;
	B = 16'he919;
	ans = 16'hf281;
	#20
	A = 16'h7022;
	B = 16'h75c9;
	ans = 16'h77da;
	#20
	A = 16'hf36c;
	B = 16'h759c;
	ans = 16'h6f98;
	#20
	A = 16'h7647;
	B = 16'h7655;
	ans = 16'h7a4e;
	#20
	A = 16'h7451;
	B = 16'hf463;
	ans = 16'hdc80;
	#20
	A = 16'hf075;
	B = 16'hf534;
	ans = 16'hf76e;
	#20
	A = 16'hf4f1;
	B = 16'h763f;
	ans = 16'h6d38;
	#20
	A = 16'hf56f;
	B = 16'hef8d;
	ans = 16'hf752;
	#20
	A = 16'h75c5;
	B = 16'hf396;
	ans = 16'h6fe8;
	#20
	A = 16'hf595;
	B = 16'hee22;
	ans = 16'hf71e;
	#20
	A = 16'h6a67;
	B = 16'h7712;
	ans = 16'h77df;
	#20
	A = 16'h7322;
	B = 16'h7518;
	ans = 16'h7854;
	#20
	A = 16'h7423;
	B = 16'h7600;
	ans = 16'h7912;
	#20
	A = 16'hf738;
	B = 16'h7291;
	ans = 16'hf3df;
	#20
	A = 16'hef09;
	B = 16'hf582;
	ans = 16'hf744;
	#20
	A = 16'h7091;
	B = 16'h7514;
	ans = 16'h775c;
	#20
	A = 16'h73ca;
	B = 16'h7059;
	ans = 16'h7612;
	#20
	A = 16'h7449;
	B = 16'h76ce;
	ans = 16'h798c;
	#20
	A = 16'hf5ec;
	B = 16'h73fc;
	ans = 16'hefb8;
	#20
	A = 16'h7657;
	B = 16'h6a02;
	ans = 16'h7717;
	#20
	A = 16'h72e2;
	B = 16'hf538;
	ans = 16'hef1c;
	#20
	A = 16'h6e26;
	B = 16'hf2c8;
	ans = 16'hef6a;
	#20
	A = 16'h7026;
	B = 16'h6e8d;
	ans = 16'h736c;
	#20
	A = 16'hf427;
	B = 16'h72a6;
	ans = 16'heaa0;
	#20
	A = 16'h7066;
	B = 16'h6f75;
	ans = 16'h7410;
	#20
	A = 16'hf254;
	B = 16'he8a7;
	ans = 16'hf37e;
	#20
	A = 16'h74ba;
	B = 16'h718e;
	ans = 16'h7781;
	#20
	A = 16'h714d;
	B = 16'h76c1;
	ans = 16'h78b4;
	#20
	A = 16'hf088;
	B = 16'hf54f;
	ans = 16'hf793;
	#20
	A = 16'h753e;
	B = 16'hf223;
	ans = 16'h7059;
	#20
	A = 16'h7626;
	B = 16'he482;
	ans = 16'h75de;
	#20
	A = 16'hf5f3;
	B = 16'hf58d;
	ans = 16'hf9c0;
	#20
	A = 16'h7602;
	B = 16'h7070;
	ans = 16'h781d;
	#20
	A = 16'h760d;
	B = 16'h7028;
	ans = 16'h7810;
	#20
	A = 16'heca9;
	B = 16'hf45e;
	ans = 16'hf588;
	#20
	A = 16'hf0a1;
	B = 16'hf410;
	ans = 16'hf660;
	#20
	A = 16'h7536;
	B = 16'h767f;
	ans = 16'h79da;
	#20
	A = 16'hf636;
	B = 16'hf6b9;
	ans = 16'hfa78;
	#20
	A = 16'hf087;
	B = 16'h69ce;
	ans = 16'hee27;
	#20
	A = 16'h741f;
	B = 16'h743b;
	ans = 16'h782d;
	#20
	A = 16'h7598;
	B = 16'h749c;
	ans = 16'h791a;
	#20
	A = 16'hf6f3;
	B = 16'he786;
	ans = 16'hf76b;
	#20
	A = 16'hf316;
	B = 16'hf03e;
	ans = 16'hf5aa;
	#20
	A = 16'h7451;
	B = 16'h69b6;
	ans = 16'h7508;
	#20
	A = 16'hf2ef;
	B = 16'hed3a;
	ans = 16'hf4c6;
	#20
	A = 16'hf661;
	B = 16'hf620;
	ans = 16'hfa40;
	#20
	A = 16'he4a7;
	B = 16'h701a;
	ans = 16'h6f0a;
	#20
	A = 16'h7561;
	B = 16'hee40;
	ans = 16'h73a2;
	#20
	A = 16'hef27;
	B = 16'hf457;
	ans = 16'hf621;
	#20
	A = 16'h6ebc;
	B = 16'hef9d;
	ans = 16'he308;
	#20
	A = 16'h769e;
	B = 16'hf6b6;
	ans = 16'hde00;
	#20
	A = 16'hde69;
	B = 16'hf5a5;
	ans = 16'hf5bf;
	#20
	A = 16'hf6d3;
	B = 16'hf6b3;
	ans = 16'hfac3;
	#20
	A = 16'hf1e7;
	B = 16'hf4d5;
	ans = 16'hf7c8;
	#20
	A = 16'h7516;
	B = 16'hf601;
	ans = 16'heb58;
	#20
	A = 16'h74d7;
	B = 16'h75b2;
	ans = 16'h7944;
	#20
	A = 16'h7429;
	B = 16'hf3b2;
	ans = 16'h6500;
	#20
	A = 16'hee65;
	B = 16'hf662;
	ans = 16'hf7fb;
	#20
	A = 16'hef69;
	B = 16'h7036;
	ans = 16'h640c;
	#20
	A = 16'h6114;
	B = 16'h7443;
	ans = 16'h746c;
	#20
	A = 16'hf455;
	B = 16'hf31a;
	ans = 16'hf7e2;
	#20
	A = 16'hf23d;
	B = 16'h7096;
	ans = 16'hea9c;
	#20
	A = 16'h67d2;
	B = 16'h6c5a;
	ans = 16'h6e4e;
	#20
	A = 16'h6e40;
	B = 16'h7521;
	ans = 16'h76b1;
	#20
	A = 16'hf5a1;
	B = 16'h70a8;
	ans = 16'hf29a;
	#20
	A = 16'hee47;
	B = 16'hf19f;
	ans = 16'hf461;
	#20
	A = 16'h704b;
	B = 16'heff1;
	ans = 16'h6128;
	#20
	A = 16'h7552;
	B = 16'h7318;
	ans = 16'h786f;
	#20
	A = 16'h6c78;
	B = 16'h745a;
	ans = 16'h7578;
	#20
	A = 16'h4d07;
	B = 16'h7238;
	ans = 16'h723b;
	#20
	A = 16'h75db;
	B = 16'h700d;
	ans = 16'h77e2;
	#20
	A = 16'hf5f8;
	B = 16'hf1c5;
	ans = 16'hf86d;
	#20
	A = 16'h7181;
	B = 16'hf632;
	ans = 16'hf2e3;
	#20
	A = 16'hdc15;
	B = 16'hf5b4;
	ans = 16'hf5c4;
	#20
	A = 16'hf74c;
	B = 16'hedaf;
	ans = 16'hf85c;
	#20
	A = 16'h6cc3;
	B = 16'hf53d;
	ans = 16'hf40c;
	#20
	A = 16'hece0;
	B = 16'hedac;
	ans = 16'hf146;
	#20
	A = 16'h7024;
	B = 16'he2de;
	ans = 16'h6f6c;
	#20
	A = 16'hf5aa;
	B = 16'h6ec8;
	ans = 16'hf3f0;
	#20
	A = 16'hf5c9;
	B = 16'hf45f;
	ans = 16'hf914;
	#20
	A = 16'hebb9;
	B = 16'hebb1;
	ans = 16'hefb5;
	#20
	A = 16'h6ca6;
	B = 16'h6ca1;
	ans = 16'h70a4;
	#20
	A = 16'hf419;
	B = 16'h70d7;
	ans = 16'heeb6;
	#20
	A = 16'h7656;
	B = 16'h74cd;
	ans = 16'h7992;
	#20
	A = 16'hf62e;
	B = 16'hf464;
	ans = 16'hf949;
	#20
	A = 16'hf441;
	B = 16'hf724;
	ans = 16'hf9b2;
	#20
	A = 16'h6d3c;
	B = 16'h7125;
	ans = 16'h73c3;
	#20
	A = 16'h6aac;
	B = 16'hf0df;
	ans = 16'hee68;
	#20
	A = 16'hf42f;
	B = 16'h70eb;
	ans = 16'heee6;
	#20
	A = 16'h6a86;
	B = 16'h7266;
	ans = 16'h7404;
	#20
	A = 16'hf4d5;
	B = 16'hf511;
	ans = 16'hf8f3;
	#20
	A = 16'h74c4;
	B = 16'h6f23;
	ans = 16'h768d;
	#20
	A = 16'h747f;
	B = 16'h743b;
	ans = 16'h785d;
	#20
	A = 16'hef90;
	B = 16'hf138;
	ans = 16'hf480;
	#20
	A = 16'h6f06;
	B = 16'h71b8;
	ans = 16'h749e;
	#20
	A = 16'h773d;
	B = 16'h6ed1;
	ans = 16'h7879;
	#20
	A = 16'hef68;
	B = 16'h6a36;
	ans = 16'hec4d;
	#20
	A = 16'h74ef;
	B = 16'hf299;
	ans = 16'h6e8a;
	#20
	A = 16'h6996;
	B = 16'h7495;
	ans = 16'h7548;
	#20
	A = 16'hf24f;
	B = 16'hf553;
	ans = 16'hf83d;
	#20
	A = 16'h7499;
	B = 16'hed73;
	ans = 16'h7278;
	#20
	A = 16'hf122;
	B = 16'h75f1;
	ans = 16'h72c0;
	#20
	A = 16'hedb1;
	B = 16'heedf;
	ans = 16'hf248;
	#20
	A = 16'hee42;
	B = 16'hf536;
	ans = 16'hf6c6;
	#20
	A = 16'h7736;
	B = 16'hf059;
	ans = 16'h750a;
	#20
	A = 16'h76c9;
	B = 16'h7075;
	ans = 16'h7882;
	#20
	A = 16'h72e7;
	B = 16'hec10;
	ans = 16'h70df;
	#20
	A = 16'hf53a;
	B = 16'h70b3;
	ans = 16'hf1c1;
	#20
	A = 16'hf65f;
	B = 16'he9f1;
	ans = 16'hf71d;
	#20
	A = 16'heeba;
	B = 16'hf5a3;
	ans = 16'hf752;
	#20
	A = 16'h7192;
	B = 16'hf752;
	ans = 16'hf489;
	#20
	A = 16'h7573;
	B = 16'hf6c9;
	ans = 16'hed58;
	#20
	A = 16'hf3c5;
	B = 16'h6422;
	ans = 16'hf341;
	#20
	A = 16'hecf8;
	B = 16'h74d6;
	ans = 16'h7330;
	#20
	A = 16'hf55f;
	B = 16'hf120;
	ans = 16'hf7ef;
	#20
	A = 16'h7513;
	B = 16'h6d66;
	ans = 16'h766c;
	#20
	A = 16'hf590;
	B = 16'hf36d;
	ans = 16'hf8a3;
	#20
	A = 16'h71a1;
	B = 16'h7648;
	ans = 16'h788c;
	#20
	A = 16'hf2d9;
	B = 16'h7679;
	ans = 16'h7219;
	#20
	A = 16'h6962;
	B = 16'h7597;
	ans = 16'h7643;
	#20
	A = 16'h75bc;
	B = 16'hec69;
	ans = 16'h74a2;
	#20
	A = 16'hf72c;
	B = 16'heffd;
	ans = 16'hf896;
	#20
	A = 16'h69c8;
	B = 16'hf433;
	ans = 16'hf2f4;
	#20
	A = 16'h74cc;
	B = 16'hf04b;
	ans = 16'h714d;
	#20
	A = 16'hf659;
	B = 16'h70c6;
	ans = 16'hf3ec;
	#20
	A = 16'h6ecc;
	B = 16'h7669;
	ans = 16'h780e;
	#20
	A = 16'hf3b7;
	B = 16'h6816;
	ans = 16'hf2b2;
	#20
	A = 16'hf70a;
	B = 16'h7681;
	ans = 16'he848;
	#20
	A = 16'hf546;
	B = 16'h6d0c;
	ans = 16'hf403;
	#20
	A = 16'hf4b1;
	B = 16'heeee;
	ans = 16'hf66c;
	#20
	A = 16'hf645;
	B = 16'h6e44;
	ans = 16'hf4b4;
	#20
	A = 16'h65e3;
	B = 16'h6d16;
	ans = 16'h6e8f;
	#20
	A = 16'h7416;
	B = 16'hee56;
	ans = 16'h7101;
	#20
	A = 16'hf0dd;
	B = 16'h6c72;
	ans = 16'hed48;
	#20
	A = 16'hf446;
	B = 16'h7687;
	ans = 16'h7082;
	#20
	A = 16'hf53c;
	B = 16'h6a16;
	ans = 16'hf479;
	#20
	A = 16'hf468;
	B = 16'h7685;
	ans = 16'h703a;
	#20
	A = 16'h6a6a;
	B = 16'hf73f;
	ans = 16'hf672;
	#20
	A = 16'h731a;
	B = 16'h6ecf;
	ans = 16'h7541;
	#20
	A = 16'h7441;
	B = 16'h7591;
	ans = 16'h78e9;
	#20
	A = 16'hf0a7;
	B = 16'hf710;
	ans = 16'hf8b2;
	#20
	A = 16'h7489;
	B = 16'he1a0;
	ans = 16'h745c;
	#20
	A = 16'h6fea;
	B = 16'hf73a;
	ans = 16'hf540;
	#20
	A = 16'h76bd;
	B = 16'h76fc;
	ans = 16'h7adc;
	#20
	A = 16'h69b9;
	B = 16'hefe9;
	ans = 16'hed0c;
	#20
	A = 16'h75b9;
	B = 16'heef0;
	ans = 16'h73fa;
	#20
	A = 16'h76f5;
	B = 16'hf52e;
	ans = 16'h6f1c;
	#20
	A = 16'he831;
	B = 16'h74ee;
	ans = 16'h7468;
	#20
	A = 16'hf455;
	B = 16'h6d5e;
	ans = 16'hf1fb;
	#20
	A = 16'hf13b;
	B = 16'h7239;
	ans = 16'h67f0;
	#20
	A = 16'h6765;
	B = 16'hecff;
	ans = 16'hea4c;
	#20
	A = 16'h75b8;
	B = 16'h6ab3;
	ans = 16'h768e;
	#20
	A = 16'h705d;
	B = 16'h7444;
	ans = 16'h7672;
	#20
	A = 16'h7169;
	B = 16'h727a;
	ans = 16'h75f2;
	#20
	A = 16'h71e0;
	B = 16'h76f2;
	ans = 16'h78f1;
	#20
	A = 16'h70c8;
	B = 16'hf436;
	ans = 16'hef48;
	#20
	A = 16'h73de;
	B = 16'h76eb;
	ans = 16'h796d;
	#20
	A = 16'h74a3;
	B = 16'h7431;
	ans = 16'h786a;
	#20
	A = 16'hf347;
	B = 16'hf4ff;
	ans = 16'hf851;
	#20
	A = 16'hf5dc;
	B = 16'hef47;
	ans = 16'hf7ae;
	#20
	A = 16'hf5dc;
	B = 16'h740a;
	ans = 16'hef48;
	#20
	A = 16'he0e9;
	B = 16'h722a;
	ans = 16'h71db;
	#20
	A = 16'hf68c;
	B = 16'h76aa;
	ans = 16'h5f80;
	#20
	A = 16'hf515;
	B = 16'h7160;
	ans = 16'hf0ca;
	#20
	A = 16'h74ca;
	B = 16'h7409;
	ans = 16'h786a;
	#20
	A = 16'h6f77;
	B = 16'hf2fa;
	ans = 16'hee7d;
	#20
	A = 16'h6830;
	B = 16'hf52b;
	ans = 16'hf4a5;
	#20
	A = 16'h7347;
	B = 16'hf0d5;
	ans = 16'h6ce4;
	#20
	A = 16'h75ff;
	B = 16'he90b;
	ans = 16'h755e;
	#20
	A = 16'h762e;
	B = 16'hea33;
	ans = 16'h7568;
	#20
	A = 16'hf5c8;
	B = 16'hf3e6;
	ans = 16'hf8de;
	#20
	A = 16'hf2a7;
	B = 16'hdc70;
	ans = 16'hf2ca;
	#20
	A = 16'h71be;
	B = 16'h6d44;
	ans = 16'h7430;
	#20
	A = 16'h765a;
	B = 16'h74f1;
	ans = 16'h79a6;
	#20
	A = 16'h75b5;
	B = 16'h757f;
	ans = 16'h799a;
	#20
	A = 16'hf06c;
	B = 16'he721;
	ans = 16'hf150;
	#20
	A = 16'h774c;
	B = 16'he7ff;
	ans = 16'h76cc;
	#20
	A = 16'h72b5;
	B = 16'h696a;
	ans = 16'h7408;
	#20
	A = 16'hf438;
	B = 16'hef06;
	ans = 16'hf5fa;
	#20
	A = 16'hf2e1;
	B = 16'hf6c5;
	ans = 16'hf91b;
	#20
	A = 16'hf47d;
	B = 16'hf299;
	ans = 16'hf7ca;
	#20
	A = 16'h7701;
	B = 16'h72dc;
	ans = 16'h7938;
	#20
	A = 16'h755f;
	B = 16'hf34d;
	ans = 16'h6ee2;
	#20
	A = 16'h7537;
	B = 16'h7050;
	ans = 16'h775f;
	#20
	A = 16'hf4db;
	B = 16'hf5bc;
	ans = 16'hf94c;
	#20
	A = 16'h7052;
	B = 16'hf5f0;
	ans = 16'hf38e;
	#20
	A = 16'h67f4;
	B = 16'he942;
	ans = 16'he120;
	#20
	A = 16'h71f5;
	B = 16'h5e53;
	ans = 16'h7228;
	#20
	A = 16'hf485;
	B = 16'hf558;
	ans = 16'hf8ee;
	#20
	A = 16'hf561;
	B = 16'h6142;
	ans = 16'hf537;
	#20
	A = 16'hdc4f;
	B = 16'h7460;
	ans = 16'h744f;
	#20
	A = 16'h76e3;
	B = 16'h709d;
	ans = 16'h7899;
	#20
	A = 16'h75ea;
	B = 16'hf577;
	ans = 16'h6730;
	#20
	A = 16'h755f;
	B = 16'hf0e6;
	ans = 16'h71d8;
	#20
	A = 16'h71b8;
	B = 16'hecf7;
	ans = 16'h6e79;
	#20
	A = 16'heb5a;
	B = 16'h7114;
	ans = 16'h6e7b;
	#20
	A = 16'heffa;
	B = 16'h6a0e;
	ans = 16'hecf3;
	#20
	A = 16'h6cd3;
	B = 16'h76b8;
	ans = 16'h77ed;
	#20
	A = 16'h5cf6;
	B = 16'h7357;
	ans = 16'h737f;
	#20
	A = 16'h6d6c;
	B = 16'h68f9;
	ans = 16'h6fe8;
	#20
	A = 16'h687b;
	B = 16'hf5c6;
	ans = 16'hf537;
	#20
	A = 16'hefef;
	B = 16'hf140;
	ans = 16'hf49c;
	#20
	A = 16'h7462;
	B = 16'h61d4;
	ans = 16'h7491;
	#20
	A = 16'h6ecc;
	B = 16'h73c2;
	ans = 16'h7594;
	#20
	A = 16'h765f;
	B = 16'h7358;
	ans = 16'h7906;
	#20
	A = 16'hf5b9;
	B = 16'hf009;
	ans = 16'hf7be;
	#20
	A = 16'he75f;
	B = 16'hef22;
	ans = 16'hf07d;
	#20
	A = 16'h6957;
	B = 16'hf5d8;
	ans = 16'hf52d;
	#20
	A = 16'hea8a;
	B = 16'hefec;
	ans = 16'hf198;
	#20
	A = 16'h6938;
	B = 16'hf24e;
	ans = 16'hf100;
	#20
	A = 16'h3e70;
	B = 16'h73c6;
	ans = 16'h73c6;
	#20
	A = 16'hf72c;
	B = 16'h7054;
	ans = 16'hf502;
	#20
	A = 16'hf434;
	B = 16'hf695;
	ans = 16'hf964;
	#20
	A = 16'hf582;
	B = 16'hf0a9;
	ans = 16'hf7d6;
	#20
	A = 16'h7498;
	B = 16'h76c3;
	ans = 16'h79ae;
	#20
	A = 16'h7261;
	B = 16'h76d1;
	ans = 16'h7901;
	#20
	A = 16'h762f;
	B = 16'hf37d;
	ans = 16'h70e1;
	#20
	A = 16'h6a8d;
	B = 16'h76af;
	ans = 16'h7781;
	#20
	A = 16'h598f;
	B = 16'h6b18;
	ans = 16'h6b71;
	#20
	A = 16'heeba;
	B = 16'he7ad;
	ans = 16'hf053;
	#20
	A = 16'hf478;
	B = 16'he1ff;
	ans = 16'hf4a8;
	#20
	A = 16'h7137;
	B = 16'h6aca;
	ans = 16'h72ea;
	#20
	A = 16'h7685;
	B = 16'h76e3;
	ans = 16'h7ab4;
	#20
	A = 16'h7655;
	B = 16'h6f88;
	ans = 16'h781c;
	#20
	A = 16'hf5ba;
	B = 16'h61d2;
	ans = 16'hf58b;
	#20
	A = 16'hf260;
	B = 16'h7610;
	ans = 16'h71c0;
	#20
	A = 16'h763b;
	B = 16'hf213;
	ans = 16'h7263;
	#20
	A = 16'hf47d;
	B = 16'he93c;
	ans = 16'hf524;
	#20
	A = 16'he044;
	B = 16'h745b;
	ans = 16'h7439;
	#20
	A = 16'hf6c8;
	B = 16'h64e1;
	ans = 16'hf67a;
	#20
	A = 16'h7359;
	B = 16'h6fe6;
	ans = 16'h75a6;
	#20
	A = 16'hf2ce;
	B = 16'h76bf;
	ans = 16'h72b0;
	#20
	A = 16'hd06d;
	B = 16'h6b51;
	ans = 16'h6b3f;
	#20
	A = 16'h7589;
	B = 16'h74bd;
	ans = 16'h7923;
	#20
	A = 16'hf364;
	B = 16'h7567;
	ans = 16'h6ed4;
	#20
	A = 16'hf4c2;
	B = 16'hda99;
	ans = 16'hf4cf;
	#20
	A = 16'h731f;
	B = 16'h7526;
	ans = 16'h785b;
	#20
	A = 16'hf6b3;
	B = 16'h6560;
	ans = 16'hf65d;
	#20
	A = 16'hed76;
	B = 16'h7379;
	ans = 16'h70be;
	#20
	A = 16'h75e6;
	B = 16'h7511;
	ans = 16'h797c;
	#20
	A = 16'h760c;
	B = 16'h766b;
	ans = 16'h7a3c;
	#20
	A = 16'hf4dc;
	B = 16'hf518;
	ans = 16'hf8fa;
	#20
	A = 16'h6b97;
	B = 16'hf5b0;
	ans = 16'hf4bd;
	#20
	A = 16'h719c;
	B = 16'hd95d;
	ans = 16'h7187;
	#20
	A = 16'h7575;
	B = 16'hedbb;
	ans = 16'h7406;
	#20
	A = 16'h74b5;
	B = 16'he9cd;
	ans = 16'h73f7;
	#20
	A = 16'hf48e;
	B = 16'hf463;
	ans = 16'hf878;
	#20
	A = 16'h5b42;
	B = 16'hf4ac;
	ans = 16'hf49d;
	#20
	A = 16'h6fd5;
	B = 16'hf709;
	ans = 16'hf514;
	#20
	A = 16'h74a2;
	B = 16'hf31f;
	ans = 16'h6c4a;
	#20
	A = 16'h729d;
	B = 16'h7572;
	ans = 16'h7860;
	#20
	A = 16'he992;
	B = 16'h7286;
	ans = 16'h7122;
	#20
	A = 16'hf300;
	B = 16'hf5c2;
	ans = 16'hf8a1;
	#20
	A = 16'he67b;
	B = 16'h7439;
	ans = 16'h73a3;
	#20
	A = 16'h75e4;
	B = 16'h74fe;
	ans = 16'h7971;
	#20
	A = 16'h6d3d;
	B = 16'hf4d5;
	ans = 16'hf30c;
	#20
	A = 16'h71f8;
	B = 16'hee49;
	ans = 16'h6da7;
	#20
	A = 16'h760b;
	B = 16'hecee;
	ans = 16'h74d0;
	#20
	A = 16'hf57a;
	B = 16'h751e;
	ans = 16'he5c0;
	#20
	A = 16'h742c;
	B = 16'hd797;
	ans = 16'h7424;
	#20
	A = 16'h6f43;
	B = 16'h771e;
	ans = 16'h7877;
	#20
	A = 16'hf3a5;
	B = 16'hf2f8;
	ans = 16'hf74e;
	#20
	A = 16'hf50d;
	B = 16'h7556;
	ans = 16'h6490;
	#20
	A = 16'h7623;
	B = 16'hf381;
	ans = 16'h70c5;
	#20
	A = 16'hc2a0;
	B = 16'h686d;
	ans = 16'h686b;
	#20
	A = 16'h6d93;
	B = 16'h6c1d;
	ans = 16'h70d8;
	#20
	A = 16'hdc73;
	B = 16'h7221;
	ans = 16'h71fd;
	#20
	A = 16'h76a4;
	B = 16'hea34;
	ans = 16'h75de;
	#20
	A = 16'hf4a7;
	B = 16'hf4b7;
	ans = 16'hf8af;
	#20
	A = 16'hedca;
	B = 16'hf616;
	ans = 16'hf788;
	#20
	A = 16'hecdb;
	B = 16'h6373;
	ans = 16'hebd9;
	#20
	A = 16'h72fc;
	B = 16'h6968;
	ans = 16'h742b;
	#20
	A = 16'h7206;
	B = 16'h6773;
	ans = 16'h72f4;
	#20
	A = 16'h6a6f;
	B = 16'hf201;
	ans = 16'hf065;
	#20
	A = 16'h65a0;
	B = 16'he747;
	ans = 16'hde9c;
	#20
	A = 16'h7708;
	B = 16'h7719;
	ans = 16'h7b10;
	#20
	A = 16'h7709;
	B = 16'h74f7;
	ans = 16'h7a00;
	#20
	A = 16'hf2fb;
	B = 16'h7238;
	ans = 16'he618;
	#20
	A = 16'hf53f;
	B = 16'hf727;
	ans = 16'hfa33;
	#20
	A = 16'hf582;
	B = 16'h7233;
	ans = 16'hf0d1;
	#20
	A = 16'hee1b;
	B = 16'hf651;
	ans = 16'hf7d8;
	#20
	A = 16'h710e;
	B = 16'h7402;
	ans = 16'h7689;
	#20
	A = 16'heabd;
	B = 16'h6ad5;
	ans = 16'h5200;
	#20
	A = 16'hf6c5;
	B = 16'hf024;
	ans = 16'hf86c;
	#20
	A = 16'hf316;
	B = 16'h728b;
	ans = 16'he458;
	#20
	A = 16'h714e;
	B = 16'hf73f;
	ans = 16'hf498;
	#20
	A = 16'hf215;
	B = 16'h6dd9;
	ans = 16'hee51;
	#20
	A = 16'h76f9;
	B = 16'hf720;
	ans = 16'he0e0;
	#20
	A = 16'h756e;
	B = 16'h7188;
	ans = 16'h7819;
	#20
	A = 16'hed44;
	B = 16'h6c89;
	ans = 16'he1d8;
	#20
	A = 16'hda27;
	B = 16'hf2a1;
	ans = 16'hf2ba;
	#20
	A = 16'h6ec8;
	B = 16'hf40c;
	ans = 16'hf0b4;
	#20
	A = 16'hf53b;
	B = 16'h75b3;
	ans = 16'h6780;
	#20
	A = 16'h7468;
	B = 16'h7532;
	ans = 16'h78cd;
	#20
	A = 16'hf580;
	B = 16'hf6a6;
	ans = 16'hfa13;
	#20
	A = 16'h72a2;
	B = 16'h75b1;
	ans = 16'h7881;
	#20
	A = 16'hf719;
	B = 16'hf711;
	ans = 16'hfb15;
	#20
	A = 16'he829;
	B = 16'h6874;
	ans = 16'h58b0;
	#20
	A = 16'hf1cc;
	B = 16'h7604;
	ans = 16'h723c;
	#20
	A = 16'hf357;
	B = 16'hf5a7;
	ans = 16'hf8a9;
	#20
	A = 16'hf4f0;
	B = 16'hedbe;
	ans = 16'hf660;
	#20
	A = 16'h7507;
	B = 16'h7113;
	ans = 16'h7790;
	#20
	A = 16'h721d;
	B = 16'h73f8;
	ans = 16'h770a;
	#20
	A = 16'hf064;
	B = 16'hf3fd;
	ans = 16'hf630;
	#20
	A = 16'he28b;
	B = 16'hf690;
	ans = 16'hf6c4;
	#20
	A = 16'hf440;
	B = 16'hc052;
	ans = 16'hf440;
	#20
	A = 16'hf27e;
	B = 16'h74c4;
	ans = 16'h6e14;
	#20
	A = 16'hefe6;
	B = 16'hf6a9;
	ans = 16'hf851;
	#20
	A = 16'hf563;
	B = 16'hf620;
	ans = 16'hf9c2;
	#20
	A = 16'h745c;
	B = 16'hf701;
	ans = 16'hf14a;
	#20
	A = 16'hf57a;
	B = 16'hf6c9;
	ans = 16'hfa22;
	#20
	A = 16'hf08d;
	B = 16'hf487;
	ans = 16'hf6ce;
	#20
	A = 16'h770a;
	B = 16'hf586;
	ans = 16'h6e10;
	#20
	A = 16'h619c;
	B = 16'h6867;
	ans = 16'h69ce;
	#20
	A = 16'h7412;
	B = 16'hf63d;
	ans = 16'hf056;
	#20
	A = 16'h72dd;
	B = 16'hf31e;
	ans = 16'he010;
	#20
	A = 16'hf14f;
	B = 16'he59f;
	ans = 16'hf203;
	#20
	A = 16'hf46a;
	B = 16'h7632;
	ans = 16'h6f20;
	#20
	A = 16'h7667;
	B = 16'hf5aa;
	ans = 16'h69e8;
	#20
	A = 16'hf46d;
	B = 16'h70dd;
	ans = 16'heffa;
	#20
	A = 16'h76f0;
	B = 16'hf609;
	ans = 16'h6b38;
	#20
	A = 16'h73ca;
	B = 16'hf0ab;
	ans = 16'h6e3e;
	#20
	A = 16'hf5ac;
	B = 16'h73bd;
	ans = 16'hef36;
	#20
	A = 16'h71ef;
	B = 16'he96d;
	ans = 16'h7094;
	#20
	A = 16'hf410;
	B = 16'hf161;
	ans = 16'hf6c0;
	#20
	A = 16'he690;
	B = 16'hf1be;
	ans = 16'hf290;
	#20
	A = 16'h7691;
	B = 16'h714d;
	ans = 16'h789c;
	#20
	A = 16'h6ace;
	B = 16'heef2;
	ans = 16'heb16;
	#20
	A = 16'hf021;
	B = 16'h7752;
	ans = 16'h7542;
	#20
	A = 16'he0e1;
	B = 16'h6a9e;
	ans = 16'h6966;
	#20
	A = 16'hf03a;
	B = 16'h71a7;
	ans = 16'h69b4;
	#20
	A = 16'hf58b;
	B = 16'h7536;
	ans = 16'he550;
	#20
	A = 16'hedb5;
	B = 16'h74eb;
	ans = 16'h72fc;
	#20
	A = 16'hf62e;
	B = 16'h718c;
	ans = 16'hf2d0;
	#20
	A = 16'hf686;
	B = 16'he8fc;
	ans = 16'hf726;
	#20
	A = 16'h748f;
	B = 16'h6654;
	ans = 16'h74f4;
	#20
	A = 16'h766f;
	B = 16'h7039;
	ans = 16'h7846;
	#20
	A = 16'heb61;
	B = 16'h74b5;
	ans = 16'h7392;
	#20
	A = 16'hf5ef;
	B = 16'h6e26;
	ans = 16'hf466;
	#20
	A = 16'hf523;
	B = 16'h6e05;
	ans = 16'hf344;
	#20
	A = 16'hf00a;
	B = 16'hf37b;
	ans = 16'hf5c2;
	#20
	A = 16'h76f8;
	B = 16'h6b12;
	ans = 16'h77da;
	#20
	A = 16'h7479;
	B = 16'h721c;
	ans = 16'h7787;
	#20
	A = 16'h72e9;
	B = 16'h6155;
	ans = 16'h733e;
	#20
	A = 16'h721b;
	B = 16'hf682;
	ans = 16'hf2e9;
	#20
	A = 16'hf47f;
	B = 16'h6f0d;
	ans = 16'hf178;
	#20
	A = 16'h751c;
	B = 16'hf174;
	ans = 16'h70c4;
	#20
	A = 16'h6c2e;
	B = 16'heebc;
	ans = 16'he91c;
	#20
	A = 16'h7626;
	B = 16'hf33c;
	ans = 16'h7110;
	#20
	A = 16'h72bf;
	B = 16'hef10;
	ans = 16'h6e6e;
	#20
	A = 16'h7543;
	B = 16'hee2f;
	ans = 16'h736e;
	#20
	A = 16'hf653;
	B = 16'h7137;
	ans = 16'hf36f;
	#20
	A = 16'heaab;
	B = 16'h6cf7;
	ans = 16'h6686;
	#20
	A = 16'hed18;
	B = 16'h76c9;
	ans = 16'h7583;
	#20
	A = 16'hee02;
	B = 16'h6864;
	ans = 16'heba0;
	#20
	A = 16'h7174;
	B = 16'hf5d5;
	ans = 16'hf236;
	#20
	A = 16'hf659;
	B = 16'hf168;
	ans = 16'hf886;
	#20
	A = 16'h7741;
	B = 16'hf63e;
	ans = 16'h6c0c;
	#20
	A = 16'h74af;
	B = 16'he28d;
	ans = 16'h747b;
	#20
	A = 16'hd598;
	B = 16'h66b3;
	ans = 16'h665a;
	#20
	A = 16'hf329;
	B = 16'hf3dd;
	ans = 16'hf783;
	#20
	A = 16'hf590;
	B = 16'h6d6b;
	ans = 16'hf435;
	#20
	A = 16'h6d14;
	B = 16'h764b;
	ans = 16'h7790;
	#20
	A = 16'h74f5;
	B = 16'he939;
	ans = 16'h744e;
	#20
	A = 16'he891;
	B = 16'he5ac;
	ans = 16'heb67;
	#20
	A = 16'h7426;
	B = 16'hf3c4;
	ans = 16'h6440;
	#20
	A = 16'hf6fe;
	B = 16'h6608;
	ans = 16'hf69e;
	#20
	A = 16'hf251;
	B = 16'h7360;
	ans = 16'h683c;
	#20
	A = 16'hf668;
	B = 16'heea5;
	ans = 16'hf809;
	#20
	A = 16'heac5;
	B = 16'h735b;
	ans = 16'h71aa;
	#20
	A = 16'h742a;
	B = 16'hf31c;
	ans = 16'h68e0;
	#20
	A = 16'h7409;
	B = 16'hf1bf;
	ans = 16'h6ca6;
	#20
	A = 16'h717d;
	B = 16'hf632;
	ans = 16'hf2e7;
	#20
	A = 16'h773a;
	B = 16'h7130;
	ans = 16'h78e9;
	#20
	A = 16'h677d;
	B = 16'h7666;
	ans = 16'h76de;
	#20
	A = 16'h71eb;
	B = 16'hed89;
	ans = 16'h6e4d;
	#20
	A = 16'h68a9;
	B = 16'hf048;
	ans = 16'hee3c;
	#20
	A = 16'hf504;
	B = 16'h691b;
	ans = 16'hf461;
	#20
	A = 16'hf303;
	B = 16'h6d92;
	ans = 16'hf03a;
	#20
	A = 16'h59b2;
	B = 16'h6e0b;
	ans = 16'h6e39;
	#20
	A = 16'hf53f;
	B = 16'hf2cf;
	ans = 16'hf853;
	#20
	A = 16'hf658;
	B = 16'h74e2;
	ans = 16'hedd8;
	#20
	A = 16'hef12;
	B = 16'h722d;
	ans = 16'h6d48;
	#20
	A = 16'h74a1;
	B = 16'hf680;
	ans = 16'hef7c;
	#20
	A = 16'hf251;
	B = 16'h7459;
	ans = 16'h6cc2;
	#20
	A = 16'hf5be;
	B = 16'hf6e7;
	ans = 16'hfa52;
	#20
	A = 16'hf2f7;
	B = 16'hef1c;
	ans = 16'hf542;
	#20
	A = 16'hf6d3;
	B = 16'h7701;
	ans = 16'h61c0;
	#20
	A = 16'h76ad;
	B = 16'h6b69;
	ans = 16'h779a;
	#20
	A = 16'hf217;
	B = 16'hf4e7;
	ans = 16'hf7f2;
	#20
	A = 16'hf17f;
	B = 16'h5d92;
	ans = 16'hf152;
	#20
	A = 16'hf5b0;
	B = 16'h76af;
	ans = 16'h6bf8;
	#20
	A = 16'hf3b8;
	B = 16'h720f;
	ans = 16'heaa4;
	#20
	A = 16'h72f3;
	B = 16'hf13f;
	ans = 16'h6ad0;
	#20
	A = 16'h67f3;
	B = 16'hf4a6;
	ans = 16'hf427;
	#20
	A = 16'h7613;
	B = 16'hf1ed;
	ans = 16'h7239;
	#20
	A = 16'h7524;
	B = 16'h75c4;
	ans = 16'h7974;
	#20
	A = 16'h7753;
	B = 16'h7423;
	ans = 16'h79bb;
	#20
	A = 16'hf199;
	B = 16'h72b1;
	ans = 16'h6860;
	#20
	A = 16'h720c;
	B = 16'hf052;
	ans = 16'h6ae8;
	#20
	A = 16'h6c12;
	B = 16'hf0e4;
	ans = 16'hedb6;
	#20
	A = 16'h75e9;
	B = 16'h6d06;
	ans = 16'h772a;
	#20
	A = 16'h7426;
	B = 16'hef0e;
	ans = 16'h70c5;
	#20
	A = 16'h6baa;
	B = 16'hf4ed;
	ans = 16'hf3f0;
	#20
	A = 16'h6d49;
	B = 16'hf5a9;
	ans = 16'hf457;
	#20
	A = 16'h73da;
	B = 16'h7472;
	ans = 16'h7830;
	#20
	A = 16'h709e;
	B = 16'h7519;
	ans = 16'h7768;
	#20
	A = 16'hecb0;
	B = 16'hf517;
	ans = 16'hf643;
	#20
	A = 16'h75f7;
	B = 16'h70dd;
	ans = 16'h7833;
	#20
	A = 16'h72b7;
	B = 16'h748d;
	ans = 16'h77e8;
	#20
	A = 16'h768c;
	B = 16'h762e;
	ans = 16'h7a5d;
	#20
	A = 16'h6059;
	B = 16'hf003;
	ans = 16'hef7b;
	#20
	A = 16'hf16e;
	B = 16'he94d;
	ans = 16'hf2c1;
	#20
	A = 16'h7638;
	B = 16'hf4c1;
	ans = 16'h6ddc;
	#20
	A = 16'h74b4;
	B = 16'h7586;
	ans = 16'h791d;
	#20
	A = 16'hf63b;
	B = 16'h7085;
	ans = 16'hf3f1;
	#20
	A = 16'he4f3;
	B = 16'h75a0;
	ans = 16'h7551;
	#20
	A = 16'h68c7;
	B = 16'hf318;
	ans = 16'hf1e6;
	#20
	A = 16'hf685;
	B = 16'hf343;
	ans = 16'hf913;
	#20
	A = 16'hebc1;
	B = 16'hf48a;
	ans = 16'hf582;
	#20
	A = 16'hf66a;
	B = 16'hf208;
	ans = 16'hf8b7;
	#20
	A = 16'hf460;
	B = 16'hf21d;
	ans = 16'hf76e;
	#20
	A = 16'hf60f;
	B = 16'h7269;
	ans = 16'hf1b5;
	#20
	A = 16'he389;
	B = 16'h768e;
	ans = 16'h7652;
	#20
	A = 16'hf2a0;
	B = 16'h723f;
	ans = 16'he210;
	#20
	A = 16'hf4e6;
	B = 16'hf658;
	ans = 16'hf99f;
	#20
	A = 16'h7436;
	B = 16'h76ca;
	ans = 16'h7980;
	#20
	A = 16'hf4da;
	B = 16'hee44;
	ans = 16'hf66b;
	#20
	A = 16'hf6e1;
	B = 16'hf667;
	ans = 16'hfaa4;
	#20
	A = 16'hf5ce;
	B = 16'hf1bf;
	ans = 16'hf857;
	#20
	A = 16'h704e;
	B = 16'hecc4;
	ans = 16'h6bb0;
	#20
	A = 16'h7591;
	B = 16'h75fc;
	ans = 16'h79c6;
	#20
	A = 16'h7399;
	B = 16'he96f;
	ans = 16'h723d;
	#20
	A = 16'hf61f;
	B = 16'he95e;
	ans = 16'hf6cb;
	#20
	A = 16'hed20;
	B = 16'h72a4;
	ans = 16'h7014;
	#20
	A = 16'h75d4;
	B = 16'hf2eb;
	ans = 16'h70bd;
	#20
	A = 16'hf40c;
	B = 16'h6ca7;
	ans = 16'hf1c4;
	#20
	A = 16'hf67e;
	B = 16'hf6a6;
	ans = 16'hfa92;
	#20
	A = 16'h722c;
	B = 16'h6651;
	ans = 16'h72f6;
	#20
	A = 16'h76c3;
	B = 16'hed8e;
	ans = 16'h7560;
	#20
	A = 16'h712e;
	B = 16'hf345;
	ans = 16'hec2e;
	#20
	A = 16'hef04;
	B = 16'hf28a;
	ans = 16'hf506;
	#20
	A = 16'h72a8;
	B = 16'hf715;
	ans = 16'hf382;
	#20
	A = 16'hf669;
	B = 16'h75d0;
	ans = 16'he8c8;
	#20
	A = 16'h7337;
	B = 16'hf434;
	ans = 16'he8c4;
	#20
	A = 16'hf518;
	B = 16'hf739;
	ans = 16'hfa28;
	#20
	A = 16'hebb1;
	B = 16'h742d;
	ans = 16'h726e;
	#20
	A = 16'hf085;
	B = 16'h76fd;
	ans = 16'h74ba;
	#20
	A = 16'h771b;
	B = 16'h74c3;
	ans = 16'h79ef;
	#20
	A = 16'h6f5e;
	B = 16'h7746;
	ans = 16'h788f;
	#20
	A = 16'h68bf;
	B = 16'he521;
	ans = 16'h645d;
	#20
	A = 16'hf0ab;
	B = 16'hf328;
	ans = 16'hf5ea;
	#20
	A = 16'he856;
	B = 16'hed3a;
	ans = 16'hef65;
	#20
	A = 16'hf6fe;
	B = 16'h68e2;
	ans = 16'hf662;
	#20
	A = 16'h6efe;
	B = 16'hf434;
	ans = 16'hf0e9;
	#20
	A = 16'h7483;
	B = 16'h6bc8;
	ans = 16'h757c;
	#20
	A = 16'h768c;
	B = 16'hf6b4;
	ans = 16'he100;
	#20
	A = 16'h755b;
	B = 16'hf20a;
	ans = 16'h70ac;
	#20
	A = 16'hf6e3;
	B = 16'h749e;
	ans = 16'hf08a;
	#20
	A = 16'h7184;
	B = 16'h7450;
	ans = 16'h7712;
	#20
	A = 16'h754e;
	B = 16'he92f;
	ans = 16'h74a8;
	#20
	A = 16'hec03;
	B = 16'h70b1;
	ans = 16'h6d5f;
	#20
	A = 16'h761e;
	B = 16'he665;
	ans = 16'h75b8;
	#20
	A = 16'h6426;
	B = 16'hf6de;
	ans = 16'hf69c;
	#20
	A = 16'h71d5;
	B = 16'hf737;
	ans = 16'hf44c;
	#20
	A = 16'hf00f;
	B = 16'hf658;
	ans = 16'hf830;
	#20
	A = 16'hf4dc;
	B = 16'hf5de;
	ans = 16'hf95d;
	#20
	A = 16'h741d;
	B = 16'hf43f;
	ans = 16'he040;
	#20
	A = 16'hed00;
	B = 16'h747d;
	ans = 16'h727a;
	#20
	A = 16'h662c;
	B = 16'hf1a3;
	ans = 16'hf0de;
	#20
	A = 16'hf4e0;
	B = 16'h76ed;
	ans = 16'h701a;
	#20
	A = 16'h759d;
	B = 16'hf216;
	ans = 16'h7124;
	#20
	A = 16'hf6bd;
	B = 16'h7567;
	ans = 16'hed58;
	#20
	A = 16'h713f;
	B = 16'hf681;
	ans = 16'hf3c3;
	#20
	A = 16'hf3e0;
	B = 16'h76fa;
	ans = 16'h7214;
	#20
	A = 16'h759d;
	B = 16'h6e91;
	ans = 16'h7741;
	#20
	A = 16'hf5dc;
	B = 16'hf2cc;
	ans = 16'hf8a1;
	#20
	A = 16'he7b9;
	B = 16'h7290;
	ans = 16'h7199;
	#20
	A = 16'hf603;
	B = 16'hf0f0;
	ans = 16'hf83e;
	#20
	A = 16'h772a;
	B = 16'hf64c;
	ans = 16'h6af0;
	#20
	A = 16'he3d4;
	B = 16'hf710;
	ans = 16'hf74f;
	#20
	A = 16'h75b8;
	B = 16'h76f4;
	ans = 16'h7a56;
	#20
	A = 16'h7066;
	B = 16'h71fa;
	ans = 16'h7530;
	#20
	A = 16'h5f35;
	B = 16'h6acc;
	ans = 16'h6bb3;
	#20
	A = 16'hf667;
	B = 16'hf6d1;
	ans = 16'hfa9c;
	#20
	A = 16'hf440;
	B = 16'hee37;
	ans = 16'hf5ce;
	#20
	A = 16'heedd;
	B = 16'h6d1d;
	ans = 16'he700;
	#20
	A = 16'h7672;
	B = 16'hde78;
	ans = 16'h7658;
	#20
	A = 16'he4fd;
	B = 16'hedaa;
	ans = 16'heee9;
	#20
	A = 16'h724a;
	B = 16'hf465;
	ans = 16'hed00;
	#20
	A = 16'h6f9b;
	B = 16'h75ac;
	ans = 16'h7793;
	#20
	A = 16'hf5d0;
	B = 16'hf68a;
	ans = 16'hfa2d;
	#20
	A = 16'hf5c6;
	B = 16'hf712;
	ans = 16'hfa6c;
	#20
	A = 16'h720b;
	B = 16'h7019;
	ans = 16'h7512;
	#20
	A = 16'hf3e6;
	B = 16'hf2ce;
	ans = 16'hf75a;
	#20
	A = 16'h6f32;
	B = 16'hf1c2;
	ans = 16'hec52;
	#20
	A = 16'h7703;
	B = 16'h73bf;
	ans = 16'h7971;
	#20
	A = 16'hf4c9;
	B = 16'h75e8;
	ans = 16'h6c7c;
	#20
	A = 16'h751a;
	B = 16'hf448;
	ans = 16'h6a90;
	#20
	A = 16'hef5c;
	B = 16'hece9;
	ans = 16'hf222;
	#20
	A = 16'hf69a;
	B = 16'h6685;
	ans = 16'hf632;
	#20
	A = 16'hee40;
	B = 16'hf13a;
	ans = 16'hf42d;
	#20
	A = 16'h6d28;
	B = 16'hf6e1;
	ans = 16'hf597;
	#20
	A = 16'h7062;
	B = 16'h6c16;
	ans = 16'h726d;
	#20
	A = 16'h71e8;
	B = 16'h6cd6;
	ans = 16'h742a;
	#20
	A = 16'h7221;
	B = 16'hf40f;
	ans = 16'hebf4;
	#20
	A = 16'h7282;
	B = 16'h737d;
	ans = 16'h7700;
	#20
	A = 16'h7674;
	B = 16'h7480;
	ans = 16'h797a;
	#20
	A = 16'hf681;
	B = 16'h755c;
	ans = 16'hec94;
	#20
	A = 16'h736c;
	B = 16'h715f;
	ans = 16'h7666;
	#20
	A = 16'h691a;
	B = 16'h687e;
	ans = 16'h6ccc;
	#20
	A = 16'h7594;
	B = 16'hf65d;
	ans = 16'hea48;
	#20
	A = 16'hf561;
	B = 16'h75c9;
	ans = 16'h6680;
	#20
	A = 16'h715e;
	B = 16'hece7;
	ans = 16'h6dd5;
	#20
	A = 16'h6ecd;
	B = 16'h7258;
	ans = 16'h74df;
	#20
	A = 16'h76cb;
	B = 16'h6b6a;
	ans = 16'h77b8;
	#20
	A = 16'hf731;
	B = 16'hede0;
	ans = 16'hf854;
	#20
	A = 16'hf50b;
	B = 16'h6a36;
	ans = 16'hf444;
	#20
	A = 16'hed05;
	B = 16'h7622;
	ans = 16'h74e1;
	#20
	A = 16'hee04;
	B = 16'hf5ae;
	ans = 16'hf72f;
	#20
	A = 16'h7527;
	B = 16'h72c1;
	ans = 16'h7844;
	#20
	A = 16'h6d80;
	B = 16'h759f;
	ans = 16'h76ff;
	#20
	A = 16'hf5b7;
	B = 16'h7067;
	ans = 16'hf307;
	#20
	A = 16'hebb1;
	B = 16'he976;
	ans = 16'hee94;
	#20
	A = 16'hf3cc;
	B = 16'h7717;
	ans = 16'h7262;
	#20
	A = 16'hf427;
	B = 16'h7230;
	ans = 16'hec3c;
	#20
	A = 16'hf5d7;
	B = 16'hf2da;
	ans = 16'hf8a2;
	#20
	A = 16'h7652;
	B = 16'h702b;
	ans = 16'h7834;
	#20
	A = 16'hf3b1;
	B = 16'h6fbd;
	ans = 16'hefa5;
	#20
	A = 16'h7704;
	B = 16'h76ab;
	ans = 16'h7ad8;
	#20
	A = 16'h7465;
	B = 16'hf728;
	ans = 16'hf186;
	#20
	A = 16'hf2d4;
	B = 16'hf4af;
	ans = 16'hf80c;
	#20
	A = 16'hf5b6;
	B = 16'h6fef;
	ans = 16'hf374;
	#20
	A = 16'hf420;
	B = 16'hf572;
	ans = 16'hf8c9;
	#20
	A = 16'hf4e3;
	B = 16'hf544;
	ans = 16'hf914;
	#20
	A = 16'h6542;
	B = 16'h7590;
	ans = 16'h75e4;
	#20
	A = 16'hf4e6;
	B = 16'hf65a;
	ans = 16'hf9a0;
	#20
	A = 16'h719c;
	B = 16'hf617;
	ans = 16'hf292;
	#20
	A = 16'h71e7;
	B = 16'hf21d;
	ans = 16'hdec0;
	#20
	A = 16'hf0b2;
	B = 16'hf6bb;
	ans = 16'hf88a;
	#20
	A = 16'h75d8;
	B = 16'h73f9;
	ans = 16'h78ea;
	#20
	A = 16'h7216;
	B = 16'hf5d3;
	ans = 16'hf190;
	#20
	A = 16'hf306;
	B = 16'h6a9a;
	ans = 16'hf160;
	#20
	A = 16'h763c;
	B = 16'h6f3d;
	ans = 16'h7806;
	#20
	A = 16'hf611;
	B = 16'hdbcb;
	ans = 16'hf621;
	#20
	A = 16'hede2;
	B = 16'hf320;
	ans = 16'hf508;
	#20
	A = 16'h75ac;
	B = 16'h76c2;
	ans = 16'h7a37;
	#20
	A = 16'h75d2;
	B = 16'hf57d;
	ans = 16'h6550;
	#20
	A = 16'hf729;
	B = 16'hf4e1;
	ans = 16'hfa05;
	#20
	A = 16'h6aac;
	B = 16'h7091;
	ans = 16'h723c;
	#20
	A = 16'hf267;
	B = 16'h723d;
	ans = 16'hdd40;
	#20
	A = 16'hf2d2;
	B = 16'hf372;
	ans = 16'hf722;
	#20
	A = 16'h755a;
	B = 16'h752b;
	ans = 16'h7942;
	#20
	A = 16'h64d1;
	B = 16'hf4bc;
	ans = 16'hf46f;
	#20
	A = 16'h6cb1;
	B = 16'h730c;
	ans = 16'h74b2;
	#20
	A = 16'h753f;
	B = 16'hf6cf;
	ans = 16'hee40;
	#20
	A = 16'h76c7;
	B = 16'heb13;
	ans = 16'h75e5;
	#20
	A = 16'hf5f2;
	B = 16'hf599;
	ans = 16'hf9c6;
	#20
	A = 16'he678;
	B = 16'h75cb;
	ans = 16'h7564;
	#20
	A = 16'hf6b7;
	B = 16'h76c8;
	ans = 16'h5c40;
	#20
	A = 16'hf6df;
	B = 16'h7417;
	ans = 16'hf190;
	#20
	A = 16'h749c;
	B = 16'hf747;
	ans = 16'hf156;
	#20
	A = 16'hf439;
	B = 16'hf43d;
	ans = 16'hf83b;
	#20
	A = 16'hf381;
	B = 16'h758b;
	ans = 16'h6f2a;
	#20
	A = 16'hf12a;
	B = 16'h7176;
	ans = 16'h60c0;
	#20
	A = 16'h70e2;
	B = 16'hf216;
	ans = 16'he8d0;
	#20
	A = 16'hf662;
	B = 16'hf409;
	ans = 16'hf936;
	#20
	A = 16'hf140;
	B = 16'hf61e;
	ans = 16'hf85f;
	#20
	A = 16'h76bb;
	B = 16'hf557;
	ans = 16'h6d90;
	#20
	A = 16'hf19d;
	B = 16'h6d68;
	ans = 16'hedd2;
	#20
	A = 16'hf173;
	B = 16'hf685;
	ans = 16'hf89f;
	#20
	A = 16'h72c9;
	B = 16'hee8c;
	ans = 16'h6f06;
	#20
	A = 16'h6c60;
	B = 16'hed63;
	ans = 16'he40c;
	#20
	A = 16'h756f;
	B = 16'h69d6;
	ans = 16'h762a;
	#20
	A = 16'h75e5;
	B = 16'h7592;
	ans = 16'h79bc;
	#20
	A = 16'h7594;
	B = 16'h7661;
	ans = 16'h79fa;
	#20
	A = 16'he713;
	B = 16'h6aac;
	ans = 16'h6645;
	#20
	A = 16'h704a;
	B = 16'h75a1;
	ans = 16'h77c6;
	#20
	A = 16'hf474;
	B = 16'hf140;
	ans = 16'hf714;
	#20
	A = 16'h7691;
	B = 16'hf0df;
	ans = 16'h7422;
	#20
	A = 16'h7144;
	B = 16'hf41f;
	ans = 16'hedf4;
	#20
	A = 16'h766b;
	B = 16'h723d;
	ans = 16'h78c5;
	#20
	A = 16'h7727;
	B = 16'h602c;
	ans = 16'h7748;
	#20
	A = 16'hf45e;
	B = 16'hf49a;
	ans = 16'hf87c;
	#20
	A = 16'hf549;
	B = 16'heaf2;
	ans = 16'hf627;
	#20
	A = 16'hedd3;
	B = 16'h76fc;
	ans = 16'h7587;
	#20
	A = 16'h65de;
	B = 16'hf060;
	ans = 16'hef48;
	#20
	A = 16'h76a2;
	B = 16'h6f59;
	ans = 16'h783c;
	#20
	A = 16'h7412;
	B = 16'he840;
	ans = 16'h7314;
	#20
	A = 16'h7688;
	B = 16'h755c;
	ans = 16'h79f2;
	#20
	A = 16'h723c;
	B = 16'h65e9;
	ans = 16'h72f9;
	#20
	A = 16'hf0d6;
	B = 16'he834;
	ans = 16'hf1e3;
	#20
	A = 16'he7e6;
	B = 16'h7355;
	ans = 16'h7258;
	#20
	A = 16'hec78;
	B = 16'hf328;
	ans = 16'hf4b2;
	#20
	A = 16'hf36c;
	B = 16'h76f4;
	ans = 16'h727c;
	#20
	A = 16'h7145;
	B = 16'hf53a;
	ans = 16'hf12f;
	#20
	A = 16'hf159;
	B = 16'hf0eb;
	ans = 16'hf522;
	#20
	A = 16'hf66f;
	B = 16'h7533;
	ans = 16'hecf0;
	#20
	A = 16'h5e34;
	B = 16'h74c4;
	ans = 16'h74dd;
	#20
	A = 16'h72f5;
	B = 16'h766b;
	ans = 16'h78f3;
	#20
	A = 16'h6edb;
	B = 16'hf1a1;
	ans = 16'hec67;
	#20
	A = 16'he5f5;
	B = 16'hf233;
	ans = 16'hf2f2;
	#20
	A = 16'hefb3;
	B = 16'hf595;
	ans = 16'hf782;
	#20
	A = 16'h7168;
	B = 16'h76f0;
	ans = 16'h78d2;
	#20
	A = 16'hf249;
	B = 16'h705d;
	ans = 16'hebb0;
	#20
	A = 16'hea28;
	B = 16'hf62b;
	ans = 16'hf6f0;
	#20
	A = 16'hf72d;
	B = 16'h75ff;
	ans = 16'hecb8;
	#20
	A = 16'h7157;
	B = 16'hf55b;
	ans = 16'hf15f;
	#20
	A = 16'h6e7c;
	B = 16'hf124;
	ans = 16'heb98;
	#20
	A = 16'h7109;
	B = 16'h70be;
	ans = 16'h74e4;
	#20
	A = 16'hf25e;
	B = 16'he823;
	ans = 16'hf367;
	#20
	A = 16'h769e;
	B = 16'he232;
	ans = 16'h766c;
	#20
	A = 16'h6dee;
	B = 16'hede4;
	ans = 16'h5100;
	#20
	A = 16'hf5d1;
	B = 16'h75d0;
	ans = 16'hcc00;
	#20
	A = 16'h7055;
	B = 16'h7618;
	ans = 16'h7821;
	#20
	A = 16'hf523;
	B = 16'h7156;
	ans = 16'hf0f0;
	#20
	A = 16'h6a9d;
	B = 16'hf5c9;
	ans = 16'hf4f5;
	#20
	A = 16'h7700;
	B = 16'hf247;
	ans = 16'h73b9;
	#20
	A = 16'hf2a2;
	B = 16'hf438;
	ans = 16'hf789;
	#20
	A = 16'h759c;
	B = 16'h7683;
	ans = 16'h7a10;
	#20
	A = 16'hea30;
	B = 16'h761f;
	ans = 16'h7559;
	#20
	A = 16'hf1a9;
	B = 16'hed10;
	ans = 16'hf418;
	#20
	A = 16'hf23c;
	B = 16'hf1e3;
	ans = 16'hf610;
	#20
	A = 16'h7029;
	B = 16'h7526;
	ans = 16'h773a;
	#20
	A = 16'hf6ec;
	B = 16'hf6b2;
	ans = 16'hfacf;
	#20
	A = 16'hee08;
	B = 16'h762c;
	ans = 16'h74aa;
	#20
	A = 16'hf3e5;
	B = 16'h713b;
	ans = 16'hed54;
	#20
	A = 16'h6ae8;
	B = 16'hf59e;
	ans = 16'hf4c1;
	#20
	A = 16'h7631;
	B = 16'h729f;
	ans = 16'h78c0;
	#20
	A = 16'h6bcd;
	B = 16'he972;
	ans = 16'h64b6;
	#20
	A = 16'hedb2;
	B = 16'hf4f3;
	ans = 16'hf660;
	#20
	A = 16'h6a14;
	B = 16'hf66a;
	ans = 16'hf5a8;
	#20
	A = 16'hf48d;
	B = 16'hf6d0;
	ans = 16'hf9ae;
	#20
	A = 16'hef7c;
	B = 16'hf5ff;
	ans = 16'hf7de;
	#20
	A = 16'hf5b1;
	B = 16'hf4b7;
	ans = 16'hf934;
	#20
	A = 16'hf204;
	B = 16'h6ad3;
	ans = 16'hf04f;
	#20
	A = 16'h6be1;
	B = 16'h6d57;
	ans = 16'h70a4;
	#20
	A = 16'hf561;
	B = 16'h7182;
	ans = 16'hf140;
	#20
	A = 16'h768c;
	B = 16'hf5d7;
	ans = 16'h69a8;
	#20
	A = 16'h644d;
	B = 16'hdc17;
	ans = 16'h628e;
	#20
	A = 16'h7745;
	B = 16'hf636;
	ans = 16'h6c3c;
	#20
	A = 16'h6fa5;
	B = 16'h74b6;
	ans = 16'h769f;
	#20
	A = 16'h72c7;
	B = 16'hf459;
	ans = 16'hebac;
	#20
	A = 16'hf16f;
	B = 16'h76b1;
	ans = 16'h73f3;
	#20
	A = 16'hf2c2;
	B = 16'h7595;
	ans = 16'h7068;
	#20
	A = 16'hefc2;
	B = 16'hf6a0;
	ans = 16'hf848;
	#20
	A = 16'hee62;
	B = 16'hf518;
	ans = 16'hf6b0;
	#20
	A = 16'hf07f;
	B = 16'h730e;
	ans = 16'h6d1e;
	#20
	A = 16'hf0f9;
	B = 16'hf562;
	ans = 16'hf7de;
	#20
	A = 16'hf583;
	B = 16'hf5a2;
	ans = 16'hf992;
	#20
	A = 16'h6fdb;
	B = 16'h6e14;
	ans = 16'h72f8;
	#20
	A = 16'hee51;
	B = 16'hccd3;
	ans = 16'hee56;
	#20
	A = 16'h76fb;
	B = 16'hf436;
	ans = 16'h718a;
	#20
	A = 16'h6a30;
	B = 16'h7544;
	ans = 16'h760a;
	#20
	A = 16'hf5a6;
	B = 16'he870;
	ans = 16'hf634;
	#20
	A = 16'h76ad;
	B = 16'h7094;
	ans = 16'h787c;
	#20
	A = 16'hf68e;
	B = 16'heb1e;
	ans = 16'hf772;
	#20
	A = 16'h76c3;
	B = 16'hf660;
	ans = 16'h6630;
	#20
	A = 16'h6b3a;
	B = 16'h7674;
	ans = 16'h775b;
	#20
	A = 16'hf3d5;
	B = 16'hf188;
	ans = 16'hf6ae;
	#20
	A = 16'hf452;
	B = 16'h6e6d;
	ans = 16'hf16e;
	#20
	A = 16'h74b0;
	B = 16'h74a2;
	ans = 16'h78a9;
	#20
	A = 16'h7441;
	B = 16'hf322;
	ans = 16'h6980;
	#20
	A = 16'hf0a8;
	B = 16'h740b;
	ans = 16'h6edc;
	#20
	A = 16'h6fef;
	B = 16'he928;
	ans = 16'h6d5b;
	#20
	A = 16'h75d8;
	B = 16'h6dd5;
	ans = 16'h774d;
	#20
	A = 16'hf266;
	B = 16'hf42c;
	ans = 16'hf75f;
	#20
	A = 16'hf60c;
	B = 16'heceb;
	ans = 16'hf747;
	#20
	A = 16'h74d8;
	B = 16'h6b00;
	ans = 16'h75b8;
	#20
	A = 16'h768a;
	B = 16'hf47b;
	ans = 16'h701e;
	#20
	A = 16'hf21b;
	B = 16'h76b9;
	ans = 16'h7357;
	#20
	A = 16'h7149;
	B = 16'h6e3f;
	ans = 16'h7434;
	#20
	A = 16'hf4c4;
	B = 16'hf6ac;
	ans = 16'hf9b8;
	#20
	A = 16'hde3a;
	B = 16'h73d1;
	ans = 16'h739f;
	#20
	A = 16'h748e;
	B = 16'hf42e;
	ans = 16'h6600;
	#20
	A = 16'hec29;
	B = 16'hecc1;
	ans = 16'hf075;
	#20
	A = 16'hf48c;
	B = 16'hf587;
	ans = 16'hf90a;
	#20
	A = 16'hf3b5;
	B = 16'hf642;
	ans = 16'hf90e;
	#20
	A = 16'h752d;
	B = 16'hf4df;
	ans = 16'h64e0;
	#20
	A = 16'hf2ac;
	B = 16'h70c4;
	ans = 16'heba0;
	#20
	A = 16'h7388;
	B = 16'hf32f;
	ans = 16'h6190;
	#20
	A = 16'hf4a7;
	B = 16'hee77;
	ans = 16'hf645;
	#20
	A = 16'h7473;
	B = 16'h7623;
	ans = 16'h794b;
	#20
	A = 16'h76a7;
	B = 16'hf3b5;
	ans = 16'h7199;
	#20
	A = 16'hf21a;
	B = 16'h63df;
	ans = 16'hf19c;
	#20
	A = 16'hf4b0;
	B = 16'hf3e0;
	ans = 16'hf850;
	#20
	A = 16'hf516;
	B = 16'h7456;
	ans = 16'hea00;
	#20
	A = 16'h7509;
	B = 16'h73fc;
	ans = 16'h7884;
	#20
	A = 16'hf16e;
	B = 16'hf56f;
	ans = 16'hf813;
	#20
	A = 16'h6cd1;
	B = 16'hed3a;
	ans = 16'hde90;
	#20
	A = 16'h70c6;
	B = 16'h73fe;
	ans = 16'h7662;
	#20
	A = 16'h76f5;
	B = 16'h75f9;
	ans = 16'h7a77;
	#20
	A = 16'hf14a;
	B = 16'h7438;
	ans = 16'h6e4c;
	#20
	A = 16'hf6b1;
	B = 16'h725b;
	ans = 16'hf307;
	#20
	A = 16'h6c45;
	B = 16'hf005;
	ans = 16'heb8a;
	#20
	A = 16'h75bb;
	B = 16'h67b7;
	ans = 16'h7636;
	#20
	A = 16'heca5;
	B = 16'he4a6;
	ans = 16'hedce;
	#20
	A = 16'hec22;
	B = 16'hf2da;
	ans = 16'hf476;
	#20
	A = 16'hf73e;
	B = 16'hdb57;
	ans = 16'hf74d;
	#20
	A = 16'h7429;
	B = 16'hf707;
	ans = 16'hf1bc;
	#20
	A = 16'hf729;
	B = 16'hf127;
	ans = 16'hf8de;
	#20
	A = 16'hf457;
	B = 16'hedbd;
	ans = 16'hf5c6;
	#20
	A = 16'h6d66;
	B = 16'h75a0;
	ans = 16'h76fa;
	#20
	A = 16'h6f50;
	B = 16'h74ba;
	ans = 16'h768e;
	#20
	A = 16'hf49d;
	B = 16'hf526;
	ans = 16'hf8e2;
	#20
	A = 16'hf2f5;
	B = 16'h6a3f;
	ans = 16'hf165;
	#20
	A = 16'hf40e;
	B = 16'hf495;
	ans = 16'hf852;
	#20
	A = 16'hf5c0;
	B = 16'hed07;
	ans = 16'hf702;
	#20
	A = 16'hf366;
	B = 16'h7285;
	ans = 16'he708;
	#20
	A = 16'hf4fe;
	B = 16'h7600;
	ans = 16'h6c08;
	#20
	A = 16'h5ed9;
	B = 16'he4eb;
	ans = 16'he26a;
	#20
	A = 16'hf2ce;
	B = 16'h73d6;
	ans = 16'h6820;
	#20
	A = 16'h700d;
	B = 16'h7576;
	ans = 16'h777c;
	#20
	A = 16'h70d1;
	B = 16'hf4d9;
	ans = 16'hf0e1;
	#20
	A = 16'hf1b4;
	B = 16'hf3fd;
	ans = 16'hf6d8;
	#20
	A = 16'hf507;
	B = 16'h773e;
	ans = 16'h706e;
	#20
	A = 16'h745a;
	B = 16'hef3e;
	ans = 16'h7115;
	#20
	A = 16'he6cf;
	B = 16'h75a8;
	ans = 16'h753b;
	#20
	A = 16'h6e82;
	B = 16'hf544;
	ans = 16'hf347;
	#20
	A = 16'h70ff;
	B = 16'h7015;
	ans = 16'h748a;
	#20
	A = 16'heb66;
	B = 16'hf6ca;
	ans = 16'hf7b7;
	#20
	A = 16'hf6d1;
	B = 16'hf5d3;
	ans = 16'hfa52;
	#20
	A = 16'hf308;
	B = 16'h6884;
	ans = 16'hf1e7;
	#20
	A = 16'he9cb;
	B = 16'he8be;
	ans = 16'hed44;
	#20
	A = 16'hf74d;
	B = 16'h748a;
	ans = 16'hf186;
	#20
	A = 16'hf592;
	B = 16'h703c;
	ans = 16'hf2e8;
	#20
	A = 16'h6f37;
	B = 16'h72cb;
	ans = 16'h7533;
	#20
	A = 16'he9a9;
	B = 16'hf386;
	ans = 16'hf478;
	#20
	A = 16'he9fd;
	B = 16'hf17d;
	ans = 16'hf2fc;
	#20
	A = 16'hf205;
	B = 16'h6ced;
	ans = 16'hef1d;
	#20
	A = 16'h733b;
	B = 16'hf4fe;
	ans = 16'hed82;
	#20
	A = 16'hee7d;
	B = 16'hf711;
	ans = 16'hf858;
	#20
	A = 16'he0d6;
	B = 16'hf6d8;
	ans = 16'hf6ff;
	#20
	A = 16'h6e93;
	B = 16'hee5e;
	ans = 16'h5aa0;
	#20
	A = 16'h74f9;
	B = 16'h7552;
	ans = 16'h7926;
	#20
	A = 16'h709d;
	B = 16'hf5cc;
	ans = 16'hf2fb;
	#20
	A = 16'h6c5a;
	B = 16'h717a;
	ans = 16'h73a7;
	#20
	A = 16'hf728;
	B = 16'hf582;
	ans = 16'hfa55;
	#20
	A = 16'hee5a;
	B = 16'h6e05;
	ans = 16'hdd50;
	#20
	A = 16'h6fb6;
	B = 16'h76c8;
	ans = 16'h785b;
	#20
	A = 16'h6e42;
	B = 16'he116;
	ans = 16'h6d9f;
	#20
	A = 16'hf3a0;
	B = 16'h75a3;
	ans = 16'h6f4c;
	#20
	A = 16'hf67e;
	B = 16'h7316;
	ans = 16'hf1e6;
	#20
	A = 16'h750e;
	B = 16'h71c3;
	ans = 16'h77f0;
	#20
	A = 16'h7539;
	B = 16'hf4f8;
	ans = 16'h6410;
	#20
	A = 16'h7733;
	B = 16'h6d5a;
	ans = 16'h7845;
	#20
	A = 16'h70d0;
	B = 16'h729a;
	ans = 16'h75b5;
	#20
	A = 16'hee0a;
	B = 16'h6846;
	ans = 16'hebce;
	#20
	A = 16'hec03;
	B = 16'hefe0;
	ans = 16'hf1f2;
	#20
	A = 16'h6cbd;
	B = 16'h7518;
	ans = 16'h7647;
	#20
	A = 16'he99d;
	B = 16'hef8f;
	ans = 16'hf12f;
	#20
	A = 16'hf6e1;
	B = 16'he9cb;
	ans = 16'hf79a;
	#20
	A = 16'hf6cd;
	B = 16'hf4e0;
	ans = 16'hf9d6;
	#20
	A = 16'hee63;
	B = 16'hf61d;
	ans = 16'hf7b6;
	#20
	A = 16'hf67c;
	B = 16'h718e;
	ans = 16'hf36a;
	#20
	A = 16'h751b;
	B = 16'h6aee;
	ans = 16'h75f9;
	#20
	A = 16'hf415;
	B = 16'he25f;
	ans = 16'hf448;
	#20
	A = 16'he526;
	B = 16'h746e;
	ans = 16'h741c;
	#20
	A = 16'hf439;
	B = 16'he56e;
	ans = 16'hf490;
	#20
	A = 16'hee26;
	B = 16'he866;
	ans = 16'hf02c;
	#20
	A = 16'h6d29;
	B = 16'hf679;
	ans = 16'hf52f;
	#20
	A = 16'h711a;
	B = 16'h71cd;
	ans = 16'h7574;
	#20
	A = 16'h7213;
	B = 16'h6877;
	ans = 16'h7331;
	#20
	A = 16'h70fc;
	B = 16'hf5f8;
	ans = 16'hf2f4;
	#20
	A = 16'h7725;
	B = 16'h74b7;
	ans = 16'h79ee;
	#20
	A = 16'hf162;
	B = 16'h6896;
	ans = 16'hf03c;
	#20
	A = 16'hf5fd;
	B = 16'hf047;
	ans = 16'hf810;
	#20
	A = 16'h75b5;
	B = 16'hf032;
	ans = 16'h7338;
	#20
	A = 16'hee2c;
	B = 16'hf2ce;
	ans = 16'hf4f2;
	#20
	A = 16'h753b;
	B = 16'he972;
	ans = 16'h748d;
	#20
	A = 16'h7540;
	B = 16'h6e89;
	ans = 16'h76e2;
	#20
	A = 16'hf4cd;
	B = 16'h742a;
	ans = 16'he918;
	#20
	A = 16'h773e;
	B = 16'hf672;
	ans = 16'h6a60;
	#20
	A = 16'h6b74;
	B = 16'hf658;
	ans = 16'hf56a;
	#20
	A = 16'hf00b;
	B = 16'h6d44;
	ans = 16'he9a4;
	#20
	A = 16'h73d6;
	B = 16'hf2ea;
	ans = 16'h6760;
	#20
	A = 16'hf0b0;
	B = 16'he57c;
	ans = 16'hf160;
	#20
	A = 16'hf2fa;
	B = 16'h761e;
	ans = 16'h7142;
	#20
	A = 16'hf689;
	B = 16'h7623;
	ans = 16'he660;
	#20
	A = 16'hf48d;
	B = 16'heff9;
	ans = 16'hf68b;
	#20
	A = 16'hf389;
	B = 16'h724b;
	ans = 16'he8f8;
	#20
	A = 16'h7123;
	B = 16'h74e2;
	ans = 16'h7774;
	#20
	A = 16'h7537;
	B = 16'h76e7;
	ans = 16'h7a0f;
	#20
	A = 16'h76f8;
	B = 16'h6c7b;
	ans = 16'h780b;
	#20
	A = 16'h6db4;
	B = 16'h7029;
	ans = 16'h7303;
	#20
	A = 16'hf5e2;
	B = 16'h76ef;
	ans = 16'h6c34;
	#20
	A = 16'hf33c;
	B = 16'hf697;
	ans = 16'hf91a;
	#20
	A = 16'h7481;
	B = 16'hf730;
	ans = 16'hf15e;
	#20
	A = 16'h6556;
	B = 16'hf08f;
	ans = 16'hefc8;
	#20
	A = 16'h75f9;
	B = 16'hf176;
	ans = 16'h727c;
	#20
	A = 16'hf0cf;
	B = 16'hf357;
	ans = 16'hf613;
	#20
	A = 16'h741f;
	B = 16'he388;
	ans = 16'h73c6;
	#20
	A = 16'h6c23;
	B = 16'h72a6;
	ans = 16'h745c;
	#20
	A = 16'h708d;
	B = 16'hf20d;
	ans = 16'hea00;
	#20
	A = 16'hee10;
	B = 16'h6f6c;
	ans = 16'h6570;
	#20
	A = 16'hf14c;
	B = 16'h7464;
	ans = 16'h6ef8;
	#20
	A = 16'h6f1c;
	B = 16'hf44a;
	ans = 16'hf106;
	#20
	A = 16'heb32;
	B = 16'h73f2;
	ans = 16'h7226;
	#20
	A = 16'hf691;
	B = 16'hf232;
	ans = 16'hf8d5;
	#20
	A = 16'hf20e;
	B = 16'h6e7d;
	ans = 16'hed9f;
	#20
	A = 16'h7663;
	B = 16'h7649;
	ans = 16'h7a56;
	#20
	A = 16'hf576;
	B = 16'h6903;
	ans = 16'hf4d6;
	#20
	A = 16'hf636;
	B = 16'hf6ef;
	ans = 16'hfa92;
	#20
	A = 16'hf448;
	B = 16'h6df3;
	ans = 16'hf196;
	#20
	A = 16'hf6e9;
	B = 16'h7691;
	ans = 16'he580;
	#20
	A = 16'h70ff;
	B = 16'h72e3;
	ans = 16'h75f1;
	#20
	A = 16'hefca;
	B = 16'h7333;
	ans = 16'h6e9c;
	#20
	A = 16'he89b;
	B = 16'h7303;
	ans = 16'h71dc;
	#20
	A = 16'h76a6;
	B = 16'he1a4;
	ans = 16'h7679;
	#20
	A = 16'hf48c;
	B = 16'h72cb;
	ans = 16'hec9a;
	#20
	A = 16'heaf9;
	B = 16'h7270;
	ans = 16'h70b2;
	#20
	A = 16'hf5ae;
	B = 16'h7429;
	ans = 16'hee14;
	#20
	A = 16'hf517;
	B = 16'hee74;
	ans = 16'hf6b4;
	#20
	A = 16'h70e5;
	B = 16'hebf0;
	ans = 16'h6dd2;
	#20
	A = 16'h70ab;
	B = 16'h73b5;
	ans = 16'h7630;
	#20
	A = 16'h74a6;
	B = 16'hf198;
	ans = 16'h6f68;
	#20
	A = 16'he890;
	B = 16'h6e9c;
	ans = 16'h6c54;
	#20
	A = 16'h76b5;
	B = 16'hf747;
	ans = 16'he890;
	#20
	A = 16'h774e;
	B = 16'h7536;
	ans = 16'h7a42;
	#20
	A = 16'h7417;
	B = 16'hf5a0;
	ans = 16'hee24;
	#20
	A = 16'h6c16;
	B = 16'hedee;
	ans = 16'he760;
	#20
	A = 16'hf539;
	B = 16'hf6cf;
	ans = 16'hfa04;
	#20
	A = 16'h67bf;
	B = 16'h70af;
	ans = 16'h71a7;
	#20
	A = 16'hf399;
	B = 16'h7640;
	ans = 16'h70e7;
	#20
	A = 16'h73f1;
	B = 16'h6dac;
	ans = 16'h7564;
	#20
	A = 16'hf493;
	B = 16'hf2ce;
	ans = 16'hf7fa;
	#20
	A = 16'hf5d8;
	B = 16'he1dd;
	ans = 16'hf607;
	#20
	A = 16'h67a8;
	B = 16'h7238;
	ans = 16'h732d;
	#20
	A = 16'hf253;
	B = 16'hf146;
	ans = 16'hf5cc;
	#20
	A = 16'hf69a;
	B = 16'hf666;
	ans = 16'hfa80;
	#20
	A = 16'h71b6;
	B = 16'hedad;
	ans = 16'h6dbf;
	#20
	A = 16'hf4f3;
	B = 16'hf54b;
	ans = 16'hf91f;
	#20
	A = 16'h773c;
	B = 16'h750f;
	ans = 16'h7a26;
	#20
	A = 16'hf514;
	B = 16'hf2dd;
	ans = 16'hf841;
	#20
	A = 16'hf145;
	B = 16'hf6eb;
	ans = 16'hf8c7;
	#20
	A = 16'h76f7;
	B = 16'h6817;
	ans = 16'h777a;
	#20
	A = 16'h6c6e;
	B = 16'hf496;
	ans = 16'hf2f5;
	#20
	A = 16'h6d50;
	B = 16'hf413;
	ans = 16'hf17e;
	#20
	A = 16'head9;
	B = 16'he4a1;
	ans = 16'hec95;
	#20
	A = 16'hf371;
	B = 16'h714d;
	ans = 16'hec48;
	#20
	A = 16'h6cb7;
	B = 16'hf643;
	ans = 16'hf515;
	#20
	A = 16'hded1;
	B = 16'hf71f;
	ans = 16'hf73a;
	#20
	A = 16'hf5c2;
	B = 16'heed2;
	ans = 16'hf776;
	#20
	A = 16'h6f05;
	B = 16'h6d9d;
	ans = 16'h7251;
	#20
	A = 16'hf57a;
	B = 16'hf6b7;
	ans = 16'hfa18;
	#20
	A = 16'hf3c8;
	B = 16'h7611;
	ans = 16'h705a;
	#20
	A = 16'hf686;
	B = 16'h7669;
	ans = 16'hdf40;
	#20
	A = 16'he892;
	B = 16'h6f84;
	ans = 16'h6d3b;
	#20
	A = 16'h6d27;
	B = 16'hedf6;
	ans = 16'he278;
	#20
	A = 16'h54e1;
	B = 16'hf529;
	ans = 16'hf524;
	#20
	A = 16'hf18a;
	B = 16'h713c;
	ans = 16'he0e0;
	#20
	A = 16'hee35;
	B = 16'hf24e;
	ans = 16'hf4b4;
	#20
	A = 16'heca1;
	B = 16'h72e5;
	ans = 16'h7094;
	#20
	A = 16'hf6fc;
	B = 16'hf6df;
	ans = 16'hfaee;
	#20
	A = 16'hf6f1;
	B = 16'hf5f4;
	ans = 16'hfa72;
	#20
	A = 16'he7e4;
	B = 16'h74aa;
	ans = 16'h742c;
	#20
	A = 16'h7724;
	B = 16'hf5ce;
	ans = 16'h6d58;
	#20
	A = 16'h75e8;
	B = 16'heff8;
	ans = 16'h73d4;
	#20
	A = 16'h71ff;
	B = 16'h75c8;
	ans = 16'h7864;
	#20
	A = 16'h75ba;
	B = 16'h7367;
	ans = 16'h78b7;
	#20
	A = 16'hf1f0;
	B = 16'h7225;
	ans = 16'h5ea0;
	#20
	A = 16'he86c;
	B = 16'h6a53;
	ans = 16'h639c;
	#20
	A = 16'h7513;
	B = 16'hf6ed;
	ans = 16'hef68;
	#20
	A = 16'hf6f5;
	B = 16'hf419;
	ans = 16'hf987;
	#20
	A = 16'hf64d;
	B = 16'hf6c1;
	ans = 16'hfa87;
	#20
	A = 16'h7545;
	B = 16'hf635;
	ans = 16'heb80;
	#20
	A = 16'h6a11;
	B = 16'h738c;
	ans = 16'h7488;
	#20
	A = 16'hf545;
	B = 16'hf471;
	ans = 16'hf8db;
	#20
	A = 16'hf5dd;
	B = 16'hf494;
	ans = 16'hf938;
	#20
	A = 16'h6d00;
	B = 16'h773d;
	ans = 16'h783e;
	#20
	A = 16'h73fc;
	B = 16'hf2f4;
	ans = 16'h6820;
	#20
	A = 16'hf0f1;
	B = 16'hee7a;
	ans = 16'hf417;
	#20
	A = 16'h6ee9;
	B = 16'h751e;
	ans = 16'h76d8;
	#20
	A = 16'h7681;
	B = 16'h6fd7;
	ans = 16'h783b;
	#20
	A = 16'h71e9;
	B = 16'hf495;
	ans = 16'hee82;
	#20
	A = 16'h755c;
	B = 16'h7247;
	ans = 16'h7840;
	#20
	A = 16'h7047;
	B = 16'h6e6d;
	ans = 16'h737e;
	#20
	A = 16'h72ff;
	B = 16'h7083;
	ans = 16'h75c1;
	#20
	A = 16'hf4bf;
	B = 16'hf6d2;
	ans = 16'hf9c8;
	#20
	A = 16'hf73f;
	B = 16'hf0ef;
	ans = 16'hf8db;
	#20
	A = 16'hf4d8;
	B = 16'hf679;
	ans = 16'hf9a8;
	#20
	A = 16'h75bd;
	B = 16'h75bb;
	ans = 16'h79bc;
	#20
	A = 16'h75b7;
	B = 16'h750c;
	ans = 16'h7962;
	#20
	A = 16'hf700;
	B = 16'hec48;
	ans = 16'hf809;
	#20
	A = 16'hf1cf;
	B = 16'hf5df;
	ans = 16'hf863;
	#20
	A = 16'h74e6;
	B = 16'hf3dc;
	ans = 16'h6bc0;
	#20
	A = 16'he5aa;
	B = 16'h75df;
	ans = 16'h7584;
	#20
	A = 16'hea60;
	B = 16'hecee;
	ans = 16'hf00f;
	#20
	A = 16'hecd1;
	B = 16'h6612;
	ans = 16'hea99;
	#20
	A = 16'hf663;
	B = 16'h6e8f;
	ans = 16'hf4bf;
	#20
	A = 16'hf5b6;
	B = 16'h7621;
	ans = 16'h66b0;
	#20
	A = 16'hf09c;
	B = 16'he615;
	ans = 16'hf15f;
	#20
	A = 16'h7367;
	B = 16'h767f;
	ans = 16'h7919;
	#20
	A = 16'h6b9f;
	B = 16'hece1;
	ans = 16'he446;
	#20
	A = 16'he3ee;
	B = 16'h70c3;
	ans = 16'h7044;
	#20
	A = 16'h730c;
	B = 16'hf1a3;
	ans = 16'h69a4;
	#20
	A = 16'h7724;
	B = 16'h7068;
	ans = 16'h78ac;
	#20
	A = 16'h751d;
	B = 16'h74c3;
	ans = 16'h78f0;
	#20
	A = 16'hf43e;
	B = 16'h7211;
	ans = 16'hecd6;
	#20
	A = 16'he884;
	B = 16'hec7a;
	ans = 16'heebc;
	#20
	A = 16'h75b7;
	B = 16'hdfc6;
	ans = 16'h7598;
	#20
	A = 16'h71c5;
	B = 16'hec27;
	ans = 16'h6f63;
	#20
	A = 16'h771b;
	B = 16'he8b6;
	ans = 16'h7684;
	#20
	A = 16'h6a14;
	B = 16'h7654;
	ans = 16'h7716;
	#20
	A = 16'h76e3;
	B = 16'hf67e;
	ans = 16'h6650;
	#20
	A = 16'h74b4;
	B = 16'h7036;
	ans = 16'h76cf;
	#20
	A = 16'h6bf2;
	B = 16'heb1a;
	ans = 16'h5ec0;
	#20
	A = 16'hf0d6;
	B = 16'h6fa6;
	ans = 16'he80c;
	#20
	A = 16'he120;
	B = 16'hf4d3;
	ans = 16'hf4fc;
	#20
	A = 16'h6563;
	B = 16'hf45b;
	ans = 16'hf405;
	#20
	A = 16'hf66d;
	B = 16'h70fc;
	ans = 16'hf3de;
	#20
	A = 16'h7166;
	B = 16'hf3cc;
	ans = 16'heccc;
	#20
	A = 16'h6fee;
	B = 16'h7372;
	ans = 16'h75b4;
	#20
	A = 16'h6ace;
	B = 16'h703c;
	ans = 16'h71f0;
	#20
	A = 16'hf5a3;
	B = 16'h6d53;
	ans = 16'hf44e;
	#20
	A = 16'h74e6;
	B = 16'h713a;
	ans = 16'h7783;
	#20
	A = 16'hf341;
	B = 16'h68bb;
	ans = 16'hf212;
	#20
	A = 16'hf496;
	B = 16'h7482;
	ans = 16'hdd00;
	#20
	A = 16'hf60b;
	B = 16'hee02;
	ans = 16'hf78c;
	#20
	A = 16'h75db;
	B = 16'h749c;
	ans = 16'h793c;
	#20
	A = 16'hf4f3;
	B = 16'h6b2a;
	ans = 16'hf40e;
	#20
	A = 16'h6ab1;
	B = 16'hf36d;
	ans = 16'hf1c1;
	#20
	A = 16'heeb0;
	B = 16'hef14;
	ans = 16'hf2e2;
	#20
	A = 16'h7567;
	B = 16'h7407;
	ans = 16'h78b7;
	#20
	A = 16'hf111;
	B = 16'hf4b4;
	ans = 16'hf73c;
	#20
	A = 16'hf642;
	B = 16'hf475;
	ans = 16'hf95c;
	#20
	A = 16'h74e5;
	B = 16'h741a;
	ans = 16'h7880;
	#20
	A = 16'he39f;
	B = 16'h6e38;
	ans = 16'h6d44;
	#20
	A = 16'h7484;
	B = 16'hee82;
	ans = 16'h71c7;
	#20
	A = 16'hf6ca;
	B = 16'hf032;
	ans = 16'hf872;
	#20
	A = 16'h74d5;
	B = 16'h6c4d;
	ans = 16'h75e8;
	#20
	A = 16'h7549;
	B = 16'h73cf;
	ans = 16'h7898;
	#20
	A = 16'hf1ce;
	B = 16'hf453;
	ans = 16'hf73a;
	#20
	A = 16'hf705;
	B = 16'h76e6;
	ans = 16'hdfc0;
	#20
	A = 16'hf351;
	B = 16'h7463;
	ans = 16'h69d4;
	#20
	A = 16'h761d;
	B = 16'hf363;
	ans = 16'h70d7;
	#20
	A = 16'h7715;
	B = 16'h76c4;
	ans = 16'h7aec;
	#20
	A = 16'h71c3;
	B = 16'hf73c;
	ans = 16'hf45a;
	#20
	A = 16'h7652;
	B = 16'hf436;
	ans = 16'h7038;
	#20
	A = 16'h70e3;
	B = 16'hf29b;
	ans = 16'heae0;
	#20
	A = 16'hf61d;
	B = 16'h75bf;
	ans = 16'he5e0;
	#20
	A = 16'h7550;
	B = 16'he6a4;
	ans = 16'h74e6;
	#20
	A = 16'h6e8a;
	B = 16'h74a3;
	ans = 16'h7646;
	#20
	A = 16'h71ec;
	B = 16'h75fb;
	ans = 16'h7878;
	#20
	A = 16'hf4bc;
	B = 16'head1;
	ans = 16'hf596;
	#20
	A = 16'hf57b;
	B = 16'hf285;
	ans = 16'hf85f;
	#20
	A = 16'hec87;
	B = 16'hf0f1;
	ans = 16'hf334;
	#20
	A = 16'hf721;
	B = 16'hebd5;
	ans = 16'hf80e;
	#20
	A = 16'h6cbe;
	B = 16'h6c4a;
	ans = 16'h7084;
	#20
	A = 16'hf48e;
	B = 16'hf1c0;
	ans = 16'hf76e;
	#20
	A = 16'h7212;
	B = 16'h722d;
	ans = 16'h7620;
	#20
	A = 16'h7578;
	B = 16'hefbf;
	ans = 16'h7310;
	#20
	A = 16'h6b25;
	B = 16'h73b4;
	ans = 16'h74bf;
	#20
	A = 16'hf0bb;
	B = 16'hf163;
	ans = 16'hf50f;
	#20
	A = 16'hf6db;
	B = 16'h7503;
	ans = 16'hef60;
	#20
	A = 16'hf642;
	B = 16'h75c3;
	ans = 16'he7f0;
	#20
	A = 16'h725f;
	B = 16'hf71e;
	ans = 16'hf3dd;
	#20
	A = 16'h6a69;
	B = 16'h690e;
	ans = 16'h6dbc;
	#20
	A = 16'h73fd;
	B = 16'h7620;
	ans = 16'h790f;
	#20
	A = 16'h75d1;
	B = 16'h76e6;
	ans = 16'h7a5c;
	#20
	A = 16'hf5e3;
	B = 16'hf2b2;
	ans = 16'hf89e;
	#20
	A = 16'h7615;
	B = 16'hf5b7;
	ans = 16'h65e0;
	#20
	A = 16'h6ac7;
	B = 16'hf597;
	ans = 16'hf4be;
	#20
	A = 16'h711e;
	B = 16'h7657;
	ans = 16'h7873;
	#20
	A = 16'h7709;
	B = 16'he1f6;
	ans = 16'h76d9;
	#20
	A = 16'h75ea;
	B = 16'hf21a;
	ans = 16'h71ba;
	#20
	A = 16'h753b;
	B = 16'hf403;
	ans = 16'h6ce0;
	#20
	A = 16'hf123;
	B = 16'h68bf;
	ans = 16'hefe6;
	#20
	A = 16'hf6ad;
	B = 16'h7009;
	ans = 16'hf4a8;
	#20
	A = 16'h6cda;
	B = 16'hed21;
	ans = 16'hdc70;
	#20
	A = 16'hf1ba;
	B = 16'h73be;
	ans = 16'h6c08;
	#20
	A = 16'h7122;
	B = 16'hf5bc;
	ans = 16'hf256;
	#20
	A = 16'h6bc2;
	B = 16'hf35e;
	ans = 16'hf16e;
	#20
	A = 16'h7412;
	B = 16'h7107;
	ans = 16'h7696;
	#20
	A = 16'h64a6;
	B = 16'h70a7;
	ans = 16'h713c;
	#20
	A = 16'h7220;
	B = 16'hef6a;
	ans = 16'h6cd6;
	#20
	A = 16'h71a3;
	B = 16'h7716;
	ans = 16'h78f4;
	#20
	A = 16'he832;
	B = 16'h757f;
	ans = 16'h74f9;
	#20
	A = 16'hf63d;
	B = 16'h7262;
	ans = 16'hf218;
	#20
	A = 16'h7033;
	B = 16'hf448;
	ans = 16'hf05d;
	#20
	A = 16'hf719;
	B = 16'h76de;
	ans = 16'he360;
	#20
	A = 16'hf0cb;
	B = 16'h725c;
	ans = 16'h6a44;
	#20
	A = 16'hf2c9;
	B = 16'hf1b2;
	ans = 16'hf63e;
	#20
	A = 16'h7639;
	B = 16'h74e4;
	ans = 16'h798e;
	#20
	A = 16'h76b6;
	B = 16'hf5dd;
	ans = 16'h6ac8;
	#20
	A = 16'hf6b1;
	B = 16'hefa5;
	ans = 16'hf84d;
	#20
	A = 16'h773a;
	B = 16'hf495;
	ans = 16'h714a;
	#20
	A = 16'hf1b7;
	B = 16'h7585;
	ans = 16'h7153;
	#20
	A = 16'hf4f9;
	B = 16'h6801;
	ans = 16'hf479;
	#20
	A = 16'h71bc;
	B = 16'h6f6b;
	ans = 16'h74b9;
	#20
	A = 16'h771b;
	B = 16'hf6b0;
	ans = 16'h66b0;
	#20
	A = 16'hf05c;
	B = 16'h6d1e;
	ans = 16'heb34;
	#20
	A = 16'h6fa3;
	B = 16'hf53e;
	ans = 16'hf2aa;
	#20
	A = 16'h7370;
	B = 16'hf4c6;
	ans = 16'hec38;
	#20
	A = 16'hf5f7;
	B = 16'h7454;
	ans = 16'hee8c;
	#20
	A = 16'hf667;
	B = 16'h6e94;
	ans = 16'hf4c2;
	#20
	A = 16'h6e91;
	B = 16'hecc4;
	ans = 16'h6734;
	#20
	A = 16'h74bd;
	B = 16'h5d05;
	ans = 16'h74d1;
	#20
	A = 16'hf4dd;
	B = 16'hec3b;
	ans = 16'hf5ec;
	#20
	A = 16'hf15d;
	B = 16'hf27a;
	ans = 16'hf5ec;
	#20
	A = 16'hf3be;
	B = 16'hef9b;
	ans = 16'hf5c6;
	#20
	A = 16'hf1ce;
	B = 16'hf41f;
	ans = 16'hf706;
	#20
	A = 16'h7454;
	B = 16'hef3f;
	ans = 16'h7108;
	#20
	A = 16'hf1ea;
	B = 16'hf4fb;
	ans = 16'hf7f0;
	#20
	A = 16'h745a;
	B = 16'h74ba;
	ans = 16'h788a;
	#20
	A = 16'h75dd;
	B = 16'hf602;
	ans = 16'he0a0;
	#20
	A = 16'h74c6;
	B = 16'hecd6;
	ans = 16'h7321;
	#20
	A = 16'h75e7;
	B = 16'hf17e;
	ans = 16'h7250;
	#20
	A = 16'h730e;
	B = 16'h6490;
	ans = 16'h73a0;
	#20
	A = 16'hf750;
	B = 16'h73d9;
	ans = 16'hf2c7;
	#20
	A = 16'h700b;
	B = 16'he999;
	ans = 16'h6d4a;
	#20
	A = 16'hf286;
	B = 16'h749c;
	ans = 16'h6d64;
	#20
	A = 16'hf70f;
	B = 16'hf2b6;
	ans = 16'hf935;
	#20
	A = 16'hf4f8;
	B = 16'h6e0c;
	ans = 16'hf2ea;
	#20
	A = 16'h7651;
	B = 16'h6aa0;
	ans = 16'h7725;
	#20
	A = 16'hf552;
	B = 16'h76f7;
	ans = 16'h6e94;
	#20
	A = 16'hf5b9;
	B = 16'h76e6;
	ans = 16'h6cb4;
	#20
	A = 16'hef09;
	B = 16'h76aa;
	ans = 16'h74e8;
	#20
	A = 16'hf377;
	B = 16'hf1f5;
	ans = 16'hf6b6;
	#20
	A = 16'hf3cf;
	B = 16'h754b;
	ans = 16'h6d8e;
	#20
	A = 16'h6a83;
	B = 16'h6bcd;
	ans = 16'h6f28;
	#20
	A = 16'hf03e;
	B = 16'hf02f;
	ans = 16'hf436;
	#20
	A = 16'h7695;
	B = 16'h720a;
	ans = 16'h78cd;
	#20
	A = 16'hedb0;
	B = 16'h7541;
	ans = 16'h73aa;
	#20
	A = 16'hf4d3;
	B = 16'h7695;
	ans = 16'h6f08;
	#20
	A = 16'h761c;
	B = 16'h75a9;
	ans = 16'h79e2;
	#20
	A = 16'h74a1;
	B = 16'hf4f5;
	ans = 16'he540;
	#20
	A = 16'hf1da;
	B = 16'hf578;
	ans = 16'hf832;
	#20
	A = 16'h72a4;
	B = 16'hec2f;
	ans = 16'h708c;
	#20
	A = 16'hf200;
	B = 16'h69da;
	ans = 16'hf08a;
	#20
	A = 16'hf648;
	B = 16'hf456;
	ans = 16'hf94f;
	#20
	A = 16'h76e5;
	B = 16'heab5;
	ans = 16'h760e;
	#20
	A = 16'hec27;
	B = 16'hf384;
	ans = 16'hf4cc;
	#20
	A = 16'hf5e3;
	B = 16'h7587;
	ans = 16'he5c0;
	#20
	A = 16'h7647;
	B = 16'h6a6d;
	ans = 16'h7715;
	#20
	A = 16'hf2ab;
	B = 16'h71c4;
	ans = 16'he738;
	#20
	A = 16'h74d9;
	B = 16'h74bd;
	ans = 16'h78cb;
	#20
	A = 16'hf4b5;
	B = 16'h75d8;
	ans = 16'h6c8c;
	#20
	A = 16'h76c0;
	B = 16'hf550;
	ans = 16'h6dc0;
	#20
	A = 16'hf58d;
	B = 16'h748b;
	ans = 16'hec08;
	#20
	A = 16'h64ee;
	B = 16'hf3ac;
	ans = 16'hf30e;
	#20
	A = 16'h7715;
	B = 16'h7183;
	ans = 16'h78eb;
	#20
	A = 16'hef1d;
	B = 16'h731d;
	ans = 16'h6f1d;
	#20
	A = 16'hf330;
	B = 16'h6807;
	ans = 16'hf22e;
	#20
	A = 16'h5997;
	B = 16'hf6c6;
	ans = 16'hf6bb;
	#20
	A = 16'h772e;
	B = 16'hee96;
	ans = 16'h7588;
	#20
	A = 16'hedd2;
	B = 16'hf37e;
	ans = 16'hf534;
	#20
	A = 16'hf468;
	B = 16'hf722;
	ans = 16'hf9c5;
	#20
	A = 16'hf6e5;
	B = 16'hf20a;
	ans = 16'hf8f5;
	#20
	A = 16'h6e49;
	B = 16'hf027;
	ans = 16'he80a;
	#20
	A = 16'h758c;
	B = 16'h6c94;
	ans = 16'h76b1;
	#20
	A = 16'h753f;
	B = 16'h6ca5;
	ans = 16'h7668;
	#20
	A = 16'h68fd;
	B = 16'hf511;
	ans = 16'hf471;
	#20
	A = 16'h75f6;
	B = 16'heffe;
	ans = 16'h73ed;
	#20
	A = 16'h6c5f;
	B = 16'hf306;
	ans = 16'hf0d6;
	#20
	A = 16'h7644;
	B = 16'hf17c;
	ans = 16'h730c;
	#20
	A = 16'h6de8;
	B = 16'hf4fc;
	ans = 16'hf304;
	#20
	A = 16'hf68b;
	B = 16'h7173;
	ans = 16'hf3a3;
	#20
	A = 16'h6ef1;
	B = 16'h764e;
	ans = 16'h7805;
	#20
	A = 16'h6c20;
	B = 16'h7502;
	ans = 16'h760a;
	#20
	A = 16'hf02c;
	B = 16'h6cc2;
	ans = 16'heb2c;
	#20
	A = 16'hf734;
	B = 16'h67e3;
	ans = 16'hf6b6;
	#20
	A = 16'hf604;
	B = 16'h6c13;
	ans = 16'hf4ff;
	#20
	A = 16'hf4d0;
	B = 16'hf11a;
	ans = 16'hf75d;
	#20
	A = 16'h72bd;
	B = 16'h6e6d;
	ans = 16'h74fa;
	#20
	A = 16'hf320;
	B = 16'h72aa;
	ans = 16'he360;
	#20
	A = 16'h744a;
	B = 16'h6653;
	ans = 16'h74af;
	#20
	A = 16'hf418;
	B = 16'h76a5;
	ans = 16'h711a;
	#20
	A = 16'hf583;
	B = 16'h7434;
	ans = 16'hed3c;
	#20
	A = 16'hf575;
	B = 16'hec99;
	ans = 16'hf69b;
	#20
	A = 16'h72f7;
	B = 16'h7519;
	ans = 16'h784a;
	#20
	A = 16'h7215;
	B = 16'h7583;
	ans = 16'h7847;
	#20
	A = 16'h68dd;
	B = 16'hf14f;
	ans = 16'hf018;
	#20
	A = 16'hf6e3;
	B = 16'h75a5;
	ans = 16'hecf8;
	#20
	A = 16'hf11b;
	B = 16'hea92;
	ans = 16'hf2c0;
	#20
	A = 16'h701d;
	B = 16'h66ca;
	ans = 16'h70f6;
	#20
	A = 16'hf660;
	B = 16'hf45e;
	ans = 16'hf95f;
	#20
	A = 16'h634a;
	B = 16'hdd04;
	ans = 16'h60c8;
	#20
	A = 16'h715f;
	B = 16'h75fe;
	ans = 16'h7857;
	#20
	A = 16'hf60a;
	B = 16'h7431;
	ans = 16'hef64;
	#20
	A = 16'h75cd;
	B = 16'h7180;
	ans = 16'h7846;
	#20
	A = 16'h76ac;
	B = 16'hf270;
	ans = 16'h72e8;
	#20
	A = 16'h769f;
	B = 16'h753f;
	ans = 16'h79ef;
	#20
	A = 16'h7116;
	B = 16'h770e;
	ans = 16'h78cc;
	#20
	A = 16'h7379;
	B = 16'h7415;
	ans = 16'h77d2;
	#20
	A = 16'h74cf;
	B = 16'hf5c0;
	ans = 16'heb88;
	#20
	A = 16'h74c7;
	B = 16'h76ea;
	ans = 16'h79d8;
	#20
	A = 16'h7470;
	B = 16'h70ef;
	ans = 16'h76e8;
	#20
	A = 16'h71ab;
	B = 16'hf666;
	ans = 16'hf321;
	#20
	A = 16'h6525;
	B = 16'hf0f1;
	ans = 16'hf04c;
	#20
	A = 16'hf3aa;
	B = 16'h6a81;
	ans = 16'hf20a;
	#20
	A = 16'h746b;
	B = 16'hf216;
	ans = 16'h6d80;
	#20
	A = 16'he9d9;
	B = 16'hf25b;
	ans = 16'hf3d1;
	#20
	A = 16'h6c6c;
	B = 16'h7481;
	ans = 16'h759c;
	#20
	A = 16'hf6ab;
	B = 16'h7129;
	ans = 16'hf416;
	#20
	A = 16'h72b2;
	B = 16'hf61c;
	ans = 16'hf186;
	#20
	A = 16'hf3aa;
	B = 16'hed5c;
	ans = 16'hf52c;
	#20
	A = 16'he95f;
	B = 16'hf359;
	ans = 16'hf458;
	#20
	A = 16'h7632;
	B = 16'hf5e6;
	ans = 16'h64c0;
	#20
	A = 16'hf559;
	B = 16'heceb;
	ans = 16'hf694;
	#20
	A = 16'hf35e;
	B = 16'h68d5;
	ans = 16'hf229;
	#20
	A = 16'h7656;
	B = 16'h54c3;
	ans = 16'h765b;
	#20
	A = 16'hf210;
	B = 16'h708b;
	ans = 16'hea14;
	#20
	A = 16'heec3;
	B = 16'h677c;
	ans = 16'hece4;
	#20
	A = 16'h7135;
	B = 16'hf534;
	ans = 16'hf133;
	#20
	A = 16'hee3e;
	B = 16'h6dd3;
	ans = 16'hdeb0;
	#20
	A = 16'h6e82;
	B = 16'h5bf4;
	ans = 16'h6ec2;
	#20
	A = 16'h746e;
	B = 16'h74f0;
	ans = 16'h78af;
	#20
	A = 16'h76e8;
	B = 16'h771a;
	ans = 16'h7b01;
	#20
	A = 16'hf55f;
	B = 16'h74e0;
	ans = 16'he7f0;
	#20
	A = 16'h7139;
	B = 16'hec04;
	ans = 16'h6e6e;
	#20
	A = 16'hf21f;
	B = 16'h753e;
	ans = 16'h705d;
	#20
	A = 16'hf60d;
	B = 16'h7452;
	ans = 16'heeec;
	#20
	A = 16'hf07b;
	B = 16'hf010;
	ans = 16'hf446;
	#20
	A = 16'h7629;
	B = 16'hf4ef;
	ans = 16'h6ce8;
	#20
	A = 16'hecbf;
	B = 16'h5b71;
	ans = 16'hec83;
	#20
	A = 16'h60a9;
	B = 16'hf345;
	ans = 16'hf2fa;
	#20
	A = 16'h7410;
	B = 16'hf5f1;
	ans = 16'hef84;
	#20
	A = 16'h734e;
	B = 16'he5ba;
	ans = 16'h7297;
	#20
	A = 16'hf482;
	B = 16'hf24e;
	ans = 16'hf7a9;
	#20
	A = 16'he724;
	B = 16'hf5bf;
	ans = 16'hf631;
	#20
	A = 16'hecb5;
	B = 16'h76df;
	ans = 16'h75b2;
	#20
	A = 16'hf167;
	B = 16'hdf94;
	ans = 16'hf1a4;
	#20
	A = 16'he4e5;
	B = 16'hf393;
	ans = 16'hf418;
	#20
	A = 16'hf12e;
	B = 16'hf59b;
	ans = 16'hf819;
	#20
	A = 16'h6941;
	B = 16'hf4b4;
	ans = 16'hf40c;
	#20
	A = 16'h7703;
	B = 16'h6f30;
	ans = 16'h7868;
	#20
	A = 16'h6d17;
	B = 16'hf59d;
	ans = 16'hf457;
	#20
	A = 16'he88e;
	B = 16'hf4c3;
	ans = 16'hf555;
	#20
	A = 16'h6707;
	B = 16'hf542;
	ans = 16'hf4d2;
	#20
	A = 16'h64e0;
	B = 16'hf1db;
	ans = 16'hf13f;
	#20
	A = 16'h770b;
	B = 16'h7319;
	ans = 16'h794c;
	#20
	A = 16'h75b2;
	B = 16'hf2a2;
	ans = 16'h70c2;
	#20
	A = 16'h76b8;
	B = 16'hf167;
	ans = 16'h7404;
	#20
	A = 16'hf6e4;
	B = 16'h6853;
	ans = 16'hf65a;
	#20
	A = 16'h5c92;
	B = 16'hf514;
	ans = 16'hf502;
	#20
	A = 16'h6fbc;
	B = 16'hf5fc;
	ans = 16'hf40d;
	#20
	A = 16'hf50c;
	B = 16'hed6d;
	ans = 16'hf667;
	#20
	A = 16'hf66a;
	B = 16'hf3ad;
	ans = 16'hf920;
	#20
	A = 16'h74a4;
	B = 16'hf5a1;
	ans = 16'hebe8;
	#20
	A = 16'h7557;
	B = 16'h7299;
	ans = 16'h7852;
	#20
	A = 16'h7723;
	B = 16'h743c;
	ans = 16'h79b0;
	#20
	A = 16'hf729;
	B = 16'hf5a2;
	ans = 16'hfa66;
	#20
	A = 16'he7e0;
	B = 16'hf24d;
	ans = 16'hf349;
	#20
	A = 16'h74e6;
	B = 16'hf541;
	ans = 16'he5b0;
	#20
	A = 16'h7054;
	B = 16'h6e85;
	ans = 16'h7396;
	#20
	A = 16'hf70f;
	B = 16'h72e5;
	ans = 16'hf339;
	#20
	A = 16'h750a;
	B = 16'hecf7;
	ans = 16'h7398;
	#20
	A = 16'h7504;
	B = 16'hf435;
	ans = 16'h6a78;
	#20
	A = 16'hf383;
	B = 16'h768e;
	ans = 16'h7199;
	#20
	A = 16'h64b2;
	B = 16'hf414;
	ans = 16'hf392;
	#20
	A = 16'hf3f5;
	B = 16'hf6a6;
	ans = 16'hf950;
	#20
	A = 16'he2ed;
	B = 16'h600d;
	ans = 16'hddc0;
	#20
	A = 16'h769a;
	B = 16'h6d54;
	ans = 16'h77ef;
	#20
	A = 16'h6d24;
	B = 16'h712c;
	ans = 16'h73be;
	#20
	A = 16'hf443;
	B = 16'hedbb;
	ans = 16'hf5b2;
	#20
	A = 16'h6cda;
	B = 16'hf44f;
	ans = 16'hf231;
	#20
	A = 16'h7314;
	B = 16'h742b;
	ans = 16'h77b5;
	#20
	A = 16'hef37;
	B = 16'h711c;
	ans = 16'h6a02;
	#20
	A = 16'hf140;
	B = 16'h6d00;
	ans = 16'hed80;
	#20
	A = 16'hf5e3;
	B = 16'h68df;
	ans = 16'hf547;
	#20
	A = 16'hde9d;
	B = 16'h7414;
	ans = 16'h73f3;
	#20
	A = 16'h720f;
	B = 16'hef76;
	ans = 16'h6ca8;
	#20
	A = 16'hef96;
	B = 16'h73e3;
	ans = 16'h7018;
	#20
	A = 16'h739b;
	B = 16'hf4e6;
	ans = 16'hec62;
	#20
	A = 16'he951;
	B = 16'h7518;
	ans = 16'h746e;
	#20
	A = 16'hf3ec;
	B = 16'hf656;
	ans = 16'hf926;
	#20
	A = 16'hf54e;
	B = 16'hf3f5;
	ans = 16'hf8a4;
	#20
	A = 16'hf432;
	B = 16'hee3c;
	ans = 16'hf5c1;
	#20
	A = 16'h658e;
	B = 16'hf6c5;
	ans = 16'hf66c;
	#20
	A = 16'he81a;
	B = 16'h74f4;
	ans = 16'h7471;
	#20
	A = 16'h75ab;
	B = 16'h6882;
	ans = 16'h763b;
	#20
	A = 16'hf23c;
	B = 16'h7484;
	ans = 16'h6d98;
	#20
	A = 16'hf6f8;
	B = 16'h7401;
	ans = 16'hf1ee;
	#20
	A = 16'hf466;
	B = 16'hf0f4;
	ans = 16'hf6e0;
	#20
	A = 16'h7671;
	B = 16'h6b5f;
	ans = 16'h775d;
	#20
	A = 16'h7490;
	B = 16'hf32f;
	ans = 16'h6bc4;
	#20
	A = 16'hf702;
	B = 16'hf65c;
	ans = 16'hfaaf;
	#20
	A = 16'hf546;
	B = 16'h763e;
	ans = 16'h6bc0;
	#20
	A = 16'h6e53;
	B = 16'he611;
	ans = 16'h6ccf;
	#20
	A = 16'hf3b2;
	B = 16'hed4f;
	ans = 16'hf52d;
	#20
	A = 16'h758a;
	B = 16'h7593;
	ans = 16'h798e;
	#20
	A = 16'h75bd;
	B = 16'h7637;
	ans = 16'h79fa;
	#20
	A = 16'heb07;
	B = 16'hf383;
	ans = 16'hf4a2;
	#20
	A = 16'he6df;
	B = 16'h5b05;
	ans = 16'he5fe;
	#20
	A = 16'hf4f7;
	B = 16'h6658;
	ans = 16'hf492;
	#20
	A = 16'h6478;
	B = 16'hf6a4;
	ans = 16'hf65c;
	#20
	A = 16'h6734;
	B = 16'hf47a;
	ans = 16'hf407;
	#20
	A = 16'hf6f2;
	B = 16'hf416;
	ans = 16'hf984;
	#20
	A = 16'h72ee;
	B = 16'h761c;
	ans = 16'h78ca;
	#20
	A = 16'hf2e7;
	B = 16'hf5c3;
	ans = 16'hf89b;
	#20
	A = 16'h702c;
	B = 16'hede0;
	ans = 16'h68f0;
	#20
	A = 16'h6913;
	B = 16'h6c63;
	ans = 16'h6eec;
	#20
	A = 16'hf099;
	B = 16'hefdc;
	ans = 16'hf444;
	#20
	A = 16'h7710;
	B = 16'he9c8;
	ans = 16'h7657;
	#20
	A = 16'hf3d3;
	B = 16'h7594;
	ans = 16'h6eaa;
	#20
	A = 16'hf3e6;
	B = 16'hf298;
	ans = 16'hf73f;
	#20
	A = 16'he356;
	B = 16'h6a51;
	ans = 16'h687c;
	#20
	A = 16'hec7c;
	B = 16'h7747;
	ans = 16'h7628;
	#20
	A = 16'hf3b4;
	B = 16'he244;
	ans = 16'hf40c;
	#20
	A = 16'h712d;
	B = 16'h70cc;
	ans = 16'h74fc;
	#20
	A = 16'h7465;
	B = 16'h6892;
	ans = 16'h74f7;
	#20
	A = 16'hf133;
	B = 16'h766f;
	ans = 16'h73ab;
	#20
	A = 16'hf687;
	B = 16'h75a3;
	ans = 16'heb20;
	#20
	A = 16'h5f41;
	B = 16'h7448;
	ans = 16'h7465;
	#20
	A = 16'hf569;
	B = 16'heed5;
	ans = 16'hf71e;
	#20
	A = 16'he9d8;
	B = 16'hf561;
	ans = 16'hf61c;
	#20
	A = 16'hed17;
	B = 16'hf750;
	ans = 16'hf84b;
	#20
	A = 16'hf6ae;
	B = 16'hf53d;
	ans = 16'hf9f6;
	#20
	A = 16'h7418;
	B = 16'h6e59;
	ans = 16'h75ae;
	#20
	A = 16'hf10a;
	B = 16'h7178;
	ans = 16'h62e0;
	#20
	A = 16'h75ae;
	B = 16'he0ab;
	ans = 16'h7589;
	#20
	A = 16'h7556;
	B = 16'hf4a6;
	ans = 16'h6980;
	#20
	A = 16'h705a;
	B = 16'hf5f0;
	ans = 16'hf386;
	#20
	A = 16'h7411;
	B = 16'h7660;
	ans = 16'h7938;
	#20
	A = 16'h76d3;
	B = 16'hd426;
	ans = 16'h76cf;
	#20
	A = 16'hf42a;
	B = 16'h741b;
	ans = 16'hdb80;
	#20
	A = 16'h63aa;
	B = 16'hf427;
	ans = 16'hf3d3;
	#20
	A = 16'h6fa1;
	B = 16'he6be;
	ans = 16'h6df2;
	#20
	A = 16'hf71d;
	B = 16'h7544;
	ans = 16'hef64;
	#20
	A = 16'hf2f0;
	B = 16'hf67d;
	ans = 16'hf8fa;
	#20
	A = 16'he86c;
	B = 16'h76c3;
	ans = 16'h7636;
	#20
	A = 16'hf454;
	B = 16'h7349;
	ans = 16'he97c;
	#20
	A = 16'h74a0;
	B = 16'h70ac;
	ans = 16'h76f6;
	#20
	A = 16'h75d3;
	B = 16'h774b;
	ans = 16'h7a8f;
	#20
	A = 16'h6dec;
	B = 16'hf288;
	ans = 16'hef24;
	#20
	A = 16'hf4ef;
	B = 16'h7400;
	ans = 16'heb78;
	#20
	A = 16'h73ab;
	B = 16'hf743;
	ans = 16'hf2db;
	#20
	A = 16'h7490;
	B = 16'hf2c4;
	ans = 16'h6cb8;
	#20
	A = 16'h7644;
	B = 16'h7468;
	ans = 16'h7956;
	#20
	A = 16'he35c;
	B = 16'he60c;
	ans = 16'he8dd;
	#20
	A = 16'hf6cd;
	B = 16'hf3a3;
	ans = 16'hf94f;
	#20
	A = 16'hf233;
	B = 16'h6caf;
	ans = 16'hefb7;
	#20
	A = 16'h72d6;
	B = 16'h7367;
	ans = 16'h771e;
	#20
	A = 16'hf464;
	B = 16'hec42;
	ans = 16'hf574;
	#20
	A = 16'h689c;
	B = 16'hf6bf;
	ans = 16'hf62c;
	#20
	A = 16'h6864;
	B = 16'h7421;
	ans = 16'h74ae;
	#20
	A = 16'hf33e;
	B = 16'hefc7;
	ans = 16'hf591;
	#20
	A = 16'he0a2;
	B = 16'h71e0;
	ans = 16'h7196;
	#20
	A = 16'h6db4;
	B = 16'h6d15;
	ans = 16'h7164;
	#20
	A = 16'hf595;
	B = 16'h6086;
	ans = 16'hf571;
	#20
	A = 16'hf40d;
	B = 16'h7612;
	ans = 16'h700a;
	#20
	A = 16'hea12;
	B = 16'h752c;
	ans = 16'h746a;
	#20
	A = 16'h6ed0;
	B = 16'hee95;
	ans = 16'h5b60;
	#20
	A = 16'hf65b;
	B = 16'hf574;
	ans = 16'hf9e8;
	#20
	A = 16'h73c1;
	B = 16'h70dc;
	ans = 16'h764e;
	#20
	A = 16'hf340;
	B = 16'h7466;
	ans = 16'h6a30;
	#20
	A = 16'hf6ae;
	B = 16'hef4b;
	ans = 16'hf840;
	#20
	A = 16'hf6d2;
	B = 16'hf396;
	ans = 16'hf94e;
	#20
	A = 16'hf61e;
	B = 16'hf2bb;
	ans = 16'hf8be;
	#20
	A = 16'h6ee3;
	B = 16'h71f8;
	ans = 16'h74b5;
	#20
	A = 16'hf488;
	B = 16'h6991;
	ans = 16'hf3ac;
	#20
	A = 16'h7506;
	B = 16'h717b;
	ans = 16'h77c4;
	#20
	A = 16'h70cc;
	B = 16'h6b0b;
	ans = 16'h728f;
	#20
	A = 16'h76bb;
	B = 16'hf544;
	ans = 16'h6ddc;
	#20
	A = 16'h7421;
	B = 16'hf2b7;
	ans = 16'h6a2c;
	#20
	A = 16'h72ec;
	B = 16'h7214;
	ans = 16'h7680;
	#20
	A = 16'h73b0;
	B = 16'h766d;
	ans = 16'h7922;
	#20
	A = 16'hf4d7;
	B = 16'h7081;
	ans = 16'hf12d;
	#20
	A = 16'h6ed8;
	B = 16'h707e;
	ans = 16'h73ea;
	#20
	A = 16'h76db;
	B = 16'hf134;
	ans = 16'h7441;
	#20
	A = 16'hf042;
	B = 16'he756;
	ans = 16'hf12d;
	#20
	A = 16'h741e;
	B = 16'he97f;
	ans = 16'h72dc;
	#20
	A = 16'hf5d9;
	B = 16'hf626;
	ans = 16'hfa00;
	#20
	A = 16'h7584;
	B = 16'h71e6;
	ans = 16'h783c;
	#20
	A = 16'h7350;
	B = 16'h7610;
	ans = 16'h78dc;
	#20
	A = 16'hf670;
	B = 16'heca7;
	ans = 16'hf79a;
	#20
	A = 16'hf575;
	B = 16'h752e;
	ans = 16'he470;
	#20
	A = 16'h6f3e;
	B = 16'h71bd;
	ans = 16'h74ae;
	#20
	A = 16'hf2df;
	B = 16'h75cb;
	ans = 16'h70b7;
	#20
	A = 16'hf302;
	B = 16'h7696;
	ans = 16'h722a;
	#20
	A = 16'h7209;
	B = 16'h7690;
	ans = 16'h78ca;
	#20
	A = 16'h6c7b;
	B = 16'he1de;
	ans = 16'h6b7e;
	#20
	A = 16'h70ab;
	B = 16'hf425;
	ans = 16'hef3e;
	#20
	A = 16'hf703;
	B = 16'hf2e6;
	ans = 16'hf93b;
	#20
	A = 16'hf11d;
	B = 16'hec18;
	ans = 16'hf329;
	#20
	A = 16'h70a9;
	B = 16'hf701;
	ans = 16'hf4ac;
	#20
	A = 16'h75b9;
	B = 16'h7469;
	ans = 16'h7911;
	#20
	A = 16'he817;
	B = 16'h7023;
	ans = 16'h6e3a;
	#20
	A = 16'hf72b;
	B = 16'hf368;
	ans = 16'hf970;
	#20
	A = 16'hf316;
	B = 16'h758f;
	ans = 16'h7008;
	#20
	A = 16'h5c8e;
	B = 16'hf71d;
	ans = 16'hf70b;
	#20
	A = 16'h75bb;
	B = 16'h65c6;
	ans = 16'h7617;
	#20
	A = 16'h746f;
	B = 16'h76ef;
	ans = 16'h79af;
	#20
	A = 16'hede8;
	B = 16'hf599;
	ans = 16'hf713;
	#20
	A = 16'hf6bf;
	B = 16'hf4ad;
	ans = 16'hf9b6;
	#20
	A = 16'h6ab1;
	B = 16'h6ef1;
	ans = 16'h7125;
	#20
	A = 16'h75cc;
	B = 16'hec2c;
	ans = 16'h74c1;
	#20
	A = 16'h7309;
	B = 16'h6fd8;
	ans = 16'h757a;
	#20
	A = 16'h73b3;
	B = 16'hf4d4;
	ans = 16'hebd4;
	#20
	A = 16'h74cb;
	B = 16'h7673;
	ans = 16'h799f;
	#20
	A = 16'hf139;
	B = 16'h6893;
	ans = 16'hf014;
	#20
	A = 16'hf69e;
	B = 16'hf5bc;
	ans = 16'hfa2d;
	#20
	A = 16'h75f3;
	B = 16'hf0bc;
	ans = 16'h732a;
	#20
	A = 16'hf276;
	B = 16'hf5f7;
	ans = 16'hf899;
	#20
	A = 16'hed99;
	B = 16'hf06f;
	ans = 16'hf33c;
	#20
	A = 16'hf566;
	B = 16'h7080;
	ans = 16'hf24c;
	#20
	A = 16'hf549;
	B = 16'h722a;
	ans = 16'hf068;
	#20
	A = 16'h7536;
	B = 16'hf32f;
	ans = 16'h6e7a;
	#20
	A = 16'h7608;
	B = 16'h703c;
	ans = 16'h7813;
	#20
	A = 16'hf5c5;
	B = 16'hf122;
	ans = 16'hf82b;
	#20
	A = 16'hf044;
	B = 16'h7632;
	ans = 16'h7410;
	#20
	A = 16'h7291;
	B = 16'hf518;
	ans = 16'hef3e;
	#20
	A = 16'hf60f;
	B = 16'h70e6;
	ans = 16'hf338;
	#20
	A = 16'h7450;
	B = 16'h7517;
	ans = 16'h78b4;
	#20
	A = 16'h75a9;
	B = 16'hef25;
	ans = 16'h73c0;
	#20
	A = 16'h7427;
	B = 16'h7451;
	ans = 16'h783c;
	#20
	A = 16'he8a6;
	B = 16'h6492;
	ans = 16'he4ba;
	#20
	A = 16'h75da;
	B = 16'hf3d6;
	ans = 16'h6fbc;
	#20
	A = 16'h7178;
	B = 16'hf348;
	ans = 16'heb40;
	#20
	A = 16'heb9b;
	B = 16'h69cf;
	ans = 16'he330;
	#20
	A = 16'hf31e;
	B = 16'h7027;
	ans = 16'hedee;
	#20
	A = 16'h7547;
	B = 16'hf10c;
	ans = 16'h7182;
	#20
	A = 16'h7259;
	B = 16'h744a;
	ans = 16'h7776;
	#20
	A = 16'h6ebf;
	B = 16'hf30b;
	ans = 16'hef57;
	#20
	A = 16'h6f4d;
	B = 16'hed32;
	ans = 16'h6836;
	#20
	A = 16'hf65e;
	B = 16'hf26b;
	ans = 16'hf8ca;
	#20
	A = 16'h6dc8;
	B = 16'h6e5b;
	ans = 16'h7212;
	#20
	A = 16'hec4e;
	B = 16'hf3ac;
	ans = 16'hf4ea;
	#20
	A = 16'h5b7c;
	B = 16'hf4b5;
	ans = 16'hf4a6;
	#20
	A = 16'hf34f;
	B = 16'h749d;
	ans = 16'h6bac;
	#20
	A = 16'h7694;
	B = 16'h713e;
	ans = 16'h789a;
	#20
	A = 16'h70bb;
	B = 16'h6fce;
	ans = 16'h7451;
	#20
	A = 16'h6fbb;
	B = 16'h7719;
	ans = 16'h7884;
	#20
	A = 16'he522;
	B = 16'he7ca;
	ans = 16'hea76;
	#20
	A = 16'he68f;
	B = 16'h582c;
	ans = 16'he60a;
	#20
	A = 16'h76cb;
	B = 16'h76c8;
	ans = 16'h7aca;
	#20
	A = 16'h7311;
	B = 16'hf737;
	ans = 16'hf35d;
	#20
	A = 16'h7678;
	B = 16'hf58e;
	ans = 16'h6b50;
	#20
	A = 16'h5e40;
	B = 16'h71a5;
	ans = 16'h71d7;
	#20
	A = 16'h6643;
	B = 16'h7205;
	ans = 16'h72cd;
	#20
	A = 16'hf372;
	B = 16'h7341;
	ans = 16'hde20;
	#20
	A = 16'hf04b;
	B = 16'hf38a;
	ans = 16'hf5ea;
	#20
	A = 16'hef48;
	B = 16'hf710;
	ans = 16'hf871;
	#20
	A = 16'h7668;
	B = 16'h724f;
	ans = 16'h78c8;
	#20
	A = 16'h73bf;
	B = 16'h742d;
	ans = 16'h7806;
	#20
	A = 16'hf531;
	B = 16'hf569;
	ans = 16'hf94d;
	#20
	A = 16'hf3d2;
	B = 16'h7643;
	ans = 16'h70b4;
	#20
	A = 16'hedb0;
	B = 16'h750f;
	ans = 16'h7346;
	#20
	A = 16'h76fa;
	B = 16'h716a;
	ans = 16'h78d8;
	#20
	A = 16'hf463;
	B = 16'hf658;
	ans = 16'hf95e;
	#20
	A = 16'h7256;
	B = 16'hf38b;
	ans = 16'he8d4;
	#20
	A = 16'h7188;
	B = 16'h6aaa;
	ans = 16'h7332;
	#20
	A = 16'h7026;
	B = 16'he437;
	ans = 16'h6f3e;
	#20
	A = 16'h751c;
	B = 16'h7403;
	ans = 16'h7890;
	#20
	A = 16'h75b4;
	B = 16'h6a7d;
	ans = 16'h7684;
	#20
	A = 16'h70fb;
	B = 16'h6932;
	ans = 16'h7248;
	#20
	A = 16'h72a3;
	B = 16'hee7e;
	ans = 16'h6ec8;
	#20
	A = 16'h6711;
	B = 16'h7415;
	ans = 16'h7486;
	#20
	A = 16'hf521;
	B = 16'h7617;
	ans = 16'h6bb0;
	#20
	A = 16'hf146;
	B = 16'hf144;
	ans = 16'hf545;
	#20
	A = 16'h7247;
	B = 16'hf665;
	ans = 16'hf283;
	#20
	A = 16'h6bbc;
	B = 16'h65d8;
	ans = 16'h6d54;
	#20
	A = 16'hf42a;
	B = 16'h6695;
	ans = 16'hf381;
	#20
	A = 16'h6c05;
	B = 16'h7745;
	ans = 16'h7823;
	#20
	A = 16'hef52;
	B = 16'hf529;
	ans = 16'hf6fe;
	#20
	A = 16'hf531;
	B = 16'hf711;
	ans = 16'hfa21;
	#20
	A = 16'h6db1;
	B = 16'h76b6;
	ans = 16'h7811;
	#20
	A = 16'hf06c;
	B = 16'h74de;
	ans = 16'h7150;
	#20
	A = 16'hf443;
	B = 16'hf478;
	ans = 16'hf85e;
	#20
	A = 16'h6474;
	B = 16'h75d4;
	ans = 16'h761b;
	#20
	A = 16'hf249;
	B = 16'hf219;
	ans = 16'hf631;
	#20
	A = 16'hf2a3;
	B = 16'hf2b5;
	ans = 16'hf6ac;
	#20
	A = 16'h714c;
	B = 16'hedd4;
	ans = 16'h6cc4;
	#20
	A = 16'h7423;
	B = 16'he4be;
	ans = 16'h73ae;
	#20
	A = 16'hf543;
	B = 16'h7172;
	ans = 16'hf114;
	#20
	A = 16'h6fc5;
	B = 16'hf3ab;
	ans = 16'hef91;
	#20
	A = 16'h7311;
	B = 16'hf6ff;
	ans = 16'hf2ed;
	#20
	A = 16'hf6cc;
	B = 16'h6cc4;
	ans = 16'hf59b;
	#20
	A = 16'hec2d;
	B = 16'hf528;
	ans = 16'hf633;
	#20
	A = 16'h7290;
	B = 16'hf454;
	ans = 16'hec30;
	#20
	A = 16'h7560;
	B = 16'hf6db;
	ans = 16'hedec;
	#20
	A = 16'hec14;
	B = 16'h6d3c;
	ans = 16'h64a0;
	#20
	A = 16'h722f;
	B = 16'hf604;
	ans = 16'hf1d9;
	#20
	A = 16'hf28c;
	B = 16'hef5c;
	ans = 16'hf51d;
	#20
	A = 16'h759f;
	B = 16'he87b;
	ans = 16'h7510;
	#20
	A = 16'h66d6;
	B = 16'h68ba;
	ans = 16'h6c12;
	#20
	A = 16'hf472;
	B = 16'hf4c8;
	ans = 16'hf89d;
	#20
	A = 16'hf43c;
	B = 16'hf508;
	ans = 16'hf8a2;
	#20
	A = 16'hf5c6;
	B = 16'h70e9;
	ans = 16'hf2a3;
	#20
	A = 16'h6f32;
	B = 16'h76b8;
	ans = 16'h7842;
	#20
	A = 16'hf743;
	B = 16'heb58;
	ans = 16'hf817;
	#20
	A = 16'hea37;
	B = 16'h75fe;
	ans = 16'h7537;
	#20
	A = 16'hf34a;
	B = 16'hf48e;
	ans = 16'hf81a;
	#20
	A = 16'h74d4;
	B = 16'h6ffb;
	ans = 16'h76d3;
	#20
	A = 16'h7553;
	B = 16'h70f4;
	ans = 16'h77cd;
	#20
	A = 16'hf727;
	B = 16'h74f6;
	ans = 16'hf062;
	#20
	A = 16'hf30c;
	B = 16'h6b9b;
	ans = 16'hf125;
	#20
	A = 16'hf070;
	B = 16'h7582;
	ans = 16'h7294;
	#20
	A = 16'hf6e9;
	B = 16'h719f;
	ans = 16'hf41a;
	#20
	A = 16'hedff;
	B = 16'h6923;
	ans = 16'headb;
	#20
	A = 16'h71d1;
	B = 16'hf63a;
	ans = 16'hf2a3;
	#20
	A = 16'hf3fa;
	B = 16'hf4c4;
	ans = 16'hf860;
	#20
	A = 16'hee96;
	B = 16'h74b2;
	ans = 16'h7219;
	#20
	A = 16'hf3d7;
	B = 16'hf643;
	ans = 16'hf917;
	#20
	A = 16'h6f8b;
	B = 16'hf2ce;
	ans = 16'hee11;
	#20
	A = 16'h6497;
	B = 16'hf4e1;
	ans = 16'hf498;
	#20
	A = 16'hef73;
	B = 16'h76de;
	ans = 16'h7501;
	#20
	A = 16'h7111;
	B = 16'he67a;
	ans = 16'h7042;
	#20
	A = 16'hf6bf;
	B = 16'hf6cb;
	ans = 16'hfac5;
	#20
	A = 16'hf70b;
	B = 16'hf4b1;
	ans = 16'hf9de;
	#20
	A = 16'h6c66;
	B = 16'hf4ad;
	ans = 16'hf327;
	#20
	A = 16'h746b;
	B = 16'h69ef;
	ans = 16'h7529;
	#20
	A = 16'hf5e5;
	B = 16'h6df7;
	ans = 16'hf467;
	#20
	A = 16'h6eac;
	B = 16'h7518;
	ans = 16'h76c3;
	#20
	A = 16'hf2b5;
	B = 16'hed9e;
	ans = 16'hf4c2;
	#20
	A = 16'hf5e3;
	B = 16'hf3ce;
	ans = 16'hf8e5;
	#20
	A = 16'h7599;
	B = 16'h7569;
	ans = 16'h7981;
	#20
	A = 16'hd648;
	B = 16'h699e;
	ans = 16'h696c;
	#20
	A = 16'hef6c;
	B = 16'h760c;
	ans = 16'h7431;
	#20
	A = 16'h771c;
	B = 16'hf24b;
	ans = 16'h73ed;
	#20
	A = 16'he6cb;
	B = 16'h6be3;
	ans = 16'h687e;
	#20
	A = 16'hec7c;
	B = 16'hf56b;
	ans = 16'hf68a;
	#20
	A = 16'h72e6;
	B = 16'hf448;
	ans = 16'heaa8;
	#20
	A = 16'h76eb;
	B = 16'h6f22;
	ans = 16'h785a;
	#20
	A = 16'he313;
	B = 16'hf511;
	ans = 16'hf54a;
	#20
	A = 16'h7697;
	B = 16'he998;
	ans = 16'h75e4;
	#20
	A = 16'h6e91;
	B = 16'hedce;
	ans = 16'h6218;
	#20
	A = 16'h7741;
	B = 16'hf4b0;
	ans = 16'h7122;
	#20
	A = 16'h71b3;
	B = 16'h71dd;
	ans = 16'h75c8;
	#20
	A = 16'h6f0a;
	B = 16'h709f;
	ans = 16'h7412;
	#20
	A = 16'hf5d2;
	B = 16'h7441;
	ans = 16'hee44;
	#20
	A = 16'h7625;
	B = 16'h764a;
	ans = 16'h7a38;
	#20
	A = 16'hf421;
	B = 16'h6f3e;
	ans = 16'hf0a3;
	#20
	A = 16'hf13b;
	B = 16'h7576;
	ans = 16'h71b1;
	#20
	A = 16'hf716;
	B = 16'hf653;
	ans = 16'hfab4;
	#20
	A = 16'hee1b;
	B = 16'h6bb1;
	ans = 16'he885;
	#20
	A = 16'hf047;
	B = 16'h7167;
	ans = 16'h6880;
	#20
	A = 16'h74b5;
	B = 16'h6895;
	ans = 16'h7548;
	#20
	A = 16'h76bc;
	B = 16'h72ce;
	ans = 16'h7912;
	#20
	A = 16'h7690;
	B = 16'hf6b4;
	ans = 16'he080;
	#20
	A = 16'h72a5;
	B = 16'hf55b;
	ans = 16'hf011;
	#20
	A = 16'h76d7;
	B = 16'h7677;
	ans = 16'h7aa7;
	#20
	A = 16'hf393;
	B = 16'hf14e;
	ans = 16'hf670;
	#20
	A = 16'h763e;
	B = 16'h7591;
	ans = 16'h79e8;
	#20
	A = 16'h6ee1;
	B = 16'hf23a;
	ans = 16'hed93;
	#20
	A = 16'hf184;
	B = 16'h7249;
	ans = 16'h6628;
	#20
	A = 16'h75e0;
	B = 16'h732b;
	ans = 16'h78bb;
	#20
	A = 16'he34e;
	B = 16'hef6c;
	ans = 16'hf02b;
	#20
	A = 16'hf67e;
	B = 16'h75c1;
	ans = 16'he9e8;
	#20
	A = 16'hf032;
	B = 16'h728e;
	ans = 16'h6cb8;
	#20
	A = 16'h76aa;
	B = 16'h7631;
	ans = 16'h7a6e;
	#20
	A = 16'hf469;
	B = 16'hee48;
	ans = 16'hf5fb;
	#20
	A = 16'h73e1;
	B = 16'h6cb4;
	ans = 16'h751e;
	#20
	A = 16'hedc8;
	B = 16'h736a;
	ans = 16'h7086;
	#20
	A = 16'h75f3;
	B = 16'hf337;
	ans = 16'h70af;
	#20
	A = 16'h7170;
	B = 16'hf6f9;
	ans = 16'hf441;
	#20
	A = 16'hf57a;
	B = 16'hd900;
	ans = 16'hf584;
	#20
	A = 16'hf1f4;
	B = 16'hf093;
	ans = 16'hf544;
	#20
	A = 16'h6ab3;
	B = 16'h7716;
	ans = 16'h77ec;
	#20
	A = 16'hf671;
	B = 16'hef7c;
	ans = 16'hf828;
	#20
	A = 16'h72b2;
	B = 16'h7658;
	ans = 16'h78d8;
	#20
	A = 16'h746d;
	B = 16'hecd0;
	ans = 16'h7272;
	#20
	A = 16'h705e;
	B = 16'hf6e2;
	ans = 16'hf4b3;
	#20
	A = 16'h69fb;
	B = 16'hf6d7;
	ans = 16'hf618;
	#20
	A = 16'h6969;
	B = 16'hf1c3;
	ans = 16'hf069;
	#20
	A = 16'h7706;
	B = 16'h695a;
	ans = 16'h77b1;
	#20
	A = 16'hf3cb;
	B = 16'hed3f;
	ans = 16'hf535;
	#20
	A = 16'h74c6;
	B = 16'hf5f5;
	ans = 16'hecbc;
	#20
	A = 16'h72fa;
	B = 16'hf36f;
	ans = 16'he350;
	#20
	A = 16'h7406;
	B = 16'hf0af;
	ans = 16'h6eba;
	#20
	A = 16'h71fe;
	B = 16'hf2f4;
	ans = 16'he7b0;
	#20
	A = 16'hf30c;
	B = 16'h765a;
	ans = 16'h71a8;
	#20
	A = 16'hf19f;
	B = 16'hdcf3;
	ans = 16'hf1c7;
	#20
	A = 16'hf3ae;
	B = 16'hf164;
	ans = 16'hf689;
	#20
	A = 16'hf57f;
	B = 16'h7266;
	ans = 16'hf098;
	#20
	A = 16'h6954;
	B = 16'h7306;
	ans = 16'h742e;
	#20
	A = 16'hf6b8;
	B = 16'hf164;
	ans = 16'hf8b5;
	#20
	A = 16'h6c9d;
	B = 16'h6c75;
	ans = 16'h7089;
	#20
	A = 16'hf507;
	B = 16'hf4c3;
	ans = 16'hf8e5;
	#20
	A = 16'h7703;
	B = 16'h6d55;
	ans = 16'h782c;
	#20
	A = 16'hf4b5;
	B = 16'h76b8;
	ans = 16'h7006;
	#20
	A = 16'hebd6;
	B = 16'hf3a3;
	ans = 16'hf4cc;
	#20
	A = 16'hecef;
	B = 16'h7200;
	ans = 16'h6f11;
	#20
	A = 16'he729;
	B = 16'h768e;
	ans = 16'h761b;
	#20
	A = 16'h602b;
	B = 16'h76d1;
	ans = 16'h76f2;
	#20
	A = 16'h74e8;
	B = 16'h7716;
	ans = 16'h79ff;
	#20
	A = 16'hf163;
	B = 16'hf609;
	ans = 16'hf85d;
	#20
	A = 16'h74d4;
	B = 16'h6e44;
	ans = 16'h7665;
	#20
	A = 16'hf4ca;
	B = 16'heffc;
	ans = 16'hf6c9;
	#20
	A = 16'h6f92;
	B = 16'hf54d;
	ans = 16'hf2d1;
	#20
	A = 16'he968;
	B = 16'h6a11;
	ans = 16'h5d48;
	#20
	A = 16'hf342;
	B = 16'hf6d7;
	ans = 16'hf93c;
	#20
	A = 16'hf035;
	B = 16'h72c4;
	ans = 16'h6d1e;
	#20
	A = 16'h6d79;
	B = 16'hf74d;
	ans = 16'hf5ef;
	#20
	A = 16'hf72b;
	B = 16'h75d5;
	ans = 16'hed58;
	#20
	A = 16'h7729;
	B = 16'hf45f;
	ans = 16'h7194;
	#20
	A = 16'hf428;
	B = 16'hef5a;
	ans = 16'hf5fe;
	#20
	A = 16'h744d;
	B = 16'h5ae3;
	ans = 16'h745b;
	#20
	A = 16'hf0c7;
	B = 16'hf4a9;
	ans = 16'hf70c;
	#20
	A = 16'h76f6;
	B = 16'h76c9;
	ans = 16'h7ae0;
	#20
	A = 16'hecec;
	B = 16'hf1f9;
	ans = 16'hf438;
	#20
	A = 16'hf467;
	B = 16'hf541;
	ans = 16'hf8d4;
	#20
	A = 16'h6f4c;
	B = 16'hf669;
	ans = 16'hf496;
	#20
	A = 16'h71bc;
	B = 16'hf41c;
	ans = 16'hecf8;
	#20
	A = 16'h76c7;
	B = 16'h7178;
	ans = 16'h78c2;
	#20
	A = 16'hf57c;
	B = 16'hf270;
	ans = 16'hf85a;
	#20
	A = 16'hed47;
	B = 16'hef85;
	ans = 16'hf266;
	#20
	A = 16'h75d4;
	B = 16'h71d0;
	ans = 16'h785e;
	#20
	A = 16'hf3af;
	B = 16'hf211;
	ans = 16'hf6e0;
	#20
	A = 16'h75c5;
	B = 16'hecb7;
	ans = 16'h7497;
	#20
	A = 16'h76ad;
	B = 16'h770d;
	ans = 16'h7add;
	#20
	A = 16'hf38c;
	B = 16'h6ec6;
	ans = 16'hf029;
	#20
	A = 16'hee1f;
	B = 16'h7684;
	ans = 16'h74fc;
	#20
	A = 16'hea0d;
	B = 16'h7642;
	ans = 16'h7580;
	#20
	A = 16'hf6c5;
	B = 16'hf486;
	ans = 16'hf9a6;
	#20
	A = 16'h7507;
	B = 16'hf173;
	ans = 16'h709b;
	#20
	A = 16'hec68;
	B = 16'hf653;
	ans = 16'hf76d;
	#20
	A = 16'hea56;
	B = 16'hf097;
	ans = 16'hf22c;
	#20
	A = 16'h745c;
	B = 16'hf4a6;
	ans = 16'he4a0;
	#20
	A = 16'hf709;
	B = 16'hf2ea;
	ans = 16'hf93f;
	#20
	A = 16'hf6a5;
	B = 16'h74e4;
	ans = 16'hef04;
	#20
	A = 16'hf1aa;
	B = 16'hf077;
	ans = 16'hf510;
	#20
	A = 16'h76e5;
	B = 16'hf485;
	ans = 16'h70c0;
	#20
	A = 16'h6969;
	B = 16'hf2e6;
	ans = 16'hf18c;
	#20
	A = 16'h6c59;
	B = 16'hf582;
	ans = 16'hf46c;
	#20
	A = 16'h7332;
	B = 16'hefcd;
	ans = 16'h6e97;
	#20
	A = 16'h7723;
	B = 16'hec54;
	ans = 16'h760e;
	#20
	A = 16'h7564;
	B = 16'h74c5;
	ans = 16'h7914;
	#20
	A = 16'hf36c;
	B = 16'hf4cb;
	ans = 16'hf840;
	#20
	A = 16'h6432;
	B = 16'h7466;
	ans = 16'h74a9;
	#20
	A = 16'h6ad5;
	B = 16'h6f24;
	ans = 16'h7147;
	#20
	A = 16'hf52b;
	B = 16'h7560;
	ans = 16'h62a0;
	#20
	A = 16'hf228;
	B = 16'h74bd;
	ans = 16'h6ea4;
	#20
	A = 16'hf6e1;
	B = 16'hf52a;
	ans = 16'hfa06;
	#20
	A = 16'h71f2;
	B = 16'hf468;
	ans = 16'hedbc;
	#20
	A = 16'h76e7;
	B = 16'h71c5;
	ans = 16'h78e5;
	#20
	A = 16'hefab;
	B = 16'hf4cb;
	ans = 16'hf6b6;
	#20
	A = 16'h7664;
	B = 16'hf646;
	ans = 16'h5f80;
	#20
	A = 16'h57d4;
	B = 16'h73e1;
	ans = 16'h73f1;
	#20
	A = 16'h7701;
	B = 16'hf4e6;
	ans = 16'h7036;
	#20
	A = 16'hf2a6;
	B = 16'hf243;
	ans = 16'hf674;
	#20
	A = 16'hf52d;
	B = 16'hf65b;
	ans = 16'hf9c4;
	#20
	A = 16'h75e8;
	B = 16'hf52a;
	ans = 16'h69f0;
	#20
	A = 16'h6bee;
	B = 16'h747f;
	ans = 16'h757d;
	#20
	A = 16'hf712;
	B = 16'h76a1;
	ans = 16'he710;
	#20
	A = 16'hec8f;
	B = 16'hf6b5;
	ans = 16'hf7d9;
	#20
	A = 16'h7752;
	B = 16'h689a;
	ans = 16'h77e5;
	#20
	A = 16'he7b6;
	B = 16'h7464;
	ans = 16'h73d1;
	#20
	A = 16'hf666;
	B = 16'hf4e9;
	ans = 16'hf9a8;
	#20
	A = 16'hec30;
	B = 16'hf5d6;
	ans = 16'hf6e2;
	#20
	A = 16'h76f9;
	B = 16'h7575;
	ans = 16'h7a37;
	#20
	A = 16'hf684;
	B = 16'h6889;
	ans = 16'hf5f3;
	#20
	A = 16'hf55f;
	B = 16'h715b;
	ans = 16'hf163;
	#20
	A = 16'hf44a;
	B = 16'hf126;
	ans = 16'hf6dd;
	#20
	A = 16'hf6cb;
	B = 16'h7638;
	ans = 16'he898;
	#20
	A = 16'h6d4d;
	B = 16'hef5f;
	ans = 16'he824;
	#20
	A = 16'h731e;
	B = 16'h684a;
	ans = 16'h7418;
	#20
	A = 16'he829;
	B = 16'hf655;
	ans = 16'hf6da;
	#20
	A = 16'h6cad;
	B = 16'hf032;
	ans = 16'heb6e;
	#20
	A = 16'hf04e;
	B = 16'h704c;
	ans = 16'hcc00;
	#20
	A = 16'hf568;
	B = 16'h7687;
	ans = 16'h6c7c;
	#20
	A = 16'h7701;
	B = 16'hf6dd;
	ans = 16'h6080;
	#20
	A = 16'h7544;
	B = 16'h72b6;
	ans = 16'h7850;
	#20
	A = 16'hf664;
	B = 16'hec9f;
	ans = 16'hf78c;
	#20
	A = 16'h6a8d;
	B = 16'h7438;
	ans = 16'h750a;
	#20
	A = 16'h74f4;
	B = 16'hf4e2;
	ans = 16'h5c80;
	#20
	A = 16'h764c;
	B = 16'hed17;
	ans = 16'h7506;
	#20
	A = 16'h75f2;
	B = 16'hf008;
	ans = 16'h73dc;
	#20
	A = 16'hf564;
	B = 16'hf568;
	ans = 16'hf966;
	#20
	A = 16'hf68b;
	B = 16'hf387;
	ans = 16'hf927;
	#20
	A = 16'h6c94;
	B = 16'he18f;
	ans = 16'h6bc4;
	#20
	A = 16'h7508;
	B = 16'hea1e;
	ans = 16'h7444;
	#20
	A = 16'h6ac0;
	B = 16'h74bf;
	ans = 16'h7597;
	#20
	A = 16'hecc8;
	B = 16'hf475;
	ans = 16'hf5a7;
	#20
	A = 16'h7692;
	B = 16'hf57b;
	ans = 16'h6c5c;
	#20
	A = 16'h7731;
	B = 16'h71f7;
	ans = 16'h7916;
	#20
	A = 16'hf4eb;
	B = 16'hf3d8;
	ans = 16'hf86c;
	#20
	A = 16'heb61;
	B = 16'hf55e;
	ans = 16'hf64a;
	#20
	A = 16'hf6cc;
	B = 16'h675f;
	ans = 16'hf656;
	#20
	A = 16'hefa7;
	B = 16'hf141;
	ans = 16'hf48a;
	#20
	A = 16'hefc0;
	B = 16'h7292;
	ans = 16'h6d64;
	#20
	A = 16'heede;
	B = 16'h6f81;
	ans = 16'h6118;
	#20
	A = 16'h676f;
	B = 16'hea21;
	ans = 16'he4d3;
	#20
	A = 16'hf13c;
	B = 16'hef8b;
	ans = 16'hf481;
	#20
	A = 16'h62c8;
	B = 16'h72ac;
	ans = 16'h7318;
	#20
	A = 16'h73e1;
	B = 16'he3d9;
	ans = 16'h7363;
	#20
	A = 16'h766c;
	B = 16'hf5d2;
	ans = 16'h68d0;
	#20
	A = 16'h6efe;
	B = 16'hf190;
	ans = 16'hec22;
	#20
	A = 16'h75af;
	B = 16'h75bf;
	ans = 16'h79b7;
	#20
	A = 16'h749c;
	B = 16'hec63;
	ans = 16'h7306;
	#20
	A = 16'hf5f4;
	B = 16'h70e8;
	ans = 16'hf300;
	#20
	A = 16'he93e;
	B = 16'h7612;
	ans = 16'h756a;
	#20
	A = 16'hf121;
	B = 16'h7497;
	ans = 16'h700d;
	#20
	A = 16'he560;
	B = 16'hf17c;
	ans = 16'hf228;
	#20
	A = 16'hf6fc;
	B = 16'hf171;
	ans = 16'hf8da;
	#20
	A = 16'hf1b0;
	B = 16'hf0d1;
	ans = 16'hf540;
	#20
	A = 16'hee6a;
	B = 16'hf57c;
	ans = 16'hf716;
	#20
	A = 16'hec37;
	B = 16'hf4a4;
	ans = 16'hf5b2;
	#20
	A = 16'h707b;
	B = 16'h6837;
	ans = 16'h7189;
	#20
	A = 16'hf090;
	B = 16'h7573;
	ans = 16'h7256;
	#20
	A = 16'h6c82;
	B = 16'h738f;
	ans = 16'h74e8;
	#20
	A = 16'hf3a3;
	B = 16'hf42f;
	ans = 16'hf800;
	#20
	A = 16'he675;
	B = 16'h6bac;
	ans = 16'h6872;
	#20
	A = 16'hee97;
	B = 16'he9ce;
	ans = 16'hf0bf;
	#20
	A = 16'hf430;
	B = 16'h6d4c;
	ans = 16'hf1ba;
	#20
	A = 16'hf20b;
	B = 16'hf1a3;
	ans = 16'hf5d7;
	#20
	A = 16'hf6a4;
	B = 16'he2f5;
	ans = 16'hf6dc;
	#20
	A = 16'h73c9;
	B = 16'hf56a;
	ans = 16'hee16;
	#20
	A = 16'h7475;
	B = 16'hf5b7;
	ans = 16'hed08;
	#20
	A = 16'h76a8;
	B = 16'he308;
	ans = 16'h7670;
	#20
	A = 16'hf623;
	B = 16'hef88;
	ans = 16'hf802;
	#20
	A = 16'hf272;
	B = 16'hf55f;
	ans = 16'hf84c;
	#20
	A = 16'h7638;
	B = 16'hf531;
	ans = 16'h6c1c;
	#20
	A = 16'hf54f;
	B = 16'hf2e5;
	ans = 16'hf861;
	#20
	A = 16'h727c;
	B = 16'h763e;
	ans = 16'h78be;
	#20
	A = 16'h721e;
	B = 16'h72ff;
	ans = 16'h768e;
	#20
	A = 16'hf5de;
	B = 16'hf45e;
	ans = 16'hf91e;
	#20
	A = 16'hf234;
	B = 16'hec73;
	ans = 16'hf437;
	#20
	A = 16'h74ee;
	B = 16'hf1cf;
	ans = 16'h700d;
	#20
	A = 16'hf5fb;
	B = 16'h691b;
	ans = 16'hf558;
	#20
	A = 16'h733f;
	B = 16'hf194;
	ans = 16'h6aac;
	#20
	A = 16'hdc9b;
	B = 16'he96c;
	ans = 16'he9ff;
	#20
	A = 16'hf49e;
	B = 16'h72c4;
	ans = 16'hecf0;
	#20
	A = 16'hee51;
	B = 16'hf507;
	ans = 16'hf69b;
	#20
	A = 16'hf470;
	B = 16'h71dc;
	ans = 16'hee08;
	#20
	A = 16'hee2e;
	B = 16'h71fd;
	ans = 16'h6dcc;
	#20
	A = 16'h6c1e;
	B = 16'h75b9;
	ans = 16'h76c0;
	#20
	A = 16'hf067;
	B = 16'h76c9;
	ans = 16'h7496;
	#20
	A = 16'hf18a;
	B = 16'h75ac;
	ans = 16'h71ce;
	#20
	A = 16'h759e;
	B = 16'h6cf5;
	ans = 16'h76db;
	#20
	A = 16'h6a44;
	B = 16'h7415;
	ans = 16'h74de;
	#20
	A = 16'h76b7;
	B = 16'h75d9;
	ans = 16'h7a48;
	#20
	A = 16'h7371;
	B = 16'hf2ed;
	ans = 16'h6420;
	#20
	A = 16'h70de;
	B = 16'h7231;
	ans = 16'h7588;
	#20
	A = 16'h6c28;
	B = 16'hf61d;
	ans = 16'hf513;
	#20
	A = 16'hf66b;
	B = 16'h76dc;
	ans = 16'h6710;
	#20
	A = 16'h71c0;
	B = 16'h6e92;
	ans = 16'h7484;
	#20
	A = 16'h67f1;
	B = 16'h7697;
	ans = 16'h7716;
	#20
	A = 16'hf4f7;
	B = 16'hf09c;
	ans = 16'hf745;
	#20
	A = 16'hf48a;
	B = 16'hf4d1;
	ans = 16'hf8ae;
	#20
	A = 16'hf70b;
	B = 16'hf2d5;
	ans = 16'hf93b;
	#20
	A = 16'hef6d;
	B = 16'he5fa;
	ans = 16'hf076;
	#20
	A = 16'h6b1c;
	B = 16'h744f;
	ans = 16'h7532;
	#20
	A = 16'hd3b9;
	B = 16'he64c;
	ans = 16'he68a;
	#20
	A = 16'h7546;
	B = 16'h76de;
	ans = 16'h7a12;
	#20
	A = 16'heac0;
	B = 16'hf6c3;
	ans = 16'hf79b;
	#20
	A = 16'h74a6;
	B = 16'h760a;
	ans = 16'h7958;
	#20
	A = 16'hf113;
	B = 16'hf607;
	ans = 16'hf848;
	#20
	A = 16'hf5f1;
	B = 16'hef5b;
	ans = 16'hf7c8;
	#20
	A = 16'hf560;
	B = 16'hf25e;
	ans = 16'hf848;
	#20
	A = 16'h686d;
	B = 16'hf487;
	ans = 16'hf3f3;
	#20
	A = 16'h64c0;
	B = 16'h7486;
	ans = 16'h74d2;
	#20
	A = 16'hf5ec;
	B = 16'hed8d;
	ans = 16'hf74f;
	#20
	A = 16'h71a8;
	B = 16'hf4e4;
	ans = 16'hf020;
	#20
	A = 16'hf6f8;
	B = 16'hf410;
	ans = 16'hf984;
	#20
	A = 16'h70ba;
	B = 16'h72b7;
	ans = 16'h75b8;
	#20
	A = 16'h6be2;
	B = 16'hf643;
	ans = 16'hf547;
	#20
	A = 16'hef73;
	B = 16'hf497;
	ans = 16'hf674;
	#20
	A = 16'h7183;
	B = 16'h721a;
	ans = 16'h75ce;
	#20
	A = 16'h70d7;
	B = 16'h747b;
	ans = 16'h76e6;
	#20
	A = 16'h6f6b;
	B = 16'hf643;
	ans = 16'hf468;
	#20
	A = 16'hf031;
	B = 16'h7462;
	ans = 16'h7093;
	#20
	A = 16'he05b;
	B = 16'h74b4;
	ans = 16'h7491;
	#20
	A = 16'h690d;
	B = 16'hec0d;
	ans = 16'he61a;
	#20
	A = 16'hf6eb;
	B = 16'h682b;
	ans = 16'hf666;
	#20
	A = 16'hf505;
	B = 16'h6b4e;
	ans = 16'hf41b;
	#20
	A = 16'hf47c;
	B = 16'h70fc;
	ans = 16'heff8;
	#20
	A = 16'hf663;
	B = 16'h7490;
	ans = 16'hef4c;
	#20
	A = 16'h6da2;
	B = 16'he7be;
	ans = 16'h6b65;
	#20
	A = 16'he250;
	B = 16'he850;
	ans = 16'he9e4;
	#20
	A = 16'h748a;
	B = 16'he73b;
	ans = 16'h7416;
	#20
	A = 16'hf324;
	B = 16'he53d;
	ans = 16'hf3cc;
	#20
	A = 16'hf2d2;
	B = 16'h6dfe;
	ans = 16'hefa6;
	#20
	A = 16'h7624;
	B = 16'hf490;
	ans = 16'h6e50;
	#20
	A = 16'h7330;
	B = 16'hf310;
	ans = 16'h5c00;
	#20
	A = 16'h7668;
	B = 16'hf4e9;
	ans = 16'h6dfc;
	#20
	A = 16'hf704;
	B = 16'hea2d;
	ans = 16'hf7ca;
	#20
	A = 16'hf12a;
	B = 16'hf61c;
	ans = 16'hf858;
	#20
	A = 16'h74b2;
	B = 16'hef1a;
	ans = 16'h71d7;
	#20
	A = 16'h74d7;
	B = 16'hf1c8;
	ans = 16'h6fcc;
	#20
	A = 16'hf3dc;
	B = 16'h7747;
	ans = 16'h72b2;
	#20
	A = 16'h6ccf;
	B = 16'hf29b;
	ans = 16'hf034;
	#20
	A = 16'hf570;
	B = 16'hf454;
	ans = 16'hf8e2;
	#20
	A = 16'hf40b;
	B = 16'hf705;
	ans = 16'hf988;
	#20
	A = 16'hf60f;
	B = 16'hf6f7;
	ans = 16'hfa83;
	#20
	A = 16'hf5c4;
	B = 16'hef76;
	ans = 16'hf7a2;
	#20
	A = 16'h7302;
	B = 16'hf624;
	ans = 16'hf146;
	#20
	A = 16'hf621;
	B = 16'h7252;
	ans = 16'hf1f0;
	#20
	A = 16'hef77;
	B = 16'h7637;
	ans = 16'h7459;
	#20
	A = 16'hf402;
	B = 16'h711a;
	ans = 16'hedd4;
	#20
	A = 16'h7487;
	B = 16'h6c9d;
	ans = 16'h75ae;
	#20
	A = 16'h6da5;
	B = 16'h71e2;
	ans = 16'h745a;
	#20
	A = 16'hf694;
	B = 16'hf32d;
	ans = 16'hf915;
	#20
	A = 16'h7652;
	B = 16'h7723;
	ans = 16'h7aba;
	#20
	A = 16'h717c;
	B = 16'h75ee;
	ans = 16'h7856;
	#20
	A = 16'hf1f1;
	B = 16'h76c2;
	ans = 16'h7393;
	#20
	A = 16'hf225;
	B = 16'h6b34;
	ans = 16'hf058;
	#20
	A = 16'h74aa;
	B = 16'h6e6d;
	ans = 16'h7645;
	#20
	A = 16'h6ec4;
	B = 16'h7457;
	ans = 16'h7608;
	#20
	A = 16'hf3f7;
	B = 16'hf447;
	ans = 16'hf821;
	#20
	A = 16'hf43d;
	B = 16'h6c7a;
	ans = 16'hf23d;
	#20
	A = 16'hec4d;
	B = 16'h748a;
	ans = 16'h72ee;
	#20
	A = 16'hf71a;
	B = 16'hf3ff;
	ans = 16'hf98d;
	#20
	A = 16'h7611;
	B = 16'hf09f;
	ans = 16'h7383;
	#20
	A = 16'h71e0;
	B = 16'hf5d9;
	ans = 16'hf1d2;
	#20
	A = 16'hf3e1;
	B = 16'h74a8;
	ans = 16'h69bc;
	#20
	A = 16'h7702;
	B = 16'hf243;
	ans = 16'h73c1;
	#20
	A = 16'hf63e;
	B = 16'hea50;
	ans = 16'hf708;
	#20
	A = 16'hf5cf;
	B = 16'h71b9;
	ans = 16'hf1e5;
	#20
	A = 16'hf521;
	B = 16'hec24;
	ans = 16'hf62a;
	#20
	A = 16'hf4d9;
	B = 16'h76f9;
	ans = 16'h7040;
	#20
	A = 16'h7106;
	B = 16'h6c3a;
	ans = 16'h7323;
	#20
	A = 16'h75cd;
	B = 16'hf363;
	ans = 16'h7037;
	#20
	A = 16'hef58;
	B = 16'hf011;
	ans = 16'hf3bd;
	#20
	A = 16'h64f2;
	B = 16'h7416;
	ans = 16'h7465;
	#20
	A = 16'hf505;
	B = 16'h7202;
	ans = 16'hf008;
	#20
	A = 16'hf571;
	B = 16'hedb3;
	ans = 16'hf6de;
	#20
	A = 16'h74f7;
	B = 16'he1c3;
	ans = 16'h74c9;
	#20
	A = 16'hf657;
	B = 16'hf747;
	ans = 16'hfacf;
	#20
	A = 16'h75b5;
	B = 16'h7713;
	ans = 16'h7a64;
	#20
	A = 16'h7562;
	B = 16'hf555;
	ans = 16'h5a80;
	#20
	A = 16'hf627;
	B = 16'h756a;
	ans = 16'he9e8;
	#20
	A = 16'hf6fb;
	B = 16'hf30d;
	ans = 16'hf941;
	#20
	A = 16'h6710;
	B = 16'h73b5;
	ans = 16'h744c;
	#20
	A = 16'h74c6;
	B = 16'h7559;
	ans = 16'h7910;
	#20
	A = 16'hf4c0;
	B = 16'hf014;
	ans = 16'hf6ca;
	#20
	A = 16'hf6ab;
	B = 16'hf415;
	ans = 16'hf960;
	#20
	A = 16'hf615;
	B = 16'h6866;
	ans = 16'hf588;
	#20
	A = 16'h76bf;
	B = 16'hec2b;
	ans = 16'h75b4;
	#20
	A = 16'hf554;
	B = 16'hf6bc;
	ans = 16'hfa08;
	#20
	A = 16'h7260;
	B = 16'he849;
	ans = 16'h714e;
	#20
	A = 16'h7026;
	B = 16'hf664;
	ans = 16'hf451;
	#20
	A = 16'h698c;
	B = 16'he987;
	ans = 16'h4900;
	#20
	A = 16'h6ec5;
	B = 16'h6dee;
	ans = 16'h725a;
	#20
	A = 16'h71e9;
	B = 16'heec3;
	ans = 16'h6d0f;
	#20
	A = 16'h7646;
	B = 16'h71ff;
	ans = 16'h78a3;
	#20
	A = 16'h7150;
	B = 16'h74e0;
	ans = 16'h7788;
	#20
	A = 16'h6e27;
	B = 16'h72c2;
	ans = 16'h74eb;
	#20
	A = 16'h74b0;
	B = 16'h764d;
	ans = 16'h797e;
	#20
	A = 16'h73f5;
	B = 16'h6b09;
	ans = 16'h74dc;
	#20
	A = 16'hf66a;
	B = 16'hef70;
	ans = 16'hf823;
	#20
	A = 16'hf04c;
	B = 16'hf3ee;
	ans = 16'hf61d;
	#20
	A = 16'hea63;
	B = 16'hf393;
	ans = 16'hf496;
	#20
	A = 16'h7156;
	B = 16'hf16c;
	ans = 16'hd980;
	#20
	A = 16'h7162;
	B = 16'hf4e1;
	ans = 16'hf060;
	#20
	A = 16'h6c63;
	B = 16'h7053;
	ans = 16'h7284;
	#20
	A = 16'h74cc;
	B = 16'h6e0e;
	ans = 16'h7650;
	#20
	A = 16'he936;
	B = 16'he482;
	ans = 16'heb77;
	#20
	A = 16'h7613;
	B = 16'hf08e;
	ans = 16'h7398;
	#20
	A = 16'hf303;
	B = 16'h74bd;
	ans = 16'h6cee;
	#20
	A = 16'h754d;
	B = 16'hf40f;
	ans = 16'h6cf8;
	#20
	A = 16'hf109;
	B = 16'h7141;
	ans = 16'h5f00;
	#20
	A = 16'hf663;
	B = 16'h7348;
	ans = 16'hf17e;
	#20
	A = 16'h6d4b;
	B = 16'h6b32;
	ans = 16'h7072;
	#20
	A = 16'hf329;
	B = 16'hf465;
	ans = 16'hf7fa;
	#20
	A = 16'h61ad;
	B = 16'hf3a3;
	ans = 16'hf348;
	#20
	A = 16'hf44c;
	B = 16'hf740;
	ans = 16'hf9c6;
	#20
	A = 16'h6fbe;
	B = 16'h74da;
	ans = 16'h76ca;
	#20
	A = 16'hee42;
	B = 16'hebf0;
	ans = 16'hf11d;
	#20
	A = 16'hf37e;
	B = 16'h6933;
	ans = 16'hf231;
	#20
	A = 16'h7591;
	B = 16'h76c7;
	ans = 16'h7a2c;
	#20
	A = 16'hedfd;
	B = 16'he724;
	ans = 16'hefc6;
	#20
	A = 16'h7325;
	B = 16'h7645;
	ans = 16'h78ec;
	#20
	A = 16'hf00c;
	B = 16'hf660;
	ans = 16'hf833;
	#20
	A = 16'h75c4;
	B = 16'h6db3;
	ans = 16'h7731;
	#20
	A = 16'hf6f6;
	B = 16'hf13d;
	ans = 16'hf8ca;
	#20
	A = 16'h7364;
	B = 16'h73e0;
	ans = 16'h77a2;
	#20
	A = 16'h6bd1;
	B = 16'h76d4;
	ans = 16'h77ce;
	#20
	A = 16'h754b;
	B = 16'hf614;
	ans = 16'hea48;
	#20
	A = 16'h71a4;
	B = 16'hf456;
	ans = 16'hee10;
	#20
	A = 16'hf1b7;
	B = 16'hf702;
	ans = 16'hf8ef;
	#20
	A = 16'hf542;
	B = 16'hf56e;
	ans = 16'hf958;
	#20
	A = 16'hee2e;
	B = 16'h7133;
	ans = 16'h6c38;
	#20
	A = 16'h7731;
	B = 16'hf15a;
	ans = 16'h7484;
	#20
	A = 16'hf2c3;
	B = 16'hef53;
	ans = 16'hf536;
	#20
	A = 16'h748c;
	B = 16'h76b8;
	ans = 16'h79a2;
	#20
	A = 16'h73aa;
	B = 16'hf24f;
	ans = 16'h696c;
	#20
	A = 16'hf2f9;
	B = 16'h771e;
	ans = 16'h7343;
	#20
	A = 16'h75b7;
	B = 16'hf6e4;
	ans = 16'hecb4;
	#20
	A = 16'hf156;
	B = 16'h742a;
	ans = 16'h6dfc;
	#20
	A = 16'h76f1;
	B = 16'h75c1;
	ans = 16'h7a59;
	#20
	A = 16'h6e2a;
	B = 16'h7652;
	ans = 16'h77dc;
	#20
	A = 16'h743f;
	B = 16'hf4e2;
	ans = 16'he918;
	#20
	A = 16'hedc6;
	B = 16'h6cd3;
	ans = 16'he398;
	#20
	A = 16'heceb;
	B = 16'hf6e8;
	ans = 16'hf811;
	#20
	A = 16'h7503;
	B = 16'hefe0;
	ans = 16'h7216;
	#20
	A = 16'hf604;
	B = 16'he126;
	ans = 16'hf62d;
	#20
	A = 16'h6c6a;
	B = 16'hd962;
	ans = 16'h6c3f;
	#20
	A = 16'hf17d;
	B = 16'hf09b;
	ans = 16'hf50c;
	#20
	A = 16'h7348;
	B = 16'h6e54;
	ans = 16'h7539;
	#20
	A = 16'h74ab;
	B = 16'h6cf5;
	ans = 16'h75e8;
	#20
	A = 16'hf6bb;
	B = 16'he84e;
	ans = 16'hf745;
	#20
	A = 16'heea1;
	B = 16'hf494;
	ans = 16'hf63c;
	#20
	A = 16'hed3b;
	B = 16'h6d48;
	ans = 16'h5280;
	#20
	A = 16'hf608;
	B = 16'h76b7;
	ans = 16'h6978;
	#20
	A = 16'h7127;
	B = 16'hf3a6;
	ans = 16'hecfe;
	#20
	A = 16'h5da9;
	B = 16'hf46f;
	ans = 16'hf458;
	#20
	A = 16'hf60b;
	B = 16'h729a;
	ans = 16'hf17c;
	#20
	A = 16'hf55f;
	B = 16'hf4ee;
	ans = 16'hf926;
	#20
	A = 16'hf556;
	B = 16'h7330;
	ans = 16'heef8;
	#20
	A = 16'hf16e;
	B = 16'h7708;
	ans = 16'h7451;
	#20
	A = 16'hf4aa;
	B = 16'h75c2;
	ans = 16'h6c60;
	#20
	A = 16'hf2d8;
	B = 16'hf5de;
	ans = 16'hf8a5;
	#20
	A = 16'h758f;
	B = 16'hf69a;
	ans = 16'hec2c;
	#20
	A = 16'hf6aa;
	B = 16'hf57f;
	ans = 16'hfa14;
	#20
	A = 16'he7bb;
	B = 16'hf4ab;
	ans = 16'hf527;
	#20
	A = 16'h7536;
	B = 16'heda2;
	ans = 16'h739b;
	#20
	A = 16'h6e62;
	B = 16'hf6bd;
	ans = 16'hf524;
	#20
	A = 16'h6a0f;
	B = 16'h729f;
	ans = 16'h7411;
	#20
	A = 16'h6f94;
	B = 16'h75a3;
	ans = 16'h7788;
	#20
	A = 16'h7157;
	B = 16'hf3c3;
	ans = 16'hecd8;
	#20
	A = 16'h7740;
	B = 16'heeef;
	ans = 16'h7584;
	#20
	A = 16'hf329;
	B = 16'h76cc;
	ans = 16'h726f;
	#20
	A = 16'h76b5;
	B = 16'hf1c9;
	ans = 16'h73a1;
	#20
	A = 16'h76b2;
	B = 16'heee8;
	ans = 16'h74f8;
	#20
	A = 16'h6e64;
	B = 16'h6ddf;
	ans = 16'h7222;
	#20
	A = 16'h7189;
	B = 16'hed05;
	ans = 16'h6e0d;
	#20
	A = 16'h747d;
	B = 16'hf097;
	ans = 16'h7063;
	#20
	A = 16'hf6bc;
	B = 16'h6ea3;
	ans = 16'hf513;
	#20
	A = 16'h73ef;
	B = 16'hf29c;
	ans = 16'h694c;
	#20
	A = 16'hf53b;
	B = 16'hf3ac;
	ans = 16'hf888;
	#20
	A = 16'h6d3f;
	B = 16'hf2c7;
	ans = 16'hf028;
	#20
	A = 16'hf0ce;
	B = 16'hf00d;
	ans = 16'hf46e;
	#20
	A = 16'hf168;
	B = 16'hea0c;
	ans = 16'hf2eb;
	#20
	A = 16'h6d53;
	B = 16'hf522;
	ans = 16'hf39a;
	#20
	A = 16'h73c3;
	B = 16'h7721;
	ans = 16'h7981;
	#20
	A = 16'h6e9c;
	B = 16'hf529;
	ans = 16'hf304;
	#20
	A = 16'h7304;
	B = 16'h76ed;
	ans = 16'h7938;
	#20
	A = 16'hef64;
	B = 16'hf195;
	ans = 16'hf4a4;
	#20
	A = 16'hf2b9;
	B = 16'hf69b;
	ans = 16'hf8fc;
	#20
	A = 16'h68af;
	B = 16'hef5b;
	ans = 16'hed04;
	#20
	A = 16'hf464;
	B = 16'h7587;
	ans = 16'h6c8c;
	#20
	A = 16'h7549;
	B = 16'h7560;
	ans = 16'h7954;
	#20
	A = 16'hf4fa;
	B = 16'hf56a;
	ans = 16'hf932;
	#20
	A = 16'hf45f;
	B = 16'h762f;
	ans = 16'h6f40;
	#20
	A = 16'h75ae;
	B = 16'hf55c;
	ans = 16'h6520;
	#20
	A = 16'h744f;
	B = 16'h6cd8;
	ans = 16'h7585;
	#20
	A = 16'hed50;
	B = 16'h6895;
	ans = 16'hea0b;
	#20
	A = 16'he86c;
	B = 16'he9ab;
	ans = 16'hed0c;
	#20
	A = 16'h762d;
	B = 16'h74d9;
	ans = 16'h7983;
	#20
	A = 16'heee9;
	B = 16'hee0c;
	ans = 16'hf27a;
	#20
	A = 16'hf12a;
	B = 16'h7651;
	ans = 16'h7378;
	#20
	A = 16'hf1e7;
	B = 16'h769e;
	ans = 16'h7355;
	#20
	A = 16'hf496;
	B = 16'h6759;
	ans = 16'hf420;
	#20
	A = 16'hf55d;
	B = 16'hf668;
	ans = 16'hf9e2;
	#20
	A = 16'h771d;
	B = 16'hef2f;
	ans = 16'h7551;
	#20
	A = 16'h6d3a;
	B = 16'h6f86;
	ans = 16'h7260;
	#20
	A = 16'hf448;
	B = 16'hf0c6;
	ans = 16'hf6ab;
	#20
	A = 16'h704b;
	B = 16'hf119;
	ans = 16'he670;
	#20
	A = 16'hec03;
	B = 16'h6e46;
	ans = 16'h6886;
	#20
	A = 16'h742e;
	B = 16'h6e75;
	ans = 16'h75cb;
	#20
	A = 16'hf439;
	B = 16'hf179;
	ans = 16'hf6f6;
	#20
	A = 16'h6f05;
	B = 16'h7679;
	ans = 16'h781d;
	#20
	A = 16'hf26c;
	B = 16'hefe9;
	ans = 16'hf530;
	#20
	A = 16'hf048;
	B = 16'he5f5;
	ans = 16'hf107;
	#20
	A = 16'h742a;
	B = 16'h6f78;
	ans = 16'h7608;
	#20
	A = 16'h756b;
	B = 16'hf15d;
	ans = 16'h7179;
	#20
	A = 16'hf177;
	B = 16'hf36d;
	ans = 16'hf672;
	#20
	A = 16'h762a;
	B = 16'h6c01;
	ans = 16'h772a;
	#20
	A = 16'hf4b3;
	B = 16'he820;
	ans = 16'hf537;
	#20
	A = 16'h75e4;
	B = 16'hf627;
	ans = 16'he430;
	#20
	A = 16'hf4a3;
	B = 16'h5ef1;
	ans = 16'hf487;
	#20
	A = 16'hf3a9;
	B = 16'h769d;
	ans = 16'h7191;
	#20
	A = 16'hf4e3;
	B = 16'h69e0;
	ans = 16'hf427;
	#20
	A = 16'hf653;
	B = 16'hea7c;
	ans = 16'hf722;
	#20
	A = 16'h70c0;
	B = 16'h76c5;
	ans = 16'h7892;
	#20
	A = 16'h70b8;
	B = 16'hf69c;
	ans = 16'hf440;
	#20
	A = 16'hf5f9;
	B = 16'hf2ae;
	ans = 16'hf8a8;
	#20
	A = 16'he2fb;
	B = 16'h7537;
	ans = 16'h74ff;
	#20
	A = 16'h75b3;
	B = 16'hf25a;
	ans = 16'h710c;
	#20
	A = 16'h7422;
	B = 16'h74e2;
	ans = 16'h7882;
	#20
	A = 16'hf40e;
	B = 16'h7275;
	ans = 16'hea9c;
	#20
	A = 16'h7151;
	B = 16'h71df;
	ans = 16'h7598;
	#20
	A = 16'hf4b0;
	B = 16'hf17a;
	ans = 16'hf76d;
	#20
	A = 16'hf28a;
	B = 16'hf085;
	ans = 16'hf588;
	#20
	A = 16'hf47a;
	B = 16'h755c;
	ans = 16'h6b10;
	#20
	A = 16'he8ed;
	B = 16'hf74e;
	ans = 16'hf7ec;
	#20
	A = 16'hf510;
	B = 16'h649e;
	ans = 16'hf4c6;
	#20
	A = 16'h63a9;
	B = 16'h745a;
	ans = 16'h7497;
	#20
	A = 16'h75b1;
	B = 16'h72c3;
	ans = 16'h7889;
	#20
	A = 16'hf2ae;
	B = 16'hf48d;
	ans = 16'hf7e4;
	#20
	A = 16'hf461;
	B = 16'hf002;
	ans = 16'hf662;
	#20
	A = 16'hf634;
	B = 16'h76f0;
	ans = 16'h69e0;
	#20
	A = 16'hf6e3;
	B = 16'h7205;
	ans = 16'hf3c1;
	#20
	A = 16'h7653;
	B = 16'hf301;
	ans = 16'h71a5;
	#20
	A = 16'hf731;
	B = 16'h76a1;
	ans = 16'he880;
	#20
	A = 16'h7545;
	B = 16'hec78;
	ans = 16'h7427;
	#20
	A = 16'h7698;
	B = 16'hf660;
	ans = 16'h6300;
	#20
	A = 16'hdf39;
	B = 16'hf438;
	ans = 16'hf455;
	#20
	A = 16'h662d;
	B = 16'heb28;
	ans = 16'he812;
	#20
	A = 16'hea69;
	B = 16'hee13;
	ans = 16'hf0a4;
	#20
	A = 16'heeb9;
	B = 16'heda4;
	ans = 16'hf22e;
	#20
	A = 16'hf1d8;
	B = 16'hf174;
	ans = 16'hf5a6;
	#20
	A = 16'hf493;
	B = 16'hf72c;
	ans = 16'hf9e0;
	#20
	A = 16'hf4c3;
	B = 16'h764c;
	ans = 16'h6e24;
	#20
	A = 16'h7217;
	B = 16'hf731;
	ans = 16'hf426;
	#20
	A = 16'h76d1;
	B = 16'hf08d;
	ans = 16'h748a;
	#20
	A = 16'h7485;
	B = 16'h767a;
	ans = 16'h7980;
	#20
	A = 16'h72a0;
	B = 16'h6ce9;
	ans = 16'h748a;
	#20
	A = 16'h6908;
	B = 16'hf182;
	ans = 16'hf040;
	#20
	A = 16'h756b;
	B = 16'hf1f4;
	ans = 16'h70e2;
	#20
	A = 16'h7154;
	B = 16'h6de4;
	ans = 16'h7423;
	#20
	A = 16'h6a10;
	B = 16'h74c8;
	ans = 16'h758a;
	#20
	A = 16'h72c7;
	B = 16'hf6c5;
	ans = 16'hf2c3;
	#20
	A = 16'hf212;
	B = 16'h66ec;
	ans = 16'hf134;
	#20
	A = 16'h7605;
	B = 16'h6e85;
	ans = 16'h77a6;
	#20
	A = 16'hf632;
	B = 16'h6cea;
	ans = 16'hf4f8;
	#20
	A = 16'h7587;
	B = 16'he2e7;
	ans = 16'h7550;
	#20
	A = 16'hf62a;
	B = 16'hf092;
	ans = 16'hf83a;
	#20
	A = 16'h70a1;
	B = 16'hf48b;
	ans = 16'hf075;
	#20
	A = 16'h6c46;
	B = 16'h74ac;
	ans = 16'h75be;
	#20
	A = 16'h7492;
	B = 16'h773e;
	ans = 16'h79e8;
	#20
	A = 16'h72b2;
	B = 16'hf078;
	ans = 16'h6c74;
	#20
	A = 16'hf3e2;
	B = 16'hedce;
	ans = 16'hf564;
	#20
	A = 16'hf44b;
	B = 16'hf21a;
	ans = 16'hf758;
	#20
	A = 16'hf5ee;
	B = 16'h6d1a;
	ans = 16'hf4a8;
	#20
	A = 16'h7027;
	B = 16'hf487;
	ans = 16'hf0e7;
	#20
	A = 16'hf38d;
	B = 16'h71e4;
	ans = 16'heaa4;
	#20
	A = 16'h7318;
	B = 16'h6eb0;
	ans = 16'h7538;
	#20
	A = 16'hf57a;
	B = 16'hf3e8;
	ans = 16'hf8b7;
	#20
	A = 16'hf237;
	B = 16'h761f;
	ans = 16'h7207;
	#20
	A = 16'he1a6;
	B = 16'hf5fe;
	ans = 16'hf62b;
	#20
	A = 16'hee51;
	B = 16'h6575;
	ans = 16'hecf4;
	#20
	A = 16'h7402;
	B = 16'h74a0;
	ans = 16'h7851;
	#20
	A = 16'h746c;
	B = 16'hf3ea;
	ans = 16'h6770;
	#20
	A = 16'h6f8d;
	B = 16'hf581;
	ans = 16'hf33c;
	#20
	A = 16'hf11c;
	B = 16'hf220;
	ans = 16'hf59e;
	#20
	A = 16'hf4f1;
	B = 16'h7419;
	ans = 16'heac0;
	#20
	A = 16'hf640;
	B = 16'hf079;
	ans = 16'hf83e;
	#20
	A = 16'hf46d;
	B = 16'h7078;
	ans = 16'hf062;
	#20
	A = 16'h7711;
	B = 16'hf613;
	ans = 16'h6bf0;
	#20
	A = 16'hed20;
	B = 16'heeba;
	ans = 16'hf1ed;
	#20
	A = 16'h6ff5;
	B = 16'hf5d7;
	ans = 16'hf3b4;
	#20
	A = 16'hf67a;
	B = 16'h76b8;
	ans = 16'h63c0;
	#20
	A = 16'hf34c;
	B = 16'h67b3;
	ans = 16'hf256;
	#20
	A = 16'hf45f;
	B = 16'h6cb0;
	ans = 16'hf266;
	#20
	A = 16'hf1dc;
	B = 16'hf16f;
	ans = 16'hf5a6;
	#20
	A = 16'h677e;
	B = 16'h6caa;
	ans = 16'h6e8a;
	#20
	A = 16'hdbec;
	B = 16'hf4ea;
	ans = 16'hf4fa;
	#20
	A = 16'hf48d;
	B = 16'hf07d;
	ans = 16'hf6cc;
	#20
	A = 16'h65ba;
	B = 16'h6469;
	ans = 16'h6912;
	#20
	A = 16'h720d;
	B = 16'he8aa;
	ans = 16'h70e2;
	#20
	A = 16'h71c1;
	B = 16'hebcc;
	ans = 16'h6f9c;
	#20
	A = 16'h6c2a;
	B = 16'hef91;
	ans = 16'heace;
	#20
	A = 16'h7436;
	B = 16'hf2c8;
	ans = 16'h6a90;
	#20
	A = 16'h75d7;
	B = 16'hf74c;
	ans = 16'hedd4;
	#20
	A = 16'hf72b;
	B = 16'h71a3;
	ans = 16'hf45a;
	#20
	A = 16'h748e;
	B = 16'h6893;
	ans = 16'h7520;
	#20
	A = 16'h719f;
	B = 16'hf107;
	ans = 16'h64c0;
	#20
	A = 16'hf736;
	B = 16'h709f;
	ans = 16'hf4e6;
	#20
	A = 16'h7695;
	B = 16'hf0ce;
	ans = 16'h742e;
	#20
	A = 16'h773b;
	B = 16'h757f;
	ans = 16'h7a5d;
	#20
	A = 16'hf0e5;
	B = 16'hf4da;
	ans = 16'hf74c;
	#20
	A = 16'hf12a;
	B = 16'h7388;
	ans = 16'h6cbc;
	#20
	A = 16'h733a;
	B = 16'hf5dd;
	ans = 16'hf080;
	#20
	A = 16'h766e;
	B = 16'hef48;
	ans = 16'h749c;
	#20
	A = 16'hf1c6;
	B = 16'h521e;
	ans = 16'hf1c0;
	#20
	A = 16'h75c3;
	B = 16'h6c3d;
	ans = 16'h76d2;
	#20
	A = 16'h6ee0;
	B = 16'h6e93;
	ans = 16'h72ba;
	#20
	A = 16'hf6ff;
	B = 16'hf2db;
	ans = 16'hf936;
	#20
	A = 16'h7638;
	B = 16'h76d2;
	ans = 16'h7a85;
	#20
	A = 16'h7599;
	B = 16'h735c;
	ans = 16'h78a4;
	#20
	A = 16'hf5e2;
	B = 16'hdc27;
	ans = 16'hf5f3;
	#20
	A = 16'hf4bd;
	B = 16'hf475;
	ans = 16'hf899;
	#20
	A = 16'hef61;
	B = 16'hf346;
	ans = 16'hf57b;
	#20
	A = 16'h717c;
	B = 16'h70cc;
	ans = 16'h7524;
	#20
	A = 16'h75ee;
	B = 16'h744d;
	ans = 16'h791e;
	#20
	A = 16'h7185;
	B = 16'h759c;
	ans = 16'h782f;
	#20
	A = 16'h7005;
	B = 16'h748b;
	ans = 16'h768e;
	#20
	A = 16'hee82;
	B = 16'hf5e7;
	ans = 16'hf788;
	#20
	A = 16'h758e;
	B = 16'h75fd;
	ans = 16'h79c6;
	#20
	A = 16'h7183;
	B = 16'hf709;
	ans = 16'hf448;
	#20
	A = 16'hf45d;
	B = 16'h7056;
	ans = 16'hf064;
	#20
	A = 16'h76d9;
	B = 16'h750e;
	ans = 16'h79f4;
	#20
	A = 16'hf6ab;
	B = 16'h7293;
	ans = 16'hf2c3;
	#20
	A = 16'h7520;
	B = 16'h74ea;
	ans = 16'h7905;
	#20
	A = 16'hf136;
	B = 16'hf5e4;
	ans = 16'hf840;
	#20
	A = 16'hf616;
	B = 16'hf628;
	ans = 16'hfa1f;
	#20
	A = 16'h73ac;
	B = 16'h76fc;
	ans = 16'h7969;
	#20
	A = 16'h75d1;
	B = 16'hf476;
	ans = 16'h6d6c;
	#20
	A = 16'hef5d;
	B = 16'h751e;
	ans = 16'h728e;
	#20
	A = 16'h69a5;
	B = 16'h76c3;
	ans = 16'h7778;
	#20
	A = 16'hf333;
	B = 16'h7641;
	ans = 16'h714f;
	#20
	A = 16'h6ee9;
	B = 16'hf56f;
	ans = 16'hf36a;
	#20
	A = 16'hf27f;
	B = 16'h696c;
	ans = 16'hf124;
	#20
	A = 16'h7476;
	B = 16'hf74e;
	ans = 16'hf1b0;
	#20
	A = 16'hecef;
	B = 16'hf0a6;
	ans = 16'hf31e;
	#20
	A = 16'hf030;
	B = 16'h70ed;
	ans = 16'h65e8;
	#20
	A = 16'h7685;
	B = 16'he757;
	ans = 16'h7610;
	#20
	A = 16'hf1eb;
	B = 16'hf5b0;
	ans = 16'hf853;
	#20
	A = 16'hf64c;
	B = 16'hf424;
	ans = 16'hf938;
	#20
	A = 16'hf024;
	B = 16'h6d6f;
	ans = 16'he9b2;
	#20
	A = 16'hdc0c;
	B = 16'he835;
	ans = 16'he8b6;
	#20
	A = 16'h735e;
	B = 16'h7397;
	ans = 16'h777a;
	#20
	A = 16'h71cf;
	B = 16'h753d;
	ans = 16'h7812;
	#20
	A = 16'h6c9e;
	B = 16'h751e;
	ans = 16'h7646;
	#20
	A = 16'h719c;
	B = 16'hf687;
	ans = 16'hf372;
	#20
	A = 16'h75b8;
	B = 16'h6961;
	ans = 16'h7664;
	#20
	A = 16'hf3ea;
	B = 16'he5d9;
	ans = 16'hf453;
	#20
	A = 16'hedf3;
	B = 16'h6f2d;
	ans = 16'h64e8;
	#20
	A = 16'h70e6;
	B = 16'h6c9b;
	ans = 16'h7334;
	#20
	A = 16'h754a;
	B = 16'hf5a0;
	ans = 16'he560;
	#20
	A = 16'hef3e;
	B = 16'hf6e6;
	ans = 16'hf85b;
	#20
	A = 16'h6e33;
	B = 16'hf26e;
	ans = 16'heea9;
	#20
	A = 16'h7269;
	B = 16'heff4;
	ans = 16'h6cde;
	#20
	A = 16'hf3d1;
	B = 16'h6f37;
	ans = 16'hf036;
	#20
	A = 16'hf6ba;
	B = 16'h74fd;
	ans = 16'heef4;
	#20
	A = 16'hee4c;
	B = 16'hf573;
	ans = 16'hf706;
	#20
	A = 16'h64b0;
	B = 16'h737e;
	ans = 16'h740a;
	#20
	A = 16'hf50c;
	B = 16'hf6a8;
	ans = 16'hf9da;
	#20
	A = 16'h711b;
	B = 16'h6dba;
	ans = 16'h73f8;
	#20
	A = 16'hec82;
	B = 16'heba4;
	ans = 16'hf02a;
	#20
	A = 16'h684e;
	B = 16'h744f;
	ans = 16'h74d9;
	#20
	A = 16'hecb6;
	B = 16'h72db;
	ans = 16'h7080;
	#20
	A = 16'hf5d4;
	B = 16'hef5e;
	ans = 16'hf7ac;
	#20
	A = 16'hf125;
	B = 16'h76b7;
	ans = 16'h7424;
	#20
	A = 16'h7072;
	B = 16'he9cb;
	ans = 16'h6dfe;
	#20
	A = 16'h6ead;
	B = 16'hf499;
	ans = 16'hf1dc;
	#20
	A = 16'hf326;
	B = 16'hf2fb;
	ans = 16'hf710;
	#20
	A = 16'hf4a6;
	B = 16'h6fe1;
	ans = 16'hf15c;
	#20
	A = 16'h7424;
	B = 16'hf122;
	ans = 16'h6e4c;
	#20
	A = 16'hf4d4;
	B = 16'hf394;
	ans = 16'hf84f;
	#20
	A = 16'h731a;
	B = 16'hf454;
	ans = 16'hea38;
	#20
	A = 16'h6d60;
	B = 16'h75e5;
	ans = 16'h773d;
	#20
	A = 16'hf565;
	B = 16'h7231;
	ans = 16'hf099;
	#20
	A = 16'hf496;
	B = 16'h7350;
	ans = 16'heb70;
	#20
	A = 16'hf297;
	B = 16'he8b6;
	ans = 16'hf3c4;
	#20
	A = 16'hf61e;
	B = 16'hf187;
	ans = 16'hf871;
	#20
	A = 16'h7293;
	B = 16'hf601;
	ans = 16'hf16f;
	#20
	A = 16'hf634;
	B = 16'h7484;
	ans = 16'heec0;
	#20
	A = 16'hf38a;
	B = 16'hf387;
	ans = 16'hf788;
	#20
	A = 16'hd8ea;
	B = 16'he2df;
	ans = 16'he40d;
	#20
	A = 16'h70db;
	B = 16'he403;
	ans = 16'h705b;
	#20
	A = 16'hedee;
	B = 16'h7301;
	ans = 16'h700a;
	#20
	A = 16'h725b;
	B = 16'h689a;
	ans = 16'h7382;
	#20
	A = 16'h73a4;
	B = 16'hef43;
	ans = 16'h7002;
	#20
	A = 16'h723c;
	B = 16'h76b8;
	ans = 16'h78eb;
	#20
	A = 16'hf73b;
	B = 16'he559;
	ans = 16'hf791;
	#20
	A = 16'he5e9;
	B = 16'hf6d4;
	ans = 16'hf733;
	#20
	A = 16'hf4c1;
	B = 16'h74ae;
	ans = 16'hdcc0;
	#20
	A = 16'hf710;
	B = 16'h631d;
	ans = 16'hf6d7;
	#20
	A = 16'hf489;
	B = 16'hee95;
	ans = 16'hf62e;
	#20
	A = 16'hf56b;
	B = 16'hf419;
	ans = 16'hf8c2;
	#20
	A = 16'h7323;
	B = 16'hf6c8;
	ans = 16'hf26d;
	#20
	A = 16'hf04c;
	B = 16'h765d;
	ans = 16'h7437;
	#20
	A = 16'h76bd;
	B = 16'h7498;
	ans = 16'h79aa;
	#20
	A = 16'h7107;
	B = 16'h7611;
	ans = 16'h784a;
	#20
	A = 16'hf637;
	B = 16'h772e;
	ans = 16'h6bb8;
	#20
	A = 16'hf720;
	B = 16'hf19e;
	ans = 16'hf8f8;
	#20
	A = 16'h702b;
	B = 16'hee04;
	ans = 16'h68a4;
	#20
	A = 16'hf5c0;
	B = 16'hf6d8;
	ans = 16'hfa4c;
	#20
	A = 16'hf51c;
	B = 16'h7043;
	ans = 16'hf1f5;
	#20
	A = 16'h733c;
	B = 16'h7402;
	ans = 16'h77a0;
	#20
	A = 16'h71b9;
	B = 16'h70e2;
	ans = 16'h754e;
	#20
	A = 16'h7595;
	B = 16'hf601;
	ans = 16'he6c0;
	#20
	A = 16'hef53;
	B = 16'h763b;
	ans = 16'h7466;
	#20
	A = 16'h744d;
	B = 16'h67ae;
	ans = 16'h74c8;
	#20
	A = 16'hecc5;
	B = 16'h6a49;
	ans = 16'he682;
	#20
	A = 16'hf46e;
	B = 16'hf1d6;
	ans = 16'hf759;
	#20
	A = 16'h5cc0;
	B = 16'hf5f2;
	ans = 16'hf5df;
	#20
	A = 16'h761a;
	B = 16'h74cb;
	ans = 16'h7972;
	#20
	A = 16'hf17c;
	B = 16'h752e;
	ans = 16'h70e0;
	#20
	A = 16'hf2e0;
	B = 16'h6f07;
	ans = 16'heeb9;
	#20
	A = 16'h7070;
	B = 16'hdb90;
	ans = 16'h7052;
	#20
	A = 16'h73a5;
	B = 16'hf0d5;
	ans = 16'h6da0;
	#20
	A = 16'h76d8;
	B = 16'hda05;
	ans = 16'h76cc;
	#20
	A = 16'hebd5;
	B = 16'hf436;
	ans = 16'hf531;
	#20
	A = 16'h73e1;
	B = 16'h67a0;
	ans = 16'h746a;
	#20
	A = 16'h7418;
	B = 16'hf6d2;
	ans = 16'hf174;
	#20
	A = 16'he570;
	B = 16'h7445;
	ans = 16'h73dc;
	#20
	A = 16'h7678;
	B = 16'h75fc;
	ans = 16'h7a3a;
	#20
	A = 16'h75a0;
	B = 16'hedaf;
	ans = 16'h7434;
	#20
	A = 16'h73ce;
	B = 16'h711f;
	ans = 16'h7676;
	#20
	A = 16'h75ea;
	B = 16'hf539;
	ans = 16'h6988;
	#20
	A = 16'h6e34;
	B = 16'h652f;
	ans = 16'h6f80;
	#20
	A = 16'h6f01;
	B = 16'h72b7;
	ans = 16'h751c;
	#20
	A = 16'hf0ef;
	B = 16'h6c0d;
	ans = 16'hedd1;
	#20
	A = 16'hf63b;
	B = 16'hed34;
	ans = 16'hf788;
	#20
	A = 16'hf5f1;
	B = 16'hf546;
	ans = 16'hf99c;
	#20
	A = 16'hf360;
	B = 16'h726c;
	ans = 16'he7a0;
	#20
	A = 16'hd4a1;
	B = 16'h6eaf;
	ans = 16'h6e9c;
	#20
	A = 16'he2a3;
	B = 16'hf626;
	ans = 16'hf65b;
	#20
	A = 16'hf014;
	B = 16'hf721;
	ans = 16'hf896;
	#20
	A = 16'h750d;
	B = 16'hf694;
	ans = 16'hee1c;
	#20
	A = 16'h7273;
	B = 16'h7385;
	ans = 16'h76fc;
	#20
	A = 16'h71a2;
	B = 16'hedd8;
	ans = 16'h6d6c;
	#20
	A = 16'hf595;
	B = 16'h76fb;
	ans = 16'h6d98;
	#20
	A = 16'h709f;
	B = 16'hf5f5;
	ans = 16'hf34b;
	#20
	A = 16'hf3df;
	B = 16'hea50;
	ans = 16'hf4ba;
	#20
	A = 16'h6d01;
	B = 16'hf4ea;
	ans = 16'hf354;
	#20
	A = 16'hf47b;
	B = 16'hf6f9;
	ans = 16'hf9ba;
	#20
	A = 16'h7116;
	B = 16'hf73a;
	ans = 16'hf4af;
	#20
	A = 16'hf032;
	B = 16'hf5ae;
	ans = 16'hf7c7;
	#20
	A = 16'h73bd;
	B = 16'hf460;
	ans = 16'he80c;
	#20
	A = 16'hf59c;
	B = 16'hea9b;
	ans = 16'hf66f;
	#20
	A = 16'hf1da;
	B = 16'hf646;
	ans = 16'hf89a;
	#20
	A = 16'hf603;
	B = 16'hf202;
	ans = 16'hf882;
	#20
	A = 16'h74d1;
	B = 16'hf44b;
	ans = 16'h6830;
	#20
	A = 16'hf1e1;
	B = 16'h6d09;
	ans = 16'heeb9;
	#20
	A = 16'h6c9d;
	B = 16'h7454;
	ans = 16'h757b;
	#20
	A = 16'h76dd;
	B = 16'hf1b9;
	ans = 16'h7400;
	#20
	A = 16'h7503;
	B = 16'h6f98;
	ans = 16'h76e9;
	#20
	A = 16'hf072;
	B = 16'h763d;
	ans = 16'h7404;
	#20
	A = 16'hf1a3;
	B = 16'hed7d;
	ans = 16'hf431;
	#20
	A = 16'hf512;
	B = 16'hf295;
	ans = 16'hf82e;
	#20
	A = 16'hf522;
	B = 16'h742a;
	ans = 16'hebc0;
	#20
	A = 16'h73f5;
	B = 16'hf385;
	ans = 16'h6300;
	#20
	A = 16'h6ee5;
	B = 16'hf053;
	ans = 16'he704;
	#20
	A = 16'hf369;
	B = 16'h7199;
	ans = 16'heb40;
	#20
	A = 16'hf648;
	B = 16'hf433;
	ans = 16'hf93e;
	#20
	A = 16'hf5c7;
	B = 16'hf383;
	ans = 16'hf8c4;
	#20
	A = 16'h76cd;
	B = 16'hf702;
	ans = 16'he2a0;
	#20
	A = 16'h7548;
	B = 16'hf41b;
	ans = 16'h6cb4;
	#20
	A = 16'h771c;
	B = 16'h76e9;
	ans = 16'h7b02;
	#20
	A = 16'hf5c5;
	B = 16'hee69;
	ans = 16'hf75f;
	#20
	A = 16'h6a33;
	B = 16'heaa4;
	ans = 16'hdb10;
	#20
	A = 16'h73f7;
	B = 16'hf71c;
	ans = 16'hf241;
	#20
	A = 16'h6809;
	B = 16'hf526;
	ans = 16'hf4a5;
	#20
	A = 16'h729a;
	B = 16'h725c;
	ans = 16'h767b;
	#20
	A = 16'hefa2;
	B = 16'hcf9f;
	ans = 16'hefaa;
	#20
	A = 16'hf0c9;
	B = 16'hf411;
	ans = 16'hf676;
	#20
	A = 16'h755f;
	B = 16'h71a3;
	ans = 16'h7818;
	#20
	A = 16'h7045;
	B = 16'hf61e;
	ans = 16'hf3f7;
	#20
	A = 16'hef99;
	B = 16'hf483;
	ans = 16'hf669;
	#20
	A = 16'h7664;
	B = 16'he7de;
	ans = 16'h75e6;
	#20
	A = 16'hf21f;
	B = 16'hf716;
	ans = 16'hf913;
	#20
	A = 16'hf6fb;
	B = 16'h722d;
	ans = 16'hf3c9;
	#20
	A = 16'h6d51;
	B = 16'h7559;
	ans = 16'h76ad;
	#20
	A = 16'h7331;
	B = 16'h7413;
	ans = 16'h77ac;
	#20
	A = 16'h6945;
	B = 16'h7144;
	ans = 16'h7295;
	#20
	A = 16'h75da;
	B = 16'hf13d;
	ans = 16'h7277;
	#20
	A = 16'h7675;
	B = 16'hdc0e;
	ans = 16'h7665;
	#20
	A = 16'h62f1;
	B = 16'hf705;
	ans = 16'hf6cd;
	#20
	A = 16'hf6ef;
	B = 16'h7524;
	ans = 16'hef2c;
	#20
	A = 16'h6c71;
	B = 16'h6af0;
	ans = 16'h6fe9;
	#20
	A = 16'hf04c;
	B = 16'hf08f;
	ans = 16'hf46e;
	#20
	A = 16'hf681;
	B = 16'hf5df;
	ans = 16'hfa30;
	#20
	A = 16'hf11d;
	B = 16'h75df;
	ans = 16'h72a1;
	#20
	A = 16'hf309;
	B = 16'hf5a4;
	ans = 16'hf894;
	#20
	A = 16'hf18e;
	B = 16'hefa6;
	ans = 16'hf4b0;
	#20
	A = 16'h7229;
	B = 16'h6be3;
	ans = 16'h7411;
	#20
	A = 16'h76d5;
	B = 16'hf6fe;
	ans = 16'he120;
	#20
	A = 16'hef1c;
	B = 16'h6c28;
	ans = 16'he9e8;
	#20
	A = 16'h734c;
	B = 16'he6c5;
	ans = 16'h7273;
	#20
	A = 16'hf5d3;
	B = 16'hf4fe;
	ans = 16'hf968;
	#20
	A = 16'hf2f1;
	B = 16'h7478;
	ans = 16'h6bfc;
	#20
	A = 16'h7690;
	B = 16'h72b4;
	ans = 16'h78f5;
	#20
	A = 16'h76ca;
	B = 16'hf096;
	ans = 16'h747f;
	#20
	A = 16'h76f6;
	B = 16'h6afe;
	ans = 16'h77d6;
	#20
	A = 16'h6c4d;
	B = 16'h7664;
	ans = 16'h7777;
	#20
	A = 16'hf083;
	B = 16'he64a;
	ans = 16'hf14c;
	#20
	A = 16'hf617;
	B = 16'h70aa;
	ans = 16'hf384;
	#20
	A = 16'h6a3c;
	B = 16'hf6fd;
	ans = 16'hf636;
	#20
	A = 16'h76d9;
	B = 16'hf03b;
	ans = 16'h74bc;
	#20
	A = 16'hf1dd;
	B = 16'hf54d;
	ans = 16'hf81e;
	#20
	A = 16'h7303;
	B = 16'hee62;
	ans = 16'h6fa4;
	#20
	A = 16'hef5e;
	B = 16'hefe4;
	ans = 16'hf3a1;
	#20
	A = 16'h634b;
	B = 16'hf753;
	ans = 16'hf719;
	#20
	A = 16'hf25d;
	B = 16'h7261;
	ans = 16'h5000;
	#20
	A = 16'h7427;
	B = 16'h7502;
	ans = 16'h7894;
	#20
	A = 16'h72ea;
	B = 16'hf58f;
	ans = 16'hf034;
	#20
	A = 16'h7728;
	B = 16'h6c51;
	ans = 16'h781e;
	#20
	A = 16'hf73b;
	B = 16'h75f8;
	ans = 16'hed0c;
	#20
	A = 16'hf50d;
	B = 16'hf446;
	ans = 16'hf8aa;
	#20
	A = 16'h770d;
	B = 16'h7724;
	ans = 16'h7b18;
	#20
	A = 16'heca8;
	B = 16'hefdf;
	ans = 16'hf244;
	#20
	A = 16'h7369;
	B = 16'h75db;
	ans = 16'h78c8;
	#20
	A = 16'he688;
	B = 16'h668f;
	ans = 16'h4700;
	#20
	A = 16'h75f2;
	B = 16'hec6a;
	ans = 16'h74d8;
	#20
	A = 16'h7432;
	B = 16'h7451;
	ans = 16'h7842;
	#20
	A = 16'hf520;
	B = 16'hf4c6;
	ans = 16'hf8f3;
	#20
	A = 16'hf2dc;
	B = 16'h7647;
	ans = 16'h71b2;
	#20
	A = 16'h7120;
	B = 16'h742d;
	ans = 16'h76bd;
	#20
	A = 16'hf50d;
	B = 16'hf14a;
	ans = 16'hf7b2;
	#20
	A = 16'h7530;
	B = 16'heee9;
	ans = 16'h72ec;
	#20
	A = 16'heef7;
	B = 16'hf0c7;
	ans = 16'hf421;
	#20
	A = 16'hf6e9;
	B = 16'h7442;
	ans = 16'hf14e;
	#20
	A = 16'heade;
	B = 16'hf24c;
	ans = 16'hf402;
	#20
	A = 16'h75ce;
	B = 16'h751f;
	ans = 16'h7976;
	#20
	A = 16'hf4c6;
	B = 16'h7562;
	ans = 16'h68e0;
	#20
	A = 16'h6872;
	B = 16'h6d72;
	ans = 16'h6fab;
	#20
	A = 16'h713b;
	B = 16'hef31;
	ans = 16'h6a8a;
	#20
	A = 16'h76c3;
	B = 16'h7151;
	ans = 16'h78b6;
	#20
	A = 16'he625;
	B = 16'h7717;
	ans = 16'h76b5;
	#20
	A = 16'hf01e;
	B = 16'h76eb;
	ans = 16'h74dc;
	#20
	A = 16'h75bd;
	B = 16'h7577;
	ans = 16'h799a;
	#20
	A = 16'h7384;
	B = 16'h69f6;
	ans = 16'h7481;
	#20
	A = 16'h76f5;
	B = 16'hf037;
	ans = 16'h74da;
	#20
	A = 16'h6dbd;
	B = 16'hf27c;
	ans = 16'hef3b;
	#20
	A = 16'hf4d7;
	B = 16'h6548;
	ans = 16'hf482;
	#20
	A = 16'h7690;
	B = 16'h6f0f;
	ans = 16'h782a;
	#20
	A = 16'hf61d;
	B = 16'h761b;
	ans = 16'hd000;
	#20
	A = 16'hf663;
	B = 16'hf70a;
	ans = 16'hfab6;
	#20
	A = 16'hf642;
	B = 16'he590;
	ans = 16'hf69b;
	#20
	A = 16'h7648;
	B = 16'h76cf;
	ans = 16'h7a8c;
	#20
	A = 16'hf6ad;
	B = 16'h70a7;
	ans = 16'hf45a;
	#20
	A = 16'hf59c;
	B = 16'hf722;
	ans = 16'hfa5f;
	#20
	A = 16'hf440;
	B = 16'h7510;
	ans = 16'h6a80;
	#20
	A = 16'h7090;
	B = 16'hea85;
	ans = 16'h6dde;
	#20
	A = 16'h74b2;
	B = 16'hf193;
	ans = 16'h6fa2;
	#20
	A = 16'hf550;
	B = 16'h7532;
	ans = 16'hdf80;
	#20
	A = 16'hf0b9;
	B = 16'he43c;
	ans = 16'hf140;
	#20
	A = 16'h70f2;
	B = 16'hf6d3;
	ans = 16'hf45a;
	#20
	A = 16'h76be;
	B = 16'h6c39;
	ans = 16'h77cc;
	#20
	A = 16'h6586;
	B = 16'hf5aa;
	ans = 16'hf552;
	#20
	A = 16'h7611;
	B = 16'hf689;
	ans = 16'he780;
	#20
	A = 16'h75b1;
	B = 16'hf2f7;
	ans = 16'h706b;
	#20
	A = 16'hf622;
	B = 16'hf1e0;
	ans = 16'hf889;
	#20
	A = 16'he6d6;
	B = 16'h6fa6;
	ans = 16'h6df0;
	#20
	A = 16'hec60;
	B = 16'h6e50;
	ans = 16'h67c0;
	#20
	A = 16'hf71b;
	B = 16'h6d7a;
	ans = 16'hf5bc;
	#20
	A = 16'hec48;
	B = 16'h745f;
	ans = 16'h729a;
	#20
	A = 16'h6e58;
	B = 16'h6592;
	ans = 16'h6fbc;
	#20
	A = 16'h76c4;
	B = 16'h748b;
	ans = 16'h79a8;
	#20
	A = 16'h7237;
	B = 16'he9c5;
	ans = 16'h70c6;
	#20
	A = 16'h7616;
	B = 16'h6b4a;
	ans = 16'h76ff;
	#20
	A = 16'h6da5;
	B = 16'he33e;
	ans = 16'h6cbd;
	#20
	A = 16'hf6bb;
	B = 16'h7731;
	ans = 16'h6760;
	#20
	A = 16'hec3b;
	B = 16'hf5ae;
	ans = 16'hf6bd;
	#20
	A = 16'he63c;
	B = 16'h74e6;
	ans = 16'h7482;
	#20
	A = 16'h704a;
	B = 16'h75a4;
	ans = 16'h77c9;
	#20
	A = 16'h74f3;
	B = 16'he8d0;
	ans = 16'h7459;
	#20
	A = 16'he320;
	B = 16'h6f73;
	ans = 16'h6e8f;
	#20
	A = 16'h7362;
	B = 16'h7725;
	ans = 16'h796b;
	#20
	A = 16'hf4d9;
	B = 16'h715a;
	ans = 16'hf058;
	#20
	A = 16'hf5e8;
	B = 16'hf415;
	ans = 16'hf8fe;
	#20
	A = 16'hf52f;
	B = 16'h6e27;
	ans = 16'hf34a;
	#20
	A = 16'h54b0;
	B = 16'h72f3;
	ans = 16'h72fc;
	#20
	A = 16'hf33c;
	B = 16'hf5dd;
	ans = 16'hf8be;
	#20
	A = 16'h748f;
	B = 16'h76fb;
	ans = 16'h79c5;
	#20
	A = 16'h6e62;
	B = 16'hf5a3;
	ans = 16'hf40a;
	#20
	A = 16'h7465;
	B = 16'h7607;
	ans = 16'h7936;
	#20
	A = 16'hf517;
	B = 16'h6fc4;
	ans = 16'hf24c;
	#20
	A = 16'h6800;
	B = 16'hf12f;
	ans = 16'hf02f;
	#20
	A = 16'h7086;
	B = 16'hf29f;
	ans = 16'hec32;
	#20
	A = 16'hf195;
	B = 16'hf571;
	ans = 16'hf81e;
	#20
	A = 16'h6638;
	B = 16'h7639;
	ans = 16'h769c;
	#20
	A = 16'hf024;
	B = 16'hf6e0;
	ans = 16'hf879;
	#20
	A = 16'h682c;
	B = 16'hf555;
	ans = 16'hf4d0;
	#20
	A = 16'he854;
	B = 16'h5419;
	ans = 16'he833;
	#20
	A = 16'h7292;
	B = 16'hf707;
	ans = 16'hf37c;
	#20
	A = 16'hf213;
	B = 16'hf480;
	ans = 16'hf78a;
	#20
	A = 16'hf5f4;
	B = 16'hf228;
	ans = 16'hf884;
	#20
	A = 16'h7526;
	B = 16'he82c;
	ans = 16'h74a0;
	#20
	A = 16'h752a;
	B = 16'h75c7;
	ans = 16'h7978;
	#20
	A = 16'h74f1;
	B = 16'h6cc8;
	ans = 16'h7623;
	#20
	A = 16'h757d;
	B = 16'h734d;
	ans = 16'h7892;
	#20
	A = 16'hf5bb;
	B = 16'hf695;
	ans = 16'hfa28;
	#20
	A = 16'hebb5;
	B = 16'hf640;
	ans = 16'hf737;
	#20
	A = 16'hf648;
	B = 16'h757d;
	ans = 16'hea58;
	#20
	A = 16'h7521;
	B = 16'h7440;
	ans = 16'h78b0;
	#20
	A = 16'hf4e7;
	B = 16'hefde;
	ans = 16'hf6de;
	#20
	A = 16'hf638;
	B = 16'h7008;
	ans = 16'hf434;
	#20
	A = 16'he8c4;
	B = 16'hf176;
	ans = 16'hf2a7;
	#20
	A = 16'h7406;
	B = 16'h6589;
	ans = 16'h745f;
	#20
	A = 16'h7718;
	B = 16'h72e9;
	ans = 16'h7946;
	#20
	A = 16'hf73d;
	B = 16'h6c09;
	ans = 16'hf63b;
	#20
	A = 16'h6e34;
	B = 16'hf594;
	ans = 16'hf407;
	#20
	A = 16'h750b;
	B = 16'hf751;
	ans = 16'hf08c;
	#20
	A = 16'hf670;
	B = 16'h6c71;
	ans = 16'hf554;
	#20
	A = 16'hf5ec;
	B = 16'hf33e;
	ans = 16'hf8c6;
	#20
	A = 16'h7682;
	B = 16'h689b;
	ans = 16'h7715;
	#20
	A = 16'h7657;
	B = 16'h66be;
	ans = 16'h76c3;
	#20
	A = 16'h74a1;
	B = 16'h6ffa;
	ans = 16'h76a0;
	#20
	A = 16'h7594;
	B = 16'h76a5;
	ans = 16'h7a1c;
	#20
	A = 16'hf45e;
	B = 16'h7374;
	ans = 16'he920;
	#20
	A = 16'heded;
	B = 16'h7192;
	ans = 16'h6d37;
	#20
	A = 16'h74c0;
	B = 16'h6d7c;
	ans = 16'h761f;
	#20
	A = 16'h759d;
	B = 16'h759a;
	ans = 16'h799c;
	#20
	A = 16'hed3a;
	B = 16'hf242;
	ans = 16'hf470;
	#20
	A = 16'h76c0;
	B = 16'hf374;
	ans = 16'h720c;
	#20
	A = 16'h697d;
	B = 16'hf0f6;
	ans = 16'hef2e;
	#20
	A = 16'hf4d0;
	B = 16'hf4df;
	ans = 16'hf8d8;
	#20
	A = 16'he9e3;
	B = 16'hf047;
	ans = 16'hf1c0;
	#20
	A = 16'h7726;
	B = 16'h7415;
	ans = 16'h799e;
	#20
	A = 16'hf1f4;
	B = 16'h6d60;
	ans = 16'hee88;
	#20
	A = 16'h761c;
	B = 16'hf5c0;
	ans = 16'h65c0;
	#20
	A = 16'hf68c;
	B = 16'hf4a6;
	ans = 16'hf999;
	#20
	A = 16'hf074;
	B = 16'h70bf;
	ans = 16'h60b0;
	#20
	A = 16'h7163;
	B = 16'h765a;
	ans = 16'h7886;
	#20
	A = 16'h679d;
	B = 16'hf6e2;
	ans = 16'hf668;
	#20
	A = 16'h7543;
	B = 16'hf6f9;
	ans = 16'heed8;
	#20
	A = 16'h74a7;
	B = 16'hf2de;
	ans = 16'h6ce0;
	#20
	A = 16'hf108;
	B = 16'h7366;
	ans = 16'h6cbc;
	#20
	A = 16'h746e;
	B = 16'he1ff;
	ans = 16'h743e;
	#20
	A = 16'h6e60;
	B = 16'h716a;
	ans = 16'h744d;
	#20
	A = 16'he98a;
	B = 16'hefc4;
	ans = 16'hf144;
	#20
	A = 16'hef91;
	B = 16'hf6b7;
	ans = 16'hf84e;
	#20
	A = 16'hee20;
	B = 16'hf6a5;
	ans = 16'hf816;
	#20
	A = 16'h71f4;
	B = 16'hf5d0;
	ans = 16'hf1ac;
	#20
	A = 16'h73e6;
	B = 16'h7524;
	ans = 16'h788c;
	#20
	A = 16'h7646;
	B = 16'h70a2;
	ans = 16'h784c;
	#20
	A = 16'hf64c;
	B = 16'he919;
	ans = 16'hf6ef;
	#20
	A = 16'h7623;
	B = 16'h6c2e;
	ans = 16'h772e;
	#20
	A = 16'hf5af;
	B = 16'h743f;
	ans = 16'hedc0;
	#20
	A = 16'h7065;
	B = 16'h74ce;
	ans = 16'h7700;
	#20
	A = 16'h749a;
	B = 16'h7665;
	ans = 16'h7980;
	#20
	A = 16'hf3ad;
	B = 16'h6f69;
	ans = 16'heff1;
	#20
	A = 16'hf267;
	B = 16'h7066;
	ans = 16'hec02;
	#20
	A = 16'h7223;
	B = 16'h6713;
	ans = 16'h7305;
	#20
	A = 16'h7086;
	B = 16'hf3f2;
	ans = 16'heed8;
	#20
	A = 16'hf65e;
	B = 16'h7551;
	ans = 16'hec34;
	#20
	A = 16'hf550;
	B = 16'h7523;
	ans = 16'he1a0;
	#20
	A = 16'h74c9;
	B = 16'hf1ff;
	ans = 16'h6f26;
	#20
	A = 16'hedd9;
	B = 16'hf6db;
	ans = 16'hf829;
	#20
	A = 16'h76f6;
	B = 16'he312;
	ans = 16'h76bd;
	#20
	A = 16'hf6ff;
	B = 16'heb80;
	ans = 16'hf7ef;
	#20
	A = 16'hf65a;
	B = 16'h7669;
	ans = 16'h5b80;
	#20
	A = 16'hf69f;
	B = 16'h771f;
	ans = 16'h6800;
	#20
	A = 16'h64c2;
	B = 16'hee63;
	ans = 16'hed32;
	#20
	A = 16'h724c;
	B = 16'h7706;
	ans = 16'h7916;
	#20
	A = 16'h6c38;
	B = 16'h7531;
	ans = 16'h763f;
	#20
	A = 16'hf167;
	B = 16'hf148;
	ans = 16'hf558;
	#20
	A = 16'h7665;
	B = 16'hf1c9;
	ans = 16'h7301;
	#20
	A = 16'h7576;
	B = 16'h7472;
	ans = 16'h78f4;
	#20
	A = 16'h733b;
	B = 16'hf675;
	ans = 16'hf1af;
	#20
	A = 16'h774f;
	B = 16'h731f;
	ans = 16'h796f;
	#20
	A = 16'hf0a1;
	B = 16'he478;
	ans = 16'hf130;
	#20
	A = 16'h7657;
	B = 16'hf108;
	ans = 16'h73a6;
	#20
	A = 16'h7320;
	B = 16'hf508;
	ans = 16'hede0;
	#20
	A = 16'hf52b;
	B = 16'h6a22;
	ans = 16'hf467;
	#20
	A = 16'h68b3;
	B = 16'hefb3;
	ans = 16'hed5a;
	#20
	A = 16'hf71a;
	B = 16'h755f;
	ans = 16'heeec;
	#20
	A = 16'h72d8;
	B = 16'h763d;
	ans = 16'h78d4;
	#20
	A = 16'hf46f;
	B = 16'hf22c;
	ans = 16'hf785;
	#20
	A = 16'h7478;
	B = 16'hf5b2;
	ans = 16'hece8;
	#20
	A = 16'hf625;
	B = 16'h6d3d;
	ans = 16'hf4d6;
	#20
	A = 16'h771e;
	B = 16'h7213;
	ans = 16'h7914;
	#20
	A = 16'h75b5;
	B = 16'hf4f4;
	ans = 16'h6a08;
	#20
	A = 16'h76bd;
	B = 16'h6c8b;
	ans = 16'h77e0;
	#20
	A = 16'hee71;
	B = 16'h6c7f;
	ans = 16'he7c8;
	#20
	A = 16'he7ff;
	B = 16'h76bc;
	ans = 16'h763c;
	#20
	A = 16'hf736;
	B = 16'hf4f4;
	ans = 16'hfa15;
	#20
	A = 16'h7327;
	B = 16'he97b;
	ans = 16'h71c8;
	#20
	A = 16'h6da0;
	B = 16'hf633;
	ans = 16'hf4cb;
	#20
	A = 16'h73f2;
	B = 16'hf5bc;
	ans = 16'hef0c;
	#20
	A = 16'hf184;
	B = 16'hef7d;
	ans = 16'hf4a1;
	#20
	A = 16'h6b36;
	B = 16'h7700;
	ans = 16'h77e7;
	#20
	A = 16'hedf0;
	B = 16'hf561;
	ans = 16'hf6dd;
	#20
	A = 16'hf4c2;
	B = 16'h7676;
	ans = 16'h6ed0;
	#20
	A = 16'hf435;
	B = 16'he9bd;
	ans = 16'hf4ed;
	#20
	A = 16'hec1a;
	B = 16'heb1a;
	ans = 16'hefa7;
	#20
	A = 16'h74ba;
	B = 16'hed8e;
	ans = 16'h72ad;
	#20
	A = 16'hf408;
	B = 16'h6f89;
	ans = 16'hf04c;
	#20
	A = 16'h72dc;
	B = 16'hf736;
	ans = 16'hf390;
	#20
	A = 16'h7092;
	B = 16'hf519;
	ans = 16'hf1a0;
	#20
	A = 16'hef79;
	B = 16'h7669;
	ans = 16'h748b;
	#20
	A = 16'hf343;
	B = 16'h633d;
	ans = 16'hf2cf;
	#20
	A = 16'h741a;
	B = 16'h74a4;
	ans = 16'h785f;
	#20
	A = 16'h71aa;
	B = 16'he13c;
	ans = 16'h7156;
	#20
	A = 16'h6abe;
	B = 16'hf29c;
	ans = 16'hf0ec;
	#20
	A = 16'hf006;
	B = 16'hf38b;
	ans = 16'hf5c8;
	#20
	A = 16'h67e2;
	B = 16'h74a8;
	ans = 16'h7526;
	#20
	A = 16'h7646;
	B = 16'hee24;
	ans = 16'h74bd;
	#20
	A = 16'h7560;
	B = 16'h7568;
	ans = 16'h7964;
	#20
	A = 16'hf563;
	B = 16'hf526;
	ans = 16'hf944;
	#20
	A = 16'he1ae;
	B = 16'h75dd;
	ans = 16'h75b0;
	#20
	A = 16'hed99;
	B = 16'hf733;
	ans = 16'hf84d;
	#20
	A = 16'heee9;
	B = 16'h74d3;
	ans = 16'h7232;
	#20
	A = 16'hf44e;
	B = 16'h7328;
	ans = 16'he9d0;
	#20
	A = 16'h61a5;
	B = 16'h5bee;
	ans = 16'h63a0;
	#20
	A = 16'hf58e;
	B = 16'hf6e0;
	ans = 16'hfa37;
	#20
	A = 16'hf5cf;
	B = 16'hf1a7;
	ans = 16'hf851;
	#20
	A = 16'h73c9;
	B = 16'hf271;
	ans = 16'h6960;
	#20
	A = 16'h7567;
	B = 16'h761f;
	ans = 16'h79c3;
	#20
	A = 16'hf2c8;
	B = 16'h76e1;
	ans = 16'h72fa;
	#20
	A = 16'hefc6;
	B = 16'h7336;
	ans = 16'h6ea6;
	#20
	A = 16'h72d0;
	B = 16'h7543;
	ans = 16'h7856;
	#20
	A = 16'hf70b;
	B = 16'hf277;
	ans = 16'hf923;
	#20
	A = 16'h719e;
	B = 16'hecc0;
	ans = 16'h6e7c;
	#20
	A = 16'hf5d6;
	B = 16'h7598;
	ans = 16'he3c0;
	#20
	A = 16'h6e57;
	B = 16'hf3c8;
	ans = 16'hf09c;
	#20
	A = 16'h73f3;
	B = 16'h6dcc;
	ans = 16'h756c;
	#20
	A = 16'he8d9;
	B = 16'h70e4;
	ans = 16'h6f5c;
	#20
	A = 16'hea6d;
	B = 16'hf4c0;
	ans = 16'hf58e;
	#20
	A = 16'h7259;
	B = 16'h7511;
	ans = 16'h781f;
	#20
	A = 16'hf2c5;
	B = 16'hf665;
	ans = 16'hf8e4;
	#20
	A = 16'h752e;
	B = 16'hebee;
	ans = 16'h7430;
	#20
	A = 16'hf6fb;
	B = 16'hf563;
	ans = 16'hfa2f;
	#20
	A = 16'h7235;
	B = 16'hf43d;
	ans = 16'hec8a;
	#20
	A = 16'h760d;
	B = 16'h76f6;
	ans = 16'h7a82;
	#20
	A = 16'h726d;
	B = 16'h6b5e;
	ans = 16'h7422;
	#20
	A = 16'h75cb;
	B = 16'h763e;
	ans = 16'h7a04;
	#20
	A = 16'h7512;
	B = 16'h7505;
	ans = 16'h790c;
	#20
	A = 16'h717e;
	B = 16'hf128;
	ans = 16'h6160;
	#20
	A = 16'hea3e;
	B = 16'h75fd;
	ans = 16'h7535;
	#20
	A = 16'h76a5;
	B = 16'hecca;
	ans = 16'h7572;
	#20
	A = 16'hf5dc;
	B = 16'hf1bb;
	ans = 16'hf85d;
	#20
	A = 16'h758e;
	B = 16'hf35f;
	ans = 16'h6f7a;
	#20
	A = 16'h6cbc;
	B = 16'he520;
	ans = 16'h6ae8;
	#20
	A = 16'h6590;
	B = 16'heed8;
	ans = 16'hed74;
	#20
	A = 16'h707c;
	B = 16'hf19e;
	ans = 16'he888;
	#20
	A = 16'h6f90;
	B = 16'heb11;
	ans = 16'h6c08;
	#20
	A = 16'hf660;
	B = 16'h72a2;
	ans = 16'hf21e;
	#20
	A = 16'heb19;
	B = 16'h5db7;
	ans = 16'hea62;
	#20
	A = 16'h754a;
	B = 16'h758d;
	ans = 16'h796c;
	#20
	A = 16'h64fd;
	B = 16'h7734;
	ans = 16'h7784;
	#20
	A = 16'hf01b;
	B = 16'hf1c0;
	ans = 16'hf4ee;
	#20
	A = 16'h7251;
	B = 16'hf730;
	ans = 16'hf408;
	#20
	A = 16'hf444;
	B = 16'h761c;
	ans = 16'h6f60;
	#20
	A = 16'h760f;
	B = 16'hf4e9;
	ans = 16'h6c98;
	#20
	A = 16'h6e1f;
	B = 16'hf02f;
	ans = 16'he87e;
	#20
	A = 16'hf360;
	B = 16'he901;
	ans = 16'hf450;
	#20
	A = 16'h6b5f;
	B = 16'h6f3c;
	ans = 16'h7176;
	#20
	A = 16'hf664;
	B = 16'h76b0;
	ans = 16'h64c0;
	#20
	A = 16'h7508;
	B = 16'hf55c;
	ans = 16'he540;
	#20
	A = 16'hf0eb;
	B = 16'hef47;
	ans = 16'hf447;
	#20
	A = 16'h7700;
	B = 16'h7415;
	ans = 16'h798a;
	#20
	A = 16'he766;
	B = 16'hf6da;
	ans = 16'hf750;
	#20
	A = 16'hf72e;
	B = 16'h76d5;
	ans = 16'he590;
	#20
	A = 16'hf465;
	B = 16'h76fa;
	ans = 16'h712a;
	#20
	A = 16'h7678;
	B = 16'he57f;
	ans = 16'h7620;
	#20
	A = 16'h71a7;
	B = 16'hf71d;
	ans = 16'hf44a;
	#20
	A = 16'h771f;
	B = 16'h7191;
	ans = 16'h78f4;
	#20
	A = 16'he577;
	B = 16'h61ec;
	ans = 16'he102;
	#20
	A = 16'h7384;
	B = 16'h6b78;
	ans = 16'h74b1;
	#20
	A = 16'hf32f;
	B = 16'h75ae;
	ans = 16'h702d;
	#20
	A = 16'hf07b;
	B = 16'hf33e;
	ans = 16'hf5dc;
	#20
	A = 16'h6b01;
	B = 16'hf458;
	ans = 16'hf2f0;
	#20
	A = 16'h73b9;
	B = 16'h75c8;
	ans = 16'h78d2;
	#20
	A = 16'h7700;
	B = 16'hf69b;
	ans = 16'h6650;
	#20
	A = 16'h749d;
	B = 16'h75ed;
	ans = 16'h7945;
	#20
	A = 16'h707a;
	B = 16'hf596;
	ans = 16'hf2b2;
	#20
	A = 16'hf4b0;
	B = 16'h750e;
	ans = 16'h65e0;
	#20
	A = 16'h75a6;
	B = 16'h6841;
	ans = 16'h762e;
	#20
	A = 16'h5c23;
	B = 16'h710f;
	ans = 16'h7130;
	#20
	A = 16'h759a;
	B = 16'hef8b;
	ans = 16'h736e;
	#20
	A = 16'h72ce;
	B = 16'h70c0;
	ans = 16'h75c7;
	#20
	A = 16'hf111;
	B = 16'h6d14;
	ans = 16'hed0e;
	#20
	A = 16'hf48e;
	B = 16'h7193;
	ans = 16'hef12;
	#20
	A = 16'hf15f;
	B = 16'hf246;
	ans = 16'hf5d2;
	#20
	A = 16'hf197;
	B = 16'h737e;
	ans = 16'h6b9c;
	#20
	A = 16'hf372;
	B = 16'h7574;
	ans = 16'h6eec;
	#20
	A = 16'h76c7;
	B = 16'h75bd;
	ans = 16'h7a42;
	#20
	A = 16'hf40e;
	B = 16'hf44f;
	ans = 16'hf82e;
	#20
	A = 16'hf388;
	B = 16'h768d;
	ans = 16'h7192;
	#20
	A = 16'h6e95;
	B = 16'hf567;
	ans = 16'hf384;
	#20
	A = 16'he6d8;
	B = 16'hf0f6;
	ans = 16'hf1d1;
	#20
	A = 16'hecc4;
	B = 16'h6448;
	ans = 16'heb64;
	#20
	A = 16'hf186;
	B = 16'hf40d;
	ans = 16'hf6d0;
	#20
	A = 16'h72b8;
	B = 16'hf748;
	ans = 16'hf3d8;
	#20
	A = 16'h7714;
	B = 16'h55ea;
	ans = 16'h771a;
	#20
	A = 16'h620e;
	B = 16'h739b;
	ans = 16'h73fc;
	#20
	A = 16'hf60b;
	B = 16'hf2e3;
	ans = 16'hf8be;
	#20
	A = 16'h71c5;
	B = 16'h68bd;
	ans = 16'h72f4;
	#20
	A = 16'h6dd7;
	B = 16'h6e99;
	ans = 16'h7238;
	#20
	A = 16'hf242;
	B = 16'heb8b;
	ans = 16'hf412;
	#20
	A = 16'hf552;
	B = 16'h7073;
	ans = 16'hf231;
	#20
	A = 16'hf486;
	B = 16'hf47f;
	ans = 16'hf882;
	#20
	A = 16'h7494;
	B = 16'h60ce;
	ans = 16'h74ba;
	#20
	A = 16'h7058;
	B = 16'hf6eb;
	ans = 16'hf4bf;
	#20
	A = 16'hf317;
	B = 16'h7234;
	ans = 16'he718;
	#20
	A = 16'h6bfc;
	B = 16'hf615;
	ans = 16'hf516;
	#20
	A = 16'hef72;
	B = 16'h652c;
	ans = 16'hee27;
	#20
	A = 16'h6e4e;
	B = 16'h73c4;
	ans = 16'h7576;
	#20
	A = 16'h76f7;
	B = 16'h76c6;
	ans = 16'h7ade;
	#20
	A = 16'he191;
	B = 16'hf726;
	ans = 16'hf753;
	#20
	A = 16'hf476;
	B = 16'h7558;
	ans = 16'h6b10;
	#20
	A = 16'hf0bf;
	B = 16'h7462;
	ans = 16'h7005;
	#20
	A = 16'h75aa;
	B = 16'h69ea;
	ans = 16'h7667;
	#20
	A = 16'hf371;
	B = 16'hf1e2;
	ans = 16'hf6aa;
	#20
	A = 16'hf4fd;
	B = 16'hf601;
	ans = 16'hf97f;
	#20
	A = 16'h765a;
	B = 16'hf663;
	ans = 16'hd880;
	#20
	A = 16'hf404;
	B = 16'h6639;
	ans = 16'hf341;
	#20
	A = 16'hf537;
	B = 16'hf6ac;
	ans = 16'hf9f2;
	#20
	A = 16'hf46b;
	B = 16'h7621;
	ans = 16'h6ed8;
	#20
	A = 16'hf443;
	B = 16'hf11e;
	ans = 16'hf6d2;
	#20
	A = 16'h76a8;
	B = 16'h71bb;
	ans = 16'h78c3;
	#20
	A = 16'h6116;
	B = 16'h72d7;
	ans = 16'h7328;
	#20
	A = 16'h7015;
	B = 16'h75ad;
	ans = 16'h77b8;
	#20
	A = 16'h7032;
	B = 16'h774d;
	ans = 16'h78b3;
	#20
	A = 16'hf43a;
	B = 16'h7099;
	ans = 16'hefb6;
	#20
	A = 16'hf22f;
	B = 16'hf706;
	ans = 16'hf90f;
	#20
	A = 16'hf3ae;
	B = 16'hf079;
	ans = 16'hf614;
	#20
	A = 16'hf16f;
	B = 16'h709b;
	ans = 16'he6a0;
	#20
	A = 16'hf652;
	B = 16'h6622;
	ans = 16'hf5f0;
	#20
	A = 16'h71b1;
	B = 16'heeb5;
	ans = 16'h6cad;
	#20
	A = 16'hf223;
	B = 16'h76e7;
	ans = 16'h73ab;
	#20
	A = 16'hf63c;
	B = 16'h7202;
	ans = 16'hf276;
	#20
	A = 16'h7230;
	B = 16'hf154;
	ans = 16'h66e0;
	#20
	A = 16'he1cd;
	B = 16'h7683;
	ans = 16'h7655;
	#20
	A = 16'hf42b;
	B = 16'hf075;
	ans = 16'hf666;
	#20
	A = 16'h7099;
	B = 16'hf357;
	ans = 16'hed7c;
	#20
	A = 16'h74fb;
	B = 16'h6d1e;
	ans = 16'h7642;
	#20
	A = 16'h68d9;
	B = 16'h76b5;
	ans = 16'h7750;
	#20
	A = 16'h711f;
	B = 16'hf523;
	ans = 16'hf127;
	#20
	A = 16'hf156;
	B = 16'h714c;
	ans = 16'hd500;
	#20
	A = 16'he5bc;
	B = 16'h7563;
	ans = 16'h7507;
	#20
	A = 16'heff6;
	B = 16'he986;
	ans = 16'hf15c;
	#20
	A = 16'h6c38;
	B = 16'h75b0;
	ans = 16'h76be;
	#20
	A = 16'h75c4;
	B = 16'h749c;
	ans = 16'h7930;
	#20
	A = 16'h769a;
	B = 16'h7591;
	ans = 16'h7a16;
	#20
	A = 16'h7318;
	B = 16'h6ce8;
	ans = 16'h74c6;
	#20
	A = 16'hf4d3;
	B = 16'h7411;
	ans = 16'hea10;
	#20
	A = 16'h6903;
	B = 16'heecd;
	ans = 16'hec4c;
	#20
	A = 16'hf6dd;
	B = 16'h733e;
	ans = 16'hf27c;
	#20
	A = 16'h6f57;
	B = 16'h6e2a;
	ans = 16'h72c0;
	#20
	A = 16'h7271;
	B = 16'h772e;
	ans = 16'h7933;
	#20
	A = 16'hf6f4;
	B = 16'hf3c9;
	ans = 16'hf96c;
	#20
	A = 16'h6ad5;
	B = 16'h72ca;
	ans = 16'h7440;
	#20
	A = 16'h7414;
	B = 16'h72df;
	ans = 16'h7784;
	#20
	A = 16'h7640;
	B = 16'h7059;
	ans = 16'h7836;
	#20
	A = 16'h7684;
	B = 16'hef34;
	ans = 16'h74b7;
	#20
	A = 16'h71a7;
	B = 16'hf0e5;
	ans = 16'h6610;
	#20
	A = 16'h6f83;
	B = 16'hf4b9;
	ans = 16'hf1b0;
	#20
	A = 16'hf552;
	B = 16'hefbe;
	ans = 16'hf742;
	#20
	A = 16'hf6b1;
	B = 16'h5b30;
	ans = 16'hf6a3;
	#20
	A = 16'h71d2;
	B = 16'h705b;
	ans = 16'h7516;
	#20
	A = 16'h65de;
	B = 16'h6c21;
	ans = 16'h6d98;
	#20
	A = 16'h7424;
	B = 16'hf130;
	ans = 16'h6e30;
	#20
	A = 16'h6da2;
	B = 16'hf627;
	ans = 16'hf4be;
	#20
	A = 16'hf210;
	B = 16'he3d6;
	ans = 16'hf28d;
	#20
	A = 16'hf57d;
	B = 16'hf217;
	ans = 16'hf844;
	#20
	A = 16'hed64;
	B = 16'h70c5;
	ans = 16'h6c26;
	#20
	A = 16'hf428;
	B = 16'h697f;
	ans = 16'hf2f0;
	#20
	A = 16'h6ae6;
	B = 16'hf572;
	ans = 16'hf495;
	#20
	A = 16'hf3c6;
	B = 16'hf4b6;
	ans = 16'hf84c;
	#20
	A = 16'h73be;
	B = 16'heee5;
	ans = 16'h704c;
	#20
	A = 16'hf15f;
	B = 16'hf670;
	ans = 16'hf890;
	#20
	A = 16'hf3b1;
	B = 16'h713d;
	ans = 16'hece8;
	#20
	A = 16'hf6af;
	B = 16'hf007;
	ans = 16'hf859;
	#20
	A = 16'hf541;
	B = 16'h7699;
	ans = 16'h6d60;
	#20
	A = 16'h7056;
	B = 16'h75fd;
	ans = 16'h7814;
	#20
	A = 16'h6cdf;
	B = 16'h7067;
	ans = 16'h72d6;
	#20
	A = 16'hf4ef;
	B = 16'hf747;
	ans = 16'hfa1b;
	#20
	A = 16'h6e6c;
	B = 16'hf0fe;
	ans = 16'heb20;
	#20
	A = 16'h752c;
	B = 16'h75d7;
	ans = 16'h7982;
	#20
	A = 16'h6f55;
	B = 16'hf747;
	ans = 16'hf572;
	#20
	A = 16'h7357;
	B = 16'h74fe;
	ans = 16'h7855;
	#20
	A = 16'hf54e;
	B = 16'he918;
	ans = 16'hf5f1;
	#20
	A = 16'hf599;
	B = 16'he67d;
	ans = 16'hf601;
	#20
	A = 16'h7204;
	B = 16'hf114;
	ans = 16'h6780;
	#20
	A = 16'heebe;
	B = 16'h7458;
	ans = 16'h7151;
	#20
	A = 16'h75a3;
	B = 16'h705f;
	ans = 16'h77d2;
	#20
	A = 16'hf417;
	B = 16'h71a6;
	ans = 16'hed10;
	#20
	A = 16'h731f;
	B = 16'h74f7;
	ans = 16'h7843;
	#20
	A = 16'h6ba4;
	B = 16'h76b3;
	ans = 16'h77a8;
	#20
	A = 16'hef04;
	B = 16'h74b9;
	ans = 16'h71f0;
	#20
	A = 16'heee1;
	B = 16'h6d03;
	ans = 16'he778;
	#20
	A = 16'hedb3;
	B = 16'hf642;
	ans = 16'hf7af;
	#20
	A = 16'h76d4;
	B = 16'hf5dc;
	ans = 16'h6bc0;
	#20
	A = 16'hf62c;
	B = 16'h71a1;
	ans = 16'hf2b7;
	#20
	A = 16'h6311;
	B = 16'h74ec;
	ans = 16'h7525;
	#20
	A = 16'hf131;
	B = 16'hf407;
	ans = 16'hf6a0;
	#20
	A = 16'hf199;
	B = 16'hedfc;
	ans = 16'hf44c;
	#20
	A = 16'h75d7;
	B = 16'h74e0;
	ans = 16'h795c;
	#20
	A = 16'hf5af;
	B = 16'h768d;
	ans = 16'h6af0;
	#20
	A = 16'hed8c;
	B = 16'he8b8;
	ans = 16'hefe8;
	#20
	A = 16'hdb80;
	B = 16'h7660;
	ans = 16'h7651;
	#20
	A = 16'hf59b;
	B = 16'h69dc;
	ans = 16'hf4e0;
	#20
	A = 16'hf664;
	B = 16'h62f2;
	ans = 16'hf62c;
	#20
	A = 16'hf5ed;
	B = 16'h7376;
	ans = 16'hf064;
	#20
	A = 16'h6cdd;
	B = 16'h724c;
	ans = 16'h745d;
	#20
	A = 16'h6a5b;
	B = 16'hf40f;
	ans = 16'hf287;
	#20
	A = 16'he836;
	B = 16'h68d8;
	ans = 16'h5d10;
	#20
	A = 16'h7516;
	B = 16'h6d65;
	ans = 16'h766f;
	#20
	A = 16'h742f;
	B = 16'hf67f;
	ans = 16'hf0a0;
	#20
	A = 16'h6681;
	B = 16'h7009;
	ans = 16'h70d9;
	#20
	A = 16'hf2a0;
	B = 16'hf2b6;
	ans = 16'hf6ab;
	#20
	A = 16'h7515;
	B = 16'hf3e7;
	ans = 16'h6c86;
	#20
	A = 16'hf5df;
	B = 16'hf249;
	ans = 16'hf882;
	#20
	A = 16'hf3d1;
	B = 16'hf29a;
	ans = 16'hf736;
	#20
	A = 16'hf645;
	B = 16'h768d;
	ans = 16'h6480;
	#20
	A = 16'h76c2;
	B = 16'h74b1;
	ans = 16'h79ba;
	#20
	A = 16'h7276;
	B = 16'hf1d8;
	ans = 16'h64f0;
	#20
	A = 16'hf472;
	B = 16'h648a;
	ans = 16'hf429;
	#20
	A = 16'hf4a2;
	B = 16'hf0c4;
	ans = 16'hf704;
	#20
	A = 16'hf472;
	B = 16'hf479;
	ans = 16'hf876;
	#20
	A = 16'h6e03;
	B = 16'he979;
	ans = 16'h6a8d;
	#20
	A = 16'h703b;
	B = 16'hedfa;
	ans = 16'h68f8;
	#20
	A = 16'hf58b;
	B = 16'h7723;
	ans = 16'h6e60;
	#20
	A = 16'hf6c4;
	B = 16'h696b;
	ans = 16'hf617;
	#20
	A = 16'h7043;
	B = 16'hecbe;
	ans = 16'h6b90;
	#20
	A = 16'hf6a3;
	B = 16'h703e;
	ans = 16'hf484;
	#20
	A = 16'hf490;
	B = 16'h734f;
	ans = 16'heb44;
	#20
	A = 16'h6f72;
	B = 16'h647c;
	ans = 16'h7048;
	#20
	A = 16'hf371;
	B = 16'h6cd4;
	ans = 16'hf107;
	#20
	A = 16'hf507;
	B = 16'h6ec4;
	ans = 16'hf2ac;
	#20
	A = 16'hf3c5;
	B = 16'h70f1;
	ans = 16'heda8;
	#20
	A = 16'h75fe;
	B = 16'h756f;
	ans = 16'h79b6;
	#20
	A = 16'hf324;
	B = 16'h7288;
	ans = 16'he4e0;
	#20
	A = 16'h74b4;
	B = 16'hf4bd;
	ans = 16'hd880;
	#20
	A = 16'h760c;
	B = 16'hf73b;
	ans = 16'hecbc;
	#20
	A = 16'h71c3;
	B = 16'hf72c;
	ans = 16'hf44a;
	#20
	A = 16'hf51c;
	B = 16'h712c;
	ans = 16'hf10c;
	#20
	A = 16'hf677;
	B = 16'hf41c;
	ans = 16'hf94a;
	#20
	A = 16'h5e0a;
	B = 16'hf334;
	ans = 16'hf304;
	#20
	A = 16'hf1f9;
	B = 16'h744b;
	ans = 16'h6d3a;
	#20
	A = 16'h6aa0;
	B = 16'h58a8;
	ans = 16'h6aea;
	#20
	A = 16'hf4c9;
	B = 16'h6d39;
	ans = 16'hf2f6;
	#20
	A = 16'h643e;
	B = 16'h6dbf;
	ans = 16'h6ece;
	#20
	A = 16'hf6c9;
	B = 16'h6a33;
	ans = 16'hf603;
	#20
	A = 16'h7460;
	B = 16'hf04e;
	ans = 16'h7072;
	#20
	A = 16'hf414;
	B = 16'hf6db;
	ans = 16'hf978;
	#20
	A = 16'hd9ff;
	B = 16'hf5a8;
	ans = 16'hf5b4;
	#20
	A = 16'h6735;
	B = 16'h734f;
	ans = 16'h741b;
	#20
	A = 16'h6b23;
	B = 16'h74ea;
	ans = 16'h75ce;
	#20
	A = 16'h754e;
	B = 16'hf712;
	ans = 16'hef10;
	#20
	A = 16'h6e56;
	B = 16'h76ae;
	ans = 16'h7822;
	#20
	A = 16'hf507;
	B = 16'h72bf;
	ans = 16'hee9e;
	#20
	A = 16'h7449;
	B = 16'hf4b2;
	ans = 16'he690;
	#20
	A = 16'h74e2;
	B = 16'hf5c0;
	ans = 16'heaf0;
	#20
	A = 16'h7727;
	B = 16'hf070;
	ans = 16'h74ef;
	#20
	A = 16'h769b;
	B = 16'hf20b;
	ans = 16'h732b;
	#20
	A = 16'h6b35;
	B = 16'h697e;
	ans = 16'h6e5a;
	#20
	A = 16'hec37;
	B = 16'hf59c;
	ans = 16'hf6aa;
	#20
	A = 16'h724c;
	B = 16'hf5b6;
	ans = 16'hf120;
	#20
	A = 16'h6bd6;
	B = 16'hf633;
	ans = 16'hf538;
	#20
	A = 16'hf567;
	B = 16'h6f75;
	ans = 16'hf314;
	#20
	A = 16'hf173;
	B = 16'h7004;
	ans = 16'he9bc;
	#20
	A = 16'h6d14;
	B = 16'h6da7;
	ans = 16'h715e;
	#20
	A = 16'hf036;
	B = 16'hf31b;
	ans = 16'hf5a8;
	#20
	A = 16'h742e;
	B = 16'hf41b;
	ans = 16'h5cc0;
	#20
	A = 16'h743e;
	B = 16'heee1;
	ans = 16'h710c;
	#20
	A = 16'hdf33;
	B = 16'hf73a;
	ans = 16'hf757;
	#20
	A = 16'hf21d;
	B = 16'h6f7c;
	ans = 16'hecbe;
	#20
	A = 16'h7422;
	B = 16'h7711;
	ans = 16'h799a;
	#20
	A = 16'h6633;
	B = 16'h75ed;
	ans = 16'h7650;
	#20
	A = 16'hea3e;
	B = 16'h7071;
	ans = 16'h6dc3;
	#20
	A = 16'h73c9;
	B = 16'h7144;
	ans = 16'h7686;
	#20
	A = 16'hf4e5;
	B = 16'h7583;
	ans = 16'h68f0;
	#20
	A = 16'hf12c;
	B = 16'hefcf;
	ans = 16'hf48a;
	#20
	A = 16'hf44e;
	B = 16'h7031;
	ans = 16'hf06b;
	#20
	A = 16'heccb;
	B = 16'hefe7;
	ans = 16'hf259;
	#20
	A = 16'hf365;
	B = 16'h6462;
	ans = 16'hf2d9;
	#20
	A = 16'h73dc;
	B = 16'h753b;
	ans = 16'h7894;
	#20
	A = 16'hf2da;
	B = 16'h7460;
	ans = 16'h6b98;
	#20
	A = 16'hf32d;
	B = 16'hf0bd;
	ans = 16'hf5f5;
	#20
	A = 16'h7549;
	B = 16'hf6a2;
	ans = 16'hed64;
	#20
	A = 16'hf448;
	B = 16'hf219;
	ans = 16'hf754;
	#20
	A = 16'h73ab;
	B = 16'hdf31;
	ans = 16'h7371;
	#20
	A = 16'hf14b;
	B = 16'h7086;
	ans = 16'he628;
	#20
	A = 16'hf5b3;
	B = 16'h75d6;
	ans = 16'h6060;
	#20
	A = 16'hf684;
	B = 16'hf56a;
	ans = 16'hf9f7;
	#20
	A = 16'hf685;
	B = 16'h7236;
	ans = 16'hf2d4;
	#20
	A = 16'hf5ea;
	B = 16'hece9;
	ans = 16'hf724;
	#20
	A = 16'h7001;
	B = 16'hec03;
	ans = 16'h6bfe;
	#20
	A = 16'hf702;
	B = 16'hea14;
	ans = 16'hf7c4;
	#20
	A = 16'hf726;
	B = 16'hf682;
	ans = 16'hfad4;
	#20
	A = 16'h75a5;
	B = 16'hf674;
	ans = 16'hea78;
	#20
	A = 16'h61fa;
	B = 16'h70c0;
	ans = 16'h7120;
	#20
	A = 16'heca1;
	B = 16'h74fa;
	ans = 16'h73a4;
	#20
	A = 16'h76c4;
	B = 16'hf1a9;
	ans = 16'h73df;
	#20
	A = 16'hf270;
	B = 16'h70c9;
	ans = 16'hea9c;
	#20
	A = 16'h7495;
	B = 16'h7175;
	ans = 16'h7750;
	#20
	A = 16'hf673;
	B = 16'h7167;
	ans = 16'hf37f;
	#20
	A = 16'he5ac;
	B = 16'h67c9;
	ans = 16'h603a;
	#20
	A = 16'h6d9b;
	B = 16'h735e;
	ans = 16'h7516;
	#20
	A = 16'hf600;
	B = 16'hf4b9;
	ans = 16'hf95c;
	#20
	A = 16'h7060;
	B = 16'h7732;
	ans = 16'h78b1;
	#20
	A = 16'h7658;
	B = 16'he8f9;
	ans = 16'h75b9;
	#20
	A = 16'hf3ec;
	B = 16'hf2e0;
	ans = 16'hf766;
	#20
	A = 16'h741a;
	B = 16'hf38f;
	ans = 16'h6528;
	#20
	A = 16'h6dd2;
	B = 16'hec32;
	ans = 16'h6680;
	#20
	A = 16'h6f03;
	B = 16'h760d;
	ans = 16'h77ce;
	#20
	A = 16'hf430;
	B = 16'hf215;
	ans = 16'hf73a;
	#20
	A = 16'hed64;
	B = 16'h745b;
	ans = 16'h7204;
	#20
	A = 16'h6a7e;
	B = 16'h7617;
	ans = 16'h76e7;
	#20
	A = 16'hf34f;
	B = 16'hebd2;
	ans = 16'hf4a2;
	#20
	A = 16'hf5fe;
	B = 16'hf416;
	ans = 16'hf90a;
	#20
	A = 16'hf745;
	B = 16'hf076;
	ans = 16'hf8c0;
	#20
	A = 16'hee9c;
	B = 16'h6bf5;
	ans = 16'he943;
	#20
	A = 16'h700c;
	B = 16'hf177;
	ans = 16'he9ac;
	#20
	A = 16'h752c;
	B = 16'h749e;
	ans = 16'h78e5;
	#20
	A = 16'hf1da;
	B = 16'he3f5;
	ans = 16'hf259;
	#20
	A = 16'h71ec;
	B = 16'hf6f9;
	ans = 16'hf403;
	#20
	A = 16'h7699;
	B = 16'h7074;
	ans = 16'h786a;
	#20
	A = 16'hf487;
	B = 16'hf6c9;
	ans = 16'hf9a8;
	#20
	A = 16'h6138;
	B = 16'hf550;
	ans = 16'hf526;
	#20
	A = 16'h7564;
	B = 16'h769c;
	ans = 16'h7a00;
	#20
	A = 16'h74a1;
	B = 16'h70cb;
	ans = 16'h7706;
	#20
	A = 16'h75f1;
	B = 16'h6605;
	ans = 16'h7651;
	#20
	A = 16'h6eee;
	B = 16'hf443;
	ans = 16'hf10f;
	#20
	A = 16'h654c;
	B = 16'he810;
	ans = 16'he1a8;
	#20
	A = 16'hed40;
	B = 16'hf4b9;
	ans = 16'hf609;
	#20
	A = 16'h692a;
	B = 16'hf612;
	ans = 16'hf56d;
	#20
	A = 16'h75af;
	B = 16'h747e;
	ans = 16'h7916;
	#20
	A = 16'hec4b;
	B = 16'he462;
	ans = 16'hed64;
	#20
	A = 16'h7121;
	B = 16'hf335;
	ans = 16'hec28;
	#20
	A = 16'h701e;
	B = 16'hf56b;
	ans = 16'hf2b8;
	#20
	A = 16'hf4ff;
	B = 16'h6edd;
	ans = 16'hf290;
	#20
	A = 16'hf57e;
	B = 16'h710a;
	ans = 16'hf1f2;
	#20
	A = 16'hf54a;
	B = 16'h72ac;
	ans = 16'hefd0;
	#20
	A = 16'h7403;
	B = 16'h6c01;
	ans = 16'h7503;
	#20
	A = 16'hf24b;
	B = 16'hf123;
	ans = 16'hf5b7;
	#20
	A = 16'hf5fd;
	B = 16'hf2ea;
	ans = 16'hf8b9;
	#20
	A = 16'hf47c;
	B = 16'h74e9;
	ans = 16'h66d0;
	#20
	A = 16'h7042;
	B = 16'h758c;
	ans = 16'h77ad;
	#20
	A = 16'hf658;
	B = 16'hf0ee;
	ans = 16'hf868;
	#20
	A = 16'h75c5;
	B = 16'hf4a3;
	ans = 16'h6c88;
	#20
	A = 16'h7733;
	B = 16'hf42b;
	ans = 16'h7210;
	#20
	A = 16'hf6c7;
	B = 16'h738d;
	ans = 16'hf201;
	#20
	A = 16'h72cc;
	B = 16'h71cd;
	ans = 16'h764c;
	#20
	A = 16'he553;
	B = 16'h7668;
	ans = 16'h7613;
	#20
	A = 16'h7675;
	B = 16'h71b1;
	ans = 16'h78a7;
	#20
	A = 16'h73d5;
	B = 16'h6142;
	ans = 16'h7415;
	#20
	A = 16'hf09f;
	B = 16'h74af;
	ans = 16'h70bf;
	#20
	A = 16'hf690;
	B = 16'h6add;
	ans = 16'hf5b4;
	#20
	A = 16'h71cd;
	B = 16'h758a;
	ans = 16'h7838;
	#20
	A = 16'h72f1;
	B = 16'h745f;
	ans = 16'h77d8;
	#20
	A = 16'hf431;
	B = 16'h75ff;
	ans = 16'h6f38;
	#20
	A = 16'hf297;
	B = 16'heef8;
	ans = 16'hf50a;
	#20
	A = 16'h76e7;
	B = 16'hf741;
	ans = 16'he5a0;
	#20
	A = 16'h7646;
	B = 16'hf63d;
	ans = 16'h5880;
	#20
	A = 16'hf0aa;
	B = 16'h6951;
	ans = 16'heeac;
	#20
	A = 16'h711b;
	B = 16'hf4c3;
	ans = 16'hf06b;
	#20
	A = 16'h71fb;
	B = 16'h70a2;
	ans = 16'h754e;
	#20
	A = 16'he92b;
	B = 16'he539;
	ans = 16'hebc8;
	#20
	A = 16'hf0a7;
	B = 16'h67b2;
	ans = 16'hef62;
	#20
	A = 16'hf1a7;
	B = 16'h6e13;
	ans = 16'hed3b;
	#20
	A = 16'hf70f;
	B = 16'h768d;
	ans = 16'he810;
	#20
	A = 16'h75c6;
	B = 16'hf2a9;
	ans = 16'h70e3;
	#20
	A = 16'h76bf;
	B = 16'hf325;
	ans = 16'h7259;
	#20
	A = 16'h751b;
	B = 16'hee0e;
	ans = 16'h732f;
	#20
	A = 16'h7721;
	B = 16'h6684;
	ans = 16'h7789;
	#20
	A = 16'h6c7a;
	B = 16'h6edc;
	ans = 16'h71ab;
	#20
	A = 16'hf124;
	B = 16'h70ab;
	ans = 16'he390;
	#20
	A = 16'h762b;
	B = 16'h606c;
	ans = 16'h764e;
	#20
	A = 16'hee3f;
	B = 16'h4f0d;
	ans = 16'hee38;
	#20
	A = 16'hee2c;
	B = 16'hf5ef;
	ans = 16'hf77a;
	#20
	A = 16'h733d;
	B = 16'h6ff1;
	ans = 16'h759b;
	#20
	A = 16'hf52c;
	B = 16'hed1b;
	ans = 16'hf673;
	#20
	A = 16'hdb90;
	B = 16'hec9a;
	ans = 16'hecd6;
	#20
	A = 16'hed3f;
	B = 16'he01b;
	ans = 16'hedc2;
	#20
	A = 16'h6c29;
	B = 16'h6edf;
	ans = 16'h7184;
	#20
	A = 16'h7604;
	B = 16'hed21;
	ans = 16'h74bc;
	#20
	A = 16'h7500;
	B = 16'h7667;
	ans = 16'h79b4;
	#20
	A = 16'h7589;
	B = 16'he643;
	ans = 16'h7525;
	#20
	A = 16'h7642;
	B = 16'h723e;
	ans = 16'h78b0;
	#20
	A = 16'h76ae;
	B = 16'h74b3;
	ans = 16'h79b0;
	#20
	A = 16'h736a;
	B = 16'hea19;
	ans = 16'h71e4;
	#20
	A = 16'hec55;
	B = 16'hf49b;
	ans = 16'hf5b0;
	#20
	A = 16'hf51b;
	B = 16'hf68c;
	ans = 16'hf9d4;
	#20
	A = 16'h75d9;
	B = 16'h7022;
	ans = 16'h77ea;
	#20
	A = 16'h6ed9;
	B = 16'h7572;
	ans = 16'h7728;
	#20
	A = 16'hf4c0;
	B = 16'hf138;
	ans = 16'hf75c;
	#20
	A = 16'h718b;
	B = 16'h72d2;
	ans = 16'h762e;
	#20
	A = 16'h73cb;
	B = 16'h76ea;
	ans = 16'h7968;
	#20
	A = 16'h7457;
	B = 16'h6629;
	ans = 16'h74ba;
	#20
	A = 16'h765f;
	B = 16'hf026;
	ans = 16'h744c;
	#20
	A = 16'h6b5f;
	B = 16'hf6c2;
	ans = 16'hf5d6;
	#20
	A = 16'hf6e2;
	B = 16'h7579;
	ans = 16'heda4;
	#20
	A = 16'hf614;
	B = 16'hef79;
	ans = 16'hf7f2;
	#20
	A = 16'hef62;
	B = 16'h71e0;
	ans = 16'h6c5e;
	#20
	A = 16'h70b5;
	B = 16'h70f9;
	ans = 16'h74d7;
	#20
	A = 16'hf46e;
	B = 16'hf70b;
	ans = 16'hf9bc;
	#20
	A = 16'hf3f2;
	B = 16'heeaf;
	ans = 16'hf5a5;
	#20
	A = 16'hf2b6;
	B = 16'h4f30;
	ans = 16'hf2b2;
	#20
	A = 16'hf02a;
	B = 16'he9a6;
	ans = 16'hf194;
	#20
	A = 16'h73ad;
	B = 16'h747c;
	ans = 16'h7829;
	#20
	A = 16'hee51;
	B = 16'hf74a;
	ans = 16'hf86f;
	#20
	A = 16'h6b44;
	B = 16'h71cf;
	ans = 16'h73a0;
	#20
	A = 16'hece4;
	B = 16'hf572;
	ans = 16'hf6ab;
	#20
	A = 16'h72aa;
	B = 16'h76ad;
	ans = 16'h7901;
	#20
	A = 16'hd51c;
	B = 16'hed07;
	ans = 16'hed1b;
	#20
	A = 16'h772f;
	B = 16'h6149;
	ans = 16'h7759;
	#20
	A = 16'hf4e4;
	B = 16'hd94e;
	ans = 16'hf4ef;
	#20
	A = 16'hf5dd;
	B = 16'hf682;
	ans = 16'hfa30;
	#20
	A = 16'heeb2;
	B = 16'h7109;
	ans = 16'h6ac0;
	#20
	A = 16'hf6ef;
	B = 16'hf61b;
	ans = 16'hfa85;
	#20
	A = 16'hf196;
	B = 16'hf4ab;
	ans = 16'hf776;
	#20
	A = 16'hf436;
	B = 16'h71ab;
	ans = 16'hed82;
	#20
	A = 16'h75aa;
	B = 16'hf3bc;
	ans = 16'h6f30;
	#20
	A = 16'hf59b;
	B = 16'h6d11;
	ans = 16'hf457;
	#20
	A = 16'h753a;
	B = 16'hf6cd;
	ans = 16'hee4c;
	#20
	A = 16'he675;
	B = 16'hf28a;
	ans = 16'hf359;
	#20
	A = 16'hf6a8;
	B = 16'hf691;
	ans = 16'hfa9c;
	#20
	A = 16'h6f5c;
	B = 16'h73df;
	ans = 16'h75c6;
	#20
	A = 16'hed34;
	B = 16'hf72f;
	ans = 16'hf83e;
	#20
	A = 16'hf746;
	B = 16'he9c3;
	ans = 16'hf7fe;
	#20
	A = 16'hf291;
	B = 16'h719d;
	ans = 16'he7a0;
	#20
	A = 16'hf3a1;
	B = 16'h7308;
	ans = 16'he4c8;
	#20
	A = 16'heee0;
	B = 16'h76b7;
	ans = 16'h74ff;
	#20
	A = 16'h6d27;
	B = 16'h71dd;
	ans = 16'h7438;
	#20
	A = 16'h761e;
	B = 16'h6a99;
	ans = 16'h76f1;
	#20
	A = 16'h6f62;
	B = 16'h713b;
	ans = 16'h7476;
	#20
	A = 16'h747b;
	B = 16'hf231;
	ans = 16'h6d8a;
	#20
	A = 16'h75b5;
	B = 16'hf58a;
	ans = 16'h6160;
	#20
	A = 16'h7103;
	B = 16'h6800;
	ans = 16'h7203;
	#20
	A = 16'h74d6;
	B = 16'hf5ee;
	ans = 16'hec60;
	#20
	A = 16'hf559;
	B = 16'h7242;
	ans = 16'hf070;
	#20
	A = 16'hf6b4;
	B = 16'h7635;
	ans = 16'he7f0;
	#20
	A = 16'h715b;
	B = 16'hf5ce;
	ans = 16'hf241;
	#20
	A = 16'h70bf;
	B = 16'h7053;
	ans = 16'h7489;
	#20
	A = 16'h7513;
	B = 16'hf347;
	ans = 16'h6dbe;
	#20
	A = 16'he646;
	B = 16'h7499;
	ans = 16'h7435;
	#20
	A = 16'h75df;
	B = 16'h6ae8;
	ans = 16'h76bc;
	#20
	A = 16'h7321;
	B = 16'hedd1;
	ans = 16'h7038;
	#20
	A = 16'hf492;
	B = 16'h6df6;
	ans = 16'hf229;
	#20
	A = 16'h6ad4;
	B = 16'hf651;
	ans = 16'hf576;
	#20
	A = 16'hf6c3;
	B = 16'hf246;
	ans = 16'hf8f3;
	#20
	A = 16'hf71f;
	B = 16'h76fc;
	ans = 16'he060;
	#20
	A = 16'h710a;
	B = 16'h7448;
	ans = 16'h76cd;
	#20
	A = 16'he67a;
	B = 16'hf250;
	ans = 16'hf31f;
	#20
	A = 16'hed95;
	B = 16'h67f9;
	ans = 16'heb2e;
	#20
	A = 16'hec6e;
	B = 16'h68de;
	ans = 16'he7fc;
	#20
	A = 16'h768a;
	B = 16'h6b65;
	ans = 16'h7777;
	#20
	A = 16'hf452;
	B = 16'h7478;
	ans = 16'h60c0;
	#20
	A = 16'h70ce;
	B = 16'hf623;
	ans = 16'hf378;
	#20
	A = 16'hf32c;
	B = 16'hf5c3;
	ans = 16'hf8ac;
	#20
	A = 16'h76a9;
	B = 16'hef61;
	ans = 16'h74d1;
	#20
	A = 16'h745a;
	B = 16'hf3b1;
	ans = 16'h680c;
	#20
	A = 16'hf1c4;
	B = 16'hf459;
	ans = 16'hf73b;
	#20
	A = 16'h7047;
	B = 16'h7072;
	ans = 16'h745c;
	#20
	A = 16'h69fa;
	B = 16'hf16f;
	ans = 16'hefe1;
	#20
	A = 16'hf548;
	B = 16'h7344;
	ans = 16'hee98;
	#20
	A = 16'h706c;
	B = 16'h76fe;
	ans = 16'h789a;
	#20
	A = 16'hf46c;
	B = 16'hf5e7;
	ans = 16'hf92a;
	#20
	A = 16'h70a0;
	B = 16'hf6d5;
	ans = 16'hf485;
	#20
	A = 16'hf70e;
	B = 16'h7670;
	ans = 16'he8f0;
	#20
	A = 16'h6a16;
	B = 16'hf54b;
	ans = 16'hf488;
	#20
	A = 16'hf603;
	B = 16'h75f0;
	ans = 16'hdcc0;
	#20
	A = 16'h76d5;
	B = 16'hec3e;
	ans = 16'h75c6;
	#20
	A = 16'hf0e0;
	B = 16'hf6f2;
	ans = 16'hf8b1;
	#20
	A = 16'h71d7;
	B = 16'hf4a2;
	ans = 16'heeda;
	#20
	A = 16'h7476;
	B = 16'h7535;
	ans = 16'h78d6;
	#20
	A = 16'h764a;
	B = 16'h734a;
	ans = 16'h78f8;
	#20
	A = 16'hf715;
	B = 16'h727c;
	ans = 16'hf3ae;
	#20
	A = 16'h7481;
	B = 16'hf368;
	ans = 16'h6a68;
	#20
	A = 16'h662f;
	B = 16'hf661;
	ans = 16'hf5fe;
	#20
	A = 16'h7410;
	B = 16'h74b5;
	ans = 16'h7862;
	#20
	A = 16'h6ba9;
	B = 16'h744b;
	ans = 16'h7540;
	#20
	A = 16'h76b7;
	B = 16'h769e;
	ans = 16'h7aaa;
	#20
	A = 16'hf21e;
	B = 16'h740c;
	ans = 16'h6be8;
	#20
	A = 16'hde5b;
	B = 16'hf6a9;
	ans = 16'hf6c2;
	#20
	A = 16'he90c;
	B = 16'hf655;
	ans = 16'hf6f6;
	#20
	A = 16'hded2;
	B = 16'hd9ab;
	ans = 16'he0d4;
	#20
	A = 16'h76cb;
	B = 16'hf6cb;
	ans = 16'h0;
	#20
	A = 16'he9b6;
	B = 16'h6e41;
	ans = 16'h6acc;
	#20
	A = 16'hf2c4;
	B = 16'hdb3d;
	ans = 16'hf2e1;
	#20
	A = 16'h70fc;
	B = 16'hf711;
	ans = 16'hf493;
	#20
	A = 16'hf46a;
	B = 16'h66ed;
	ans = 16'hf3f6;
	#20
	A = 16'hf6b7;
	B = 16'hf51e;
	ans = 16'hf9ea;
	#20
	A = 16'h7422;
	B = 16'h71cc;
	ans = 16'h7708;
	#20
	A = 16'h7236;
	B = 16'hf3b9;
	ans = 16'hea0c;
	#20
	A = 16'he72f;
	B = 16'hf4ff;
	ans = 16'hf572;
	#20
	A = 16'hee5b;
	B = 16'h7650;
	ans = 16'h74b9;
	#20
	A = 16'hf4e8;
	B = 16'hf10f;
	ans = 16'hf770;
	#20
	A = 16'h6e18;
	B = 16'hf1d0;
	ans = 16'hed88;
	#20
	A = 16'hefb5;
	B = 16'h773f;
	ans = 16'h7552;
	#20
	A = 16'hf2b1;
	B = 16'h6e8a;
	ans = 16'heed8;
	#20
	A = 16'hf4d8;
	B = 16'h7062;
	ans = 16'hf14e;
	#20
	A = 16'he21a;
	B = 16'hf462;
	ans = 16'hf493;
	#20
	A = 16'h75bb;
	B = 16'hf74a;
	ans = 16'hee3c;
	#20
	A = 16'he781;
	B = 16'h6e63;
	ans = 16'h6c83;
	#20
	A = 16'hf4fb;
	B = 16'h76da;
	ans = 16'h6f7c;
	#20
	A = 16'hedfd;
	B = 16'hf02d;
	ans = 16'hf32c;
	#20
	A = 16'hf72b;
	B = 16'hf149;
	ans = 16'hf8e8;
	#20
	A = 16'h6e4f;
	B = 16'h7686;
	ans = 16'h780d;
	#20
	A = 16'h7441;
	B = 16'h72f8;
	ans = 16'h77bd;
	#20
	A = 16'heb05;
	B = 16'h734e;
	ans = 16'h718d;
	#20
	A = 16'h7518;
	B = 16'h7080;
	ans = 16'h7758;
	#20
	A = 16'hf5aa;
	B = 16'h74ae;
	ans = 16'hebe0;
	#20
	A = 16'hf60e;
	B = 16'h6d3b;
	ans = 16'hf4bf;
	#20
	A = 16'h724a;
	B = 16'hf380;
	ans = 16'he8d8;
	#20
	A = 16'hf1ec;
	B = 16'h7593;
	ans = 16'h713a;
	#20
	A = 16'hf74c;
	B = 16'hea6d;
	ans = 16'hf80d;
	#20
	A = 16'hf06f;
	B = 16'he607;
	ans = 16'hf130;
	#20
	A = 16'hf155;
	B = 16'h74cb;
	ans = 16'h7041;
	#20
	A = 16'h7121;
	B = 16'hf22a;
	ans = 16'he824;
	#20
	A = 16'h70b9;
	B = 16'hee79;
	ans = 16'h69f2;
	#20
	A = 16'he3ab;
	B = 16'hf5d5;
	ans = 16'hf612;
	#20
	A = 16'h764e;
	B = 16'hf327;
	ans = 16'h7175;
	#20
	A = 16'h76e1;
	B = 16'hf5f9;
	ans = 16'h6b40;
	#20
	A = 16'hef6a;
	B = 16'h5ff8;
	ans = 16'heeea;
	#20
	A = 16'h6f46;
	B = 16'hf1ba;
	ans = 16'hec2e;
	#20
	A = 16'hf6dd;
	B = 16'h70b8;
	ans = 16'hf481;
	#20
	A = 16'hf445;
	B = 16'h64b1;
	ans = 16'hf3f4;
	#20
	A = 16'hee37;
	B = 16'hf63c;
	ans = 16'hf7ca;
	#20
	A = 16'h6825;
	B = 16'hebd1;
	ans = 16'he758;
	#20
	A = 16'h6f84;
	B = 16'h7634;
	ans = 16'h780a;
	#20
	A = 16'h7504;
	B = 16'h7435;
	ans = 16'h789c;
	#20
	A = 16'hf6bc;
	B = 16'h7478;
	ans = 16'hf088;
	#20
	A = 16'h7466;
	B = 16'hf55d;
	ans = 16'hebb8;
	#20
	A = 16'hf433;
	B = 16'hf1ee;
	ans = 16'hf72a;
	#20
	A = 16'h6fac;
	B = 16'h76e4;
	ans = 16'h7868;
	#20
	A = 16'h7374;
	B = 16'hf357;
	ans = 16'h5b40;
	#20
	A = 16'h7687;
	B = 16'hf2a8;
	ans = 16'h7266;
	#20
	A = 16'h71b5;
	B = 16'hf2e9;
	ans = 16'he8d0;
	#20
	A = 16'h7661;
	B = 16'hf4af;
	ans = 16'h6ec8;
	#20
	A = 16'hec99;
	B = 16'h7068;
	ans = 16'h6c37;
	#20
	A = 16'hf514;
	B = 16'h7181;
	ans = 16'hf0a7;
	#20
	A = 16'hec36;
	B = 16'hf3f2;
	ans = 16'hf506;
	#20
	A = 16'h697d;
	B = 16'h716a;
	ans = 16'h72c9;
	#20
	A = 16'hf729;
	B = 16'h70d5;
	ans = 16'hf4be;
	#20
	A = 16'h71be;
	B = 16'h6d71;
	ans = 16'h743b;
	#20
	A = 16'he1d3;
	B = 16'hf64e;
	ans = 16'hf67d;
	#20
	A = 16'h72cd;
	B = 16'hf4d7;
	ans = 16'hedc2;
	#20
	A = 16'he7f0;
	B = 16'hf2b6;
	ans = 16'hf3b4;
	#20
	A = 16'hec05;
	B = 16'hf594;
	ans = 16'hf695;
	#20
	A = 16'he8da;
	B = 16'h76d9;
	ans = 16'h763e;
	#20
	A = 16'h65cc;
	B = 16'hf628;
	ans = 16'hf5cb;
	#20
	A = 16'hf509;
	B = 16'hf182;
	ans = 16'hf7ca;
	#20
	A = 16'h76f6;
	B = 16'h722b;
	ans = 16'h7906;
	#20
	A = 16'hf6ce;
	B = 16'h7328;
	ans = 16'hf274;
	#20
	A = 16'h76ba;
	B = 16'hf575;
	ans = 16'h6d14;
	#20
	A = 16'h68ab;
	B = 16'heedd;
	ans = 16'hec88;
	#20
	A = 16'hf323;
	B = 16'h74e1;
	ans = 16'h6d3e;
	#20
	A = 16'hf09b;
	B = 16'h76a1;
	ans = 16'h7454;
	#20
	A = 16'hf655;
	B = 16'h7576;
	ans = 16'heaf8;
	#20
	A = 16'h7562;
	B = 16'h7728;
	ans = 16'h7a45;
	#20
	A = 16'h6ed8;
	B = 16'hf320;
	ans = 16'hef68;
	#20
	A = 16'h72d3;
	B = 16'h66bf;
	ans = 16'h73ab;
	#20
	A = 16'h72e3;
	B = 16'hf52e;
	ans = 16'heef2;
	#20
	A = 16'hecda;
	B = 16'hf4f5;
	ans = 16'hf62c;
	#20
	A = 16'h7543;
	B = 16'h7297;
	ans = 16'h7847;
	#20
	A = 16'h6fa0;
	B = 16'hf423;
	ans = 16'hf076;
	#20
	A = 16'h7617;
	B = 16'hf71c;
	ans = 16'hec14;
	#20
	A = 16'h7479;
	B = 16'h6c98;
	ans = 16'h759f;
	#20
	A = 16'h6a8c;
	B = 16'hf041;
	ans = 16'hed3c;
	#20
	A = 16'hefb6;
	B = 16'hed7f;
	ans = 16'hf29a;
	#20
	A = 16'h72b3;
	B = 16'hf048;
	ans = 16'h6cd6;
	#20
	A = 16'hf1fa;
	B = 16'h6bc6;
	ans = 16'hf008;
	#20
	A = 16'hf4b9;
	B = 16'hf5d0;
	ans = 16'hf944;
	#20
	A = 16'h74d5;
	B = 16'hf672;
	ans = 16'hee74;
	#20
	A = 16'h6e64;
	B = 16'h7600;
	ans = 16'h7799;
	#20
	A = 16'hf407;
	B = 16'h74c8;
	ans = 16'h6a08;
	#20
	A = 16'hf2ea;
	B = 16'h705e;
	ans = 16'hed18;
	#20
	A = 16'h74ee;
	B = 16'hf62e;
	ans = 16'hed00;
	#20
	A = 16'h76e9;
	B = 16'he04b;
	ans = 16'h76c7;
	#20
	A = 16'he858;
	B = 16'hf398;
	ans = 16'hf457;
	#20
	A = 16'hf08c;
	B = 16'h739e;
	ans = 16'h6e24;
	#20
	A = 16'h57a7;
	B = 16'he531;
	ans = 16'he4b7;
	#20
	A = 16'hf44e;
	B = 16'h749e;
	ans = 16'h6500;
	#20
	A = 16'h7580;
	B = 16'h7579;
	ans = 16'h797c;
	#20
	A = 16'h7095;
	B = 16'h72ab;
	ans = 16'h75a0;
	#20
	A = 16'hd40e;
	B = 16'hee2b;
	ans = 16'hee3b;
	#20
	A = 16'hf598;
	B = 16'h7575;
	ans = 16'he060;
	#20
	A = 16'he10e;
	B = 16'hefd1;
	ans = 16'hf039;
	#20
	A = 16'h7608;
	B = 16'h769d;
	ans = 16'h7a52;
	#20
	A = 16'h69cb;
	B = 16'hf597;
	ans = 16'hf4de;
	#20
	A = 16'hf67d;
	B = 16'h6699;
	ans = 16'hf613;
	#20
	A = 16'he52e;
	B = 16'h715c;
	ans = 16'h70b6;
	#20
	A = 16'hf578;
	B = 16'h7553;
	ans = 16'he0a0;
	#20
	A = 16'h752e;
	B = 16'h6c4b;
	ans = 16'h7641;
	#20
	A = 16'h734c;
	B = 16'hee16;
	ans = 16'h7041;
	#20
	A = 16'he8f9;
	B = 16'h6a0f;
	ans = 16'h6058;
	#20
	A = 16'h7058;
	B = 16'hf6e2;
	ans = 16'hf4b6;
	#20
	A = 16'h7301;
	B = 16'h7500;
	ans = 16'h7840;
	#20
	A = 16'hf452;
	B = 16'h750f;
	ans = 16'h69e8;
	#20
	A = 16'hf441;
	B = 16'hf69f;
	ans = 16'hf970;
	#20
	A = 16'h6817;
	B = 16'hee1d;
	ans = 16'hec12;
	#20
	A = 16'hf2fc;
	B = 16'he91e;
	ans = 16'hf422;
	#20
	A = 16'he9b3;
	B = 16'h76f6;
	ans = 16'h7640;
	#20
	A = 16'h76bc;
	B = 16'he0b4;
	ans = 16'h7696;
	#20
	A = 16'h75ae;
	B = 16'h7623;
	ans = 16'h79e8;
	#20
	A = 16'h6f48;
	B = 16'hf6b6;
	ans = 16'hf4e4;
	#20
	A = 16'h5c91;
	B = 16'hf6ef;
	ans = 16'hf6dd;
	#20
	A = 16'h76ec;
	B = 16'hf6be;
	ans = 16'h61c0;
	#20
	A = 16'hf624;
	B = 16'h690e;
	ans = 16'hf582;
	#20
	A = 16'h6892;
	B = 16'h74b0;
	ans = 16'h7542;
	#20
	A = 16'h74c2;
	B = 16'hf5f9;
	ans = 16'hecdc;
	#20
	A = 16'hf5d6;
	B = 16'h6ef7;
	ans = 16'hf418;
	#20
	A = 16'h6609;
	B = 16'hf30f;
	ans = 16'hf24e;
	#20
	A = 16'hf462;
	B = 16'h7425;
	ans = 16'he3a0;
	#20
	A = 16'hf677;
	B = 16'h7275;
	ans = 16'hf279;
	#20
	A = 16'h72b0;
	B = 16'hf031;
	ans = 16'h6cfe;
	#20
	A = 16'hf593;
	B = 16'hf500;
	ans = 16'hf94a;
	#20
	A = 16'hf72f;
	B = 16'h76b2;
	ans = 16'he7d0;
	#20
	A = 16'h7659;
	B = 16'h734f;
	ans = 16'h7900;
	#20
	A = 16'h7129;
	B = 16'hf50c;
	ans = 16'hf0ef;
	#20
	A = 16'hf08a;
	B = 16'hec1c;
	ans = 16'hf298;
	#20
	A = 16'h6297;
	B = 16'he5ea;
	ans = 16'he13d;
	#20
	A = 16'hf5e9;
	B = 16'hf543;
	ans = 16'hf996;
	#20
	A = 16'hf657;
	B = 16'hef0e;
	ans = 16'hf80d;
	#20
	A = 16'h7750;
	B = 16'he8f2;
	ans = 16'h76b2;
	#20
	A = 16'hf5bf;
	B = 16'h7539;
	ans = 16'he830;
	#20
	A = 16'hf3e5;
	B = 16'h6429;
	ans = 16'hf360;
	#20
	A = 16'hf652;
	B = 16'hf71c;
	ans = 16'hfab7;
	#20
	A = 16'h7264;
	B = 16'hf214;
	ans = 16'h6100;
	#20
	A = 16'hed53;
	B = 16'he4ff;
	ans = 16'hee93;
	#20
	A = 16'h6d84;
	B = 16'hf5f1;
	ans = 16'hf490;
	#20
	A = 16'hf5da;
	B = 16'h759e;
	ans = 16'he380;
	#20
	A = 16'hea16;
	B = 16'h65e2;
	ans = 16'he64a;
	#20
	A = 16'he821;
	B = 16'hf487;
	ans = 16'hf50b;
	#20
	A = 16'h6a5b;
	B = 16'hf562;
	ans = 16'hf497;
	#20
	A = 16'he810;
	B = 16'h726d;
	ans = 16'h7169;
	#20
	A = 16'h75b4;
	B = 16'h6afc;
	ans = 16'h7694;
	#20
	A = 16'he9ce;
	B = 16'h6739;
	ans = 16'he463;
	#20
	A = 16'h728d;
	B = 16'h72f0;
	ans = 16'h76be;
	#20
	A = 16'h7440;
	B = 16'hf068;
	ans = 16'h7018;
	#20
	A = 16'h748e;
	B = 16'h6aaa;
	ans = 16'h7563;
	#20
	A = 16'hf0e1;
	B = 16'hf69f;
	ans = 16'hf888;
	#20
	A = 16'h74e4;
	B = 16'hf181;
	ans = 16'h7047;
	#20
	A = 16'hf13b;
	B = 16'hecb0;
	ans = 16'hf393;
	#20
	A = 16'h6f3c;
	B = 16'h7523;
	ans = 16'h76f2;
	#20
	A = 16'h6eda;
	B = 16'h62df;
	ans = 16'h6fb6;
	#20
	A = 16'h7227;
	B = 16'h73a4;
	ans = 16'h76e6;
	#20
	A = 16'h707c;
	B = 16'h7608;
	ans = 16'h7823;
	#20
	A = 16'h7491;
	B = 16'hf48c;
	ans = 16'h5500;
	#20
	A = 16'h715c;
	B = 16'h703b;
	ans = 16'h74cc;
	#20
	A = 16'heb3f;
	B = 16'h766f;
	ans = 16'h7587;
	#20
	A = 16'h60ba;
	B = 16'h7033;
	ans = 16'h707f;
	#20
	A = 16'hf316;
	B = 16'h765b;
	ans = 16'h71a0;
	#20
	A = 16'hed9f;
	B = 16'hf5fa;
	ans = 16'hf762;
	#20
	A = 16'h769d;
	B = 16'h6bbb;
	ans = 16'h7794;
	#20
	A = 16'hf6cb;
	B = 16'h7407;
	ans = 16'hf188;
	#20
	A = 16'h774d;
	B = 16'he999;
	ans = 16'h769a;
	#20
	A = 16'h7440;
	B = 16'hecfa;
	ans = 16'h7203;
	#20
	A = 16'h6e6b;
	B = 16'h75b8;
	ans = 16'h7753;
	#20
	A = 16'hf6a7;
	B = 16'h710f;
	ans = 16'hf420;
	#20
	A = 16'hef6d;
	B = 16'hf191;
	ans = 16'hf4a4;
	#20
	A = 16'hf177;
	B = 16'hedd3;
	ans = 16'hf430;
	#20
	A = 16'he6a9;
	B = 16'h755a;
	ans = 16'h74ef;
	#20
	A = 16'h7662;
	B = 16'h72bb;
	ans = 16'h78e0;
	#20
	A = 16'h7396;
	B = 16'h6cc1;
	ans = 16'h74fb;
	#20
	A = 16'hf5e2;
	B = 16'he0ee;
	ans = 16'hf609;
	#20
	A = 16'h76fa;
	B = 16'h757a;
	ans = 16'h7a3a;
	#20
	A = 16'h6c25;
	B = 16'hf4e2;
	ans = 16'hf3b2;
	#20
	A = 16'h679f;
	B = 16'h68d2;
	ans = 16'h6c51;
	#20
	A = 16'hf373;
	B = 16'h6c2f;
	ans = 16'hf15c;
	#20
	A = 16'he3a5;
	B = 16'h7465;
	ans = 16'h7428;
	#20
	A = 16'hf1ff;
	B = 16'he9b1;
	ans = 16'hf36b;
	#20
	A = 16'h75bb;
	B = 16'hf556;
	ans = 16'h6650;
	#20
	A = 16'h6cfe;
	B = 16'hebbf;
	ans = 16'h647a;
	#20
	A = 16'h6b5b;
	B = 16'hf267;
	ans = 16'hf090;
	#20
	A = 16'h72ae;
	B = 16'hf51e;
	ans = 16'hef1c;
	#20
	A = 16'he6f0;
	B = 16'hf55f;
	ans = 16'hf5ce;
	#20
	A = 16'h7250;
	B = 16'h6b06;
	ans = 16'h7409;
	#20
	A = 16'h7553;
	B = 16'h75da;
	ans = 16'h7996;
	#20
	A = 16'h769d;
	B = 16'hda08;
	ans = 16'h7691;
	#20
	A = 16'h74b5;
	B = 16'h6f24;
	ans = 16'h767e;
	#20
	A = 16'hf224;
	B = 16'h7619;
	ans = 16'h720e;
	#20
	A = 16'hf322;
	B = 16'h7457;
	ans = 16'h6a30;
	#20
	A = 16'h73b5;
	B = 16'hf46e;
	ans = 16'he89c;
	#20
	A = 16'h7530;
	B = 16'hf191;
	ans = 16'h70cf;
	#20
	A = 16'h740a;
	B = 16'hf23a;
	ans = 16'h6b68;
	#20
	A = 16'h6d6c;
	B = 16'h76d6;
	ans = 16'h7818;
	#20
	A = 16'hf25a;
	B = 16'hf649;
	ans = 16'hf8bb;
	#20
	A = 16'h73b0;
	B = 16'h7694;
	ans = 16'h7936;
	#20
	A = 16'hf4da;
	B = 16'hf14a;
	ans = 16'hf77f;
	#20
	A = 16'h7506;
	B = 16'h7081;
	ans = 16'h7746;
	#20
	A = 16'hf45e;
	B = 16'h7666;
	ans = 16'h7010;
	#20
	A = 16'hf0c7;
	B = 16'h75f3;
	ans = 16'h731f;
	#20
	A = 16'hede5;
	B = 16'h7734;
	ans = 16'h75bb;
	#20
	A = 16'h7612;
	B = 16'hf649;
	ans = 16'he2e0;
	#20
	A = 16'hf552;
	B = 16'hf5d2;
	ans = 16'hf992;
	#20
	A = 16'h7663;
	B = 16'hdec9;
	ans = 16'h7648;
	#20
	A = 16'hf533;
	B = 16'h71c9;
	ans = 16'hf09d;
	#20
	A = 16'h75fc;
	B = 16'hf631;
	ans = 16'he2a0;
	#20
	A = 16'hecf0;
	B = 16'hf576;
	ans = 16'hf6b2;
	#20
	A = 16'hf047;
	B = 16'hf605;
	ans = 16'hf814;
	#20
	A = 16'he60c;
	B = 16'hf512;
	ans = 16'hf573;
	#20
	A = 16'heb94;
	B = 16'hf310;
	ans = 16'hf47a;
	#20
	A = 16'hf3c4;
	B = 16'h735d;
	ans = 16'he270;
	#20
	A = 16'hf36d;
	B = 16'h73eb;
	ans = 16'h63e0;
	#20
	A = 16'h6f11;
	B = 16'hf439;
	ans = 16'hf0ea;
	#20
	A = 16'hf1f6;
	B = 16'h713d;
	ans = 16'he5c8;
	#20
	A = 16'h7656;
	B = 16'hf022;
	ans = 16'h7445;
	#20
	A = 16'h6c73;
	B = 16'h7499;
	ans = 16'h75b6;
	#20
	A = 16'hf573;
	B = 16'hf623;
	ans = 16'hf9cb;
	#20
	A = 16'h68c2;
	B = 16'hf6c8;
	ans = 16'hf630;
	#20
	A = 16'hf0d2;
	B = 16'h570d;
	ans = 16'hf0c4;
	#20
	A = 16'h7372;
	B = 16'h732b;
	ans = 16'h774e;
	#20
	A = 16'hf297;
	B = 16'h7094;
	ans = 16'hec06;
	#20
	A = 16'h6ccc;
	B = 16'h6988;
	ans = 16'h6f90;
	#20
	A = 16'h7466;
	B = 16'h75ce;
	ans = 16'h791a;
	#20
	A = 16'h76c2;
	B = 16'h73f4;
	ans = 16'h795e;
	#20
	A = 16'h580c;
	B = 16'hf129;
	ans = 16'hf119;
	#20
	A = 16'h7683;
	B = 16'hf1f4;
	ans = 16'h7312;
	#20
	A = 16'h6e4d;
	B = 16'h7726;
	ans = 16'h785d;
	#20
	A = 16'h75a8;
	B = 16'he956;
	ans = 16'h74fd;
	#20
	A = 16'hf64b;
	B = 16'hf614;
	ans = 16'hfa30;
	#20
	A = 16'he5da;
	B = 16'h691d;
	ans = 16'h6460;
	#20
	A = 16'hf5d2;
	B = 16'h6c08;
	ans = 16'hf4d0;
	#20
	A = 16'hf1d9;
	B = 16'hf73e;
	ans = 16'hf915;
	#20
	A = 16'h759c;
	B = 16'heada;
	ans = 16'h74c1;
	#20
	A = 16'hf0f7;
	B = 16'h7124;
	ans = 16'h5da0;
	#20
	A = 16'h7534;
	B = 16'hf4a5;
	ans = 16'h6878;
	#20
	A = 16'h7622;
	B = 16'hf59a;
	ans = 16'h6840;
	#20
	A = 16'hf252;
	B = 16'hf396;
	ans = 16'hf6f4;
	#20
	A = 16'hf6d2;
	B = 16'h6da4;
	ans = 16'hf569;
	#20
	A = 16'h7446;
	B = 16'hee44;
	ans = 16'h716a;
	#20
	A = 16'h7539;
	B = 16'hf1a5;
	ans = 16'h70cd;
	#20
	A = 16'he8f2;
	B = 16'h7665;
	ans = 16'h75c7;
	#20
	A = 16'hf505;
	B = 16'hf630;
	ans = 16'hf99a;
	#20
	A = 16'h6900;
	B = 16'h6cad;
	ans = 16'h6f2d;
	#20
	A = 16'he950;
	B = 16'h5a40;
	ans = 16'he8ec;
	#20
	A = 16'h764e;
	B = 16'h72a5;
	ans = 16'h78d0;
	#20
	A = 16'h6c33;
	B = 16'hef82;
	ans = 16'hea9e;
	#20
	A = 16'h7025;
	B = 16'h7364;
	ans = 16'h75c4;
	#20
	A = 16'hf722;
	B = 16'he871;
	ans = 16'hf7b0;
	#20
	A = 16'hed72;
	B = 16'h7626;
	ans = 16'h74ca;
	#20
	A = 16'hf42d;
	B = 16'hf2ed;
	ans = 16'hf7a4;
	#20
	A = 16'h76ad;
	B = 16'h698b;
	ans = 16'h775e;
	#20
	A = 16'hf46a;
	B = 16'hf111;
	ans = 16'hf6f2;
	#20
	A = 16'h7401;
	B = 16'hf5bc;
	ans = 16'heeec;
	#20
	A = 16'h6ae1;
	B = 16'hf39b;
	ans = 16'hf1e3;
	#20
	A = 16'h6fe5;
	B = 16'hf318;
	ans = 16'hee4b;
	#20
	A = 16'he561;
	B = 16'h7668;
	ans = 16'h7612;
	#20
	A = 16'hf72a;
	B = 16'h76b4;
	ans = 16'he760;
	#20
	A = 16'hf063;
	B = 16'h6e52;
	ans = 16'he8e8;
	#20
	A = 16'h768d;
	B = 16'h76c8;
	ans = 16'h7aaa;
	#20
	A = 16'h7493;
	B = 16'h6f52;
	ans = 16'h7668;
	#20
	A = 16'h7265;
	B = 16'hf599;
	ans = 16'hf0cd;
	#20
	A = 16'hf23d;
	B = 16'h750a;
	ans = 16'h6fae;
	#20
	A = 16'h749e;
	B = 16'hf376;
	ans = 16'h6b18;
	#20
	A = 16'h76da;
	B = 16'hf271;
	ans = 16'h7343;
	#20
	A = 16'h5c7f;
	B = 16'h7552;
	ans = 16'h7564;
	#20
	A = 16'h7607;
	B = 16'hf5f2;
	ans = 16'h5d40;
	#20
	A = 16'he95d;
	B = 16'h757a;
	ans = 16'h74ce;
	#20
	A = 16'hf4d6;
	B = 16'he9a2;
	ans = 16'hf58a;
	#20
	A = 16'h7043;
	B = 16'h7431;
	ans = 16'h7652;
	#20
	A = 16'he310;
	B = 16'h6e6b;
	ans = 16'h6d89;
	#20
	A = 16'h70b2;
	B = 16'h7709;
	ans = 16'h78b1;
	#20
	A = 16'h57a2;
	B = 16'he933;
	ans = 16'he8f6;
	#20
	A = 16'hf6f1;
	B = 16'h6ec8;
	ans = 16'hf53f;
	#20
	A = 16'h7352;
	B = 16'h74fb;
	ans = 16'h7852;
	#20
	A = 16'hf15e;
	B = 16'h759c;
	ans = 16'h71da;
	#20
	A = 16'he45e;
	B = 16'hf5a2;
	ans = 16'hf5e8;
	#20
	A = 16'hf647;
	B = 16'h7711;
	ans = 16'h6a50;
	#20
	A = 16'h7257;
	B = 16'hed86;
	ans = 16'h6f28;
	#20
	A = 16'hf13d;
	B = 16'h7098;
	ans = 16'he528;
	#20
	A = 16'h76ef;
	B = 16'h7734;
	ans = 16'h7b12;
	#20
	A = 16'hf356;
	B = 16'hf658;
	ans = 16'hf902;
	#20
	A = 16'h756e;
	B = 16'h6466;
	ans = 16'h75b4;
	#20
	A = 16'hf475;
	B = 16'h75a8;
	ans = 16'h6ccc;
	#20
	A = 16'hf220;
	B = 16'h6de9;
	ans = 16'hee57;
	#20
	A = 16'hf511;
	B = 16'he3ba;
	ans = 16'hf54f;
	#20
	A = 16'h73cc;
	B = 16'hf3da;
	ans = 16'hd700;
	#20
	A = 16'h72d3;
	B = 16'hf18f;
	ans = 16'h6910;
	#20
	A = 16'hec84;
	B = 16'hf6a5;
	ans = 16'hf7c6;
	#20
	A = 16'hf189;
	B = 16'he271;
	ans = 16'hf1f0;
	#20
	A = 16'hf344;
	B = 16'hf083;
	ans = 16'hf5e4;
	#20
	A = 16'hf0ed;
	B = 16'hf584;
	ans = 16'hf7fa;
	#20
	A = 16'hf4fc;
	B = 16'h5880;
	ans = 16'hf4f3;
	#20
	A = 16'hf49c;
	B = 16'hf2b8;
	ans = 16'hf7f8;
	#20
	A = 16'hedfc;
	B = 16'h7551;
	ans = 16'h73a4;
	#20
	A = 16'heaf2;
	B = 16'h74af;
	ans = 16'h73a2;
	#20
	A = 16'he893;
	B = 16'h744d;
	ans = 16'h7375;
	#20
	A = 16'h7078;
	B = 16'h7557;
	ans = 16'h7793;
	#20
	A = 16'hf257;
	B = 16'hf32d;
	ans = 16'hf6c2;
	#20
	A = 16'hf64c;
	B = 16'hf4af;
	ans = 16'hf97e;
	#20
	A = 16'hf6f9;
	B = 16'hdda4;
	ans = 16'hf710;
	#20
	A = 16'hf105;
	B = 16'h764a;
	ans = 16'h738f;
	#20
	A = 16'h715d;
	B = 16'hf15b;
	ans = 16'h4c00;
	#20
	A = 16'h756d;
	B = 16'hf567;
	ans = 16'h5600;
	#20
	A = 16'h7575;
	B = 16'h73b7;
	ans = 16'h78a8;
	#20
	A = 16'hf3d8;
	B = 16'hf50c;
	ans = 16'hf87c;
	#20
	A = 16'hf44a;
	B = 16'h6add;
	ans = 16'hf2dd;
	#20
	A = 16'h6cdf;
	B = 16'h7636;
	ans = 16'h776e;
	#20
	A = 16'hefb6;
	B = 16'h722e;
	ans = 16'h6ca6;
	#20
	A = 16'hf580;
	B = 16'h7603;
	ans = 16'h6818;
	#20
	A = 16'h774a;
	B = 16'hf744;
	ans = 16'h5600;
	#20
	A = 16'hf50b;
	B = 16'he9e4;
	ans = 16'hf5c8;
	#20
	A = 16'h761b;
	B = 16'h7243;
	ans = 16'h789e;
	#20
	A = 16'h73ad;
	B = 16'h6fb8;
	ans = 16'h75c4;
	#20
	A = 16'hf49a;
	B = 16'h76bc;
	ans = 16'h7044;
	#20
	A = 16'hf2a0;
	B = 16'heae1;
	ans = 16'hf42c;
	#20
	A = 16'h73a1;
	B = 16'hf25b;
	ans = 16'h6918;
	#20
	A = 16'h6f0c;
	B = 16'h74fb;
	ans = 16'h76be;
	#20
	A = 16'heb9c;
	B = 16'h7481;
	ans = 16'h731b;
	#20
	A = 16'h7314;
	B = 16'h7418;
	ans = 16'h77a2;
	#20
	A = 16'h74b1;
	B = 16'h6ff5;
	ans = 16'h76ae;
	#20
	A = 16'h731f;
	B = 16'hf16c;
	ans = 16'h6acc;
	#20
	A = 16'h70bf;
	B = 16'h7371;
	ans = 16'h7618;
	#20
	A = 16'hf4af;
	B = 16'hf5c2;
	ans = 16'hf938;
	#20
	A = 16'h6a6d;
	B = 16'hf2ce;
	ans = 16'hf133;
	#20
	A = 16'hf049;
	B = 16'h752c;
	ans = 16'h720f;
	#20
	A = 16'hf318;
	B = 16'h765a;
	ans = 16'h719c;
	#20
	A = 16'hf700;
	B = 16'h7368;
	ans = 16'hf298;
	#20
	A = 16'he5c4;
	B = 16'h6d37;
	ans = 16'h6b8c;
	#20
	A = 16'h74d1;
	B = 16'h6ce9;
	ans = 16'h760b;
	#20
	A = 16'hf732;
	B = 16'h7563;
	ans = 16'hef3c;
	#20
	A = 16'hf314;
	B = 16'hee7f;
	ans = 16'hf52a;
	#20
	A = 16'h7729;
	B = 16'hf15c;
	ans = 16'h747b;
	#20
	A = 16'hf60b;
	B = 16'hf4d3;
	ans = 16'hf96f;
	#20
	A = 16'hf54c;
	B = 16'h724d;
	ans = 16'hf04b;
	#20
	A = 16'h76b6;
	B = 16'h762b;
	ans = 16'h7a70;
	#20
	A = 16'hf15e;
	B = 16'h6d11;
	ans = 16'hedab;
	#20
	A = 16'heedf;
	B = 16'hf523;
	ans = 16'hf6db;
	#20
	A = 16'hf67f;
	B = 16'h75be;
	ans = 16'hea08;
	#20
	A = 16'hf5b1;
	B = 16'h6c68;
	ans = 16'hf497;
	#20
	A = 16'hf4da;
	B = 16'hf658;
	ans = 16'hf999;
	#20
	A = 16'he90d;
	B = 16'h72aa;
	ans = 16'h7167;
	#20
	A = 16'hf565;
	B = 16'he8b6;
	ans = 16'hf5fc;
	#20
	A = 16'hf615;
	B = 16'h68a1;
	ans = 16'hf581;
	#20
	A = 16'h764d;
	B = 16'hf0d4;
	ans = 16'h73c6;
	#20
	A = 16'hed73;
	B = 16'hdffe;
	ans = 16'hedf3;
	#20
	A = 16'hf1f7;
	B = 16'h764f;
	ans = 16'h72a7;
	#20
	A = 16'h74b0;
	B = 16'hf284;
	ans = 16'h6db8;
	#20
	A = 16'hf1e6;
	B = 16'hf0bb;
	ans = 16'hf550;
	#20
	A = 16'h6f74;
	B = 16'hf4b5;
	ans = 16'hf1b0;
	#20
	A = 16'h763c;
	B = 16'h7452;
	ans = 16'h7947;
	#20
	A = 16'hee6c;
	B = 16'hf0d7;
	ans = 16'hf406;
	#20
	A = 16'hf347;
	B = 16'h76f1;
	ans = 16'h729b;
	#20
	A = 16'h6cde;
	B = 16'hf3fb;
	ans = 16'hf18c;
	#20
	A = 16'hf4f0;
	B = 16'h6fde;
	ans = 16'hf1f1;
	#20
	A = 16'hed86;
	B = 16'hf14b;
	ans = 16'hf407;
	#20
	A = 16'h7370;
	B = 16'h70ee;
	ans = 16'h762f;
	#20
	A = 16'h6c94;
	B = 16'h6eb5;
	ans = 16'h71a4;
	#20
	A = 16'h71ff;
	B = 16'h7613;
	ans = 16'h7889;
	#20
	A = 16'h75a5;
	B = 16'h6e3c;
	ans = 16'h7734;
	#20
	A = 16'h757d;
	B = 16'h720a;
	ans = 16'h7841;
	#20
	A = 16'h73f9;
	B = 16'h7141;
	ans = 16'h769d;
	#20
	A = 16'hf49c;
	B = 16'h774c;
	ans = 16'h7160;
	#20
	A = 16'h75f4;
	B = 16'h75b8;
	ans = 16'h79d6;
	#20
	A = 16'h7677;
	B = 16'h7505;
	ans = 16'h79be;
	#20
	A = 16'h7654;
	B = 16'h6d18;
	ans = 16'h779a;
	#20
	A = 16'h7457;
	B = 16'h6f27;
	ans = 16'h7621;
	#20
	A = 16'h7200;
	B = 16'hf473;
	ans = 16'hedcc;
	#20
	A = 16'hf5ff;
	B = 16'hf4f4;
	ans = 16'hf97a;
	#20
	A = 16'hf599;
	B = 16'h716e;
	ans = 16'hf1c4;
	#20
	A = 16'hf707;
	B = 16'hf74f;
	ans = 16'hfb2b;
	#20
	A = 16'hf039;
	B = 16'hf071;
	ans = 16'hf455;
	#20
	A = 16'h72ed;
	B = 16'h703c;
	ans = 16'h7594;
	#20
	A = 16'heee1;
	B = 16'h6d90;
	ans = 16'he544;
	#20
	A = 16'h75ea;
	B = 16'h7353;
	ans = 16'h78ca;
	#20
	A = 16'hf5ac;
	B = 16'h7002;
	ans = 16'hf356;
	#20
	A = 16'h7693;
	B = 16'h70ee;
	ans = 16'h7885;
	#20
	A = 16'he89a;
	B = 16'h76b9;
	ans = 16'h7626;
	#20
	A = 16'hf144;
	B = 16'h7583;
	ans = 16'h71c2;
	#20
	A = 16'hf1fc;
	B = 16'hef11;
	ans = 16'hf4c2;
	#20
	A = 16'h76b4;
	B = 16'hf70a;
	ans = 16'he560;
	#20
	A = 16'hf504;
	B = 16'hee1a;
	ans = 16'hf68a;
	#20
	A = 16'h67fe;
	B = 16'h67f8;
	ans = 16'h6bfb;
	#20
	A = 16'hf19e;
	B = 16'h6d9d;
	ans = 16'hed9f;
	#20
	A = 16'hf669;
	B = 16'h6f57;
	ans = 16'hf493;
	#20
	A = 16'h6d28;
	B = 16'hf402;
	ans = 16'hf170;
	#20
	A = 16'hf4fa;
	B = 16'h68d4;
	ans = 16'hf460;
	#20
	A = 16'hf371;
	B = 16'h74c6;
	ans = 16'h6c36;
	#20
	A = 16'h5e2f;
	B = 16'h749e;
	ans = 16'h74b7;
	#20
	A = 16'h6ea6;
	B = 16'heec2;
	ans = 16'hd700;
	#20
	A = 16'hf33f;
	B = 16'heda1;
	ans = 16'hf508;
	#20
	A = 16'h772e;
	B = 16'h7703;
	ans = 16'h7b18;
	#20
	A = 16'hf738;
	B = 16'hec0f;
	ans = 16'hf81e;
	#20
	A = 16'hf489;
	B = 16'h73dd;
	ans = 16'he8d4;
	#20
	A = 16'hf72e;
	B = 16'hf46f;
	ans = 16'hf9ce;
	#20
	A = 16'h7409;
	B = 16'hf570;
	ans = 16'hed9c;
	#20
	A = 16'he733;
	B = 16'h6c64;
	ans = 16'h692e;
	#20
	A = 16'hf606;
	B = 16'h7648;
	ans = 16'h6420;
	#20
	A = 16'h6f58;
	B = 16'h7082;
	ans = 16'h7417;
	#20
	A = 16'h73c2;
	B = 16'h6ad9;
	ans = 16'h74bc;
	#20
	A = 16'h71d2;
	B = 16'he4ae;
	ans = 16'h713c;
	#20
	A = 16'hf587;
	B = 16'h6fd3;
	ans = 16'hf324;
	#20
	A = 16'hf440;
	B = 16'hf674;
	ans = 16'hf95a;
	#20
	A = 16'hf504;
	B = 16'h741b;
	ans = 16'heb48;
	#20
	A = 16'he9c8;
	B = 16'h6f51;
	ans = 16'h6c6d;
	#20
	A = 16'h6fd5;
	B = 16'hefb1;
	ans = 16'h5880;
	#20
	A = 16'hf185;
	B = 16'hec98;
	ans = 16'hf3d1;
	#20
	A = 16'hf5a3;
	B = 16'h73df;
	ans = 16'heece;
	#20
	A = 16'h46b9;
	B = 16'hf5e1;
	ans = 16'hf5e1;
	#20
	A = 16'h76c9;
	B = 16'hf4f2;
	ans = 16'h6f5c;
	#20
	A = 16'h751a;
	B = 16'hef30;
	ans = 16'h729c;
	#20
	A = 16'h6721;
	B = 16'hf64a;
	ans = 16'hf5d8;
	#20
	A = 16'h71a7;
	B = 16'hf6ed;
	ans = 16'hf41a;
	#20
	A = 16'h6a9b;
	B = 16'hf0f3;
	ans = 16'hee98;
	#20
	A = 16'hf708;
	B = 16'h7397;
	ans = 16'hf279;
	#20
	A = 16'he825;
	B = 16'h72b7;
	ans = 16'h71ae;
	#20
	A = 16'h75a3;
	B = 16'h6ef5;
	ans = 16'h7760;
	#20
	A = 16'h7154;
	B = 16'he6b2;
	ans = 16'h707e;
	#20
	A = 16'hf14a;
	B = 16'h7029;
	ans = 16'he884;
	#20
	A = 16'h7163;
	B = 16'h71ed;
	ans = 16'h75a8;
	#20
	A = 16'hf1d5;
	B = 16'h74da;
	ans = 16'h6fbe;
	#20
	A = 16'hf725;
	B = 16'h752e;
	ans = 16'hefdc;
	#20
	A = 16'hf732;
	B = 16'h769f;
	ans = 16'he898;
	#20
	A = 16'h7707;
	B = 16'hf17f;
	ans = 16'h7448;
	#20
	A = 16'h73e0;
	B = 16'hecfa;
	ans = 16'h7163;
	#20
	A = 16'he669;
	B = 16'h7237;
	ans = 16'h716a;
	#20
	A = 16'he42e;
	B = 16'hea55;
	ans = 16'hec36;
	#20
	A = 16'hf53d;
	B = 16'hf740;
	ans = 16'hfa3e;
	#20
	A = 16'h699c;
	B = 16'h7611;
	ans = 16'h76c4;
	#20
	A = 16'h758b;
	B = 16'hf16e;
	ans = 16'h71a8;
	#20
	A = 16'hf1ba;
	B = 16'hf6ed;
	ans = 16'hf8e5;
	#20
	A = 16'hed92;
	B = 16'hedf1;
	ans = 16'hf1c2;
	#20
	A = 16'h730d;
	B = 16'h75ed;
	ans = 16'h78ba;
	#20
	A = 16'h7517;
	B = 16'h6fef;
	ans = 16'h7713;
	#20
	A = 16'hf417;
	B = 16'h6f0b;
	ans = 16'hf0a8;
	#20
	A = 16'hec07;
	B = 16'h70df;
	ans = 16'h6db7;
	#20
	A = 16'h746f;
	B = 16'h76ae;
	ans = 16'h798e;
	#20
	A = 16'hf464;
	B = 16'h7488;
	ans = 16'h6080;
	#20
	A = 16'h75da;
	B = 16'h7465;
	ans = 16'h7920;
	#20
	A = 16'hf4f1;
	B = 16'h60e5;
	ans = 16'hf4ca;
	#20
	A = 16'h693c;
	B = 16'hf1d0;
	ans = 16'hf081;
	#20
	A = 16'he407;
	B = 16'hf07f;
	ans = 16'hf100;
	#20
	A = 16'hf750;
	B = 16'h6eda;
	ans = 16'hf59a;
	#20
	A = 16'hed1a;
	B = 16'hf13c;
	ans = 16'hf3c9;
	#20
	A = 16'h6599;
	B = 16'hf640;
	ans = 16'hf5e6;
	#20
	A = 16'h724d;
	B = 16'h721c;
	ans = 16'h7634;
	#20
	A = 16'hf454;
	B = 16'h6df3;
	ans = 16'hf1ae;
	#20
	A = 16'hed43;
	B = 16'hf34e;
	ans = 16'hf4f8;
	#20
	A = 16'hf0a9;
	B = 16'hf647;
	ans = 16'hf84e;
	#20
	A = 16'h736d;
	B = 16'hea6a;
	ans = 16'h71d2;
	#20
	A = 16'h76ca;
	B = 16'h7364;
	ans = 16'h793e;
	#20
	A = 16'h75ff;
	B = 16'hf34d;
	ans = 16'h70b1;
	#20
	A = 16'heb0b;
	B = 16'heb74;
	ans = 16'hef40;
	#20
	A = 16'h7590;
	B = 16'h7481;
	ans = 16'h7908;
	#20
	A = 16'h6c41;
	B = 16'hf4e7;
	ans = 16'hf3ae;
	#20
	A = 16'h6f70;
	B = 16'h76c3;
	ans = 16'h7850;
	#20
	A = 16'h7356;
	B = 16'hf53d;
	ans = 16'hee48;
	#20
	A = 16'h75c1;
	B = 16'h74da;
	ans = 16'h794e;
	#20
	A = 16'hf1db;
	B = 16'h7409;
	ans = 16'h6c6e;
	#20
	A = 16'hf559;
	B = 16'hf426;
	ans = 16'hf8c0;
	#20
	A = 16'hf5e6;
	B = 16'hf3cc;
	ans = 16'hf8e6;
	#20
	A = 16'hf736;
	B = 16'hea82;
	ans = 16'hf803;
	#20
	A = 16'hf0a2;
	B = 16'hec11;
	ans = 16'hf2aa;
	#20
	A = 16'h6b59;
	B = 16'h767f;
	ans = 16'h776a;
	#20
	A = 16'h75e6;
	B = 16'h6a56;
	ans = 16'h76b1;
	#20
	A = 16'hf6df;
	B = 16'hee29;
	ans = 16'hf835;
	#20
	A = 16'hf6a0;
	B = 16'hf689;
	ans = 16'hfa94;
	#20
	A = 16'h7700;
	B = 16'h71d8;
	ans = 16'h78f6;
	#20
	A = 16'hf598;
	B = 16'h6fca;
	ans = 16'hf34b;
	#20
	A = 16'hed6f;
	B = 16'h76d1;
	ans = 16'h7575;
	#20
	A = 16'heaaa;
	B = 16'h722f;
	ans = 16'h7084;
	#20
	A = 16'hf443;
	B = 16'hecfb;
	ans = 16'hf582;
	#20
	A = 16'h74ec;
	B = 16'hee9f;
	ans = 16'h7288;
	#20
	A = 16'hf2d9;
	B = 16'h755b;
	ans = 16'h6fba;
	#20
	A = 16'h7499;
	B = 16'h76d0;
	ans = 16'h79b4;
	#20
	A = 16'hf73c;
	B = 16'h76fe;
	ans = 16'he3c0;
	#20
	A = 16'h6c0e;
	B = 16'hf27f;
	ans = 16'hf078;
	#20
	A = 16'h7469;
	B = 16'h72f4;
	ans = 16'h77e3;
	#20
	A = 16'h7647;
	B = 16'h6c3c;
	ans = 16'h7756;
	#20
	A = 16'hf5c0;
	B = 16'hf464;
	ans = 16'hf912;
	#20
	A = 16'hf271;
	B = 16'h70d8;
	ans = 16'hea64;
	#20
	A = 16'hf485;
	B = 16'hf44e;
	ans = 16'hf86a;
	#20
	A = 16'h732d;
	B = 16'hf5c6;
	ans = 16'hf05f;
	#20
	A = 16'h755d;
	B = 16'h7280;
	ans = 16'h784e;
	#20
	A = 16'h696d;
	B = 16'h6f2d;
	ans = 16'h70f2;
	#20
	A = 16'hf751;
	B = 16'h7625;
	ans = 16'hecb0;
	#20
	A = 16'h7520;
	B = 16'h72fc;
	ans = 16'h784f;
	#20
	A = 16'hf64b;
	B = 16'hf4c1;
	ans = 16'hf986;
	#20
	A = 16'hf1f8;
	B = 16'hf240;
	ans = 16'hf61c;
	#20
	A = 16'hef55;
	B = 16'hf300;
	ans = 16'hf555;
	#20
	A = 16'h7101;
	B = 16'hf509;
	ans = 16'hf111;
	#20
	A = 16'hd8f4;
	B = 16'hf2fb;
	ans = 16'hf30f;
	#20
	A = 16'hf5ae;
	B = 16'he5c7;
	ans = 16'hf60a;
	#20
	A = 16'h6929;
	B = 16'h708a;
	ans = 16'h71d4;
	#20
	A = 16'h6a4d;
	B = 16'hf4bf;
	ans = 16'hf3eb;
	#20
	A = 16'h71f5;
	B = 16'hf59b;
	ans = 16'hf141;
	#20
	A = 16'hf71d;
	B = 16'h7638;
	ans = 16'heb28;
	#20
	A = 16'hef94;
	B = 16'h7387;
	ans = 16'h6f7a;
	#20
	A = 16'h74fe;
	B = 16'hf71b;
	ans = 16'hf03a;
	#20
	A = 16'hf240;
	B = 16'hf462;
	ans = 16'hf782;
	#20
	A = 16'h76d8;
	B = 16'h68dd;
	ans = 16'h7774;
	#20
	A = 16'hf677;
	B = 16'h6d2e;
	ans = 16'hf52c;
	#20
	A = 16'h7093;
	B = 16'hf50d;
	ans = 16'hf187;
	#20
	A = 16'he7bc;
	B = 16'hf56b;
	ans = 16'hf5e7;
	#20
	A = 16'h722b;
	B = 16'h76ce;
	ans = 16'h78f2;
	#20
	A = 16'heee7;
	B = 16'h5dee;
	ans = 16'hee88;
	#20
	A = 16'hf06d;
	B = 16'h70d0;
	ans = 16'h6230;
	#20
	A = 16'hf296;
	B = 16'heffe;
	ans = 16'hf54a;
	#20
	A = 16'h772f;
	B = 16'h590d;
	ans = 16'h7739;
	#20
	A = 16'hf454;
	B = 16'hf15d;
	ans = 16'hf702;
	#20
	A = 16'hf145;
	B = 16'hf496;
	ans = 16'hf738;
	#20
	A = 16'hecbb;
	B = 16'hf5f3;
	ans = 16'hf722;
	#20
	A = 16'hf55c;
	B = 16'hee81;
	ans = 16'hf6fc;
	#20
	A = 16'h6fa0;
	B = 16'h72dd;
	ans = 16'h7556;
	#20
	A = 16'hea6f;
	B = 16'he1f7;
	ans = 16'hebed;
	#20
	A = 16'hf347;
	B = 16'h74b4;
	ans = 16'h6c42;
	#20
	A = 16'h76d1;
	B = 16'h768b;
	ans = 16'h7aae;
	#20
	A = 16'heef9;
	B = 16'hf467;
	ans = 16'hf625;
	#20
	A = 16'hf104;
	B = 16'hf26b;
	ans = 16'hf5b8;
	#20
	A = 16'heb26;
	B = 16'hf127;
	ans = 16'hf2f0;
	#20
	A = 16'hdd7c;
	B = 16'hf268;
	ans = 16'hf294;
	#20
	A = 16'heefe;
	B = 16'h761c;
	ans = 16'h745c;
	#20
	A = 16'h6bdf;
	B = 16'hf4b9;
	ans = 16'hf37a;
	#20
	A = 16'hf5ad;
	B = 16'hec62;
	ans = 16'hf6c6;
	#20
	A = 16'hf1d1;
	B = 16'hf31f;
	ans = 16'hf678;
	#20
	A = 16'h76e3;
	B = 16'h7588;
	ans = 16'h7a36;
	#20
	A = 16'hf70c;
	B = 16'hf419;
	ans = 16'hf992;
	#20
	A = 16'h769b;
	B = 16'hf72a;
	ans = 16'he878;
	#20
	A = 16'hf6dc;
	B = 16'h7727;
	ans = 16'h64b0;
	#20
	A = 16'h75d1;
	B = 16'h7433;
	ans = 16'h7902;
	#20
	A = 16'h6dd6;
	B = 16'h7611;
	ans = 16'h7786;
	#20
	A = 16'h71d5;
	B = 16'hf6b8;
	ans = 16'hf39b;
	#20
	A = 16'h7355;
	B = 16'hf1a0;
	ans = 16'h6ad4;
	#20
	A = 16'hf40f;
	B = 16'h71f9;
	ans = 16'hec4a;
	#20
	A = 16'hf49e;
	B = 16'h7638;
	ans = 16'h6e68;
	#20
	A = 16'hec77;
	B = 16'hf6aa;
	ans = 16'hf7c8;
	#20
	A = 16'heff2;
	B = 16'hec62;
	ans = 16'hf22a;
	#20
	A = 16'hf47a;
	B = 16'h6c13;
	ans = 16'hf2ea;
	#20
	A = 16'h717c;
	B = 16'hf68e;
	ans = 16'hf3a0;
	#20
	A = 16'h7489;
	B = 16'hf549;
	ans = 16'hea00;
	#20
	A = 16'h7736;
	B = 16'h63b8;
	ans = 16'h7774;
	#20
	A = 16'hf57a;
	B = 16'hf4d2;
	ans = 16'hf926;
	#20
	A = 16'hf409;
	B = 16'heb97;
	ans = 16'hf4fc;
	#20
	A = 16'h6c81;
	B = 16'h6a75;
	ans = 16'h6fbc;
	#20
	A = 16'h764a;
	B = 16'hf57d;
	ans = 16'h6a68;
	#20
	A = 16'hf51a;
	B = 16'hf417;
	ans = 16'hf898;
	#20
	A = 16'h7031;
	B = 16'hf234;
	ans = 16'hec06;
	#20
	A = 16'h7218;
	B = 16'h726c;
	ans = 16'h7642;
	#20
	A = 16'h6757;
	B = 16'h75e1;
	ans = 16'h7656;
	#20
	A = 16'h721a;
	B = 16'h6cb0;
	ans = 16'h7439;
	#20
	A = 16'hf131;
	B = 16'h761b;
	ans = 16'h7305;
	#20
	A = 16'h7508;
	B = 16'he413;
	ans = 16'h74c7;
	#20
	A = 16'hf277;
	B = 16'h7522;
	ans = 16'h6f9a;
	#20
	A = 16'h7255;
	B = 16'h6fc3;
	ans = 16'h751b;
	#20
	A = 16'h7750;
	B = 16'hf5ed;
	ans = 16'h6d8c;
	#20
	A = 16'h6960;
	B = 16'hf714;
	ans = 16'hf668;
	#20
	A = 16'h6bca;
	B = 16'h719b;
	ans = 16'h738e;
	#20
	A = 16'h6539;
	B = 16'h7435;
	ans = 16'h7489;
	#20
	A = 16'hf690;
	B = 16'h7611;
	ans = 16'he7f0;
	#20
	A = 16'h763a;
	B = 16'h71d0;
	ans = 16'h7891;
	#20
	A = 16'hf677;
	B = 16'hf658;
	ans = 16'hfa68;
	#20
	A = 16'h75d5;
	B = 16'h7259;
	ans = 16'h7881;
	#20
	A = 16'h7625;
	B = 16'hf2ed;
	ans = 16'h715d;
	#20
	A = 16'h74d5;
	B = 16'hf3da;
	ans = 16'h6b40;
	#20
	A = 16'hf51d;
	B = 16'hf5c0;
	ans = 16'hf96e;
	#20
	A = 16'hf5c4;
	B = 16'hf684;
	ans = 16'hfa24;
	#20
	A = 16'he98f;
	B = 16'h6844;
	ans = 16'he12c;
	#20
	A = 16'hf5e7;
	B = 16'h73b6;
	ans = 16'hf018;
	#20
	A = 16'hdfa6;
	B = 16'h7738;
	ans = 16'h7719;
	#20
	A = 16'hf00b;
	B = 16'hf65c;
	ans = 16'hf831;
	#20
	A = 16'hf24e;
	B = 16'hf20c;
	ans = 16'hf62d;
	#20
	A = 16'h70cf;
	B = 16'h7474;
	ans = 16'h76dc;
	#20
	A = 16'hee6c;
	B = 16'hf2ed;
	ans = 16'hf512;
	#20
	A = 16'hf40e;
	B = 16'h76b7;
	ans = 16'h7152;
	#20
	A = 16'h7725;
	B = 16'h744d;
	ans = 16'h79b9;
	#20
	A = 16'h686c;
	B = 16'hf33e;
	ans = 16'hf223;
	#20
	A = 16'h73f5;
	B = 16'h7735;
	ans = 16'h7998;
	#20
	A = 16'h73f5;
	B = 16'h770d;
	ans = 16'h7984;
	#20
	A = 16'hf695;
	B = 16'hebbf;
	ans = 16'hf78d;
	#20
	A = 16'hed0e;
	B = 16'hec20;
	ans = 16'hf097;
	#20
	A = 16'h6cc8;
	B = 16'hf574;
	ans = 16'hf442;
	#20
	A = 16'h770d;
	B = 16'h7397;
	ans = 16'h796c;
	#20
	A = 16'h6c5a;
	B = 16'hf661;
	ans = 16'hf54a;
	#20
	A = 16'hf583;
	B = 16'hf2e2;
	ans = 16'hf87a;
	#20
	A = 16'hf741;
	B = 16'hf70d;
	ans = 16'hfb27;
	#20
	A = 16'h75bf;
	B = 16'he535;
	ans = 16'h756c;
	#20
	A = 16'h6a52;
	B = 16'h7739;
	ans = 16'h7802;
	#20
	A = 16'hf6ee;
	B = 16'hf410;
	ans = 16'hf97f;
	#20
	A = 16'hf74f;
	B = 16'h637c;
	ans = 16'hf713;
	#20
	A = 16'h7463;
	B = 16'hef5e;
	ans = 16'h7117;
	#20
	A = 16'h759c;
	B = 16'h6c64;
	ans = 16'h76b5;
	#20
	A = 16'hf00a;
	B = 16'hef3f;
	ans = 16'hf3aa;
	#20
	A = 16'hee7a;
	B = 16'hf628;
	ans = 16'hf7c6;
	#20
	A = 16'h762a;
	B = 16'h7529;
	ans = 16'h79aa;
	#20
	A = 16'hefd1;
	B = 16'hecfc;
	ans = 16'hf266;
	#20
	A = 16'h7509;
	B = 16'hf108;
	ans = 16'h710a;
	#20
	A = 16'hf5b2;
	B = 16'h6dea;
	ans = 16'hf438;
	#20
	A = 16'h6a83;
	B = 16'hf522;
	ans = 16'hf452;
	#20
	A = 16'hf2ab;
	B = 16'hf6ee;
	ans = 16'hf922;
	#20
	A = 16'hf29b;
	B = 16'h70b4;
	ans = 16'heb9c;
	#20
	A = 16'h7308;
	B = 16'h5c21;
	ans = 16'h7329;
	#20
	A = 16'h712a;
	B = 16'hf571;
	ans = 16'hf1b8;
	#20
	A = 16'hf0ab;
	B = 16'hf0b0;
	ans = 16'hf4ae;
	#20
	A = 16'hf072;
	B = 16'h71d1;
	ans = 16'h697c;
	#20
	A = 16'h7650;
	B = 16'hce64;
	ans = 16'h764e;
	#20
	A = 16'h7491;
	B = 16'hf5c0;
	ans = 16'hecbc;
	#20
	A = 16'heb07;
	B = 16'h761a;
	ans = 16'h7539;
	#20
	A = 16'h74dc;
	B = 16'hf62f;
	ans = 16'hed4c;
	#20
	A = 16'h7421;
	B = 16'hf0f4;
	ans = 16'h6e9c;
	#20
	A = 16'h75a6;
	B = 16'h6f5a;
	ans = 16'h777c;
	#20
	A = 16'h735e;
	B = 16'hecf9;
	ans = 16'h70e2;
	#20
	A = 16'h6344;
	B = 16'h7585;
	ans = 16'h75bf;
	#20
	A = 16'hf339;
	B = 16'h7486;
	ans = 16'h6b4c;
	#20
	A = 16'hf25a;
	B = 16'hf464;
	ans = 16'hf791;
	#20
	A = 16'hf263;
	B = 16'hf590;
	ans = 16'hf861;
	#20
	A = 16'h736d;
	B = 16'h7515;
	ans = 16'h7866;
	#20
	A = 16'h7536;
	B = 16'h7312;
	ans = 16'h7860;
	#20
	A = 16'h72a0;
	B = 16'h76d4;
	ans = 16'h7912;
	#20
	A = 16'hf671;
	B = 16'hf3f3;
	ans = 16'hf935;
	#20
	A = 16'hf5c8;
	B = 16'hf57f;
	ans = 16'hf9a4;
	#20
	A = 16'hf4ac;
	B = 16'h728f;
	ans = 16'hed92;
	#20
	A = 16'h737b;
	B = 16'hf42f;
	ans = 16'he718;
	#20
	A = 16'hf66e;
	B = 16'h746b;
	ans = 16'hf006;
	#20
	A = 16'hec70;
	B = 16'hf504;
	ans = 16'hf620;
	#20
	A = 16'h6e1b;
	B = 16'h7723;
	ans = 16'h7855;
	#20
	A = 16'he82d;
	B = 16'h7619;
	ans = 16'h7593;
	#20
	A = 16'hf24c;
	B = 16'hf408;
	ans = 16'hf72e;
	#20
	A = 16'he9bd;
	B = 16'hf47b;
	ans = 16'hf533;
	#20
	A = 16'hf15d;
	B = 16'hee34;
	ans = 16'hf43c;
	#20
	A = 16'hf61f;
	B = 16'he835;
	ans = 16'hf6a6;
	#20
	A = 16'hf490;
	B = 16'he77c;
	ans = 16'hf508;
	#20
	A = 16'hf412;
	B = 16'hf695;
	ans = 16'hf954;
	#20
	A = 16'h6cf1;
	B = 16'h764f;
	ans = 16'h778b;
	#20
	A = 16'he520;
	B = 16'h74fd;
	ans = 16'h74ab;
	#20
	A = 16'h71bc;
	B = 16'h73c6;
	ans = 16'h76c1;
	#20
	A = 16'hf521;
	B = 16'h752c;
	ans = 16'h5980;
	#20
	A = 16'h6c0b;
	B = 16'h71d0;
	ans = 16'h73d6;
	#20
	A = 16'hef9d;
	B = 16'h7544;
	ans = 16'h72ba;
	#20
	A = 16'hf332;
	B = 16'h67ba;
	ans = 16'hf23b;
	#20
	A = 16'hf4f0;
	B = 16'h7218;
	ans = 16'hef90;
	#20
	A = 16'hf5dc;
	B = 16'h75b7;
	ans = 16'he0a0;
	#20
	A = 16'hf3ae;
	B = 16'h7707;
	ans = 16'h7260;
	#20
	A = 16'hf218;
	B = 16'h728b;
	ans = 16'h6330;
	#20
	A = 16'heea8;
	B = 16'h771f;
	ans = 16'h7575;
	#20
	A = 16'h74ad;
	B = 16'h756b;
	ans = 16'h790c;
	#20
	A = 16'he8df;
	B = 16'h76fa;
	ans = 16'h765e;
	#20
	A = 16'hf4e5;
	B = 16'h6d4d;
	ans = 16'hf324;
	#20
	A = 16'hf53a;
	B = 16'hf3a1;
	ans = 16'hf885;
	#20
	A = 16'h744d;
	B = 16'hea7e;
	ans = 16'h72fa;
	#20
	A = 16'h7128;
	B = 16'h68a7;
	ans = 16'h7252;
	#20
	A = 16'h73e4;
	B = 16'h762c;
	ans = 16'h790f;
	#20
	A = 16'hede9;
	B = 16'h72de;
	ans = 16'h6fd3;
	#20
	A = 16'hf2fe;
	B = 16'h6df9;
	ans = 16'hf002;
	#20
	A = 16'hf505;
	B = 16'h6b72;
	ans = 16'hf417;
	#20
	A = 16'h71f9;
	B = 16'hf5bb;
	ans = 16'hf17d;
	#20
	A = 16'he930;
	B = 16'h76cf;
	ans = 16'h7629;
	#20
	A = 16'hefdb;
	B = 16'h7256;
	ans = 16'h6cd1;
	#20
	A = 16'hee0c;
	B = 16'h6fa8;
	ans = 16'h6670;
	#20
	A = 16'hf4ae;
	B = 16'hf482;
	ans = 16'hf898;
	#20
	A = 16'h74bf;
	B = 16'h7567;
	ans = 16'h7913;
	#20
	A = 16'h76eb;
	B = 16'hf59c;
	ans = 16'h6d3c;
	#20
	A = 16'hefd4;
	B = 16'h6daf;
	ans = 16'he84a;
	#20
	A = 16'hf58f;
	B = 16'h75b2;
	ans = 16'h6060;
	#20
	A = 16'hf327;
	B = 16'hf05e;
	ans = 16'hf5c2;
	#20
	A = 16'hebb8;
	B = 16'h7482;
	ans = 16'h7316;
	#20
	A = 16'h765d;
	B = 16'hf73a;
	ans = 16'heae8;
	#20
	A = 16'hf4ba;
	B = 16'hf610;
	ans = 16'hf965;
	#20
	A = 16'h6fe6;
	B = 16'hef69;
	ans = 16'h5fd0;
	#20
	A = 16'he4a3;
	B = 16'hf65d;
	ans = 16'hf6a7;
	#20
	A = 16'h7142;
	B = 16'h733e;
	ans = 16'h7640;
	#20
	A = 16'he9b9;
	B = 16'h76d2;
	ans = 16'h761b;
	#20
	A = 16'hf058;
	B = 16'hf4c6;
	ans = 16'hf6f2;
	#20
	A = 16'h7680;
	B = 16'h7375;
	ans = 16'h791d;
	#20
	A = 16'hee03;
	B = 16'h66ff;
	ans = 16'hec43;
	#20
	A = 16'h748d;
	B = 16'hf05a;
	ans = 16'h70c0;
	#20
	A = 16'hf663;
	B = 16'hf1df;
	ans = 16'hf8a9;
	#20
	A = 16'he8b3;
	B = 16'hf52b;
	ans = 16'hf5c1;
	#20
	A = 16'h6bc2;
	B = 16'h76de;
	ans = 16'h77d6;
	#20
	A = 16'hf1c7;
	B = 16'h75d8;
	ans = 16'h71e9;
	#20
	A = 16'h7744;
	B = 16'h76bc;
	ans = 16'h7b00;
	#20
	A = 16'hf467;
	B = 16'h5c98;
	ans = 16'hf455;
	#20
	A = 16'h7303;
	B = 16'h71d4;
	ans = 16'h766c;
	#20
	A = 16'h7551;
	B = 16'h74ab;
	ans = 16'h78fe;
	#20
	A = 16'hecb5;
	B = 16'hf323;
	ans = 16'hf4bf;
	#20
	A = 16'hf196;
	B = 16'hf1c5;
	ans = 16'hf5ae;
	#20
	A = 16'h7346;
	B = 16'hf3da;
	ans = 16'he4a0;
	#20
	A = 16'h6cf1;
	B = 16'hf1ba;
	ans = 16'hee83;
	#20
	A = 16'h75de;
	B = 16'hf059;
	ans = 16'h7363;
	#20
	A = 16'hf286;
	B = 16'he870;
	ans = 16'hf3a2;
	#20
	A = 16'hf416;
	B = 16'h7335;
	ans = 16'he7b8;
	#20
	A = 16'h76ae;
	B = 16'hf53a;
	ans = 16'h6dd0;
	#20
	A = 16'h6e79;
	B = 16'h72d3;
	ans = 16'h7508;
	#20
	A = 16'he61d;
	B = 16'h6e60;
	ans = 16'h6cd9;
	#20
	A = 16'hf1e4;
	B = 16'hf086;
	ans = 16'hf535;
	#20
	A = 16'hedee;
	B = 16'hf06d;
	ans = 16'hf364;
	#20
	A = 16'hf5e6;
	B = 16'h678d;
	ans = 16'hf56d;
	#20
	A = 16'h742a;
	B = 16'h6e8d;
	ans = 16'h75cd;
	#20
	A = 16'h7215;
	B = 16'h76c4;
	ans = 16'h78e7;
	#20
	A = 16'h748c;
	B = 16'hf20c;
	ans = 16'h6e18;
	#20
	A = 16'h7440;
	B = 16'h7499;
	ans = 16'h786c;
	#20
	A = 16'hf6f7;
	B = 16'hf66a;
	ans = 16'hfab0;
	#20
	A = 16'hf179;
	B = 16'h704c;
	ans = 16'he8b4;
	#20
	A = 16'hf5d1;
	B = 16'hef71;
	ans = 16'hf7ad;
	#20
	A = 16'h76fb;
	B = 16'he335;
	ans = 16'h76c1;
	#20
	A = 16'h716a;
	B = 16'h6b5e;
	ans = 16'h7342;
	#20
	A = 16'h6c33;
	B = 16'h7360;
	ans = 16'h74bd;
	#20
	A = 16'h601d;
	B = 16'hf6bb;
	ans = 16'hf69a;
	#20
	A = 16'hf5b2;
	B = 16'h70ff;
	ans = 16'hf265;
	#20
	A = 16'h7576;
	B = 16'h751f;
	ans = 16'h794a;
	#20
	A = 16'h6fcf;
	B = 16'h7611;
	ans = 16'h7802;
	#20
	A = 16'h7634;
	B = 16'h71d0;
	ans = 16'h788e;
	#20
	A = 16'h72e5;
	B = 16'hf566;
	ans = 16'hefce;
	#20
	A = 16'h75cb;
	B = 16'h76cc;
	ans = 16'h7a4c;
	#20
	A = 16'h6cf0;
	B = 16'h6515;
	ans = 16'h6e35;
	#20
	A = 16'h6285;
	B = 16'hf4fe;
	ans = 16'hf4ca;
	#20
	A = 16'hf23a;
	B = 16'hf168;
	ans = 16'hf5d1;
	#20
	A = 16'hf0e7;
	B = 16'h7315;
	ans = 16'h6c5c;
	#20
	A = 16'h68c1;
	B = 16'h76b9;
	ans = 16'h7751;
	#20
	A = 16'hf708;
	B = 16'h6da9;
	ans = 16'hf59e;
	#20
	A = 16'h7539;
	B = 16'h70c3;
	ans = 16'h779a;
	#20
	A = 16'hf66f;
	B = 16'h6ed9;
	ans = 16'hf4b9;
	#20
	A = 16'hf620;
	B = 16'hf6b7;
	ans = 16'hfa6c;
	#20
	A = 16'h746d;
	B = 16'hf574;
	ans = 16'hec1c;
	#20
	A = 16'hf243;
	B = 16'h76b9;
	ans = 16'h732f;
	#20
	A = 16'h70a1;
	B = 16'h6afd;
	ans = 16'h7260;
	#20
	A = 16'he493;
	B = 16'h7301;
	ans = 16'h726f;
	#20
	A = 16'hf06c;
	B = 16'h764f;
	ans = 16'h7419;
	#20
	A = 16'h72c2;
	B = 16'h705f;
	ans = 16'h7590;
	#20
	A = 16'he802;
	B = 16'h746a;
	ans = 16'h73d4;
	#20
	A = 16'h7083;
	B = 16'h7503;
	ans = 16'h7744;
	#20
	A = 16'heb84;
	B = 16'hf2e0;
	ans = 16'hf460;
	#20
	A = 16'hf61d;
	B = 16'h69f1;
	ans = 16'hf55f;
	#20
	A = 16'he2fc;
	B = 16'hef63;
	ans = 16'hf021;
	#20
	A = 16'h72da;
	B = 16'h74e5;
	ans = 16'h7829;
	#20
	A = 16'hf1af;
	B = 16'hf6f7;
	ans = 16'hf8e7;
	#20
	A = 16'h6f8f;
	B = 16'h7431;
	ans = 16'h7615;
	#20
	A = 16'hf68f;
	B = 16'h74b5;
	ans = 16'hef68;
	#20
	A = 16'hf52c;
	B = 16'hf020;
	ans = 16'hf73c;
	#20
	A = 16'h769a;
	B = 16'hf542;
	ans = 16'h6d60;
	#20
	A = 16'hf4fb;
	B = 16'h7151;
	ans = 16'hf0a5;
	#20
	A = 16'h6d61;
	B = 16'hf1db;
	ans = 16'hee55;
	#20
	A = 16'hf446;
	B = 16'hf02f;
	ans = 16'hf65e;
	#20
	A = 16'h731f;
	B = 16'h719b;
	ans = 16'h765d;
	#20
	A = 16'h6d5f;
	B = 16'h68f5;
	ans = 16'h6fda;
	#20
	A = 16'h752a;
	B = 16'h711e;
	ans = 16'h77b9;
	#20
	A = 16'hf48d;
	B = 16'hef6a;
	ans = 16'hf668;
	#20
	A = 16'h66d4;
	B = 16'h6b57;
	ans = 16'h6d60;
	#20
	A = 16'hec5f;
	B = 16'h6d1c;
	ans = 16'h61e8;
	#20
	A = 16'hf1c2;
	B = 16'hf4fc;
	ans = 16'hf7dd;
	#20
	A = 16'hf4b8;
	B = 16'h75ef;
	ans = 16'h6cdc;
	#20
	A = 16'h7422;
	B = 16'hf617;
	ans = 16'hefd4;
	#20
	A = 16'h7474;
	B = 16'h7157;
	ans = 16'h7720;
	#20
	A = 16'h7097;
	B = 16'h7111;
	ans = 16'h74d4;
	#20
	A = 16'h7601;
	B = 16'h7211;
	ans = 16'h7885;
	#20
	A = 16'hf141;
	B = 16'hf407;
	ans = 16'hf6a8;
	#20
	A = 16'hedb5;
	B = 16'h7117;
	ans = 16'h6c79;
	#20
	A = 16'hf043;
	B = 16'hed7b;
	ans = 16'hf300;
	#20
	A = 16'hf63d;
	B = 16'hf2d9;
	ans = 16'hf8d5;
	#20
	A = 16'h7574;
	B = 16'h695b;
	ans = 16'h761f;
	#20
	A = 16'hf6b5;
	B = 16'h7181;
	ans = 16'hf3e9;
	#20
	A = 16'he874;
	B = 16'h7071;
	ans = 16'h6ea8;
	#20
	A = 16'h6f0c;
	B = 16'hf113;
	ans = 16'hea34;
	#20
	A = 16'h75f3;
	B = 16'hf572;
	ans = 16'h6808;
	#20
	A = 16'h6c06;
	B = 16'h75fa;
	ans = 16'h76fc;
	#20
	A = 16'hf52e;
	B = 16'hf650;
	ans = 16'hf9bf;
	#20
	A = 16'hf58d;
	B = 16'hf711;
	ans = 16'hfa4f;
	#20
	A = 16'hd4c7;
	B = 16'h730f;
	ans = 16'h7305;
	#20
	A = 16'hebc5;
	B = 16'h7625;
	ans = 16'h752c;
	#20
	A = 16'h6b60;
	B = 16'hf655;
	ans = 16'hf569;
	#20
	A = 16'h7235;
	B = 16'hf5e6;
	ans = 16'hf197;
	#20
	A = 16'hf11c;
	B = 16'h7746;
	ans = 16'h74b8;
	#20
	A = 16'h73a9;
	B = 16'h7646;
	ans = 16'h790d;
	#20
	A = 16'hf5c9;
	B = 16'hf1da;
	ans = 16'hf85b;
	#20
	A = 16'h733d;
	B = 16'h744d;
	ans = 16'h77ec;
	#20
	A = 16'h753e;
	B = 16'h752c;
	ans = 16'h7935;
	#20
	A = 16'he90d;
	B = 16'hf47e;
	ans = 16'hf520;
	#20
	A = 16'h75da;
	B = 16'h6ef5;
	ans = 16'h7797;
	#20
	A = 16'hf2ca;
	B = 16'h7505;
	ans = 16'h6e80;
	#20
	A = 16'hec43;
	B = 16'hf72d;
	ans = 16'hf81f;
	#20
	A = 16'hf6c1;
	B = 16'hed90;
	ans = 16'hf812;
	#20
	A = 16'hf480;
	B = 16'h6c0d;
	ans = 16'hf2fa;
	#20
	A = 16'hf691;
	B = 16'h7681;
	ans = 16'hdc00;
	#20
	A = 16'h7696;
	B = 16'hf439;
	ans = 16'h70ba;
	#20
	A = 16'hec29;
	B = 16'hf6d7;
	ans = 16'hf7e1;
	#20
	A = 16'hebfd;
	B = 16'h74d3;
	ans = 16'h73a7;
	#20
	A = 16'h7109;
	B = 16'h6e31;
	ans = 16'h7411;
	#20
	A = 16'h6d43;
	B = 16'hed87;
	ans = 16'hdc40;
	#20
	A = 16'hdd70;
	B = 16'hf6de;
	ans = 16'hf6f4;
	#20
	A = 16'h6ee4;
	B = 16'h6fd1;
	ans = 16'h735a;
	#20
	A = 16'h71f9;
	B = 16'h7526;
	ans = 16'h7811;
	#20
	A = 16'hf09d;
	B = 16'h7312;
	ans = 16'h6cea;
	#20
	A = 16'hf597;
	B = 16'hf5ea;
	ans = 16'hf9c0;
	#20
	A = 16'hf71d;
	B = 16'h763f;
	ans = 16'heaf0;
	#20
	A = 16'he911;
	B = 16'he987;
	ans = 16'hed4c;
	#20
	A = 16'h7697;
	B = 16'hf1b8;
	ans = 16'h7376;
	#20
	A = 16'h767f;
	B = 16'h70c9;
	ans = 16'h7872;
	#20
	A = 16'h74bb;
	B = 16'h7181;
	ans = 16'h777c;
	#20
	A = 16'hf2d1;
	B = 16'he52c;
	ans = 16'hf376;
	#20
	A = 16'hea5a;
	B = 16'hdda0;
	ans = 16'heb0e;
	#20
	A = 16'hf559;
	B = 16'hf602;
	ans = 16'hf9ae;
	#20
	A = 16'hf25b;
	B = 16'hf5ad;
	ans = 16'hf86d;
	#20
	A = 16'h6e9c;
	B = 16'h6f3f;
	ans = 16'h72ee;
	#20
	A = 16'hf076;
	B = 16'hf61c;
	ans = 16'hf82c;
	#20
	A = 16'h7531;
	B = 16'h75c3;
	ans = 16'h797a;
	#20
	A = 16'heed2;
	B = 16'hf425;
	ans = 16'hf5da;
	#20
	A = 16'hf1ac;
	B = 16'h747e;
	ans = 16'h6ea0;
	#20
	A = 16'h7619;
	B = 16'hf29e;
	ans = 16'h7194;
	#20
	A = 16'h774b;
	B = 16'hf715;
	ans = 16'h62c0;
	#20
	A = 16'heee7;
	B = 16'hf5a3;
	ans = 16'hf75d;
	#20
	A = 16'hf45b;
	B = 16'hf435;
	ans = 16'hf848;
	#20
	A = 16'h7703;
	B = 16'hf616;
	ans = 16'h6b68;
	#20
	A = 16'hf1c7;
	B = 16'h773f;
	ans = 16'h745c;
	#20
	A = 16'h6bd4;
	B = 16'hf231;
	ans = 16'hf03c;
	#20
	A = 16'h6e5a;
	B = 16'h7334;
	ans = 16'h7530;
	#20
	A = 16'he8e9;
	B = 16'h71dc;
	ans = 16'h70a2;
	#20
	A = 16'h7515;
	B = 16'hf72a;
	ans = 16'hf02a;
	#20
	A = 16'he1a0;
	B = 16'h6e66;
	ans = 16'h6db2;
	#20
	A = 16'h6fc2;
	B = 16'h61b4;
	ans = 16'h703c;
	#20
	A = 16'h71e2;
	B = 16'he4a4;
	ans = 16'h714e;
	#20
	A = 16'h74f0;
	B = 16'hf5c8;
	ans = 16'heac0;
	#20
	A = 16'h6789;
	B = 16'hf2be;
	ans = 16'hf1cd;
	#20
	A = 16'hf3ef;
	B = 16'hf452;
	ans = 16'hf825;
	#20
	A = 16'hf396;
	B = 16'h733c;
	ans = 16'he1a0;
	#20
	A = 16'hf419;
	B = 16'h74d4;
	ans = 16'h69d8;
	#20
	A = 16'h722c;
	B = 16'hf63c;
	ans = 16'hf24c;
	#20
	A = 16'hf6fe;
	B = 16'h763b;
	ans = 16'hea18;
	#20
	A = 16'h7600;
	B = 16'h771f;
	ans = 16'h7a90;
	#20
	A = 16'h7462;
	B = 16'hf07d;
	ans = 16'h7047;
	#20
	A = 16'h74ae;
	B = 16'h700e;
	ans = 16'h76b5;
	#20
	A = 16'hf3b5;
	B = 16'hefd3;
	ans = 16'hf5cf;
	#20
	A = 16'h720f;
	B = 16'hf56a;
	ans = 16'hf0c5;
	#20
	A = 16'h6e13;
	B = 16'h7733;
	ans = 16'h785c;
	#20
	A = 16'h7187;
	B = 16'hf68a;
	ans = 16'hf38d;
	#20
	A = 16'hf0c0;
	B = 16'hf536;
	ans = 16'hf796;
	#20
	A = 16'hf49c;
	B = 16'hf0b5;
	ans = 16'hf6f6;
	#20
	A = 16'hf1a7;
	B = 16'h76c1;
	ans = 16'h73db;
	#20
	A = 16'hf439;
	B = 16'hf464;
	ans = 16'hf84e;
	#20
	A = 16'h7524;
	B = 16'hf50d;
	ans = 16'h5dc0;
	#20
	A = 16'h6fa6;
	B = 16'hf596;
	ans = 16'hf359;
	#20
	A = 16'he907;
	B = 16'hf2b8;
	ans = 16'hf3fa;
	#20
	A = 16'h7563;
	B = 16'hf1a0;
	ans = 16'h7126;
	#20
	A = 16'h7684;
	B = 16'h6bc1;
	ans = 16'h777c;
	#20
	A = 16'hf5b8;
	B = 16'hf497;
	ans = 16'hf928;
	#20
	A = 16'he94a;
	B = 16'hf6c5;
	ans = 16'hf76e;
	#20
	A = 16'h7031;
	B = 16'h704a;
	ans = 16'h743e;
	#20
	A = 16'hf576;
	B = 16'h6fa4;
	ans = 16'hf31a;
	#20
	A = 16'h6173;
	B = 16'h7548;
	ans = 16'h7574;
	#20
	A = 16'hf15c;
	B = 16'hf5fb;
	ans = 16'hf854;
	#20
	A = 16'h73c4;
	B = 16'hf633;
	ans = 16'hf0a2;
	#20
	A = 16'h7425;
	B = 16'hedeb;
	ans = 16'h7154;
	#20
	A = 16'h765a;
	B = 16'hf4fa;
	ans = 16'h6d80;
	#20
	A = 16'h7644;
	B = 16'hf749;
	ans = 16'hec14;
	#20
	A = 16'h76f8;
	B = 16'h7447;
	ans = 16'h79a0;
	#20
	A = 16'h70ba;
	B = 16'h75a4;
	ans = 16'h7800;
	#20
	A = 16'h6e53;
	B = 16'he897;
	ans = 16'h6c08;
	#20
	A = 16'h666a;
	B = 16'hf3a0;
	ans = 16'hf2d3;
	#20
	A = 16'h7468;
	B = 16'hf1cc;
	ans = 16'h6e08;
	#20
	A = 16'hf5b5;
	B = 16'he9b0;
	ans = 16'hf66b;
	#20
	A = 16'hf42d;
	B = 16'h732a;
	ans = 16'he8c0;
	#20
	A = 16'hf727;
	B = 16'hed14;
	ans = 16'hf836;
	#20
	A = 16'hf540;
	B = 16'hf06a;
	ans = 16'hf775;
	#20
	A = 16'h772d;
	B = 16'hf2d8;
	ans = 16'h7382;
	#20
	A = 16'hf505;
	B = 16'h6cd3;
	ans = 16'hf3a0;
	#20
	A = 16'hf519;
	B = 16'hef3b;
	ans = 16'hf6e8;
	#20
	A = 16'hf611;
	B = 16'hf3be;
	ans = 16'hf8f8;
	#20
	A = 16'h757e;
	B = 16'hf6cf;
	ans = 16'hed44;
	#20
	A = 16'hf72d;
	B = 16'hf4b1;
	ans = 16'hf9ef;
	#20
	A = 16'he3e3;
	B = 16'h76d8;
	ans = 16'h7699;
	#20
	A = 16'h76a3;
	B = 16'h7178;
	ans = 16'h78b0;
	#20
	A = 16'hf10b;
	B = 16'h6af3;
	ans = 16'hee9c;
	#20
	A = 16'h7236;
	B = 16'h70dd;
	ans = 16'h758a;
	#20
	A = 16'hf641;
	B = 16'h622d;
	ans = 16'hf610;
	#20
	A = 16'h6ddd;
	B = 16'hf47f;
	ans = 16'hf210;
	#20
	A = 16'hf3db;
	B = 16'h7415;
	ans = 16'h60f0;
	#20
	A = 16'h6dce;
	B = 16'hf081;
	ans = 16'hea68;
	#20
	A = 16'hf40b;
	B = 16'h7438;
	ans = 16'h61a0;
	#20
	A = 16'hebd9;
	B = 16'he961;
	ans = 16'hee9d;
	#20
	A = 16'hf6c6;
	B = 16'h7242;
	ans = 16'hf34a;
	#20
	A = 16'hf3ca;
	B = 16'h6dd5;
	ans = 16'hf0e0;
	#20
	A = 16'hf3ac;
	B = 16'heca4;
	ans = 16'hf4ff;
	#20
	A = 16'hf31a;
	B = 16'hf017;
	ans = 16'hf598;
	#20
	A = 16'h5e85;
	B = 16'hefe4;
	ans = 16'hef7c;
	#20
	A = 16'h7524;
	B = 16'hf4d7;
	ans = 16'h64d0;
	#20
	A = 16'h6dee;
	B = 16'hf5e1;
	ans = 16'hf466;
	#20
	A = 16'he969;
	B = 16'h76da;
	ans = 16'h762d;
	#20
	A = 16'h713e;
	B = 16'h7454;
	ans = 16'h76f3;
	#20
	A = 16'h68f5;
	B = 16'h733f;
	ans = 16'h743e;
	#20
	A = 16'hf043;
	B = 16'hf4c6;
	ans = 16'hf6e8;
	#20
	A = 16'hf493;
	B = 16'hf43b;
	ans = 16'hf867;
	#20
	A = 16'h7258;
	B = 16'h681b;
	ans = 16'h735f;
	#20
	A = 16'h7438;
	B = 16'hf542;
	ans = 16'hec28;
	#20
	A = 16'hf481;
	B = 16'h7001;
	ans = 16'hf101;
	#20
	A = 16'h6495;
	B = 16'hf48d;
	ans = 16'hf444;
	#20
	A = 16'hf1d2;
	B = 16'h7076;
	ans = 16'he970;
	#20
	A = 16'h70d6;
	B = 16'hef6f;
	ans = 16'h687a;
	#20
	A = 16'hf404;
	B = 16'hf6fa;
	ans = 16'hf97f;
	#20
	A = 16'h752b;
	B = 16'hf0ae;
	ans = 16'h71a8;
	#20
	A = 16'hf530;
	B = 16'h701a;
	ans = 16'hf246;
	#20
	A = 16'hc7cb;
	B = 16'hed6b;
	ans = 16'hed6d;
	#20
	A = 16'h750e;
	B = 16'heb0e;
	ans = 16'h742c;
	#20
	A = 16'hf3f6;
	B = 16'hf54a;
	ans = 16'hf8a2;
	#20
	A = 16'hf055;
	B = 16'h73da;
	ans = 16'h6f0a;
	#20
	A = 16'hea1a;
	B = 16'h6d26;
	ans = 16'h6832;
	#20
	A = 16'h6458;
	B = 16'hf579;
	ans = 16'hf534;
	#20
	A = 16'hf40e;
	B = 16'hf304;
	ans = 16'hf790;
	#20
	A = 16'he67f;
	B = 16'hf618;
	ans = 16'hf680;
	#20
	A = 16'hf5c2;
	B = 16'h6d28;
	ans = 16'hf478;
	#20
	A = 16'hf684;
	B = 16'hf340;
	ans = 16'hf912;
	#20
	A = 16'h75b7;
	B = 16'h6495;
	ans = 16'h7600;
	#20
	A = 16'hf732;
	B = 16'h6eb3;
	ans = 16'hf585;
	#20
	A = 16'hf5e8;
	B = 16'h748f;
	ans = 16'hed64;
	#20
	A = 16'hf48b;
	B = 16'hf62e;
	ans = 16'hf95c;
	#20
	A = 16'hf57f;
	B = 16'h748d;
	ans = 16'heb90;
	#20
	A = 16'hf200;
	B = 16'h74ac;
	ans = 16'h6eb0;
	#20
	A = 16'hf69e;
	B = 16'h6339;
	ans = 16'hf664;
	#20
	A = 16'heb92;
	B = 16'h71e6;
	ans = 16'h7002;
	#20
	A = 16'h6978;
	B = 16'hf4d3;
	ans = 16'hf424;
	#20
	A = 16'h6595;
	B = 16'hf6e3;
	ans = 16'hf68a;
	#20
	A = 16'h702a;
	B = 16'h752d;
	ans = 16'h7742;
	#20
	A = 16'hf309;
	B = 16'h74dd;
	ans = 16'h6d62;
	#20
	A = 16'h72a2;
	B = 16'hf239;
	ans = 16'h6290;
	#20
	A = 16'h69df;
	B = 16'h75f9;
	ans = 16'h76b5;
	#20
	A = 16'h71f5;
	B = 16'h6580;
	ans = 16'h72a5;
	#20
	A = 16'h72a2;
	B = 16'h7022;
	ans = 16'h7562;
	#20
	A = 16'hed8c;
	B = 16'h684f;
	ans = 16'heac9;
	#20
	A = 16'hefd3;
	B = 16'h768b;
	ans = 16'h7496;
	#20
	A = 16'h7405;
	B = 16'h74ba;
	ans = 16'h7860;
	#20
	A = 16'hea04;
	B = 16'h72c8;
	ans = 16'h7147;
	#20
	A = 16'hf22b;
	B = 16'hf58f;
	ans = 16'hf852;
	#20
	A = 16'hf4f7;
	B = 16'h6c75;
	ans = 16'hf3b4;
	#20
	A = 16'hf4f7;
	B = 16'h74e7;
	ans = 16'hdc00;
	#20
	A = 16'h6ca8;
	B = 16'h74b9;
	ans = 16'h75e3;
	#20
	A = 16'he902;
	B = 16'h7415;
	ans = 16'h72ea;
	#20
	A = 16'hf081;
	B = 16'hf2fb;
	ans = 16'hf5be;
	#20
	A = 16'hf382;
	B = 16'h75fe;
	ans = 16'h707a;
	#20
	A = 16'hedef;
	B = 16'hf298;
	ans = 16'hf4c8;
	#20
	A = 16'hf5c4;
	B = 16'h7723;
	ans = 16'h6d7c;
	#20
	A = 16'hf660;
	B = 16'h76d2;
	ans = 16'h6720;
	#20
	A = 16'hf160;
	B = 16'hf1f0;
	ans = 16'hf5a8;
	#20
	A = 16'he7e7;
	B = 16'hf33b;
	ans = 16'hf41c;
	#20
	A = 16'hf0e4;
	B = 16'hf3f8;
	ans = 16'hf66e;
	#20
	A = 16'hecd6;
	B = 16'hf6a1;
	ans = 16'hf7d6;
	#20
	A = 16'hef64;
	B = 16'hf5f5;
	ans = 16'hf7ce;
	#20
	A = 16'h71b9;
	B = 16'hf69c;
	ans = 16'hf37f;
	#20
	A = 16'h7080;
	B = 16'hebda;
	ans = 16'h6d13;
	#20
	A = 16'h7440;
	B = 16'hf334;
	ans = 16'h6930;
	#20
	A = 16'he8db;
	B = 16'h6b81;
	ans = 16'h654c;
	#20
	A = 16'hee48;
	B = 16'h7747;
	ans = 16'h75b5;
	#20
	A = 16'h7747;
	B = 16'hf643;
	ans = 16'h6c10;
	#20
	A = 16'h6072;
	B = 16'h6f21;
	ans = 16'h6faf;
	#20
	A = 16'h6819;
	B = 16'he227;
	ans = 16'h651e;
	#20
	A = 16'h7554;
	B = 16'hf538;
	ans = 16'h5f00;
	#20
	A = 16'hf658;
	B = 16'hf69e;
	ans = 16'hfa7b;
	#20
	A = 16'hf4f3;
	B = 16'h70ff;
	ans = 16'hf0e7;
	#20
	A = 16'h66d7;
	B = 16'h76b6;
	ans = 16'h7723;
	#20
	A = 16'h743b;
	B = 16'h6935;
	ans = 16'h74e2;
	#20
	A = 16'hf4a9;
	B = 16'heeb0;
	ans = 16'hf655;
	#20
	A = 16'hea43;
	B = 16'hf737;
	ans = 16'hf7ff;
	#20
	A = 16'h700b;
	B = 16'h740a;
	ans = 16'h7610;
	#20
	A = 16'h6a15;
	B = 16'h688a;
	ans = 16'h6d50;
	#20
	A = 16'h774e;
	B = 16'hf06e;
	ans = 16'h7517;
	#20
	A = 16'hf649;
	B = 16'h6a5d;
	ans = 16'hf57d;
	#20
	A = 16'hf6fe;
	B = 16'hf60b;
	ans = 16'hfa84;
	#20
	A = 16'h752d;
	B = 16'hf24a;
	ans = 16'h7010;
	#20
	A = 16'h768b;
	B = 16'h67c3;
	ans = 16'h7707;
	#20
	A = 16'hf528;
	B = 16'h750b;
	ans = 16'hdf40;
	#20
	A = 16'hf5ce;
	B = 16'hf5e7;
	ans = 16'hf9da;
	#20
	A = 16'hf2c7;
	B = 16'h7188;
	ans = 16'he8fc;
	#20
	A = 16'h7493;
	B = 16'hee7f;
	ans = 16'h71e6;
	#20
	A = 16'hf34b;
	B = 16'h7694;
	ans = 16'h71dd;
	#20
	A = 16'hf169;
	B = 16'h6e8f;
	ans = 16'hec43;
	#20
	A = 16'h71d8;
	B = 16'h766c;
	ans = 16'h78ac;
	#20
	A = 16'h751b;
	B = 16'h6457;
	ans = 16'h7560;
	#20
	A = 16'hf523;
	B = 16'hf6ed;
	ans = 16'hfa08;
	#20
	A = 16'h7717;
	B = 16'h63ec;
	ans = 16'h7756;
	#20
	A = 16'hec98;
	B = 16'hef20;
	ans = 16'hf1dc;
	#20
	A = 16'h6a35;
	B = 16'hf525;
	ans = 16'hf45e;
	#20
	A = 16'he7d8;
	B = 16'h731b;
	ans = 16'h7220;
	#20
	A = 16'hf437;
	B = 16'h6c24;
	ans = 16'hf25c;
	#20
	A = 16'h7088;
	B = 16'hedcf;
	ans = 16'h6a82;
	#20
	A = 16'h76c5;
	B = 16'hf732;
	ans = 16'he6d0;
	#20
	A = 16'hf027;
	B = 16'hee1e;
	ans = 16'hf336;
	#20
	A = 16'hf430;
	B = 16'h6e42;
	ans = 16'hf13f;
	#20
	A = 16'h71db;
	B = 16'hea61;
	ans = 16'h7043;
	#20
	A = 16'hf2bd;
	B = 16'h6c85;
	ans = 16'hf07a;
	#20
	A = 16'he939;
	B = 16'h6fe6;
	ans = 16'h6d4a;
	#20
	A = 16'h7719;
	B = 16'h664c;
	ans = 16'h777e;
	#20
	A = 16'h62c8;
	B = 16'h7385;
	ans = 16'h73f2;
	#20
	A = 16'hf5c0;
	B = 16'h73c1;
	ans = 16'hef7e;
	#20
	A = 16'hf0ff;
	B = 16'h7528;
	ans = 16'h7151;
	#20
	A = 16'h76f5;
	B = 16'hec4f;
	ans = 16'h75e1;
	#20
	A = 16'h6678;
	B = 16'h68e6;
	ans = 16'h6c11;
	#20
	A = 16'hf69e;
	B = 16'h7485;
	ans = 16'hf032;
	#20
	A = 16'hf60f;
	B = 16'h72be;
	ans = 16'hf160;
	#20
	A = 16'hee44;
	B = 16'h72c8;
	ans = 16'h6f4c;
	#20
	A = 16'hf460;
	B = 16'h6b6f;
	ans = 16'hf2e4;
	#20
	A = 16'hee8f;
	B = 16'hf146;
	ans = 16'hf447;
	#20
	A = 16'h721b;
	B = 16'hf6bd;
	ans = 16'hf35f;
	#20
	A = 16'hf4a3;
	B = 16'h7228;
	ans = 16'hee3c;
	#20
	A = 16'hf682;
	B = 16'h774d;
	ans = 16'h6a58;
	#20
	A = 16'h76be;
	B = 16'h737d;
	ans = 16'h793e;
	#20
	A = 16'heb04;
	B = 16'h6a21;
	ans = 16'hdf18;
	#20
	A = 16'hf114;
	B = 16'hf325;
	ans = 16'hf61c;
	#20
	A = 16'hf3f3;
	B = 16'hf148;
	ans = 16'hf69e;
	#20
	A = 16'hdee9;
	B = 16'hf531;
	ans = 16'hf54d;
	#20
	A = 16'h7139;
	B = 16'hf488;
	ans = 16'hefae;
	#20
	A = 16'hf42e;
	B = 16'heab5;
	ans = 16'hf505;
	#20
	A = 16'h72d7;
	B = 16'h7456;
	ans = 16'h77c2;
	#20
	A = 16'h72f5;
	B = 16'h6ff2;
	ans = 16'h7577;
	#20
	A = 16'h7723;
	B = 16'h70a6;
	ans = 16'h78bb;
	#20
	A = 16'h7648;
	B = 16'hf283;
	ans = 16'h720d;
	#20
	A = 16'h70e2;
	B = 16'hf6c5;
	ans = 16'hf454;
	#20
	A = 16'hea82;
	B = 16'hf691;
	ans = 16'hf761;
	#20
	A = 16'hf13f;
	B = 16'hf622;
	ans = 16'hf861;
	#20
	A = 16'h7029;
	B = 16'hf4f1;
	ans = 16'hf1b9;
	#20
	A = 16'h6719;
	B = 16'h73c3;
	ans = 16'h7453;
	#20
	A = 16'h7438;
	B = 16'h7558;
	ans = 16'h78c8;
	#20
	A = 16'hf0f1;
	B = 16'h774b;
	ans = 16'h74d2;
	#20
	A = 16'hf0af;
	B = 16'he006;
	ans = 16'hf0ef;
	#20
	A = 16'h7083;
	B = 16'hf1e9;
	ans = 16'he998;
	#20
	A = 16'h7684;
	B = 16'hf157;
	ans = 16'h73b1;
	#20
	A = 16'h7542;
	B = 16'h74e7;
	ans = 16'h7914;
	#20
	A = 16'h6c98;
	B = 16'hef67;
	ans = 16'he99e;
	#20
	A = 16'hf690;
	B = 16'heed4;
	ans = 16'hf822;
	#20
	A = 16'h7135;
	B = 16'hf446;
	ans = 16'heeae;
	#20
	A = 16'h6f99;
	B = 16'hefcc;
	ans = 16'hda60;
	#20
	A = 16'hf1db;
	B = 16'h736e;
	ans = 16'h6a4c;
	#20
	A = 16'h704c;
	B = 16'hf223;
	ans = 16'heb5c;
	#20
	A = 16'h72dd;
	B = 16'h75b9;
	ans = 16'h7894;
	#20
	A = 16'hf2af;
	B = 16'h6a9f;
	ans = 16'hf107;
	#20
	A = 16'hecd7;
	B = 16'hea3e;
	ans = 16'heff6;
	#20
	A = 16'h70ba;
	B = 16'h67f7;
	ans = 16'h71b9;
	#20
	A = 16'h7714;
	B = 16'h7392;
	ans = 16'h796e;
	#20
	A = 16'hec41;
	B = 16'h72ec;
	ans = 16'h70cc;
	#20
	A = 16'hecd9;
	B = 16'hf704;
	ans = 16'hf81d;
	#20
	A = 16'h7083;
	B = 16'hf094;
	ans = 16'hd840;
	#20
	A = 16'h70be;
	B = 16'hf4c9;
	ans = 16'hf0d4;
	#20
	A = 16'hf516;
	B = 16'h7069;
	ans = 16'hf1c3;
	#20
	A = 16'h761d;
	B = 16'hed74;
	ans = 16'h74c0;
	#20
	A = 16'h6e67;
	B = 16'he95f;
	ans = 16'h6b6f;
	#20
	A = 16'hf37d;
	B = 16'h753d;
	ans = 16'h6dfa;
	#20
	A = 16'h7244;
	B = 16'h7618;
	ans = 16'h789d;
	#20
	A = 16'h7472;
	B = 16'hf554;
	ans = 16'heb10;
	#20
	A = 16'he6b8;
	B = 16'h756a;
	ans = 16'h74fe;
	#20
	A = 16'h75ca;
	B = 16'h74bc;
	ans = 16'h7943;
	#20
	A = 16'hf25c;
	B = 16'hf4f8;
	ans = 16'hf813;
	#20
	A = 16'h7325;
	B = 16'h7564;
	ans = 16'h787b;
	#20
	A = 16'hf0d8;
	B = 16'h74ab;
	ans = 16'h707e;
	#20
	A = 16'h769b;
	B = 16'h7409;
	ans = 16'h7952;
	#20
	A = 16'h7464;
	B = 16'h6066;
	ans = 16'h7487;
	#20
	A = 16'h703f;
	B = 16'hf207;
	ans = 16'heb20;
	#20
	A = 16'h6932;
	B = 16'h7676;
	ans = 16'h771c;
	#20
	A = 16'h7595;
	B = 16'hf31f;
	ans = 16'h700b;
	#20
	A = 16'h731a;
	B = 16'h6f8b;
	ans = 16'h7570;
	#20
	A = 16'hf37b;
	B = 16'h6de4;
	ans = 16'hf089;
	#20
	A = 16'hf516;
	B = 16'hee3a;
	ans = 16'hf6a4;
	#20
	A = 16'h7749;
	B = 16'h7430;
	ans = 16'h79bc;
	#20
	A = 16'h7534;
	B = 16'h74c5;
	ans = 16'h78fc;
	#20
	A = 16'h72b1;
	B = 16'h7712;
	ans = 16'h7935;
	#20
	A = 16'hf01e;
	B = 16'hf645;
	ans = 16'hf82a;
	#20
	A = 16'hf40c;
	B = 16'hf439;
	ans = 16'hf822;
	#20
	A = 16'hf610;
	B = 16'hf14f;
	ans = 16'hf85c;
	#20
	A = 16'h7649;
	B = 16'he033;
	ans = 16'h7627;
	#20
	A = 16'h7654;
	B = 16'hf623;
	ans = 16'h6220;
	#20
	A = 16'hf597;
	B = 16'hf076;
	ans = 16'hf7d2;
	#20
	A = 16'h7585;
	B = 16'h724e;
	ans = 16'h7856;
	#20
	A = 16'h7438;
	B = 16'h6a2c;
	ans = 16'h74fe;
	#20
	A = 16'hf61f;
	B = 16'hf650;
	ans = 16'hfa38;
	#20
	A = 16'hf21b;
	B = 16'he282;
	ans = 16'hf283;
	#20
	A = 16'h7363;
	B = 16'hf56e;
	ans = 16'heef2;
	#20
	A = 16'h7590;
	B = 16'hf283;
	ans = 16'h709d;
	#20
	A = 16'hf4e8;
	B = 16'hf3a0;
	ans = 16'hf85c;
	#20
	A = 16'hf229;
	B = 16'hf511;
	ans = 16'hf813;
	#20
	A = 16'hf666;
	B = 16'hefb1;
	ans = 16'hf829;
	#20
	A = 16'h6f42;
	B = 16'h73be;
	ans = 16'h75b0;
	#20
	A = 16'h7282;
	B = 16'hf6cb;
	ans = 16'hf314;
	#20
	A = 16'h6f3a;
	B = 16'hed47;
	ans = 16'h67cc;
	#20
	A = 16'hf2b3;
	B = 16'hf59e;
	ans = 16'hf87c;
	#20
	A = 16'h71f6;
	B = 16'hf6c0;
	ans = 16'hf38a;
	#20
	A = 16'h725d;
	B = 16'hf2c4;
	ans = 16'he270;
	#20
	A = 16'hf573;
	B = 16'hef2f;
	ans = 16'hf73f;
	#20
	A = 16'h76aa;
	B = 16'h6e15;
	ans = 16'h7818;
	#20
	A = 16'hf3c9;
	B = 16'hf221;
	ans = 16'hf6f5;
	#20
	A = 16'he3d4;
	B = 16'h6815;
	ans = 16'h6440;
	#20
	A = 16'hf448;
	B = 16'h6ba3;
	ans = 16'hf2a7;
	#20
	A = 16'h7613;
	B = 16'h6e4f;
	ans = 16'h77a7;
	#20
	A = 16'heac6;
	B = 16'hf60b;
	ans = 16'hf6e4;
	#20
	A = 16'h729f;
	B = 16'hf6e8;
	ans = 16'hf331;
	#20
	A = 16'hf581;
	B = 16'hf6b3;
	ans = 16'hfa1a;
	#20
	A = 16'hf74b;
	B = 16'hea0c;
	ans = 16'hf806;
	#20
	A = 16'hf059;
	B = 16'h75de;
	ans = 16'h7363;
	#20
	A = 16'hdf42;
	B = 16'hf66a;
	ans = 16'hf687;
	#20
	A = 16'h7615;
	B = 16'h7686;
	ans = 16'h7a4e;
	#20
	A = 16'h748b;
	B = 16'hf513;
	ans = 16'he840;
	#20
	A = 16'hf4e5;
	B = 16'heefe;
	ans = 16'hf6a4;
	#20
	A = 16'he54b;
	B = 16'h6fb0;
	ans = 16'h6e5d;
	#20
	A = 16'hed30;
	B = 16'h7482;
	ans = 16'h726c;
	#20
	A = 16'h6339;
	B = 16'hf6a2;
	ans = 16'hf668;
	#20
	A = 16'h72b7;
	B = 16'hf71d;
	ans = 16'hf383;
	#20
	A = 16'hf48c;
	B = 16'hf0b8;
	ans = 16'hf6e8;
	#20
	A = 16'h6f9c;
	B = 16'hf1d6;
	ans = 16'hec10;
	#20
	A = 16'h7428;
	B = 16'hed38;
	ans = 16'h71b4;
	#20
	A = 16'hf689;
	B = 16'hf735;
	ans = 16'hfadf;
	#20
	A = 16'h6ef2;
	B = 16'h661c;
	ans = 16'h703c;
	#20
	A = 16'h6d1b;
	B = 16'hf6ba;
	ans = 16'hf573;
	#20
	A = 16'h720c;
	B = 16'hf5fb;
	ans = 16'hf1ea;
	#20
	A = 16'hf42b;
	B = 16'he83c;
	ans = 16'hf4b2;
	#20
	A = 16'h760d;
	B = 16'h7580;
	ans = 16'h79c6;
	#20
	A = 16'hedd4;
	B = 16'h5a24;
	ans = 16'heda3;
	#20
	A = 16'hedc6;
	B = 16'hf4c0;
	ans = 16'hf632;
	#20
	A = 16'hf022;
	B = 16'h68db;
	ans = 16'hedd6;
	#20
	A = 16'h705b;
	B = 16'hf534;
	ans = 16'hf20d;
	#20
	A = 16'hed4e;
	B = 16'hef7c;
	ans = 16'hf265;
	#20
	A = 16'hf215;
	B = 16'h7395;
	ans = 16'h6a00;
	#20
	A = 16'h7488;
	B = 16'h6f1d;
	ans = 16'h764f;
	#20
	A = 16'h71bd;
	B = 16'h75d2;
	ans = 16'h7858;
	#20
	A = 16'hf0ec;
	B = 16'h70a8;
	ans = 16'he040;
	#20
	A = 16'hebd7;
	B = 16'hf660;
	ans = 16'hf75b;
	#20
	A = 16'hf4f1;
	B = 16'hec14;
	ans = 16'hf5f6;
	#20
	A = 16'heccc;
	B = 16'hf4dc;
	ans = 16'hf60f;
	#20
	A = 16'h6b1a;
	B = 16'hf200;
	ans = 16'hf03a;
	#20
	A = 16'hf6da;
	B = 16'h7564;
	ans = 16'hedd8;
	#20
	A = 16'hf067;
	B = 16'hecf6;
	ans = 16'hf2e2;
	#20
	A = 16'hf09a;
	B = 16'h7530;
	ans = 16'h71c6;
	#20
	A = 16'hf051;
	B = 16'hf41f;
	ans = 16'hf648;
	#20
	A = 16'hf17c;
	B = 16'he842;
	ans = 16'hf28c;
	#20
	A = 16'h6bff;
	B = 16'h6072;
	ans = 16'h6c8e;
	#20
	A = 16'h7585;
	B = 16'hef72;
	ans = 16'h7351;
	#20
	A = 16'h717e;
	B = 16'h6d7e;
	ans = 16'h741e;
	#20
	A = 16'hf625;
	B = 16'hf53f;
	ans = 16'hf9b2;
	#20
	A = 16'hf6c1;
	B = 16'hf52e;
	ans = 16'hf9f8;
	#20
	A = 16'heb5f;
	B = 16'he70f;
	ans = 16'hed73;
	#20
	A = 16'h7470;
	B = 16'h7517;
	ans = 16'h78c4;
	#20
	A = 16'h6802;
	B = 16'h6c68;
	ans = 16'h6e69;
	#20
	A = 16'h74a7;
	B = 16'h744a;
	ans = 16'h7878;
	#20
	A = 16'hf6b2;
	B = 16'h6c77;
	ans = 16'hf594;
	#20
	A = 16'hf667;
	B = 16'h698a;
	ans = 16'hf5b6;
	#20
	A = 16'hf70e;
	B = 16'h6d87;
	ans = 16'hf5ac;
	#20
	A = 16'hf245;
	B = 16'h761f;
	ans = 16'h71f9;
	#20
	A = 16'h700a;
	B = 16'hf57c;
	ans = 16'hf2ee;
	#20
	A = 16'hf3de;
	B = 16'hecdc;
	ans = 16'hf526;
	#20
	A = 16'hee43;
	B = 16'h70ba;
	ans = 16'h6a62;
	#20
	A = 16'h7525;
	B = 16'h65c9;
	ans = 16'h7582;
	#20
	A = 16'h6e8e;
	B = 16'h6f5f;
	ans = 16'h72f6;
	#20
	A = 16'h6e69;
	B = 16'hf4b4;
	ans = 16'hf234;
	#20
	A = 16'h7210;
	B = 16'hf727;
	ans = 16'hf41f;
	#20
	A = 16'h6724;
	B = 16'h709c;
	ans = 16'h7180;
	#20
	A = 16'h733e;
	B = 16'h70a8;
	ans = 16'h75f3;
	#20
	A = 16'he938;
	B = 16'h704f;
	ans = 16'h6e02;
	#20
	A = 16'hf35e;
	B = 16'hf636;
	ans = 16'hf8f2;
	#20
	A = 16'hf3c1;
	B = 16'hf568;
	ans = 16'hf8a4;
	#20
	A = 16'h7520;
	B = 16'h75e1;
	ans = 16'h7980;
	#20
	A = 16'hf534;
	B = 16'hf719;
	ans = 16'hfa26;
	#20
	A = 16'hf27e;
	B = 16'hf671;
	ans = 16'hf8d8;
	#20
	A = 16'hf659;
	B = 16'hf724;
	ans = 16'hfabe;
	#20
	A = 16'hf328;
	B = 16'hef45;
	ans = 16'hf565;
	#20
	A = 16'hf2e3;
	B = 16'h6531;
	ans = 16'hf23d;
	#20
	A = 16'h75cd;
	B = 16'hf054;
	ans = 16'h7346;
	#20
	A = 16'hf2d2;
	B = 16'hf42a;
	ans = 16'hf793;
	#20
	A = 16'hf6ab;
	B = 16'h7511;
	ans = 16'hee68;
	#20
	A = 16'h717a;
	B = 16'h7609;
	ans = 16'h7863;
	#20
	A = 16'h7527;
	B = 16'h6400;
	ans = 16'h7567;
	#20
	A = 16'hf661;
	B = 16'h75ef;
	ans = 16'he720;
	#20
	A = 16'h708a;
	B = 16'hf477;
	ans = 16'hf064;
	#20
	A = 16'hf05a;
	B = 16'h683f;
	ans = 16'hee94;
	#20
	A = 16'h7579;
	B = 16'hf5cf;
	ans = 16'he560;
	#20
	A = 16'h745e;
	B = 16'h6e29;
	ans = 16'h75e8;
	#20
	A = 16'h7147;
	B = 16'hf541;
	ans = 16'hf13b;
	#20
	A = 16'h69e4;
	B = 16'hf2df;
	ans = 16'hf166;
	#20
	A = 16'h6896;
	B = 16'h75d7;
	ans = 16'h766a;
	#20
	A = 16'hf332;
	B = 16'h75c2;
	ans = 16'h7052;
	#20
	A = 16'h7698;
	B = 16'h70f3;
	ans = 16'h7889;
	#20
	A = 16'hf2d5;
	B = 16'hf1fc;
	ans = 16'hf668;
	#20
	A = 16'hf69a;
	B = 16'h7036;
	ans = 16'hf47f;
	#20
	A = 16'h6e0b;
	B = 16'h738a;
	ans = 16'h7548;
	#20
	A = 16'hef86;
	B = 16'hf6ff;
	ans = 16'hf870;
	#20
	A = 16'h7648;
	B = 16'h7665;
	ans = 16'h7a56;
	#20
	A = 16'hf559;
	B = 16'hf552;
	ans = 16'hf956;
	#20
	A = 16'hecb5;
	B = 16'hf2fd;
	ans = 16'hf4ac;
	#20
	A = 16'hf03c;
	B = 16'hf4bd;
	ans = 16'hf6db;
	#20
	A = 16'hf4db;
	B = 16'h7614;
	ans = 16'h6ce4;
	#20
	A = 16'hf4d4;
	B = 16'h75bb;
	ans = 16'h6b38;
	#20
	A = 16'hf597;
	B = 16'hefab;
	ans = 16'hf782;
	#20
	A = 16'h74d4;
	B = 16'hf5a4;
	ans = 16'hea80;
	#20
	A = 16'h755b;
	B = 16'h773f;
	ans = 16'h7a4d;
	#20
	A = 16'h747f;
	B = 16'he715;
	ans = 16'h740e;
	#20
	A = 16'hecf3;
	B = 16'h731f;
	ans = 16'h70a6;
	#20
	A = 16'h677a;
	B = 16'hd873;
	ans = 16'h66ec;
	#20
	A = 16'hdf2b;
	B = 16'h74a5;
	ans = 16'h7488;
	#20
	A = 16'hf5bd;
	B = 16'h730e;
	ans = 16'hf06c;
	#20
	A = 16'h76f8;
	B = 16'hf019;
	ans = 16'h74ec;
	#20
	A = 16'h7213;
	B = 16'hf12c;
	ans = 16'h6738;
	#20
	A = 16'he7b9;
	B = 16'h7235;
	ans = 16'h713e;
	#20
	A = 16'h7058;
	B = 16'h7097;
	ans = 16'h7478;
	#20
	A = 16'h774f;
	B = 16'h71a5;
	ans = 16'h7911;
	#20
	A = 16'he8fa;
	B = 16'hf4f7;
	ans = 16'hf596;
	#20
	A = 16'hf6e4;
	B = 16'h7470;
	ans = 16'hf0e8;
	#20
	A = 16'hf623;
	B = 16'h766c;
	ans = 16'h6490;
	#20
	A = 16'hef59;
	B = 16'h76ae;
	ans = 16'h74d8;
	#20
	A = 16'h742e;
	B = 16'hf65d;
	ans = 16'hf05e;
	#20
	A = 16'h6a7c;
	B = 16'h736c;
	ans = 16'h7486;
	#20
	A = 16'hf409;
	B = 16'hf446;
	ans = 16'hf828;
	#20
	A = 16'h73a2;
	B = 16'hf4f4;
	ans = 16'hec8c;
	#20
	A = 16'h7295;
	B = 16'heec4;
	ans = 16'h6e66;
	#20
	A = 16'hf435;
	B = 16'hde64;
	ans = 16'hf44f;
	#20
	A = 16'hf549;
	B = 16'h6e4f;
	ans = 16'hf36a;
	#20
	A = 16'he9cc;
	B = 16'hf1ab;
	ans = 16'hf31e;
	#20
	A = 16'hf046;
	B = 16'h76a5;
	ans = 16'h7482;
	#20
	A = 16'h7321;
	B = 16'hf5fa;
	ans = 16'hf0d3;
	#20
	A = 16'h6704;
	B = 16'h6133;
	ans = 16'h68cf;
	#20
	A = 16'h708d;
	B = 16'he4e9;
	ans = 16'h6fe0;
	#20
	A = 16'hf452;
	B = 16'hf5b0;
	ans = 16'hf901;
	#20
	A = 16'hf62b;
	B = 16'hf37c;
	ans = 16'hf8f4;
	#20
	A = 16'hf69e;
	B = 16'hf740;
	ans = 16'hfaef;
	#20
	A = 16'h7393;
	B = 16'hf0a0;
	ans = 16'h6de6;
	#20
	A = 16'hf475;
	B = 16'h7522;
	ans = 16'h6968;
	#20
	A = 16'h7705;
	B = 16'h72fb;
	ans = 16'h7941;
	#20
	A = 16'hf42b;
	B = 16'hf648;
	ans = 16'hf93a;
	#20
	A = 16'he8b9;
	B = 16'h761e;
	ans = 16'h7587;
	#20
	A = 16'h660c;
	B = 16'h6fae;
	ans = 16'h7098;
	#20
	A = 16'h7483;
	B = 16'h6baf;
	ans = 16'h7579;
	#20
	A = 16'h765a;
	B = 16'hf173;
	ans = 16'h7341;
	#20
	A = 16'hf5d5;
	B = 16'hf31e;
	ans = 16'hf8b2;
	#20
	A = 16'h6fae;
	B = 16'h7630;
	ans = 16'h780e;
	#20
	A = 16'h762c;
	B = 16'hf4d6;
	ans = 16'h6d58;
	#20
	A = 16'h7606;
	B = 16'he977;
	ans = 16'h7557;
	#20
	A = 16'hf1bb;
	B = 16'hf404;
	ans = 16'hf6e2;
	#20
	A = 16'hf132;
	B = 16'h6a36;
	ans = 16'hef49;
	#20
	A = 16'hf4e6;
	B = 16'h7402;
	ans = 16'heb20;
	#20
	A = 16'he87d;
	B = 16'h7439;
	ans = 16'h7353;
	#20
	A = 16'hf02f;
	B = 16'h73bc;
	ans = 16'h6f1a;
	#20
	A = 16'h69da;
	B = 16'hf421;
	ans = 16'hf2cc;
	#20
	A = 16'h74c4;
	B = 16'h748d;
	ans = 16'h78a8;
	#20
	A = 16'hed08;
	B = 16'hf34a;
	ans = 16'hf4e7;
	#20
	A = 16'h6ca5;
	B = 16'hedf5;
	ans = 16'he540;
	#20
	A = 16'h7630;
	B = 16'h701f;
	ans = 16'h7820;
	#20
	A = 16'hf17d;
	B = 16'h697b;
	ans = 16'hf01e;
	#20
	A = 16'hef91;
	B = 16'hf3c6;
	ans = 16'hf5c7;
	#20
	A = 16'h7040;
	B = 16'h700c;
	ans = 16'h7426;
	#20
	A = 16'h5f8c;
	B = 16'hf42e;
	ans = 16'hf410;
	#20
	A = 16'heb74;
	B = 16'hf4a1;
	ans = 16'hf590;
	#20
	A = 16'hf53c;
	B = 16'h75c1;
	ans = 16'h6828;
	#20
	A = 16'hf6c3;
	B = 16'hf1b0;
	ans = 16'hf8ce;
	#20
	A = 16'he63c;
	B = 16'hf437;
	ans = 16'hf49b;
	#20
	A = 16'hecdc;
	B = 16'hf54d;
	ans = 16'hf684;
	#20
	A = 16'hf1c6;
	B = 16'h745b;
	ans = 16'h6de0;
	#20
	A = 16'hf0b0;
	B = 16'hf16e;
	ans = 16'hf50f;
	#20
	A = 16'hf4af;
	B = 16'hf006;
	ans = 16'hf6b2;
	#20
	A = 16'hf72b;
	B = 16'h75a0;
	ans = 16'hee2c;
	#20
	A = 16'h708d;
	B = 16'he4a5;
	ans = 16'h6ff1;
	#20
	A = 16'h763a;
	B = 16'h7216;
	ans = 16'h78a2;
	#20
	A = 16'hf636;
	B = 16'hed28;
	ans = 16'hf780;
	#20
	A = 16'h749c;
	B = 16'h719a;
	ans = 16'h7769;
	#20
	A = 16'hf504;
	B = 16'h749a;
	ans = 16'he6a0;
	#20
	A = 16'h767a;
	B = 16'h7715;
	ans = 16'h7ac8;
	#20
	A = 16'h753f;
	B = 16'h696e;
	ans = 16'h75ed;
	#20
	A = 16'hf244;
	B = 16'hf703;
	ans = 16'hf912;
	#20
	A = 16'h6fcf;
	B = 16'h72ef;
	ans = 16'h756b;
	#20
	A = 16'h749b;
	B = 16'h759b;
	ans = 16'h791b;
	#20
	A = 16'h70cd;
	B = 16'h771f;
	ans = 16'h78c3;
	#20
	A = 16'heea7;
	B = 16'heecb;
	ans = 16'hf2b9;
	#20
	A = 16'hf529;
	B = 16'h6de1;
	ans = 16'hf362;
	#20
	A = 16'h7231;
	B = 16'h736a;
	ans = 16'h76ce;
	#20
	A = 16'h758d;
	B = 16'hf505;
	ans = 16'h6840;
	#20
	A = 16'hec98;
	B = 16'hf3a9;
	ans = 16'hf4fa;
	#20
	A = 16'hf350;
	B = 16'he5b1;
	ans = 16'hf403;
	#20
	A = 16'h7476;
	B = 16'hdcbb;
	ans = 16'h7463;
	#20
	A = 16'h71ad;
	B = 16'h7666;
	ans = 16'h789e;
	#20
	A = 16'hee6d;
	B = 16'hf3a4;
	ans = 16'hf56d;
	#20
	A = 16'h6ac3;
	B = 16'hf5bd;
	ans = 16'hf4e5;
	#20
	A = 16'heda2;
	B = 16'h771e;
	ans = 16'h75b6;
	#20
	A = 16'h71c5;
	B = 16'he577;
	ans = 16'h7116;
	#20
	A = 16'hf0ff;
	B = 16'h6ca5;
	ans = 16'hed59;
	#20
	A = 16'h6957;
	B = 16'h7431;
	ans = 16'h74dc;
	#20
	A = 16'h7125;
	B = 16'h6cec;
	ans = 16'h739b;
	#20
	A = 16'hf100;
	B = 16'hf4a1;
	ans = 16'hf721;
	#20
	A = 16'h68b4;
	B = 16'h721a;
	ans = 16'h7347;
	#20
	A = 16'he8f7;
	B = 16'h71df;
	ans = 16'h70a1;
	#20
	A = 16'h6c41;
	B = 16'hedf5;
	ans = 16'he6d0;
	#20
	A = 16'h6af2;
	B = 16'h7745;
	ans = 16'h7812;
	#20
	A = 16'h7614;
	B = 16'h753f;
	ans = 16'h79aa;
	#20
	A = 16'h71a8;
	B = 16'hf668;
	ans = 16'hf328;
	#20
	A = 16'h76a2;
	B = 16'hf628;
	ans = 16'h67a0;
	#20
	A = 16'hf367;
	B = 16'h75d7;
	ans = 16'h7047;
	#20
	A = 16'h76db;
	B = 16'h76fa;
	ans = 16'h7aea;
	#20
	A = 16'hf15a;
	B = 16'h7225;
	ans = 16'h6658;
	#20
	A = 16'hf1ae;
	B = 16'h74f9;
	ans = 16'h7044;
	#20
	A = 16'hf39f;
	B = 16'hf6a1;
	ans = 16'hf938;
	#20
	A = 16'h68f0;
	B = 16'hea59;
	ans = 16'he1a4;
	#20
	A = 16'hf4a4;
	B = 16'hf26f;
	ans = 16'hf7dc;
	#20
	A = 16'h6755;
	B = 16'h65f4;
	ans = 16'h6aa4;
	#20
	A = 16'hf5f1;
	B = 16'hf00f;
	ans = 16'hf7f8;
	#20
	A = 16'hf53f;
	B = 16'h7410;
	ans = 16'hecbc;
	#20
	A = 16'h6765;
	B = 16'hf462;
	ans = 16'hf3d7;
	#20
	A = 16'hf65f;
	B = 16'hf1a3;
	ans = 16'hf898;
	#20
	A = 16'hf5db;
	B = 16'hddd8;
	ans = 16'hf5f2;
	#20
	A = 16'h74c2;
	B = 16'h6600;
	ans = 16'h7522;
	#20
	A = 16'h75c9;
	B = 16'hf28f;
	ans = 16'h7103;
	#20
	A = 16'h7228;
	B = 16'h7101;
	ans = 16'h7594;
	#20
	A = 16'h75a7;
	B = 16'hf667;
	ans = 16'hea00;
	#20
	A = 16'h6c02;
	B = 16'hcc45;
	ans = 16'h6bfb;
	#20
	A = 16'hec3c;
	B = 16'hf38e;
	ans = 16'hf4d6;
	#20
	A = 16'hed96;
	B = 16'h7751;
	ans = 16'h75ec;
	#20
	A = 16'hedc3;
	B = 16'hf348;
	ans = 16'hf515;
	#20
	A = 16'hf36a;
	B = 16'hf1fd;
	ans = 16'hf6b4;
	#20
	A = 16'hf074;
	B = 16'hf109;
	ans = 16'hf4be;
	#20
	A = 16'hf1de;
	B = 16'h75de;
	ans = 16'h71de;
	#20
	A = 16'h6b09;
	B = 16'h759f;
	ans = 16'h7680;
	#20
	A = 16'h6b8a;
	B = 16'h6e88;
	ans = 16'h7126;
	#20
	A = 16'h76d4;
	B = 16'hf03c;
	ans = 16'h74b6;
	#20
	A = 16'hf5ca;
	B = 16'hf713;
	ans = 16'hfa6e;
	#20
	A = 16'hf357;
	B = 16'h758f;
	ans = 16'h6f8e;
	#20
	A = 16'hf6de;
	B = 16'hf142;
	ans = 16'hf8c0;
	#20
	A = 16'h74e8;
	B = 16'h7259;
	ans = 16'h780a;
	#20
	A = 16'h7726;
	B = 16'hf62d;
	ans = 16'h6bc8;
	#20
	A = 16'h70a4;
	B = 16'he9f8;
	ans = 16'h6e4c;
	#20
	A = 16'hed03;
	B = 16'hec05;
	ans = 16'hf084;
	#20
	A = 16'hebfa;
	B = 16'hf4bb;
	ans = 16'hf5ba;
	#20
	A = 16'he741;
	B = 16'h6d66;
	ans = 16'h6b2c;
	#20
	A = 16'h76c3;
	B = 16'h7471;
	ans = 16'h799a;
	#20
	A = 16'hec1c;
	B = 16'hf409;
	ans = 16'hf510;
	#20
	A = 16'h770e;
	B = 16'h7354;
	ans = 16'h795c;
	#20
	A = 16'hf53b;
	B = 16'hf736;
	ans = 16'hfa38;
	#20
	A = 16'hf4ff;
	B = 16'hf628;
	ans = 16'hf994;
	#20
	A = 16'h7549;
	B = 16'h769d;
	ans = 16'h79f3;
	#20
	A = 16'h75d5;
	B = 16'h71a3;
	ans = 16'h7853;
	#20
	A = 16'hefcc;
	B = 16'h7352;
	ans = 16'h6ed8;
	#20
	A = 16'hf6db;
	B = 16'hf0e0;
	ans = 16'hf8a6;
	#20
	A = 16'h65e6;
	B = 16'hf4b1;
	ans = 16'hf453;
	#20
	A = 16'h7192;
	B = 16'h74aa;
	ans = 16'h7773;
	#20
	A = 16'h7253;
	B = 16'hf1e5;
	ans = 16'h62e0;
	#20
	A = 16'hf44e;
	B = 16'h75b9;
	ans = 16'h6dac;
	#20
	A = 16'hf5ff;
	B = 16'hf587;
	ans = 16'hf9c3;
	#20
	A = 16'h7130;
	B = 16'hf61a;
	ans = 16'hf304;
	#20
	A = 16'h7411;
	B = 16'hf726;
	ans = 16'hf22a;
	#20
	A = 16'hed42;
	B = 16'h6a1c;
	ans = 16'he868;
	#20
	A = 16'hf69e;
	B = 16'h76c7;
	ans = 16'h6120;
	#20
	A = 16'hf47e;
	B = 16'hf747;
	ans = 16'hf9e2;
	#20
	A = 16'hf159;
	B = 16'h72e8;
	ans = 16'h6a3c;
	#20
	A = 16'h71f4;
	B = 16'hef4a;
	ans = 16'h6c9e;
	#20
	A = 16'hf01c;
	B = 16'h728a;
	ans = 16'h6cdc;
	#20
	A = 16'heb66;
	B = 16'hf5c9;
	ans = 16'hf6b6;
	#20
	A = 16'hf4ad;
	B = 16'h715c;
	ans = 16'heffc;
	#20
	A = 16'heb0e;
	B = 16'hc4cb;
	ans = 16'heb10;
	#20
	A = 16'hf4c3;
	B = 16'hf44e;
	ans = 16'hf888;
	#20
	A = 16'h6d13;
	B = 16'h7648;
	ans = 16'h778d;
	#20
	A = 16'h6d66;
	B = 16'hecf4;
	ans = 16'h5f20;
	#20
	A = 16'hf2fb;
	B = 16'hf12a;
	ans = 16'hf612;
	#20
	A = 16'he787;
	B = 16'h74f2;
	ans = 16'h747a;
	#20
	A = 16'he4e6;
	B = 16'hf5b3;
	ans = 16'hf601;
	#20
	A = 16'hf479;
	B = 16'hf718;
	ans = 16'hf9c8;
	#20
	A = 16'h6907;
	B = 16'h6d70;
	ans = 16'h6ff4;
	#20
	A = 16'hf526;
	B = 16'hf365;
	ans = 16'hf86c;
	#20
	A = 16'h731f;
	B = 16'hf198;
	ans = 16'h6a1c;
	#20
	A = 16'h73e8;
	B = 16'hec40;
	ans = 16'h71c8;
	#20
	A = 16'h75d2;
	B = 16'h751c;
	ans = 16'h7977;
	#20
	A = 16'hf0fc;
	B = 16'hf186;
	ans = 16'hf541;
	#20
	A = 16'hf399;
	B = 16'hf1a7;
	ans = 16'hf6a0;
	#20
	A = 16'h66b6;
	B = 16'h774b;
	ans = 16'h77b6;
	#20
	A = 16'hf4ca;
	B = 16'h74ed;
	ans = 16'h6060;
	#20
	A = 16'h6353;
	B = 16'hf4ca;
	ans = 16'hf48f;
	#20
	A = 16'h702e;
	B = 16'hf313;
	ans = 16'hedca;
	#20
	A = 16'hf1e2;
	B = 16'hf62c;
	ans = 16'hf88e;
	#20
	A = 16'hf6b9;
	B = 16'h7684;
	ans = 16'he2a0;
	#20
	A = 16'h774a;
	B = 16'h7282;
	ans = 16'h7946;
	#20
	A = 16'hf62f;
	B = 16'hf04f;
	ans = 16'hf82b;
	#20
	A = 16'h6c7b;
	B = 16'h74bf;
	ans = 16'h75de;
	#20
	A = 16'hf318;
	B = 16'hefc9;
	ans = 16'hf57e;
	#20
	A = 16'hedd8;
	B = 16'h6c6d;
	ans = 16'he5ac;
	#20
	A = 16'h7580;
	B = 16'h63ee;
	ans = 16'h75bf;
	#20
	A = 16'hf036;
	B = 16'hef0c;
	ans = 16'hf3bc;
	#20
	A = 16'hf566;
	B = 16'h74e4;
	ans = 16'he810;
	#20
	A = 16'h733f;
	B = 16'hf676;
	ans = 16'hf1ad;
	#20
	A = 16'h7619;
	B = 16'h72d3;
	ans = 16'h78c1;
	#20
	A = 16'hf0ac;
	B = 16'h504f;
	ans = 16'hf0a8;
	#20
	A = 16'h764f;
	B = 16'h687b;
	ans = 16'h76de;
	#20
	A = 16'hf504;
	B = 16'hf0c4;
	ans = 16'hf766;
	#20
	A = 16'h75b7;
	B = 16'h7407;
	ans = 16'h78df;
	#20
	A = 16'h6488;
	B = 16'h7563;
	ans = 16'h75ac;
	#20
	A = 16'h65e8;
	B = 16'hf010;
	ans = 16'heea6;
	#20
	A = 16'hf223;
	B = 16'h723c;
	ans = 16'h5a40;
	#20
	A = 16'hf1f3;
	B = 16'hf12a;
	ans = 16'hf58e;
	#20
	A = 16'h7483;
	B = 16'h74d6;
	ans = 16'h78ac;
	#20
	A = 16'h7055;
	B = 16'h6fa5;
	ans = 16'h7414;
	#20
	A = 16'h748c;
	B = 16'hf543;
	ans = 16'he9b8;
	#20
	A = 16'hf55f;
	B = 16'he993;
	ans = 16'hf611;
	#20
	A = 16'hf04e;
	B = 16'h76f8;
	ans = 16'h74d1;
	#20
	A = 16'h7434;
	B = 16'h74bb;
	ans = 16'h7878;
	#20
	A = 16'h7401;
	B = 16'hf4fa;
	ans = 16'hebc8;
	#20
	A = 16'h7414;
	B = 16'hf289;
	ans = 16'h6a7c;
	#20
	A = 16'h764e;
	B = 16'hedd0;
	ans = 16'h74da;
	#20
	A = 16'h76f9;
	B = 16'h75c2;
	ans = 16'h7a5e;
	#20
	A = 16'h6ed6;
	B = 16'h67a5;
	ans = 16'h7060;
	#20
	A = 16'hf66b;
	B = 16'h768f;
	ans = 16'h6080;
	#20
	A = 16'hed55;
	B = 16'hf098;
	ans = 16'hf342;
	#20
	A = 16'h7036;
	B = 16'heddb;
	ans = 16'h6922;
	#20
	A = 16'hf70f;
	B = 16'h771a;
	ans = 16'h5980;
	#20
	A = 16'h661b;
	B = 16'h6c7d;
	ans = 16'h6e04;
	#20
	A = 16'h7163;
	B = 16'hf54e;
	ans = 16'hf139;
	#20
	A = 16'h71e7;
	B = 16'hf5b8;
	ans = 16'hf189;
	#20
	A = 16'hf365;
	B = 16'hef6e;
	ans = 16'hf58e;
	#20
	A = 16'hf1fc;
	B = 16'hf6f8;
	ans = 16'hf8fb;
	#20
	A = 16'he814;
	B = 16'hee2c;
	ans = 16'hf01b;
	#20
	A = 16'h7061;
	B = 16'h6cef;
	ans = 16'h72d8;
	#20
	A = 16'hf4eb;
	B = 16'h766b;
	ans = 16'h6e00;
	#20
	A = 16'hf0d0;
	B = 16'hf539;
	ans = 16'hf7a1;
	#20
	A = 16'hef2a;
	B = 16'h768f;
	ans = 16'h74c4;
	#20
	A = 16'h5750;
	B = 16'hf561;
	ans = 16'hf55a;
	#20
	A = 16'h6e34;
	B = 16'h6959;
	ans = 16'h7070;
	#20
	A = 16'h74d4;
	B = 16'hdfa4;
	ans = 16'h74b5;
	#20
	A = 16'h73d8;
	B = 16'hf47f;
	ans = 16'he898;
	#20
	A = 16'hf728;
	B = 16'hf6f8;
	ans = 16'hfb10;
	#20
	A = 16'h76a6;
	B = 16'h69bd;
	ans = 16'h775e;
	#20
	A = 16'hf09b;
	B = 16'h645d;
	ans = 16'hf00f;
	#20
	A = 16'h738d;
	B = 16'h7428;
	ans = 16'h77ee;
	#20
	A = 16'h758c;
	B = 16'hf6a7;
	ans = 16'hec6c;
	#20
	A = 16'h6ba2;
	B = 16'h7233;
	ans = 16'h740e;
	#20
	A = 16'h7102;
	B = 16'hf41a;
	ans = 16'hee64;
	#20
	A = 16'hf3a4;
	B = 16'he645;
	ans = 16'hf436;
	#20
	A = 16'h616a;
	B = 16'hedb4;
	ans = 16'hed07;
	#20
	A = 16'hf08d;
	B = 16'h70a7;
	ans = 16'h5a80;
	#20
	A = 16'h7674;
	B = 16'hedf0;
	ans = 16'h74f8;
	#20
	A = 16'hed26;
	B = 16'hf64c;
	ans = 16'hf796;
	#20
	A = 16'h6e97;
	B = 16'hf604;
	ans = 16'hf45e;
	#20
	A = 16'h665d;
	B = 16'hf3c1;
	ans = 16'hf2f5;
	#20
	A = 16'hf58e;
	B = 16'h6e7a;
	ans = 16'hf3df;
	#20
	A = 16'hf206;
	B = 16'hf584;
	ans = 16'hf844;
	#20
	A = 16'h72ae;
	B = 16'h7608;
	ans = 16'h78b0;
	#20
	A = 16'hf445;
	B = 16'he583;
	ans = 16'hf49d;
	#20
	A = 16'hed8f;
	B = 16'hf618;
	ans = 16'hf77c;
	#20
	A = 16'hf201;
	B = 16'h7543;
	ans = 16'h7085;
	#20
	A = 16'heeae;
	B = 16'hf5a5;
	ans = 16'hf750;
	#20
	A = 16'h7496;
	B = 16'hec64;
	ans = 16'h72fa;
	#20
	A = 16'hf07b;
	B = 16'hf3ec;
	ans = 16'hf634;
	#20
	A = 16'h749d;
	B = 16'h74ba;
	ans = 16'h78ac;
	#20
	A = 16'h730f;
	B = 16'h762d;
	ans = 16'h78da;
	#20
	A = 16'h701c;
	B = 16'hf51a;
	ans = 16'hf218;
	#20
	A = 16'h70a1;
	B = 16'hf70c;
	ans = 16'hf4bc;
	#20
	A = 16'h6f4c;
	B = 16'h750e;
	ans = 16'h76e1;
	#20
	A = 16'hec10;
	B = 16'h748c;
	ans = 16'h7310;
	#20
	A = 16'hf449;
	B = 16'h75fe;
	ans = 16'h6ed4;
	#20
	A = 16'hf4c6;
	B = 16'h744d;
	ans = 16'he790;
	#20
	A = 16'h6f02;
	B = 16'h6a30;
	ans = 16'h710d;
	#20
	A = 16'he27a;
	B = 16'hf502;
	ans = 16'hf536;
	#20
	A = 16'h6348;
	B = 16'h7725;
	ans = 16'h775f;
	#20
	A = 16'h76e5;
	B = 16'hf3a3;
	ans = 16'h7227;
	#20
	A = 16'hf127;
	B = 16'h772c;
	ans = 16'h7498;
	#20
	A = 16'h7564;
	B = 16'h70c6;
	ans = 16'h77c7;
	#20
	A = 16'h64cd;
	B = 16'hf55c;
	ans = 16'hf50f;
	#20
	A = 16'h7554;
	B = 16'h74c6;
	ans = 16'h790d;
	#20
	A = 16'h7732;
	B = 16'h75a2;
	ans = 16'h7a6a;
	#20
	A = 16'h617b;
	B = 16'h7433;
	ans = 16'h745f;
	#20
	A = 16'h75f3;
	B = 16'h7503;
	ans = 16'h797b;
	#20
	A = 16'h713d;
	B = 16'h7302;
	ans = 16'h7620;
	#20
	A = 16'h6918;
	B = 16'h7044;
	ans = 16'h718a;
	#20
	A = 16'h71a2;
	B = 16'hf653;
	ans = 16'hf304;
	#20
	A = 16'hf278;
	B = 16'h6ca4;
	ans = 16'hf026;
	#20
	A = 16'h44cf;
	B = 16'hf6aa;
	ans = 16'hf6aa;
	#20
	A = 16'h6990;
	B = 16'hf487;
	ans = 16'hf3aa;
	#20
	A = 16'h6e15;
	B = 16'hf00d;
	ans = 16'he80a;
	#20
	A = 16'hec99;
	B = 16'hf602;
	ans = 16'hf728;
	#20
	A = 16'h6ecf;
	B = 16'h67eb;
	ans = 16'h7065;
	#20
	A = 16'h741c;
	B = 16'h6efc;
	ans = 16'h75db;
	#20
	A = 16'hf11e;
	B = 16'h7362;
	ans = 16'h6c88;
	#20
	A = 16'h72d9;
	B = 16'h7726;
	ans = 16'h7949;
	#20
	A = 16'he4a0;
	B = 16'h7749;
	ans = 16'h76ff;
	#20
	A = 16'head5;
	B = 16'h6915;
	ans = 16'he300;
	#20
	A = 16'hf4bc;
	B = 16'h7412;
	ans = 16'he950;
	#20
	A = 16'hf416;
	B = 16'hf695;
	ans = 16'hf956;
	#20
	A = 16'hf63b;
	B = 16'hf579;
	ans = 16'hf9da;
	#20
	A = 16'hf201;
	B = 16'h7518;
	ans = 16'h702f;
	#20
	A = 16'h7663;
	B = 16'h76f3;
	ans = 16'h7aab;
	#20
	A = 16'h7064;
	B = 16'hf62a;
	ans = 16'hf3f0;
	#20
	A = 16'h7501;
	B = 16'h76a2;
	ans = 16'h79d2;
	#20
	A = 16'hdbaf;
	B = 16'h74f4;
	ans = 16'h74e5;
	#20
	A = 16'hf692;
	B = 16'hf5a0;
	ans = 16'hfa19;
	#20
	A = 16'hf4d1;
	B = 16'h7176;
	ans = 16'hf02c;
	#20
	A = 16'h76cc;
	B = 16'hf67f;
	ans = 16'h64d0;
	#20
	A = 16'h6b14;
	B = 16'h7664;
	ans = 16'h7746;
	#20
	A = 16'h6900;
	B = 16'h772e;
	ans = 16'h77ce;
	#20
	A = 16'hf65a;
	B = 16'heb82;
	ans = 16'hf74a;
	#20
	A = 16'h6fe5;
	B = 16'h6344;
	ans = 16'h7067;
	#20
	A = 16'hf0ba;
	B = 16'hf4d2;
	ans = 16'hf72f;
	#20
	A = 16'h75d5;
	B = 16'h60a6;
	ans = 16'h75fa;
	#20
	A = 16'h74ff;
	B = 16'hf1d0;
	ans = 16'h702e;
	#20
	A = 16'hf39b;
	B = 16'hef77;
	ans = 16'hf5ab;
	#20
	A = 16'hf486;
	B = 16'h7638;
	ans = 16'h6ec8;
	#20
	A = 16'h6ea9;
	B = 16'h71f6;
	ans = 16'h74a5;
	#20
	A = 16'hf1fe;
	B = 16'h7721;
	ans = 16'h7422;
	#20
	A = 16'hf41a;
	B = 16'h6c83;
	ans = 16'hf1f2;
	#20
	A = 16'h70fc;
	B = 16'h6c54;
	ans = 16'h7326;
	#20
	A = 16'h6839;
	B = 16'h6fd8;
	ans = 16'h70fa;
	#20
	A = 16'hea36;
	B = 16'h7752;
	ans = 16'h768b;
	#20
	A = 16'he51e;
	B = 16'h6d97;
	ans = 16'h6c50;
	#20
	A = 16'hde44;
	B = 16'hf55f;
	ans = 16'hf578;
	#20
	A = 16'h74ae;
	B = 16'hf3d4;
	ans = 16'h6a20;
	#20
	A = 16'hf5a9;
	B = 16'hed09;
	ans = 16'hf6eb;
	#20
	A = 16'h768e;
	B = 16'h6c6c;
	ans = 16'h77a9;
	#20
	A = 16'h73f3;
	B = 16'h7590;
	ans = 16'h78c5;
	#20
	A = 16'h75ab;
	B = 16'h719a;
	ans = 16'h783c;
	#20
	A = 16'h767d;
	B = 16'hf427;
	ans = 16'h70ac;
	#20
	A = 16'h7627;
	B = 16'hf45d;
	ans = 16'h6f28;
	#20
	A = 16'h7275;
	B = 16'h754b;
	ans = 16'h7843;
	#20
	A = 16'h773d;
	B = 16'h734b;
	ans = 16'h7971;
	#20
	A = 16'he6fe;
	B = 16'hf5ea;
	ans = 16'hf65a;
	#20
	A = 16'h768d;
	B = 16'h6f7c;
	ans = 16'h7836;
	#20
	A = 16'h63b2;
	B = 16'h7539;
	ans = 16'h7577;
	#20
	A = 16'hdeeb;
	B = 16'hf6da;
	ans = 16'hf6f6;
	#20
	A = 16'hf673;
	B = 16'h6e49;
	ans = 16'hf4e1;
	#20
	A = 16'h7398;
	B = 16'hf45b;
	ans = 16'he878;
	#20
	A = 16'h65ec;
	B = 16'h6bec;
	ans = 16'h6d71;
	#20
	A = 16'hf3cb;
	B = 16'hf00b;
	ans = 16'hf5eb;
	#20
	A = 16'hf612;
	B = 16'h744c;
	ans = 16'hef18;
	#20
	A = 16'hf5fd;
	B = 16'hf5bc;
	ans = 16'hf9dc;
	#20
	A = 16'hf6db;
	B = 16'hf49a;
	ans = 16'hf9ba;
	#20
	A = 16'hf63c;
	B = 16'he923;
	ans = 16'hf6e0;
	#20
	A = 16'h7351;
	B = 16'h6a60;
	ans = 16'h7474;
	#20
	A = 16'h64b7;
	B = 16'he602;
	ans = 16'hdd2c;
	#20
	A = 16'h76c9;
	B = 16'h6bae;
	ans = 16'h77bf;
	#20
	A = 16'h771f;
	B = 16'hf206;
	ans = 16'h741c;
	#20
	A = 16'h76d3;
	B = 16'h7493;
	ans = 16'h79b3;
	#20
	A = 16'hf1b1;
	B = 16'h751a;
	ans = 16'h7083;
	#20
	A = 16'h74bd;
	B = 16'hf749;
	ans = 16'hf118;
	#20
	A = 16'hf53b;
	B = 16'h753d;
	ans = 16'h5000;
	#20
	A = 16'hf0a0;
	B = 16'hf4ed;
	ans = 16'hf73d;
	#20
	A = 16'h773c;
	B = 16'h7690;
	ans = 16'h7ae6;
	#20
	A = 16'h774e;
	B = 16'h7653;
	ans = 16'h7ad0;
	#20
	A = 16'hf006;
	B = 16'hf56c;
	ans = 16'hf76f;
	#20
	A = 16'h7652;
	B = 16'h74f8;
	ans = 16'h79a5;
	#20
	A = 16'h7685;
	B = 16'hf733;
	ans = 16'he970;
	#20
	A = 16'heea4;
	B = 16'h766e;
	ans = 16'h74c5;
	#20
	A = 16'h76b9;
	B = 16'heae8;
	ans = 16'h75dc;
	#20
	A = 16'hf47f;
	B = 16'h740b;
	ans = 16'he740;
	#20
	A = 16'h72f1;
	B = 16'h75b0;
	ans = 16'h7894;
	#20
	A = 16'h75fb;
	B = 16'hf509;
	ans = 16'h6b90;
	#20
	A = 16'hec3f;
	B = 16'h716a;
	ans = 16'h6e95;
	#20
	A = 16'h73fe;
	B = 16'h5658;
	ans = 16'h7405;
	#20
	A = 16'h5f09;
	B = 16'hf6d1;
	ans = 16'hf6b5;
	#20
	A = 16'hd6b2;
	B = 16'h6e6f;
	ans = 16'h6e54;
	#20
	A = 16'hec33;
	B = 16'hf713;
	ans = 16'hf810;
	#20
	A = 16'hf229;
	B = 16'hef94;
	ans = 16'hf4fa;
	#20
	A = 16'hf546;
	B = 16'hf297;
	ans = 16'hf849;
	#20
	A = 16'h754b;
	B = 16'hf729;
	ans = 16'hef78;
	#20
	A = 16'hf408;
	B = 16'hf573;
	ans = 16'hf8be;
	#20
	A = 16'h773d;
	B = 16'hf4ec;
	ans = 16'h70a2;
	#20
	A = 16'h7430;
	B = 16'h68d3;
	ans = 16'h74ca;
	#20
	A = 16'hf664;
	B = 16'hf3c0;
	ans = 16'hf922;
	#20
	A = 16'hf1e9;
	B = 16'hee81;
	ans = 16'hf495;
	#20
	A = 16'he7cc;
	B = 16'hf6b1;
	ans = 16'hf72e;
	#20
	A = 16'h747b;
	B = 16'h7651;
	ans = 16'h7966;
	#20
	A = 16'h61c3;
	B = 16'hf5a9;
	ans = 16'hf57b;
	#20
	A = 16'h7097;
	B = 16'h7492;
	ans = 16'h76de;
	#20
	A = 16'hf0bb;
	B = 16'hf530;
	ans = 16'hf78e;
	#20
	A = 16'h70de;
	B = 16'h6fcb;
	ans = 16'h7462;
	#20
	A = 16'hedb1;
	B = 16'h7649;
	ans = 16'h74dd;
	#20
	A = 16'hf03e;
	B = 16'h73b2;
	ans = 16'h6ee8;
	#20
	A = 16'h6c53;
	B = 16'h715c;
	ans = 16'h7386;
	#20
	A = 16'h732a;
	B = 16'hf18c;
	ans = 16'h6a78;
	#20
	A = 16'hf212;
	B = 16'hf40e;
	ans = 16'hf717;
	#20
	A = 16'h72af;
	B = 16'h6b0d;
	ans = 16'h7439;
	#20
	A = 16'he084;
	B = 16'hf617;
	ans = 16'hf63b;
	#20
	A = 16'hf2d4;
	B = 16'h76c5;
	ans = 16'h72b6;
	#20
	A = 16'h6905;
	B = 16'h7545;
	ans = 16'h75e6;
	#20
	A = 16'hf461;
	B = 16'hf605;
	ans = 16'hf933;
	#20
	A = 16'h6980;
	B = 16'h7396;
	ans = 16'h747b;
	#20
	A = 16'hf608;
	B = 16'hf163;
	ans = 16'hf85d;
	#20
	A = 16'hf20d;
	B = 16'h71ac;
	ans = 16'he210;
	#20
	A = 16'h6e91;
	B = 16'hf14d;
	ans = 16'hec09;
	#20
	A = 16'hf0ef;
	B = 16'hf408;
	ans = 16'hf680;
	#20
	A = 16'h768f;
	B = 16'h7752;
	ans = 16'h7af0;
	#20
	A = 16'hf274;
	B = 16'he37c;
	ans = 16'hf2ec;
	#20
	A = 16'hf014;
	B = 16'h742b;
	ans = 16'h7042;
	#20
	A = 16'h74c1;
	B = 16'h585e;
	ans = 16'h74ca;
	#20
	A = 16'h756d;
	B = 16'hf665;
	ans = 16'hebc0;
	#20
	A = 16'h6667;
	B = 16'he1ca;
	ans = 16'h6304;
	#20
	A = 16'h720a;
	B = 16'hf566;
	ans = 16'hf0c2;
	#20
	A = 16'h72a2;
	B = 16'hf257;
	ans = 16'h60b0;
	#20
	A = 16'h70aa;
	B = 16'h74f5;
	ans = 16'h774a;
	#20
	A = 16'hf68d;
	B = 16'h63e9;
	ans = 16'hf64e;
	#20
	A = 16'h7441;
	B = 16'h7117;
	ans = 16'h76cc;
	#20
	A = 16'h73e4;
	B = 16'h74f8;
	ans = 16'h7875;
	#20
	A = 16'hf583;
	B = 16'h731b;
	ans = 16'hefd6;
	#20
	A = 16'hf727;
	B = 16'he970;
	ans = 16'hf7d5;
	#20
	A = 16'h7493;
	B = 16'h70c5;
	ans = 16'h76f6;
	#20
	A = 16'hf38f;
	B = 16'hec8e;
	ans = 16'hf4eb;
	#20
	A = 16'h7426;
	B = 16'h7646;
	ans = 16'h7936;
	#20
	A = 16'h7626;
	B = 16'hf058;
	ans = 16'h73f4;
	#20
	A = 16'h766c;
	B = 16'h764e;
	ans = 16'h7a5d;
	#20
	A = 16'hf07e;
	B = 16'h7160;
	ans = 16'h6710;
	#20
	A = 16'h745a;
	B = 16'h68c1;
	ans = 16'h74f2;
	#20
	A = 16'hf701;
	B = 16'h70f1;
	ans = 16'hf488;
	#20
	A = 16'h7342;
	B = 16'hf303;
	ans = 16'h5fe0;
	#20
	A = 16'hf19c;
	B = 16'h7426;
	ans = 16'h6d60;
	#20
	A = 16'hf585;
	B = 16'h6743;
	ans = 16'hf511;
	#20
	A = 16'hea83;
	B = 16'h70d9;
	ans = 16'h6e70;
	#20
	A = 16'h72d9;
	B = 16'hde4b;
	ans = 16'h72a7;
	#20
	A = 16'he89e;
	B = 16'h6a59;
	ans = 16'h62ec;
	#20
	A = 16'hf2f4;
	B = 16'h69be;
	ans = 16'hf184;
	#20
	A = 16'hf30c;
	B = 16'h76c5;
	ans = 16'h727e;
	#20
	A = 16'hf1eb;
	B = 16'hed99;
	ans = 16'hf45c;
	#20
	A = 16'h7534;
	B = 16'h76bc;
	ans = 16'h79f8;
	#20
	A = 16'h6e0b;
	B = 16'hed8e;
	ans = 16'h5fd0;
	#20
	A = 16'h6e34;
	B = 16'hf715;
	ans = 16'hf588;
	#20
	A = 16'h748b;
	B = 16'h74b2;
	ans = 16'h789e;
	#20
	A = 16'hf411;
	B = 16'hf48a;
	ans = 16'hf84e;
	#20
	A = 16'h74a9;
	B = 16'hf451;
	ans = 16'h6580;
	#20
	A = 16'h7512;
	B = 16'hf307;
	ans = 16'h6e3a;
	#20
	A = 16'h7569;
	B = 16'hf589;
	ans = 16'he000;
	#20
	A = 16'hf02a;
	B = 16'h7408;
	ans = 16'h6fcc;
	#20
	A = 16'h757f;
	B = 16'hf616;
	ans = 16'he8b8;
	#20
	A = 16'hf4de;
	B = 16'h6098;
	ans = 16'hf4b9;
	#20
	A = 16'hf2ee;
	B = 16'hf334;
	ans = 16'hf711;
	#20
	A = 16'h757e;
	B = 16'h7461;
	ans = 16'h78f0;
	#20
	A = 16'h7117;
	B = 16'hf71c;
	ans = 16'hf490;
	#20
	A = 16'hf4c1;
	B = 16'h7220;
	ans = 16'heec4;
	#20
	A = 16'hf232;
	B = 16'hf434;
	ans = 16'hf74d;
	#20
	A = 16'heea6;
	B = 16'hf580;
	ans = 16'hf72a;
	#20
	A = 16'hf51e;
	B = 16'h7661;
	ans = 16'h6d0c;
	#20
	A = 16'hf710;
	B = 16'he46f;
	ans = 16'hf757;
	#20
	A = 16'hf495;
	B = 16'h7731;
	ans = 16'h7138;
	#20
	A = 16'h7498;
	B = 16'hf264;
	ans = 16'h6d98;
	#20
	A = 16'h76a7;
	B = 16'hf54e;
	ans = 16'h6d64;
	#20
	A = 16'hf46b;
	B = 16'hf424;
	ans = 16'hf848;
	#20
	A = 16'hef2a;
	B = 16'hea18;
	ans = 16'hf11b;
	#20
	A = 16'h6394;
	B = 16'hf497;
	ans = 16'hf45a;
	#20
	A = 16'hef25;
	B = 16'h718f;
	ans = 16'h6bf2;
	#20
	A = 16'h6d54;
	B = 16'hf4c8;
	ans = 16'hf2e6;
	#20
	A = 16'he0d7;
	B = 16'h75dd;
	ans = 16'h75b6;
	#20
	A = 16'hf2a1;
	B = 16'hee4e;
	ans = 16'hf4e4;
	#20
	A = 16'hf584;
	B = 16'hec71;
	ans = 16'hf6a0;
	#20
	A = 16'h75bc;
	B = 16'h7058;
	ans = 16'h77e8;
	#20
	A = 16'h6d62;
	B = 16'h6ea9;
	ans = 16'h7206;
	#20
	A = 16'hf25c;
	B = 16'h68b3;
	ans = 16'hf12f;
	#20
	A = 16'hf65f;
	B = 16'h768e;
	ans = 16'h61e0;
	#20
	A = 16'h7223;
	B = 16'h666d;
	ans = 16'h72f1;
	#20
	A = 16'h74bd;
	B = 16'h6e24;
	ans = 16'h7646;
	#20
	A = 16'h6e7f;
	B = 16'hf6b8;
	ans = 16'hf518;
	#20
	A = 16'h7569;
	B = 16'h75ff;
	ans = 16'h79b4;
	#20
	A = 16'hf27d;
	B = 16'hf6e7;
	ans = 16'hf913;
	#20
	A = 16'hed38;
	B = 16'hf601;
	ans = 16'hf74f;
	#20
	A = 16'h6d98;
	B = 16'hf41c;
	ans = 16'hf16c;
	#20
	A = 16'hf4b8;
	B = 16'h75ab;
	ans = 16'h6b98;
	#20
	A = 16'h7592;
	B = 16'hf732;
	ans = 16'hee80;
	#20
	A = 16'h76f9;
	B = 16'h6a22;
	ans = 16'h77bd;
	#20
	A = 16'heb7c;
	B = 16'h70b6;
	ans = 16'h6dae;
	#20
	A = 16'h7679;
	B = 16'h7661;
	ans = 16'h7a6d;
	#20
	A = 16'hf2aa;
	B = 16'heec6;
	ans = 16'hf506;
	#20
	A = 16'h7481;
	B = 16'hf359;
	ans = 16'h6aa4;
	#20
	A = 16'h6242;
	B = 16'hefdd;
	ans = 16'hef15;
	#20
	A = 16'h757e;
	B = 16'h7058;
	ans = 16'h77aa;
	#20
	A = 16'h7549;
	B = 16'hf4d9;
	ans = 16'h6700;
	#20
	A = 16'hf5cd;
	B = 16'hf63f;
	ans = 16'hfa06;
	#20
	A = 16'hf64c;
	B = 16'h75cb;
	ans = 16'he808;
	#20
	A = 16'hf269;
	B = 16'h74d4;
	ans = 16'h6e7e;
	#20
	A = 16'hf5ab;
	B = 16'h6c37;
	ans = 16'hf49d;
	#20
	A = 16'h744b;
	B = 16'hf6d4;
	ans = 16'hf112;
	#20
	A = 16'hf71e;
	B = 16'h766d;
	ans = 16'he988;
	#20
	A = 16'h70c7;
	B = 16'hf075;
	ans = 16'h6120;
	#20
	A = 16'hf569;
	B = 16'h7705;
	ans = 16'h6e70;
	#20
	A = 16'h7722;
	B = 16'hed46;
	ans = 16'h75d0;
	#20
	A = 16'hf466;
	B = 16'h6fa1;
	ans = 16'hf0fc;
	#20
	A = 16'h73ef;
	B = 16'h706d;
	ans = 16'h762e;
	#20
	A = 16'h6c62;
	B = 16'h7697;
	ans = 16'h77b0;
	#20
	A = 16'h71df;
	B = 16'h66f3;
	ans = 16'h72bd;
	#20
	A = 16'h6cea;
	B = 16'hf542;
	ans = 16'hf408;
	#20
	A = 16'h6f1c;
	B = 16'heed6;
	ans = 16'h5c60;
	#20
	A = 16'h654e;
	B = 16'hf698;
	ans = 16'hf643;
	#20
	A = 16'h73bb;
	B = 16'hf2d2;
	ans = 16'h6748;
	#20
	A = 16'hf478;
	B = 16'hf208;
	ans = 16'hf77c;
	#20
	A = 16'hef3e;
	B = 16'hf6d3;
	ans = 16'hf851;
	#20
	A = 16'hf24b;
	B = 16'hec05;
	ans = 16'hf427;
	#20
	A = 16'heaef;
	B = 16'h73d1;
	ans = 16'h7215;
	#20
	A = 16'h6f92;
	B = 16'h65bd;
	ans = 16'h7081;
	#20
	A = 16'h76aa;
	B = 16'h5f37;
	ans = 16'h76c7;
	#20
	A = 16'hf60d;
	B = 16'h74ef;
	ans = 16'hec78;
	#20
	A = 16'h6ed1;
	B = 16'h6f99;
	ans = 16'h7335;
	#20
	A = 16'hf4ef;
	B = 16'h76c4;
	ans = 16'h6f54;
	#20
	A = 16'h645a;
	B = 16'hf6c3;
	ans = 16'hf67d;
	#20
	A = 16'h6fb6;
	B = 16'head2;
	ans = 16'h6c4d;
	#20
	A = 16'hef17;
	B = 16'h70b6;
	ans = 16'h68aa;
	#20
	A = 16'h7307;
	B = 16'h75b8;
	ans = 16'h789e;
	#20
	A = 16'hf35d;
	B = 16'hf40b;
	ans = 16'hf7ba;
	#20
	A = 16'h76d4;
	B = 16'hf37d;
	ans = 16'h722b;
	#20
	A = 16'hf0f0;
	B = 16'hf43c;
	ans = 16'hf6b4;
	#20
	A = 16'hdb13;
	B = 16'h7657;
	ans = 16'h7649;
	#20
	A = 16'h6313;
	B = 16'h6844;
	ans = 16'h6a09;
	#20
	A = 16'h75a1;
	B = 16'hf565;
	ans = 16'h6380;
	#20
	A = 16'h6f11;
	B = 16'hf047;
	ans = 16'he5f4;
	#20
	A = 16'h7494;
	B = 16'hec83;
	ans = 16'h72e6;
	#20
	A = 16'hf15d;
	B = 16'h7579;
	ans = 16'h7195;
	#20
	A = 16'h5e85;
	B = 16'h7128;
	ans = 16'h715c;
	#20
	A = 16'h7508;
	B = 16'h7381;
	ans = 16'h7864;
	#20
	A = 16'hf31e;
	B = 16'hf745;
	ans = 16'hf96a;
	#20
	A = 16'h733f;
	B = 16'hf298;
	ans = 16'h6538;
	#20
	A = 16'h63f8;
	B = 16'h7718;
	ans = 16'h7758;
	#20
	A = 16'hf270;
	B = 16'h7336;
	ans = 16'h6630;
	#20
	A = 16'hf02b;
	B = 16'hf188;
	ans = 16'hf4da;
	#20
	A = 16'hf308;
	B = 16'hf61d;
	ans = 16'hf8d0;
	#20
	A = 16'hf5c9;
	B = 16'h7746;
	ans = 16'h6df4;
	#20
	A = 16'hebc8;
	B = 16'h710c;
	ans = 16'h6e34;
	#20
	A = 16'hef6c;
	B = 16'h724f;
	ans = 16'h6d32;
	#20
	A = 16'h73f5;
	B = 16'heda4;
	ans = 16'h7123;
	#20
	A = 16'hf3c5;
	B = 16'hf4c2;
	ans = 16'hf852;
	#20
	A = 16'hef42;
	B = 16'hf679;
	ans = 16'hf825;
	#20
	A = 16'hf693;
	B = 16'h7355;
	ans = 16'hf1d1;
	#20
	A = 16'h6b40;
	B = 16'h7153;
	ans = 16'h7323;
	#20
	A = 16'h70ec;
	B = 16'hee8c;
	ans = 16'h6a98;
	#20
	A = 16'h7411;
	B = 16'hf0f6;
	ans = 16'h6e58;
	#20
	A = 16'h748b;
	B = 16'h7668;
	ans = 16'h797a;
	#20
	A = 16'hf3de;
	B = 16'h762c;
	ans = 16'h707a;
	#20
	A = 16'h7613;
	B = 16'hf1a7;
	ans = 16'h727f;
	#20
	A = 16'hf40c;
	B = 16'h72cd;
	ans = 16'he92c;
	#20
	A = 16'h745e;
	B = 16'h720c;
	ans = 16'h7764;
	#20
	A = 16'h72f9;
	B = 16'h74d4;
	ans = 16'h7828;
	#20
	A = 16'h75f5;
	B = 16'h7494;
	ans = 16'h7944;
	#20
	A = 16'h7213;
	B = 16'he85e;
	ans = 16'h70fc;
	#20
	A = 16'h6d1f;
	B = 16'hf736;
	ans = 16'hf5ee;
	#20
	A = 16'h5220;
	B = 16'hf726;
	ans = 16'hf723;
	#20
	A = 16'h739f;
	B = 16'h76c7;
	ans = 16'h794b;
	#20
	A = 16'hf4a6;
	B = 16'h71f5;
	ans = 16'heeae;
	#20
	A = 16'hf280;
	B = 16'hefbb;
	ans = 16'hf52f;
	#20
	A = 16'hf4ee;
	B = 16'h767c;
	ans = 16'h6e38;
	#20
	A = 16'hf409;
	B = 16'hf492;
	ans = 16'hf84e;
	#20
	A = 16'hf326;
	B = 16'h7456;
	ans = 16'h6a18;
	#20
	A = 16'hf531;
	B = 16'hf4be;
	ans = 16'hf8f8;
	#20
	A = 16'hf5a6;
	B = 16'h7485;
	ans = 16'hec84;
	#20
	A = 16'h71d1;
	B = 16'hf278;
	ans = 16'he538;
	#20
	A = 16'hf6e3;
	B = 16'h73b5;
	ans = 16'hf211;
	#20
	A = 16'hf736;
	B = 16'heeb2;
	ans = 16'hf871;
	#20
	A = 16'hf62e;
	B = 16'heba3;
	ans = 16'hf722;
	#20
	A = 16'h74f3;
	B = 16'hf478;
	ans = 16'h67b0;
	#20
	A = 16'h63b8;
	B = 16'hf285;
	ans = 16'hf20a;
	#20
	A = 16'h74c7;
	B = 16'hf320;
	ans = 16'h6cdc;
	#20
	A = 16'h773c;
	B = 16'h6d02;
	ans = 16'h783e;
	#20
	A = 16'hf609;
	B = 16'heb74;
	ans = 16'hf6f8;
	#20
	A = 16'h7461;
	B = 16'h7498;
	ans = 16'h787c;
	#20
	A = 16'h7208;
	B = 16'h71f6;
	ans = 16'h75ff;
	#20
	A = 16'h701e;
	B = 16'hea4b;
	ans = 16'h6d16;
	#20
	A = 16'hf4c7;
	B = 16'h73e8;
	ans = 16'hea98;
	#20
	A = 16'hf068;
	B = 16'h769a;
	ans = 16'h7466;
	#20
	A = 16'h74b8;
	B = 16'h72f1;
	ans = 16'h7818;
	#20
	A = 16'h74c9;
	B = 16'hf47a;
	ans = 16'h64f0;
	#20
	A = 16'h6f6d;
	B = 16'h6c22;
	ans = 16'h71c8;
	#20
	A = 16'h641f;
	B = 16'hf2ee;
	ans = 16'hf26a;
	#20
	A = 16'hf54c;
	B = 16'he18c;
	ans = 16'hf578;
	#20
	A = 16'hf4d7;
	B = 16'hf750;
	ans = 16'hfa14;
	#20
	A = 16'h6de1;
	B = 16'hf29d;
	ans = 16'hef59;
	#20
	A = 16'h5c08;
	B = 16'h713f;
	ans = 16'h715f;
	#20
	A = 16'h6472;
	B = 16'hf515;
	ans = 16'hf4ce;
	#20
	A = 16'hf541;
	B = 16'hf46c;
	ans = 16'hf8d6;
	#20
	A = 16'hf598;
	B = 16'hf07b;
	ans = 16'hf7d6;
	#20
	A = 16'hf365;
	B = 16'h736b;
	ans = 16'h5200;
	#20
	A = 16'h67c7;
	B = 16'h7518;
	ans = 16'h7594;
	#20
	A = 16'hf2ab;
	B = 16'hf702;
	ans = 16'hf92c;
	#20
	A = 16'hf348;
	B = 16'he6c0;
	ans = 16'hf410;
	#20
	A = 16'hf186;
	B = 16'hea41;
	ans = 16'hf316;
	#20
	A = 16'hf136;
	B = 16'hf3ae;
	ans = 16'hf672;
	#20
	A = 16'h75b7;
	B = 16'h6686;
	ans = 16'h761f;
	#20
	A = 16'h76d7;
	B = 16'hf474;
	ans = 16'h70c6;
	#20
	A = 16'h7206;
	B = 16'h6ec8;
	ans = 16'h74b5;
	#20
	A = 16'h71b8;
	B = 16'h75c9;
	ans = 16'h7852;
	#20
	A = 16'hf4a3;
	B = 16'h75c3;
	ans = 16'h6c80;
	#20
	A = 16'h729f;
	B = 16'h65a9;
	ans = 16'h7354;
	#20
	A = 16'h75dc;
	B = 16'hf50e;
	ans = 16'h6a70;
	#20
	A = 16'hf415;
	B = 16'h7264;
	ans = 16'heb18;
	#20
	A = 16'h7387;
	B = 16'h763a;
	ans = 16'h78ff;
	#20
	A = 16'hf6bc;
	B = 16'he920;
	ans = 16'hf760;
	#20
	A = 16'h768c;
	B = 16'h75fe;
	ans = 16'h7a45;
	#20
	A = 16'hf593;
	B = 16'hf171;
	ans = 16'hf826;
	#20
	A = 16'h7734;
	B = 16'h724f;
	ans = 16'h792e;
	#20
	A = 16'hf1d4;
	B = 16'h7566;
	ans = 16'h70f8;
	#20
	A = 16'h774b;
	B = 16'hf61a;
	ans = 16'h6cc4;
	#20
	A = 16'h67fa;
	B = 16'hf39f;
	ans = 16'hf2a0;
	#20
	A = 16'he4d9;
	B = 16'h742a;
	ans = 16'h73b9;
	#20
	A = 16'hea40;
	B = 16'h7667;
	ans = 16'h759f;
	#20
	A = 16'hf49c;
	B = 16'h722a;
	ans = 16'hee1c;
	#20
	A = 16'h72f4;
	B = 16'hf5a4;
	ans = 16'hf054;
	#20
	A = 16'h75cc;
	B = 16'hf347;
	ans = 16'h7051;
	#20
	A = 16'hf5f5;
	B = 16'hf4af;
	ans = 16'hf952;
	#20
	A = 16'h6eec;
	B = 16'h6f47;
	ans = 16'h731a;
	#20
	A = 16'hf064;
	B = 16'h6d62;
	ans = 16'heacc;
	#20
	A = 16'h70a7;
	B = 16'h7725;
	ans = 16'h78bc;
	#20
	A = 16'hf01b;
	B = 16'hf262;
	ans = 16'hf53e;
	#20
	A = 16'h720c;
	B = 16'h76b0;
	ans = 16'h78db;
	#20
	A = 16'hefd7;
	B = 16'h71a1;
	ans = 16'h6ad6;
	#20
	A = 16'h759f;
	B = 16'h6855;
	ans = 16'h762a;
	#20
	A = 16'hf194;
	B = 16'hf48f;
	ans = 16'hf759;
	#20
	A = 16'h6e98;
	B = 16'hf52c;
	ans = 16'hf30c;
	#20
	A = 16'h7267;
	B = 16'hf423;
	ans = 16'heb7c;
	#20
	A = 16'h6c41;
	B = 16'h758d;
	ans = 16'h769d;
	#20
	A = 16'hf047;
	B = 16'hf506;
	ans = 16'hf72a;
	#20
	A = 16'he8b0;
	B = 16'he79e;
	ans = 16'hec40;
	#20
	A = 16'hecb4;
	B = 16'h72f8;
	ans = 16'h709e;
	#20
	A = 16'h7585;
	B = 16'hf2e0;
	ans = 16'h702a;
	#20
	A = 16'h7645;
	B = 16'h7137;
	ans = 16'h7870;
	#20
	A = 16'h5776;
	B = 16'h7461;
	ans = 16'h7468;
	#20
	A = 16'hf743;
	B = 16'hf58c;
	ans = 16'hfa68;
	#20
	A = 16'hf6e2;
	B = 16'hf172;
	ans = 16'hf8ce;
	#20
	A = 16'h6c09;
	B = 16'hf4e4;
	ans = 16'hf3c4;
	#20
	A = 16'h7467;
	B = 16'h73d3;
	ans = 16'h7828;
	#20
	A = 16'h661c;
	B = 16'h729d;
	ans = 16'h7360;
	#20
	A = 16'hf3af;
	B = 16'hf511;
	ans = 16'hf874;
	#20
	A = 16'h7502;
	B = 16'h7738;
	ans = 16'h7a1d;
	#20
	A = 16'hf6be;
	B = 16'h718c;
	ans = 16'hf3f0;
	#20
	A = 16'h6ebe;
	B = 16'hf449;
	ans = 16'hf133;
	#20
	A = 16'hf6dd;
	B = 16'h74e6;
	ans = 16'hefdc;
	#20
	A = 16'hf6d5;
	B = 16'h715c;
	ans = 16'hf427;
	#20
	A = 16'hf02f;
	B = 16'hf0c4;
	ans = 16'hf47a;
	#20
	A = 16'h6efe;
	B = 16'h76a4;
	ans = 16'h7832;
	#20
	A = 16'hf656;
	B = 16'hf12d;
	ans = 16'hf876;
	#20
	A = 16'h7669;
	B = 16'h75ea;
	ans = 16'h7a2a;
	#20
	A = 16'hf557;
	B = 16'h744b;
	ans = 16'hec30;
	#20
	A = 16'h71e0;
	B = 16'h7718;
	ans = 16'h7904;
	#20
	A = 16'hf32c;
	B = 16'h7687;
	ans = 16'h71e2;
	#20
	A = 16'h75ca;
	B = 16'h70df;
	ans = 16'h781d;
	#20
	A = 16'h6df3;
	B = 16'hf3de;
	ans = 16'hf0e4;
	#20
	A = 16'hef1e;
	B = 16'h70d8;
	ans = 16'h6924;
	#20
	A = 16'hf4bb;
	B = 16'h71f6;
	ans = 16'hef00;
	#20
	A = 16'hf405;
	B = 16'h71b5;
	ans = 16'hecaa;
	#20
	A = 16'h71c3;
	B = 16'hf48c;
	ans = 16'heeaa;
	#20
	A = 16'hf433;
	B = 16'h766b;
	ans = 16'h7070;
	#20
	A = 16'hf577;
	B = 16'hf4b8;
	ans = 16'hf918;
	#20
	A = 16'h75cc;
	B = 16'h7186;
	ans = 16'h7848;
	#20
	A = 16'heef6;
	B = 16'h6f77;
	ans = 16'h6008;
	#20
	A = 16'h6ec5;
	B = 16'he28e;
	ans = 16'h6df3;
	#20
	A = 16'hedc3;
	B = 16'hf4bc;
	ans = 16'hf62d;
	#20
	A = 16'hf5fe;
	B = 16'h7492;
	ans = 16'hedb0;
	#20
	A = 16'h75c5;
	B = 16'hef7e;
	ans = 16'h73cb;
	#20
	A = 16'hf13f;
	B = 16'hea87;
	ans = 16'hf2e1;
	#20
	A = 16'h766d;
	B = 16'hf61b;
	ans = 16'h6520;
	#20
	A = 16'h7572;
	B = 16'hf66d;
	ans = 16'hebd8;
	#20
	A = 16'hf0ed;
	B = 16'hf489;
	ans = 16'hf700;
	#20
	A = 16'h717c;
	B = 16'hf242;
	ans = 16'he630;
	#20
	A = 16'hf554;
	B = 16'h5cee;
	ans = 16'hf540;
	#20
	A = 16'h72b9;
	B = 16'h7071;
	ans = 16'h7595;
	#20
	A = 16'hf59d;
	B = 16'hf6b7;
	ans = 16'hfa2a;
	#20
	A = 16'he4cb;
	B = 16'h70f7;
	ans = 16'h705e;
	#20
	A = 16'h6e49;
	B = 16'hf6bc;
	ans = 16'hf52a;
	#20
	A = 16'hf541;
	B = 16'he8b7;
	ans = 16'hf5d8;
	#20
	A = 16'he918;
	B = 16'hed6a;
	ans = 16'heff6;
	#20
	A = 16'h75a6;
	B = 16'hf1af;
	ans = 16'h719d;
	#20
	A = 16'hf509;
	B = 16'h513e;
	ans = 16'hf506;
	#20
	A = 16'h5e04;
	B = 16'h75bb;
	ans = 16'h75d3;
	#20
	A = 16'h754d;
	B = 16'hf563;
	ans = 16'hdd80;
	#20
	A = 16'h73d4;
	B = 16'heeec;
	ans = 16'h705e;
	#20
	A = 16'hed51;
	B = 16'h7406;
	ans = 16'h7164;
	#20
	A = 16'h6bbb;
	B = 16'hf5ee;
	ans = 16'hf4f7;
	#20
	A = 16'h76d1;
	B = 16'hecd5;
	ans = 16'h759c;
	#20
	A = 16'hf173;
	B = 16'h7480;
	ans = 16'h6f1a;
	#20
	A = 16'h74b9;
	B = 16'h716f;
	ans = 16'h7770;
	#20
	A = 16'hf202;
	B = 16'h7372;
	ans = 16'h69c0;
	#20
	A = 16'hf4d9;
	B = 16'h7671;
	ans = 16'h6e60;
	#20
	A = 16'hf72f;
	B = 16'hf4b6;
	ans = 16'hf9f2;
	#20
	A = 16'hf724;
	B = 16'hee5c;
	ans = 16'hf85e;
	#20
	A = 16'h6f14;
	B = 16'h72ce;
	ans = 16'h752c;
	#20
	A = 16'h7453;
	B = 16'h70f5;
	ans = 16'h76ce;
	#20
	A = 16'hf69a;
	B = 16'hee01;
	ans = 16'hf80d;
	#20
	A = 16'hf74a;
	B = 16'hf3ed;
	ans = 16'hf9a0;
	#20
	A = 16'hf1a6;
	B = 16'hf3a7;
	ans = 16'hf6a6;
	#20
	A = 16'hf32a;
	B = 16'hf1ab;
	ans = 16'hf66a;
	#20
	A = 16'hf505;
	B = 16'hf6a8;
	ans = 16'hf9d6;
	#20
	A = 16'hf3d6;
	B = 16'hf12b;
	ans = 16'hf680;
	#20
	A = 16'hea71;
	B = 16'h73ce;
	ans = 16'h7232;
	#20
	A = 16'h75d0;
	B = 16'hf5ed;
	ans = 16'hdf40;
	#20
	A = 16'hf10a;
	B = 16'heaf4;
	ans = 16'hf2c7;
	#20
	A = 16'hf3f1;
	B = 16'hecbc;
	ans = 16'hf528;
	#20
	A = 16'hed62;
	B = 16'hee05;
	ans = 16'hf1b4;
	#20
	A = 16'hef1e;
	B = 16'hed90;
	ans = 16'hf257;
	#20
	A = 16'hf6d3;
	B = 16'hf1f3;
	ans = 16'hf8e6;
	#20
	A = 16'hf00c;
	B = 16'hef19;
	ans = 16'hf398;
	#20
	A = 16'h5aaa;
	B = 16'hf6bc;
	ans = 16'hf6af;
	#20
	A = 16'hf5e8;
	B = 16'h7442;
	ans = 16'hee98;
	#20
	A = 16'hf5b6;
	B = 16'hf5ac;
	ans = 16'hf9b1;
	#20
	A = 16'he554;
	B = 16'h6a44;
	ans = 16'h6734;
	#20
	A = 16'hf481;
	B = 16'hf082;
	ans = 16'hf6c2;
	#20
	A = 16'h758e;
	B = 16'hf5f9;
	ans = 16'he6b0;
	#20
	A = 16'h75de;
	B = 16'hf459;
	ans = 16'h6e14;
	#20
	A = 16'h743b;
	B = 16'h6c40;
	ans = 16'h754b;
	#20
	A = 16'h7725;
	B = 16'hf4f9;
	ans = 16'h7058;
	#20
	A = 16'hec0d;
	B = 16'h719d;
	ans = 16'h6f2d;
	#20
	A = 16'hf71e;
	B = 16'hf0e5;
	ans = 16'hf8c8;
	#20
	A = 16'hef1a;
	B = 16'h7650;
	ans = 16'h748a;
	#20
	A = 16'h7396;
	B = 16'h6b8d;
	ans = 16'h74bd;
	#20
	A = 16'h6df8;
	B = 16'h7691;
	ans = 16'h7808;
	#20
	A = 16'h696b;
	B = 16'hea50;
	ans = 16'hdf28;
	#20
	A = 16'h7203;
	B = 16'h74f3;
	ans = 16'h77f4;
	#20
	A = 16'h6f10;
	B = 16'hecb0;
	ans = 16'h68c0;
	#20
	A = 16'hf375;
	B = 16'h67ab;
	ans = 16'hf280;
	#20
	A = 16'hf475;
	B = 16'hf73f;
	ans = 16'hf9da;
	#20
	A = 16'h72db;
	B = 16'h7529;
	ans = 16'h784b;
	#20
	A = 16'hf08d;
	B = 16'hf38b;
	ans = 16'hf60c;
	#20
	A = 16'h70a4;
	B = 16'h74a2;
	ans = 16'h76f4;
	#20
	A = 16'h7180;
	B = 16'hf6da;
	ans = 16'hf41a;
	#20
	A = 16'hf4d3;
	B = 16'hf5a7;
	ans = 16'hf93d;
	#20
	A = 16'h6504;
	B = 16'h6ed0;
	ans = 16'h7008;
	#20
	A = 16'h6c6d;
	B = 16'h6f86;
	ans = 16'h71fa;
	#20
	A = 16'h7280;
	B = 16'hf5ff;
	ans = 16'hf17e;
	#20
	A = 16'hf692;
	B = 16'hf33d;
	ans = 16'hf918;
	#20
	A = 16'hf5d6;
	B = 16'h714e;
	ans = 16'hf25e;
	#20
	A = 16'hf47b;
	B = 16'hf616;
	ans = 16'hf948;
	#20
	A = 16'h7456;
	B = 16'h6d8d;
	ans = 16'h75b9;
	#20
	A = 16'h767b;
	B = 16'h737d;
	ans = 16'h791d;
	#20
	A = 16'h6699;
	B = 16'hf65f;
	ans = 16'hf5f5;
	#20
	A = 16'hf717;
	B = 16'hf211;
	ans = 16'hf910;
	#20
	A = 16'hf326;
	B = 16'hf4e0;
	ans = 16'hf83a;
	#20
	A = 16'hf469;
	B = 16'h6c05;
	ans = 16'hf2d0;
	#20
	A = 16'hec20;
	B = 16'h5e6d;
	ans = 16'heb72;
	#20
	A = 16'h74b6;
	B = 16'h72ac;
	ans = 16'h7806;
	#20
	A = 16'h71b6;
	B = 16'hf2da;
	ans = 16'he890;
	#20
	A = 16'hf589;
	B = 16'hf186;
	ans = 16'hf826;
	#20
	A = 16'h72d3;
	B = 16'h7218;
	ans = 16'h7676;
	#20
	A = 16'h7570;
	B = 16'hf346;
	ans = 16'h6f34;
	#20
	A = 16'h6d7b;
	B = 16'hee1a;
	ans = 16'he0f8;
	#20
	A = 16'h5efd;
	B = 16'hf216;
	ans = 16'hf1de;
	#20
	A = 16'h727c;
	B = 16'h7533;
	ans = 16'h7838;
	#20
	A = 16'h74f7;
	B = 16'h7545;
	ans = 16'h791e;
	#20
	A = 16'h6e6a;
	B = 16'h74e1;
	ans = 16'h767c;
	#20
	A = 16'h6e41;
	B = 16'h7480;
	ans = 16'h7610;
	#20
	A = 16'h6a60;
	B = 16'h76ca;
	ans = 16'h7796;
	#20
	A = 16'hef11;
	B = 16'hf1a7;
	ans = 16'hf498;
	#20
	A = 16'h7504;
	B = 16'h7567;
	ans = 16'h7936;
	#20
	A = 16'hf431;
	B = 16'hea1a;
	ans = 16'hf4f4;
	#20
	A = 16'h71b3;
	B = 16'h72f0;
	ans = 16'h7652;
	#20
	A = 16'h7357;
	B = 16'h76de;
	ans = 16'h7945;
	#20
	A = 16'hf31d;
	B = 16'h6a75;
	ans = 16'hf180;
	#20
	A = 16'h746f;
	B = 16'hf3db;
	ans = 16'h680c;
	#20
	A = 16'h6ded;
	B = 16'h751a;
	ans = 16'h7695;
	#20
	A = 16'hf26f;
	B = 16'hf5b6;
	ans = 16'hf877;
	#20
	A = 16'hf6ac;
	B = 16'h6c00;
	ans = 16'hf5ac;
	#20
	A = 16'h7154;
	B = 16'hed4c;
	ans = 16'h6d5c;
	#20
	A = 16'hf62c;
	B = 16'hf6e8;
	ans = 16'hfa8a;
	#20
	A = 16'h7635;
	B = 16'hed8e;
	ans = 16'h74d2;
	#20
	A = 16'hf0f7;
	B = 16'h7624;
	ans = 16'h7351;
	#20
	A = 16'hf3ce;
	B = 16'h747c;
	ans = 16'h68a8;
	#20
	A = 16'h7683;
	B = 16'hf05a;
	ans = 16'h7456;
	#20
	A = 16'hf53e;
	B = 16'hf60d;
	ans = 16'hf9a6;
	#20
	A = 16'hf660;
	B = 16'h71a4;
	ans = 16'hf31c;
	#20
	A = 16'hf219;
	B = 16'h76ab;
	ans = 16'h733d;
	#20
	A = 16'hf08d;
	B = 16'hf19f;
	ans = 16'hf516;
	#20
	A = 16'hf501;
	B = 16'hf522;
	ans = 16'hf912;
	#20
	A = 16'h7171;
	B = 16'hedb1;
	ans = 16'h6d31;
	#20
	A = 16'h748c;
	B = 16'h7428;
	ans = 16'h785a;
	#20
	A = 16'hf3cd;
	B = 16'hf420;
	ans = 16'hf803;
	#20
	A = 16'hefed;
	B = 16'h6cb0;
	ans = 16'hea7a;
	#20
	A = 16'h6e23;
	B = 16'hf27c;
	ans = 16'heed5;
	#20
	A = 16'hf0a4;
	B = 16'hec88;
	ans = 16'hf2e8;
	#20
	A = 16'hf275;
	B = 16'hf51b;
	ans = 16'hf82b;
	#20
	A = 16'h7421;
	B = 16'hf2b0;
	ans = 16'h6a48;
	#20
	A = 16'h7417;
	B = 16'h6ed2;
	ans = 16'h75cc;
	#20
	A = 16'h74b0;
	B = 16'h68e4;
	ans = 16'h754c;
	#20
	A = 16'hf72f;
	B = 16'h738d;
	ans = 16'hf2d1;
	#20
	A = 16'h7684;
	B = 16'h6d83;
	ans = 16'h77e5;
	#20
	A = 16'h772f;
	B = 16'h6c6a;
	ans = 16'h7825;
	#20
	A = 16'hf24d;
	B = 16'hef2d;
	ans = 16'hf4f2;
	#20
	A = 16'h75c2;
	B = 16'h7516;
	ans = 16'h796c;
	#20
	A = 16'h65a5;
	B = 16'h5863;
	ans = 16'h6631;
	#20
	A = 16'hf0e6;
	B = 16'h6393;
	ans = 16'hf06d;
	#20
	A = 16'h71d5;
	B = 16'h6cd8;
	ans = 16'h7420;
	#20
	A = 16'hec93;
	B = 16'hf727;
	ans = 16'hf826;
	#20
	A = 16'h7069;
	B = 16'hf579;
	ans = 16'hf289;
	#20
	A = 16'hf634;
	B = 16'hf561;
	ans = 16'hf9ca;
	#20
	A = 16'he6c1;
	B = 16'hf59e;
	ans = 16'hf60a;
	#20
	A = 16'hf6e5;
	B = 16'hec7f;
	ans = 16'hf802;
	#20
	A = 16'hed84;
	B = 16'h6fc6;
	ans = 16'h6884;
	#20
	A = 16'hf523;
	B = 16'h6e1d;
	ans = 16'hf338;
	#20
	A = 16'h73d6;
	B = 16'hf4e2;
	ans = 16'hebb8;
	#20
	A = 16'h5848;
	B = 16'he5ac;
	ans = 16'he523;
	#20
	A = 16'h74f4;
	B = 16'h6ac4;
	ans = 16'h75cc;
	#20
	A = 16'hf2f9;
	B = 16'hf27e;
	ans = 16'hf6bc;
	#20
	A = 16'he600;
	B = 16'hf2f6;
	ans = 16'hf3b6;
	#20
	A = 16'h7636;
	B = 16'h7709;
	ans = 16'h7aa0;
	#20
	A = 16'h75c7;
	B = 16'h7003;
	ans = 16'h77c8;
	#20
	A = 16'h7441;
	B = 16'hf3e7;
	ans = 16'h64d8;
	#20
	A = 16'h76b0;
	B = 16'hf4ca;
	ans = 16'h6f98;
	#20
	A = 16'hf552;
	B = 16'h758f;
	ans = 16'h63a0;
	#20
	A = 16'h76bd;
	B = 16'hf48c;
	ans = 16'h7062;
	#20
	A = 16'hf087;
	B = 16'h5d75;
	ans = 16'hf05b;
	#20
	A = 16'h7480;
	B = 16'h6968;
	ans = 16'h752d;
	#20
	A = 16'h740d;
	B = 16'h71f1;
	ans = 16'h7706;
	#20
	A = 16'hecf3;
	B = 16'h712e;
	ans = 16'h6d69;
	#20
	A = 16'hf274;
	B = 16'h76c0;
	ans = 16'h730c;
	#20
	A = 16'hf3c7;
	B = 16'hf5d5;
	ans = 16'hf8dc;
	#20
	A = 16'h7487;
	B = 16'h706a;
	ans = 16'h76bc;
	#20
	A = 16'h72e5;
	B = 16'h7420;
	ans = 16'h7792;
	#20
	A = 16'h72c1;
	B = 16'h74d1;
	ans = 16'h7819;
	#20
	A = 16'h6f7d;
	B = 16'he8f5;
	ans = 16'h6d02;
	#20
	A = 16'hf656;
	B = 16'he557;
	ans = 16'hf6ab;
	#20
	A = 16'h736a;
	B = 16'h74de;
	ans = 16'h784a;
	#20
	A = 16'h772f;
	B = 16'h7234;
	ans = 16'h7924;
	#20
	A = 16'hf71e;
	B = 16'h715a;
	ans = 16'hf471;
	#20
	A = 16'h74a5;
	B = 16'hf570;
	ans = 16'hea58;
	#20
	A = 16'hf1c1;
	B = 16'hee54;
	ans = 16'hf476;
	#20
	A = 16'hf4eb;
	B = 16'hee84;
	ans = 16'hf68c;
	#20
	A = 16'hf686;
	B = 16'h76ba;
	ans = 16'h6280;
	#20
	A = 16'hf4c9;
	B = 16'h7264;
	ans = 16'hee5c;
	#20
	A = 16'hf6c9;
	B = 16'hef04;
	ans = 16'hf845;
	#20
	A = 16'hf1b6;
	B = 16'h68ab;
	ans = 16'hf08b;
	#20
	A = 16'hf6c2;
	B = 16'h755a;
	ans = 16'heda0;
	#20
	A = 16'h6f74;
	B = 16'hdee1;
	ans = 16'h6f06;
	#20
	A = 16'h6f01;
	B = 16'hf672;
	ans = 16'hf4b2;
	#20
	A = 16'hf1c8;
	B = 16'h6ca5;
	ans = 16'heeeb;
	#20
	A = 16'hf6b4;
	B = 16'hf0fb;
	ans = 16'hf899;
	#20
	A = 16'hf09e;
	B = 16'h6be3;
	ans = 16'hed4a;
	#20
	A = 16'hf315;
	B = 16'h75a1;
	ans = 16'h702d;
	#20
	A = 16'hf1e6;
	B = 16'h744d;
	ans = 16'h6d68;
	#20
	A = 16'h763d;
	B = 16'hf548;
	ans = 16'h6ba8;
	#20
	A = 16'he7ab;
	B = 16'h7640;
	ans = 16'h75c5;
	#20
	A = 16'h723b;
	B = 16'hf334;
	ans = 16'he7c8;
	#20
	A = 16'heed9;
	B = 16'h7738;
	ans = 16'h7582;
	#20
	A = 16'hef42;
	B = 16'h756a;
	ans = 16'h7333;
	#20
	A = 16'hf742;
	B = 16'hf424;
	ans = 16'hf9b3;
	#20
	A = 16'h72ed;
	B = 16'hee1a;
	ans = 16'h6fc0;
	#20
	A = 16'hf66a;
	B = 16'h7532;
	ans = 16'hece0;
	#20
	A = 16'h714f;
	B = 16'h746a;
	ans = 16'h7712;
	#20
	A = 16'he932;
	B = 16'h6578;
	ans = 16'he4ec;
	#20
	A = 16'h7402;
	B = 16'hf17b;
	ans = 16'h6d12;
	#20
	A = 16'hf510;
	B = 16'hf468;
	ans = 16'hf8bc;
	#20
	A = 16'h7752;
	B = 16'hf55c;
	ans = 16'h6fd8;
	#20
	A = 16'hec74;
	B = 16'h74bb;
	ans = 16'h733c;
	#20
	A = 16'hf643;
	B = 16'h6dfa;
	ans = 16'hf4c4;
	#20
	A = 16'h7434;
	B = 16'h525f;
	ans = 16'h7437;
	#20
	A = 16'h763c;
	B = 16'hf5af;
	ans = 16'h6868;
	#20
	A = 16'hf027;
	B = 16'he951;
	ans = 16'hf17b;
	#20
	A = 16'hf2e0;
	B = 16'h71fd;
	ans = 16'he718;
	#20
	A = 16'hf466;
	B = 16'h73f9;
	ans = 16'he698;
	#20
	A = 16'he97a;
	B = 16'h7701;
	ans = 16'h7652;
	#20
	A = 16'hed40;
	B = 16'hf6dc;
	ans = 16'hf816;
	#20
	A = 16'hf132;
	B = 16'h7106;
	ans = 16'hdd80;
	#20
	A = 16'hf535;
	B = 16'h7010;
	ans = 16'hf25a;
	#20
	A = 16'hf2e8;
	B = 16'h75ff;
	ans = 16'h7116;
	#20
	A = 16'h771c;
	B = 16'h6e11;
	ans = 16'h7850;
	#20
	A = 16'h7565;
	B = 16'h6d32;
	ans = 16'h76b2;
	#20
	A = 16'hf1b5;
	B = 16'hf0e7;
	ans = 16'hf54e;
	#20
	A = 16'h746e;
	B = 16'hedf4;
	ans = 16'h71e2;
	#20
	A = 16'h764d;
	B = 16'h7359;
	ans = 16'h78fd;
	#20
	A = 16'h6ed3;
	B = 16'h66dc;
	ans = 16'h7045;
	#20
	A = 16'hedb6;
	B = 16'h7559;
	ans = 16'h73d7;
	#20
	A = 16'h6c59;
	B = 16'hf39d;
	ans = 16'hf170;
	#20
	A = 16'hf559;
	B = 16'hf195;
	ans = 16'hf812;
	#20
	A = 16'hef4b;
	B = 16'hf017;
	ans = 16'hf3bc;
	#20
	A = 16'hefe7;
	B = 16'h7207;
	ans = 16'h6c27;
	#20
	A = 16'h66a1;
	B = 16'hf567;
	ans = 16'hf4fd;
	#20
	A = 16'hf697;
	B = 16'h6474;
	ans = 16'hf650;
	#20
	A = 16'heee4;
	B = 16'hef52;
	ans = 16'hf31b;
	#20
	A = 16'h741f;
	B = 16'h74b1;
	ans = 16'h7868;
	#20
	A = 16'hf60a;
	B = 16'h76d8;
	ans = 16'h6a70;
	#20
	A = 16'hf672;
	B = 16'hf075;
	ans = 16'hf856;
	#20
	A = 16'hf73b;
	B = 16'h70a4;
	ans = 16'hf4e9;
	#20
	A = 16'h72ea;
	B = 16'hf6b3;
	ans = 16'hf27c;
	#20
	A = 16'h7622;
	B = 16'hdd31;
	ans = 16'h760d;
	#20
	A = 16'hf4a3;
	B = 16'h7187;
	ans = 16'hef7e;
	#20
	A = 16'h64e0;
	B = 16'h6c64;
	ans = 16'h6d9c;
	#20
	A = 16'hf417;
	B = 16'h7372;
	ans = 16'he5e0;
	#20
	A = 16'h72a5;
	B = 16'h700a;
	ans = 16'h7558;
	#20
	A = 16'h7547;
	B = 16'he532;
	ans = 16'h74f4;
	#20
	A = 16'hf606;
	B = 16'hf51c;
	ans = 16'hf991;
	#20
	A = 16'h6b78;
	B = 16'h75a8;
	ans = 16'h7697;
	#20
	A = 16'h7529;
	B = 16'h71c5;
	ans = 16'h7806;
	#20
	A = 16'h770f;
	B = 16'hf6ea;
	ans = 16'h60a0;
	#20
	A = 16'h7295;
	B = 16'hf303;
	ans = 16'he2e0;
	#20
	A = 16'hf2b0;
	B = 16'h75a3;
	ans = 16'h7096;
	#20
	A = 16'h7321;
	B = 16'h597b;
	ans = 16'h7337;
	#20
	A = 16'hf41d;
	B = 16'h6c0c;
	ans = 16'hf234;
	#20
	A = 16'h7191;
	B = 16'hea5c;
	ans = 16'h6ff4;
	#20
	A = 16'hf6d0;
	B = 16'h768d;
	ans = 16'he430;
	#20
	A = 16'hf298;
	B = 16'hf410;
	ans = 16'hf75c;
	#20
	A = 16'h6b6e;
	B = 16'h7698;
	ans = 16'h7786;
	#20
	A = 16'hf520;
	B = 16'h6d7a;
	ans = 16'hf383;
	#20
	A = 16'hee4d;
	B = 16'h7029;
	ans = 16'h680a;
	#20
	A = 16'h759d;
	B = 16'hf4d8;
	ans = 16'h6a28;
	#20
	A = 16'h75fd;
	B = 16'h709a;
	ans = 16'h7825;
	#20
	A = 16'h7611;
	B = 16'h730c;
	ans = 16'h78cc;
	#20
	A = 16'h7687;
	B = 16'hf719;
	ans = 16'he890;
	#20
	A = 16'hf57b;
	B = 16'h70ec;
	ans = 16'hf20a;
	#20
	A = 16'h733f;
	B = 16'h686e;
	ans = 16'h742d;
	#20
	A = 16'h6ab9;
	B = 16'h7646;
	ans = 16'h771d;
	#20
	A = 16'hef5a;
	B = 16'hf5a0;
	ans = 16'hf776;
	#20
	A = 16'h6dfa;
	B = 16'h76a1;
	ans = 16'h7810;
	#20
	A = 16'hf16e;
	B = 16'h75a0;
	ans = 16'h71d2;
	#20
	A = 16'hf58d;
	B = 16'he1ac;
	ans = 16'hf5ba;
	#20
	A = 16'he8c6;
	B = 16'he119;
	ans = 16'hea0c;
	#20
	A = 16'hed03;
	B = 16'h6b5d;
	ans = 16'he552;
	#20
	A = 16'h757d;
	B = 16'hec82;
	ans = 16'h745c;
	#20
	A = 16'h723b;
	B = 16'hf350;
	ans = 16'he854;
	#20
	A = 16'hece1;
	B = 16'h6856;
	ans = 16'he96c;
	#20
	A = 16'h7674;
	B = 16'hf575;
	ans = 16'h6bf8;
	#20
	A = 16'h7745;
	B = 16'h57f6;
	ans = 16'h774d;
	#20
	A = 16'h74b0;
	B = 16'hf350;
	ans = 16'h6c20;
	#20
	A = 16'hf6a4;
	B = 16'h714a;
	ans = 16'hf3fe;
	#20
	A = 16'heaa0;
	B = 16'h703c;
	ans = 16'h6d28;
	#20
	A = 16'hec5c;
	B = 16'h7060;
	ans = 16'h6c64;
	#20
	A = 16'h708f;
	B = 16'h7399;
	ans = 16'h7614;
	#20
	A = 16'h73a0;
	B = 16'hf216;
	ans = 16'h6a28;
	#20
	A = 16'h740d;
	B = 16'h7461;
	ans = 16'h7837;
	#20
	A = 16'h726d;
	B = 16'hf340;
	ans = 16'he698;
	#20
	A = 16'h6e27;
	B = 16'hf388;
	ans = 16'hf074;
	#20
	A = 16'hf589;
	B = 16'hf585;
	ans = 16'hf987;
	#20
	A = 16'h7059;
	B = 16'h7581;
	ans = 16'h77ae;
	#20
	A = 16'hf720;
	B = 16'h6eb3;
	ans = 16'hf573;
	#20
	A = 16'h7472;
	B = 16'hf6cb;
	ans = 16'hf0b2;
	#20
	A = 16'h7461;
	B = 16'h7700;
	ans = 16'h79b0;
	#20
	A = 16'h720e;
	B = 16'h7527;
	ans = 16'h7817;
	#20
	A = 16'hf5d4;
	B = 16'h73a2;
	ans = 16'hf006;
	#20
	A = 16'hf031;
	B = 16'h6570;
	ans = 16'hef06;
	#20
	A = 16'h75d3;
	B = 16'h7563;
	ans = 16'h799b;
	#20
	A = 16'he714;
	B = 16'h7339;
	ans = 16'h7256;
	#20
	A = 16'h5fc1;
	B = 16'hf4da;
	ans = 16'hf4bb;
	#20
	A = 16'h734f;
	B = 16'h74dd;
	ans = 16'h7842;
	#20
	A = 16'h700c;
	B = 16'hf128;
	ans = 16'he870;
	#20
	A = 16'hf632;
	B = 16'hf750;
	ans = 16'hfac1;
	#20
	A = 16'h76c7;
	B = 16'he4ea;
	ans = 16'h7678;
	#20
	A = 16'h6b8b;
	B = 16'hf031;
	ans = 16'hec9c;
	#20
	A = 16'hf16a;
	B = 16'heb37;
	ans = 16'hf338;
	#20
	A = 16'hf5d9;
	B = 16'hf643;
	ans = 16'hfa0e;
	#20
	A = 16'h6ddf;
	B = 16'h6203;
	ans = 16'h6e9f;
	#20
	A = 16'h74ae;
	B = 16'h731f;
	ans = 16'h781f;
	#20
	A = 16'h6328;
	B = 16'hf40a;
	ans = 16'hf3a2;
	#20
	A = 16'h668c;
	B = 16'hf723;
	ans = 16'hf6ba;
	#20
	A = 16'hf54d;
	B = 16'hec89;
	ans = 16'hf66f;
	#20
	A = 16'hf663;
	B = 16'hec99;
	ans = 16'hf789;
	#20
	A = 16'hf1bc;
	B = 16'h70d7;
	ans = 16'he728;
	#20
	A = 16'h7359;
	B = 16'h7496;
	ans = 16'h7821;
	#20
	A = 16'h771d;
	B = 16'h7590;
	ans = 16'h7a56;
	#20
	A = 16'hee9d;
	B = 16'h6e62;
	ans = 16'hdb60;
	#20
	A = 16'hee5d;
	B = 16'hf746;
	ans = 16'hf86f;
	#20
	A = 16'h6ef2;
	B = 16'h7735;
	ans = 16'h7879;
	#20
	A = 16'hf667;
	B = 16'h75a8;
	ans = 16'he9f8;
	#20
	A = 16'h7089;
	B = 16'hf2db;
	ans = 16'heca4;
	#20
	A = 16'h713c;
	B = 16'hf4c8;
	ans = 16'hf054;
	#20
	A = 16'hf420;
	B = 16'h7743;
	ans = 16'h7246;
	#20
	A = 16'hef01;
	B = 16'h7597;
	ans = 16'h73ae;
	#20
	A = 16'hece6;
	B = 16'h6fbb;
	ans = 16'h69aa;
	#20
	A = 16'hef4f;
	B = 16'hf4ac;
	ans = 16'hf680;
	#20
	A = 16'h76d4;
	B = 16'hdd29;
	ans = 16'h76bf;
	#20
	A = 16'he9b8;
	B = 16'h7466;
	ans = 16'h735e;
	#20
	A = 16'hf522;
	B = 16'heb12;
	ans = 16'hf604;
	#20
	A = 16'hf511;
	B = 16'hf5fa;
	ans = 16'hf986;
	#20
	A = 16'h7656;
	B = 16'hf4de;
	ans = 16'h6de0;
	#20
	A = 16'h6427;
	B = 16'hf513;
	ans = 16'hf4d1;
	#20
	A = 16'h75a6;
	B = 16'h757f;
	ans = 16'h7992;
	#20
	A = 16'he3a2;
	B = 16'hf1af;
	ans = 16'hf229;
	#20
	A = 16'he8a6;
	B = 16'hec44;
	ans = 16'hee97;
	#20
	A = 16'hf144;
	B = 16'h74d3;
	ans = 16'h7062;
	#20
	A = 16'hf2c6;
	B = 16'h760b;
	ans = 16'h7150;
	#20
	A = 16'hf5f1;
	B = 16'hf5f2;
	ans = 16'hf9f2;
	#20
	A = 16'h72ca;
	B = 16'hedf1;
	ans = 16'h6fa3;
	#20
	A = 16'h70a6;
	B = 16'hf653;
	ans = 16'hf400;
	#20
	A = 16'h7619;
	B = 16'hf572;
	ans = 16'h6938;
	#20
	A = 16'hf619;
	B = 16'h72f3;
	ans = 16'hf13f;
	#20
	A = 16'hf3e1;
	B = 16'h7693;
	ans = 16'h7145;
	#20
	A = 16'he506;
	B = 16'h73d3;
	ans = 16'h7332;
	#20
	A = 16'hf480;
	B = 16'hed76;
	ans = 16'hf5de;
	#20
	A = 16'hf1e5;
	B = 16'hf3aa;
	ans = 16'hf6c8;
	#20
	A = 16'h76a2;
	B = 16'h7404;
	ans = 16'h7953;
	#20
	A = 16'hf6af;
	B = 16'h7324;
	ans = 16'hf23a;
	#20
	A = 16'hf16f;
	B = 16'hf51f;
	ans = 16'hf7d6;
	#20
	A = 16'hea82;
	B = 16'h756c;
	ans = 16'h749c;
	#20
	A = 16'he1d4;
	B = 16'h70d6;
	ans = 16'h7079;
	#20
	A = 16'h773d;
	B = 16'hf125;
	ans = 16'h74aa;
	#20
	A = 16'h71ab;
	B = 16'h6e64;
	ans = 16'h746e;
	#20
	A = 16'h6d57;
	B = 16'h7170;
	ans = 16'h740e;
	#20
	A = 16'hf161;
	B = 16'h7509;
	ans = 16'h70b1;
	#20
	A = 16'h74e8;
	B = 16'heec0;
	ans = 16'h7270;
	#20
	A = 16'h6e72;
	B = 16'he95c;
	ans = 16'h6b88;
	#20
	A = 16'h70d7;
	B = 16'hf570;
	ans = 16'hf209;
	#20
	A = 16'hf580;
	B = 16'he2d3;
	ans = 16'hf5b7;
	#20
	A = 16'h7429;
	B = 16'h76d5;
	ans = 16'h797f;
	#20
	A = 16'h718b;
	B = 16'hf709;
	ans = 16'hf444;
	#20
	A = 16'hf4dc;
	B = 16'h7545;
	ans = 16'h6690;
	#20
	A = 16'hf554;
	B = 16'h75ef;
	ans = 16'h68d8;
	#20
	A = 16'h751d;
	B = 16'hf738;
	ans = 16'hf036;
	#20
	A = 16'h73d0;
	B = 16'hf658;
	ans = 16'hf0e0;
	#20
	A = 16'h717b;
	B = 16'hf277;
	ans = 16'he7e0;
	#20
	A = 16'hf52b;
	B = 16'h652f;
	ans = 16'hf4d8;
	#20
	A = 16'hf38f;
	B = 16'h71ed;
	ans = 16'hea88;
	#20
	A = 16'hf320;
	B = 16'hf718;
	ans = 16'hf954;
	#20
	A = 16'hf30a;
	B = 16'h6845;
	ans = 16'hf1f9;
	#20
	A = 16'h642d;
	B = 16'h72e1;
	ans = 16'h7367;
	#20
	A = 16'hed99;
	B = 16'hea3f;
	ans = 16'hf05c;
	#20
	A = 16'hf4a0;
	B = 16'hf18c;
	ans = 16'hf766;
	#20
	A = 16'h6ef5;
	B = 16'h703b;
	ans = 16'h73b6;
	#20
	A = 16'hed95;
	B = 16'h760d;
	ans = 16'h74a8;
	#20
	A = 16'h744d;
	B = 16'h6f99;
	ans = 16'h7633;
	#20
	A = 16'h712c;
	B = 16'h6d9c;
	ans = 16'h73fa;
	#20
	A = 16'heffd;
	B = 16'h72f5;
	ans = 16'h6ded;
	#20
	A = 16'h76cc;
	B = 16'heaf2;
	ans = 16'h75ee;
	#20
	A = 16'hf111;
	B = 16'h704f;
	ans = 16'he610;
	#20
	A = 16'hf66d;
	B = 16'he4c3;
	ans = 16'hf6b9;
	#20
	A = 16'h7199;
	B = 16'hf0cc;
	ans = 16'h6668;
	#20
	A = 16'he868;
	B = 16'hf216;
	ans = 16'hf330;
	#20
	A = 16'hf178;
	B = 16'h76e4;
	ans = 16'h7428;
	#20
	A = 16'hf1ab;
	B = 16'hf577;
	ans = 16'hf826;
	#20
	A = 16'hdc45;
	B = 16'h6b2a;
	ans = 16'h6aa1;
	#20
	A = 16'h75de;
	B = 16'hf136;
	ans = 16'h7286;
	#20
	A = 16'h74fb;
	B = 16'hf481;
	ans = 16'h67a0;
	#20
	A = 16'he632;
	B = 16'h74e0;
	ans = 16'h747d;
	#20
	A = 16'h7679;
	B = 16'hf381;
	ans = 16'h7171;
	#20
	A = 16'hea31;
	B = 16'hf6b2;
	ans = 16'hf778;
	#20
	A = 16'hf295;
	B = 16'h74c2;
	ans = 16'h6dde;
	#20
	A = 16'hf2e3;
	B = 16'h72e8;
	ans = 16'h5100;
	#20
	A = 16'h7702;
	B = 16'h7102;
	ans = 16'h78c2;
	#20
	A = 16'h732c;
	B = 16'hf5f2;
	ans = 16'hf0b8;
	#20
	A = 16'hd4b5;
	B = 16'hf1d9;
	ans = 16'hf1e2;
	#20
	A = 16'heb9c;
	B = 16'hf4d1;
	ans = 16'hf5c4;
	#20
	A = 16'h70a1;
	B = 16'h6a48;
	ans = 16'h7233;
	#20
	A = 16'hf1d6;
	B = 16'hf15d;
	ans = 16'hf59a;
	#20
	A = 16'he66e;
	B = 16'hf43a;
	ans = 16'hf4a1;
	#20
	A = 16'h6c1a;
	B = 16'h7105;
	ans = 16'h7312;
	#20
	A = 16'hf48e;
	B = 16'hf1ce;
	ans = 16'hf775;
	#20
	A = 16'h75c5;
	B = 16'he82f;
	ans = 16'h753f;
	#20
	A = 16'hf497;
	B = 16'h7158;
	ans = 16'hefac;
	#20
	A = 16'h750b;
	B = 16'hf5b9;
	ans = 16'he970;
	#20
	A = 16'h6cb6;
	B = 16'hef4a;
	ans = 16'he928;
	#20
	A = 16'hf403;
	B = 16'h73af;
	ans = 16'he170;
	#20
	A = 16'hf4f4;
	B = 16'h658c;
	ans = 16'hf49b;
	#20
	A = 16'hf56b;
	B = 16'h763d;
	ans = 16'h6a90;
	#20
	A = 16'h5b81;
	B = 16'hf52a;
	ans = 16'hf51b;
	#20
	A = 16'hf10e;
	B = 16'h71bb;
	ans = 16'h6568;
	#20
	A = 16'h7449;
	B = 16'hf63d;
	ans = 16'hefd0;
	#20
	A = 16'hf59f;
	B = 16'hee91;
	ans = 16'hf743;
	#20
	A = 16'hf5ac;
	B = 16'h689e;
	ans = 16'hf518;
	#20
	A = 16'h6240;
	B = 16'hf2ad;
	ans = 16'hf249;
	#20
	A = 16'hf740;
	B = 16'hf505;
	ans = 16'hfa22;
	#20
	A = 16'hf1ae;
	B = 16'h6e5b;
	ans = 16'hed01;
	#20
	A = 16'h70ef;
	B = 16'h6f99;
	ans = 16'h745e;
	#20
	A = 16'h70d8;
	B = 16'h6449;
	ans = 16'h7161;
	#20
	A = 16'h6b95;
	B = 16'hf44a;
	ans = 16'hf2af;
	#20
	A = 16'h704f;
	B = 16'hf6f1;
	ans = 16'hf4ca;
	#20
	A = 16'hf5f8;
	B = 16'h6ea0;
	ans = 16'hf450;
	#20
	A = 16'hf2c6;
	B = 16'h6dbd;
	ans = 16'hefcf;
	#20
	A = 16'hf366;
	B = 16'h76b9;
	ans = 16'h720c;
	#20
	A = 16'h7706;
	B = 16'h706f;
	ans = 16'h789f;
	#20
	A = 16'hed57;
	B = 16'hef16;
	ans = 16'hf236;
	#20
	A = 16'hf17a;
	B = 16'hf478;
	ans = 16'hf735;
	#20
	A = 16'h7459;
	B = 16'h769a;
	ans = 16'h797a;
	#20
	A = 16'hf499;
	B = 16'h7036;
	ans = 16'hf0fc;
	#20
	A = 16'h72df;
	B = 16'hf1e4;
	ans = 16'h67d8;
	#20
	A = 16'hf089;
	B = 16'hef74;
	ans = 16'hf422;
	#20
	A = 16'h7554;
	B = 16'hf545;
	ans = 16'h5b80;
	#20
	A = 16'h70ee;
	B = 16'h6c96;
	ans = 16'h7339;
	#20
	A = 16'h76ea;
	B = 16'h7124;
	ans = 16'h78be;
	#20
	A = 16'he650;
	B = 16'hf5f2;
	ans = 16'hf657;
	#20
	A = 16'h719e;
	B = 16'hef38;
	ans = 16'h6c04;
	#20
	A = 16'h6c46;
	B = 16'h7232;
	ans = 16'h742a;
	#20
	A = 16'h7447;
	B = 16'h7665;
	ans = 16'h7956;
	#20
	A = 16'h6ebe;
	B = 16'h6f49;
	ans = 16'h7304;
	#20
	A = 16'h70d1;
	B = 16'hf65b;
	ans = 16'hf3e5;
	#20
	A = 16'h6f8f;
	B = 16'hf2eb;
	ans = 16'hee47;
	#20
	A = 16'h7506;
	B = 16'h72b8;
	ans = 16'h7831;
	#20
	A = 16'he015;
	B = 16'hf2dc;
	ans = 16'hf31d;
	#20
	A = 16'hec50;
	B = 16'h6c61;
	ans = 16'h5440;
	#20
	A = 16'he448;
	B = 16'hf65d;
	ans = 16'hf6a2;
	#20
	A = 16'h680e;
	B = 16'h71b1;
	ans = 16'h72b4;
	#20
	A = 16'h73a3;
	B = 16'h756b;
	ans = 16'h789e;
	#20
	A = 16'h6b00;
	B = 16'hf1fe;
	ans = 16'hf03e;
	#20
	A = 16'h7536;
	B = 16'h74d4;
	ans = 16'h7905;
	#20
	A = 16'hf57e;
	B = 16'hf498;
	ans = 16'hf90b;
	#20
	A = 16'h73b3;
	B = 16'he810;
	ans = 16'h72af;
	#20
	A = 16'hf6b5;
	B = 16'h67d3;
	ans = 16'hf638;
	#20
	A = 16'h6704;
	B = 16'h7491;
	ans = 16'h7501;
	#20
	A = 16'hf546;
	B = 16'hf1fb;
	ans = 16'hf822;
	#20
	A = 16'hf40a;
	B = 16'h6eeb;
	ans = 16'hf09e;
	#20
	A = 16'he902;
	B = 16'hf0d1;
	ans = 16'hf212;
	#20
	A = 16'hf44b;
	B = 16'h70b4;
	ans = 16'hefc4;
	#20
	A = 16'h7649;
	B = 16'hf4f3;
	ans = 16'h6d58;
	#20
	A = 16'h6c4c;
	B = 16'h75d2;
	ans = 16'h76e5;
	#20
	A = 16'hf178;
	B = 16'h7413;
	ans = 16'h6d5c;
	#20
	A = 16'h6e17;
	B = 16'he003;
	ans = 16'h6d97;
	#20
	A = 16'hf459;
	B = 16'h723f;
	ans = 16'hece6;
	#20
	A = 16'he80c;
	B = 16'h735a;
	ans = 16'h7257;
	#20
	A = 16'hed48;
	B = 16'hf1ec;
	ans = 16'hf448;
	#20
	A = 16'hf3ac;
	B = 16'h6dca;
	ans = 16'hf0c7;
	#20
	A = 16'h75eb;
	B = 16'h6f1b;
	ans = 16'h77b2;
	#20
	A = 16'hf10a;
	B = 16'he4c8;
	ans = 16'hf1a3;
	#20
	A = 16'hf6a5;
	B = 16'hf42e;
	ans = 16'hf96a;
	#20
	A = 16'hecbb;
	B = 16'hf670;
	ans = 16'hf79f;
	#20
	A = 16'he9ec;
	B = 16'hf4f8;
	ans = 16'hf5b6;
	#20
	A = 16'hea09;
	B = 16'h73b9;
	ans = 16'h7237;
	#20
	A = 16'hf54e;
	B = 16'h74ba;
	ans = 16'he8a0;
	#20
	A = 16'h7503;
	B = 16'hf749;
	ans = 16'hf08c;
	#20
	A = 16'hf5f4;
	B = 16'he6df;
	ans = 16'hf662;
	#20
	A = 16'h71b6;
	B = 16'h7511;
	ans = 16'h77ec;
	#20
	A = 16'h76d8;
	B = 16'h6eac;
	ans = 16'h7842;
	#20
	A = 16'hf6ec;
	B = 16'hf1ac;
	ans = 16'hf8e1;
	#20
	A = 16'he68d;
	B = 16'hf579;
	ans = 16'hf5e2;
	#20
	A = 16'h7681;
	B = 16'h666f;
	ans = 16'h76e8;
	#20
	A = 16'h555a;
	B = 16'h7097;
	ans = 16'h70a2;
	#20
	A = 16'h76ae;
	B = 16'heef9;
	ans = 16'h74f0;
	#20
	A = 16'h7494;
	B = 16'h7158;
	ans = 16'h7740;
	#20
	A = 16'h75d6;
	B = 16'h7417;
	ans = 16'h78f6;
	#20
	A = 16'hf741;
	B = 16'h6826;
	ans = 16'hf6bc;
	#20
	A = 16'h6ed1;
	B = 16'hf1bd;
	ans = 16'heca9;
	#20
	A = 16'h70f2;
	B = 16'hed05;
	ans = 16'h6cdf;
	#20
	A = 16'hf74e;
	B = 16'hee40;
	ans = 16'hf86f;
	#20
	A = 16'h752f;
	B = 16'h76a7;
	ans = 16'h79eb;
	#20
	A = 16'h75cf;
	B = 16'h73fd;
	ans = 16'h78e7;
	#20
	A = 16'h7601;
	B = 16'h771e;
	ans = 16'h7a90;
	#20
	A = 16'h73ba;
	B = 16'h723a;
	ans = 16'h76fa;
	#20
	A = 16'hee58;
	B = 16'h7623;
	ans = 16'h748d;
	#20
	A = 16'hf03e;
	B = 16'hee6e;
	ans = 16'hf375;
	#20
	A = 16'h7523;
	B = 16'h7097;
	ans = 16'h776e;
	#20
	A = 16'h7697;
	B = 16'h6f82;
	ans = 16'h783c;
	#20
	A = 16'h64d9;
	B = 16'h76b5;
	ans = 16'h7703;
	#20
	A = 16'h6d4a;
	B = 16'hf104;
	ans = 16'hecbe;
	#20
	A = 16'h6631;
	B = 16'he8f6;
	ans = 16'he376;
	#20
	A = 16'h73af;
	B = 16'hf421;
	ans = 16'he498;
	#20
	A = 16'hf4ec;
	B = 16'he94b;
	ans = 16'hf595;
	#20
	A = 16'h758a;
	B = 16'h6fed;
	ans = 16'h7785;
	#20
	A = 16'h7524;
	B = 16'h761b;
	ans = 16'h79a0;
	#20
	A = 16'hf006;
	B = 16'hf486;
	ans = 16'hf689;
	#20
	A = 16'h7023;
	B = 16'hf4f4;
	ans = 16'hf1c5;
	#20
	A = 16'hf641;
	B = 16'hf0e9;
	ans = 16'hf85b;
	#20
	A = 16'h75b3;
	B = 16'hf475;
	ans = 16'h6cf8;
	#20
	A = 16'h6c1a;
	B = 16'he856;
	ans = 16'h67bc;
	#20
	A = 16'h7579;
	B = 16'h75d2;
	ans = 16'h79a6;
	#20
	A = 16'h7283;
	B = 16'h672d;
	ans = 16'h7369;
	#20
	A = 16'hf210;
	B = 16'hf5cc;
	ans = 16'hf86a;
	#20
	A = 16'hf239;
	B = 16'hf45e;
	ans = 16'hf77a;
	#20
	A = 16'hf031;
	B = 16'hf068;
	ans = 16'hf44c;
	#20
	A = 16'hf4d6;
	B = 16'hf154;
	ans = 16'hf780;
	#20
	A = 16'h6a7b;
	B = 16'h764a;
	ans = 16'h7719;
	#20
	A = 16'hf714;
	B = 16'hee26;
	ans = 16'hf84f;
	#20
	A = 16'h69ef;
	B = 16'h6dc9;
	ans = 16'h7060;
	#20
	A = 16'hf5bb;
	B = 16'he627;
	ans = 16'hf61d;
	#20
	A = 16'h72dc;
	B = 16'hf05a;
	ans = 16'h6d04;
	#20
	A = 16'h7421;
	B = 16'hf611;
	ans = 16'hefc0;
	#20
	A = 16'h762c;
	B = 16'hf1a9;
	ans = 16'h72af;
	#20
	A = 16'h7427;
	B = 16'h6d48;
	ans = 16'h7579;
	#20
	A = 16'hf613;
	B = 16'hee2b;
	ans = 16'hf79e;
	#20
	A = 16'h70a0;
	B = 16'h71b1;
	ans = 16'h7528;
	#20
	A = 16'h6714;
	B = 16'h73cc;
	ans = 16'h7457;
	#20
	A = 16'hec6f;
	B = 16'h74b2;
	ans = 16'h732c;
	#20
	A = 16'h5f43;
	B = 16'h6e67;
	ans = 16'h6edb;
	#20
	A = 16'hf220;
	B = 16'h7490;
	ans = 16'h6e00;
	#20
	A = 16'hf390;
	B = 16'h7167;
	ans = 16'hec52;
	#20
	A = 16'h7688;
	B = 16'hf60c;
	ans = 16'h67c0;
	#20
	A = 16'hedac;
	B = 16'hdbfb;
	ans = 16'hedec;
	#20
	A = 16'h76c1;
	B = 16'h7126;
	ans = 16'h78aa;
	#20
	A = 16'hf5e0;
	B = 16'hf520;
	ans = 16'hf980;
	#20
	A = 16'hf389;
	B = 16'hf447;
	ans = 16'hf806;
	#20
	A = 16'hf23d;
	B = 16'hf2b1;
	ans = 16'hf677;
	#20
	A = 16'h66c6;
	B = 16'he8c6;
	ans = 16'he18c;
	#20
	A = 16'h72ce;
	B = 16'h71ae;
	ans = 16'h763e;
	#20
	A = 16'he10b;
	B = 16'hf047;
	ans = 16'hf098;
	#20
	A = 16'hefb2;
	B = 16'h6e85;
	ans = 16'he4b4;
	#20
	A = 16'hf5de;
	B = 16'h76d9;
	ans = 16'h6bd8;
	#20
	A = 16'hf725;
	B = 16'h7598;
	ans = 16'hee34;
	#20
	A = 16'h766b;
	B = 16'h6ee8;
	ans = 16'h7812;
	#20
	A = 16'h75d8;
	B = 16'hf736;
	ans = 16'hed78;
	#20
	A = 16'h7042;
	B = 16'h7311;
	ans = 16'h75aa;
	#20
	A = 16'hf5be;
	B = 16'h75b7;
	ans = 16'hd700;
	#20
	A = 16'h74d7;
	B = 16'h75f4;
	ans = 16'h7966;
	#20
	A = 16'hf6f6;
	B = 16'h7057;
	ans = 16'hf4ca;
	#20
	A = 16'heefb;
	B = 16'h757f;
	ans = 16'h7380;
	#20
	A = 16'h7231;
	B = 16'he0fe;
	ans = 16'h71e1;
	#20
	A = 16'hf682;
	B = 16'h76f4;
	ans = 16'h6720;
	#20
	A = 16'h7368;
	B = 16'he9e3;
	ans = 16'h71ef;
	#20
	A = 16'h741f;
	B = 16'h6d4a;
	ans = 16'h7572;
	#20
	A = 16'hf370;
	B = 16'hf4bc;
	ans = 16'hf83a;
	#20
	A = 16'h6ad6;
	B = 16'h6e47;
	ans = 16'h70d9;
	#20
	A = 16'hf309;
	B = 16'heb10;
	ans = 16'hf466;
	#20
	A = 16'hf750;
	B = 16'hf269;
	ans = 16'hf942;
	#20
	A = 16'he5ed;
	B = 16'h772b;
	ans = 16'h76cc;
	#20
	A = 16'h755a;
	B = 16'h7104;
	ans = 16'h77dc;
	#20
	A = 16'h73e0;
	B = 16'hf2de;
	ans = 16'h6808;
	#20
	A = 16'hec95;
	B = 16'h6998;
	ans = 16'he724;
	#20
	A = 16'h7623;
	B = 16'hd694;
	ans = 16'h761c;
	#20
	A = 16'hf0b3;
	B = 16'h62db;
	ans = 16'hf045;
	#20
	A = 16'hf414;
	B = 16'hf642;
	ans = 16'hf92b;
	#20
	A = 16'h6e8a;
	B = 16'hf27c;
	ans = 16'hee6e;
	#20
	A = 16'hf631;
	B = 16'h7544;
	ans = 16'heb68;
	#20
	A = 16'hf1f3;
	B = 16'hf690;
	ans = 16'hf8c5;
	#20
	A = 16'hf561;
	B = 16'hf36c;
	ans = 16'hf88c;
	#20
	A = 16'h5953;
	B = 16'hf4ac;
	ans = 16'hf4a1;
	#20
	A = 16'h76e9;
	B = 16'hf1c1;
	ans = 16'h7408;
	#20
	A = 16'hf4d9;
	B = 16'h7065;
	ans = 16'hf14d;
	#20
	A = 16'hf1c0;
	B = 16'h7274;
	ans = 16'h65a0;
	#20
	A = 16'h7350;
	B = 16'hf6b8;
	ans = 16'hf220;
	#20
	A = 16'h6e68;
	B = 16'h760c;
	ans = 16'h77a6;
	#20
	A = 16'h74e9;
	B = 16'h6923;
	ans = 16'h758d;
	#20
	A = 16'h7656;
	B = 16'hf150;
	ans = 16'h735c;
	#20
	A = 16'hf101;
	B = 16'hf51b;
	ans = 16'hf79c;
	#20
	A = 16'hf693;
	B = 16'h7741;
	ans = 16'h6970;
	#20
	A = 16'h722a;
	B = 16'h6b93;
	ans = 16'h7407;
	#20
	A = 16'hf5a8;
	B = 16'hf1d6;
	ans = 16'hf84a;
	#20
	A = 16'heeb7;
	B = 16'h7737;
	ans = 16'h7589;
	#20
	A = 16'hf115;
	B = 16'h72b7;
	ans = 16'h6a88;
	#20
	A = 16'h7708;
	B = 16'h76ec;
	ans = 16'h7afa;
	#20
	A = 16'heab5;
	B = 16'h74fe;
	ans = 16'h7427;
	#20
	A = 16'h728b;
	B = 16'h733f;
	ans = 16'h76e5;
	#20
	A = 16'hf07f;
	B = 16'hf662;
	ans = 16'hf851;
	#20
	A = 16'heff0;
	B = 16'he7cf;
	ans = 16'hf0f2;
	#20
	A = 16'hf5a5;
	B = 16'hf344;
	ans = 16'hf8a4;
	#20
	A = 16'he9f3;
	B = 16'h74a8;
	ans = 16'h73d3;
	#20
	A = 16'h7435;
	B = 16'heccd;
	ans = 16'h7204;
	#20
	A = 16'hf199;
	B = 16'h76a3;
	ans = 16'h73ad;
	#20
	A = 16'hf509;
	B = 16'hf0c0;
	ans = 16'hf769;
	#20
	A = 16'hdc5b;
	B = 16'h7234;
	ans = 16'h7211;
	#20
	A = 16'hf0cb;
	B = 16'h74ef;
	ans = 16'h7113;
	#20
	A = 16'h74a3;
	B = 16'h7596;
	ans = 16'h791c;
	#20
	A = 16'hf621;
	B = 16'hf4fc;
	ans = 16'hf98e;
	#20
	A = 16'hf6ce;
	B = 16'h743e;
	ans = 16'hf120;
	#20
	A = 16'h7431;
	B = 16'hf553;
	ans = 16'hec88;
	#20
	A = 16'hf60a;
	B = 16'h759d;
	ans = 16'he6d0;
	#20
	A = 16'h7214;
	B = 16'hecb8;
	ans = 16'h6f70;
	#20
	A = 16'hf467;
	B = 16'h6d9e;
	ans = 16'hf1ff;
	#20
	A = 16'hed2f;
	B = 16'h748b;
	ans = 16'h727e;
	#20
	A = 16'hf64d;
	B = 16'hec3f;
	ans = 16'hf75d;
	#20
	A = 16'hf568;
	B = 16'h6dbd;
	ans = 16'hf3f2;
	#20
	A = 16'hf698;
	B = 16'h72a1;
	ans = 16'hf28f;
	#20
	A = 16'h7532;
	B = 16'hf64f;
	ans = 16'hec74;
	#20
	A = 16'hf6a8;
	B = 16'h6c54;
	ans = 16'hf593;
	#20
	A = 16'h759b;
	B = 16'hf617;
	ans = 16'he7c0;
	#20
	A = 16'hf556;
	B = 16'hf6f3;
	ans = 16'hfa24;
	#20
	A = 16'h71ff;
	B = 16'h70b1;
	ans = 16'h7558;
	#20
	A = 16'h7707;
	B = 16'hefcd;
	ans = 16'h7514;
	#20
	A = 16'hf373;
	B = 16'hf4d0;
	ans = 16'hf845;
	#20
	A = 16'h76cd;
	B = 16'h743a;
	ans = 16'h7984;
	#20
	A = 16'h7429;
	B = 16'h75ff;
	ans = 16'h7914;
	#20
	A = 16'hf5a8;
	B = 16'h6965;
	ans = 16'hf4fb;
	#20
	A = 16'h7447;
	B = 16'h75c1;
	ans = 16'h7904;
	#20
	A = 16'he5fc;
	B = 16'he7b4;
	ans = 16'head8;
	#20
	A = 16'h6ecb;
	B = 16'hf5d6;
	ans = 16'hf423;
	#20
	A = 16'hf4af;
	B = 16'hf59e;
	ans = 16'hf926;
	#20
	A = 16'hf25f;
	B = 16'h76f2;
	ans = 16'h7385;
	#20
	A = 16'h74fa;
	B = 16'hecb0;
	ans = 16'h739c;
	#20
	A = 16'hf456;
	B = 16'h761f;
	ans = 16'h6f24;
	#20
	A = 16'h7316;
	B = 16'he895;
	ans = 16'h71f1;
	#20
	A = 16'hec6a;
	B = 16'h746a;
	ans = 16'h729f;
	#20
	A = 16'h7619;
	B = 16'hf1c4;
	ans = 16'h726e;
	#20
	A = 16'hf10f;
	B = 16'hf380;
	ans = 16'hf648;
	#20
	A = 16'he5d0;
	B = 16'h7742;
	ans = 16'h76e5;
	#20
	A = 16'h760d;
	B = 16'hf27e;
	ans = 16'h719c;
	#20
	A = 16'hf1d6;
	B = 16'hf43f;
	ans = 16'hf72a;
	#20
	A = 16'hf37d;
	B = 16'h699f;
	ans = 16'hf215;
	#20
	A = 16'h75c3;
	B = 16'h7405;
	ans = 16'h78e4;
	#20
	A = 16'h706e;
	B = 16'h74ac;
	ans = 16'h76e3;
	#20
	A = 16'hf564;
	B = 16'hf4a3;
	ans = 16'hf904;
	#20
	A = 16'hec4f;
	B = 16'h6f2d;
	ans = 16'h69bc;
	#20
	A = 16'hf61b;
	B = 16'h71ec;
	ans = 16'hf24a;
	#20
	A = 16'hf42d;
	B = 16'h74ec;
	ans = 16'h69f8;
	#20
	A = 16'h771b;
	B = 16'h704b;
	ans = 16'h78a0;
	#20
	A = 16'hf33b;
	B = 16'h76c7;
	ans = 16'h7253;
	#20
	A = 16'hf6d5;
	B = 16'h6ea9;
	ans = 16'hf52b;
	#20
	A = 16'h72b5;
	B = 16'h7276;
	ans = 16'h7696;
	#20
	A = 16'h6857;
	B = 16'h6ed4;
	ans = 16'h7080;
	#20
	A = 16'hea76;
	B = 16'h7608;
	ans = 16'h7539;
	#20
	A = 16'h6d10;
	B = 16'hf62e;
	ans = 16'hf4ea;
	#20
	A = 16'hf44a;
	B = 16'hf3b8;
	ans = 16'hf813;
	#20
	A = 16'h7723;
	B = 16'hf555;
	ans = 16'h6f38;
	#20
	A = 16'h752a;
	B = 16'h6f93;
	ans = 16'h770f;
	#20
	A = 16'h71ba;
	B = 16'he909;
	ans = 16'h7078;
	#20
	A = 16'hf5c0;
	B = 16'hf483;
	ans = 16'hf922;
	#20
	A = 16'h70f7;
	B = 16'h7325;
	ans = 16'h760e;
	#20
	A = 16'hf320;
	B = 16'h76cf;
	ans = 16'h727e;
	#20
	A = 16'h7104;
	B = 16'h7082;
	ans = 16'h74c3;
	#20
	A = 16'h75c4;
	B = 16'hf589;
	ans = 16'h6360;
	#20
	A = 16'h70ea;
	B = 16'h7097;
	ans = 16'h74c0;
	#20
	A = 16'h76e8;
	B = 16'hf698;
	ans = 16'h6500;
	#20
	A = 16'h6004;
	B = 16'hf678;
	ans = 16'hf658;
	#20
	A = 16'hf0ec;
	B = 16'he93b;
	ans = 16'hf23b;
	#20
	A = 16'hebdb;
	B = 16'hd8ee;
	ans = 16'hec15;
	#20
	A = 16'hf52c;
	B = 16'h63dd;
	ans = 16'hf4ed;
	#20
	A = 16'he9d7;
	B = 16'h757d;
	ans = 16'h74c2;
	#20
	A = 16'hf03c;
	B = 16'h7485;
	ans = 16'h70ce;
	#20
	A = 16'h7692;
	B = 16'h6c25;
	ans = 16'h779b;
	#20
	A = 16'hf332;
	B = 16'h761e;
	ans = 16'h710a;
	#20
	A = 16'h71ed;
	B = 16'h6a8e;
	ans = 16'h7390;
	#20
	A = 16'hf622;
	B = 16'h70f5;
	ans = 16'hf34f;
	#20
	A = 16'h6442;
	B = 16'hf50c;
	ans = 16'hf4c8;
	#20
	A = 16'heb81;
	B = 16'h7444;
	ans = 16'h72a8;
	#20
	A = 16'h6e0c;
	B = 16'h7251;
	ans = 16'h74ac;
	#20
	A = 16'h6f7f;
	B = 16'hf422;
	ans = 16'hf084;
	#20
	A = 16'hf10a;
	B = 16'hed8a;
	ans = 16'hf3cf;
	#20
	A = 16'h6615;
	B = 16'h6983;
	ans = 16'h6c47;
	#20
	A = 16'h6fde;
	B = 16'h7425;
	ans = 16'h761c;
	#20
	A = 16'hf711;
	B = 16'hf112;
	ans = 16'hf8cd;
	#20
	A = 16'h76bc;
	B = 16'h761b;
	ans = 16'h7a6c;
	#20
	A = 16'hf5e2;
	B = 16'hf0f7;
	ans = 16'hf82f;
	#20
	A = 16'h6a1c;
	B = 16'hf6dd;
	ans = 16'hf61a;
	#20
	A = 16'hf4f8;
	B = 16'h74c3;
	ans = 16'he2a0;
	#20
	A = 16'hf26c;
	B = 16'h7151;
	ans = 16'he86c;
	#20
	A = 16'h7537;
	B = 16'h771f;
	ans = 16'h7a2b;
	#20
	A = 16'hed16;
	B = 16'h7587;
	ans = 16'h7442;
	#20
	A = 16'h6dab;
	B = 16'h6eb9;
	ans = 16'h7232;
	#20
	A = 16'hef60;
	B = 16'hf66e;
	ans = 16'hf823;
	#20
	A = 16'hf434;
	B = 16'h72d7;
	ans = 16'hea44;
	#20
	A = 16'h749f;
	B = 16'h731a;
	ans = 16'h7816;
	#20
	A = 16'hf5d1;
	B = 16'h7546;
	ans = 16'he858;
	#20
	A = 16'hec85;
	B = 16'hf710;
	ans = 16'hf819;
	#20
	A = 16'h76fa;
	B = 16'h72a9;
	ans = 16'h7927;
	#20
	A = 16'h7605;
	B = 16'hf695;
	ans = 16'he880;
	#20
	A = 16'h7087;
	B = 16'hec4b;
	ans = 16'h6cc3;
	#20
	A = 16'hf33d;
	B = 16'h7607;
	ans = 16'h70d1;
	#20
	A = 16'hf4ea;
	B = 16'hf6e0;
	ans = 16'hf9e5;
	#20
	A = 16'hf412;
	B = 16'hf4bb;
	ans = 16'hf866;
	#20
	A = 16'hf581;
	B = 16'h6975;
	ans = 16'hf4d2;
	#20
	A = 16'hf55c;
	B = 16'heb47;
	ans = 16'hf645;
	#20
	A = 16'hef87;
	B = 16'hf52f;
	ans = 16'hf711;
	#20
	A = 16'h6c59;
	B = 16'hf562;
	ans = 16'hf44c;
	#20
	A = 16'h6b61;
	B = 16'hf4ff;
	ans = 16'hf413;
	#20
	A = 16'h614a;
	B = 16'hef84;
	ans = 16'heedb;
	#20
	A = 16'hf064;
	B = 16'h7237;
	ans = 16'h6b4c;
	#20
	A = 16'h7017;
	B = 16'hed80;
	ans = 16'h695c;
	#20
	A = 16'h7592;
	B = 16'hf3b9;
	ans = 16'h6ed6;
	#20
	A = 16'h74e2;
	B = 16'h65db;
	ans = 16'h7540;
	#20
	A = 16'hf491;
	B = 16'h755f;
	ans = 16'h6a70;
	#20
	A = 16'h7482;
	B = 16'heea2;
	ans = 16'h71b3;
	#20
	A = 16'he881;
	B = 16'h6ed2;
	ans = 16'h6c92;
	#20
	A = 16'h73f3;
	B = 16'hf157;
	ans = 16'h6d38;
	#20
	A = 16'h70da;
	B = 16'hf45c;
	ans = 16'hefbc;
	#20
	A = 16'h76d3;
	B = 16'h74b7;
	ans = 16'h79c5;
	#20
	A = 16'hf409;
	B = 16'h760d;
	ans = 16'h7008;
	#20
	A = 16'hf6cd;
	B = 16'hf507;
	ans = 16'hf9ea;
	#20
	A = 16'h6462;
	B = 16'hf135;
	ans = 16'hf0a9;
	#20
	A = 16'hf4de;
	B = 16'hf70a;
	ans = 16'hf9f4;
	#20
	A = 16'h7462;
	B = 16'hee48;
	ans = 16'h71a0;
	#20
	A = 16'h7743;
	B = 16'hf3c6;
	ans = 16'h72c0;
	#20
	A = 16'h7739;
	B = 16'h76a4;
	ans = 16'h7aee;
	#20
	A = 16'h7045;
	B = 16'hf3f2;
	ans = 16'hef5a;
	#20
	A = 16'h71b8;
	B = 16'h7428;
	ans = 16'h7704;
	#20
	A = 16'h7557;
	B = 16'h757f;
	ans = 16'h796b;
	#20
	A = 16'hf6a8;
	B = 16'h7201;
	ans = 16'hf34f;
	#20
	A = 16'hf190;
	B = 16'h6de1;
	ans = 16'hed3f;
	#20
	A = 16'he536;
	B = 16'h6fc0;
	ans = 16'h6e72;
	#20
	A = 16'hf575;
	B = 16'hf56d;
	ans = 16'hf971;
	#20
	A = 16'heefa;
	B = 16'h7542;
	ans = 16'h7307;
	#20
	A = 16'hf27d;
	B = 16'hf38e;
	ans = 16'hf706;
	#20
	A = 16'h73e1;
	B = 16'h76ee;
	ans = 16'h796f;
	#20
	A = 16'hed64;
	B = 16'h7345;
	ans = 16'h7093;
	#20
	A = 16'h74b5;
	B = 16'h74c3;
	ans = 16'h78bc;
	#20
	A = 16'h74e8;
	B = 16'hf2df;
	ans = 16'h6de2;
	#20
	A = 16'hf2a7;
	B = 16'hf599;
	ans = 16'hf876;
	#20
	A = 16'hf680;
	B = 16'hf5a2;
	ans = 16'hfa11;
	#20
	A = 16'h73f7;
	B = 16'h754a;
	ans = 16'h78a3;
	#20
	A = 16'h774e;
	B = 16'hf1b3;
	ans = 16'h7474;
	#20
	A = 16'he85f;
	B = 16'he550;
	ans = 16'heb07;
	#20
	A = 16'hf6b2;
	B = 16'h7731;
	ans = 16'h67f0;
	#20
	A = 16'hf512;
	B = 16'h75e0;
	ans = 16'h6a70;
	#20
	A = 16'h6dad;
	B = 16'hf0cd;
	ans = 16'hebda;
	#20
	A = 16'hf0a2;
	B = 16'he51e;
	ans = 16'hf146;
	#20
	A = 16'hf613;
	B = 16'h721e;
	ans = 16'hf208;
	#20
	A = 16'h73ba;
	B = 16'hf656;
	ans = 16'hf0f2;
	#20
	A = 16'hecf8;
	B = 16'hec31;
	ans = 16'hf094;
	#20
	A = 16'h7193;
	B = 16'hf14c;
	ans = 16'h6070;
	#20
	A = 16'hf70b;
	B = 16'hf117;
	ans = 16'hf8cb;
	#20
	A = 16'hf56c;
	B = 16'h635d;
	ans = 16'hf531;
	#20
	A = 16'h54d0;
	B = 16'hee28;
	ans = 16'hee15;
	#20
	A = 16'h7154;
	B = 16'hf65f;
	ans = 16'hf36a;
	#20
	A = 16'h71f9;
	B = 16'h73aa;
	ans = 16'h76d2;
	#20
	A = 16'hf30a;
	B = 16'hf291;
	ans = 16'hf6ce;
	#20
	A = 16'h766d;
	B = 16'hee26;
	ans = 16'h74e4;
	#20
	A = 16'h75d0;
	B = 16'h7529;
	ans = 16'h797c;
	#20
	A = 16'hf64d;
	B = 16'h71d8;
	ans = 16'hf2c2;
	#20
	A = 16'hf498;
	B = 16'hf5bd;
	ans = 16'hf92a;
	#20
	A = 16'h7532;
	B = 16'h74f2;
	ans = 16'h7912;
	#20
	A = 16'he3b0;
	B = 16'h758d;
	ans = 16'h7550;
	#20
	A = 16'hf69e;
	B = 16'hf1c3;
	ans = 16'hf8c0;
	#20
	A = 16'h701f;
	B = 16'he90a;
	ans = 16'h6db9;
	#20
	A = 16'hf104;
	B = 16'hf550;
	ans = 16'hf7d2;
	#20
	A = 16'hea4b;
	B = 16'hf60d;
	ans = 16'hf6d6;
	#20
	A = 16'hed70;
	B = 16'h737d;
	ans = 16'h70c5;
	#20
	A = 16'h6e9a;
	B = 16'h70ea;
	ans = 16'h741c;
	#20
	A = 16'h7064;
	B = 16'hf2ef;
	ans = 16'hed16;
	#20
	A = 16'hf704;
	B = 16'hf58d;
	ans = 16'hfa48;
	#20
	A = 16'hf46d;
	B = 16'hf54b;
	ans = 16'hf8dc;
	#20
	A = 16'h76f5;
	B = 16'hf405;
	ans = 16'h71e0;
	#20
	A = 16'h6428;
	B = 16'h74ff;
	ans = 16'h7542;
	#20
	A = 16'hf626;
	B = 16'h6ce5;
	ans = 16'hf4ed;
	#20
	A = 16'h7596;
	B = 16'h762d;
	ans = 16'h79e2;
	#20
	A = 16'hf671;
	B = 16'heb48;
	ans = 16'hf75a;
	#20
	A = 16'h71f8;
	B = 16'hf5b8;
	ans = 16'hf178;
	#20
	A = 16'hf5ed;
	B = 16'h746f;
	ans = 16'hedf8;
	#20
	A = 16'h72c3;
	B = 16'h7459;
	ans = 16'h77ba;
	#20
	A = 16'hf364;
	B = 16'hf6ef;
	ans = 16'hf950;
	#20
	A = 16'hf65c;
	B = 16'h754b;
	ans = 16'hec44;
	#20
	A = 16'he21f;
	B = 16'h76f6;
	ans = 16'h76c5;
	#20
	A = 16'h7186;
	B = 16'hf0a8;
	ans = 16'h66f0;
	#20
	A = 16'h75e3;
	B = 16'h7693;
	ans = 16'h7a3b;
	#20
	A = 16'hed65;
	B = 16'hf6a0;
	ans = 16'hf7f9;
	#20
	A = 16'h69b6;
	B = 16'h7350;
	ans = 16'h745f;
	#20
	A = 16'hf5c6;
	B = 16'h76a5;
	ans = 16'h6af8;
	#20
	A = 16'hf695;
	B = 16'h67d5;
	ans = 16'hf618;
	#20
	A = 16'hf6c3;
	B = 16'hf567;
	ans = 16'hfa15;
	#20
	A = 16'h715a;
	B = 16'hf482;
	ans = 16'hef54;
	#20
	A = 16'hf406;
	B = 16'h72de;
	ans = 16'he8b8;
	#20
	A = 16'h711d;
	B = 16'h764b;
	ans = 16'h786d;
	#20
	A = 16'hf5fd;
	B = 16'hf5ab;
	ans = 16'hf9d4;
	#20
	A = 16'h74a5;
	B = 16'hf256;
	ans = 16'h6de8;
	#20
	A = 16'h75bf;
	B = 16'hf185;
	ans = 16'h71f9;
	#20
	A = 16'hf66c;
	B = 16'h7660;
	ans = 16'hda00;
	#20
	A = 16'hf56e;
	B = 16'h7715;
	ans = 16'h6e9c;
	#20
	A = 16'hf4c1;
	B = 16'h5e3a;
	ans = 16'hf4a8;
	#20
	A = 16'hf1f7;
	B = 16'h6c10;
	ans = 16'hefde;
	#20
	A = 16'hf484;
	B = 16'h7164;
	ans = 16'hef48;
	#20
	A = 16'h7735;
	B = 16'hf4af;
	ans = 16'h710c;
	#20
	A = 16'hf5bc;
	B = 16'h75a0;
	ans = 16'hdf00;
	#20
	A = 16'hf508;
	B = 16'hed67;
	ans = 16'hf662;
	#20
	A = 16'h6dde;
	B = 16'hf331;
	ans = 16'hf042;
	#20
	A = 16'h749a;
	B = 16'hf4e5;
	ans = 16'he4b0;
	#20
	A = 16'h5c28;
	B = 16'hf1a9;
	ans = 16'hf188;
	#20
	A = 16'he46b;
	B = 16'h6b13;
	ans = 16'h68de;
	#20
	A = 16'hf643;
	B = 16'hf741;
	ans = 16'hfac2;
	#20
	A = 16'hf467;
	B = 16'hed1d;
	ans = 16'hf5ae;
	#20
	A = 16'h646b;
	B = 16'he360;
	ans = 16'h59d8;
	#20
	A = 16'h73c1;
	B = 16'h71ff;
	ans = 16'h76e0;
	#20
	A = 16'h6f12;
	B = 16'hed2f;
	ans = 16'h678c;
	#20
	A = 16'hf420;
	B = 16'h74f8;
	ans = 16'h6ac0;
	#20
	A = 16'hf0eb;
	B = 16'h74d1;
	ans = 16'h70b7;
	#20
	A = 16'hf6af;
	B = 16'hf48a;
	ans = 16'hf99c;
	#20
	A = 16'h7399;
	B = 16'hf60c;
	ans = 16'hf07f;
	#20
	A = 16'h7721;
	B = 16'hf3cd;
	ans = 16'h7275;
	#20
	A = 16'h7747;
	B = 16'hf3a2;
	ans = 16'h72ec;
	#20
	A = 16'h7478;
	B = 16'h764b;
	ans = 16'h7962;
	#20
	A = 16'h7061;
	B = 16'hf6ce;
	ans = 16'hf49e;
	#20
	A = 16'h735d;
	B = 16'hf4ea;
	ans = 16'hecee;
	#20
	A = 16'hf6e7;
	B = 16'h6b47;
	ans = 16'hf5fe;
	#20
	A = 16'hf1f1;
	B = 16'hd812;
	ans = 16'hf201;
	#20
	A = 16'h75f5;
	B = 16'h76ab;
	ans = 16'h7a50;
	#20
	A = 16'he17b;
	B = 16'hf4f5;
	ans = 16'hf521;
	#20
	A = 16'hf5c5;
	B = 16'h71c4;
	ans = 16'hf1c6;
	#20
	A = 16'h718f;
	B = 16'heae2;
	ans = 16'h6fad;
	#20
	A = 16'hf57c;
	B = 16'hf00b;
	ans = 16'hf782;
	#20
	A = 16'h7752;
	B = 16'h7250;
	ans = 16'h793d;
	#20
	A = 16'h76d9;
	B = 16'h769d;
	ans = 16'h7abb;
	#20
	A = 16'h70de;
	B = 16'hf35e;
	ans = 16'hed00;
	#20
	A = 16'h6f00;
	B = 16'hf4c6;
	ans = 16'hf20c;
	#20
	A = 16'h6dc0;
	B = 16'h75b0;
	ans = 16'h7720;
	#20
	A = 16'h753c;
	B = 16'hf48c;
	ans = 16'h6980;
	#20
	A = 16'hf751;
	B = 16'hf40d;
	ans = 16'hf9af;
	#20
	A = 16'h74c6;
	B = 16'h7492;
	ans = 16'h78ac;
	#20
	A = 16'h7267;
	B = 16'h710b;
	ans = 16'h75b9;
	#20
	A = 16'h761a;
	B = 16'hf6e7;
	ans = 16'hea68;
	#20
	A = 16'h7745;
	B = 16'hf540;
	ans = 16'h700a;
	#20
	A = 16'h7700;
	B = 16'hf6e0;
	ans = 16'h6000;
	#20
	A = 16'h734f;
	B = 16'h751b;
	ans = 16'h7861;
	#20
	A = 16'hf715;
	B = 16'hed1d;
	ans = 16'hf82e;
	#20
	A = 16'h746c;
	B = 16'hf4f0;
	ans = 16'he820;
	#20
	A = 16'h6de6;
	B = 16'hf015;
	ans = 16'he888;
	#20
	A = 16'h6c28;
	B = 16'h7748;
	ans = 16'h7829;
	#20
	A = 16'he584;
	B = 16'hf6c9;
	ans = 16'hf721;
	#20
	A = 16'hf6a0;
	B = 16'h7666;
	ans = 16'he340;
	#20
	A = 16'hf1b7;
	B = 16'hf6fb;
	ans = 16'hf8eb;
	#20
	A = 16'h76cb;
	B = 16'h7296;
	ans = 16'h790b;
	#20
	A = 16'hf67f;
	B = 16'hf428;
	ans = 16'hf954;
	#20
	A = 16'h6c0d;
	B = 16'h705e;
	ans = 16'h7264;
	#20
	A = 16'h66ea;
	B = 16'hf13b;
	ans = 16'hf05e;
	#20
	A = 16'hdd0a;
	B = 16'hf527;
	ans = 16'hf53b;
	#20
	A = 16'hf03f;
	B = 16'h765b;
	ans = 16'h743c;
	#20
	A = 16'hf41c;
	B = 16'h68f2;
	ans = 16'hf2fc;
	#20
	A = 16'he86e;
	B = 16'hf210;
	ans = 16'hf32c;
	#20
	A = 16'h6d08;
	B = 16'h702e;
	ans = 16'h72b2;
	#20
	A = 16'he9d6;
	B = 16'h74af;
	ans = 16'h73e8;
	#20
	A = 16'h767a;
	B = 16'h7253;
	ans = 16'h78d2;
	#20
	A = 16'hf2ca;
	B = 16'hf251;
	ans = 16'hf68e;
	#20
	A = 16'hf6a1;
	B = 16'h6cb3;
	ans = 16'hf574;
	#20
	A = 16'h6788;
	B = 16'hf244;
	ans = 16'hf153;
	#20
	A = 16'h6d30;
	B = 16'hef5f;
	ans = 16'he85e;
	#20
	A = 16'hf50a;
	B = 16'head4;
	ans = 16'hf5e4;
	#20
	A = 16'hf4c6;
	B = 16'hf6cf;
	ans = 16'hf9ca;
	#20
	A = 16'hf63e;
	B = 16'h65fb;
	ans = 16'hf5de;
	#20
	A = 16'hf082;
	B = 16'h74ef;
	ans = 16'h715c;
	#20
	A = 16'h74e4;
	B = 16'h7531;
	ans = 16'h790a;
	#20
	A = 16'h57f0;
	B = 16'hed43;
	ans = 16'hed23;
	#20
	A = 16'hf2ef;
	B = 16'hec16;
	ans = 16'hf47d;
	#20
	A = 16'hf440;
	B = 16'hf5fc;
	ans = 16'hf91e;
	#20
	A = 16'hf1da;
	B = 16'hf4aa;
	ans = 16'hf797;
	#20
	A = 16'h752a;
	B = 16'hf518;
	ans = 16'h5c80;
	#20
	A = 16'hf47e;
	B = 16'h6c0e;
	ans = 16'hf2f5;
	#20
	A = 16'hf306;
	B = 16'h74c9;
	ans = 16'h6d18;
	#20
	A = 16'h6927;
	B = 16'hf281;
	ans = 16'hf137;
	#20
	A = 16'hf094;
	B = 16'hf4d1;
	ans = 16'hf71b;
	#20
	A = 16'he151;
	B = 16'hf1db;
	ans = 16'hf230;
	#20
	A = 16'h5e87;
	B = 16'h6967;
	ans = 16'h6a38;
	#20
	A = 16'hf080;
	B = 16'h76f5;
	ans = 16'h74b5;
	#20
	A = 16'hf506;
	B = 16'hf507;
	ans = 16'hf906;
	#20
	A = 16'hf3e1;
	B = 16'hf6db;
	ans = 16'hf966;
	#20
	A = 16'hf374;
	B = 16'h7214;
	ans = 16'he980;
	#20
	A = 16'h7370;
	B = 16'h735e;
	ans = 16'h7767;
	#20
	A = 16'h6a84;
	B = 16'he3b2;
	ans = 16'h6898;
	#20
	A = 16'h6535;
	B = 16'hf033;
	ans = 16'hef19;
	#20
	A = 16'hf4a3;
	B = 16'hf385;
	ans = 16'hf833;
	#20
	A = 16'h6cfd;
	B = 16'hf19a;
	ans = 16'hee37;
	#20
	A = 16'h71da;
	B = 16'hf4fd;
	ans = 16'hf020;
	#20
	A = 16'h751d;
	B = 16'h76a5;
	ans = 16'h79e1;
	#20
	A = 16'h7357;
	B = 16'hee4b;
	ans = 16'h7032;
	#20
	A = 16'h7504;
	B = 16'he08c;
	ans = 16'h74e0;
	#20
	A = 16'hf300;
	B = 16'hee7f;
	ans = 16'hf520;
	#20
	A = 16'h75f7;
	B = 16'hf340;
	ans = 16'h70ae;
	#20
	A = 16'he335;
	B = 16'hf1b8;
	ans = 16'hf22b;
	#20
	A = 16'h7431;
	B = 16'h7690;
	ans = 16'h7960;
	#20
	A = 16'hf57a;
	B = 16'hea26;
	ans = 16'hf63f;
	#20
	A = 16'hf6f4;
	B = 16'hf5cf;
	ans = 16'hfa62;
	#20
	A = 16'h712c;
	B = 16'hefc3;
	ans = 16'h692a;
	#20
	A = 16'h7164;
	B = 16'h703e;
	ans = 16'h74d1;
	#20
	A = 16'hf458;
	B = 16'h6f33;
	ans = 16'hf116;
	#20
	A = 16'h7495;
	B = 16'hefb9;
	ans = 16'h714e;
	#20
	A = 16'h75e9;
	B = 16'h6835;
	ans = 16'h7670;
	#20
	A = 16'h6ff0;
	B = 16'h6851;
	ans = 16'h710c;
	#20
	A = 16'h70ec;
	B = 16'hf431;
	ans = 16'heeec;
	#20
	A = 16'h7215;
	B = 16'hf604;
	ans = 16'hf1f3;
	#20
	A = 16'hea55;
	B = 16'hf510;
	ans = 16'hf5db;
	#20
	A = 16'h68cf;
	B = 16'hf2e8;
	ans = 16'hf1b4;
	#20
	A = 16'he7f8;
	B = 16'hf00b;
	ans = 16'hf10a;
	#20
	A = 16'h7484;
	B = 16'hf3a8;
	ans = 16'h6980;
	#20
	A = 16'hf448;
	B = 16'h72d5;
	ans = 16'heaec;
	#20
	A = 16'hf47f;
	B = 16'h772d;
	ans = 16'h715c;
	#20
	A = 16'hefb6;
	B = 16'he49d;
	ans = 16'hf06f;
	#20
	A = 16'hf5b6;
	B = 16'h6cbd;
	ans = 16'hf487;
	#20
	A = 16'h7454;
	B = 16'h7398;
	ans = 16'h7810;
	#20
	A = 16'h7113;
	B = 16'hf70e;
	ans = 16'hf484;
	#20
	A = 16'hf575;
	B = 16'h750f;
	ans = 16'he660;
	#20
	A = 16'hf731;
	B = 16'hef16;
	ans = 16'hf87b;
	#20
	A = 16'hf6bf;
	B = 16'hf6a6;
	ans = 16'hfab2;
	#20
	A = 16'hf1cc;
	B = 16'h75a1;
	ans = 16'h7176;
	#20
	A = 16'hf40d;
	B = 16'hf375;
	ans = 16'hf7c8;
	#20
	A = 16'hf695;
	B = 16'h76ec;
	ans = 16'h6570;
	#20
	A = 16'h76f6;
	B = 16'hf6a2;
	ans = 16'h6540;
	#20
	A = 16'hf48a;
	B = 16'h7231;
	ans = 16'hedc6;
	#20
	A = 16'hf5fd;
	B = 16'h75a7;
	ans = 16'he560;
	#20
	A = 16'hf69c;
	B = 16'h7620;
	ans = 16'he7c0;
	#20
	A = 16'h75e7;
	B = 16'h71c5;
	ans = 16'h7865;
	#20
	A = 16'hf739;
	B = 16'heb5d;
	ans = 16'hf812;
	#20
	A = 16'hf560;
	B = 16'h74e2;
	ans = 16'he7e0;
	#20
	A = 16'h74e0;
	B = 16'h68ee;
	ans = 16'h757e;
	#20
	A = 16'hf428;
	B = 16'h6e59;
	ans = 16'hf124;
	#20
	A = 16'h64c1;
	B = 16'hf455;
	ans = 16'hf409;
	#20
	A = 16'hf243;
	B = 16'h6f92;
	ans = 16'hecf4;
	#20
	A = 16'hf6dd;
	B = 16'h6db6;
	ans = 16'hf570;
	#20
	A = 16'hefce;
	B = 16'h71be;
	ans = 16'h6b5c;
	#20
	A = 16'h75e3;
	B = 16'hf628;
	ans = 16'he450;
	#20
	A = 16'h71b6;
	B = 16'hf432;
	ans = 16'hed5c;
	#20
	A = 16'h7680;
	B = 16'hf566;
	ans = 16'h6c68;
	#20
	A = 16'h7026;
	B = 16'hf526;
	ans = 16'hf226;
	#20
	A = 16'hf5fd;
	B = 16'hf286;
	ans = 16'hf8a0;
	#20
	A = 16'h769d;
	B = 16'hf077;
	ans = 16'h7462;
	#20
	A = 16'hf4b0;
	B = 16'hf382;
	ans = 16'hf838;
	#20
	A = 16'h710a;
	B = 16'hf706;
	ans = 16'hf481;
	#20
	A = 16'hf570;
	B = 16'hf494;
	ans = 16'hf902;
	#20
	A = 16'hf477;
	B = 16'hf53e;
	ans = 16'hf8da;
	#20
	A = 16'hf35c;
	B = 16'h6fdb;
	ans = 16'heedd;
	#20
	A = 16'h7380;
	B = 16'h76cc;
	ans = 16'h7946;
	#20
	A = 16'h6e86;
	B = 16'h7251;
	ans = 16'h74ca;
	#20
	A = 16'he604;
	B = 16'hf525;
	ans = 16'hf585;
	#20
	A = 16'h7637;
	B = 16'h6a27;
	ans = 16'h76fc;
	#20
	A = 16'hf09b;
	B = 16'h7409;
	ans = 16'h6eee;
	#20
	A = 16'h7605;
	B = 16'h6aef;
	ans = 16'h76e3;
	#20
	A = 16'h7503;
	B = 16'hec3f;
	ans = 16'h73e6;
	#20
	A = 16'h7652;
	B = 16'h70f1;
	ans = 16'h7865;
	#20
	A = 16'h7418;
	B = 16'h6d19;
	ans = 16'h755e;
	#20
	A = 16'h6dfe;
	B = 16'h7583;
	ans = 16'h7702;
	#20
	A = 16'h7415;
	B = 16'hec7a;
	ans = 16'h71ed;
	#20
	A = 16'hf0b0;
	B = 16'h7673;
	ans = 16'h741b;
	#20
	A = 16'h6f7c;
	B = 16'hf694;
	ans = 16'hf4b5;
	#20
	A = 16'hefe6;
	B = 16'h7627;
	ans = 16'h742e;
	#20
	A = 16'h7552;
	B = 16'h7004;
	ans = 16'h7754;
	#20
	A = 16'h70c7;
	B = 16'h684d;
	ans = 16'h71da;
	#20
	A = 16'h740d;
	B = 16'h7430;
	ans = 16'h781e;
	#20
	A = 16'hf3a8;
	B = 16'h7560;
	ans = 16'h6e30;
	#20
	A = 16'h75bf;
	B = 16'h75d8;
	ans = 16'h79cc;
	#20
	A = 16'hf482;
	B = 16'he9f5;
	ans = 16'hf541;
	#20
	A = 16'h7243;
	B = 16'hf444;
	ans = 16'hec8a;
	#20
	A = 16'hf12a;
	B = 16'hf589;
	ans = 16'hf80f;
	#20
	A = 16'h6483;
	B = 16'hf5ac;
	ans = 16'hf564;
	#20
	A = 16'h6e3b;
	B = 16'h6af5;
	ans = 16'h70db;
	#20
	A = 16'h6dfb;
	B = 16'hec86;
	ans = 16'h65d4;
	#20
	A = 16'hf6c4;
	B = 16'hf6e9;
	ans = 16'hfad6;
	#20
	A = 16'hf04b;
	B = 16'hef05;
	ans = 16'hf3ce;
	#20
	A = 16'hf50a;
	B = 16'h75d3;
	ans = 16'h6a48;
	#20
	A = 16'hf4fc;
	B = 16'hf5c5;
	ans = 16'hf960;
	#20
	A = 16'h70e6;
	B = 16'h761f;
	ans = 16'h7849;
	#20
	A = 16'h73c0;
	B = 16'h7270;
	ans = 16'h7718;
	#20
	A = 16'h7128;
	B = 16'h74db;
	ans = 16'h776f;
	#20
	A = 16'h760f;
	B = 16'h70a8;
	ans = 16'h7832;
	#20
	A = 16'h74bf;
	B = 16'h701a;
	ans = 16'h76cc;
	#20
	A = 16'h7558;
	B = 16'hf079;
	ans = 16'h7237;
	#20
	A = 16'hf59d;
	B = 16'hf009;
	ans = 16'hf7a2;
	#20
	A = 16'hf70e;
	B = 16'h7414;
	ans = 16'hf1f4;
	#20
	A = 16'hf354;
	B = 16'h765b;
	ans = 16'h7162;
	#20
	A = 16'hf434;
	B = 16'h7483;
	ans = 16'h64f0;
	#20
	A = 16'hf2fd;
	B = 16'he859;
	ans = 16'hf40a;
	#20
	A = 16'hec85;
	B = 16'h657f;
	ans = 16'hea4a;
	#20
	A = 16'hee8e;
	B = 16'h73b2;
	ans = 16'h706b;
	#20
	A = 16'hf5cf;
	B = 16'h6f65;
	ans = 16'hf3ec;
	#20
	A = 16'hed0e;
	B = 16'hf025;
	ans = 16'hf2ac;
	#20
	A = 16'h7722;
	B = 16'he934;
	ans = 16'h767c;
	#20
	A = 16'hf420;
	B = 16'h76f6;
	ans = 16'h71ac;
	#20
	A = 16'h71f2;
	B = 16'h75bc;
	ans = 16'h785a;
	#20
	A = 16'h7167;
	B = 16'h5faf;
	ans = 16'h71a4;
	#20
	A = 16'h7747;
	B = 16'h703c;
	ans = 16'h78b2;
	#20
	A = 16'hf6a0;
	B = 16'hf322;
	ans = 16'hf918;
	#20
	A = 16'h70d7;
	B = 16'h71f4;
	ans = 16'h7566;
	#20
	A = 16'heee2;
	B = 16'h6dce;
	ans = 16'he450;
	#20
	A = 16'h7519;
	B = 16'h7579;
	ans = 16'h7949;
	#20
	A = 16'he981;
	B = 16'h76d6;
	ans = 16'h7626;
	#20
	A = 16'h7223;
	B = 16'hf1c2;
	ans = 16'h6210;
	#20
	A = 16'hf3cf;
	B = 16'h76bb;
	ans = 16'h71a7;
	#20
	A = 16'h763a;
	B = 16'hf732;
	ans = 16'hebc0;
	#20
	A = 16'h6fea;
	B = 16'hf42d;
	ans = 16'hf065;
	#20
	A = 16'h73dd;
	B = 16'h72ad;
	ans = 16'h7745;
	#20
	A = 16'hf412;
	B = 16'he905;
	ans = 16'hf4b3;
	#20
	A = 16'h714c;
	B = 16'h707d;
	ans = 16'h74e4;
	#20
	A = 16'h768e;
	B = 16'h5495;
	ans = 16'h7693;
	#20
	A = 16'h7588;
	B = 16'h6d50;
	ans = 16'h76dc;
	#20
	A = 16'h748b;
	B = 16'h74ea;
	ans = 16'h78ba;
	#20
	A = 16'hf3b0;
	B = 16'h76fe;
	ans = 16'h724c;
	#20
	A = 16'hf3f5;
	B = 16'hf6b1;
	ans = 16'hf956;
	#20
	A = 16'h7503;
	B = 16'he4d4;
	ans = 16'h74b6;
	#20
	A = 16'hf748;
	B = 16'h72b7;
	ans = 16'hf3d9;
	#20
	A = 16'hf22c;
	B = 16'hf6ac;
	ans = 16'hf8e1;
	#20
	A = 16'hecc0;
	B = 16'hdf85;
	ans = 16'hed38;
	#20
	A = 16'heb2d;
	B = 16'hf3db;
	ans = 16'hf4d3;
	#20
	A = 16'hf40f;
	B = 16'hf4de;
	ans = 16'hf876;
	#20
	A = 16'h6c15;
	B = 16'hf714;
	ans = 16'hf60f;
	#20
	A = 16'h7485;
	B = 16'hf587;
	ans = 16'hec08;
	#20
	A = 16'hf63f;
	B = 16'hf346;
	ans = 16'hf8f1;
	#20
	A = 16'h6d59;
	B = 16'h7073;
	ans = 16'h7320;
	#20
	A = 16'hf05f;
	B = 16'hf254;
	ans = 16'hf55a;
	#20
	A = 16'hf08d;
	B = 16'hf4f5;
	ans = 16'hf73c;
	#20
	A = 16'h74ef;
	B = 16'hf5f3;
	ans = 16'hec10;
	#20
	A = 16'hecda;
	B = 16'hf26a;
	ans = 16'hf46c;
	#20
	A = 16'hf40e;
	B = 16'h7738;
	ans = 16'h7254;
	#20
	A = 16'hf453;
	B = 16'hf615;
	ans = 16'hf934;
	#20
	A = 16'h63bd;
	B = 16'hf08f;
	ans = 16'hf013;
	#20
	A = 16'hf568;
	B = 16'hf62a;
	ans = 16'hf9c9;
	#20
	A = 16'h7170;
	B = 16'h75e8;
	ans = 16'h7850;
	#20
	A = 16'h7242;
	B = 16'hf0c1;
	ans = 16'h6a04;
	#20
	A = 16'hefbd;
	B = 16'hf6b4;
	ans = 16'hf852;
	#20
	A = 16'h74e1;
	B = 16'hf0a1;
	ans = 16'h7121;
	#20
	A = 16'h740e;
	B = 16'h6faa;
	ans = 16'h75f8;
	#20
	A = 16'hf4b7;
	B = 16'hf3eb;
	ans = 16'hf856;
	#20
	A = 16'he6be;
	B = 16'h752c;
	ans = 16'h74c0;
	#20
	A = 16'hf680;
	B = 16'hf009;
	ans = 16'hf842;
	#20
	A = 16'hf659;
	B = 16'h6bbb;
	ans = 16'hf562;
	#20
	A = 16'hed34;
	B = 16'h7619;
	ans = 16'h74cc;
	#20
	A = 16'hf43d;
	B = 16'h7230;
	ans = 16'hec94;
	#20
	A = 16'h6952;
	B = 16'he1fc;
	ans = 16'h67a6;
	#20
	A = 16'hf151;
	B = 16'h7711;
	ans = 16'h7468;
	#20
	A = 16'hf615;
	B = 16'he3d3;
	ans = 16'hf654;
	#20
	A = 16'h662e;
	B = 16'hf6bf;
	ans = 16'hf65c;
	#20
	A = 16'h756b;
	B = 16'h75ee;
	ans = 16'h79ac;
	#20
	A = 16'hed63;
	B = 16'h75cf;
	ans = 16'h7476;
	#20
	A = 16'h7460;
	B = 16'hf28d;
	ans = 16'h6c66;
	#20
	A = 16'hf3ea;
	B = 16'h761d;
	ans = 16'h7050;
	#20
	A = 16'he498;
	B = 16'h74ac;
	ans = 16'h7462;
	#20
	A = 16'h7313;
	B = 16'h710a;
	ans = 16'h760e;
	#20
	A = 16'hf101;
	B = 16'hf2f0;
	ans = 16'hf5f8;
	#20
	A = 16'hec6c;
	B = 16'hf3ad;
	ans = 16'hf4f2;
	#20
	A = 16'h770c;
	B = 16'hf4dc;
	ans = 16'h7060;
	#20
	A = 16'he832;
	B = 16'hf260;
	ans = 16'hf36c;
	#20
	A = 16'hf2ae;
	B = 16'hee78;
	ans = 16'hf4f5;
	#20
	A = 16'h7429;
	B = 16'hf44b;
	ans = 16'he040;
	#20
	A = 16'h6ff1;
	B = 16'he9d8;
	ans = 16'h6d05;
	#20
	A = 16'h740b;
	B = 16'h7297;
	ans = 16'h7756;
	#20
	A = 16'h7581;
	B = 16'hf109;
	ans = 16'h71f9;
	#20
	A = 16'h74b4;
	B = 16'hec54;
	ans = 16'h733e;
	#20
	A = 16'hef75;
	B = 16'h7639;
	ans = 16'h745c;
	#20
	A = 16'h6ca8;
	B = 16'h7210;
	ans = 16'h7432;
	#20
	A = 16'h5b9e;
	B = 16'h729d;
	ans = 16'h72bb;
	#20
	A = 16'hf6e2;
	B = 16'hf6ae;
	ans = 16'hfac8;
	#20
	A = 16'h7668;
	B = 16'h7467;
	ans = 16'h7968;
	#20
	A = 16'h6601;
	B = 16'h5d6d;
	ans = 16'h675c;
	#20
	A = 16'hed7d;
	B = 16'hf652;
	ans = 16'hf7b1;
	#20
	A = 16'hf608;
	B = 16'hf73b;
	ans = 16'hfaa2;
	#20
	A = 16'hf0d0;
	B = 16'h6f12;
	ans = 16'he91c;
	#20
	A = 16'hf208;
	B = 16'heb3c;
	ans = 16'hf3d7;
	#20
	A = 16'hf752;
	B = 16'h7355;
	ans = 16'hf34f;
	#20
	A = 16'hf3fc;
	B = 16'h75b1;
	ans = 16'h6ecc;
	#20
	A = 16'hec70;
	B = 16'h767f;
	ans = 16'h7563;
	#20
	A = 16'h7646;
	B = 16'he945;
	ans = 16'h759d;
	#20
	A = 16'hef74;
	B = 16'h6e1e;
	ans = 16'he558;
	#20
	A = 16'h7662;
	B = 16'h7225;
	ans = 16'h78ba;
	#20
	A = 16'h6cae;
	B = 16'h76b9;
	ans = 16'h77e4;
	#20
	A = 16'hf5c9;
	B = 16'hf4f4;
	ans = 16'hf95e;
	#20
	A = 16'h73d9;
	B = 16'hf0e1;
	ans = 16'h6df0;
	#20
	A = 16'h7319;
	B = 16'h7418;
	ans = 16'h77a4;
	#20
	A = 16'h6f6a;
	B = 16'h7643;
	ans = 16'h780f;
	#20
	A = 16'hf496;
	B = 16'h6f93;
	ans = 16'hf162;
	#20
	A = 16'hf536;
	B = 16'h75c1;
	ans = 16'h6858;
	#20
	A = 16'h726c;
	B = 16'h767f;
	ans = 16'h78da;
	#20
	A = 16'hea09;
	B = 16'h6cda;
	ans = 16'h6756;
	#20
	A = 16'h69fe;
	B = 16'h7053;
	ans = 16'h71d2;
	#20
	A = 16'hf67c;
	B = 16'hf698;
	ans = 16'hfa8a;
	#20
	A = 16'he968;
	B = 16'heaa6;
	ans = 16'hee07;
	#20
	A = 16'hf1e6;
	B = 16'h707f;
	ans = 16'he99c;
	#20
	A = 16'h7276;
	B = 16'h712b;
	ans = 16'h75d0;
	#20
	A = 16'h6b89;
	B = 16'hf732;
	ans = 16'hf641;
	#20
	A = 16'hf0de;
	B = 16'he815;
	ans = 16'hf1e3;
	#20
	A = 16'hf05b;
	B = 16'h762c;
	ans = 16'h73fd;
	#20
	A = 16'hf444;
	B = 16'hf693;
	ans = 16'hf96c;
	#20
	A = 16'hee57;
	B = 16'h755d;
	ans = 16'h738e;
	#20
	A = 16'he93d;
	B = 16'he189;
	ans = 16'hea9f;
	#20
	A = 16'h7685;
	B = 16'h74a9;
	ans = 16'h7997;
	#20
	A = 16'hf4b5;
	B = 16'h7270;
	ans = 16'hedf4;
	#20
	A = 16'hf30d;
	B = 16'h6411;
	ans = 16'hf28b;
	#20
	A = 16'h744f;
	B = 16'h6c88;
	ans = 16'h7571;
	#20
	A = 16'hf568;
	B = 16'h71fb;
	ans = 16'hf0d5;
	#20
	A = 16'hf698;
	B = 16'h70a2;
	ans = 16'hf447;
	#20
	A = 16'h7410;
	B = 16'h7656;
	ans = 16'h7933;
	#20
	A = 16'h7493;
	B = 16'hf56f;
	ans = 16'heae0;
	#20
	A = 16'h749e;
	B = 16'h72bc;
	ans = 16'h77fc;
	#20
	A = 16'h7535;
	B = 16'h69e0;
	ans = 16'h75f1;
	#20
	A = 16'hf4f5;
	B = 16'hf34f;
	ans = 16'hf84e;
	#20
	A = 16'h66eb;
	B = 16'h65aa;
	ans = 16'h6a4a;
	#20
	A = 16'hf4c2;
	B = 16'hf1ef;
	ans = 16'hf7ba;
	#20
	A = 16'h7611;
	B = 16'h7531;
	ans = 16'h79a1;
	#20
	A = 16'h70cc;
	B = 16'h7045;
	ans = 16'h7488;
	#20
	A = 16'h7138;
	B = 16'hf1fe;
	ans = 16'he630;
	#20
	A = 16'hf74b;
	B = 16'hf4ec;
	ans = 16'hfa1c;
	#20
	A = 16'h76e2;
	B = 16'h72c5;
	ans = 16'h7922;
	#20
	A = 16'h7600;
	B = 16'he686;
	ans = 16'h7598;
	#20
	A = 16'h7414;
	B = 16'hf45f;
	ans = 16'he4b0;
	#20
	A = 16'h76e3;
	B = 16'hf6be;
	ans = 16'h60a0;
	#20
	A = 16'heffb;
	B = 16'hf672;
	ans = 16'hf838;
	#20
	A = 16'h7396;
	B = 16'h717a;
	ans = 16'h7688;
	#20
	A = 16'hf4c4;
	B = 16'hdd51;
	ans = 16'hf4d9;
	#20
	A = 16'hec88;
	B = 16'he820;
	ans = 16'hee98;
	#20
	A = 16'hf5b6;
	B = 16'head4;
	ans = 16'hf690;
	#20
	A = 16'hd4f7;
	B = 16'h75f0;
	ans = 16'h75eb;
	#20
	A = 16'heea0;
	B = 16'h761c;
	ans = 16'h7474;
	#20
	A = 16'hef78;
	B = 16'heb61;
	ans = 16'hf194;
	#20
	A = 16'h7226;
	B = 16'hf275;
	ans = 16'he0f0;
	#20
	A = 16'hf63b;
	B = 16'h76ce;
	ans = 16'h6898;
	#20
	A = 16'h6e4a;
	B = 16'h7216;
	ans = 16'h749e;
	#20
	A = 16'h5a24;
	B = 16'h71eb;
	ans = 16'h7204;
	#20
	A = 16'hf62b;
	B = 16'h71d1;
	ans = 16'hf285;
	#20
	A = 16'hf19c;
	B = 16'hf4e2;
	ans = 16'hf7b0;
	#20
	A = 16'hf611;
	B = 16'hf4ec;
	ans = 16'hf97e;
	#20
	A = 16'h6ecb;
	B = 16'h76d2;
	ans = 16'h7842;
	#20
	A = 16'h7265;
	B = 16'hf752;
	ans = 16'hf420;
	#20
	A = 16'hf429;
	B = 16'hf216;
	ans = 16'hf734;
	#20
	A = 16'h7448;
	B = 16'he71b;
	ans = 16'h73ad;
	#20
	A = 16'h7209;
	B = 16'hf579;
	ans = 16'hf0e9;
	#20
	A = 16'h76f5;
	B = 16'hf142;
	ans = 16'h7454;
	#20
	A = 16'hf0a8;
	B = 16'hd22e;
	ans = 16'hf0ae;
	#20
	A = 16'h6e66;
	B = 16'h6e14;
	ans = 16'h723d;
	#20
	A = 16'hf636;
	B = 16'hf739;
	ans = 16'hfab8;
	#20
	A = 16'hef8f;
	B = 16'h6f78;
	ans = 16'hd5c0;
	#20
	A = 16'hee46;
	B = 16'hed93;
	ans = 16'hf1ec;
	#20
	A = 16'hf49c;
	B = 16'h6dfa;
	ans = 16'hf23b;
	#20
	A = 16'h7212;
	B = 16'hf212;
	ans = 16'h0;
	#20
	A = 16'hf423;
	B = 16'h74c2;
	ans = 16'h68f8;
	#20
	A = 16'hf0e0;
	B = 16'h7065;
	ans = 16'he3b0;
	#20
	A = 16'hf131;
	B = 16'h7480;
	ans = 16'h6f9e;
	#20
	A = 16'hf56b;
	B = 16'h734b;
	ans = 16'hef16;
	#20
	A = 16'hf33c;
	B = 16'h76ec;
	ans = 16'h729c;
	#20
	A = 16'he7e9;
	B = 16'hf50c;
	ans = 16'hf58b;
	#20
	A = 16'h7670;
	B = 16'hf1dd;
	ans = 16'h7303;
	#20
	A = 16'h7521;
	B = 16'h6ce7;
	ans = 16'h765b;
	#20
	A = 16'hf1fe;
	B = 16'hf392;
	ans = 16'hf6c8;
	#20
	A = 16'h707f;
	B = 16'h75e3;
	ans = 16'h7811;
	#20
	A = 16'hefb0;
	B = 16'h76bf;
	ans = 16'h74d3;
	#20
	A = 16'hf5bf;
	B = 16'hf1da;
	ans = 16'hf856;
	#20
	A = 16'h6a49;
	B = 16'h6a22;
	ans = 16'h6e36;
	#20
	A = 16'h7402;
	B = 16'h5712;
	ans = 16'h7409;
	#20
	A = 16'hf230;
	B = 16'h7636;
	ans = 16'h723c;
	#20
	A = 16'h6e93;
	B = 16'h6d53;
	ans = 16'h71f3;
	#20
	A = 16'hf2f5;
	B = 16'h7652;
	ans = 16'h71af;
	#20
	A = 16'h6d2f;
	B = 16'hf5e4;
	ans = 16'hf498;
	#20
	A = 16'h772a;
	B = 16'hf018;
	ans = 16'h751e;
	#20
	A = 16'h7481;
	B = 16'h7348;
	ans = 16'h7812;
	#20
	A = 16'hf3a5;
	B = 16'hf607;
	ans = 16'hf8ed;
	#20
	A = 16'hf719;
	B = 16'h7232;
	ans = 16'hf400;
	#20
	A = 16'hf5ad;
	B = 16'h6b8b;
	ans = 16'hf4bc;
	#20
	A = 16'hee5e;
	B = 16'he986;
	ans = 16'hf090;
	#20
	A = 16'hf45e;
	B = 16'h7440;
	ans = 16'hdf80;
	#20
	A = 16'h740c;
	B = 16'h700a;
	ans = 16'h7611;
	#20
	A = 16'h7739;
	B = 16'hf49d;
	ans = 16'h7138;
	#20
	A = 16'h7500;
	B = 16'h6b3a;
	ans = 16'h75e7;
	#20
	A = 16'hf485;
	B = 16'hf488;
	ans = 16'hf886;
	#20
	A = 16'h749e;
	B = 16'h715d;
	ans = 16'h774c;
	#20
	A = 16'hf54a;
	B = 16'h70f9;
	ans = 16'hf19b;
	#20
	A = 16'he970;
	B = 16'h745b;
	ans = 16'h735a;
	#20
	A = 16'hf532;
	B = 16'h774a;
	ans = 16'h7030;
	#20
	A = 16'h719c;
	B = 16'h73ab;
	ans = 16'h76a4;
	#20
	A = 16'hf639;
	B = 16'hf738;
	ans = 16'hfab8;
	#20
	A = 16'h66b3;
	B = 16'hf420;
	ans = 16'hf36a;
	#20
	A = 16'hef1e;
	B = 16'hf5c5;
	ans = 16'hf78c;
	#20
	A = 16'hef91;
	B = 16'hf691;
	ans = 16'hf83b;
	#20
	A = 16'hf59e;
	B = 16'hf227;
	ans = 16'hf859;
	#20
	A = 16'hf5d7;
	B = 16'hf2d9;
	ans = 16'hf8a2;
	#20
	A = 16'h6c23;
	B = 16'h75e0;
	ans = 16'h76e9;
	#20
	A = 16'h74d5;
	B = 16'hf33a;
	ans = 16'h6ce0;
	#20
	A = 16'h7515;
	B = 16'hf3b5;
	ans = 16'h6cea;
	#20
	A = 16'hf428;
	B = 16'h75d6;
	ans = 16'h6eb8;
	#20
	A = 16'hf585;
	B = 16'he77b;
	ans = 16'hf5fd;
	#20
	A = 16'h7501;
	B = 16'h73a1;
	ans = 16'h7869;
	#20
	A = 16'hee5f;
	B = 16'h721b;
	ans = 16'h6dd7;
	#20
	A = 16'h73a4;
	B = 16'hecf6;
	ans = 16'h7129;
	#20
	A = 16'he398;
	B = 16'h6d40;
	ans = 16'h6c4d;
	#20
	A = 16'hf175;
	B = 16'hf6c8;
	ans = 16'hf8c1;
	#20
	A = 16'hf074;
	B = 16'hf6ef;
	ans = 16'hf894;
	#20
	A = 16'h7421;
	B = 16'hf046;
	ans = 16'h6ff8;
	#20
	A = 16'h7492;
	B = 16'hf059;
	ans = 16'h70cb;
	#20
	A = 16'hf71c;
	B = 16'h7463;
	ans = 16'hf172;
	#20
	A = 16'hf229;
	B = 16'hf1f6;
	ans = 16'hf610;
	#20
	A = 16'h6aa9;
	B = 16'hf640;
	ans = 16'hf56b;
	#20
	A = 16'hf4a3;
	B = 16'h7656;
	ans = 16'h6ecc;
	#20
	A = 16'hee69;
	B = 16'h76d5;
	ans = 16'h753b;
	#20
	A = 16'h6e1e;
	B = 16'h6cba;
	ans = 16'h716c;
	#20
	A = 16'h70db;
	B = 16'hf40b;
	ans = 16'hee76;
	#20
	A = 16'h743e;
	B = 16'hf586;
	ans = 16'hed20;
	#20
	A = 16'hf565;
	B = 16'hf277;
	ans = 16'hf850;
	#20
	A = 16'hf440;
	B = 16'hf152;
	ans = 16'hf6e9;
	#20
	A = 16'h7566;
	B = 16'hf30b;
	ans = 16'h6f82;
	#20
	A = 16'h750c;
	B = 16'hf56f;
	ans = 16'he630;
	#20
	A = 16'h6c65;
	B = 16'hcaaf;
	ans = 16'h6c62;
	#20
	A = 16'hf15c;
	B = 16'heeec;
	ans = 16'hf469;
	#20
	A = 16'he79c;
	B = 16'hf521;
	ans = 16'hf59b;
	#20
	A = 16'hf23d;
	B = 16'hf5e1;
	ans = 16'hf880;
	#20
	A = 16'heb24;
	B = 16'hf404;
	ans = 16'hf4e8;
	#20
	A = 16'h7461;
	B = 16'hf2d4;
	ans = 16'h6bb8;
	#20
	A = 16'h772f;
	B = 16'h655f;
	ans = 16'h7785;
	#20
	A = 16'h75bb;
	B = 16'hea7d;
	ans = 16'h74eb;
	#20
	A = 16'hf6ff;
	B = 16'h70f2;
	ans = 16'hf486;
	#20
	A = 16'h6bce;
	B = 16'h7130;
	ans = 16'h7324;
	#20
	A = 16'h71e0;
	B = 16'h7157;
	ans = 16'h759c;
	#20
	A = 16'h76b8;
	B = 16'hf70a;
	ans = 16'he520;
	#20
	A = 16'hf4ea;
	B = 16'h7649;
	ans = 16'h6d7c;
	#20
	A = 16'hed47;
	B = 16'hdf4a;
	ans = 16'hedbc;
	#20
	A = 16'h6c34;
	B = 16'hed77;
	ans = 16'he50c;
	#20
	A = 16'hf05b;
	B = 16'hf60a;
	ans = 16'hf81c;
	#20
	A = 16'h684d;
	B = 16'hf68c;
	ans = 16'hf602;
	#20
	A = 16'hf5b6;
	B = 16'hf0e7;
	ans = 16'hf815;
	#20
	A = 16'hf722;
	B = 16'h71c5;
	ans = 16'hf440;
	#20
	A = 16'h7580;
	B = 16'h7068;
	ans = 16'h77b4;
	#20
	A = 16'he3ae;
	B = 16'hf110;
	ans = 16'hf18b;
	#20
	A = 16'h732e;
	B = 16'h6ee3;
	ans = 16'h7550;
	#20
	A = 16'h6f2f;
	B = 16'hf60e;
	ans = 16'hf442;
	#20
	A = 16'h756c;
	B = 16'hf58a;
	ans = 16'hdf80;
	#20
	A = 16'h7308;
	B = 16'h6873;
	ans = 16'h7412;
	#20
	A = 16'h75ae;
	B = 16'hf608;
	ans = 16'he5a0;
	#20
	A = 16'h7730;
	B = 16'h7506;
	ans = 16'h7a1b;
	#20
	A = 16'h76e9;
	B = 16'h70c3;
	ans = 16'h78a5;
	#20
	A = 16'h727e;
	B = 16'hf635;
	ans = 16'hf1ec;
	#20
	A = 16'hf3b1;
	B = 16'h7642;
	ans = 16'h70d3;
	#20
	A = 16'h76d1;
	B = 16'h6dac;
	ans = 16'h781e;
	#20
	A = 16'h73b9;
	B = 16'h60c6;
	ans = 16'h7403;
	#20
	A = 16'h729f;
	B = 16'hf593;
	ans = 16'hf087;
	#20
	A = 16'hf4ff;
	B = 16'h76df;
	ans = 16'h6f80;
	#20
	A = 16'hf512;
	B = 16'hf5a3;
	ans = 16'hf95a;
	#20
	A = 16'h7689;
	B = 16'h71e6;
	ans = 16'h78be;
	#20
	A = 16'hf532;
	B = 16'hf400;
	ans = 16'hf899;
	#20
	A = 16'hf65f;
	B = 16'hefbd;
	ans = 16'hf827;
	#20
	A = 16'h7243;
	B = 16'hf10f;
	ans = 16'h68d0;
	#20
	A = 16'h730e;
	B = 16'hf6cd;
	ans = 16'hf28c;
	#20
	A = 16'hee5f;
	B = 16'hf38a;
	ans = 16'hf55d;
	#20
	A = 16'hf551;
	B = 16'h7340;
	ans = 16'heec4;
	#20
	A = 16'he357;
	B = 16'h71dc;
	ans = 16'h7167;
	#20
	A = 16'hf376;
	B = 16'h6d15;
	ans = 16'hf0ec;
	#20
	A = 16'hf63b;
	B = 16'h769f;
	ans = 16'h6640;
	#20
	A = 16'hec3c;
	B = 16'hf53b;
	ans = 16'hf64a;
	#20
	A = 16'h752a;
	B = 16'h732d;
	ans = 16'h7860;
	#20
	A = 16'hf0f8;
	B = 16'hf375;
	ans = 16'hf636;
	#20
	A = 16'h6f7c;
	B = 16'h6f3d;
	ans = 16'h735c;
	#20
	A = 16'h7622;
	B = 16'h6c92;
	ans = 16'h7746;
	#20
	A = 16'hf603;
	B = 16'he1bd;
	ans = 16'hf631;
	#20
	A = 16'h6793;
	B = 16'hec2c;
	ans = 16'he88e;
	#20
	A = 16'h732a;
	B = 16'h6dce;
	ans = 16'h7508;
	#20
	A = 16'hf286;
	B = 16'he92f;
	ans = 16'hf3d2;
	#20
	A = 16'h7098;
	B = 16'hf549;
	ans = 16'hf1fa;
	#20
	A = 16'h6746;
	B = 16'h7292;
	ans = 16'h737b;
	#20
	A = 16'h7351;
	B = 16'hf62f;
	ans = 16'hf10d;
	#20
	A = 16'hf4a1;
	B = 16'h6da3;
	ans = 16'hf270;
	#20
	A = 16'hf4b1;
	B = 16'h74de;
	ans = 16'h61a0;
	#20
	A = 16'h7702;
	B = 16'heef8;
	ans = 16'h7544;
	#20
	A = 16'h72e8;
	B = 16'h6a62;
	ans = 16'h7440;
	#20
	A = 16'hf4f1;
	B = 16'hf743;
	ans = 16'hfa1a;
	#20
	A = 16'hf57d;
	B = 16'hf711;
	ans = 16'hfa47;
	#20
	A = 16'hf5d9;
	B = 16'h6b1f;
	ans = 16'hf4f5;
	#20
	A = 16'hf635;
	B = 16'h72eb;
	ans = 16'hf17f;
	#20
	A = 16'h6fc7;
	B = 16'hf6aa;
	ans = 16'hf4b8;
	#20
	A = 16'hefe6;
	B = 16'heff4;
	ans = 16'hf3ed;
	#20
	A = 16'h6dd0;
	B = 16'hf718;
	ans = 16'hf5a4;
	#20
	A = 16'hf560;
	B = 16'h75a8;
	ans = 16'h6480;
	#20
	A = 16'hf6b0;
	B = 16'h7145;
	ans = 16'hf40e;
	#20
	A = 16'hf029;
	B = 16'hf2a2;
	ans = 16'hf566;
	#20
	A = 16'h6bde;
	B = 16'hf321;
	ans = 16'hf12a;
	#20
	A = 16'h7573;
	B = 16'h741b;
	ans = 16'h78c7;
	#20
	A = 16'hf662;
	B = 16'hf600;
	ans = 16'hfa31;
	#20
	A = 16'h6cd3;
	B = 16'hf28a;
	ans = 16'hf020;
	#20
	A = 16'hf3b8;
	B = 16'h74c0;
	ans = 16'h6b20;
	#20
	A = 16'h71ba;
	B = 16'he8aa;
	ans = 16'h7090;
	#20
	A = 16'h7324;
	B = 16'h6e21;
	ans = 16'h751a;
	#20
	A = 16'h762c;
	B = 16'hef89;
	ans = 16'h744a;
	#20
	A = 16'h773f;
	B = 16'hf34d;
	ans = 16'h7331;
	#20
	A = 16'he7e4;
	B = 16'h72d0;
	ans = 16'h71d4;
	#20
	A = 16'hf4aa;
	B = 16'h7562;
	ans = 16'h69c0;
	#20
	A = 16'h7100;
	B = 16'h7351;
	ans = 16'h7628;
	#20
	A = 16'hf04b;
	B = 16'h6acb;
	ans = 16'hed30;
	#20
	A = 16'hf67e;
	B = 16'h766d;
	ans = 16'hdc40;
	#20
	A = 16'hee1a;
	B = 16'he4b2;
	ans = 16'hef46;
	#20
	A = 16'hf340;
	B = 16'he3f1;
	ans = 16'hf3bf;
	#20
	A = 16'h67bf;
	B = 16'h6f95;
	ans = 16'h70c2;
	#20
	A = 16'h73c3;
	B = 16'h6109;
	ans = 16'h740a;
	#20
	A = 16'h7255;
	B = 16'h6d54;
	ans = 16'h7480;
	#20
	A = 16'hf5f7;
	B = 16'hf0a3;
	ans = 16'hf824;
	#20
	A = 16'h76a5;
	B = 16'h707a;
	ans = 16'h7871;
	#20
	A = 16'h6d99;
	B = 16'h747f;
	ans = 16'h75e5;
	#20
	A = 16'hf44f;
	B = 16'h7390;
	ans = 16'he838;
	#20
	A = 16'h656c;
	B = 16'h6cc4;
	ans = 16'h6e1f;
	#20
	A = 16'hf400;
	B = 16'hed05;
	ans = 16'hf541;
	#20
	A = 16'h72e5;
	B = 16'h748f;
	ans = 16'h7801;
	#20
	A = 16'hef8c;
	B = 16'h7314;
	ans = 16'h6e9c;
	#20
	A = 16'h7605;
	B = 16'hf6d3;
	ans = 16'hea70;
	#20
	A = 16'h7512;
	B = 16'hf595;
	ans = 16'he818;
	#20
	A = 16'h7650;
	B = 16'hf545;
	ans = 16'h6c2c;
	#20
	A = 16'h6cf8;
	B = 16'hf711;
	ans = 16'hf5d3;
	#20
	A = 16'h7716;
	B = 16'h7538;
	ans = 16'h7a27;
	#20
	A = 16'h7684;
	B = 16'h754c;
	ans = 16'h79e8;
	#20
	A = 16'hf5ad;
	B = 16'h7607;
	ans = 16'h65a0;
	#20
	A = 16'h7577;
	B = 16'h65dd;
	ans = 16'h75d5;
	#20
	A = 16'h7601;
	B = 16'h6c0e;
	ans = 16'h7704;
	#20
	A = 16'he28d;
	B = 16'h6bc8;
	ans = 16'h6a25;
	#20
	A = 16'h7035;
	B = 16'h683b;
	ans = 16'h7144;
	#20
	A = 16'h7506;
	B = 16'h702d;
	ans = 16'h771c;
	#20
	A = 16'h75b2;
	B = 16'h74b3;
	ans = 16'h7932;
	#20
	A = 16'h6e9f;
	B = 16'h70f5;
	ans = 16'h7422;
	#20
	A = 16'hf445;
	B = 16'h72d2;
	ans = 16'heae0;
	#20
	A = 16'hf680;
	B = 16'hf437;
	ans = 16'hf95c;
	#20
	A = 16'he006;
	B = 16'h6a46;
	ans = 16'h6944;
	#20
	A = 16'h7086;
	B = 16'hf436;
	ans = 16'hefcc;
	#20
	A = 16'hf60a;
	B = 16'he69d;
	ans = 16'hf674;
	#20
	A = 16'h73a9;
	B = 16'hf1eb;
	ans = 16'h6af8;
	#20
	A = 16'h6c64;
	B = 16'hf667;
	ans = 16'hf54e;
	#20
	A = 16'hf738;
	B = 16'h71b8;
	ans = 16'hf45c;
	#20
	A = 16'hf651;
	B = 16'h7712;
	ans = 16'h6a08;
	#20
	A = 16'hf619;
	B = 16'hecfb;
	ans = 16'hf758;
	#20
	A = 16'hf232;
	B = 16'h5fdd;
	ans = 16'hf1f3;
	#20
	A = 16'h72d8;
	B = 16'h6968;
	ans = 16'h7419;
	#20
	A = 16'h760b;
	B = 16'hf4ca;
	ans = 16'h6d04;
	#20
	A = 16'he9f6;
	B = 16'hf049;
	ans = 16'hf1c6;
	#20
	A = 16'h75a1;
	B = 16'he902;
	ans = 16'h7501;
	#20
	A = 16'h6cfc;
	B = 16'hf08d;
	ans = 16'hec1e;
	#20
	A = 16'hf26f;
	B = 16'h6ad4;
	ans = 16'hf0ba;
	#20
	A = 16'h74fd;
	B = 16'hef54;
	ans = 16'h7250;
	#20
	A = 16'h6edd;
	B = 16'hebae;
	ans = 16'h6a0c;
	#20
	A = 16'h7506;
	B = 16'hf6e6;
	ans = 16'hef80;
	#20
	A = 16'h71bd;
	B = 16'hf6eb;
	ans = 16'hf40c;
	#20
	A = 16'h541d;
	B = 16'h7315;
	ans = 16'h731d;
	#20
	A = 16'h69ca;
	B = 16'hf5b7;
	ans = 16'hf4fe;
	#20
	A = 16'hf103;
	B = 16'hf716;
	ans = 16'hf8cc;
	#20
	A = 16'hf3b6;
	B = 16'hf6ad;
	ans = 16'hf944;
	#20
	A = 16'h629c;
	B = 16'h772a;
	ans = 16'h775f;
	#20
	A = 16'h6d91;
	B = 16'h7241;
	ans = 16'h7485;
	#20
	A = 16'he1a2;
	B = 16'h68a7;
	ans = 16'h667d;
	#20
	A = 16'h74ee;
	B = 16'hf631;
	ans = 16'hed0c;
	#20
	A = 16'hf648;
	B = 16'hf062;
	ans = 16'hf83c;
	#20
	A = 16'hf194;
	B = 16'hf559;
	ans = 16'hf812;
	#20
	A = 16'h6863;
	B = 16'hf683;
	ans = 16'hf5f7;
	#20
	A = 16'heaba;
	B = 16'h75b3;
	ans = 16'h74dc;
	#20
	A = 16'hf502;
	B = 16'h7524;
	ans = 16'h6040;
	#20
	A = 16'h6856;
	B = 16'h7741;
	ans = 16'h77cc;
	#20
	A = 16'h728b;
	B = 16'h75cb;
	ans = 16'h7888;
	#20
	A = 16'hed86;
	B = 16'h6d10;
	ans = 16'hdf60;
	#20
	A = 16'h7456;
	B = 16'h658a;
	ans = 16'h74af;
	#20
	A = 16'hf4f4;
	B = 16'h76f9;
	ans = 16'h700a;
	#20
	A = 16'hf641;
	B = 16'h6a12;
	ans = 16'hf57f;
	#20
	A = 16'hf545;
	B = 16'h74c8;
	ans = 16'he7d0;
	#20
	A = 16'hecfc;
	B = 16'hf651;
	ans = 16'hf790;
	#20
	A = 16'he95d;
	B = 16'h7727;
	ans = 16'h767b;
	#20
	A = 16'hf6df;
	B = 16'h7404;
	ans = 16'hf1b6;
	#20
	A = 16'h6af8;
	B = 16'h72c1;
	ans = 16'h7440;
	#20
	A = 16'hf6f3;
	B = 16'hf73e;
	ans = 16'hfb18;
	#20
	A = 16'hf04e;
	B = 16'h6fc1;
	ans = 16'he2d8;
	#20
	A = 16'h74a8;
	B = 16'hf25a;
	ans = 16'h6dec;
	#20
	A = 16'hf694;
	B = 16'h6d6f;
	ans = 16'hf538;
	#20
	A = 16'hf6d3;
	B = 16'h774c;
	ans = 16'h6790;
	#20
	A = 16'hf65b;
	B = 16'h6b36;
	ans = 16'hf574;
	#20
	A = 16'h76b4;
	B = 16'h766d;
	ans = 16'h7a90;
	#20
	A = 16'hf37b;
	B = 16'h7408;
	ans = 16'h64a8;
	#20
	A = 16'h74b6;
	B = 16'hf275;
	ans = 16'h6dee;
	#20
	A = 16'h76e3;
	B = 16'hf0ed;
	ans = 16'h746c;
	#20
	A = 16'hf305;
	B = 16'h6cf6;
	ans = 16'hf08a;
	#20
	A = 16'hf6b4;
	B = 16'h74c3;
	ans = 16'hefc4;
	#20
	A = 16'he879;
	B = 16'hf52e;
	ans = 16'hf5bd;
	#20
	A = 16'h6c4e;
	B = 16'h7090;
	ans = 16'h72b7;
	#20
	A = 16'h669b;
	B = 16'hf0ee;
	ans = 16'hf01b;
	#20
	A = 16'hf68c;
	B = 16'hf53b;
	ans = 16'hf9e4;
	#20
	A = 16'h71bb;
	B = 16'h7537;
	ans = 16'h780a;
	#20
	A = 16'hf548;
	B = 16'hf748;
	ans = 16'hfa48;
	#20
	A = 16'h74e2;
	B = 16'h693b;
	ans = 16'h7589;
	#20
	A = 16'hf66d;
	B = 16'hf5c7;
	ans = 16'hfa1a;
	#20
	A = 16'hf1c8;
	B = 16'he1c4;
	ans = 16'hf224;
	#20
	A = 16'hf725;
	B = 16'h71e4;
	ans = 16'hf433;
	#20
	A = 16'hed72;
	B = 16'hf583;
	ans = 16'hf6e0;
	#20
	A = 16'hf1d5;
	B = 16'h7735;
	ans = 16'h744a;
	#20
	A = 16'hf187;
	B = 16'hf73d;
	ans = 16'hf900;
	#20
	A = 16'hf537;
	B = 16'h6d32;
	ans = 16'hf3d5;
	#20
	A = 16'heb85;
	B = 16'hd00e;
	ans = 16'heb95;
	#20
	A = 16'hf28a;
	B = 16'he5ab;
	ans = 16'hf33f;
	#20
	A = 16'h743b;
	B = 16'hf57b;
	ans = 16'hed00;
	#20
	A = 16'h74d4;
	B = 16'h70fd;
	ans = 16'h7752;
	#20
	A = 16'h72f5;
	B = 16'hf16d;
	ans = 16'h6a20;
	#20
	A = 16'h7012;
	B = 16'h7110;
	ans = 16'h7491;
	#20
	A = 16'h7705;
	B = 16'hf212;
	ans = 16'h73f8;
	#20
	A = 16'h7724;
	B = 16'hea75;
	ans = 16'h7655;
	#20
	A = 16'h745e;
	B = 16'h74af;
	ans = 16'h7886;
	#20
	A = 16'hf73b;
	B = 16'h64fc;
	ans = 16'hf6eb;
	#20
	A = 16'h7155;
	B = 16'h70b4;
	ans = 16'h7504;
	#20
	A = 16'h7495;
	B = 16'hee06;
	ans = 16'h7227;
	#20
	A = 16'hf5a7;
	B = 16'hf6b2;
	ans = 16'hfa2c;
	#20
	A = 16'hf1db;
	B = 16'h760b;
	ans = 16'h723b;
	#20
	A = 16'hec41;
	B = 16'hf504;
	ans = 16'hf614;
	#20
	A = 16'hf145;
	B = 16'hf4e7;
	ans = 16'hf78a;
	#20
	A = 16'h6a5b;
	B = 16'h576d;
	ans = 16'h6a96;
	#20
	A = 16'h750f;
	B = 16'hf752;
	ans = 16'hf086;
	#20
	A = 16'he532;
	B = 16'h76a8;
	ans = 16'h7655;
	#20
	A = 16'h750b;
	B = 16'h7717;
	ans = 16'h7a11;
	#20
	A = 16'hecf3;
	B = 16'hf412;
	ans = 16'hf54f;
	#20
	A = 16'h755d;
	B = 16'hf5cc;
	ans = 16'he6f0;
	#20
	A = 16'hf25e;
	B = 16'h72c0;
	ans = 16'h6220;
	#20
	A = 16'h6c5f;
	B = 16'heaad;
	ans = 16'h6422;
	#20
	A = 16'h7204;
	B = 16'hf6f3;
	ans = 16'hf3e2;
	#20
	A = 16'hf4c1;
	B = 16'h7601;
	ans = 16'h6d00;
	#20
	A = 16'h768f;
	B = 16'h7508;
	ans = 16'h79cc;
	#20
	A = 16'h6dc2;
	B = 16'h75d7;
	ans = 16'h7748;
	#20
	A = 16'h767f;
	B = 16'h74b3;
	ans = 16'h7999;
	#20
	A = 16'hed08;
	B = 16'h6396;
	ans = 16'hec15;
	#20
	A = 16'h6cc3;
	B = 16'h745e;
	ans = 16'h758f;
	#20
	A = 16'h751a;
	B = 16'h70a6;
	ans = 16'h776d;
	#20
	A = 16'hf30b;
	B = 16'h763f;
	ans = 16'h7173;
	#20
	A = 16'h7585;
	B = 16'hefec;
	ans = 16'h7314;
	#20
	A = 16'h71bb;
	B = 16'h6e46;
	ans = 16'h746f;
	#20
	A = 16'h74c9;
	B = 16'hecc4;
	ans = 16'h7330;
	#20
	A = 16'hf020;
	B = 16'h71c3;
	ans = 16'h6a8c;
	#20
	A = 16'h752a;
	B = 16'h75f0;
	ans = 16'h798d;
	#20
	A = 16'hf506;
	B = 16'h61b7;
	ans = 16'hf4d8;
	#20
	A = 16'hf4b6;
	B = 16'hec45;
	ans = 16'hf5c7;
	#20
	A = 16'hf244;
	B = 16'h7468;
	ans = 16'h6d18;
	#20
	A = 16'hf701;
	B = 16'hee00;
	ans = 16'hf840;
	#20
	A = 16'he4b7;
	B = 16'hf0f0;
	ans = 16'hf187;
	#20
	A = 16'h6eed;
	B = 16'h754b;
	ans = 16'h7706;
	#20
	A = 16'h74ab;
	B = 16'h6b9c;
	ans = 16'h759e;
	#20
	A = 16'hf529;
	B = 16'hf2e7;
	ans = 16'hf84e;
	#20
	A = 16'hee12;
	B = 16'h7495;
	ans = 16'h7221;
	#20
	A = 16'hf05d;
	B = 16'hee2c;
	ans = 16'hf373;
	#20
	A = 16'hf65b;
	B = 16'h7042;
	ans = 16'hf43a;
	#20
	A = 16'h6e5a;
	B = 16'hf592;
	ans = 16'hf3f7;
	#20
	A = 16'h6e44;
	B = 16'hf3bf;
	ans = 16'hf09d;
	#20
	A = 16'h740b;
	B = 16'hf478;
	ans = 16'he6d0;
	#20
	A = 16'hf607;
	B = 16'hde8c;
	ans = 16'hf621;
	#20
	A = 16'h700a;
	B = 16'hf4c8;
	ans = 16'hf186;
	#20
	A = 16'h5d98;
	B = 16'h7076;
	ans = 16'h70a3;
	#20
	A = 16'h76ff;
	B = 16'h70c7;
	ans = 16'h78b1;
	#20
	A = 16'h7620;
	B = 16'h6e32;
	ans = 16'h77ac;
	#20
	A = 16'hf567;
	B = 16'h74f0;
	ans = 16'he770;
	#20
	A = 16'hef25;
	B = 16'h70d1;
	ans = 16'h68fa;
	#20
	A = 16'hed23;
	B = 16'h7437;
	ans = 16'h71dc;
	#20
	A = 16'hf465;
	B = 16'h71b1;
	ans = 16'hee32;
	#20
	A = 16'h75be;
	B = 16'h67a0;
	ans = 16'h7638;
	#20
	A = 16'hf331;
	B = 16'hf661;
	ans = 16'hf8fd;
	#20
	A = 16'hf133;
	B = 16'hf569;
	ans = 16'hf801;
	#20
	A = 16'hf4dd;
	B = 16'h6cf1;
	ans = 16'hf342;
	#20
	A = 16'hed5e;
	B = 16'hf175;
	ans = 16'hf412;
	#20
	A = 16'h738c;
	B = 16'he41f;
	ans = 16'h7308;
	#20
	A = 16'h73e2;
	B = 16'h724f;
	ans = 16'h7718;
	#20
	A = 16'hef5e;
	B = 16'hf604;
	ans = 16'hf7dc;
	#20
	A = 16'h74bb;
	B = 16'h765f;
	ans = 16'h798d;
	#20
	A = 16'hf72f;
	B = 16'hf672;
	ans = 16'hfad0;
	#20
	A = 16'hf34b;
	B = 16'hf355;
	ans = 16'hf750;
	#20
	A = 16'hf497;
	B = 16'hf4da;
	ans = 16'hf8b8;
	#20
	A = 16'hf462;
	B = 16'h6cf4;
	ans = 16'hf24a;
	#20
	A = 16'h71a3;
	B = 16'h7200;
	ans = 16'h75d2;
	#20
	A = 16'h7652;
	B = 16'h7719;
	ans = 16'h7ab6;
	#20
	A = 16'h6f80;
	B = 16'hf74f;
	ans = 16'hf56f;
	#20
	A = 16'hf72b;
	B = 16'hef59;
	ans = 16'hf881;
	#20
	A = 16'hf3be;
	B = 16'h74db;
	ans = 16'h6be0;
	#20
	A = 16'h702e;
	B = 16'hedb2;
	ans = 16'h6954;
	#20
	A = 16'h73ce;
	B = 16'h750b;
	ans = 16'h7879;
	#20
	A = 16'h7552;
	B = 16'hf593;
	ans = 16'he410;
	#20
	A = 16'hd93f;
	B = 16'h6687;
	ans = 16'h65df;
	#20
	A = 16'h74d8;
	B = 16'h76a1;
	ans = 16'h79bc;
	#20
	A = 16'h72a5;
	B = 16'h6e7e;
	ans = 16'h74f2;
	#20
	A = 16'hefad;
	B = 16'h7749;
	ans = 16'h755e;
	#20
	A = 16'h5ac9;
	B = 16'h6e3d;
	ans = 16'h6e73;
	#20
	A = 16'he2f5;
	B = 16'hf6fc;
	ans = 16'hf734;
	#20
	A = 16'hec88;
	B = 16'h768f;
	ans = 16'h756d;
	#20
	A = 16'he9b2;
	B = 16'h774f;
	ans = 16'h7699;
	#20
	A = 16'h74ed;
	B = 16'h709f;
	ans = 16'h773c;
	#20
	A = 16'hf579;
	B = 16'hedd6;
	ans = 16'hf6ee;
	#20
	A = 16'hf42f;
	B = 16'h75b4;
	ans = 16'h6e14;
	#20
	A = 16'hf59c;
	B = 16'hf316;
	ans = 16'hf894;
	#20
	A = 16'hf4eb;
	B = 16'h75ee;
	ans = 16'h6c0c;
	#20
	A = 16'he6b6;
	B = 16'hf752;
	ans = 16'hf7bd;
	#20
	A = 16'hf5dc;
	B = 16'hf527;
	ans = 16'hf982;
	#20
	A = 16'hf268;
	B = 16'hf39a;
	ans = 16'hf701;
	#20
	A = 16'h5cb0;
	B = 16'h6ce0;
	ans = 16'h6d2b;
	#20
	A = 16'h7562;
	B = 16'h60af;
	ans = 16'h7587;
	#20
	A = 16'he6f3;
	B = 16'h76a4;
	ans = 16'h7635;
	#20
	A = 16'h7397;
	B = 16'hef22;
	ans = 16'h7006;
	#20
	A = 16'h72fd;
	B = 16'h6e92;
	ans = 16'h7523;
	#20
	A = 16'hf365;
	B = 16'hf268;
	ans = 16'hf6e6;
	#20
	A = 16'hf540;
	B = 16'hf6e2;
	ans = 16'hfa11;
	#20
	A = 16'h7681;
	B = 16'hecc1;
	ans = 16'h7551;
	#20
	A = 16'h7626;
	B = 16'hf54a;
	ans = 16'h6ae0;
	#20
	A = 16'hf67d;
	B = 16'h72ae;
	ans = 16'hf24c;
	#20
	A = 16'hf247;
	B = 16'h73e4;
	ans = 16'h6a74;
	#20
	A = 16'hf3dd;
	B = 16'h72a4;
	ans = 16'he8e4;
	#20
	A = 16'h7449;
	B = 16'h67b4;
	ans = 16'h74c4;
	#20
	A = 16'hf6e6;
	B = 16'hed95;
	ans = 16'hf826;
	#20
	A = 16'h75c5;
	B = 16'h7200;
	ans = 16'h7862;
	#20
	A = 16'hf6aa;
	B = 16'h7721;
	ans = 16'h6770;
	#20
	A = 16'h70ce;
	B = 16'h7094;
	ans = 16'h74b1;
	#20
	A = 16'hf226;
	B = 16'h769a;
	ans = 16'h730e;
	#20
	A = 16'hf2a7;
	B = 16'hf558;
	ans = 16'hf856;
	#20
	A = 16'h6c9d;
	B = 16'h7704;
	ans = 16'h7816;
	#20
	A = 16'h6e18;
	B = 16'h648d;
	ans = 16'h6f3b;
	#20
	A = 16'h73bb;
	B = 16'hf09b;
	ans = 16'h6e40;
	#20
	A = 16'hf42a;
	B = 16'hef7b;
	ans = 16'hf609;
	#20
	A = 16'hf6de;
	B = 16'h7487;
	ans = 16'hf0ae;
	#20
	A = 16'h74f7;
	B = 16'h7583;
	ans = 16'h793d;
	#20
	A = 16'h75a7;
	B = 16'h748a;
	ans = 16'h7918;
	#20
	A = 16'heb71;
	B = 16'h59fa;
	ans = 16'heb11;
	#20
	A = 16'h73f4;
	B = 16'hef3e;
	ans = 16'h7055;
	#20
	A = 16'h7736;
	B = 16'h69f3;
	ans = 16'h77f4;
	#20
	A = 16'hf4d3;
	B = 16'hf1d9;
	ans = 16'hf7c0;
	#20
	A = 16'hf02f;
	B = 16'hf6a2;
	ans = 16'hf85d;
	#20
	A = 16'h74a8;
	B = 16'h762b;
	ans = 16'h796a;
	#20
	A = 16'h76f4;
	B = 16'h774d;
	ans = 16'h7b20;
	#20
	A = 16'hea7e;
	B = 16'h7472;
	ans = 16'h7344;
	#20
	A = 16'hf5a6;
	B = 16'h6dbb;
	ans = 16'hf437;
	#20
	A = 16'h703a;
	B = 16'h6929;
	ans = 16'h7184;
	#20
	A = 16'h7503;
	B = 16'hf703;
	ans = 16'hf000;
	#20
	A = 16'he49c;
	B = 16'h774e;
	ans = 16'h7704;
	#20
	A = 16'h7581;
	B = 16'hf583;
	ans = 16'hd000;
	#20
	A = 16'hf11f;
	B = 16'h728e;
	ans = 16'h69bc;
	#20
	A = 16'hef32;
	B = 16'hf2c4;
	ans = 16'hf52e;
	#20
	A = 16'h7666;
	B = 16'h6770;
	ans = 16'h76dd;
	#20
	A = 16'hf1b8;
	B = 16'h7583;
	ans = 16'h714e;
	#20
	A = 16'h7466;
	B = 16'h74c3;
	ans = 16'h7894;
	#20
	A = 16'h73a5;
	B = 16'h7437;
	ans = 16'h7805;
	#20
	A = 16'hf624;
	B = 16'hef1d;
	ans = 16'hf7eb;
	#20
	A = 16'hdd20;
	B = 16'h75f1;
	ans = 16'h75dc;
	#20
	A = 16'hf57a;
	B = 16'hf518;
	ans = 16'hf949;
	#20
	A = 16'h714f;
	B = 16'hf2be;
	ans = 16'he9bc;
	#20
	A = 16'hf6df;
	B = 16'he110;
	ans = 16'hf708;
	#20
	A = 16'hecac;
	B = 16'h758a;
	ans = 16'h745f;
	#20
	A = 16'hf4bf;
	B = 16'hf72a;
	ans = 16'hf9f4;
	#20
	A = 16'h6f29;
	B = 16'hf5dd;
	ans = 16'hf413;
	#20
	A = 16'h62bc;
	B = 16'hf68b;
	ans = 16'hf655;
	#20
	A = 16'hf178;
	B = 16'hf117;
	ans = 16'hf548;
	#20
	A = 16'h74a5;
	B = 16'hf156;
	ans = 16'h6fe8;
	#20
	A = 16'h6e5a;
	B = 16'h767b;
	ans = 16'h7809;
	#20
	A = 16'h7266;
	B = 16'h6c33;
	ans = 16'h7440;
	#20
	A = 16'h74a5;
	B = 16'heaf6;
	ans = 16'h738c;
	#20
	A = 16'hf432;
	B = 16'hf256;
	ans = 16'hf75d;
	#20
	A = 16'hf61f;
	B = 16'hf447;
	ans = 16'hf933;
	#20
	A = 16'h74f8;
	B = 16'h7613;
	ans = 16'h7986;
	#20
	A = 16'h6c7d;
	B = 16'hf553;
	ans = 16'hf434;
	#20
	A = 16'hf069;
	B = 16'h6de5;
	ans = 16'he9da;
	#20
	A = 16'hf506;
	B = 16'h7487;
	ans = 16'he7f0;
	#20
	A = 16'h6894;
	B = 16'h73ae;
	ans = 16'h746a;
	#20
	A = 16'he4d1;
	B = 16'h76bc;
	ans = 16'h766f;
	#20
	A = 16'h73b2;
	B = 16'h69ec;
	ans = 16'h7496;
	#20
	A = 16'h7362;
	B = 16'h75eb;
	ans = 16'h78ce;
	#20
	A = 16'h76dd;
	B = 16'hf572;
	ans = 16'h6dac;
	#20
	A = 16'hf1cf;
	B = 16'hf64b;
	ans = 16'hf899;
	#20
	A = 16'hf099;
	B = 16'hf040;
	ans = 16'hf46c;
	#20
	A = 16'hf4c7;
	B = 16'hf5a8;
	ans = 16'hf938;
	#20
	A = 16'he91a;
	B = 16'h742c;
	ans = 16'h7312;
	#20
	A = 16'h6d4b;
	B = 16'h76cb;
	ans = 16'h780f;
	#20
	A = 16'h72c7;
	B = 16'h7563;
	ans = 16'h7863;
	#20
	A = 16'hf563;
	B = 16'hee55;
	ans = 16'hf6f8;
	#20
	A = 16'h73d1;
	B = 16'h6f26;
	ans = 16'h75b2;
	#20
	A = 16'h73f9;
	B = 16'h693e;
	ans = 16'h74a4;
	#20
	A = 16'h6e5e;
	B = 16'hf627;
	ans = 16'hf490;
	#20
	A = 16'hf30b;
	B = 16'h7107;
	ans = 16'hec08;
	#20
	A = 16'h6a47;
	B = 16'h763e;
	ans = 16'h7707;
	#20
	A = 16'h67da;
	B = 16'hf65e;
	ans = 16'hf5e0;
	#20
	A = 16'h6cb8;
	B = 16'hefb0;
	ans = 16'he9f0;
	#20
	A = 16'h72f7;
	B = 16'h68a0;
	ans = 16'h7410;
	#20
	A = 16'hdaf7;
	B = 16'hed24;
	ans = 16'hed5c;
	#20
	A = 16'h6976;
	B = 16'hf59f;
	ans = 16'hf4f0;
	#20
	A = 16'heb5e;
	B = 16'h76e3;
	ans = 16'h75f7;
	#20
	A = 16'h67a7;
	B = 16'heb29;
	ans = 16'he6ab;
	#20
	A = 16'hf041;
	B = 16'h72e8;
	ans = 16'h6d4e;
	#20
	A = 16'h7073;
	B = 16'hf250;
	ans = 16'heb74;
	#20
	A = 16'h6869;
	B = 16'h7098;
	ans = 16'h71b2;
	#20
	A = 16'he884;
	B = 16'heea8;
	ans = 16'hf075;
	#20
	A = 16'h7311;
	B = 16'hea81;
	ans = 16'h7171;
	#20
	A = 16'hef66;
	B = 16'h7487;
	ans = 16'h715b;
	#20
	A = 16'hf434;
	B = 16'hf20b;
	ans = 16'hf73a;
	#20
	A = 16'h70f9;
	B = 16'hf3ef;
	ans = 16'hedec;
	#20
	A = 16'hf4c1;
	B = 16'hf3e5;
	ans = 16'hf85a;
	#20
	A = 16'hf284;
	B = 16'hf53c;
	ans = 16'hf83f;
	#20
	A = 16'h6caa;
	B = 16'hf0a4;
	ans = 16'hec9e;
	#20
	A = 16'h74fc;
	B = 16'h764d;
	ans = 16'h79a4;
	#20
	A = 16'hf11e;
	B = 16'h773d;
	ans = 16'h74ae;
	#20
	A = 16'h6d25;
	B = 16'hf58f;
	ans = 16'hf446;
	#20
	A = 16'hf660;
	B = 16'h7735;
	ans = 16'h6aa8;
	#20
	A = 16'hed8a;
	B = 16'h765d;
	ans = 16'h74fa;
	#20
	A = 16'h6d3e;
	B = 16'hea0e;
	ans = 16'h686e;
	#20
	A = 16'hf4d6;
	B = 16'h75ba;
	ans = 16'h6b20;
	#20
	A = 16'hed06;
	B = 16'h7321;
	ans = 16'h709e;
	#20
	A = 16'hf150;
	B = 16'hf4f8;
	ans = 16'hf7a0;
	#20
	A = 16'h745c;
	B = 16'h6d37;
	ans = 16'h75aa;
	#20
	A = 16'hf545;
	B = 16'hecd7;
	ans = 16'hf67b;
	#20
	A = 16'h7419;
	B = 16'h740a;
	ans = 16'h7812;
	#20
	A = 16'h7741;
	B = 16'hf6ef;
	ans = 16'h6520;
	#20
	A = 16'hf5ce;
	B = 16'h741c;
	ans = 16'heec8;
	#20
	A = 16'h6db1;
	B = 16'h72ec;
	ans = 16'h74e2;
	#20
	A = 16'hf476;
	B = 16'heb15;
	ans = 16'hf559;
	#20
	A = 16'h774e;
	B = 16'h75f7;
	ans = 16'h7aa2;
	#20
	A = 16'hf62b;
	B = 16'h685b;
	ans = 16'hf5a0;
	#20
	A = 16'hf20d;
	B = 16'h76e4;
	ans = 16'h73bb;
	#20
	A = 16'hf072;
	B = 16'h7385;
	ans = 16'h6e26;
	#20
	A = 16'h7620;
	B = 16'h6d5e;
	ans = 16'h7778;
	#20
	A = 16'hf649;
	B = 16'hf703;
	ans = 16'hfaa6;
	#20
	A = 16'h6a93;
	B = 16'h751a;
	ans = 16'h75ec;
	#20
	A = 16'hf183;
	B = 16'hed47;
	ans = 16'hf413;
	#20
	A = 16'h7064;
	B = 16'hf08b;
	ans = 16'hdce0;
	#20
	A = 16'he663;
	B = 16'hf588;
	ans = 16'hf5ee;
	#20
	A = 16'h73be;
	B = 16'hf44f;
	ans = 16'he700;
	#20
	A = 16'hf71c;
	B = 16'h7448;
	ans = 16'hf1a8;
	#20
	A = 16'hf6a2;
	B = 16'h6df8;
	ans = 16'hf524;
	#20
	A = 16'h717d;
	B = 16'hf704;
	ans = 16'hf446;
	#20
	A = 16'h6df4;
	B = 16'hf3c2;
	ans = 16'hf0c8;
	#20
	A = 16'h72fc;
	B = 16'h6e30;
	ans = 16'h750a;
	#20
	A = 16'heecf;
	B = 16'hec89;
	ans = 16'hf1ac;
	#20
	A = 16'hf6c2;
	B = 16'h745a;
	ans = 16'hf0d0;
	#20
	A = 16'hf3a6;
	B = 16'h6ada;
	ans = 16'hf1f0;
	#20
	A = 16'hf286;
	B = 16'hf742;
	ans = 16'hf942;
	#20
	A = 16'hf58e;
	B = 16'heeeb;
	ans = 16'hf749;
	#20
	A = 16'hf44c;
	B = 16'hf637;
	ans = 16'hf942;
	#20
	A = 16'hf5e8;
	B = 16'hf537;
	ans = 16'hf990;
	#20
	A = 16'h7212;
	B = 16'h72dc;
	ans = 16'h7677;
	#20
	A = 16'hf4d8;
	B = 16'hf540;
	ans = 16'hf90c;
	#20
	A = 16'h74a2;
	B = 16'hf6fd;
	ans = 16'hf0b6;
	#20
	A = 16'h75d2;
	B = 16'h7543;
	ans = 16'h798a;
	#20
	A = 16'h7424;
	B = 16'hf539;
	ans = 16'hec54;
	#20
	A = 16'h765b;
	B = 16'hf5d6;
	ans = 16'h6828;
	#20
	A = 16'hf1a6;
	B = 16'hf73b;
	ans = 16'hf907;
	#20
	A = 16'h7342;
	B = 16'h6927;
	ans = 16'h7446;
	#20
	A = 16'hdbed;
	B = 16'h76a1;
	ans = 16'h7691;
	#20
	A = 16'h6f29;
	B = 16'h6ef2;
	ans = 16'h730e;
	#20
	A = 16'h75d8;
	B = 16'h764f;
	ans = 16'h7a14;
	#20
	A = 16'hf48a;
	B = 16'hf687;
	ans = 16'hf988;
	#20
	A = 16'h74b3;
	B = 16'h7342;
	ans = 16'h782a;
	#20
	A = 16'h716f;
	B = 16'he949;
	ans = 16'h701d;
	#20
	A = 16'hf498;
	B = 16'hf401;
	ans = 16'hf84c;
	#20
	A = 16'hec95;
	B = 16'hea92;
	ans = 16'hefde;
	#20
	A = 16'hf47f;
	B = 16'hf25a;
	ans = 16'hf7ac;
	#20
	A = 16'hf520;
	B = 16'h74a0;
	ans = 16'he800;
	#20
	A = 16'h7339;
	B = 16'hf728;
	ans = 16'hf317;
	#20
	A = 16'hf2f5;
	B = 16'h74f8;
	ans = 16'h6df6;
	#20
	A = 16'hf010;
	B = 16'hf5d3;
	ans = 16'hf7db;
	#20
	A = 16'he6d8;
	B = 16'hf65a;
	ans = 16'hf6c8;
	#20
	A = 16'heda1;
	B = 16'h6d2d;
	ans = 16'hdf40;
	#20
	A = 16'h7630;
	B = 16'h7008;
	ans = 16'h781a;
	#20
	A = 16'h75cd;
	B = 16'hedcc;
	ans = 16'h745a;
	#20
	A = 16'h7654;
	B = 16'h76a5;
	ans = 16'h7a7c;
	#20
	A = 16'h6f05;
	B = 16'hf5fb;
	ans = 16'hf43a;
	#20
	A = 16'h7155;
	B = 16'hf634;
	ans = 16'hf313;
	#20
	A = 16'hf144;
	B = 16'hf5c6;
	ans = 16'hf834;
	#20
	A = 16'heac7;
	B = 16'h68ae;
	ans = 16'he432;
	#20
	A = 16'h7041;
	B = 16'h768e;
	ans = 16'h7857;
	#20
	A = 16'h729a;
	B = 16'hf27d;
	ans = 16'h5b40;
	#20
	A = 16'h7605;
	B = 16'hf500;
	ans = 16'h6c14;
	#20
	A = 16'hf603;
	B = 16'hf215;
	ans = 16'hf887;
	#20
	A = 16'hef2a;
	B = 16'hf109;
	ans = 16'hf44f;
	#20
	A = 16'hf742;
	B = 16'hf439;
	ans = 16'hf9be;
	#20
	A = 16'hf32b;
	B = 16'hf739;
	ans = 16'hf967;
	#20
	A = 16'h7570;
	B = 16'h67e0;
	ans = 16'h75ee;
	#20
	A = 16'h6fac;
	B = 16'h736d;
	ans = 16'h75a2;
	#20
	A = 16'hf441;
	B = 16'h6cd2;
	ans = 16'hf219;
	#20
	A = 16'hefa9;
	B = 16'h6ea0;
	ans = 16'he424;
	#20
	A = 16'h76c5;
	B = 16'h6f3a;
	ans = 16'h784a;
	#20
	A = 16'hf1ce;
	B = 16'hf6cc;
	ans = 16'hf8da;
	#20
	A = 16'hf128;
	B = 16'hf673;
	ans = 16'hf884;
	#20
	A = 16'h67cf;
	B = 16'h76c6;
	ans = 16'h7743;
	#20
	A = 16'hee76;
	B = 16'h7027;
	ans = 16'h6760;
	#20
	A = 16'h732c;
	B = 16'h7742;
	ans = 16'h796c;
	#20
	A = 16'h7106;
	B = 16'hf3c3;
	ans = 16'hed7a;
	#20
	A = 16'hf07f;
	B = 16'hf075;
	ans = 16'hf47a;
	#20
	A = 16'h5f47;
	B = 16'h738e;
	ans = 16'h73c8;
	#20
	A = 16'h7425;
	B = 16'hf4df;
	ans = 16'he9d0;
	#20
	A = 16'hf12c;
	B = 16'h6a5a;
	ans = 16'hef2b;
	#20
	A = 16'hf213;
	B = 16'hf155;
	ans = 16'hf5b4;
	#20
	A = 16'h7693;
	B = 16'hf394;
	ans = 16'h7192;
	#20
	A = 16'he463;
	B = 16'hf1fb;
	ans = 16'hf287;
	#20
	A = 16'hf6b4;
	B = 16'hf535;
	ans = 16'hf9f4;
	#20
	A = 16'h72bb;
	B = 16'h730d;
	ans = 16'h76e4;
	#20
	A = 16'h729f;
	B = 16'h7502;
	ans = 16'h7829;
	#20
	A = 16'h6c17;
	B = 16'heb92;
	ans = 16'h5ce0;
	#20
	A = 16'h59d8;
	B = 16'he051;
	ans = 16'hddb6;
	#20
	A = 16'hf59f;
	B = 16'h6b23;
	ans = 16'hf4bb;
	#20
	A = 16'hee17;
	B = 16'he5ef;
	ans = 16'hef93;
	#20
	A = 16'hf6d8;
	B = 16'hf069;
	ans = 16'hf886;
	#20
	A = 16'hf67e;
	B = 16'h74cc;
	ans = 16'heec8;
	#20
	A = 16'h712b;
	B = 16'hf512;
	ans = 16'hf0f9;
	#20
	A = 16'h65e2;
	B = 16'h728f;
	ans = 16'h734b;
	#20
	A = 16'h7648;
	B = 16'h7720;
	ans = 16'h7ab4;
	#20
	A = 16'hf4f1;
	B = 16'h7636;
	ans = 16'h6d14;
	#20
	A = 16'hf438;
	B = 16'h6574;
	ans = 16'hf3c2;
	#20
	A = 16'h74ff;
	B = 16'hf34e;
	ans = 16'h6d60;
	#20
	A = 16'hf58d;
	B = 16'hf5f8;
	ans = 16'hf9c2;
	#20
	A = 16'h74fb;
	B = 16'hf716;
	ans = 16'hf036;
	#20
	A = 16'hf409;
	B = 16'h711b;
	ans = 16'hedee;
	#20
	A = 16'hf5bb;
	B = 16'h7280;
	ans = 16'hf0f6;
	#20
	A = 16'h7632;
	B = 16'h6ec5;
	ans = 16'h77e3;
	#20
	A = 16'h6d7c;
	B = 16'h7430;
	ans = 16'h758f;
	#20
	A = 16'h6e1a;
	B = 16'hf6db;
	ans = 16'hf554;
	#20
	A = 16'hf6d6;
	B = 16'hf4e4;
	ans = 16'hf9dd;
	#20
	A = 16'hf15b;
	B = 16'h6ad3;
	ans = 16'hef4c;
	#20
	A = 16'hf630;
	B = 16'h74b4;
	ans = 16'hedf0;
	#20
	A = 16'hf728;
	B = 16'hf196;
	ans = 16'hf8fa;
	#20
	A = 16'hf3c1;
	B = 16'h774a;
	ans = 16'h72d3;
	#20
	A = 16'h7595;
	B = 16'h717c;
	ans = 16'h782a;
	#20
	A = 16'hf5e8;
	B = 16'h768d;
	ans = 16'h6928;
	#20
	A = 16'h7146;
	B = 16'hf431;
	ans = 16'hee38;
	#20
	A = 16'he34d;
	B = 16'hf099;
	ans = 16'hf10e;
	#20
	A = 16'hf04b;
	B = 16'hf713;
	ans = 16'hf89c;
	#20
	A = 16'h75c7;
	B = 16'hf139;
	ans = 16'h7255;
	#20
	A = 16'h7612;
	B = 16'hf22c;
	ans = 16'h71f8;
	#20
	A = 16'h76cd;
	B = 16'h6faa;
	ans = 16'h785c;
	#20
	A = 16'h7315;
	B = 16'h76d6;
	ans = 16'h7930;
	#20
	A = 16'h709d;
	B = 16'h6f97;
	ans = 16'h7434;
	#20
	A = 16'h704d;
	B = 16'heafb;
	ans = 16'h6d1c;
	#20
	A = 16'h68c9;
	B = 16'h74a4;
	ans = 16'h753d;
	#20
	A = 16'h7742;
	B = 16'h7668;
	ans = 16'h7ad5;
	#20
	A = 16'h7457;
	B = 16'he930;
	ans = 16'h7362;
	#20
	A = 16'hf659;
	B = 16'h6c59;
	ans = 16'hf543;
	#20
	A = 16'hf6a3;
	B = 16'hebcc;
	ans = 16'hf79c;
	#20
	A = 16'hdc6c;
	B = 16'h7028;
	ans = 16'h7005;
	#20
	A = 16'hf4da;
	B = 16'hee32;
	ans = 16'hf666;
	#20
	A = 16'hefc8;
	B = 16'h6fb8;
	ans = 16'hd400;
	#20
	A = 16'h6858;
	B = 16'h76e2;
	ans = 16'h776d;
	#20
	A = 16'h74ce;
	B = 16'h742e;
	ans = 16'h787e;
	#20
	A = 16'h7473;
	B = 16'h7745;
	ans = 16'h79dc;
	#20
	A = 16'h75b8;
	B = 16'hec83;
	ans = 16'h7497;
	#20
	A = 16'h6dbf;
	B = 16'heff8;
	ans = 16'he872;
	#20
	A = 16'hf173;
	B = 16'he9b2;
	ans = 16'hf2e0;
	#20
	A = 16'hf558;
	B = 16'hf2cd;
	ans = 16'hf85f;
	#20
	A = 16'hf616;
	B = 16'h7445;
	ans = 16'hef44;
	#20
	A = 16'h73b4;
	B = 16'hec57;
	ans = 16'h7188;
	#20
	A = 16'hf5c1;
	B = 16'hf702;
	ans = 16'hfa62;
	#20
	A = 16'hf063;
	B = 16'hf39e;
	ans = 16'hf600;
	#20
	A = 16'hf5b0;
	B = 16'h746b;
	ans = 16'hed14;
	#20
	A = 16'h769f;
	B = 16'h71ad;
	ans = 16'h78bb;
	#20
	A = 16'hf1eb;
	B = 16'h71fb;
	ans = 16'h5800;
	#20
	A = 16'h6f28;
	B = 16'h75f4;
	ans = 16'h77be;
	#20
	A = 16'h76f9;
	B = 16'hf478;
	ans = 16'h7102;
	#20
	A = 16'hef4f;
	B = 16'hf48e;
	ans = 16'hf662;
	#20
	A = 16'hf527;
	B = 16'hf1f7;
	ans = 16'hf811;
	#20
	A = 16'h75c8;
	B = 16'hf2ae;
	ans = 16'h70e2;
	#20
	A = 16'he96a;
	B = 16'h654d;
	ans = 16'he587;
	#20
	A = 16'hf635;
	B = 16'hf60f;
	ans = 16'hfa22;
	#20
	A = 16'hf267;
	B = 16'h741f;
	ans = 16'h6b5c;
	#20
	A = 16'hf629;
	B = 16'hdd5a;
	ans = 16'hf63e;
	#20
	A = 16'hf6a8;
	B = 16'h74dd;
	ans = 16'hef2c;
	#20
	A = 16'h7094;
	B = 16'h7490;
	ans = 16'h76da;
	#20
	A = 16'hf18b;
	B = 16'hf20e;
	ans = 16'hf5cc;
	#20
	A = 16'h75e5;
	B = 16'hed69;
	ans = 16'h748b;
	#20
	A = 16'h7233;
	B = 16'h6cd1;
	ans = 16'h744e;
	#20
	A = 16'hefe5;
	B = 16'hf242;
	ans = 16'hf51a;
	#20
	A = 16'h729c;
	B = 16'hf39e;
	ans = 16'he808;
	#20
	A = 16'hf6ab;
	B = 16'h7684;
	ans = 16'he0e0;
	#20
	A = 16'he9d6;
	B = 16'hf459;
	ans = 16'hf514;
	#20
	A = 16'hf4f1;
	B = 16'h7646;
	ans = 16'h6d54;
	#20
	A = 16'hf5bf;
	B = 16'hf285;
	ans = 16'hf881;
	#20
	A = 16'he289;
	B = 16'hf6c0;
	ans = 16'hf6f4;
	#20
	A = 16'hf532;
	B = 16'hf56b;
	ans = 16'hf94e;
	#20
	A = 16'hd1b4;
	B = 16'h6585;
	ans = 16'h6557;
	#20
	A = 16'hf62d;
	B = 16'h76b2;
	ans = 16'h6828;
	#20
	A = 16'h6fc0;
	B = 16'h7323;
	ans = 16'h7582;
	#20
	A = 16'hf4af;
	B = 16'he97b;
	ans = 16'hf55e;
	#20
	A = 16'h7610;
	B = 16'hf275;
	ans = 16'h71ab;
	#20
	A = 16'hf395;
	B = 16'hf2ea;
	ans = 16'hf740;
	#20
	A = 16'h7454;
	B = 16'hecfe;
	ans = 16'h7229;
	#20
	A = 16'hf23f;
	B = 16'hecf4;
	ans = 16'hf45c;
	#20
	A = 16'h6f8f;
	B = 16'h76c8;
	ans = 16'h7856;
	#20
	A = 16'hf64a;
	B = 16'h72f4;
	ans = 16'hf1a0;
	#20
	A = 16'hf5b1;
	B = 16'h6ebd;
	ans = 16'hf402;
	#20
	A = 16'hebdd;
	B = 16'hf6b7;
	ans = 16'hf7b3;
	#20
	A = 16'h7446;
	B = 16'hed97;
	ans = 16'h71c0;
	#20
	A = 16'hec8a;
	B = 16'hf3cd;
	ans = 16'hf509;
	#20
	A = 16'h7189;
	B = 16'h76f7;
	ans = 16'h78de;
	#20
	A = 16'h75e5;
	B = 16'h75ce;
	ans = 16'h79da;
	#20
	A = 16'hf277;
	B = 16'h75da;
	ans = 16'h713d;
	#20
	A = 16'hf22d;
	B = 16'h7619;
	ans = 16'h7205;
	#20
	A = 16'h71e9;
	B = 16'h75a4;
	ans = 16'h784c;
	#20
	A = 16'h7534;
	B = 16'h7666;
	ans = 16'h79cd;
	#20
	A = 16'he8ee;
	B = 16'hf4bc;
	ans = 16'hf55a;
	#20
	A = 16'h74dd;
	B = 16'hf690;
	ans = 16'heecc;
	#20
	A = 16'he443;
	B = 16'head5;
	ans = 16'hec7b;
	#20
	A = 16'h6d8c;
	B = 16'h72e5;
	ans = 16'h74d6;
	#20
	A = 16'h75fa;
	B = 16'h7201;
	ans = 16'h787d;
	#20
	A = 16'h761f;
	B = 16'h7085;
	ans = 16'h7831;
	#20
	A = 16'hf5d9;
	B = 16'h64b3;
	ans = 16'hf58e;
	#20
	A = 16'hf007;
	B = 16'hf373;
	ans = 16'hf5bd;
	#20
	A = 16'h76a9;
	B = 16'he253;
	ans = 16'h7676;
	#20
	A = 16'hf087;
	B = 16'h758f;
	ans = 16'h7297;
	#20
	A = 16'h758b;
	B = 16'hf0ea;
	ans = 16'h722c;
	#20
	A = 16'he353;
	B = 16'he62b;
	ans = 16'he8ea;
	#20
	A = 16'h7504;
	B = 16'hf6eb;
	ans = 16'hef9c;
	#20
	A = 16'hf6e8;
	B = 16'hf6bf;
	ans = 16'hfad4;
	#20
	A = 16'hf570;
	B = 16'h6e05;
	ans = 16'hf3de;
	#20
	A = 16'hf480;
	B = 16'hec0c;
	ans = 16'hf583;
	#20
	A = 16'h7445;
	B = 16'h766c;
	ans = 16'h7958;
	#20
	A = 16'hf146;
	B = 16'hf0ab;
	ans = 16'hf4f8;
	#20
	A = 16'h75a7;
	B = 16'h75b4;
	ans = 16'h79ae;
	#20
	A = 16'h7184;
	B = 16'h7672;
	ans = 16'h789a;
	#20
	A = 16'hf51f;
	B = 16'h721a;
	ans = 16'hf024;
	#20
	A = 16'hdc4f;
	B = 16'hf0b2;
	ans = 16'hf0d4;
	#20
	A = 16'h6784;
	B = 16'hf5cf;
	ans = 16'hf557;
	#20
	A = 16'h5ae0;
	B = 16'he5af;
	ans = 16'he4d3;
	#20
	A = 16'h747d;
	B = 16'h76ff;
	ans = 16'h79be;
	#20
	A = 16'hea3b;
	B = 16'h7520;
	ans = 16'h7459;
	#20
	A = 16'hf6ad;
	B = 16'h72d5;
	ans = 16'hf285;
	#20
	A = 16'he7a5;
	B = 16'hf552;
	ans = 16'hf5cc;
	#20
	A = 16'hf64f;
	B = 16'hf187;
	ans = 16'hf889;
	#20
	A = 16'h6d59;
	B = 16'he8ef;
	ans = 16'h69c3;
	#20
	A = 16'h721d;
	B = 16'hf229;
	ans = 16'hd600;
	#20
	A = 16'h7442;
	B = 16'hf6ba;
	ans = 16'hf0f0;
	#20
	A = 16'h731a;
	B = 16'hf3cb;
	ans = 16'he588;
	#20
	A = 16'h6d69;
	B = 16'hf5a8;
	ans = 16'hf44e;
	#20
	A = 16'h729b;
	B = 16'hed00;
	ans = 16'h701b;
	#20
	A = 16'hf399;
	B = 16'h76d3;
	ans = 16'h720d;
	#20
	A = 16'hf6f6;
	B = 16'h61d8;
	ans = 16'hf6c7;
	#20
	A = 16'hf22e;
	B = 16'h6ce3;
	ans = 16'hef79;
	#20
	A = 16'hecef;
	B = 16'hf6c8;
	ans = 16'hf802;
	#20
	A = 16'h6e28;
	B = 16'hf1e5;
	ans = 16'heda2;
	#20
	A = 16'h6d5a;
	B = 16'hf627;
	ans = 16'hf4d0;
	#20
	A = 16'he8c6;
	B = 16'hf612;
	ans = 16'hf6ab;
	#20
	A = 16'h707d;
	B = 16'h603b;
	ans = 16'h70c1;
	#20
	A = 16'h7250;
	B = 16'hecb5;
	ans = 16'h6feb;
	#20
	A = 16'h75db;
	B = 16'h769c;
	ans = 16'h7a3c;
	#20
	A = 16'h76fc;
	B = 16'h742d;
	ans = 16'h7994;
	#20
	A = 16'hf529;
	B = 16'hf503;
	ans = 16'hf916;
	#20
	A = 16'hee60;
	B = 16'h744e;
	ans = 16'h716c;
	#20
	A = 16'hf4d5;
	B = 16'hf183;
	ans = 16'hf796;
	#20
	A = 16'h7664;
	B = 16'h6675;
	ans = 16'h76cb;
	#20
	A = 16'hf4cc;
	B = 16'hf530;
	ans = 16'hf8fe;
	#20
	A = 16'h6ef3;
	B = 16'h62bf;
	ans = 16'h6fcb;
	#20
	A = 16'he3cc;
	B = 16'hf5d0;
	ans = 16'hf60e;
	#20
	A = 16'he62b;
	B = 16'hf5c4;
	ans = 16'hf627;
	#20
	A = 16'h752a;
	B = 16'hf597;
	ans = 16'he6d0;
	#20
	A = 16'h6d2d;
	B = 16'he54f;
	ans = 16'h6bb2;
	#20
	A = 16'h772b;
	B = 16'hf4cf;
	ans = 16'h70b8;
	#20
	A = 16'h772d;
	B = 16'h6f52;
	ans = 16'h7881;
	#20
	A = 16'hecd1;
	B = 16'he590;
	ans = 16'hee35;
	#20
	A = 16'hf4f6;
	B = 16'h7552;
	ans = 16'h65c0;
	#20
	A = 16'hf73f;
	B = 16'h640a;
	ans = 16'hf6fe;
	#20
	A = 16'he8dc;
	B = 16'h61de;
	ans = 16'he6c9;
	#20
	A = 16'hf501;
	B = 16'h721f;
	ans = 16'hefc6;
	#20
	A = 16'hde4b;
	B = 16'h74e2;
	ans = 16'h74c9;
	#20
	A = 16'hf6c1;
	B = 16'hf474;
	ans = 16'hf99a;
	#20
	A = 16'h6e5c;
	B = 16'hf2dc;
	ans = 16'hef5c;
	#20
	A = 16'hf741;
	B = 16'hebfd;
	ans = 16'hf820;
	#20
	A = 16'hf343;
	B = 16'hf33a;
	ans = 16'hf73e;
	#20
	A = 16'hf3a1;
	B = 16'h70d1;
	ans = 16'heda0;
	#20
	A = 16'h652d;
	B = 16'h75f2;
	ans = 16'h7645;
	#20
	A = 16'hf1b1;
	B = 16'hf3e2;
	ans = 16'hf6ca;
	#20
	A = 16'h73a4;
	B = 16'hec56;
	ans = 16'h7179;
	#20
	A = 16'hf513;
	B = 16'hf66e;
	ans = 16'hf9c0;
	#20
	A = 16'h659e;
	B = 16'hf538;
	ans = 16'hf4de;
	#20
	A = 16'hed73;
	B = 16'h7434;
	ans = 16'h71ae;
	#20
	A = 16'hf67a;
	B = 16'hf3cd;
	ans = 16'hf930;
	#20
	A = 16'h75d4;
	B = 16'h6c69;
	ans = 16'h76ee;
	#20
	A = 16'h74f6;
	B = 16'h767a;
	ans = 16'h79b8;
	#20
	A = 16'hf6eb;
	B = 16'h76b4;
	ans = 16'he2e0;
	#20
	A = 16'hf37a;
	B = 16'hf487;
	ans = 16'hf822;
	#20
	A = 16'he212;
	B = 16'hf70e;
	ans = 16'hf73f;
	#20
	A = 16'heda1;
	B = 16'h752d;
	ans = 16'h738a;
	#20
	A = 16'h7411;
	B = 16'hf71f;
	ans = 16'hf21c;
	#20
	A = 16'hef39;
	B = 16'h69a5;
	ans = 16'hec66;
	#20
	A = 16'heea4;
	B = 16'h76a3;
	ans = 16'h74fa;
	#20
	A = 16'h72ae;
	B = 16'h585c;
	ans = 16'h72bf;
	#20
	A = 16'hf4bc;
	B = 16'h766a;
	ans = 16'h6eb8;
	#20
	A = 16'hf6e6;
	B = 16'h733e;
	ans = 16'hf28e;
	#20
	A = 16'hf0f1;
	B = 16'hf30e;
	ans = 16'hf600;
	#20
	A = 16'hecca;
	B = 16'h72f0;
	ans = 16'h708b;
	#20
	A = 16'h747d;
	B = 16'hed7d;
	ans = 16'h723c;
	#20
	A = 16'hf68f;
	B = 16'h753a;
	ans = 16'hed54;
	#20
	A = 16'heaf7;
	B = 16'hf5c0;
	ans = 16'hf69f;
	#20
	A = 16'h7724;
	B = 16'hf648;
	ans = 16'h6ae0;
	#20
	A = 16'hf586;
	B = 16'h6eed;
	ans = 16'hf396;
	#20
	A = 16'h683e;
	B = 16'h712b;
	ans = 16'h723a;
	#20
	A = 16'he8d4;
	B = 16'h6fc1;
	ans = 16'h6d57;
	#20
	A = 16'h724f;
	B = 16'h7101;
	ans = 16'h75a8;
	#20
	A = 16'heb46;
	B = 16'hf53d;
	ans = 16'hf626;
	#20
	A = 16'hf530;
	B = 16'hf583;
	ans = 16'hf95a;
	#20
	A = 16'h6cb1;
	B = 16'hf362;
	ans = 16'hf10a;
	#20
	A = 16'h737e;
	B = 16'h76e1;
	ans = 16'h7950;
	#20
	A = 16'hecb1;
	B = 16'h7578;
	ans = 16'h744c;
	#20
	A = 16'hf56a;
	B = 16'h75d7;
	ans = 16'h66d0;
	#20
	A = 16'h6c9f;
	B = 16'hf4d6;
	ans = 16'hf35c;
	#20
	A = 16'hf353;
	B = 16'h7620;
	ans = 16'h70ed;
	#20
	A = 16'hec00;
	B = 16'he894;
	ans = 16'hee4a;
	#20
	A = 16'hf6ba;
	B = 16'h7576;
	ans = 16'hed10;
	#20
	A = 16'h75b6;
	B = 16'heabf;
	ans = 16'h74de;
	#20
	A = 16'h7108;
	B = 16'hee93;
	ans = 16'h6afa;
	#20
	A = 16'hf26f;
	B = 16'h7459;
	ans = 16'h6c86;
	#20
	A = 16'hddd7;
	B = 16'hed96;
	ans = 16'hedf3;
	#20
	A = 16'hef15;
	B = 16'h6e7a;
	ans = 16'he0d8;
	#20
	A = 16'hed48;
	B = 16'hee12;
	ans = 16'hf1ad;
	#20
	A = 16'hf1c2;
	B = 16'h60fa;
	ans = 16'hf172;
	#20
	A = 16'hea8b;
	B = 16'h74df;
	ans = 16'h740e;
	#20
	A = 16'hf5d9;
	B = 16'h70e1;
	ans = 16'hf2d1;
	#20
	A = 16'hee42;
	B = 16'hf0c5;
	ans = 16'hf3e6;
	#20
	A = 16'hf578;
	B = 16'h750e;
	ans = 16'he6a0;
	#20
	A = 16'hf196;
	B = 16'h7652;
	ans = 16'h730e;
	#20
	A = 16'he431;
	B = 16'h7303;
	ans = 16'h727d;
	#20
	A = 16'h768c;
	B = 16'h6b61;
	ans = 16'h7778;
	#20
	A = 16'hf03c;
	B = 16'hf58b;
	ans = 16'hf7a9;
	#20
	A = 16'h73cb;
	B = 16'h763c;
	ans = 16'h7911;
	#20
	A = 16'hf50d;
	B = 16'hf71c;
	ans = 16'hfa14;
	#20
	A = 16'hf620;
	B = 16'h6faa;
	ans = 16'hf436;
	#20
	A = 16'hf1f8;
	B = 16'h7130;
	ans = 16'he640;
	#20
	A = 16'hf481;
	B = 16'hf4ec;
	ans = 16'hf8b6;
	#20
	A = 16'h6c1d;
	B = 16'h7458;
	ans = 16'h755f;
	#20
	A = 16'h756b;
	B = 16'hf461;
	ans = 16'h6c28;
	#20
	A = 16'hf4e0;
	B = 16'hf6df;
	ans = 16'hf9e0;
	#20
	A = 16'hf22b;
	B = 16'hf6d0;
	ans = 16'hf8f3;
	#20
	A = 16'hed2e;
	B = 16'h746f;
	ans = 16'h7247;
	#20
	A = 16'hf588;
	B = 16'hecd0;
	ans = 16'hf6bc;
	#20
	A = 16'hf2af;
	B = 16'hf219;
	ans = 16'hf664;
	#20
	A = 16'hf693;
	B = 16'hf493;
	ans = 16'hf993;
	#20
	A = 16'h6b9e;
	B = 16'h6eab;
	ans = 16'h713d;
	#20
	A = 16'h7661;
	B = 16'hf49d;
	ans = 16'h6f10;
	#20
	A = 16'h7110;
	B = 16'h7248;
	ans = 16'h75ac;
	#20
	A = 16'hf5ab;
	B = 16'h60f9;
	ans = 16'hf583;
	#20
	A = 16'hf55e;
	B = 16'hf736;
	ans = 16'hfa4a;
	#20
	A = 16'hf131;
	B = 16'hf4b5;
	ans = 16'hf74e;
	#20
	A = 16'h5ebc;
	B = 16'h679a;
	ans = 16'h68a4;
	#20
	A = 16'hf18c;
	B = 16'h76a6;
	ans = 16'h73c0;
	#20
	A = 16'heed8;
	B = 16'h75de;
	ans = 16'h7428;
	#20
	A = 16'h73f9;
	B = 16'hf608;
	ans = 16'hf017;
	#20
	A = 16'hf431;
	B = 16'hdc83;
	ans = 16'hf443;
	#20
	A = 16'hf4d7;
	B = 16'h6dc2;
	ans = 16'hf2cd;
	#20
	A = 16'h7294;
	B = 16'hee8b;
	ans = 16'h6e9d;
	#20
	A = 16'hf1be;
	B = 16'hf05d;
	ans = 16'hf50e;
	#20
	A = 16'h7418;
	B = 16'h76f5;
	ans = 16'h7986;
	#20
	A = 16'hf6db;
	B = 16'hf378;
	ans = 16'hf94c;
	#20
	A = 16'h70bc;
	B = 16'h7110;
	ans = 16'h74e6;
	#20
	A = 16'h75e6;
	B = 16'he912;
	ans = 16'h7544;
	#20
	A = 16'h6f02;
	B = 16'h7610;
	ans = 16'h77d0;
	#20
	A = 16'hf708;
	B = 16'h70f6;
	ans = 16'hf48d;
	#20
	A = 16'h7401;
	B = 16'hf1a3;
	ans = 16'h6cbe;
	#20
	A = 16'hf687;
	B = 16'hf0c0;
	ans = 16'hf874;
	#20
	A = 16'he80f;
	B = 16'h6985;
	ans = 16'h61d8;
	#20
	A = 16'h72f6;
	B = 16'h726b;
	ans = 16'h76b0;
	#20
	A = 16'he889;
	B = 16'h7455;
	ans = 16'h7388;
	#20
	A = 16'hef95;
	B = 16'hf742;
	ans = 16'hf894;
	#20
	A = 16'h7694;
	B = 16'hf0da;
	ans = 16'h7427;
	#20
	A = 16'hf6bb;
	B = 16'h770a;
	ans = 16'h64f0;
	#20
	A = 16'h75d4;
	B = 16'he817;
	ans = 16'h7551;
	#20
	A = 16'hf2b3;
	B = 16'h74ab;
	ans = 16'h6d46;
	#20
	A = 16'h68a2;
	B = 16'hf0e2;
	ans = 16'hef73;
	#20
	A = 16'h7026;
	B = 16'h713e;
	ans = 16'h74b2;
	#20
	A = 16'h6df8;
	B = 16'hf1b7;
	ans = 16'hed76;
	#20
	A = 16'h718c;
	B = 16'hf1a1;
	ans = 16'hd940;
	#20
	A = 16'he9a2;
	B = 16'hefc2;
	ans = 16'hf14a;
	#20
	A = 16'hf14a;
	B = 16'h705d;
	ans = 16'he768;
	#20
	A = 16'h7229;
	B = 16'heedc;
	ans = 16'h6d76;
	#20
	A = 16'h74e1;
	B = 16'h6ac4;
	ans = 16'h75ba;
	#20
	A = 16'h7603;
	B = 16'h76e5;
	ans = 16'h7a74;
	#20
	A = 16'h7701;
	B = 16'h7247;
	ans = 16'h7912;
	#20
	A = 16'h765e;
	B = 16'hf4d8;
	ans = 16'h6e18;
	#20
	A = 16'hf40c;
	B = 16'hf6ed;
	ans = 16'hf97c;
	#20
	A = 16'hf67a;
	B = 16'hf077;
	ans = 16'hf85b;
	#20
	A = 16'hf5ac;
	B = 16'hf32b;
	ans = 16'hf8a1;
	#20
	A = 16'hf60e;
	B = 16'hf709;
	ans = 16'hfa8c;
	#20
	A = 16'h7136;
	B = 16'heee7;
	ans = 16'h6b0a;
	#20
	A = 16'h74d8;
	B = 16'hf6b9;
	ans = 16'hef84;
	#20
	A = 16'hf735;
	B = 16'h7735;
	ans = 16'h0;
	#20
	A = 16'h71b5;
	B = 16'hf733;
	ans = 16'hf458;
	#20
	A = 16'h6423;
	B = 16'h6593;
	ans = 16'h68db;
	#20
	A = 16'h75cb;
	B = 16'h74ed;
	ans = 16'h795c;
	#20
	A = 16'h7609;
	B = 16'h6a08;
	ans = 16'h76ca;
	#20
	A = 16'hec5d;
	B = 16'hf3cc;
	ans = 16'hf4fd;
	#20
	A = 16'hf4ab;
	B = 16'h69f7;
	ans = 16'hf3d8;
	#20
	A = 16'hf4d3;
	B = 16'h74f4;
	ans = 16'h6020;
	#20
	A = 16'hf608;
	B = 16'hf2cb;
	ans = 16'hf8b7;
	#20
	A = 16'h74e3;
	B = 16'h765d;
	ans = 16'h79a0;
	#20
	A = 16'hf108;
	B = 16'hef1e;
	ans = 16'hf44c;
	#20
	A = 16'h6fb6;
	B = 16'hf1f0;
	ans = 16'hec2a;
	#20
	A = 16'hf2c7;
	B = 16'h759e;
	ans = 16'h7075;
	#20
	A = 16'h75fe;
	B = 16'hf5ae;
	ans = 16'h6500;
	#20
	A = 16'h709b;
	B = 16'h76d0;
	ans = 16'h788f;
	#20
	A = 16'hf1ef;
	B = 16'hf41f;
	ans = 16'hf716;
	#20
	A = 16'heb14;
	B = 16'h6064;
	ans = 16'he9fb;
	#20
	A = 16'hecdf;
	B = 16'hf669;
	ans = 16'hf7a1;
	#20
	A = 16'h740d;
	B = 16'h74ee;
	ans = 16'h787e;
	#20
	A = 16'h6c95;
	B = 16'hf203;
	ans = 16'hef71;
	#20
	A = 16'hf1cc;
	B = 16'h76a7;
	ans = 16'h7382;
	#20
	A = 16'h76ed;
	B = 16'hf62a;
	ans = 16'h6a18;
	#20
	A = 16'h763a;
	B = 16'h750f;
	ans = 16'h79a4;
	#20
	A = 16'h733d;
	B = 16'hf210;
	ans = 16'h68b4;
	#20
	A = 16'h7083;
	B = 16'hf722;
	ans = 16'hf4e0;
	#20
	A = 16'h7445;
	B = 16'hf61f;
	ans = 16'hef68;
	#20
	A = 16'hf000;
	B = 16'hf4e2;
	ans = 16'hf6e2;
	#20
	A = 16'he4d9;
	B = 16'hf2c8;
	ans = 16'hf363;
	#20
	A = 16'he945;
	B = 16'hf6ba;
	ans = 16'hf763;
	#20
	A = 16'h6c9f;
	B = 16'h74d6;
	ans = 16'h75fe;
	#20
	A = 16'hf4c6;
	B = 16'h7538;
	ans = 16'h6720;
	#20
	A = 16'hf5f3;
	B = 16'hf682;
	ans = 16'hfa3a;
	#20
	A = 16'hef5d;
	B = 16'h6c4c;
	ans = 16'hea22;
	#20
	A = 16'hf626;
	B = 16'h72d9;
	ans = 16'hf173;
	#20
	A = 16'he715;
	B = 16'hf670;
	ans = 16'hf6e1;
	#20
	A = 16'hf4a1;
	B = 16'h6503;
	ans = 16'hf451;
	#20
	A = 16'hf68e;
	B = 16'heded;
	ans = 16'hf805;
	#20
	A = 16'hf50e;
	B = 16'hf130;
	ans = 16'hf7a6;
	#20
	A = 16'hef91;
	B = 16'h697a;
	ans = 16'hecd4;
	#20
	A = 16'hf4c1;
	B = 16'h7690;
	ans = 16'h6f3c;
	#20
	A = 16'h7669;
	B = 16'hf5f9;
	ans = 16'h6700;
	#20
	A = 16'hef9e;
	B = 16'hef4f;
	ans = 16'hf376;
	#20
	A = 16'h69f4;
	B = 16'hf07b;
	ans = 16'hedfc;
	#20
	A = 16'h748b;
	B = 16'h74e6;
	ans = 16'h78b8;
	#20
	A = 16'h700e;
	B = 16'h76d9;
	ans = 16'h7870;
	#20
	A = 16'hf167;
	B = 16'h7597;
	ans = 16'h71c7;
	#20
	A = 16'h73be;
	B = 16'h640d;
	ans = 16'h7420;
	#20
	A = 16'hf751;
	B = 16'hf732;
	ans = 16'hfb42;
	#20
	A = 16'h6e54;
	B = 16'hea52;
	ans = 16'h6a56;
	#20
	A = 16'h7657;
	B = 16'hf46a;
	ans = 16'h6fb4;
	#20
	A = 16'h71f4;
	B = 16'hf598;
	ans = 16'hf13c;
	#20
	A = 16'h76a3;
	B = 16'hf508;
	ans = 16'h6e6c;
	#20
	A = 16'h6c67;
	B = 16'h75e8;
	ans = 16'h7702;
	#20
	A = 16'hede5;
	B = 16'h6a92;
	ans = 16'he938;
	#20
	A = 16'hf751;
	B = 16'h76fd;
	ans = 16'he540;
	#20
	A = 16'heed3;
	B = 16'hf130;
	ans = 16'hf44d;
	#20
	A = 16'h7452;
	B = 16'h7359;
	ans = 16'h77fe;
	#20
	A = 16'h6ffe;
	B = 16'hf559;
	ans = 16'hf2b3;
	#20
	A = 16'h72ca;
	B = 16'hf56b;
	ans = 16'hf00c;
	#20
	A = 16'h7232;
	B = 16'hf3b1;
	ans = 16'he9fc;
	#20
	A = 16'hf330;
	B = 16'h713d;
	ans = 16'hebcc;
	#20
	A = 16'hf4e5;
	B = 16'h76da;
	ans = 16'h6fd4;
	#20
	A = 16'h63d6;
	B = 16'hf696;
	ans = 16'hf657;
	#20
	A = 16'hf649;
	B = 16'h6f76;
	ans = 16'hf46c;
	#20
	A = 16'he9bc;
	B = 16'hf1bb;
	ans = 16'hf32a;
	#20
	A = 16'hf1db;
	B = 16'h757a;
	ans = 16'h7119;
	#20
	A = 16'h7522;
	B = 16'hf603;
	ans = 16'heb08;
	#20
	A = 16'he6e4;
	B = 16'h74e4;
	ans = 16'h7476;
	#20
	A = 16'h6c35;
	B = 16'he116;
	ans = 16'h6b24;
	#20
	A = 16'hf440;
	B = 16'h73a2;
	ans = 16'he6f0;
	#20
	A = 16'hf4ee;
	B = 16'h71a5;
	ans = 16'hf037;
	#20
	A = 16'h7742;
	B = 16'h6907;
	ans = 16'h77e3;
	#20
	A = 16'h75dd;
	B = 16'h6d89;
	ans = 16'h773f;
	#20
	A = 16'h768a;
	B = 16'h6dbb;
	ans = 16'h77f9;
	#20
	A = 16'h7422;
	B = 16'hf4f2;
	ans = 16'hea80;
	#20
	A = 16'h7732;
	B = 16'h65ca;
	ans = 16'h778f;
	#20
	A = 16'h7471;
	B = 16'hf6c5;
	ans = 16'hf0a8;
	#20
	A = 16'h75b3;
	B = 16'hde34;
	ans = 16'h759a;
	#20
	A = 16'hee6f;
	B = 16'h6de0;
	ans = 16'he078;
	#20
	A = 16'h767d;
	B = 16'hf3cd;
	ans = 16'h712d;
	#20
	A = 16'hf687;
	B = 16'h7397;
	ans = 16'hf177;
	#20
	A = 16'h64b7;
	B = 16'hede5;
	ans = 16'hecb7;
	#20
	A = 16'h68bf;
	B = 16'hf0e2;
	ans = 16'hef64;
	#20
	A = 16'hf608;
	B = 16'h76ff;
	ans = 16'h6bb8;
	#20
	A = 16'hf14e;
	B = 16'he9bf;
	ans = 16'hf2be;
	#20
	A = 16'he5e8;
	B = 16'h74d3;
	ans = 16'h7474;
	#20
	A = 16'h7147;
	B = 16'h7181;
	ans = 16'h7564;
	#20
	A = 16'h7440;
	B = 16'headc;
	ans = 16'h72c9;
	#20
	A = 16'h755d;
	B = 16'h7342;
	ans = 16'h787f;
	#20
	A = 16'h6f27;
	B = 16'h73b9;
	ans = 16'h75a6;
	#20
	A = 16'h7112;
	B = 16'h7206;
	ans = 16'h758c;
	#20
	A = 16'h7552;
	B = 16'h6e5d;
	ans = 16'h76e9;
	#20
	A = 16'h7554;
	B = 16'hf6e5;
	ans = 16'hee44;
	#20
	A = 16'h7719;
	B = 16'h752b;
	ans = 16'h7a22;
	#20
	A = 16'h721e;
	B = 16'h76b5;
	ans = 16'h78e2;
	#20
	A = 16'h75fc;
	B = 16'hef1b;
	ans = 16'h7435;
	#20
	A = 16'hf440;
	B = 16'h70e6;
	ans = 16'hef34;
	#20
	A = 16'hf0b9;
	B = 16'h7225;
	ans = 16'h69b0;
	#20
	A = 16'h7558;
	B = 16'hefe4;
	ans = 16'h72be;
	#20
	A = 16'h70cf;
	B = 16'h71d3;
	ans = 16'h7551;
	#20
	A = 16'h7653;
	B = 16'hecf7;
	ans = 16'h7515;
	#20
	A = 16'hedf8;
	B = 16'heb2b;
	ans = 16'hf0c7;
	#20
	A = 16'h72bc;
	B = 16'h7120;
	ans = 16'h75ee;
	#20
	A = 16'hf21e;
	B = 16'heefe;
	ans = 16'hf4ce;
	#20
	A = 16'hf472;
	B = 16'he822;
	ans = 16'hf4f6;
	#20
	A = 16'hf71c;
	B = 16'hf71d;
	ans = 16'hfb1c;
	#20
	A = 16'hf100;
	B = 16'h74d1;
	ans = 16'h70a2;
	#20
	A = 16'h6e5a;
	B = 16'h7346;
	ans = 16'h753a;
	#20
	A = 16'hf6d7;
	B = 16'hf61d;
	ans = 16'hfa7a;
	#20
	A = 16'h7130;
	B = 16'h768b;
	ans = 16'h7892;
	#20
	A = 16'hf434;
	B = 16'h75b3;
	ans = 16'h6dfc;
	#20
	A = 16'hefa8;
	B = 16'h76bd;
	ans = 16'h74d3;
	#20
	A = 16'h6e76;
	B = 16'h7587;
	ans = 16'h7724;
	#20
	A = 16'h7143;
	B = 16'hf40b;
	ans = 16'heda6;
	#20
	A = 16'hf464;
	B = 16'hf3d3;
	ans = 16'hf827;
	#20
	A = 16'h746e;
	B = 16'h7605;
	ans = 16'h793a;
	#20
	A = 16'he32d;
	B = 16'he18b;
	ans = 16'he65c;
	#20
	A = 16'hecd7;
	B = 16'h7488;
	ans = 16'h72a4;
	#20
	A = 16'hf5e9;
	B = 16'he9ed;
	ans = 16'hf6a7;
	#20
	A = 16'hf574;
	B = 16'hf5ad;
	ans = 16'hf990;
	#20
	A = 16'hecd3;
	B = 16'hf64c;
	ans = 16'hf781;
	#20
	A = 16'h6f44;
	B = 16'h6a8f;
	ans = 16'h7146;
	#20
	A = 16'hee86;
	B = 16'hf12f;
	ans = 16'hf439;
	#20
	A = 16'hf589;
	B = 16'h762d;
	ans = 16'h6920;
	#20
	A = 16'h7406;
	B = 16'h7527;
	ans = 16'h7896;
	#20
	A = 16'hf0d6;
	B = 16'hf624;
	ans = 16'hf848;
	#20
	A = 16'hf4b2;
	B = 16'h6807;
	ans = 16'hf431;
	#20
	A = 16'hf535;
	B = 16'hf5cd;
	ans = 16'hf981;
	#20
	A = 16'h700e;
	B = 16'h76ea;
	ans = 16'h7878;
	#20
	A = 16'hf0dd;
	B = 16'h75dc;
	ans = 16'h72db;
	#20
	A = 16'hecb2;
	B = 16'h6132;
	ans = 16'hec0c;
	#20
	A = 16'h73cb;
	B = 16'hf134;
	ans = 16'h6d2e;
	#20
	A = 16'h73c0;
	B = 16'hf2da;
	ans = 16'h6730;
	#20
	A = 16'hf5f8;
	B = 16'h6bc3;
	ans = 16'hf500;
	#20
	A = 16'h76e4;
	B = 16'h6c7b;
	ans = 16'h7801;
	#20
	A = 16'hf443;
	B = 16'h6fb0;
	ans = 16'hf0ae;
	#20
	A = 16'hf47e;
	B = 16'h72d9;
	ans = 16'hec46;
	#20
	A = 16'h7304;
	B = 16'hedca;
	ans = 16'h701f;
	#20
	A = 16'hf55d;
	B = 16'h6666;
	ans = 16'hf4f7;
	#20
	A = 16'hea1f;
	B = 16'hf62c;
	ans = 16'hf6f0;
	#20
	A = 16'hf68c;
	B = 16'h7494;
	ans = 16'hefe0;
	#20
	A = 16'hf609;
	B = 16'hf35a;
	ans = 16'hf8db;
	#20
	A = 16'h73e9;
	B = 16'h6f0d;
	ans = 16'h75b8;
	#20
	A = 16'hf6c0;
	B = 16'h7287;
	ans = 16'hf2f9;
	#20
	A = 16'he87d;
	B = 16'h7672;
	ans = 16'h75e2;
	#20
	A = 16'h706d;
	B = 16'h6fc1;
	ans = 16'h7427;
	#20
	A = 16'hf478;
	B = 16'hf6e9;
	ans = 16'hf9b0;
	#20
	A = 16'h714f;
	B = 16'hf0c2;
	ans = 16'h6468;
	#20
	A = 16'hf74d;
	B = 16'h6da4;
	ans = 16'hf5e4;
	#20
	A = 16'hecd2;
	B = 16'hf4ce;
	ans = 16'hf602;
	#20
	A = 16'hf458;
	B = 16'h76d0;
	ans = 16'h70f0;
	#20
	A = 16'h6f43;
	B = 16'h76bb;
	ans = 16'h7846;
	#20
	A = 16'hed09;
	B = 16'hf54f;
	ans = 16'hf691;
	#20
	A = 16'h7308;
	B = 16'hf6c2;
	ans = 16'hf27c;
	#20
	A = 16'hf72f;
	B = 16'hf485;
	ans = 16'hf9da;
	#20
	A = 16'hf460;
	B = 16'heda1;
	ans = 16'hf5c8;
	#20
	A = 16'h71f6;
	B = 16'h70ff;
	ans = 16'h757a;
	#20
	A = 16'h75c7;
	B = 16'h7092;
	ans = 16'h7808;
	#20
	A = 16'h743d;
	B = 16'h768f;
	ans = 16'h7966;
	#20
	A = 16'h718b;
	B = 16'h6f64;
	ans = 16'h749e;
	#20
	A = 16'hf537;
	B = 16'h70d2;
	ans = 16'hf19c;
	#20
	A = 16'h66db;
	B = 16'h7087;
	ans = 16'h7162;
	#20
	A = 16'hf6e4;
	B = 16'hf495;
	ans = 16'hf9bc;
	#20
	A = 16'h75b8;
	B = 16'h772b;
	ans = 16'h7a72;
	#20
	A = 16'h6c6b;
	B = 16'hf55c;
	ans = 16'hf441;
	#20
	A = 16'h6cde;
	B = 16'h7597;
	ans = 16'h76ce;
	#20
	A = 16'he415;
	B = 16'hf429;
	ans = 16'hf46a;
	#20
	A = 16'h73bb;
	B = 16'h7081;
	ans = 16'h761e;
	#20
	A = 16'hf06e;
	B = 16'hf1a6;
	ans = 16'hf50a;
	#20
	A = 16'h7367;
	B = 16'hefab;
	ans = 16'h6f23;
	#20
	A = 16'h6e37;
	B = 16'hec16;
	ans = 16'h6842;
	#20
	A = 16'hee75;
	B = 16'heb96;
	ans = 16'hf120;
	#20
	A = 16'h5f32;
	B = 16'hee1c;
	ans = 16'heda9;
	#20
	A = 16'hf4e1;
	B = 16'h730c;
	ans = 16'hed6c;
	#20
	A = 16'h73cb;
	B = 16'h6824;
	ans = 16'h746a;
	#20
	A = 16'hf29f;
	B = 16'h74f1;
	ans = 16'h6e86;
	#20
	A = 16'h64c2;
	B = 16'h749b;
	ans = 16'h74e7;
	#20
	A = 16'hf5bf;
	B = 16'hf173;
	ans = 16'hf83c;
	#20
	A = 16'h7640;
	B = 16'hf238;
	ans = 16'h7248;
	#20
	A = 16'h74d9;
	B = 16'h7625;
	ans = 16'h797f;
	#20
	A = 16'h7603;
	B = 16'h75e7;
	ans = 16'h79f5;
	#20
	A = 16'hf4db;
	B = 16'h7698;
	ans = 16'h6ef4;
	#20
	A = 16'hf63c;
	B = 16'h72b3;
	ans = 16'hf1c5;
	#20
	A = 16'h72b2;
	B = 16'hef78;
	ans = 16'h6dec;
	#20
	A = 16'hf547;
	B = 16'hf5c0;
	ans = 16'hf984;
	#20
	A = 16'hf5a1;
	B = 16'h6d73;
	ans = 16'hf444;
	#20
	A = 16'hf2cd;
	B = 16'hec85;
	ans = 16'hf488;
	#20
	A = 16'h7366;
	B = 16'h76f7;
	ans = 16'h7955;
	#20
	A = 16'h67cf;
	B = 16'h7611;
	ans = 16'h768e;
	#20
	A = 16'h7569;
	B = 16'hf0b5;
	ans = 16'h721d;
	#20
	A = 16'h717e;
	B = 16'hf0fe;
	ans = 16'h6400;
	#20
	A = 16'he78d;
	B = 16'h738c;
	ans = 16'h729a;
	#20
	A = 16'h7144;
	B = 16'h6872;
	ans = 16'h7260;
	#20
	A = 16'h7435;
	B = 16'hf18a;
	ans = 16'h6dc0;
	#20
	A = 16'h771c;
	B = 16'hf652;
	ans = 16'h6a50;
	#20
	A = 16'h664e;
	B = 16'heba2;
	ans = 16'he87b;
	#20
	A = 16'hf0b9;
	B = 16'h73a5;
	ans = 16'h6dd8;
	#20
	A = 16'hf28f;
	B = 16'hf313;
	ans = 16'hf6d1;
	#20
	A = 16'hef73;
	B = 16'hf35d;
	ans = 16'hf58b;
	#20
	A = 16'hedf1;
	B = 16'h6f0d;
	ans = 16'h6470;
	#20
	A = 16'hf3bb;
	B = 16'h76b1;
	ans = 16'h71a7;
	#20
	A = 16'h7057;
	B = 16'h7115;
	ans = 16'h74b6;
	#20
	A = 16'h6f9f;
	B = 16'hf208;
	ans = 16'hec71;
	#20
	A = 16'h75db;
	B = 16'h73f4;
	ans = 16'h78ea;
	#20
	A = 16'hf6fe;
	B = 16'h7413;
	ans = 16'hf1d6;
	#20
	A = 16'h6ef5;
	B = 16'h75c4;
	ans = 16'h7781;
	#20
	A = 16'hf4ef;
	B = 16'hf10e;
	ans = 16'hf776;
	#20
	A = 16'h749f;
	B = 16'hf457;
	ans = 16'h6480;
	#20
	A = 16'h751b;
	B = 16'hf430;
	ans = 16'h6b58;
	#20
	A = 16'hedba;
	B = 16'h71a3;
	ans = 16'h6d8c;
	#20
	A = 16'hf402;
	B = 16'h7115;
	ans = 16'hedde;
	#20
	A = 16'hf3d9;
	B = 16'hf446;
	ans = 16'hf819;
	#20
	A = 16'hf2e2;
	B = 16'hee5a;
	ans = 16'hf508;
	#20
	A = 16'h6df5;
	B = 16'hf2a2;
	ans = 16'hef4f;
	#20
	A = 16'h7128;
	B = 16'hf4e3;
	ans = 16'hf09e;
	#20
	A = 16'h7478;
	B = 16'hf481;
	ans = 16'hd880;
	#20
	A = 16'h723d;
	B = 16'hea18;
	ans = 16'h70b7;
	#20
	A = 16'hf238;
	B = 16'h731d;
	ans = 16'h6728;
	#20
	A = 16'h773b;
	B = 16'hf2f5;
	ans = 16'h7381;
	#20
	A = 16'hf25b;
	B = 16'h72cd;
	ans = 16'h6320;
	#20
	A = 16'hf67a;
	B = 16'h71b5;
	ans = 16'hf33f;
	#20
	A = 16'hf650;
	B = 16'h7345;
	ans = 16'hf15b;
	#20
	A = 16'hf494;
	B = 16'hef86;
	ans = 16'hf676;
	#20
	A = 16'h7512;
	B = 16'h728c;
	ans = 16'h782c;
	#20
	A = 16'hf1e3;
	B = 16'hf65b;
	ans = 16'hf8a6;
	#20
	A = 16'h51a1;
	B = 16'h6f8a;
	ans = 16'h6f95;
	#20
	A = 16'h6ced;
	B = 16'he0c7;
	ans = 16'h6c54;
	#20
	A = 16'hee72;
	B = 16'h7162;
	ans = 16'h6c52;
	#20
	A = 16'hf657;
	B = 16'h6eb9;
	ans = 16'hf4a9;
	#20
	A = 16'h71d5;
	B = 16'h695e;
	ans = 16'h732c;
	#20
	A = 16'h76c9;
	B = 16'h757b;
	ans = 16'h7a22;
	#20
	A = 16'hf0a6;
	B = 16'hf722;
	ans = 16'hf8ba;
	#20
	A = 16'hf162;
	B = 16'h6ce4;
	ans = 16'hede0;
	#20
	A = 16'h7533;
	B = 16'hecd3;
	ans = 16'h73fc;
	#20
	A = 16'hdeef;
	B = 16'hf6f3;
	ans = 16'hf70f;
	#20
	A = 16'h6c10;
	B = 16'h74da;
	ans = 16'h75de;
	#20
	A = 16'h75a0;
	B = 16'h59e5;
	ans = 16'h75ac;
	#20
	A = 16'h7469;
	B = 16'h7520;
	ans = 16'h78c4;
	#20
	A = 16'h7529;
	B = 16'h72bb;
	ans = 16'h7843;
	#20
	A = 16'h7062;
	B = 16'hf749;
	ans = 16'hf518;
	#20
	A = 16'h7605;
	B = 16'h7676;
	ans = 16'h7a3e;
	#20
	A = 16'heff7;
	B = 16'he0bf;
	ans = 16'hf047;
	#20
	A = 16'hf04d;
	B = 16'h758d;
	ans = 16'h72cd;
	#20
	A = 16'heea8;
	B = 16'hedb2;
	ans = 16'hf22d;
	#20
	A = 16'h7577;
	B = 16'h7517;
	ans = 16'h7947;
	#20
	A = 16'h7188;
	B = 16'h5a7b;
	ans = 16'h71a2;
	#20
	A = 16'heb61;
	B = 16'h75c8;
	ans = 16'h74dc;
	#20
	A = 16'h72c1;
	B = 16'hf3fb;
	ans = 16'he8e8;
	#20
	A = 16'h7452;
	B = 16'h70db;
	ans = 16'h76c0;
	#20
	A = 16'h7704;
	B = 16'hf5c8;
	ans = 16'h6cf0;
	#20
	A = 16'hf4fc;
	B = 16'h7504;
	ans = 16'h5800;
	#20
	A = 16'h6c51;
	B = 16'hf6ef;
	ans = 16'hf5db;
	#20
	A = 16'hf6ea;
	B = 16'h7325;
	ans = 16'hf2af;
	#20
	A = 16'h7122;
	B = 16'hf053;
	ans = 16'h6678;
	#20
	A = 16'h6413;
	B = 16'h6a92;
	ans = 16'h6c4e;
	#20
	A = 16'hf516;
	B = 16'h66b7;
	ans = 16'hf4ab;
	#20
	A = 16'h76fd;
	B = 16'hf589;
	ans = 16'h6dd0;
	#20
	A = 16'hf2cc;
	B = 16'hf182;
	ans = 16'hf627;
	#20
	A = 16'h7050;
	B = 16'h76cb;
	ans = 16'h787a;
	#20
	A = 16'h7049;
	B = 16'hf044;
	ans = 16'h5100;
	#20
	A = 16'hf416;
	B = 16'hf1c2;
	ans = 16'hf6f7;
	#20
	A = 16'hf702;
	B = 16'h759c;
	ans = 16'hed98;
	#20
	A = 16'h7388;
	B = 16'h73fd;
	ans = 16'h77c2;
	#20
	A = 16'h7710;
	B = 16'h74eb;
	ans = 16'h79fe;
	#20
	A = 16'h7177;
	B = 16'h757c;
	ans = 16'h781c;
	#20
	A = 16'hf625;
	B = 16'hf59a;
	ans = 16'hf9e0;
	#20
	A = 16'h678b;
	B = 16'h7568;
	ans = 16'h75e1;
	#20
	A = 16'h772b;
	B = 16'h702e;
	ans = 16'h78a1;
	#20
	A = 16'h76f9;
	B = 16'h7722;
	ans = 16'h7b0e;
	#20
	A = 16'he9de;
	B = 16'h7274;
	ans = 16'h70fc;
	#20
	A = 16'hf6ee;
	B = 16'hf580;
	ans = 16'hfa37;
	#20
	A = 16'hf406;
	B = 16'h74ea;
	ans = 16'h6b20;
	#20
	A = 16'h6e2b;
	B = 16'hf665;
	ans = 16'hf4da;
	#20
	A = 16'h751e;
	B = 16'hf4b7;
	ans = 16'h6670;
	#20
	A = 16'hf4ef;
	B = 16'h707a;
	ans = 16'hf164;
	#20
	A = 16'h74ae;
	B = 16'h720e;
	ans = 16'h77b5;
	#20
	A = 16'h74fd;
	B = 16'hed52;
	ans = 16'h7351;
	#20
	A = 16'h7642;
	B = 16'hf4cd;
	ans = 16'h6dd4;
	#20
	A = 16'h669d;
	B = 16'hf4dc;
	ans = 16'hf472;
	#20
	A = 16'h6446;
	B = 16'hf62b;
	ans = 16'hf5e7;
	#20
	A = 16'hf156;
	B = 16'h71ef;
	ans = 16'h64c8;
	#20
	A = 16'hf42f;
	B = 16'hf2e7;
	ans = 16'hf7a2;
	#20
	A = 16'h620b;
	B = 16'hf649;
	ans = 16'hf619;
	#20
	A = 16'hf68d;
	B = 16'h72df;
	ans = 16'hf23b;
	#20
	A = 16'h7504;
	B = 16'hf354;
	ans = 16'h6d68;
	#20
	A = 16'h6c14;
	B = 16'hf442;
	ans = 16'hf27a;
	#20
	A = 16'h74b4;
	B = 16'he55d;
	ans = 16'h745e;
	#20
	A = 16'heee3;
	B = 16'hf3b0;
	ans = 16'hf591;
	#20
	A = 16'h72fe;
	B = 16'hf574;
	ans = 16'hefd4;
	#20
	A = 16'h75dd;
	B = 16'h742e;
	ans = 16'h7906;
	#20
	A = 16'h7467;
	B = 16'h7308;
	ans = 16'h77eb;
	#20
	A = 16'h721d;
	B = 16'h6faa;
	ans = 16'h74f9;
	#20
	A = 16'h6ad8;
	B = 16'hf6db;
	ans = 16'hf600;
	#20
	A = 16'hf591;
	B = 16'h656c;
	ans = 16'hf53a;
	#20
	A = 16'hf544;
	B = 16'heee6;
	ans = 16'hf6fe;
	#20
	A = 16'h7422;
	B = 16'hf653;
	ans = 16'hf062;
	#20
	A = 16'hf439;
	B = 16'hf664;
	ans = 16'hf94e;
	#20
	A = 16'hf55b;
	B = 16'hf6cf;
	ans = 16'hfa15;
	#20
	A = 16'hf617;
	B = 16'hf314;
	ans = 16'hf8d0;
	#20
	A = 16'hf636;
	B = 16'h6bf1;
	ans = 16'hf538;
	#20
	A = 16'hf4cb;
	B = 16'h706e;
	ans = 16'hf128;
	#20
	A = 16'h7363;
	B = 16'hf505;
	ans = 16'hed4e;
	#20
	A = 16'h7560;
	B = 16'hed84;
	ans = 16'h73fe;
	#20
	A = 16'hf43e;
	B = 16'h64c1;
	ans = 16'hf3e4;
	#20
	A = 16'heba9;
	B = 16'h70bd;
	ans = 16'h6da6;
	#20
	A = 16'hf13c;
	B = 16'h6ea9;
	ans = 16'heb9e;
	#20
	A = 16'h7282;
	B = 16'hdd7a;
	ans = 16'h7256;
	#20
	A = 16'hf6ce;
	B = 16'h741d;
	ans = 16'hf162;
	#20
	A = 16'h7469;
	B = 16'hf549;
	ans = 16'heb00;
	#20
	A = 16'h7702;
	B = 16'h748e;
	ans = 16'h79c8;
	#20
	A = 16'hf5b1;
	B = 16'hec53;
	ans = 16'hf6c6;
	#20
	A = 16'hee66;
	B = 16'hf0b3;
	ans = 16'hf3e6;
	#20
	A = 16'h7314;
	B = 16'hf4de;
	ans = 16'hed50;
	#20
	A = 16'he4ca;
	B = 16'hf626;
	ans = 16'hf673;
	#20
	A = 16'hf515;
	B = 16'h75da;
	ans = 16'h6a28;
	#20
	A = 16'h6d34;
	B = 16'h73e1;
	ans = 16'h753e;
	#20
	A = 16'h7425;
	B = 16'h76c0;
	ans = 16'h7972;
	#20
	A = 16'he889;
	B = 16'hf61f;
	ans = 16'hf6b0;
	#20
	A = 16'h76b2;
	B = 16'h751d;
	ans = 16'h79e8;
	#20
	A = 16'he912;
	B = 16'h725a;
	ans = 16'h7116;
	#20
	A = 16'h749f;
	B = 16'hf151;
	ans = 16'h6fda;
	#20
	A = 16'hd280;
	B = 16'hf20a;
	ans = 16'hf210;
	#20
	A = 16'hf1ea;
	B = 16'h74b4;
	ans = 16'h6efc;
	#20
	A = 16'h7129;
	B = 16'h7577;
	ans = 16'h7806;
	#20
	A = 16'h64f9;
	B = 16'h71f8;
	ans = 16'h7297;
	#20
	A = 16'hf5b4;
	B = 16'h756a;
	ans = 16'he4a0;
	#20
	A = 16'h6980;
	B = 16'hf5be;
	ans = 16'hf50e;
	#20
	A = 16'h6433;
	B = 16'hf63c;
	ans = 16'hf5f9;
	#20
	A = 16'h76b1;
	B = 16'hf5aa;
	ans = 16'h6c1c;
	#20
	A = 16'h76c5;
	B = 16'hf46b;
	ans = 16'h70b4;
	#20
	A = 16'h6c66;
	B = 16'hf0dd;
	ans = 16'hed54;
	#20
	A = 16'hf74e;
	B = 16'h7317;
	ans = 16'hf385;
	#20
	A = 16'h7731;
	B = 16'h71d9;
	ans = 16'h790f;
	#20
	A = 16'h76ba;
	B = 16'h7119;
	ans = 16'h78a3;
	#20
	A = 16'he521;
	B = 16'hf04e;
	ans = 16'hf0f2;
	#20
	A = 16'h7530;
	B = 16'hf55e;
	ans = 16'he1c0;
	#20
	A = 16'hf583;
	B = 16'h737b;
	ans = 16'hef16;
	#20
	A = 16'h7485;
	B = 16'hf326;
	ans = 16'h6b90;
	#20
	A = 16'h6085;
	B = 16'hf48e;
	ans = 16'hf46a;
	#20
	A = 16'hf3e5;
	B = 16'h75f3;
	ans = 16'h7001;
	#20
	A = 16'hf5df;
	B = 16'h6e04;
	ans = 16'hf45e;
	#20
	A = 16'h72ed;
	B = 16'h76ce;
	ans = 16'h7922;
	#20
	A = 16'hf64a;
	B = 16'h72f5;
	ans = 16'hf19f;
	#20
	A = 16'hf735;
	B = 16'heffa;
	ans = 16'hf89a;
	#20
	A = 16'h7189;
	B = 16'he0e1;
	ans = 16'h713b;
	#20
	A = 16'hf6ec;
	B = 16'h7723;
	ans = 16'h62e0;
	#20
	A = 16'hf69a;
	B = 16'h60f9;
	ans = 16'hf672;
	#20
	A = 16'h76a6;
	B = 16'hf71a;
	ans = 16'he740;
	#20
	A = 16'h7664;
	B = 16'hf4f6;
	ans = 16'h6db8;
	#20
	A = 16'h74d9;
	B = 16'h7466;
	ans = 16'h78a0;
	#20
	A = 16'h6a9d;
	B = 16'h773f;
	ans = 16'h7809;
	#20
	A = 16'h7619;
	B = 16'h75dd;
	ans = 16'h79fb;
	#20
	A = 16'h7028;
	B = 16'h6bcb;
	ans = 16'h721b;
	#20
	A = 16'hf62e;
	B = 16'h6904;
	ans = 16'hf58e;
	#20
	A = 16'heb68;
	B = 16'h71a8;
	ans = 16'h6f9c;
	#20
	A = 16'h74f5;
	B = 16'hefb3;
	ans = 16'h7210;
	#20
	A = 16'hf2b6;
	B = 16'h7476;
	ans = 16'h6c6c;
	#20
	A = 16'h740d;
	B = 16'h7189;
	ans = 16'h76d2;
	#20
	A = 16'h72f5;
	B = 16'hdc6c;
	ans = 16'h72d2;
	#20
	A = 16'hf559;
	B = 16'hf4cc;
	ans = 16'hf912;
	#20
	A = 16'hee06;
	B = 16'h75e4;
	ans = 16'h7462;
	#20
	A = 16'hf566;
	B = 16'h687d;
	ans = 16'hf4d6;
	#20
	A = 16'hf4f1;
	B = 16'h74ce;
	ans = 16'he060;
	#20
	A = 16'h638c;
	B = 16'h66fe;
	ans = 16'h6962;
	#20
	A = 16'h75cf;
	B = 16'h7591;
	ans = 16'h79b0;
	#20
	A = 16'h7263;
	B = 16'h7472;
	ans = 16'h77a4;
	#20
	A = 16'hf237;
	B = 16'he812;
	ans = 16'hf33c;
	#20
	A = 16'h683a;
	B = 16'hf48b;
	ans = 16'hf404;
	#20
	A = 16'hf2da;
	B = 16'hf235;
	ans = 16'hf688;
	#20
	A = 16'hf3f9;
	B = 16'hf618;
	ans = 16'hf90a;
	#20
	A = 16'h6dc4;
	B = 16'h7311;
	ans = 16'h74fa;
	#20
	A = 16'hf28c;
	B = 16'h7614;
	ans = 16'h719c;
	#20
	A = 16'hf25f;
	B = 16'hf001;
	ans = 16'hf530;
	#20
	A = 16'hf5d5;
	B = 16'h65db;
	ans = 16'hf577;
	#20
	A = 16'hf6e8;
	B = 16'h6eea;
	ans = 16'hf52e;
	#20
	A = 16'hf252;
	B = 16'h65b3;
	ans = 16'hf19c;
	#20
	A = 16'h71be;
	B = 16'h76a1;
	ans = 16'h78c0;
	#20
	A = 16'hed7b;
	B = 16'hf33e;
	ans = 16'hf4fe;
	#20
	A = 16'h7257;
	B = 16'hf480;
	ans = 16'hed52;
	#20
	A = 16'hf273;
	B = 16'he231;
	ans = 16'hf2d6;
	#20
	A = 16'h6fd3;
	B = 16'h7484;
	ans = 16'h7679;
	#20
	A = 16'hf33f;
	B = 16'hf0a0;
	ans = 16'hf5f0;
	#20
	A = 16'h5f82;
	B = 16'h70c5;
	ans = 16'h7101;
	#20
	A = 16'hf4c1;
	B = 16'hf4e9;
	ans = 16'hf8d5;
	#20
	A = 16'hf4b2;
	B = 16'hf6b1;
	ans = 16'hf9b2;
	#20
	A = 16'h7016;
	B = 16'hf498;
	ans = 16'hf11a;
	#20
	A = 16'hf254;
	B = 16'hf1e1;
	ans = 16'hf61a;
	#20
	A = 16'hf173;
	B = 16'hf3dd;
	ans = 16'hf6a8;
	#20
	A = 16'h7681;
	B = 16'he4c3;
	ans = 16'h7635;
	#20
	A = 16'hf570;
	B = 16'hdd4a;
	ans = 16'hf585;
	#20
	A = 16'hf4dd;
	B = 16'h7558;
	ans = 16'h67b0;
	#20
	A = 16'h65f1;
	B = 16'he957;
	ans = 16'he4bd;
	#20
	A = 16'hf45d;
	B = 16'hf42e;
	ans = 16'hf846;
	#20
	A = 16'hf558;
	B = 16'hf35d;
	ans = 16'hf883;
	#20
	A = 16'h74f8;
	B = 16'h742b;
	ans = 16'h7892;
	#20
	A = 16'hf621;
	B = 16'h76f9;
	ans = 16'h6ac0;
	#20
	A = 16'h7567;
	B = 16'hf752;
	ans = 16'hefac;
	#20
	A = 16'hf093;
	B = 16'hf3e5;
	ans = 16'hf63c;
	#20
	A = 16'h73bc;
	B = 16'hf417;
	ans = 16'he320;
	#20
	A = 16'hf134;
	B = 16'h723b;
	ans = 16'h681c;
	#20
	A = 16'h76d9;
	B = 16'hefc1;
	ans = 16'h74e9;
	#20
	A = 16'hf637;
	B = 16'h75f8;
	ans = 16'he3e0;
	#20
	A = 16'hefad;
	B = 16'h6e77;
	ans = 16'he4d8;
	#20
	A = 16'hf119;
	B = 16'head1;
	ans = 16'hf2cd;
	#20
	A = 16'h74ac;
	B = 16'hf6a8;
	ans = 16'heff0;
	#20
	A = 16'hf2ba;
	B = 16'hf567;
	ans = 16'hf862;
	#20
	A = 16'h7540;
	B = 16'he9b7;
	ans = 16'h7489;
	#20
	A = 16'hf60c;
	B = 16'h6001;
	ans = 16'hf5ec;
	#20
	A = 16'hed13;
	B = 16'hf694;
	ans = 16'hf7d9;
	#20
	A = 16'h7371;
	B = 16'hf2ae;
	ans = 16'h6618;
	#20
	A = 16'hf542;
	B = 16'hf61b;
	ans = 16'hf9ae;
	#20
	A = 16'hef3b;
	B = 16'h7742;
	ans = 16'h7573;
	#20
	A = 16'h7467;
	B = 16'hede6;
	ans = 16'h71db;
	#20
	A = 16'hf6c3;
	B = 16'hf46c;
	ans = 16'hf998;
	#20
	A = 16'hf4dc;
	B = 16'h6cd2;
	ans = 16'hf34f;
	#20
	A = 16'hf082;
	B = 16'hf357;
	ans = 16'hf5ec;
	#20
	A = 16'hf5b5;
	B = 16'h75cd;
	ans = 16'h5e00;
	#20
	A = 16'hf4d0;
	B = 16'hf37a;
	ans = 16'hf846;
	#20
	A = 16'hf08f;
	B = 16'hedf7;
	ans = 16'hf38a;
	#20
	A = 16'h766a;
	B = 16'h7600;
	ans = 16'h7a35;
	#20
	A = 16'hef7d;
	B = 16'h7479;
	ans = 16'h7134;
	#20
	A = 16'h7547;
	B = 16'h761a;
	ans = 16'h79b0;
	#20
	A = 16'h726a;
	B = 16'h7704;
	ans = 16'h791c;
	#20
	A = 16'h7500;
	B = 16'h73b2;
	ans = 16'h786c;
	#20
	A = 16'h7259;
	B = 16'h756e;
	ans = 16'h784d;
	#20
	A = 16'hea09;
	B = 16'h76b1;
	ans = 16'h75f0;
	#20
	A = 16'hefd2;
	B = 16'hedd1;
	ans = 16'hf2d2;
	#20
	A = 16'h75aa;
	B = 16'hf247;
	ans = 16'h710d;
	#20
	A = 16'h75df;
	B = 16'hef9f;
	ans = 16'h73ee;
	#20
	A = 16'h7411;
	B = 16'h6a30;
	ans = 16'h74d7;
	#20
	A = 16'h7169;
	B = 16'h75ee;
	ans = 16'h7851;
	#20
	A = 16'h7502;
	B = 16'hf558;
	ans = 16'he560;
	#20
	A = 16'h74f2;
	B = 16'h7683;
	ans = 16'h79ba;
	#20
	A = 16'h738d;
	B = 16'h752b;
	ans = 16'h7879;
	#20
	A = 16'hf46a;
	B = 16'h71b1;
	ans = 16'hee46;
	#20
	A = 16'h6fdc;
	B = 16'h70b8;
	ans = 16'h7453;
	#20
	A = 16'h74dc;
	B = 16'hcfaf;
	ans = 16'h74da;
	#20
	A = 16'h7413;
	B = 16'hf698;
	ans = 16'hf10a;
	#20
	A = 16'hf2e1;
	B = 16'hf20c;
	ans = 16'hf676;
	#20
	A = 16'h748c;
	B = 16'h7215;
	ans = 16'h7796;
	#20
	A = 16'h761a;
	B = 16'hf034;
	ans = 16'h7400;
	#20
	A = 16'h7486;
	B = 16'hf744;
	ans = 16'hf17c;
	#20
	A = 16'h7497;
	B = 16'hf618;
	ans = 16'hee04;
	#20
	A = 16'hf050;
	B = 16'h7713;
	ans = 16'h74eb;
	#20
	A = 16'h7567;
	B = 16'h773c;
	ans = 16'h7a52;
	#20
	A = 16'hee0f;
	B = 16'he453;
	ans = 16'hef24;
	#20
	A = 16'hef8d;
	B = 16'hefab;
	ans = 16'hf39c;
	#20
	A = 16'h7489;
	B = 16'hf5a9;
	ans = 16'hec80;
	#20
	A = 16'hf61f;
	B = 16'hf71a;
	ans = 16'hfa9c;
	#20
	A = 16'h763e;
	B = 16'hf722;
	ans = 16'heb20;
	#20
	A = 16'h7498;
	B = 16'hed66;
	ans = 16'h727d;
	#20
	A = 16'hf483;
	B = 16'he99d;
	ans = 16'hf537;
	#20
	A = 16'h72f3;
	B = 16'h74ea;
	ans = 16'h7832;
	#20
	A = 16'hf1e1;
	B = 16'hf601;
	ans = 16'hf879;
	#20
	A = 16'h767b;
	B = 16'h5c05;
	ans = 16'h768b;
	#20
	A = 16'hf38c;
	B = 16'h76be;
	ans = 16'h71f0;
	#20
	A = 16'h6f3a;
	B = 16'h766e;
	ans = 16'h781e;
	#20
	A = 16'h71b2;
	B = 16'h7253;
	ans = 16'h7602;
	#20
	A = 16'h7586;
	B = 16'h72d0;
	ans = 16'h7877;
	#20
	A = 16'h76f3;
	B = 16'h7550;
	ans = 16'h7a22;
	#20
	A = 16'h7144;
	B = 16'h724d;
	ans = 16'h75c8;
	#20
	A = 16'heee7;
	B = 16'h728d;
	ans = 16'h6e33;
	#20
	A = 16'h72d4;
	B = 16'h7523;
	ans = 16'h7846;
	#20
	A = 16'hf6ad;
	B = 16'hf364;
	ans = 16'hf930;
	#20
	A = 16'hf488;
	B = 16'h73d4;
	ans = 16'he8f0;
	#20
	A = 16'h772f;
	B = 16'hf415;
	ans = 16'h7234;
	#20
	A = 16'h706e;
	B = 16'h75ee;
	ans = 16'h7812;
	#20
	A = 16'h6d74;
	B = 16'hf49d;
	ans = 16'hf280;
	#20
	A = 16'hf20c;
	B = 16'h7064;
	ans = 16'heaa0;
	#20
	A = 16'h6b7e;
	B = 16'hf4e6;
	ans = 16'hf3ec;
	#20
	A = 16'hf435;
	B = 16'h6eb5;
	ans = 16'hf110;
	#20
	A = 16'he9fe;
	B = 16'hef10;
	ans = 16'hf108;
	#20
	A = 16'hf589;
	B = 16'h7643;
	ans = 16'h69d0;
	#20
	A = 16'hf72c;
	B = 16'h7729;
	ans = 16'hd200;
	#20
	A = 16'hf39c;
	B = 16'hf2fd;
	ans = 16'hf74c;
	#20
	A = 16'h70fd;
	B = 16'h6bb4;
	ans = 16'h72ea;
	#20
	A = 16'hf314;
	B = 16'hf482;
	ans = 16'hf806;
	#20
	A = 16'h6ca9;
	B = 16'h6d2f;
	ans = 16'h70ec;
	#20
	A = 16'hefc0;
	B = 16'hf732;
	ans = 16'hf891;
	#20
	A = 16'hf625;
	B = 16'hf383;
	ans = 16'hf8f3;
	#20
	A = 16'heed8;
	B = 16'he926;
	ans = 16'hf0b6;
	#20
	A = 16'h7157;
	B = 16'hf177;
	ans = 16'hdc00;
	#20
	A = 16'hf031;
	B = 16'h7651;
	ans = 16'h7438;
	#20
	A = 16'h7583;
	B = 16'h729f;
	ans = 16'h7869;
	#20
	A = 16'hf5c2;
	B = 16'hf010;
	ans = 16'hf7ca;
	#20
	A = 16'hf5f4;
	B = 16'hea64;
	ans = 16'hf6c0;
	#20
	A = 16'h7325;
	B = 16'hf4d4;
	ans = 16'hed06;
	#20
	A = 16'h7221;
	B = 16'h70a8;
	ans = 16'h7564;
	#20
	A = 16'hf578;
	B = 16'h6d00;
	ans = 16'hf438;
	#20
	A = 16'h6e2a;
	B = 16'hf45d;
	ans = 16'hf1a5;
	#20
	A = 16'h5e4e;
	B = 16'hf48b;
	ans = 16'hf472;
	#20
	A = 16'h7354;
	B = 16'h7712;
	ans = 16'h795e;
	#20
	A = 16'h762f;
	B = 16'h70ff;
	ans = 16'h7857;
	#20
	A = 16'h70f5;
	B = 16'hf697;
	ans = 16'hf41c;
	#20
	A = 16'h7559;
	B = 16'h7484;
	ans = 16'h78ee;
	#20
	A = 16'h7425;
	B = 16'hf6f1;
	ans = 16'hf198;
	#20
	A = 16'hf137;
	B = 16'hefa9;
	ans = 16'hf486;
	#20
	A = 16'hf0ec;
	B = 16'h74b6;
	ans = 16'h7080;
	#20
	A = 16'h74c8;
	B = 16'h768e;
	ans = 16'h79ab;
	#20
	A = 16'h6305;
	B = 16'hf19c;
	ans = 16'hf12c;
	#20
	A = 16'h703f;
	B = 16'h6071;
	ans = 16'h7086;
	#20
	A = 16'hf650;
	B = 16'h7743;
	ans = 16'h6b98;
	#20
	A = 16'h709f;
	B = 16'hf6d1;
	ans = 16'hf482;
	#20
	A = 16'hf6b3;
	B = 16'h68f5;
	ans = 16'hf614;
	#20
	A = 16'hf611;
	B = 16'hf6db;
	ans = 16'hfa76;
	#20
	A = 16'h72b2;
	B = 16'hf6d4;
	ans = 16'hf2f6;
	#20
	A = 16'h7140;
	B = 16'h7552;
	ans = 16'h77f2;
	#20
	A = 16'h6f8f;
	B = 16'h746b;
	ans = 16'h764f;
	#20
	A = 16'h7644;
	B = 16'h73f6;
	ans = 16'h7920;
	#20
	A = 16'h64f3;
	B = 16'h727f;
	ans = 16'h731d;
	#20
	A = 16'hf5ce;
	B = 16'h7011;
	ans = 16'hf38b;
	#20
	A = 16'h752e;
	B = 16'h75a4;
	ans = 16'h7969;
	#20
	A = 16'hf669;
	B = 16'hf31c;
	ans = 16'hf8fc;
	#20
	A = 16'hf483;
	B = 16'h7029;
	ans = 16'hf0dd;
	#20
	A = 16'h75a6;
	B = 16'h6d59;
	ans = 16'h76fc;
	#20
	A = 16'h73e4;
	B = 16'heff6;
	ans = 16'h6fd2;
	#20
	A = 16'h7341;
	B = 16'hf6e8;
	ans = 16'hf28f;
	#20
	A = 16'hf560;
	B = 16'hf3ed;
	ans = 16'hf8ab;
	#20
	A = 16'h7031;
	B = 16'h69ab;
	ans = 16'h719c;
	#20
	A = 16'h76e1;
	B = 16'hf463;
	ans = 16'h70fc;
	#20
	A = 16'h74cb;
	B = 16'h68eb;
	ans = 16'h7568;
	#20
	A = 16'hf20f;
	B = 16'h7554;
	ans = 16'h7099;
	#20
	A = 16'h7556;
	B = 16'hf38f;
	ans = 16'h6e3a;
	#20
	A = 16'h6869;
	B = 16'h7439;
	ans = 16'h74c6;
	#20
	A = 16'hf4f4;
	B = 16'h743f;
	ans = 16'he9a8;
	#20
	A = 16'h7302;
	B = 16'he20f;
	ans = 16'h72a1;
	#20
	A = 16'h5f62;
	B = 16'hf654;
	ans = 16'hf636;
	#20
	A = 16'h68c9;
	B = 16'h76ad;
	ans = 16'h7746;
	#20
	A = 16'h6e19;
	B = 16'hf6e8;
	ans = 16'hf562;
	#20
	A = 16'h6e05;
	B = 16'h75a7;
	ans = 16'h7728;
	#20
	A = 16'h70bf;
	B = 16'hf3ab;
	ans = 16'hedd8;
	#20
	A = 16'h741a;
	B = 16'hf5f4;
	ans = 16'hef68;
	#20
	A = 16'hea4c;
	B = 16'hf5f7;
	ans = 16'hf6c0;
	#20
	A = 16'h71bb;
	B = 16'hf425;
	ans = 16'hed1e;
	#20
	A = 16'h6c98;
	B = 16'h714e;
	ans = 16'h739a;
	#20
	A = 16'h72a9;
	B = 16'hf440;
	ans = 16'heb5c;
	#20
	A = 16'h722f;
	B = 16'h6db5;
	ans = 16'h7485;
	#20
	A = 16'h6702;
	B = 16'hf4f6;
	ans = 16'hf486;
	#20
	A = 16'hf67c;
	B = 16'hf534;
	ans = 16'hf9d8;
	#20
	A = 16'h7096;
	B = 16'hf374;
	ans = 16'hedbc;
	#20
	A = 16'h71f9;
	B = 16'h74ea;
	ans = 16'h77e6;
	#20
	A = 16'h72ed;
	B = 16'hf06a;
	ans = 16'h6d06;
	#20
	A = 16'h765f;
	B = 16'hf555;
	ans = 16'h6c28;
	#20
	A = 16'h7520;
	B = 16'hf368;
	ans = 16'h6db0;
	#20
	A = 16'hf446;
	B = 16'h7517;
	ans = 16'h6a88;
	#20
	A = 16'hf28b;
	B = 16'hf5c7;
	ans = 16'hf886;
	#20
	A = 16'hf740;
	B = 16'hec2c;
	ans = 16'hf826;
	#20
	A = 16'h773b;
	B = 16'h5cd5;
	ans = 16'h774e;
	#20
	A = 16'hece9;
	B = 16'hf651;
	ans = 16'hf78b;
	#20
	A = 16'hf16a;
	B = 16'h6864;
	ans = 16'hf051;
	#20
	A = 16'hf004;
	B = 16'hf311;
	ans = 16'hf58a;
	#20
	A = 16'hf10a;
	B = 16'hf336;
	ans = 16'hf620;
	#20
	A = 16'h7101;
	B = 16'h70fd;
	ans = 16'h74ff;
	#20
	A = 16'h7630;
	B = 16'h64f0;
	ans = 16'h767f;
	#20
	A = 16'he7f8;
	B = 16'h7615;
	ans = 16'h7596;
	#20
	A = 16'h7491;
	B = 16'hed0e;
	ans = 16'h729b;
	#20
	A = 16'h7309;
	B = 16'hf70e;
	ans = 16'hf313;
	#20
	A = 16'he84b;
	B = 16'h7311;
	ans = 16'h71fe;
	#20
	A = 16'h7104;
	B = 16'h5c11;
	ans = 16'h7125;
	#20
	A = 16'h671e;
	B = 16'hf2f5;
	ans = 16'hf211;
	#20
	A = 16'hf59d;
	B = 16'h768b;
	ans = 16'h6b70;
	#20
	A = 16'hf4c2;
	B = 16'h771c;
	ans = 16'h70b4;
	#20
	A = 16'h74f5;
	B = 16'h65a2;
	ans = 16'h754f;
	#20
	A = 16'h6e80;
	B = 16'hf04b;
	ans = 16'he82c;
	#20
	A = 16'h6cbb;
	B = 16'he681;
	ans = 16'h6a36;
	#20
	A = 16'hf46d;
	B = 16'h7125;
	ans = 16'hef6a;
	#20
	A = 16'h753f;
	B = 16'h7408;
	ans = 16'h78a4;
	#20
	A = 16'h7467;
	B = 16'h7375;
	ans = 16'h7811;
	#20
	A = 16'h6752;
	B = 16'hf641;
	ans = 16'hf5cc;
	#20
	A = 16'h751e;
	B = 16'hec41;
	ans = 16'h740e;
	#20
	A = 16'h7422;
	B = 16'h7287;
	ans = 16'h7766;
	#20
	A = 16'hf61a;
	B = 16'hee2a;
	ans = 16'hf7a4;
	#20
	A = 16'h7072;
	B = 16'h70c6;
	ans = 16'h749c;
	#20
	A = 16'hf426;
	B = 16'hf1d5;
	ans = 16'hf710;
	#20
	A = 16'h759c;
	B = 16'hf36a;
	ans = 16'h6f9c;
	#20
	A = 16'h71b0;
	B = 16'hf6f9;
	ans = 16'hf421;
	#20
	A = 16'hf386;
	B = 16'hf54e;
	ans = 16'hf888;
	#20
	A = 16'hf74d;
	B = 16'h763c;
	ans = 16'hec44;
	#20
	A = 16'hf057;
	B = 16'h758a;
	ans = 16'h72bd;
	#20
	A = 16'he31e;
	B = 16'h764c;
	ans = 16'h7613;
	#20
	A = 16'hf255;
	B = 16'hf38a;
	ans = 16'hf6f0;
	#20
	A = 16'h738a;
	B = 16'hf3cc;
	ans = 16'he020;
	#20
	A = 16'h6e09;
	B = 16'hef82;
	ans = 16'he5e4;
	#20
	A = 16'h690e;
	B = 16'h6b0a;
	ans = 16'h6e0c;
	#20
	A = 16'h6ee7;
	B = 16'h6df8;
	ans = 16'h7270;
	#20
	A = 16'hf332;
	B = 16'hf3a7;
	ans = 16'hf76c;
	#20
	A = 16'h747d;
	B = 16'he658;
	ans = 16'h7418;
	#20
	A = 16'h76e5;
	B = 16'h7499;
	ans = 16'h79bf;
	#20
	A = 16'hf71a;
	B = 16'hf637;
	ans = 16'hfaa8;
	#20
	A = 16'hf5f0;
	B = 16'h7340;
	ans = 16'hf0a0;
	#20
	A = 16'h72fe;
	B = 16'hf1c7;
	ans = 16'h68dc;
	#20
	A = 16'hf555;
	B = 16'h75ff;
	ans = 16'h6950;
	#20
	A = 16'hf45f;
	B = 16'h6b86;
	ans = 16'hf2dc;
	#20
	A = 16'h7113;
	B = 16'hf65e;
	ans = 16'hf3a9;
	#20
	A = 16'h751b;
	B = 16'h69ba;
	ans = 16'h75d2;
	#20
	A = 16'h6cf2;
	B = 16'hf3cd;
	ans = 16'hf154;
	#20
	A = 16'h764d;
	B = 16'h6d7a;
	ans = 16'h77ac;
	#20
	A = 16'hf43b;
	B = 16'hf4d9;
	ans = 16'hf88a;
	#20
	A = 16'hea81;
	B = 16'hf472;
	ans = 16'hf542;
	#20
	A = 16'h7712;
	B = 16'h720f;
	ans = 16'h790d;
	#20
	A = 16'hf4bb;
	B = 16'h70db;
	ans = 16'hf09b;
	#20
	A = 16'hdff3;
	B = 16'hf20e;
	ans = 16'hf24e;
	#20
	A = 16'hf5ba;
	B = 16'he907;
	ans = 16'hf65b;
	#20
	A = 16'hf216;
	B = 16'h71e0;
	ans = 16'hdec0;
	#20
	A = 16'hf01f;
	B = 16'h757f;
	ans = 16'h72df;
	#20
	A = 16'hf311;
	B = 16'hf2ea;
	ans = 16'hf6fe;
	#20
	A = 16'hf6f0;
	B = 16'hf407;
	ans = 16'hf97c;
	#20
	A = 16'h6eaf;
	B = 16'h686c;
	ans = 16'h7072;
	#20
	A = 16'hf73c;
	B = 16'h6f02;
	ans = 16'hf57c;
	#20
	A = 16'h741e;
	B = 16'hf5b1;
	ans = 16'hee4c;
	#20
	A = 16'heafe;
	B = 16'he887;
	ans = 16'hedc2;
	#20
	A = 16'h7610;
	B = 16'he2d9;
	ans = 16'h75d9;
	#20
	A = 16'hf32e;
	B = 16'hf6c0;
	ans = 16'hf92c;
	#20
	A = 16'hf0ed;
	B = 16'h7505;
	ans = 16'h711d;
	#20
	A = 16'hf4f6;
	B = 16'hf718;
	ans = 16'hfa07;
	#20
	A = 16'hf497;
	B = 16'hf07b;
	ans = 16'hf6d4;
	#20
	A = 16'h7601;
	B = 16'h76d7;
	ans = 16'h7a6c;
	#20
	A = 16'h76b2;
	B = 16'hd7ec;
	ans = 16'h76aa;
	#20
	A = 16'hf3dc;
	B = 16'hf2d7;
	ans = 16'hf75a;
	#20
	A = 16'h75f1;
	B = 16'h722f;
	ans = 16'h7884;
	#20
	A = 16'he815;
	B = 16'h7356;
	ans = 16'h7251;
	#20
	A = 16'h751e;
	B = 16'heef8;
	ans = 16'h72c0;
	#20
	A = 16'hdcbe;
	B = 16'hde3b;
	ans = 16'he17c;
	#20
	A = 16'hf549;
	B = 16'h6a40;
	ans = 16'hf481;
	#20
	A = 16'h65b3;
	B = 16'h7006;
	ans = 16'h70bc;
	#20
	A = 16'h7227;
	B = 16'h745a;
	ans = 16'h776e;
	#20
	A = 16'hf530;
	B = 16'hf47a;
	ans = 16'hf8d5;
	#20
	A = 16'h752e;
	B = 16'h7290;
	ans = 16'h783b;
	#20
	A = 16'h76e5;
	B = 16'hf01c;
	ans = 16'h74d7;
	#20
	A = 16'hf23e;
	B = 16'heef9;
	ans = 16'hf4dd;
	#20
	A = 16'h709b;
	B = 16'hef1a;
	ans = 16'h6838;
	#20
	A = 16'hf249;
	B = 16'hf73a;
	ans = 16'hf92f;
	#20
	A = 16'he820;
	B = 16'hf0da;
	ans = 16'hf1e2;
	#20
	A = 16'hf4c3;
	B = 16'h63ee;
	ans = 16'hf484;
	#20
	A = 16'h7227;
	B = 16'h7481;
	ans = 16'h7794;
	#20
	A = 16'hf5ba;
	B = 16'hf5dc;
	ans = 16'hf9cb;
	#20
	A = 16'hefb5;
	B = 16'h6085;
	ans = 16'hef24;
	#20
	A = 16'h6e89;
	B = 16'hf10c;
	ans = 16'heb1e;
	#20
	A = 16'hede9;
	B = 16'h708d;
	ans = 16'h6a62;
	#20
	A = 16'h74d8;
	B = 16'hf6e2;
	ans = 16'hf014;
	#20
	A = 16'hd901;
	B = 16'hed9d;
	ans = 16'hedc5;
	#20
	A = 16'hf379;
	B = 16'he88c;
	ans = 16'hf44e;
	#20
	A = 16'hf744;
	B = 16'h68e3;
	ans = 16'hf6a8;
	#20
	A = 16'hf535;
	B = 16'h7523;
	ans = 16'hdc80;
	#20
	A = 16'h735f;
	B = 16'hf18b;
	ans = 16'h6b50;
	#20
	A = 16'h6f73;
	B = 16'hf4e2;
	ans = 16'hf20a;
	#20
	A = 16'h7556;
	B = 16'h6cc5;
	ans = 16'h7687;
	#20
	A = 16'hf70c;
	B = 16'h7679;
	ans = 16'he898;
	#20
	A = 16'hf68e;
	B = 16'hde95;
	ans = 16'hf6a8;
	#20
	A = 16'hf452;
	B = 16'hf5ff;
	ans = 16'hf928;
	#20
	A = 16'h7526;
	B = 16'h7533;
	ans = 16'h792c;
	#20
	A = 16'h7338;
	B = 16'hf0a2;
	ans = 16'h6d2c;
	#20
	A = 16'hf2f7;
	B = 16'h68d0;
	ans = 16'hf1c3;
	#20
	A = 16'hf4a2;
	B = 16'h703b;
	ans = 16'hf109;
	#20
	A = 16'hf6dc;
	B = 16'h73b1;
	ans = 16'hf207;
	#20
	A = 16'hf70a;
	B = 16'h7435;
	ans = 16'hf1aa;
	#20
	A = 16'h737d;
	B = 16'h7449;
	ans = 16'h7804;
	#20
	A = 16'hee98;
	B = 16'hef6c;
	ans = 16'hf302;
	#20
	A = 16'h7044;
	B = 16'hf66b;
	ans = 16'hf449;
	#20
	A = 16'hf22a;
	B = 16'h72da;
	ans = 16'h6580;
	#20
	A = 16'hec62;
	B = 16'h6ecd;
	ans = 16'h68d6;
	#20
	A = 16'h7699;
	B = 16'hf5de;
	ans = 16'h69d8;
	#20
	A = 16'h75cd;
	B = 16'h7147;
	ans = 16'h7838;
	#20
	A = 16'h69cd;
	B = 16'h740b;
	ans = 16'h74c5;
	#20
	A = 16'h71d8;
	B = 16'hf6b5;
	ans = 16'hf392;
	#20
	A = 16'he519;
	B = 16'h773e;
	ans = 16'h76ec;
	#20
	A = 16'head3;
	B = 16'h75ed;
	ans = 16'h7513;
	#20
	A = 16'h74bd;
	B = 16'hf2e8;
	ans = 16'h6d24;
	#20
	A = 16'h7116;
	B = 16'hf1d4;
	ans = 16'he5f0;
	#20
	A = 16'h7282;
	B = 16'h76aa;
	ans = 16'h78f6;
	#20
	A = 16'hf12a;
	B = 16'hf404;
	ans = 16'hf699;
	#20
	A = 16'h768f;
	B = 16'h7713;
	ans = 16'h7ad1;
	#20
	A = 16'h7428;
	B = 16'h68fb;
	ans = 16'h74c7;
	#20
	A = 16'hf6f0;
	B = 16'hec0c;
	ans = 16'hf7f3;
	#20
	A = 16'h7636;
	B = 16'h7462;
	ans = 16'h794c;
	#20
	A = 16'h7055;
	B = 16'hf705;
	ans = 16'hf4da;
	#20
	A = 16'heff3;
	B = 16'h6d28;
	ans = 16'he996;
	#20
	A = 16'hf70b;
	B = 16'h7681;
	ans = 16'he850;
	#20
	A = 16'h6a67;
	B = 16'hf5cc;
	ans = 16'hf4ff;
	#20
	A = 16'hf5b4;
	B = 16'he8b4;
	ans = 16'hf64a;
	#20
	A = 16'hefc6;
	B = 16'hf57a;
	ans = 16'hf76c;
	#20
	A = 16'h740b;
	B = 16'h5af7;
	ans = 16'h7419;
	#20
	A = 16'h7075;
	B = 16'hf1ad;
	ans = 16'he8e0;
	#20
	A = 16'h6e1e;
	B = 16'h757f;
	ans = 16'h7706;
	#20
	A = 16'hf6ed;
	B = 16'hf1f8;
	ans = 16'hf8f4;
	#20
	A = 16'hf19e;
	B = 16'h741d;
	ans = 16'h6d38;
	#20
	A = 16'hef89;
	B = 16'h7604;
	ans = 16'h7422;
	#20
	A = 16'h60fb;
	B = 16'h737a;
	ans = 16'h73ca;
	#20
	A = 16'hf6bf;
	B = 16'h767f;
	ans = 16'he400;
	#20
	A = 16'h75b2;
	B = 16'h7294;
	ans = 16'h787e;
	#20
	A = 16'h7058;
	B = 16'hf0db;
	ans = 16'he418;
	#20
	A = 16'h6b19;
	B = 16'h75b1;
	ans = 16'h7694;
	#20
	A = 16'hef3b;
	B = 16'hf524;
	ans = 16'hf6f3;
	#20
	A = 16'h747c;
	B = 16'hf550;
	ans = 16'heaa0;
	#20
	A = 16'h7530;
	B = 16'h764b;
	ans = 16'h79be;
	#20
	A = 16'h7655;
	B = 16'hf508;
	ans = 16'h6d34;
	#20
	A = 16'h6d77;
	B = 16'hf207;
	ans = 16'hee97;
	#20
	A = 16'h702e;
	B = 16'h7034;
	ans = 16'h7431;
	#20
	A = 16'hf676;
	B = 16'hf5d6;
	ans = 16'hfa26;
	#20
	A = 16'h7742;
	B = 16'hf1e1;
	ans = 16'h7452;
	#20
	A = 16'he65e;
	B = 16'h756d;
	ans = 16'h7507;
	#20
	A = 16'h7212;
	B = 16'hf0c8;
	ans = 16'h6928;
	#20
	A = 16'h759e;
	B = 16'h760a;
	ans = 16'h79d4;
	#20
	A = 16'hf713;
	B = 16'he795;
	ans = 16'hf78c;
	#20
	A = 16'h6f01;
	B = 16'heddf;
	ans = 16'h6488;
	#20
	A = 16'h728c;
	B = 16'hf0fb;
	ans = 16'h6a44;
	#20
	A = 16'h74c9;
	B = 16'h6c95;
	ans = 16'h75ee;
	#20
	A = 16'h7338;
	B = 16'h716c;
	ans = 16'h7652;
	#20
	A = 16'hf58e;
	B = 16'h7577;
	ans = 16'hddc0;
	#20
	A = 16'h7555;
	B = 16'h6d45;
	ans = 16'h76a6;
	#20
	A = 16'hef86;
	B = 16'hf537;
	ans = 16'hf718;
	#20
	A = 16'hf60d;
	B = 16'hf2e5;
	ans = 16'hf8c0;
	#20
	A = 16'hf2a2;
	B = 16'h710e;
	ans = 16'hea50;
	#20
	A = 16'heda6;
	B = 16'h6e92;
	ans = 16'h6360;
	#20
	A = 16'hf0c4;
	B = 16'hf07b;
	ans = 16'hf4a0;
	#20
	A = 16'h6aa4;
	B = 16'h74f4;
	ans = 16'h75c8;
	#20
	A = 16'hed18;
	B = 16'h767b;
	ans = 16'h7535;
	#20
	A = 16'h74e7;
	B = 16'hf613;
	ans = 16'hecb0;
	#20
	A = 16'h74c5;
	B = 16'h73b9;
	ans = 16'h7851;
	#20
	A = 16'h733e;
	B = 16'he452;
	ans = 16'h72b4;
	#20
	A = 16'h7535;
	B = 16'hf6a5;
	ans = 16'hedc0;
	#20
	A = 16'h6ca1;
	B = 16'h774b;
	ans = 16'h783a;
	#20
	A = 16'hef96;
	B = 16'h68af;
	ans = 16'hed3e;
	#20
	A = 16'h6f98;
	B = 16'hf60a;
	ans = 16'hf424;
	#20
	A = 16'hf09b;
	B = 16'h76da;
	ans = 16'h748c;
	#20
	A = 16'hf3a0;
	B = 16'h6cf1;
	ans = 16'hf128;
	#20
	A = 16'h75b1;
	B = 16'hf586;
	ans = 16'h6160;
	#20
	A = 16'h71b6;
	B = 16'h7500;
	ans = 16'h77db;
	#20
	A = 16'hf69f;
	B = 16'hf407;
	ans = 16'hf953;
	#20
	A = 16'h709c;
	B = 16'h7194;
	ans = 16'h7518;
	#20
	A = 16'heb9d;
	B = 16'h7719;
	ans = 16'h7625;
	#20
	A = 16'h76e4;
	B = 16'hf392;
	ans = 16'h7236;
	#20
	A = 16'h74e6;
	B = 16'he716;
	ans = 16'h7475;
	#20
	A = 16'he140;
	B = 16'hf706;
	ans = 16'hf730;
	#20
	A = 16'hf3ea;
	B = 16'hf6b0;
	ans = 16'hf952;
	#20
	A = 16'hf588;
	B = 16'h7691;
	ans = 16'h6c24;
	#20
	A = 16'h6250;
	B = 16'he49e;
	ans = 16'hddd8;
	#20
	A = 16'hf1db;
	B = 16'h745d;
	ans = 16'h6dbe;
	#20
	A = 16'h72b4;
	B = 16'h6a43;
	ans = 16'h7422;
	#20
	A = 16'h733b;
	B = 16'h7701;
	ans = 16'h794f;
	#20
	A = 16'hec26;
	B = 16'h7265;
	ans = 16'h7052;
	#20
	A = 16'h76e8;
	B = 16'h72c9;
	ans = 16'h7926;
	#20
	A = 16'h7440;
	B = 16'h6fff;
	ans = 16'h7640;
	#20
	A = 16'hdc93;
	B = 16'h7252;
	ans = 16'h722d;
	#20
	A = 16'h6dce;
	B = 16'hf27a;
	ans = 16'hef26;
	#20
	A = 16'h764f;
	B = 16'hf044;
	ans = 16'h742d;
	#20
	A = 16'h5809;
	B = 16'h7432;
	ans = 16'h743a;
	#20
	A = 16'hee84;
	B = 16'hf0e4;
	ans = 16'hf413;
	#20
	A = 16'hf6cb;
	B = 16'hf060;
	ans = 16'hf87e;
	#20
	A = 16'h7113;
	B = 16'hee16;
	ans = 16'h6c10;
	#20
	A = 16'h774e;
	B = 16'h7506;
	ans = 16'h7a2a;
	#20
	A = 16'hf2a5;
	B = 16'hf11f;
	ans = 16'hf5e2;
	#20
	A = 16'h7228;
	B = 16'h752c;
	ans = 16'h7820;
	#20
	A = 16'hf0ba;
	B = 16'h6eb6;
	ans = 16'he97c;
	#20
	A = 16'h767c;
	B = 16'hf3e0;
	ans = 16'h7118;
	#20
	A = 16'hf593;
	B = 16'h7556;
	ans = 16'he3a0;
	#20
	A = 16'h740d;
	B = 16'hf199;
	ans = 16'h6d02;
	#20
	A = 16'h72a5;
	B = 16'hf027;
	ans = 16'h6cfc;
	#20
	A = 16'hf1f6;
	B = 16'hf531;
	ans = 16'hf816;
	#20
	A = 16'h6dd5;
	B = 16'h73d2;
	ans = 16'h755e;
	#20
	A = 16'h7099;
	B = 16'h7593;
	ans = 16'h77e0;
	#20
	A = 16'hec1e;
	B = 16'h706c;
	ans = 16'h6cba;
	#20
	A = 16'h6927;
	B = 16'h6cfd;
	ans = 16'h6f90;
	#20
	A = 16'hf0a7;
	B = 16'hed01;
	ans = 16'hf328;
	#20
	A = 16'hf53f;
	B = 16'h7746;
	ans = 16'h700e;
	#20
	A = 16'hf195;
	B = 16'hf5c5;
	ans = 16'hf848;
	#20
	A = 16'h6d58;
	B = 16'hf464;
	ans = 16'hf21c;
	#20
	A = 16'h76e8;
	B = 16'hf42a;
	ans = 16'h717c;
	#20
	A = 16'h7652;
	B = 16'h7672;
	ans = 16'h7a62;
	#20
	A = 16'h6c6f;
	B = 16'hf51c;
	ans = 16'hf400;
	#20
	A = 16'h7293;
	B = 16'hf026;
	ans = 16'h6cda;
	#20
	A = 16'hedc7;
	B = 16'h750f;
	ans = 16'h733a;
	#20
	A = 16'hf64c;
	B = 16'hf15f;
	ans = 16'hf87e;
	#20
	A = 16'hefc3;
	B = 16'hedb5;
	ans = 16'hf2bc;
	#20
	A = 16'h696b;
	B = 16'hf576;
	ans = 16'hf4c9;
	#20
	A = 16'h706c;
	B = 16'h7178;
	ans = 16'h74f2;
	#20
	A = 16'h6cb1;
	B = 16'h7227;
	ans = 16'h7440;
	#20
	A = 16'hef4d;
	B = 16'h6401;
	ans = 16'hee4d;
	#20
	A = 16'hee2e;
	B = 16'hf5a6;
	ans = 16'hf732;
	#20
	A = 16'h744e;
	B = 16'hf736;
	ans = 16'hf1d0;
	#20
	A = 16'hed02;
	B = 16'h7078;
	ans = 16'h6bdc;
	#20
	A = 16'hf736;
	B = 16'h60bd;
	ans = 16'hf710;
	#20
	A = 16'h7717;
	B = 16'hf0bc;
	ans = 16'h74b9;
	#20
	A = 16'he5a8;
	B = 16'hf672;
	ans = 16'hf6cc;
	#20
	A = 16'h70db;
	B = 16'h75bf;
	ans = 16'h7816;
	#20
	A = 16'h76a4;
	B = 16'hf4b2;
	ans = 16'h6fc8;
	#20
	A = 16'h6e5b;
	B = 16'h7663;
	ans = 16'h77fa;
	#20
	A = 16'hf023;
	B = 16'hefa8;
	ans = 16'hf3f7;
	#20
	A = 16'h6975;
	B = 16'h6984;
	ans = 16'h6d7c;
	#20
	A = 16'hf319;
	B = 16'hf6b4;
	ans = 16'hf920;
	#20
	A = 16'hef01;
	B = 16'h7494;
	ans = 16'h71a8;
	#20
	A = 16'h5ce6;
	B = 16'h705f;
	ans = 16'h7086;
	#20
	A = 16'h6bfa;
	B = 16'h70a8;
	ans = 16'h72a6;
	#20
	A = 16'h75c0;
	B = 16'hee2e;
	ans = 16'h7434;
	#20
	A = 16'hf525;
	B = 16'h6956;
	ans = 16'hf47a;
	#20
	A = 16'he56c;
	B = 16'hf733;
	ans = 16'hf78a;
	#20
	A = 16'h756e;
	B = 16'hf4aa;
	ans = 16'h6a20;
	#20
	A = 16'hefcf;
	B = 16'h76d3;
	ans = 16'h74df;
	#20
	A = 16'h74f8;
	B = 16'h7083;
	ans = 16'h773a;
	#20
	A = 16'h6c20;
	B = 16'h7282;
	ans = 16'h7449;
	#20
	A = 16'hf4bf;
	B = 16'hf6ac;
	ans = 16'hf9b6;
	#20
	A = 16'hec54;
	B = 16'hf496;
	ans = 16'hf5ab;
	#20
	A = 16'h721b;
	B = 16'h6cec;
	ans = 16'h7448;
	#20
	A = 16'h6d40;
	B = 16'h740b;
	ans = 16'h755b;
	#20
	A = 16'h6abf;
	B = 16'hf100;
	ans = 16'heea0;
	#20
	A = 16'hf644;
	B = 16'hf472;
	ans = 16'hf95b;
	#20
	A = 16'hec72;
	B = 16'h62bf;
	ans = 16'heb34;
	#20
	A = 16'h7566;
	B = 16'hede0;
	ans = 16'h73dc;
	#20
	A = 16'hf517;
	B = 16'hf5a0;
	ans = 16'hf95c;
	#20
	A = 16'hf45a;
	B = 16'h747a;
	ans = 16'h6000;
	#20
	A = 16'h6f92;
	B = 16'h7414;
	ans = 16'h75f8;
	#20
	A = 16'hf0fc;
	B = 16'hf11d;
	ans = 16'hf50c;
	#20
	A = 16'hf49d;
	B = 16'hf6e5;
	ans = 16'hf9c1;
	#20
	A = 16'hec56;
	B = 16'hec4c;
	ans = 16'hf051;
	#20
	A = 16'h74fc;
	B = 16'h720d;
	ans = 16'h7801;
	#20
	A = 16'hf59e;
	B = 16'hf432;
	ans = 16'hf8e8;
	#20
	A = 16'h73b3;
	B = 16'hef4b;
	ans = 16'h700e;
	#20
	A = 16'h6e9f;
	B = 16'h7573;
	ans = 16'h771b;
	#20
	A = 16'h7137;
	B = 16'hf6fa;
	ans = 16'hf45e;
	#20
	A = 16'hf271;
	B = 16'h755f;
	ans = 16'h704d;
	#20
	A = 16'h73f5;
	B = 16'hed09;
	ans = 16'h7170;
	#20
	A = 16'h738c;
	B = 16'h6c7b;
	ans = 16'h74e5;
	#20
	A = 16'hf237;
	B = 16'hf5a2;
	ans = 16'hf85f;
	#20
	A = 16'h7368;
	B = 16'h72ba;
	ans = 16'h7711;
	#20
	A = 16'hf1f3;
	B = 16'hf456;
	ans = 16'hf750;
	#20
	A = 16'hf2ad;
	B = 16'hf1f9;
	ans = 16'hf653;
	#20
	A = 16'h73af;
	B = 16'hef84;
	ans = 16'h6fda;
	#20
	A = 16'hf721;
	B = 16'h7522;
	ans = 16'heffc;
	#20
	A = 16'h7048;
	B = 16'hf69a;
	ans = 16'hf476;
	#20
	A = 16'h728b;
	B = 16'h74ea;
	ans = 16'h7818;
	#20
	A = 16'h7661;
	B = 16'h6ccc;
	ans = 16'h7794;
	#20
	A = 16'hea71;
	B = 16'hee20;
	ans = 16'hf0ac;
	#20
	A = 16'h772d;
	B = 16'h743e;
	ans = 16'h79b6;
	#20
	A = 16'hec16;
	B = 16'hf69f;
	ans = 16'hf7a4;
	#20
	A = 16'h75e3;
	B = 16'h7413;
	ans = 16'h78fb;
	#20
	A = 16'hf550;
	B = 16'h76b5;
	ans = 16'h6d94;
	#20
	A = 16'h74d8;
	B = 16'hf602;
	ans = 16'heca8;
	#20
	A = 16'hf518;
	B = 16'h76d7;
	ans = 16'h6efc;
	#20
	A = 16'heb23;
	B = 16'h6b2f;
	ans = 16'h4e00;
	#20
	A = 16'hf64f;
	B = 16'h6ee5;
	ans = 16'hf496;
	#20
	A = 16'hecf0;
	B = 16'hf5ca;
	ans = 16'hf706;
	#20
	A = 16'h6da0;
	B = 16'hea86;
	ans = 16'h68ba;
	#20
	A = 16'hf21e;
	B = 16'hf5a6;
	ans = 16'hf85a;
	#20
	A = 16'hf2c2;
	B = 16'hf620;
	ans = 16'hf8c0;
	#20
	A = 16'hec8b;
	B = 16'hec14;
	ans = 16'hf050;
	#20
	A = 16'h7733;
	B = 16'h6fdc;
	ans = 16'h7895;
	#20
	A = 16'h70c0;
	B = 16'hea86;
	ans = 16'h6e3d;
	#20
	A = 16'hef9a;
	B = 16'h75e8;
	ans = 16'h7402;
	#20
	A = 16'hedc4;
	B = 16'h7661;
	ans = 16'h74f0;
	#20
	A = 16'h740a;
	B = 16'hf068;
	ans = 16'h6f58;
	#20
	A = 16'hf407;
	B = 16'hf4af;
	ans = 16'hf85b;
	#20
	A = 16'hf5dc;
	B = 16'he926;
	ans = 16'hf681;
	#20
	A = 16'hf557;
	B = 16'hf6b6;
	ans = 16'hfa06;
	#20
	A = 16'hf292;
	B = 16'hf6e5;
	ans = 16'hf917;
	#20
	A = 16'hf4a7;
	B = 16'hec4d;
	ans = 16'hf5ba;
	#20
	A = 16'hf186;
	B = 16'h5f74;
	ans = 16'hf14a;
	#20
	A = 16'hf595;
	B = 16'hf52c;
	ans = 16'hf960;
	#20
	A = 16'hf213;
	B = 16'h6744;
	ans = 16'hf12a;
	#20
	A = 16'h75c9;
	B = 16'hf232;
	ans = 16'h7160;
	#20
	A = 16'hf375;
	B = 16'heb2c;
	ans = 16'hf4a0;
	#20
	A = 16'h72dd;
	B = 16'hf56f;
	ans = 16'hf001;
	#20
	A = 16'hf5e1;
	B = 16'h7226;
	ans = 16'hf19c;
	#20
	A = 16'hf6e8;
	B = 16'h6fd8;
	ans = 16'hf4f2;
	#20
	A = 16'hf714;
	B = 16'h76c1;
	ans = 16'he530;
	#20
	A = 16'h74f5;
	B = 16'h71e6;
	ans = 16'h77e8;
	#20
	A = 16'h7451;
	B = 16'h5894;
	ans = 16'h745a;
	#20
	A = 16'h76cf;
	B = 16'hecd3;
	ans = 16'h759a;
	#20
	A = 16'h7427;
	B = 16'h698d;
	ans = 16'h74d9;
	#20
	A = 16'h76d2;
	B = 16'hed8f;
	ans = 16'h756e;
	#20
	A = 16'h6f8d;
	B = 16'h6c3c;
	ans = 16'h71e4;
	#20
	A = 16'h72bd;
	B = 16'hf378;
	ans = 16'he5d8;
	#20
	A = 16'h6ef3;
	B = 16'h76f1;
	ans = 16'h7857;
	#20
	A = 16'hf0ab;
	B = 16'he21b;
	ans = 16'hf10d;
	#20
	A = 16'hf50f;
	B = 16'hf4c1;
	ans = 16'hf8e8;
	#20
	A = 16'hf654;
	B = 16'h690f;
	ans = 16'hf5b2;
	#20
	A = 16'h76c8;
	B = 16'hf747;
	ans = 16'he7f0;
	#20
	A = 16'h744d;
	B = 16'h746c;
	ans = 16'h785c;
	#20
	A = 16'h7249;
	B = 16'hf55a;
	ans = 16'hf06b;
	#20
	A = 16'h7580;
	B = 16'hf65a;
	ans = 16'head0;
	#20
	A = 16'hf3d7;
	B = 16'he57b;
	ans = 16'hf443;
	#20
	A = 16'h73e9;
	B = 16'hf1c6;
	ans = 16'h6c46;
	#20
	A = 16'hf667;
	B = 16'h7538;
	ans = 16'hecbc;
	#20
	A = 16'he46d;
	B = 16'h726b;
	ans = 16'h71dd;
	#20
	A = 16'h74be;
	B = 16'h741a;
	ans = 16'h786c;
	#20
	A = 16'h6b83;
	B = 16'h76bc;
	ans = 16'h77ac;
	#20
	A = 16'hf284;
	B = 16'h6e34;
	ans = 16'heed4;
	#20
	A = 16'hf0a7;
	B = 16'hf022;
	ans = 16'hf464;
	#20
	A = 16'h7421;
	B = 16'h6f94;
	ans = 16'h7606;
	#20
	A = 16'hee44;
	B = 16'hef0f;
	ans = 16'hf2aa;
	#20
	A = 16'hf63c;
	B = 16'hf4cc;
	ans = 16'hf984;
	#20
	A = 16'h7076;
	B = 16'h769e;
	ans = 16'h786c;
	#20
	A = 16'h76d1;
	B = 16'h7565;
	ans = 16'h7a1b;
	#20
	A = 16'hf73b;
	B = 16'hf566;
	ans = 16'hfa50;
	#20
	A = 16'hf4d5;
	B = 16'h71b0;
	ans = 16'heff4;
	#20
	A = 16'h7653;
	B = 16'hf4b6;
	ans = 16'h6e74;
	#20
	A = 16'h7157;
	B = 16'hf46e;
	ans = 16'hef0a;
	#20
	A = 16'hf3a6;
	B = 16'hf40b;
	ans = 16'hf7de;
	#20
	A = 16'hf39b;
	B = 16'hf094;
	ans = 16'hf618;
	#20
	A = 16'he99a;
	B = 16'hf60a;
	ans = 16'hf6bd;
	#20
	A = 16'h75a4;
	B = 16'h7744;
	ans = 16'h7a74;
	#20
	A = 16'h7113;
	B = 16'hf580;
	ans = 16'hf1ed;
	#20
	A = 16'h7315;
	B = 16'h76f0;
	ans = 16'h793d;
	#20
	A = 16'h70c1;
	B = 16'h6989;
	ans = 16'h7223;
	#20
	A = 16'h73f1;
	B = 16'h728a;
	ans = 16'h773e;
	#20
	A = 16'heca5;
	B = 16'h7083;
	ans = 16'h6c61;
	#20
	A = 16'he9ac;
	B = 16'h7751;
	ans = 16'h769c;
	#20
	A = 16'h7101;
	B = 16'h74b9;
	ans = 16'h773a;
	#20
	A = 16'h758b;
	B = 16'hf493;
	ans = 16'h6bc0;
	#20
	A = 16'h7646;
	B = 16'hf5ac;
	ans = 16'h68d0;
	#20
	A = 16'h6ff9;
	B = 16'h74a3;
	ans = 16'h76a1;
	#20
	A = 16'h7720;
	B = 16'hf164;
	ans = 16'h746e;
	#20
	A = 16'hf042;
	B = 16'hec5d;
	ans = 16'hf270;
	#20
	A = 16'heffb;
	B = 16'h5262;
	ans = 16'hefee;
	#20
	A = 16'h7269;
	B = 16'hf5ee;
	ans = 16'hf173;
	#20
	A = 16'h7736;
	B = 16'h729e;
	ans = 16'h7942;
	#20
	A = 16'h6986;
	B = 16'hf0ae;
	ans = 16'hee99;
	#20
	A = 16'hea60;
	B = 16'hf0f4;
	ans = 16'hf28c;
	#20
	A = 16'h7422;
	B = 16'h7375;
	ans = 16'h77dc;
	#20
	A = 16'hf280;
	B = 16'h76d4;
	ans = 16'h7328;
	#20
	A = 16'h72b9;
	B = 16'he121;
	ans = 16'h7267;
	#20
	A = 16'hf5cb;
	B = 16'h7517;
	ans = 16'he9a0;
	#20
	A = 16'h73bf;
	B = 16'he5de;
	ans = 16'h7303;
	#20
	A = 16'hf2f8;
	B = 16'h7183;
	ans = 16'he9d4;
	#20
	A = 16'h76ac;
	B = 16'hf729;
	ans = 16'he7d0;
	#20
	A = 16'h6fe1;
	B = 16'h6e9e;
	ans = 16'h7340;
	#20
	A = 16'hf66a;
	B = 16'heacb;
	ans = 16'hf743;
	#20
	A = 16'hf697;
	B = 16'h6e0e;
	ans = 16'hf514;
	#20
	A = 16'hf6d4;
	B = 16'h73a8;
	ans = 16'hf200;
	#20
	A = 16'h72b6;
	B = 16'h6890;
	ans = 16'h73da;
	#20
	A = 16'h770d;
	B = 16'hef7d;
	ans = 16'h752e;
	#20
	A = 16'h7354;
	B = 16'he9e4;
	ans = 16'h71db;
	#20
	A = 16'hf2d9;
	B = 16'hf3d1;
	ans = 16'hf755;
	#20
	A = 16'h73da;
	B = 16'he967;
	ans = 16'h7280;
	#20
	A = 16'hf224;
	B = 16'h72a7;
	ans = 16'h6418;
	#20
	A = 16'hf570;
	B = 16'hf622;
	ans = 16'hf9c9;
	#20
	A = 16'hf43a;
	B = 16'h7591;
	ans = 16'h6d5c;
	#20
	A = 16'heb30;
	B = 16'h6a90;
	ans = 16'hdd00;
	#20
	A = 16'h7595;
	B = 16'h762a;
	ans = 16'h79e0;
	#20
	A = 16'hef41;
	B = 16'hf48e;
	ans = 16'hf65e;
	#20
	A = 16'h75a6;
	B = 16'hf26e;
	ans = 16'h70de;
	#20
	A = 16'h703f;
	B = 16'h7445;
	ans = 16'h7664;
	#20
	A = 16'h75cc;
	B = 16'hf475;
	ans = 16'h6d5c;
	#20
	A = 16'h7517;
	B = 16'h7295;
	ans = 16'h7831;
	#20
	A = 16'hf66c;
	B = 16'hf6a5;
	ans = 16'hfa88;
	#20
	A = 16'h74e2;
	B = 16'hf664;
	ans = 16'hee08;
	#20
	A = 16'hf234;
	B = 16'hedeb;
	ans = 16'hf495;
	#20
	A = 16'hea89;
	B = 16'hf5a9;
	ans = 16'hf67a;
	#20
	A = 16'h74af;
	B = 16'h770c;
	ans = 16'h79de;
	#20
	A = 16'h754e;
	B = 16'hf239;
	ans = 16'h7063;
	#20
	A = 16'h6ca0;
	B = 16'hf280;
	ans = 16'hf030;
	#20
	A = 16'hee8a;
	B = 16'hf0ad;
	ans = 16'hf3f2;
	#20
	A = 16'h6d84;
	B = 16'h6cda;
	ans = 16'h712f;
	#20
	A = 16'h641e;
	B = 16'h75b5;
	ans = 16'h75f7;
	#20
	A = 16'hea75;
	B = 16'he74f;
	ans = 16'hed0e;
	#20
	A = 16'hf0a5;
	B = 16'hf62f;
	ans = 16'hf841;
	#20
	A = 16'hea59;
	B = 16'hebf1;
	ans = 16'hef25;
	#20
	A = 16'hea99;
	B = 16'h7643;
	ans = 16'h7570;
	#20
	A = 16'h659e;
	B = 16'hf194;
	ans = 16'hf0e0;
	#20
	A = 16'heb22;
	B = 16'he470;
	ans = 16'hecad;
	#20
	A = 16'hf039;
	B = 16'hf5d0;
	ans = 16'hf7ec;
	#20
	A = 16'h74e2;
	B = 16'hf699;
	ans = 16'heedc;
	#20
	A = 16'hed3b;
	B = 16'h685f;
	ans = 16'hea17;
	#20
	A = 16'hf519;
	B = 16'h7746;
	ans = 16'h705a;
	#20
	A = 16'hf64a;
	B = 16'hf18d;
	ans = 16'hf888;
	#20
	A = 16'h7646;
	B = 16'h7548;
	ans = 16'h79c7;
	#20
	A = 16'hf6fd;
	B = 16'hf5ba;
	ans = 16'hfa5c;
	#20
	A = 16'hf172;
	B = 16'hf3f0;
	ans = 16'hf6b1;
	#20
	A = 16'hf20d;
	B = 16'hf538;
	ans = 16'hf81f;
	#20
	A = 16'he568;
	B = 16'h7501;
	ans = 16'h74aa;
	#20
	A = 16'h735c;
	B = 16'hf41f;
	ans = 16'he710;
	#20
	A = 16'h72f5;
	B = 16'h70e8;
	ans = 16'h75ee;
	#20
	A = 16'hf54f;
	B = 16'hdc31;
	ans = 16'hf560;
	#20
	A = 16'h7354;
	B = 16'h7259;
	ans = 16'h76d6;
	#20
	A = 16'h755c;
	B = 16'h7534;
	ans = 16'h7948;
	#20
	A = 16'h7403;
	B = 16'hf61f;
	ans = 16'hf038;
	#20
	A = 16'he712;
	B = 16'hef24;
	ans = 16'hf074;
	#20
	A = 16'hee6f;
	B = 16'hf406;
	ans = 16'hf5a2;
	#20
	A = 16'hf547;
	B = 16'hf197;
	ans = 16'hf809;
	#20
	A = 16'hf4a2;
	B = 16'h6ab3;
	ans = 16'hf397;
	#20
	A = 16'h705c;
	B = 16'hf1d7;
	ans = 16'he9ec;
	#20
	A = 16'hf34c;
	B = 16'hf20b;
	ans = 16'hf6ac;
	#20
	A = 16'h7271;
	B = 16'h7708;
	ans = 16'h7920;
	#20
	A = 16'h6af7;
	B = 16'hf326;
	ans = 16'hf168;
	#20
	A = 16'hf40f;
	B = 16'h719d;
	ans = 16'hed02;
	#20
	A = 16'hec94;
	B = 16'hf420;
	ans = 16'hf545;
	#20
	A = 16'hec90;
	B = 16'h4937;
	ans = 16'hec8d;
	#20
	A = 16'hf53b;
	B = 16'h762f;
	ans = 16'h6ba0;
	#20
	A = 16'hf6ed;
	B = 16'h6e86;
	ans = 16'hf54c;
	#20
	A = 16'h7148;
	B = 16'h74a7;
	ans = 16'h774b;
	#20
	A = 16'hf6d7;
	B = 16'h76f5;
	ans = 16'h5f80;
	#20
	A = 16'h7064;
	B = 16'h71b3;
	ans = 16'h750c;
	#20
	A = 16'h70c3;
	B = 16'h7528;
	ans = 16'h778a;
	#20
	A = 16'h74a9;
	B = 16'hf521;
	ans = 16'he780;
	#20
	A = 16'h7521;
	B = 16'hf386;
	ans = 16'h6d78;
	#20
	A = 16'hf3be;
	B = 16'hf5d9;
	ans = 16'hf8dc;
	#20
	A = 16'hf5f3;
	B = 16'hf090;
	ans = 16'hf81e;
	#20
	A = 16'h7155;
	B = 16'he911;
	ans = 16'h7011;
	#20
	A = 16'h74eb;
	B = 16'h7577;
	ans = 16'h7931;
	#20
	A = 16'hf6fd;
	B = 16'he12e;
	ans = 16'hf726;
	#20
	A = 16'hf5c6;
	B = 16'heee1;
	ans = 16'hf77e;
	#20
	A = 16'heb13;
	B = 16'hf688;
	ans = 16'hf76a;
	#20
	A = 16'hf605;
	B = 16'h6300;
	ans = 16'hf5cd;
	#20
	A = 16'h76f7;
	B = 16'hf4cd;
	ans = 16'h7054;
	#20
	A = 16'h7237;
	B = 16'h6989;
	ans = 16'h7399;
	#20
	A = 16'h769a;
	B = 16'h7428;
	ans = 16'h7961;
	#20
	A = 16'h7182;
	B = 16'hf531;
	ans = 16'hf0e0;
	#20
	A = 16'h6918;
	B = 16'hdc66;
	ans = 16'h688b;
	#20
	A = 16'hf61c;
	B = 16'hf672;
	ans = 16'hfa47;
	#20
	A = 16'h7599;
	B = 16'h746e;
	ans = 16'h7904;
	#20
	A = 16'h6b9c;
	B = 16'he8e2;
	ans = 16'h6574;
	#20
	A = 16'hf49c;
	B = 16'h7182;
	ans = 16'hef6c;
	#20
	A = 16'h6ed0;
	B = 16'h7492;
	ans = 16'h7646;
	#20
	A = 16'h7711;
	B = 16'h6eec;
	ans = 16'h7866;
	#20
	A = 16'h7204;
	B = 16'hf630;
	ans = 16'hf25c;
	#20
	A = 16'h746b;
	B = 16'hf42b;
	ans = 16'h6400;
	#20
	A = 16'hf214;
	B = 16'h770e;
	ans = 16'h7404;
	#20
	A = 16'hf5e4;
	B = 16'h73fa;
	ans = 16'hef9c;
	#20
	A = 16'h6749;
	B = 16'he8e9;
	ans = 16'he112;
	#20
	A = 16'h7559;
	B = 16'hf633;
	ans = 16'head0;
	#20
	A = 16'h6cbf;
	B = 16'hf129;
	ans = 16'hed93;
	#20
	A = 16'h742c;
	B = 16'h735b;
	ans = 16'h77da;
	#20
	A = 16'h6b62;
	B = 16'h72d4;
	ans = 16'h7456;
	#20
	A = 16'h75fa;
	B = 16'hf655;
	ans = 16'he5b0;
	#20
	A = 16'h76f5;
	B = 16'hf423;
	ans = 16'h71a4;
	#20
	A = 16'hf5f6;
	B = 16'hec35;
	ans = 16'hf703;
	#20
	A = 16'hedf1;
	B = 16'h7356;
	ans = 16'h705e;
	#20
	A = 16'he8ee;
	B = 16'he559;
	ans = 16'heb9a;
	#20
	A = 16'h6b12;
	B = 16'h739f;
	ans = 16'h74b2;
	#20
	A = 16'h6e0a;
	B = 16'h7244;
	ans = 16'h74a4;
	#20
	A = 16'h7562;
	B = 16'h7124;
	ans = 16'h77f4;
	#20
	A = 16'h6f61;
	B = 16'h6f32;
	ans = 16'h734a;
	#20
	A = 16'h74b0;
	B = 16'h7283;
	ans = 16'h77f2;
	#20
	A = 16'h76a5;
	B = 16'h7658;
	ans = 16'h7a7e;
	#20
	A = 16'h773f;
	B = 16'h719c;
	ans = 16'h7906;
	#20
	A = 16'h7563;
	B = 16'h70d5;
	ans = 16'h77ce;
	#20
	A = 16'h7281;
	B = 16'h6fdb;
	ans = 16'h7537;
	#20
	A = 16'h607f;
	B = 16'hf53a;
	ans = 16'hf516;
	#20
	A = 16'hf630;
	B = 16'h7267;
	ans = 16'hf1f9;
	#20
	A = 16'hed74;
	B = 16'h7653;
	ans = 16'h74f6;
	#20
	A = 16'h740d;
	B = 16'hf612;
	ans = 16'hf00a;
	#20
	A = 16'h75ee;
	B = 16'hf3ce;
	ans = 16'h700e;
	#20
	A = 16'hf499;
	B = 16'hf1cf;
	ans = 16'hf780;
	#20
	A = 16'h6f05;
	B = 16'hf001;
	ans = 16'he3e8;
	#20
	A = 16'hf5a3;
	B = 16'h76e6;
	ans = 16'h6d0c;
	#20
	A = 16'h60ec;
	B = 16'h7585;
	ans = 16'h75ac;
	#20
	A = 16'h6237;
	B = 16'h773c;
	ans = 16'h776e;
	#20
	A = 16'h74ab;
	B = 16'hec8d;
	ans = 16'h7310;
	#20
	A = 16'h6ef2;
	B = 16'hf6b5;
	ans = 16'hf4f8;
	#20
	A = 16'hf635;
	B = 16'h75cc;
	ans = 16'he690;
	#20
	A = 16'hf340;
	B = 16'hf1fe;
	ans = 16'hf69f;
	#20
	A = 16'h76f4;
	B = 16'hf59d;
	ans = 16'h6d5c;
	#20
	A = 16'h7209;
	B = 16'h740c;
	ans = 16'h7710;
	#20
	A = 16'hf616;
	B = 16'h7464;
	ans = 16'heec8;
	#20
	A = 16'hf4ef;
	B = 16'hf418;
	ans = 16'hf884;
	#20
	A = 16'h7603;
	B = 16'h763c;
	ans = 16'h7a20;
	#20
	A = 16'hf12d;
	B = 16'h75e3;
	ans = 16'h7299;
	#20
	A = 16'hf541;
	B = 16'hf5ab;
	ans = 16'hf976;
	#20
	A = 16'hf602;
	B = 16'he37f;
	ans = 16'hf63e;
	#20
	A = 16'hf5c3;
	B = 16'h74db;
	ans = 16'heb40;
	#20
	A = 16'hf22e;
	B = 16'h6c49;
	ans = 16'hf00a;
	#20
	A = 16'he0b9;
	B = 16'h6bba;
	ans = 16'h6a8c;
	#20
	A = 16'hf02b;
	B = 16'hece4;
	ans = 16'hf29d;
	#20
	A = 16'h749f;
	B = 16'h73a3;
	ans = 16'h7838;
	#20
	A = 16'hf0cc;
	B = 16'hf570;
	ans = 16'hf7d6;
	#20
	A = 16'h6fd7;
	B = 16'hef01;
	ans = 16'h62b0;
	#20
	A = 16'h71c3;
	B = 16'h6e7d;
	ans = 16'h7481;
	#20
	A = 16'h745b;
	B = 16'hf637;
	ans = 16'hef70;
	#20
	A = 16'hf6b3;
	B = 16'hf2e8;
	ans = 16'hf914;
	#20
	A = 16'hf39b;
	B = 16'he60e;
	ans = 16'hf42e;
	#20
	A = 16'h760c;
	B = 16'h7452;
	ans = 16'h792f;
	#20
	A = 16'h7738;
	B = 16'hee1d;
	ans = 16'h75b1;
	#20
	A = 16'h7463;
	B = 16'h733a;
	ans = 16'h7800;
	#20
	A = 16'hf5d7;
	B = 16'h74a2;
	ans = 16'hecd4;
	#20
	A = 16'hf434;
	B = 16'h7592;
	ans = 16'h6d78;
	#20
	A = 16'hf00d;
	B = 16'hec23;
	ans = 16'hf21e;
	#20
	A = 16'hec10;
	B = 16'h629f;
	ans = 16'hea78;
	#20
	A = 16'h7298;
	B = 16'hf06b;
	ans = 16'h6c5a;
	#20
	A = 16'hf530;
	B = 16'hf3ca;
	ans = 16'hf88a;
	#20
	A = 16'h76ca;
	B = 16'hf212;
	ans = 16'h7382;
	#20
	A = 16'heef1;
	B = 16'h71bb;
	ans = 16'h6c85;
	#20
	A = 16'h71de;
	B = 16'h7457;
	ans = 16'h7746;
	#20
	A = 16'h75ad;
	B = 16'hf5e1;
	ans = 16'he280;
	#20
	A = 16'hf21e;
	B = 16'h6b88;
	ans = 16'hf03c;
	#20
	A = 16'h6ad5;
	B = 16'hf472;
	ans = 16'hf32f;
	#20
	A = 16'h740a;
	B = 16'h74b8;
	ans = 16'h7861;
	#20
	A = 16'h75c7;
	B = 16'hecec;
	ans = 16'h748c;
	#20
	A = 16'h728c;
	B = 16'hf5d8;
	ans = 16'hf124;
	#20
	A = 16'hf6f0;
	B = 16'hf406;
	ans = 16'hf97b;
	#20
	A = 16'hef9a;
	B = 16'hf668;
	ans = 16'hf827;
	#20
	A = 16'h66a9;
	B = 16'hf64a;
	ans = 16'hf5df;
	#20
	A = 16'h761e;
	B = 16'h74ba;
	ans = 16'h796c;
	#20
	A = 16'he4de;
	B = 16'h733c;
	ans = 16'h72a0;
	#20
	A = 16'hf01f;
	B = 16'h71fe;
	ans = 16'h6b7c;
	#20
	A = 16'h71e6;
	B = 16'hf134;
	ans = 16'h6590;
	#20
	A = 16'hecc9;
	B = 16'h760b;
	ans = 16'h74d9;
	#20
	A = 16'hf5d1;
	B = 16'hf342;
	ans = 16'hf8b9;
	#20
	A = 16'hf425;
	B = 16'hdb4c;
	ans = 16'hf434;
	#20
	A = 16'h7258;
	B = 16'h702d;
	ans = 16'h7542;
	#20
	A = 16'hf093;
	B = 16'hf48a;
	ans = 16'hf6d4;
	#20
	A = 16'h75a2;
	B = 16'h745b;
	ans = 16'h78fe;
	#20
	A = 16'he8a5;
	B = 16'h68df;
	ans = 16'h5740;
	#20
	A = 16'h7126;
	B = 16'h721a;
	ans = 16'h75a0;
	#20
	A = 16'hf2e8;
	B = 16'hf20a;
	ans = 16'hf679;
	#20
	A = 16'hf5f5;
	B = 16'h75b2;
	ans = 16'he430;
	#20
	A = 16'hef6e;
	B = 16'h7279;
	ans = 16'h6d84;
	#20
	A = 16'hf5b4;
	B = 16'hf64f;
	ans = 16'hfa02;
	#20
	A = 16'h7111;
	B = 16'h7621;
	ans = 16'h7855;
	#20
	A = 16'heb3c;
	B = 16'h720e;
	ans = 16'h703f;
	#20
	A = 16'hf0ed;
	B = 16'h7521;
	ans = 16'h7155;
	#20
	A = 16'hd7a9;
	B = 16'h710f;
	ans = 16'h7100;
	#20
	A = 16'hf1b1;
	B = 16'hec85;
	ans = 16'hf3f4;
	#20
	A = 16'h6970;
	B = 16'h7645;
	ans = 16'h76f3;
	#20
	A = 16'h6f37;
	B = 16'he592;
	ans = 16'h6dd2;
	#20
	A = 16'h7276;
	B = 16'h7541;
	ans = 16'h783e;
	#20
	A = 16'hf34a;
	B = 16'h7109;
	ans = 16'hec82;
	#20
	A = 16'hf4bd;
	B = 16'h712d;
	ans = 16'hf04d;
	#20
	A = 16'h6ea2;
	B = 16'h738b;
	ans = 16'h756e;
	#20
	A = 16'hf589;
	B = 16'hf199;
	ans = 16'hf82b;
	#20
	A = 16'h743f;
	B = 16'hf71e;
	ans = 16'hf1be;
	#20
	A = 16'h7337;
	B = 16'hf4cd;
	ans = 16'hecc6;
	#20
	A = 16'h6faa;
	B = 16'h702e;
	ans = 16'h7402;
	#20
	A = 16'hf4c4;
	B = 16'hed62;
	ans = 16'hf61c;
	#20
	A = 16'hf289;
	B = 16'h75fe;
	ans = 16'h7173;
	#20
	A = 16'hf1b9;
	B = 16'hf51b;
	ans = 16'hf7f8;
	#20
	A = 16'hf4d6;
	B = 16'hf4a7;
	ans = 16'hf8be;
	#20
	A = 16'hf0cd;
	B = 16'hf4b0;
	ans = 16'hf716;
	#20
	A = 16'h7119;
	B = 16'h76e0;
	ans = 16'h78b6;
	#20
	A = 16'h74f0;
	B = 16'hf559;
	ans = 16'he690;
	#20
	A = 16'h7472;
	B = 16'hf4bc;
	ans = 16'he4a0;
	#20
	A = 16'he8c7;
	B = 16'hf03d;
	ans = 16'hf16f;
	#20
	A = 16'hf67b;
	B = 16'hf3a3;
	ans = 16'hf926;
	#20
	A = 16'he534;
	B = 16'hf1f4;
	ans = 16'hf29a;
	#20
	A = 16'h694a;
	B = 16'hec74;
	ans = 16'he73c;
	#20
	A = 16'h7155;
	B = 16'h7046;
	ans = 16'h74ce;
	#20
	A = 16'h6fd0;
	B = 16'hf0e4;
	ans = 16'he7e0;
	#20
	A = 16'hf5ef;
	B = 16'h7725;
	ans = 16'h6cd8;
	#20
	A = 16'h713b;
	B = 16'hf326;
	ans = 16'hebac;
	#20
	A = 16'hf419;
	B = 16'h6c16;
	ans = 16'hf227;
	#20
	A = 16'hea65;
	B = 16'h6a19;
	ans = 16'hd8c0;
	#20
	A = 16'h71bc;
	B = 16'hdcb1;
	ans = 16'h7196;
	#20
	A = 16'h7553;
	B = 16'heaef;
	ans = 16'h7475;
	#20
	A = 16'he888;
	B = 16'hf622;
	ans = 16'hf6b3;
	#20
	A = 16'h6d71;
	B = 16'h75b7;
	ans = 16'h7713;
	#20
	A = 16'hf34b;
	B = 16'h727a;
	ans = 16'he688;
	#20
	A = 16'h7435;
	B = 16'h6f27;
	ans = 16'h75ff;
	#20
	A = 16'h70c8;
	B = 16'h700d;
	ans = 16'h746a;
	#20
	A = 16'h7595;
	B = 16'h70ad;
	ans = 16'h77ec;
	#20
	A = 16'h70cb;
	B = 16'hef8a;
	ans = 16'h6818;
	#20
	A = 16'h7160;
	B = 16'h75f7;
	ans = 16'h7854;
	#20
	A = 16'hf180;
	B = 16'h7097;
	ans = 16'he748;
	#20
	A = 16'h76b8;
	B = 16'h7599;
	ans = 16'h7a28;
	#20
	A = 16'hf6f0;
	B = 16'hf4c6;
	ans = 16'hf9db;
	#20
	A = 16'h76a9;
	B = 16'hf51e;
	ans = 16'h6e2c;
	#20
	A = 16'h75e4;
	B = 16'hf1c6;
	ans = 16'h7202;
	#20
	A = 16'he22e;
	B = 16'h739e;
	ans = 16'h733b;
	#20
	A = 16'h6dd6;
	B = 16'hf06d;
	ans = 16'hea08;
	#20
	A = 16'hf51b;
	B = 16'h704e;
	ans = 16'hf1e8;
	#20
	A = 16'h6fe2;
	B = 16'h7681;
	ans = 16'h783d;
	#20
	A = 16'h749d;
	B = 16'hf515;
	ans = 16'he780;
	#20
	A = 16'hf100;
	B = 16'h757c;
	ans = 16'h71f8;
	#20
	A = 16'hf079;
	B = 16'h6d99;
	ans = 16'heab2;
	#20
	A = 16'hf4a4;
	B = 16'he5a5;
	ans = 16'hf4fe;
	#20
	A = 16'h6d5b;
	B = 16'hf631;
	ans = 16'hf4da;
	#20
	A = 16'h75e0;
	B = 16'hf073;
	ans = 16'h734d;
	#20
	A = 16'hf3a4;
	B = 16'hec91;
	ans = 16'hf4f6;
	#20
	A = 16'hee78;
	B = 16'h6e49;
	ans = 16'hd9e0;
	#20
	A = 16'h7551;
	B = 16'h7112;
	ans = 16'h77da;
	#20
	A = 16'h72fb;
	B = 16'hef9a;
	ans = 16'h6e5c;
	#20
	A = 16'h68f3;
	B = 16'he636;
	ans = 16'h6360;
	#20
	A = 16'hf0cc;
	B = 16'h6d0c;
	ans = 16'hec8c;
	#20
	A = 16'heaec;
	B = 16'hea00;
	ans = 16'hee76;
	#20
	A = 16'h7595;
	B = 16'h70ca;
	ans = 16'h77fa;
	#20
	A = 16'h7530;
	B = 16'h772f;
	ans = 16'h7a30;
	#20
	A = 16'hf429;
	B = 16'h741b;
	ans = 16'hdb00;
	#20
	A = 16'hf648;
	B = 16'hed63;
	ans = 16'hf7a1;
	#20
	A = 16'hf602;
	B = 16'h7354;
	ans = 16'hf0b0;
	#20
	A = 16'hf52f;
	B = 16'h7514;
	ans = 16'hdec0;
	#20
	A = 16'h70ab;
	B = 16'hf570;
	ans = 16'hf235;
	#20
	A = 16'hf63e;
	B = 16'h6c91;
	ans = 16'hf51a;
	#20
	A = 16'hf173;
	B = 16'h6d39;
	ans = 16'hedad;
	#20
	A = 16'hf73c;
	B = 16'h7422;
	ans = 16'hf234;
	#20
	A = 16'hf343;
	B = 16'h765f;
	ans = 16'h717b;
	#20
	A = 16'h6f41;
	B = 16'h7112;
	ans = 16'h7459;
	#20
	A = 16'h71b3;
	B = 16'hf694;
	ans = 16'hf375;
	#20
	A = 16'h61a9;
	B = 16'hf65e;
	ans = 16'hf631;
	#20
	A = 16'h6c3d;
	B = 16'h71b7;
	ans = 16'h73d6;
	#20
	A = 16'h6d86;
	B = 16'h6f80;
	ans = 16'h7283;
	#20
	A = 16'h655f;
	B = 16'h6ecd;
	ans = 16'h7012;
	#20
	A = 16'h72ee;
	B = 16'h7472;
	ans = 16'h77e9;
	#20
	A = 16'hdac5;
	B = 16'hf1da;
	ans = 16'hf1f5;
	#20
	A = 16'hf569;
	B = 16'h7293;
	ans = 16'hf03f;
	#20
	A = 16'he829;
	B = 16'hed30;
	ans = 16'hef44;
	#20
	A = 16'hf1e1;
	B = 16'h754c;
	ans = 16'h70b7;
	#20
	A = 16'hf150;
	B = 16'hf59b;
	ans = 16'hf822;
	#20
	A = 16'hf440;
	B = 16'h7729;
	ans = 16'h71d2;
	#20
	A = 16'hf433;
	B = 16'h7532;
	ans = 16'h6bf8;
	#20
	A = 16'h6f43;
	B = 16'h7594;
	ans = 16'h7765;
	#20
	A = 16'h6e36;
	B = 16'h7165;
	ans = 16'h7440;
	#20
	A = 16'hf5a8;
	B = 16'h762b;
	ans = 16'h6818;
	#20
	A = 16'hef04;
	B = 16'hf667;
	ans = 16'hf814;
	#20
	A = 16'h753d;
	B = 16'h75bb;
	ans = 16'h797c;
	#20
	A = 16'hebd9;
	B = 16'hf164;
	ans = 16'hf35a;
	#20
	A = 16'hf3cb;
	B = 16'hedb9;
	ans = 16'hf554;
	#20
	A = 16'hee6b;
	B = 16'hf5fb;
	ans = 16'hf796;
	#20
	A = 16'h6c53;
	B = 16'hf012;
	ans = 16'heba2;
	#20
	A = 16'h75ba;
	B = 16'he5d2;
	ans = 16'h755d;
	#20
	A = 16'h70b5;
	B = 16'h6e4e;
	ans = 16'h73dc;
	#20
	A = 16'h71f6;
	B = 16'hdbe5;
	ans = 16'h71d6;
	#20
	A = 16'hf4de;
	B = 16'h6e46;
	ans = 16'hf299;
	#20
	A = 16'h74dc;
	B = 16'hf3f1;
	ans = 16'h6b1c;
	#20
	A = 16'h76de;
	B = 16'hf67d;
	ans = 16'h6610;
	#20
	A = 16'h6c17;
	B = 16'h730f;
	ans = 16'h748d;
	#20
	A = 16'h6a11;
	B = 16'h7491;
	ans = 16'h7553;
	#20
	A = 16'h7516;
	B = 16'h6f63;
	ans = 16'h76ef;
	#20
	A = 16'h755e;
	B = 16'hedd5;
	ans = 16'h73d2;
	#20
	A = 16'hf181;
	B = 16'h741e;
	ans = 16'h6d76;
	#20
	A = 16'hee21;
	B = 16'h7668;
	ans = 16'h74e0;
	#20
	A = 16'h71c7;
	B = 16'he6ab;
	ans = 16'h70f2;
	#20
	A = 16'h7013;
	B = 16'hf293;
	ans = 16'hed00;
	#20
	A = 16'hf5f1;
	B = 16'h76a2;
	ans = 16'h6988;
	#20
	A = 16'hf733;
	B = 16'h76dd;
	ans = 16'he560;
	#20
	A = 16'hf744;
	B = 16'hf6d7;
	ans = 16'hfb0e;
	#20
	A = 16'h706f;
	B = 16'h744a;
	ans = 16'h7682;
	#20
	A = 16'hecd4;
	B = 16'h6962;
	ans = 16'he846;
	#20
	A = 16'hf41d;
	B = 16'h7416;
	ans = 16'hd700;
	#20
	A = 16'hf44b;
	B = 16'h7478;
	ans = 16'h61a0;
	#20
	A = 16'hf5cd;
	B = 16'hecee;
	ans = 16'hf708;
	#20
	A = 16'hf431;
	B = 16'he814;
	ans = 16'hf4b4;
	#20
	A = 16'hee1c;
	B = 16'h7303;
	ans = 16'h6fea;
	#20
	A = 16'hf5e5;
	B = 16'h76ba;
	ans = 16'h6aa8;
	#20
	A = 16'hf4de;
	B = 16'h7668;
	ans = 16'h6e28;
	#20
	A = 16'hf1d6;
	B = 16'h7146;
	ans = 16'he480;
	#20
	A = 16'h6dca;
	B = 16'hf41a;
	ans = 16'hf14f;
	#20
	A = 16'hf734;
	B = 16'hedb4;
	ans = 16'hf850;
	#20
	A = 16'h75cb;
	B = 16'hf39c;
	ans = 16'h6ff4;
	#20
	A = 16'hf5ec;
	B = 16'h7572;
	ans = 16'he7a0;
	#20
	A = 16'hf32e;
	B = 16'hf447;
	ans = 16'hf7de;
	#20
	A = 16'hf5ca;
	B = 16'h727a;
	ans = 16'hf11a;
	#20
	A = 16'h741c;
	B = 16'hf452;
	ans = 16'he2c0;
	#20
	A = 16'he9e5;
	B = 16'h7483;
	ans = 16'h738d;
	#20
	A = 16'hf2b7;
	B = 16'heef7;
	ans = 16'hf519;
	#20
	A = 16'h7150;
	B = 16'hf638;
	ans = 16'hf320;
	#20
	A = 16'h706c;
	B = 16'h75d2;
	ans = 16'h7804;
	#20
	A = 16'h75aa;
	B = 16'hf24b;
	ans = 16'h7109;
	#20
	A = 16'h7524;
	B = 16'heecf;
	ans = 16'h72e0;
	#20
	A = 16'hec84;
	B = 16'heecc;
	ans = 16'hf1a8;
	#20
	A = 16'hf34a;
	B = 16'heef5;
	ans = 16'hf562;
	#20
	A = 16'h6be9;
	B = 16'h7617;
	ans = 16'h7714;
	#20
	A = 16'he0e9;
	B = 16'h7446;
	ans = 16'h741f;
	#20
	A = 16'h75c0;
	B = 16'h728e;
	ans = 16'h7884;
	#20
	A = 16'h6e96;
	B = 16'h71e2;
	ans = 16'h7496;
	#20
	A = 16'hf475;
	B = 16'hf517;
	ans = 16'hf8c6;
	#20
	A = 16'h7044;
	B = 16'h71e9;
	ans = 16'h7516;
	#20
	A = 16'hecc0;
	B = 16'hf4ab;
	ans = 16'hf5db;
	#20
	A = 16'hf520;
	B = 16'h7587;
	ans = 16'h6670;
	#20
	A = 16'hf562;
	B = 16'h747e;
	ans = 16'heb20;
	#20
	A = 16'h764a;
	B = 16'hf706;
	ans = 16'he9e0;
	#20
	A = 16'h6b7a;
	B = 16'h75cc;
	ans = 16'h76bb;
	#20
	A = 16'h7039;
	B = 16'h68c5;
	ans = 16'h716a;
	#20
	A = 16'h7710;
	B = 16'h6d7a;
	ans = 16'h7837;
	#20
	A = 16'h6c70;
	B = 16'h70f4;
	ans = 16'h732c;
	#20
	A = 16'h72db;
	B = 16'hf25d;
	ans = 16'h63e0;
	#20
	A = 16'hf53e;
	B = 16'hf4fb;
	ans = 16'hf91c;
	#20
	A = 16'hf159;
	B = 16'h765d;
	ans = 16'h7361;
	#20
	A = 16'hed0b;
	B = 16'h73ff;
	ans = 16'h717a;
	#20
	A = 16'h76db;
	B = 16'he494;
	ans = 16'h7692;
	#20
	A = 16'hf478;
	B = 16'h6200;
	ans = 16'hf448;
	#20
	A = 16'hef09;
	B = 16'hf3d7;
	ans = 16'hf5ae;
	#20
	A = 16'h7726;
	B = 16'hf602;
	ans = 16'h6c90;
	#20
	A = 16'hec5b;
	B = 16'hf518;
	ans = 16'hf62f;
	#20
	A = 16'hf248;
	B = 16'hf2db;
	ans = 16'hf692;
	#20
	A = 16'hf1c0;
	B = 16'h6120;
	ans = 16'hf16e;
	#20
	A = 16'h6e91;
	B = 16'h7727;
	ans = 16'h7866;
	#20
	A = 16'he847;
	B = 16'hf100;
	ans = 16'hf212;
	#20
	A = 16'h73b9;
	B = 16'h6d74;
	ans = 16'h753a;
	#20
	A = 16'he838;
	B = 16'hf65b;
	ans = 16'hf6e2;
	#20
	A = 16'hf69e;
	B = 16'hf233;
	ans = 16'hf8dc;
	#20
	A = 16'he79a;
	B = 16'h762e;
	ans = 16'h75b4;
	#20
	A = 16'hf291;
	B = 16'h721b;
	ans = 16'he360;
	#20
	A = 16'h75f4;
	B = 16'h765a;
	ans = 16'h7a27;
	#20
	A = 16'h6efc;
	B = 16'hf4ba;
	ans = 16'hf1f6;
	#20
	A = 16'h76d9;
	B = 16'h7200;
	ans = 16'h78ec;
	#20
	A = 16'h7440;
	B = 16'h6d5c;
	ans = 16'h7597;
	#20
	A = 16'he820;
	B = 16'hee51;
	ans = 16'hf030;
	#20
	A = 16'h6cc6;
	B = 16'hf43f;
	ans = 16'hf21b;
	#20
	A = 16'h642d;
	B = 16'h7567;
	ans = 16'h75aa;
	#20
	A = 16'h6d30;
	B = 16'h70d4;
	ans = 16'h736c;
	#20
	A = 16'h7524;
	B = 16'hf14a;
	ans = 16'h70fe;
	#20
	A = 16'hec9a;
	B = 16'hf504;
	ans = 16'hf62a;
	#20
	A = 16'hf15f;
	B = 16'h6d24;
	ans = 16'hed9a;
	#20
	A = 16'h7420;
	B = 16'h7363;
	ans = 16'h77d2;
	#20
	A = 16'h6173;
	B = 16'h74d9;
	ans = 16'h7505;
	#20
	A = 16'hf403;
	B = 16'h772f;
	ans = 16'h7258;
	#20
	A = 16'h74ea;
	B = 16'h71d2;
	ans = 16'h77d3;
	#20
	A = 16'h7630;
	B = 16'h717c;
	ans = 16'h7877;
	#20
	A = 16'he815;
	B = 16'h7537;
	ans = 16'h74b4;
	#20
	A = 16'hec02;
	B = 16'he470;
	ans = 16'hed1e;
	#20
	A = 16'hea18;
	B = 16'hec9d;
	ans = 16'hefa9;
	#20
	A = 16'hdfb9;
	B = 16'hf49a;
	ans = 16'hf4b9;
	#20
	A = 16'h69a3;
	B = 16'h740b;
	ans = 16'h74bf;
	#20
	A = 16'h76df;
	B = 16'hf48d;
	ans = 16'h70a4;
	#20
	A = 16'hf509;
	B = 16'hf39d;
	ans = 16'hf86c;
	#20
	A = 16'hf035;
	B = 16'hecb8;
	ans = 16'hf291;
	#20
	A = 16'h662c;
	B = 16'h75a1;
	ans = 16'h7604;
	#20
	A = 16'hf749;
	B = 16'hf3e0;
	ans = 16'hf99c;
	#20
	A = 16'hf426;
	B = 16'heda3;
	ans = 16'hf58f;
	#20
	A = 16'hf44c;
	B = 16'hf537;
	ans = 16'hf8c2;
	#20
	A = 16'h6da6;
	B = 16'hf1ee;
	ans = 16'hee36;
	#20
	A = 16'hf138;
	B = 16'h761e;
	ans = 16'h7304;
	#20
	A = 16'hf5f9;
	B = 16'hf249;
	ans = 16'hf88f;
	#20
	A = 16'h756e;
	B = 16'hf093;
	ans = 16'h7249;
	#20
	A = 16'h650b;
	B = 16'heffe;
	ans = 16'heebb;
	#20
	A = 16'hf64c;
	B = 16'h5cf8;
	ans = 16'hf638;
	#20
	A = 16'hf0da;
	B = 16'hf474;
	ans = 16'hf6e1;
	#20
	A = 16'h724e;
	B = 16'hf51a;
	ans = 16'hefcc;
	#20
	A = 16'h6c8d;
	B = 16'h751d;
	ans = 16'h7640;
	#20
	A = 16'he8b1;
	B = 16'hf721;
	ans = 16'hf7b7;
	#20
	A = 16'h6e8a;
	B = 16'hf56a;
	ans = 16'hf38f;
	#20
	A = 16'hf51a;
	B = 16'h6c8d;
	ans = 16'hf3ee;
	#20
	A = 16'hf572;
	B = 16'h71ce;
	ans = 16'hf116;
	#20
	A = 16'hf542;
	B = 16'h630e;
	ans = 16'hf50a;
	#20
	A = 16'hf612;
	B = 16'hf0d4;
	ans = 16'hf83e;
	#20
	A = 16'h7533;
	B = 16'hf5c5;
	ans = 16'he890;
	#20
	A = 16'h70a5;
	B = 16'h72c8;
	ans = 16'h75b6;
	#20
	A = 16'h6497;
	B = 16'h7469;
	ans = 16'h74b2;
	#20
	A = 16'h75a0;
	B = 16'h6af8;
	ans = 16'h767f;
	#20
	A = 16'hf447;
	B = 16'h70b5;
	ans = 16'hefb2;
	#20
	A = 16'h74db;
	B = 16'h70fe;
	ans = 16'h775a;
	#20
	A = 16'hf01c;
	B = 16'h6fe4;
	ans = 16'hdd40;
	#20
	A = 16'h75c6;
	B = 16'hee18;
	ans = 16'h7440;
	#20
	A = 16'h6018;
	B = 16'he13c;
	ans = 16'hd890;
	#20
	A = 16'hebbf;
	B = 16'h74b7;
	ans = 16'h737e;
	#20
	A = 16'h6068;
	B = 16'hf6dc;
	ans = 16'hf6b9;
	#20
	A = 16'h76c7;
	B = 16'h6d48;
	ans = 16'h780c;
	#20
	A = 16'h74f3;
	B = 16'h764e;
	ans = 16'h79a0;
	#20
	A = 16'h748d;
	B = 16'h6f99;
	ans = 16'h7673;
	#20
	A = 16'h76fb;
	B = 16'hf720;
	ans = 16'he0a0;
	#20
	A = 16'hdc08;
	B = 16'h76be;
	ans = 16'h76ae;
	#20
	A = 16'h7575;
	B = 16'hf31e;
	ans = 16'h6f98;
	#20
	A = 16'hf512;
	B = 16'hf67d;
	ans = 16'hf9c8;
	#20
	A = 16'hf54d;
	B = 16'h69e5;
	ans = 16'hf490;
	#20
	A = 16'hf22c;
	B = 16'h6cdd;
	ans = 16'hef7b;
	#20
	A = 16'h75ae;
	B = 16'h74fb;
	ans = 16'h7954;
	#20
	A = 16'hec34;
	B = 16'hf01c;
	ans = 16'hf236;
	#20
	A = 16'hf588;
	B = 16'hf466;
	ans = 16'hf8f7;
	#20
	A = 16'heaff;
	B = 16'hf01d;
	ans = 16'hf1dd;
	#20
	A = 16'h76f9;
	B = 16'hf087;
	ans = 16'h74b6;
	#20
	A = 16'hf621;
	B = 16'h6ef6;
	ans = 16'hf464;
	#20
	A = 16'hf4cd;
	B = 16'hf552;
	ans = 16'hf910;
	#20
	A = 16'heace;
	B = 16'h735c;
	ans = 16'h71a8;
	#20
	A = 16'h741d;
	B = 16'h733c;
	ans = 16'h77bb;
	#20
	A = 16'hf53e;
	B = 16'hf679;
	ans = 16'hf9dc;
	#20
	A = 16'he806;
	B = 16'h7432;
	ans = 16'h7362;
	#20
	A = 16'h6cf5;
	B = 16'hf2c5;
	ans = 16'hf04a;
	#20
	A = 16'hf49b;
	B = 16'hf5ad;
	ans = 16'hf924;
	#20
	A = 16'h6cc9;
	B = 16'h754b;
	ans = 16'h767d;
	#20
	A = 16'hf497;
	B = 16'hf5e1;
	ans = 16'hf93c;
	#20
	A = 16'hf58e;
	B = 16'hf298;
	ans = 16'hf86d;
	#20
	A = 16'h7170;
	B = 16'hf4dc;
	ans = 16'hf048;
	#20
	A = 16'h6f2d;
	B = 16'h76ea;
	ans = 16'h785b;
	#20
	A = 16'h7581;
	B = 16'h701c;
	ans = 16'h778f;
	#20
	A = 16'h7324;
	B = 16'h5dbf;
	ans = 16'h7352;
	#20
	A = 16'hf29d;
	B = 16'heea9;
	ans = 16'hf4f9;
	#20
	A = 16'h7657;
	B = 16'h76b5;
	ans = 16'h7a86;
	#20
	A = 16'h6cd8;
	B = 16'h73e6;
	ans = 16'h7529;
	#20
	A = 16'hf2ae;
	B = 16'hf6fc;
	ans = 16'hf92a;
	#20
	A = 16'h6bfc;
	B = 16'h71b1;
	ans = 16'h73b0;
	#20
	A = 16'h6c79;
	B = 16'h6e30;
	ans = 16'h7154;
	#20
	A = 16'h7127;
	B = 16'h761c;
	ans = 16'h7858;
	#20
	A = 16'h7592;
	B = 16'h6de2;
	ans = 16'h770a;
	#20
	A = 16'h69d0;
	B = 16'hf57b;
	ans = 16'hf4c1;
	#20
	A = 16'h74e7;
	B = 16'hf50b;
	ans = 16'he080;
	#20
	A = 16'h728a;
	B = 16'h6a35;
	ans = 16'h740c;
	#20
	A = 16'h759c;
	B = 16'h7581;
	ans = 16'h798e;
	#20
	A = 16'hf5e9;
	B = 16'h718c;
	ans = 16'hf246;
	#20
	A = 16'h7140;
	B = 16'h7248;
	ans = 16'h75c4;
	#20
	A = 16'h7714;
	B = 16'hf4bf;
	ans = 16'h70aa;
	#20
	A = 16'h72eb;
	B = 16'hf15d;
	ans = 16'h6a38;
	#20
	A = 16'hf6c3;
	B = 16'h73e7;
	ans = 16'hf19f;
	#20
	A = 16'hf6b0;
	B = 16'h6c58;
	ans = 16'hf59a;
	#20
	A = 16'hf489;
	B = 16'hf505;
	ans = 16'hf8c7;
	#20
	A = 16'h7583;
	B = 16'hf6c0;
	ans = 16'hecf4;
	#20
	A = 16'h749e;
	B = 16'h6426;
	ans = 16'h74e0;
	#20
	A = 16'hef3d;
	B = 16'hf478;
	ans = 16'hf647;
	#20
	A = 16'hf6c0;
	B = 16'h6a34;
	ans = 16'hf5fa;
	#20
	A = 16'hec10;
	B = 16'hedd4;
	ans = 16'hf0f2;
	#20
	A = 16'hf44d;
	B = 16'h76a5;
	ans = 16'h70b0;
	#20
	A = 16'h7308;
	B = 16'hf70f;
	ans = 16'hf316;
	#20
	A = 16'h70d7;
	B = 16'h7713;
	ans = 16'h78bf;
	#20
	A = 16'hf36d;
	B = 16'h6dac;
	ans = 16'hf097;
	#20
	A = 16'h74ac;
	B = 16'hf6b0;
	ans = 16'hf008;
	#20
	A = 16'hf71f;
	B = 16'hf505;
	ans = 16'hfa12;
	#20
	A = 16'he83f;
	B = 16'heb23;
	ans = 16'hedb1;
	#20
	A = 16'hf493;
	B = 16'heed3;
	ans = 16'hf648;
	#20
	A = 16'h70cc;
	B = 16'h74b5;
	ans = 16'h771b;
	#20
	A = 16'hd4c1;
	B = 16'h6cce;
	ans = 16'h6cbb;
	#20
	A = 16'hec11;
	B = 16'h7535;
	ans = 16'h7431;
	#20
	A = 16'h6e37;
	B = 16'h68dd;
	ans = 16'h7053;
	#20
	A = 16'h74b0;
	B = 16'h75c2;
	ans = 16'h7939;
	#20
	A = 16'h764f;
	B = 16'h7370;
	ans = 16'h7904;
	#20
	A = 16'h73c0;
	B = 16'h6650;
	ans = 16'h7445;
	#20
	A = 16'h72b1;
	B = 16'hf6cd;
	ans = 16'hf2e9;
	#20
	A = 16'hf576;
	B = 16'h7549;
	ans = 16'he1a0;
	#20
	A = 16'h7215;
	B = 16'h62d0;
	ans = 16'h7282;
	#20
	A = 16'h7198;
	B = 16'h74c7;
	ans = 16'h7793;
	#20
	A = 16'h71e8;
	B = 16'hf475;
	ans = 16'hee04;
	#20
	A = 16'h717d;
	B = 16'he863;
	ans = 16'h7064;
	#20
	A = 16'hf6d0;
	B = 16'h7193;
	ans = 16'hf406;
	#20
	A = 16'hf531;
	B = 16'h734f;
	ans = 16'hee26;
	#20
	A = 16'he06d;
	B = 16'h75d5;
	ans = 16'h75b2;
	#20
	A = 16'hf2c3;
	B = 16'h75e1;
	ans = 16'h70ff;
	#20
	A = 16'hf023;
	B = 16'hf288;
	ans = 16'hf556;
	#20
	A = 16'hec30;
	B = 16'h6fcf;
	ans = 16'h6b3e;
	#20
	A = 16'h705b;
	B = 16'hed18;
	ans = 16'h6b3c;
	#20
	A = 16'hf5fa;
	B = 16'h7603;
	ans = 16'h5880;
	#20
	A = 16'h767d;
	B = 16'hf752;
	ans = 16'heaa8;
	#20
	A = 16'h717a;
	B = 16'hf144;
	ans = 16'h5ec0;
	#20
	A = 16'hf1a5;
	B = 16'h76ff;
	ans = 16'h742c;
	#20
	A = 16'h732c;
	B = 16'hf097;
	ans = 16'h6d2a;
	#20
	A = 16'hf290;
	B = 16'he10f;
	ans = 16'hf2e1;
	#20
	A = 16'h586a;
	B = 16'h756d;
	ans = 16'h7576;
	#20
	A = 16'h7246;
	B = 16'hf602;
	ans = 16'hf1be;
	#20
	A = 16'h74ec;
	B = 16'h750f;
	ans = 16'h78fe;
	#20
	A = 16'h69eb;
	B = 16'h76f9;
	ans = 16'h77b6;
	#20
	A = 16'h7749;
	B = 16'h720c;
	ans = 16'h7928;
	#20
	A = 16'h6fe1;
	B = 16'hf0fb;
	ans = 16'he82a;
	#20
	A = 16'h69a9;
	B = 16'hf35f;
	ans = 16'hf1f5;
	#20
	A = 16'h684f;
	B = 16'hf547;
	ans = 16'hf4bd;
	#20
	A = 16'hf527;
	B = 16'hf649;
	ans = 16'hf9b8;
	#20
	A = 16'hf018;
	B = 16'h70cc;
	ans = 16'h65a0;
	#20
	A = 16'hec02;
	B = 16'hf55d;
	ans = 16'hf65e;
	#20
	A = 16'hee12;
	B = 16'hd9f2;
	ans = 16'hee42;
	#20
	A = 16'he670;
	B = 16'heb81;
	ans = 16'hed5c;
	#20
	A = 16'h6c5d;
	B = 16'h76ef;
	ans = 16'h7803;
	#20
	A = 16'heed6;
	B = 16'hec59;
	ans = 16'hf198;
	#20
	A = 16'he8fe;
	B = 16'h74c5;
	ans = 16'h7425;
	#20
	A = 16'hed12;
	B = 16'hf73f;
	ans = 16'hf842;
	#20
	A = 16'h6ea7;
	B = 16'h6f47;
	ans = 16'h72f7;
	#20
	A = 16'hf449;
	B = 16'hf541;
	ans = 16'hf8c5;
	#20
	A = 16'h7667;
	B = 16'hf6fe;
	ans = 16'he8b8;
	#20
	A = 16'h74c6;
	B = 16'h74f4;
	ans = 16'h78dd;
	#20
	A = 16'h74a7;
	B = 16'hf504;
	ans = 16'he5d0;
	#20
	A = 16'h75a9;
	B = 16'h51f0;
	ans = 16'h75ac;
	#20
	A = 16'hf689;
	B = 16'hebd0;
	ans = 16'hf783;
	#20
	A = 16'hf667;
	B = 16'hf072;
	ans = 16'hf850;
	#20
	A = 16'h7425;
	B = 16'hf74a;
	ans = 16'hf24a;
	#20
	A = 16'h72ee;
	B = 16'h7152;
	ans = 16'h7620;
	#20
	A = 16'h72e1;
	B = 16'hf16c;
	ans = 16'h69d4;
	#20
	A = 16'hf70e;
	B = 16'h74c9;
	ans = 16'hf08a;
	#20
	A = 16'hec16;
	B = 16'hf501;
	ans = 16'hf606;
	#20
	A = 16'hf003;
	B = 16'h75c8;
	ans = 16'h738d;
	#20
	A = 16'h70e5;
	B = 16'hf12e;
	ans = 16'he090;
	#20
	A = 16'h7441;
	B = 16'h74d7;
	ans = 16'h788c;
	#20
	A = 16'h76e2;
	B = 16'hf32f;
	ans = 16'h7295;
	#20
	A = 16'hf6aa;
	B = 16'h67fa;
	ans = 16'hf62a;
	#20
	A = 16'h7498;
	B = 16'h6eb2;
	ans = 16'h7644;
	#20
	A = 16'h7323;
	B = 16'hf448;
	ans = 16'he9b4;
	#20
	A = 16'hf5e5;
	B = 16'heab1;
	ans = 16'hf6bb;
	#20
	A = 16'h74e4;
	B = 16'hf687;
	ans = 16'hee8c;
	#20
	A = 16'hf4c5;
	B = 16'h7067;
	ans = 16'hf123;
	#20
	A = 16'h74aa;
	B = 16'hf6da;
	ans = 16'hf060;
	#20
	A = 16'h7449;
	B = 16'hea79;
	ans = 16'h72f4;
	#20
	A = 16'hf734;
	B = 16'hefba;
	ans = 16'hf891;
	#20
	A = 16'hf6f6;
	B = 16'he982;
	ans = 16'hf7a6;
	#20
	A = 16'hf017;
	B = 16'hf5f1;
	ans = 16'hf7fc;
	#20
	A = 16'hf5ed;
	B = 16'hf664;
	ans = 16'hfa28;
	#20
	A = 16'hf121;
	B = 16'h74f5;
	ans = 16'h70c9;
	#20
	A = 16'hf529;
	B = 16'h6cc0;
	ans = 16'hf3f2;
	#20
	A = 16'h762d;
	B = 16'he8fc;
	ans = 16'h758e;
	#20
	A = 16'hf12b;
	B = 16'h6dff;
	ans = 16'hec57;
	#20
	A = 16'hf5a1;
	B = 16'h74a3;
	ans = 16'hebf0;
	#20
	A = 16'h72b5;
	B = 16'h6e3f;
	ans = 16'h74ea;
	#20
	A = 16'h760c;
	B = 16'h75d8;
	ans = 16'h79f2;
	#20
	A = 16'hf6bf;
	B = 16'hf633;
	ans = 16'hfa79;
	#20
	A = 16'h6b93;
	B = 16'h7257;
	ans = 16'h741e;
	#20
	A = 16'hf671;
	B = 16'hf2e4;
	ans = 16'hf8f2;
	#20
	A = 16'hf5be;
	B = 16'h7669;
	ans = 16'h6958;
	#20
	A = 16'hf260;
	B = 16'hebb2;
	ans = 16'hf426;
	#20
	A = 16'h75ec;
	B = 16'hf606;
	ans = 16'hde80;
	#20
	A = 16'h707d;
	B = 16'hed08;
	ans = 16'h6be4;
	#20
	A = 16'h6a92;
	B = 16'h73db;
	ans = 16'h74c0;
	#20
	A = 16'hf397;
	B = 16'h6c4d;
	ans = 16'hf170;
	#20
	A = 16'h71e4;
	B = 16'hf506;
	ans = 16'hf028;
	#20
	A = 16'heb78;
	B = 16'hf68f;
	ans = 16'hf77e;
	#20
	A = 16'h7604;
	B = 16'h7016;
	ans = 16'h7808;
	#20
	A = 16'h7491;
	B = 16'he596;
	ans = 16'h7438;
	#20
	A = 16'h7552;
	B = 16'h7710;
	ans = 16'h7a31;
	#20
	A = 16'hf595;
	B = 16'h7414;
	ans = 16'hee04;
	#20
	A = 16'hf04d;
	B = 16'h74b3;
	ans = 16'h7119;
	#20
	A = 16'h7038;
	B = 16'h686e;
	ans = 16'h7154;
	#20
	A = 16'h6d5f;
	B = 16'hf5d5;
	ans = 16'hf47d;
	#20
	A = 16'h7423;
	B = 16'h74d4;
	ans = 16'h787c;
	#20
	A = 16'hf02c;
	B = 16'h6d52;
	ans = 16'hea0c;
	#20
	A = 16'h6c4c;
	B = 16'h6fb2;
	ans = 16'h71ff;
	#20
	A = 16'hf0c0;
	B = 16'h6505;
	ans = 16'hf01f;
	#20
	A = 16'h766a;
	B = 16'hf692;
	ans = 16'he100;
	#20
	A = 16'h67c5;
	B = 16'hf219;
	ans = 16'hf120;
	#20
	A = 16'h6965;
	B = 16'h687a;
	ans = 16'h6cf0;
	#20
	A = 16'hf3c1;
	B = 16'h757b;
	ans = 16'h6e6a;
	#20
	A = 16'heff0;
	B = 16'h620f;
	ans = 16'hef2e;
	#20
	A = 16'hf72d;
	B = 16'h6bdf;
	ans = 16'hf631;
	#20
	A = 16'h682c;
	B = 16'hf1c9;
	ans = 16'hf0be;
	#20
	A = 16'hecf5;
	B = 16'h729c;
	ans = 16'h7022;
	#20
	A = 16'h7446;
	B = 16'hebac;
	ans = 16'h72a1;
	#20
	A = 16'h73fc;
	B = 16'hf22c;
	ans = 16'h6b40;
	#20
	A = 16'hf1fa;
	B = 16'h76ce;
	ans = 16'h73a2;
	#20
	A = 16'h75f1;
	B = 16'h7341;
	ans = 16'h78c9;
	#20
	A = 16'h70c8;
	B = 16'hf5e1;
	ans = 16'hf2fa;
	#20
	A = 16'h726d;
	B = 16'hf482;
	ans = 16'hed2e;
	#20
	A = 16'h74b4;
	B = 16'h7740;
	ans = 16'h79fa;
	#20
	A = 16'hf74e;
	B = 16'h740e;
	ans = 16'hf280;
	#20
	A = 16'h6f56;
	B = 16'h7009;
	ans = 16'h73b4;
	#20
	A = 16'hec99;
	B = 16'h7107;
	ans = 16'h6d75;
	#20
	A = 16'h7656;
	B = 16'he405;
	ans = 16'h7616;
	#20
	A = 16'h75b7;
	B = 16'hf046;
	ans = 16'h7328;
	#20
	A = 16'h70d8;
	B = 16'h76fe;
	ans = 16'h78b5;
	#20
	A = 16'hf27c;
	B = 16'h7590;
	ans = 16'h70a4;
	#20
	A = 16'hde13;
	B = 16'he78d;
	ans = 16'he889;
	#20
	A = 16'hed3e;
	B = 16'hf5e1;
	ans = 16'hf730;
	#20
	A = 16'hf4fc;
	B = 16'h728e;
	ans = 16'heed4;
	#20
	A = 16'h7383;
	B = 16'hefd7;
	ans = 16'h6f2f;
	#20
	A = 16'hec09;
	B = 16'hf3a7;
	ans = 16'hf4d6;
	#20
	A = 16'h74cd;
	B = 16'hf5c8;
	ans = 16'hebd8;
	#20
	A = 16'h7194;
	B = 16'hf32d;
	ans = 16'hea64;
	#20
	A = 16'h732a;
	B = 16'hf536;
	ans = 16'hee84;
	#20
	A = 16'hf32f;
	B = 16'hf6f5;
	ans = 16'hf946;
	#20
	A = 16'hf508;
	B = 16'h7033;
	ans = 16'hf1dd;
	#20
	A = 16'hf585;
	B = 16'h7747;
	ans = 16'h6f08;
	#20
	A = 16'hee4b;
	B = 16'h7258;
	ans = 16'h6e65;
	#20
	A = 16'hf0ba;
	B = 16'hf749;
	ans = 16'hf8d3;
	#20
	A = 16'h6ac7;
	B = 16'he860;
	ans = 16'h64ce;
	#20
	A = 16'hef67;
	B = 16'h72fc;
	ans = 16'h6e91;
	#20
	A = 16'hee4c;
	B = 16'h7325;
	ans = 16'h6ffe;
	#20
	A = 16'hee61;
	B = 16'h73a4;
	ans = 16'h7074;
	#20
	A = 16'h7372;
	B = 16'h6d29;
	ans = 16'h7503;
	#20
	A = 16'hf3ee;
	B = 16'h74ef;
	ans = 16'h6bc0;
	#20
	A = 16'hf4fa;
	B = 16'h759a;
	ans = 16'h6900;
	#20
	A = 16'h6c4b;
	B = 16'hf357;
	ans = 16'hf132;
	#20
	A = 16'h773d;
	B = 16'he6ba;
	ans = 16'h76d1;
	#20
	A = 16'hecf6;
	B = 16'h75cb;
	ans = 16'h748e;
	#20
	A = 16'h74eb;
	B = 16'hf01e;
	ans = 16'h71b8;
	#20
	A = 16'h74b9;
	B = 16'hf481;
	ans = 16'h6300;
	#20
	A = 16'h7217;
	B = 16'hf5f7;
	ans = 16'hf1d7;
	#20
	A = 16'hf2cf;
	B = 16'h6d21;
	ans = 16'hf03e;
	#20
	A = 16'h734b;
	B = 16'h70a7;
	ans = 16'h75f9;
	#20
	A = 16'hf449;
	B = 16'hf695;
	ans = 16'hf96f;
	#20
	A = 16'hf26e;
	B = 16'hf083;
	ans = 16'hf578;
	#20
	A = 16'h760f;
	B = 16'hf4b2;
	ans = 16'h6d74;
	#20
	A = 16'hf127;
	B = 16'heca1;
	ans = 16'hf378;
	#20
	A = 16'h7251;
	B = 16'hf367;
	ans = 16'he858;
	#20
	A = 16'h75b5;
	B = 16'hf540;
	ans = 16'h6750;
	#20
	A = 16'h72b0;
	B = 16'hef7e;
	ans = 16'h6de2;
	#20
	A = 16'hf56e;
	B = 16'h763b;
	ans = 16'h6a68;
	#20
	A = 16'hf438;
	B = 16'h7624;
	ans = 16'h6fb0;
	#20
	A = 16'hf736;
	B = 16'h6d70;
	ans = 16'hf5da;
	#20
	A = 16'h7474;
	B = 16'h746b;
	ans = 16'h7870;
	#20
	A = 16'h768c;
	B = 16'hf6cc;
	ans = 16'he400;
	#20
	A = 16'hf4a8;
	B = 16'hf552;
	ans = 16'hf8fd;
	#20
	A = 16'h72aa;
	B = 16'hf5ad;
	ans = 16'hf0b0;
	#20
	A = 16'h74ff;
	B = 16'hf0b7;
	ans = 16'h7147;
	#20
	A = 16'h771d;
	B = 16'h6ac6;
	ans = 16'h77f6;
	#20
	A = 16'hed82;
	B = 16'hf6c7;
	ans = 16'hf814;
	#20
	A = 16'hf2de;
	B = 16'hed1b;
	ans = 16'hf4b6;
	#20
	A = 16'h7072;
	B = 16'h742c;
	ans = 16'h7665;
	#20
	A = 16'h74c0;
	B = 16'hf375;
	ans = 16'h6c16;
	#20
	A = 16'h748e;
	B = 16'h5e3a;
	ans = 16'h74a7;
	#20
	A = 16'hefb2;
	B = 16'h7572;
	ans = 16'h730b;
	#20
	A = 16'h7373;
	B = 16'hf435;
	ans = 16'he7b8;
	#20
	A = 16'hdef9;
	B = 16'h7036;
	ans = 16'h6ffc;
	#20
	A = 16'hf245;
	B = 16'hf163;
	ans = 16'hf5d4;
	#20
	A = 16'h7514;
	B = 16'h72cb;
	ans = 16'h783d;
	#20
	A = 16'h7552;
	B = 16'h6e80;
	ans = 16'h76f2;
	#20
	A = 16'h7397;
	B = 16'he66f;
	ans = 16'h72c9;
	#20
	A = 16'hf292;
	B = 16'hf67d;
	ans = 16'hf8e3;
	#20
	A = 16'hf615;
	B = 16'heeb2;
	ans = 16'hf7c2;
	#20
	A = 16'h7496;
	B = 16'h772b;
	ans = 16'h79e0;
	#20
	A = 16'hec7f;
	B = 16'h6b8d;
	ans = 16'he1c4;
	#20
	A = 16'hf6cc;
	B = 16'hed30;
	ans = 16'hf80c;
	#20
	A = 16'hf5ff;
	B = 16'hf494;
	ans = 16'hf94a;
	#20
	A = 16'h759e;
	B = 16'he841;
	ans = 16'h7516;
	#20
	A = 16'hf244;
	B = 16'hee3b;
	ans = 16'hf4b1;
	#20
	A = 16'h7106;
	B = 16'hf5d3;
	ans = 16'hf2a0;
	#20
	A = 16'hf46a;
	B = 16'h700f;
	ans = 16'hf0c5;
	#20
	A = 16'he42a;
	B = 16'hf6d1;
	ans = 16'hf714;
	#20
	A = 16'hf29d;
	B = 16'h6804;
	ans = 16'hf19c;
	#20
	A = 16'hf40f;
	B = 16'h72af;
	ans = 16'he9bc;
	#20
	A = 16'hf724;
	B = 16'hf37a;
	ans = 16'hf970;
	#20
	A = 16'hf348;
	B = 16'hf41a;
	ans = 16'hf7be;
	#20
	A = 16'hf330;
	B = 16'h7138;
	ans = 16'hebe0;
	#20
	A = 16'he927;
	B = 16'hf65d;
	ans = 16'hf702;
	#20
	A = 16'h6cdc;
	B = 16'hf35b;
	ans = 16'hf0ed;
	#20
	A = 16'hf40a;
	B = 16'h719a;
	ans = 16'hecf4;
	#20
	A = 16'hf55d;
	B = 16'hf2c8;
	ans = 16'hf860;
	#20
	A = 16'hf5d1;
	B = 16'h73c3;
	ans = 16'hefbe;
	#20
	A = 16'hf516;
	B = 16'h7502;
	ans = 16'hdd00;
	#20
	A = 16'hf44d;
	B = 16'hf525;
	ans = 16'hf8b9;
	#20
	A = 16'hf401;
	B = 16'hf437;
	ans = 16'hf81c;
	#20
	A = 16'h74c9;
	B = 16'heaa0;
	ans = 16'h73ea;
	#20
	A = 16'h699a;
	B = 16'hf4de;
	ans = 16'hf42b;
	#20
	A = 16'hf68b;
	B = 16'hf58b;
	ans = 16'hfa0b;
	#20
	A = 16'h718a;
	B = 16'h7357;
	ans = 16'h7670;
	#20
	A = 16'hf709;
	B = 16'hecf9;
	ans = 16'hf824;
	#20
	A = 16'hf592;
	B = 16'h69f7;
	ans = 16'hf4d3;
	#20
	A = 16'h7546;
	B = 16'h73f2;
	ans = 16'h78a0;
	#20
	A = 16'h74ca;
	B = 16'h7473;
	ans = 16'h789e;
	#20
	A = 16'hf48d;
	B = 16'h7737;
	ans = 16'h7154;
	#20
	A = 16'hf5f4;
	B = 16'hecb1;
	ans = 16'hf720;
	#20
	A = 16'h7513;
	B = 16'hed77;
	ans = 16'h736a;
	#20
	A = 16'h761b;
	B = 16'hf688;
	ans = 16'he6d0;
	#20
	A = 16'h75fc;
	B = 16'hf10b;
	ans = 16'h72ed;
	#20
	A = 16'hf62a;
	B = 16'hf6b3;
	ans = 16'hfa6e;
	#20
	A = 16'hf491;
	B = 16'he623;
	ans = 16'hf4f3;
	#20
	A = 16'h75b7;
	B = 16'he75e;
	ans = 16'h7541;
	#20
	A = 16'hf634;
	B = 16'h74c5;
	ans = 16'hedbc;
	#20
	A = 16'h6b23;
	B = 16'h7189;
	ans = 16'h7352;
	#20
	A = 16'hf442;
	B = 16'hf658;
	ans = 16'hf94d;
	#20
	A = 16'hf4be;
	B = 16'hf717;
	ans = 16'hf9ea;
	#20
	A = 16'h76b5;
	B = 16'hf54f;
	ans = 16'h6d98;
	#20
	A = 16'h7705;
	B = 16'h6d41;
	ans = 16'h782b;
	#20
	A = 16'hf4f7;
	B = 16'hf6ed;
	ans = 16'hf9f2;
	#20
	A = 16'h76a6;
	B = 16'hf5e7;
	ans = 16'h69f8;
	#20
	A = 16'h6a21;
	B = 16'h7019;
	ans = 16'h71a1;
	#20
	A = 16'h6e95;
	B = 16'hf42a;
	ans = 16'hf10a;
	#20
	A = 16'h6726;
	B = 16'hf4f3;
	ans = 16'hf481;
	#20
	A = 16'h72fa;
	B = 16'h7654;
	ans = 16'h78e8;
	#20
	A = 16'h74c7;
	B = 16'h718d;
	ans = 16'h778e;
	#20
	A = 16'h7249;
	B = 16'h772c;
	ans = 16'h7928;
	#20
	A = 16'h7510;
	B = 16'h72a6;
	ans = 16'h7832;
	#20
	A = 16'h6804;
	B = 16'h6c21;
	ans = 16'h6e23;
	#20
	A = 16'hf0ab;
	B = 16'hf6d1;
	ans = 16'hf893;
	#20
	A = 16'h7230;
	B = 16'heceb;
	ans = 16'h6f75;
	#20
	A = 16'h6802;
	B = 16'h766c;
	ans = 16'h76ec;
	#20
	A = 16'he8c0;
	B = 16'hf480;
	ans = 16'hf518;
	#20
	A = 16'hf252;
	B = 16'hf5fa;
	ans = 16'hf892;
	#20
	A = 16'h6c07;
	B = 16'h73c0;
	ans = 16'h74e2;
	#20
	A = 16'hf410;
	B = 16'heea7;
	ans = 16'hf5ba;
	#20
	A = 16'hf74f;
	B = 16'h763b;
	ans = 16'hec50;
	#20
	A = 16'he1c1;
	B = 16'h7583;
	ans = 16'h7555;
	#20
	A = 16'hf40b;
	B = 16'hf42f;
	ans = 16'hf81d;
	#20
	A = 16'hf169;
	B = 16'h712c;
	ans = 16'hdfa0;
	#20
	A = 16'hf6c1;
	B = 16'hf269;
	ans = 16'hf8fb;
	#20
	A = 16'hed23;
	B = 16'hf4b2;
	ans = 16'hf5fb;
	#20
	A = 16'heeac;
	B = 16'hf146;
	ans = 16'hf44e;
	#20
	A = 16'h7563;
	B = 16'he4a6;
	ans = 16'h7519;
	#20
	A = 16'h7440;
	B = 16'hf2f6;
	ans = 16'h6a28;
	#20
	A = 16'h715f;
	B = 16'hf523;
	ans = 16'hf0e7;
	#20
	A = 16'h7141;
	B = 16'h6e4a;
	ans = 16'h7433;
	#20
	A = 16'hf4be;
	B = 16'hf6e2;
	ans = 16'hf9d0;
	#20
	A = 16'hf4f9;
	B = 16'hf4a1;
	ans = 16'hf8cd;
	#20
	A = 16'hf2da;
	B = 16'he840;
	ans = 16'hf3ea;
	#20
	A = 16'hf438;
	B = 16'h7304;
	ans = 16'he9b0;
	#20
	A = 16'h772f;
	B = 16'he745;
	ans = 16'h76bb;
	#20
	A = 16'hf5fd;
	B = 16'hf366;
	ans = 16'hf8d8;
	#20
	A = 16'h6dd7;
	B = 16'h6cde;
	ans = 16'h715a;
	#20
	A = 16'h70f3;
	B = 16'h6b0a;
	ans = 16'h72b6;
	#20
	A = 16'hf56f;
	B = 16'h7499;
	ans = 16'heab0;
	#20
	A = 16'h71d1;
	B = 16'h6ade;
	ans = 16'h7388;
	#20
	A = 16'h74df;
	B = 16'h74b4;
	ans = 16'h78ca;
	#20
	A = 16'hebab;
	B = 16'hf403;
	ans = 16'hf4f8;
	#20
	A = 16'h76c4;
	B = 16'h6583;
	ans = 16'h771c;
	#20
	A = 16'he373;
	B = 16'hf291;
	ans = 16'hf308;
	#20
	A = 16'hebd8;
	B = 16'hf0f1;
	ans = 16'hf2e7;
	#20
	A = 16'h71b2;
	B = 16'h711d;
	ans = 16'h7568;
	#20
	A = 16'hf5f5;
	B = 16'he8ca;
	ans = 16'hf68e;
	#20
	A = 16'hec94;
	B = 16'hf6c7;
	ans = 16'hf7ec;
	#20
	A = 16'h748d;
	B = 16'h74d4;
	ans = 16'h78b0;
	#20
	A = 16'h71aa;
	B = 16'h7441;
	ans = 16'h7716;
	#20
	A = 16'hf1db;
	B = 16'hf3e3;
	ans = 16'hf6df;
	#20
	A = 16'hef2c;
	B = 16'h632f;
	ans = 16'hee46;
	#20
	A = 16'hf471;
	B = 16'h6100;
	ans = 16'hf449;
	#20
	A = 16'h7725;
	B = 16'hecd9;
	ans = 16'h75ef;
	#20
	A = 16'he3b0;
	B = 16'h74cb;
	ans = 16'h748e;
	#20
	A = 16'hf252;
	B = 16'h768d;
	ans = 16'h72c8;
	#20
	A = 16'hf277;
	B = 16'h68ff;
	ans = 16'hf137;
	#20
	A = 16'hee7d;
	B = 16'hf4fc;
	ans = 16'hf69b;
	#20
	A = 16'h749e;
	B = 16'h771b;
	ans = 16'h79dc;
	#20
	A = 16'hf631;
	B = 16'heb0d;
	ans = 16'hf713;
	#20
	A = 16'hf07a;
	B = 16'hf2f8;
	ans = 16'hf5b9;
	#20
	A = 16'hf6fc;
	B = 16'h729b;
	ans = 16'hf35d;
	#20
	A = 16'h702d;
	B = 16'h710e;
	ans = 16'h749e;
	#20
	A = 16'h747f;
	B = 16'hf710;
	ans = 16'hf122;
	#20
	A = 16'h71fa;
	B = 16'h74b6;
	ans = 16'h77b3;
	#20
	A = 16'h728f;
	B = 16'h6fab;
	ans = 16'h7532;
	#20
	A = 16'h753c;
	B = 16'h6d68;
	ans = 16'h7696;
	#20
	A = 16'h6ddd;
	B = 16'hf5be;
	ans = 16'hf447;
	#20
	A = 16'h6917;
	B = 16'h7738;
	ans = 16'h77db;
	#20
	A = 16'hf73a;
	B = 16'h749d;
	ans = 16'hf13a;
	#20
	A = 16'h74ad;
	B = 16'h762f;
	ans = 16'h796e;
	#20
	A = 16'hf368;
	B = 16'hf2b7;
	ans = 16'hf710;
	#20
	A = 16'head9;
	B = 16'hee5f;
	ans = 16'hf0e6;
	#20
	A = 16'hf45a;
	B = 16'h7451;
	ans = 16'hd880;
	#20
	A = 16'hf536;
	B = 16'hf6bd;
	ans = 16'hf9fa;
	#20
	A = 16'hf04d;
	B = 16'h73eb;
	ans = 16'h6f3c;
	#20
	A = 16'h67ef;
	B = 16'h743a;
	ans = 16'h74b9;
	#20
	A = 16'hf054;
	B = 16'h5aa4;
	ans = 16'hf039;
	#20
	A = 16'h7626;
	B = 16'hf346;
	ans = 16'h7106;
	#20
	A = 16'h7503;
	B = 16'h72a1;
	ans = 16'h782a;
	#20
	A = 16'hf20c;
	B = 16'h7462;
	ans = 16'h6d70;
	#20
	A = 16'hf43a;
	B = 16'h76df;
	ans = 16'h714a;
	#20
	A = 16'hec40;
	B = 16'hf6ea;
	ans = 16'hf7fa;
	#20
	A = 16'hf74f;
	B = 16'h701e;
	ans = 16'hf540;
	#20
	A = 16'hf635;
	B = 16'h7369;
	ans = 16'hf101;
	#20
	A = 16'hf70d;
	B = 16'h7604;
	ans = 16'hec24;
	#20
	A = 16'h7630;
	B = 16'h7508;
	ans = 16'h799c;
	#20
	A = 16'hf4a2;
	B = 16'h7154;
	ans = 16'hefe0;
	#20
	A = 16'hf579;
	B = 16'h6088;
	ans = 16'hf555;
	#20
	A = 16'hecad;
	B = 16'h714c;
	ans = 16'h6deb;
	#20
	A = 16'h71b6;
	B = 16'h6af1;
	ans = 16'h7372;
	#20
	A = 16'h74ae;
	B = 16'h71d8;
	ans = 16'h779a;
	#20
	A = 16'h6edf;
	B = 16'h729a;
	ans = 16'h7505;
	#20
	A = 16'hf578;
	B = 16'h741f;
	ans = 16'hed64;
	#20
	A = 16'hf3d4;
	B = 16'hf3a0;
	ans = 16'hf7ba;
	#20
	A = 16'h7582;
	B = 16'hf002;
	ans = 16'h7302;
	#20
	A = 16'hf6b1;
	B = 16'hf397;
	ans = 16'hf93e;
	#20
	A = 16'hf693;
	B = 16'hf524;
	ans = 16'hf9dc;
	#20
	A = 16'hef12;
	B = 16'h6ea8;
	ans = 16'hdea0;
	#20
	A = 16'hf3a0;
	B = 16'h642c;
	ans = 16'hf31a;
	#20
	A = 16'hf2e2;
	B = 16'h7550;
	ans = 16'h6f7c;
	#20
	A = 16'hf1f6;
	B = 16'h6dd8;
	ans = 16'hee14;
	#20
	A = 16'hf74b;
	B = 16'h72e8;
	ans = 16'hf3ae;
	#20
	A = 16'hf549;
	B = 16'hf1db;
	ans = 16'hf81b;
	#20
	A = 16'h6da2;
	B = 16'hf50b;
	ans = 16'hf345;
	#20
	A = 16'hde33;
	B = 16'hf43f;
	ans = 16'hf458;
	#20
	A = 16'hf72a;
	B = 16'h6be7;
	ans = 16'hf62d;
	#20
	A = 16'h6567;
	B = 16'h76d3;
	ans = 16'h7729;
	#20
	A = 16'h6e8c;
	B = 16'he0d9;
	ans = 16'h6df1;
	#20
	A = 16'hf6ff;
	B = 16'h751d;
	ans = 16'hef88;
	#20
	A = 16'h757b;
	B = 16'hf202;
	ans = 16'h70f4;
	#20
	A = 16'hf732;
	B = 16'hf6d3;
	ans = 16'hfb02;
	#20
	A = 16'heecf;
	B = 16'hee05;
	ans = 16'hf26a;
	#20
	A = 16'hf734;
	B = 16'h75c9;
	ans = 16'hedac;
	#20
	A = 16'h742b;
	B = 16'hf658;
	ans = 16'hf05a;
	#20
	A = 16'hed2d;
	B = 16'hf604;
	ans = 16'hf74f;
	#20
	A = 16'he90e;
	B = 16'hdaf3;
	ans = 16'he97d;
	#20
	A = 16'hf260;
	B = 16'h7238;
	ans = 16'hdd00;
	#20
	A = 16'h7672;
	B = 16'hf4cd;
	ans = 16'h6e94;
	#20
	A = 16'h7052;
	B = 16'hf0e5;
	ans = 16'he498;
	#20
	A = 16'h72b3;
	B = 16'h72c0;
	ans = 16'h76ba;
	#20
	A = 16'h7689;
	B = 16'h681f;
	ans = 16'h770d;
	#20
	A = 16'h6414;
	B = 16'he525;
	ans = 16'hdc44;
	#20
	A = 16'h74c5;
	B = 16'h74fb;
	ans = 16'h78e0;
	#20
	A = 16'h7216;
	B = 16'h7061;
	ans = 16'h753c;
	#20
	A = 16'h75d7;
	B = 16'h70df;
	ans = 16'h7823;
	#20
	A = 16'h7685;
	B = 16'h7073;
	ans = 16'h785f;
	#20
	A = 16'hf685;
	B = 16'he370;
	ans = 16'hf6c0;
	#20
	A = 16'h75e4;
	B = 16'h61e8;
	ans = 16'h7613;
	#20
	A = 16'h76d5;
	B = 16'h7502;
	ans = 16'h79ec;
	#20
	A = 16'hf725;
	B = 16'h752b;
	ans = 16'hefe8;
	#20
	A = 16'h6f30;
	B = 16'hf137;
	ans = 16'hea7c;
	#20
	A = 16'hf55b;
	B = 16'h73b5;
	ans = 16'hee02;
	#20
	A = 16'h75a4;
	B = 16'h7320;
	ans = 16'h789a;
	#20
	A = 16'he74e;
	B = 16'hf60a;
	ans = 16'hf67f;
	#20
	A = 16'he99e;
	B = 16'h76fb;
	ans = 16'h7647;
	#20
	A = 16'h720c;
	B = 16'hee80;
	ans = 16'h6d98;
	#20
	A = 16'hed42;
	B = 16'h75e1;
	ans = 16'h7490;
	#20
	A = 16'h75a6;
	B = 16'hdb16;
	ans = 16'h7598;
	#20
	A = 16'h74a1;
	B = 16'hf06b;
	ans = 16'h70d7;
	#20
	A = 16'h75a0;
	B = 16'h6f43;
	ans = 16'h7771;
	#20

	
	
	
	
	
			// Wait 100 ns for global reset to finish
		#200050;
        		
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
	
	
	always@ (posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			ans_reg <= 0;
		end else begin
			ans_reg <=ans;
		end
	end
      
endmodule

