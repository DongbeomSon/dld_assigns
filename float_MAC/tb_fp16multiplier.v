`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:48 12/10/2022
// Design Name:   fp16multiplier
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_fp16multiplier.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module tb_fp16multiplier;


//   use std.textio.all;
	
	
	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;

	// Outputs
	wire [15:0] out;
	
	
	
	//for verification
	wire [15:0] error;
	reg [15:0] ans;
	reg [15:0] ans_reg;
	assign error = out - ans_reg;
	
	reg [15:0] err_cnt;

	// Instantiate the Unit Under Test (UUT)
	fp16multiplier uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
	#50

	A = 16'h5b33;
	B = 16'h5a13;
	ans = 16'h7977;
	#20
	A = 16'hd132;
	B = 16'h4bec;
	ans = 16'he125;
	#20
	A = 16'h5b78;
	B = 16'h56ad;
	ans = 16'h763c;
	#20
	A = 16'hdbe0;
	B = 16'h59fb;
	ans = 16'hf9e3;
	#20
	A = 16'hd9b8;
	B = 16'hd6fb;
	ans = 16'h74fd;
	#20
	A = 16'hd5f7;
	B = 16'hd4a7;
	ans = 16'h6ef0;
	#20
	A = 16'hd8dd;
	B = 16'hd430;
	ans = 16'h7117;
	#20
	A = 16'hd55f;
	B = 16'h596f;
	ans = 16'hf34c;
	#20
	A = 16'hd7e1;
	B = 16'h5a78;
	ans = 16'hf65f;
	#20
	A = 16'h5912;
	B = 16'hda69;
	ans = 16'hf810;
	#20
	A = 16'hc9b0;
	B = 16'hda4a;
	ans = 16'h6879;
	#20
	A = 16'h3e3f;
	B = 16'hd8f7;
	ans = 16'hdbc1;
	#20
	A = 16'hd5ee;
	B = 16'h5816;
	ans = 16'hf20f;
	#20
	A = 16'h5bd2;
	B = 16'h59c9;
	ans = 16'h79a8;
	#20
	A = 16'hd86f;
	B = 16'hdbb5;
	ans = 16'h7845;
	#20
	A = 16'h50a0;
	B = 16'h53d5;
	ans = 16'h6887;
	#20
	A = 16'h540e;
	B = 16'h4dbd;
	ans = 16'h65d1;
	#20
	A = 16'h4824;
	B = 16'h52f4;
	ans = 16'h5f33;
	#20
	A = 16'h548e;
	B = 16'h5994;
	ans = 16'h725a;
	#20
	A = 16'h58ee;
	B = 16'hdafc;
	ans = 16'hf84e;
	#20
	A = 16'h5081;
	B = 16'hd339;
	ans = 16'he811;
	#20
	A = 16'hdab5;
	B = 16'hc4ad;
	ans = 16'h63d7;
	#20
	A = 16'h46b7;
	B = 16'hdad7;
	ans = 16'he5be;
	#20
	A = 16'h56bd;
	B = 16'h56a3;
	ans = 16'h7197;
	#20
	A = 16'h5a2d;
	B = 16'hd87c;
	ans = 16'hf6ec;
	#20
	A = 16'h5443;
	B = 16'h55de;
	ans = 16'h6e40;
	#20
	A = 16'h5566;
	B = 16'h4c1b;
	ans = 16'h658a;
	#20
	A = 16'hd735;
	B = 16'hc414;
	ans = 16'h5f59;
	#20
	A = 16'h52a1;
	B = 16'hd4cd;
	ans = 16'hebf5;
	#20
	A = 16'h4dc8;
	B = 16'hd722;
	ans = 16'he928;
	#20
	A = 16'h5487;
	B = 16'h58f7;
	ans = 16'h719f;
	#20
	A = 16'h551c;
	B = 16'h5ab2;
	ans = 16'h7447;
	#20
	A = 16'h594a;
	B = 16'h50a2;
	ans = 16'h6e20;
	#20
	A = 16'h5a6c;
	B = 16'hd7a2;
	ans = 16'hf621;
	#20
	A = 16'h540d;
	B = 16'h587b;
	ans = 16'h708a;
	#20
	A = 16'hd941;
	B = 16'h537f;
	ans = 16'hf0ec;
	#20
	A = 16'hd1e0;
	B = 16'h558a;
	ans = 16'hec11;
	#20
	A = 16'hd601;
	B = 16'h4d14;
	ans = 16'he79f;
	#20
	A = 16'h5424;
	B = 16'hcee6;
	ans = 16'he724;
	#20
	A = 16'h5bec;
	B = 16'hd108;
	ans = 16'hf0fb;
	#20
	A = 16'h4ece;
	B = 16'hd1f0;
	ans = 16'he50d;
	#20
	A = 16'hda70;
	B = 16'h5a32;
	ans = 16'hf8fc;
	#20
	A = 16'hcb87;
	B = 16'hd082;
	ans = 16'h603e;
	#20
	A = 16'h5bb1;
	B = 16'hd70e;
	ans = 16'hf6c8;
	#20
	A = 16'hd685;
	B = 16'h5997;
	ans = 16'hf48e;
	#20
	A = 16'h5a55;
	B = 16'hd65c;
	ans = 16'hf509;
	#20
	A = 16'h4c58;
	B = 16'hd0bf;
	ans = 16'he127;
	#20
	A = 16'h5848;
	B = 16'h5be2;
	ans = 16'h7838;
	#20
	A = 16'hd449;
	B = 16'h57d1;
	ans = 16'hf030;
	#20
	A = 16'h5858;
	B = 16'hd5f9;
	ans = 16'hf27c;
	#20
	A = 16'hcdc9;
	B = 16'hd1a3;
	ans = 16'h6413;
	#20
	A = 16'h49bf;
	B = 16'h5839;
	ans = 16'h6611;
	#20
	A = 16'hd757;
	B = 16'h5759;
	ans = 16'hf2be;
	#20
	A = 16'hd1fd;
	B = 16'h5ace;
	ans = 16'hf118;
	#20
	A = 16'hd4a1;
	B = 16'h59c0;
	ans = 16'hf2a7;
	#20
	A = 16'hd987;
	B = 16'hd9d8;
	ans = 16'h780a;
	#20
	A = 16'h5065;
	B = 16'h5b5c;
	ans = 16'h700b;
	#20
	A = 16'h53ba;
	B = 16'hd4fb;
	ans = 16'heccf;
	#20
	A = 16'hd197;
	B = 16'hd8ce;
	ans = 16'h6eb7;
	#20
	A = 16'hcb1c;
	B = 16'h4ca3;
	ans = 16'hdc1f;
	#20
	A = 16'h59d5;
	B = 16'hd792;
	ans = 16'hf585;
	#20
	A = 16'hd2c0;
	B = 16'hd5c8;
	ans = 16'h6ce1;
	#20
	A = 16'hd930;
	B = 16'h59e3;
	ans = 16'hf7a2;
	#20
	A = 16'h5940;
	B = 16'h4685;
	ans = 16'h6447;
	#20
	A = 16'hd952;
	B = 16'h5870;
	ans = 16'hf5e7;
	#20
	A = 16'h55e5;
	B = 16'h4a26;
	ans = 16'h6488;
	#20
	A = 16'h5b6f;
	B = 16'hd83a;
	ans = 16'hf7db;
	#20
	A = 16'h59a3;
	B = 16'hd41d;
	ans = 16'hf1cc;
	#20
	A = 16'h58b5;
	B = 16'hc428;
	ans = 16'he0e4;
	#20
	A = 16'h5943;
	B = 16'hda45;
	ans = 16'hf820;
	#20
	A = 16'h59cd;
	B = 16'h4831;
	ans = 16'h6614;
	#20
	A = 16'h5bdb;
	B = 16'h58ba;
	ans = 16'h78a4;
	#20
	A = 16'hd0dd;
	B = 16'hd471;
	ans = 16'h6966;
	#20
	A = 16'hda66;
	B = 16'hd112;
	ans = 16'h700e;
	#20
	A = 16'h5503;
	B = 16'h52fb;
	ans = 16'h6c5f;
	#20
	A = 16'h536c;
	B = 16'h5b84;
	ans = 16'h72f9;
	#20
	A = 16'h5b1d;
	B = 16'hcc09;
	ans = 16'heb2d;
	#20
	A = 16'h5683;
	B = 16'h5b6d;
	ans = 16'h760b;
	#20
	A = 16'hda62;
	B = 16'h5bee;
	ans = 16'hfa54;
	#20
	A = 16'hcf47;
	B = 16'hdad5;
	ans = 16'h6e37;
	#20
	A = 16'hd5e5;
	B = 16'h5b54;
	ans = 16'hf566;
	#20
	A = 16'h5be9;
	B = 16'h497d;
	ans = 16'h696d;
	#20
	A = 16'hd55e;
	B = 16'hd2f0;
	ans = 16'h6ca8;
	#20
	A = 16'hdb3f;
	B = 16'h5baa;
	ans = 16'hfaf1;
	#20
	A = 16'hd14e;
	B = 16'h515f;
	ans = 16'he71f;
	#20
	A = 16'hd989;
	B = 16'hd7c0;
	ans = 16'h755d;
	#20
	A = 16'hd9bc;
	B = 16'hd066;
	ans = 16'h6e4e;
	#20
	A = 16'hd868;
	B = 16'h5af2;
	ans = 16'hf7a7;
	#20
	A = 16'h5aba;
	B = 16'h5be7;
	ans = 16'h7aa5;
	#20
	A = 16'hd87c;
	B = 16'hd0ff;
	ans = 16'h6d9a;
	#20
	A = 16'h5b41;
	B = 16'hcd9a;
	ans = 16'hed14;
	#20
	A = 16'h5b08;
	B = 16'h5466;
	ans = 16'h73bb;
	#20
	A = 16'h428a;
	B = 16'h56bc;
	ans = 16'h5d81;
	#20
	A = 16'hda59;
	B = 16'h58fa;
	ans = 16'hf7e6;
	#20
	A = 16'hd6cc;
	B = 16'hda43;
	ans = 16'h7552;
	#20
	A = 16'h5a97;
	B = 16'h4ff7;
	ans = 16'h6e90;
	#20
	A = 16'h5ac2;
	B = 16'h5b2d;
	ans = 16'h7a10;
	#20
	A = 16'hd39d;
	B = 16'h525c;
	ans = 16'hea0d;
	#20
	A = 16'h5ac1;
	B = 16'h57ac;
	ans = 16'h767a;
	#20
	A = 16'hc970;
	B = 16'h55d3;
	ans = 16'he3eb;
	#20
	A = 16'hd380;
	B = 16'h4e88;
	ans = 16'he620;
	#20
	A = 16'h53cb;
	B = 16'hd8af;
	ans = 16'hf090;
	#20
	A = 16'hd67a;
	B = 16'hd990;
	ans = 16'h7481;
	#20
	A = 16'h5475;
	B = 16'h56fc;
	ans = 16'h6fc8;
	#20
	A = 16'h5980;
	B = 16'h5bc5;
	ans = 16'h7957;
	#20
	A = 16'h5b6d;
	B = 16'h5940;
	ans = 16'h78e0;
	#20
	A = 16'h52a0;
	B = 16'hdb1a;
	ans = 16'hf1e2;
	#20
	A = 16'h5ab0;
	B = 16'h5b91;
	ans = 16'h7a53;
	#20
	A = 16'hd5b1;
	B = 16'hd463;
	ans = 16'h6e3e;
	#20
	A = 16'hdb33;
	B = 16'h5ae6;
	ans = 16'hfa35;
	#20
	A = 16'h5599;
	B = 16'h55cb;
	ans = 16'h700e;
	#20
	A = 16'hd62c;
	B = 16'hd659;
	ans = 16'h70e6;
	#20
	A = 16'h4dbe;
	B = 16'hdac8;
	ans = 16'hecde;
	#20
	A = 16'hda0e;
	B = 16'hdbee;
	ans = 16'h7a00;
	#20
	A = 16'h48a2;
	B = 16'hdbbb;
	ans = 16'he87a;
	#20
	A = 16'hd8e9;
	B = 16'h5814;
	ans = 16'hf502;
	#20
	A = 16'hcc78;
	B = 16'h545b;
	ans = 16'he4de;
	#20
	A = 16'h5824;
	B = 16'hcfce;
	ans = 16'hec0a;
	#20
	A = 16'hdbc5;
	B = 16'h57c8;
	ans = 16'hf78f;
	#20
	A = 16'hdbf4;
	B = 16'h51c2;
	ans = 16'hf1b9;
	#20
	A = 16'hcb0d;
	B = 16'hdae3;
	ans = 16'h6a12;
	#20
	A = 16'hc8ee;
	B = 16'hd7ff;
	ans = 16'h64ed;
	#20
	A = 16'hd867;
	B = 16'hdb07;
	ans = 16'h77bc;
	#20
	A = 16'h4dd9;
	B = 16'h5444;
	ans = 16'h663c;
	#20
	A = 16'hd9d2;
	B = 16'hd815;
	ans = 16'h75f1;
	#20
	A = 16'hc89a;
	B = 16'h4f9e;
	ans = 16'hdc62;
	#20
	A = 16'h57bc;
	B = 16'hd05b;
	ans = 16'hec36;
	#20
	A = 16'hd665;
	B = 16'hc743;
	ans = 16'h61ce;
	#20
	A = 16'hd7db;
	B = 16'hd986;
	ans = 16'h756c;
	#20
	A = 16'h5a81;
	B = 16'hda91;
	ans = 16'hf957;
	#20
	A = 16'hd950;
	B = 16'h58e6;
	ans = 16'hf681;
	#20
	A = 16'h587e;
	B = 16'h5526;
	ans = 16'h71c8;
	#20
	A = 16'hd84b;
	B = 16'hd930;
	ans = 16'h7591;
	#20
	A = 16'h59c5;
	B = 16'hdb25;
	ans = 16'hf927;
	#20
	A = 16'h58d0;
	B = 16'hda37;
	ans = 16'hf77a;
	#20
	A = 16'h5911;
	B = 16'hdb76;
	ans = 16'hf8ba;
	#20
	A = 16'h555f;
	B = 16'h5a65;
	ans = 16'h744b;
	#20
	A = 16'hd8cd;
	B = 16'hda6a;
	ans = 16'h77b3;
	#20
	A = 16'h5a5a;
	B = 16'hd4b3;
	ans = 16'hf376;
	#20
	A = 16'h457e;
	B = 16'h53b9;
	ans = 16'h5d4d;
	#20
	A = 16'hd28c;
	B = 16'h5ab3;
	ans = 16'hf17b;
	#20
	A = 16'hd971;
	B = 16'hce38;
	ans = 16'h6c3b;
	#20
	A = 16'h5864;
	B = 16'h4fc8;
	ans = 16'h6c45;
	#20
	A = 16'h588b;
	B = 16'hd435;
	ans = 16'hf0c7;
	#20
	A = 16'h54d6;
	B = 16'hd0c3;
	ans = 16'he9c2;
	#20
	A = 16'h58fc;
	B = 16'hd0b1;
	ans = 16'hedd9;
	#20
	A = 16'hd873;
	B = 16'hdbf4;
	ans = 16'h786c;
	#20
	A = 16'h5443;
	B = 16'hd427;
	ans = 16'hec6d;
	#20
	A = 16'hda52;
	B = 16'h551e;
	ans = 16'hf40b;
	#20
	A = 16'h54de;
	B = 16'hd7ab;
	ans = 16'hf0aa;
	#20
	A = 16'hd999;
	B = 16'hd838;
	ans = 16'h75e7;
	#20
	A = 16'h5b11;
	B = 16'h5872;
	ans = 16'h77da;
	#20
	A = 16'h5bc5;
	B = 16'h432b;
	ans = 16'h62f6;
	#20
	A = 16'hca41;
	B = 16'hdaf2;
	ans = 16'h696e;
	#20
	A = 16'h59e9;
	B = 16'hd887;
	ans = 16'hf6b0;
	#20
	A = 16'hceab;
	B = 16'hdb25;
	ans = 16'h6df4;
	#20
	A = 16'hd659;
	B = 16'h5690;
	ans = 16'hf135;
	#20
	A = 16'hdbca;
	B = 16'hbd08;
	ans = 16'h5ce6;
	#20
	A = 16'hcc12;
	B = 16'hcfd9;
	ans = 16'h5ffc;
	#20
	A = 16'hd483;
	B = 16'hda51;
	ans = 16'h7320;
	#20
	A = 16'h5856;
	B = 16'h4a0a;
	ans = 16'h668c;
	#20
	A = 16'hd9b1;
	B = 16'h59de;
	ans = 16'hf82d;
	#20
	A = 16'h516b;
	B = 16'hd893;
	ans = 16'hee32;
	#20
	A = 16'hd40e;
	B = 16'hd858;
	ans = 16'h7067;
	#20
	A = 16'h5bc7;
	B = 16'hce1f;
	ans = 16'hedf3;
	#20
	A = 16'hd50c;
	B = 16'hd76b;
	ans = 16'h70ae;
	#20
	A = 16'hd802;
	B = 16'h550a;
	ans = 16'hf10d;
	#20
	A = 16'hd8d7;
	B = 16'h54df;
	ans = 16'hf1e5;
	#20
	A = 16'h5433;
	B = 16'h5a89;
	ans = 16'h72dc;
	#20
	A = 16'h5b04;
	B = 16'hdb4c;
	ans = 16'hfa66;
	#20
	A = 16'h5b55;
	B = 16'hd7fa;
	ans = 16'hf750;
	#20
	A = 16'h5426;
	B = 16'h5432;
	ans = 16'h6c5a;
	#20
	A = 16'h59d2;
	B = 16'hd00e;
	ans = 16'hede6;
	#20
	A = 16'h580e;
	B = 16'h5162;
	ans = 16'h6d75;
	#20
	A = 16'h512e;
	B = 16'hd617;
	ans = 16'hebe3;
	#20
	A = 16'h4995;
	B = 16'h5698;
	ans = 16'h649a;
	#20
	A = 16'hd463;
	B = 16'hcff8;
	ans = 16'h685f;
	#20
	A = 16'h5bc4;
	B = 16'h55fb;
	ans = 16'h75ce;
	#20
	A = 16'h5230;
	B = 16'h5bc0;
	ans = 16'h71fe;
	#20
	A = 16'h5a30;
	B = 16'hd007;
	ans = 16'hee3b;
	#20
	A = 16'h58c9;
	B = 16'hcaef;
	ans = 16'he826;
	#20
	A = 16'h4fd7;
	B = 16'hd8e7;
	ans = 16'hecce;
	#20
	A = 16'h5b89;
	B = 16'hd725;
	ans = 16'hf6bb;
	#20
	A = 16'hc6a6;
	B = 16'hdbb8;
	ans = 16'h666a;
	#20
	A = 16'hd46b;
	B = 16'h51b5;
	ans = 16'hea4e;
	#20
	A = 16'hdb63;
	B = 16'h55de;
	ans = 16'hf56b;
	#20
	A = 16'hd947;
	B = 16'hd74b;
	ans = 16'h74d0;
	#20
	A = 16'h5630;
	B = 16'hd646;
	ans = 16'hf0da;
	#20
	A = 16'hdb51;
	B = 16'hdb2a;
	ans = 16'h7a8d;
	#20
	A = 16'hda7f;
	B = 16'hd862;
	ans = 16'h771e;
	#20
	A = 16'hd10c;
	B = 16'h58f4;
	ans = 16'hee40;
	#20
	A = 16'h5601;
	B = 16'h56fe;
	ans = 16'h713f;
	#20
	A = 16'h553d;
	B = 16'hdb0b;
	ans = 16'hf49d;
	#20
	A = 16'h530b;
	B = 16'h5432;
	ans = 16'h6b63;
	#20
	A = 16'hd9f7;
	B = 16'h5aef;
	ans = 16'hf92b;
	#20
	A = 16'h5402;
	B = 16'hd468;
	ans = 16'hec6a;
	#20
	A = 16'hd5ef;
	B = 16'h5882;
	ans = 16'hf2b0;
	#20
	A = 16'h5b89;
	B = 16'h5558;
	ans = 16'h7509;
	#20
	A = 16'hd38e;
	B = 16'h538f;
	ans = 16'heb23;
	#20
	A = 16'hd4e0;
	B = 16'h5b97;
	ans = 16'hf4a0;
	#20
	A = 16'h5a82;
	B = 16'hd5d4;
	ans = 16'hf4be;
	#20
	A = 16'hda24;
	B = 16'h5932;
	ans = 16'hf7fa;
	#20
	A = 16'hda1f;
	B = 16'h5a12;
	ans = 16'hf8a5;
	#20
	A = 16'h553b;
	B = 16'h5524;
	ans = 16'h6eb9;
	#20
	A = 16'h58f2;
	B = 16'hd95a;
	ans = 16'hf69e;
	#20
	A = 16'h505f;
	B = 16'h5256;
	ans = 16'h66ec;
	#20
	A = 16'h4cc6;
	B = 16'h5433;
	ans = 16'h6503;
	#20
	A = 16'h5499;
	B = 16'hd9cc;
	ans = 16'hf2aa;
	#20
	A = 16'h4d4f;
	B = 16'hd877;
	ans = 16'he9ed;
	#20
	A = 16'h557d;
	B = 16'h59a6;
	ans = 16'h73c0;
	#20
	A = 16'h57da;
	B = 16'h585c;
	ans = 16'h7447;
	#20
	A = 16'h4d6e;
	B = 16'hd46c;
	ans = 16'he601;
	#20
	A = 16'hdb72;
	B = 16'h545e;
	ans = 16'hf410;
	#20
	A = 16'h547d;
	B = 16'hdaa6;
	ans = 16'hf376;
	#20
	A = 16'hd8de;
	B = 16'hcc47;
	ans = 16'h6934;
	#20
	A = 16'hd8aa;
	B = 16'hdb52;
	ans = 16'h7845;
	#20
	A = 16'h5056;
	B = 16'hdb74;
	ans = 16'hf00a;
	#20
	A = 16'h5573;
	B = 16'h5ade;
	ans = 16'h74ad;
	#20
	A = 16'hdb41;
	B = 16'h5a6b;
	ans = 16'hf9d2;
	#20
	A = 16'h54a8;
	B = 16'h5a83;
	ans = 16'h7394;
	#20
	A = 16'hd4e3;
	B = 16'hd622;
	ans = 16'h6f7e;
	#20
	A = 16'hd485;
	B = 16'hd6ac;
	ans = 16'h6f8a;
	#20
	A = 16'hd851;
	B = 16'hca7c;
	ans = 16'h66ff;
	#20
	A = 16'hd942;
	B = 16'h56a9;
	ans = 16'hf461;
	#20
	A = 16'h560f;
	B = 16'hd465;
	ans = 16'heea8;
	#20
	A = 16'hd785;
	B = 16'h4e22;
	ans = 16'he9c4;
	#20
	A = 16'h59b9;
	B = 16'h5bf5;
	ans = 16'h79b1;
	#20
	A = 16'h59bc;
	B = 16'hd449;
	ans = 16'hf225;
	#20
	A = 16'h53de;
	B = 16'h5129;
	ans = 16'h6913;
	#20
	A = 16'h4a73;
	B = 16'hd4ca;
	ans = 16'he3b9;
	#20
	A = 16'hd8b9;
	B = 16'hd847;
	ans = 16'h750d;
	#20
	A = 16'hd84e;
	B = 16'h5a71;
	ans = 16'hf6ef;
	#20
	A = 16'h54f2;
	B = 16'h596d;
	ans = 16'h72b5;
	#20
	A = 16'hdba7;
	B = 16'h51a2;
	ans = 16'hf163;
	#20
	A = 16'h5562;
	B = 16'hd648;
	ans = 16'hf03a;
	#20
	A = 16'h5b70;
	B = 16'h56c2;
	ans = 16'h7648;
	#20
	A = 16'h541b;
	B = 16'h5a86;
	ans = 16'h72b2;
	#20
	A = 16'h3efd;
	B = 16'h546f;
	ans = 16'h57bf;
	#20
	A = 16'h5baf;
	B = 16'hd91a;
	ans = 16'hf8e6;
	#20
	A = 16'h5a6b;
	B = 16'hc906;
	ans = 16'he808;
	#20
	A = 16'hc730;
	B = 16'h5304;
	ans = 16'hde4e;
	#20
	A = 16'hd894;
	B = 16'hd9ef;
	ans = 16'h76cb;
	#20
	A = 16'hda5b;
	B = 16'h551a;
	ans = 16'hf40e;
	#20
	A = 16'hd5ce;
	B = 16'h4973;
	ans = 16'he3e8;
	#20
	A = 16'h5beb;
	B = 16'hd6a8;
	ans = 16'hf697;
	#20
	A = 16'h4d4f;
	B = 16'hdb0a;
	ans = 16'hecac;
	#20
	A = 16'h5669;
	B = 16'hd830;
	ans = 16'hf2b6;
	#20
	A = 16'hd883;
	B = 16'h59c2;
	ans = 16'hf67f;
	#20
	A = 16'hc942;
	B = 16'h4ebd;
	ans = 16'hdc6e;
	#20
	A = 16'hda17;
	B = 16'hd13f;
	ans = 16'h6ffd;
	#20
	A = 16'h544b;
	B = 16'h5b02;
	ans = 16'h7385;
	#20
	A = 16'hd5ea;
	B = 16'h5601;
	ans = 16'hf070;
	#20
	A = 16'h5643;
	B = 16'h5b06;
	ans = 16'h757f;
	#20
	A = 16'h5b63;
	B = 16'hd074;
	ans = 16'hf01d;
	#20
	A = 16'hd9ac;
	B = 16'h5418;
	ans = 16'hf1ce;
	#20
	A = 16'hc417;
	B = 16'h5be1;
	ans = 16'he407;
	#20
	A = 16'h4567;
	B = 16'h48a9;
	ans = 16'h524b;
	#20
	A = 16'hd102;
	B = 16'hd2cb;
	ans = 16'h6841;
	#20
	A = 16'h4d00;
	B = 16'hdb99;
	ans = 16'hecc0;
	#20
	A = 16'hda5f;
	B = 16'hd88b;
	ans = 16'h773c;
	#20
	A = 16'h4a5c;
	B = 16'h4c87;
	ans = 16'h5b33;
	#20
	A = 16'hd63c;
	B = 16'hd85c;
	ans = 16'h72cb;
	#20
	A = 16'hd808;
	B = 16'h54ca;
	ans = 16'hf0d4;
	#20
	A = 16'hceca;
	B = 16'hdb0a;
	ans = 16'h6df9;
	#20
	A = 16'hd510;
	B = 16'h5a76;
	ans = 16'hf417;
	#20
	A = 16'h552f;
	B = 16'h5b66;
	ans = 16'h74cb;
	#20
	A = 16'h59bd;
	B = 16'h56b9;
	ans = 16'h74d2;
	#20
	A = 16'h5ab1;
	B = 16'hdb4b;
	ans = 16'hfa1a;
	#20
	A = 16'h5285;
	B = 16'h59ab;
	ans = 16'h709e;
	#20
	A = 16'h5599;
	B = 16'hd28c;
	ans = 16'hec95;
	#20
	A = 16'h54b5;
	B = 16'h58d0;
	ans = 16'h71aa;
	#20
	A = 16'h5025;
	B = 16'h5a60;
	ans = 16'h6e9b;
	#20
	A = 16'h5a00;
	B = 16'h5b91;
	ans = 16'h79ad;
	#20
	A = 16'hd615;
	B = 16'hd891;
	ans = 16'h72f1;
	#20
	A = 16'h515d;
	B = 16'hd9f2;
	ans = 16'heff9;
	#20
	A = 16'hdae6;
	B = 16'hd915;
	ans = 16'h7862;
	#20
	A = 16'h5889;
	B = 16'hd6b4;
	ans = 16'hf39a;
	#20
	A = 16'hd869;
	B = 16'h57a6;
	ans = 16'hf437;
	#20
	A = 16'hd8f3;
	B = 16'hd37c;
	ans = 16'h70a1;
	#20
	A = 16'h59ec;
	B = 16'h532c;
	ans = 16'h714f;
	#20
	A = 16'hd9bb;
	B = 16'hdb81;
	ans = 16'h7960;
	#20
	A = 16'hd9da;
	B = 16'h5541;
	ans = 16'hf3b0;
	#20
	A = 16'h4217;
	B = 16'h5473;
	ans = 16'h5ac6;
	#20
	A = 16'hd0f5;
	B = 16'hdb0a;
	ans = 16'h705d;
	#20
	A = 16'h5a1f;
	B = 16'hdbb8;
	ans = 16'hf9e8;
	#20
	A = 16'hda4d;
	B = 16'h5456;
	ans = 16'hf2d4;
	#20
	A = 16'h5b37;
	B = 16'hd47b;
	ans = 16'hf40a;
	#20
	A = 16'hd68a;
	B = 16'h58a8;
	ans = 16'hf39d;
	#20
	A = 16'h46a5;
	B = 16'hd8bb;
	ans = 16'he3dc;
	#20
	A = 16'hd401;
	B = 16'hd4c3;
	ans = 16'h6cc4;
	#20
	A = 16'h5b45;
	B = 16'hd172;
	ans = 16'hf0f3;
	#20
	A = 16'hc8a2;
	B = 16'hd876;
	ans = 16'h652b;
	#20
	A = 16'hcd58;
	B = 16'hd9b8;
	ans = 16'h6ba4;
	#20
	A = 16'hd857;
	B = 16'hd957;
	ans = 16'h75cb;
	#20
	A = 16'h503b;
	B = 16'h5143;
	ans = 16'h6591;
	#20
	A = 16'h5762;
	B = 16'hd326;
	ans = 16'hee99;
	#20
	A = 16'hda78;
	B = 16'h5b24;
	ans = 16'hf9c6;
	#20
	A = 16'hd8bc;
	B = 16'hd575;
	ans = 16'h7275;
	#20
	A = 16'hd511;
	B = 16'h54a3;
	ans = 16'heddf;
	#20
	A = 16'h4727;
	B = 16'h5ad1;
	ans = 16'h6618;
	#20
	A = 16'hd92a;
	B = 16'hda24;
	ans = 16'h77ed;
	#20
	A = 16'h56de;
	B = 16'hd912;
	ans = 16'hf45a;
	#20
	A = 16'hd173;
	B = 16'hd79c;
	ans = 16'h6d2f;
	#20
	A = 16'h5895;
	B = 16'h57aa;
	ans = 16'h7464;
	#20
	A = 16'hd97a;
	B = 16'hd3ce;
	ans = 16'h7158;
	#20
	A = 16'hd951;
	B = 16'hdacc;
	ans = 16'h7884;
	#20
	A = 16'hd7a3;
	B = 16'h5249;
	ans = 16'hee00;
	#20
	A = 16'hda54;
	B = 16'hdb9e;
	ans = 16'h7a06;
	#20
	A = 16'hd630;
	B = 16'hd359;
	ans = 16'h6daf;
	#20
	A = 16'hd0c0;
	B = 16'h5acb;
	ans = 16'hf009;
	#20
	A = 16'h56fa;
	B = 16'h5197;
	ans = 16'h6ce0;
	#20
	A = 16'h5890;
	B = 16'hdb2e;
	ans = 16'hf818;
	#20
	A = 16'h54ab;
	B = 16'h4b14;
	ans = 16'h6421;
	#20
	A = 16'hd74f;
	B = 16'h581d;
	ans = 16'hf384;
	#20
	A = 16'hd466;
	B = 16'h586c;
	ans = 16'hf0dd;
	#20
	A = 16'hd8b1;
	B = 16'h5715;
	ans = 16'hf427;
	#20
	A = 16'h593c;
	B = 16'h532c;
	ans = 16'h70b1;
	#20
	A = 16'h5802;
	B = 16'hd252;
	ans = 16'hee55;
	#20
	A = 16'h58f0;
	B = 16'h50ec;
	ans = 16'h6e13;
	#20
	A = 16'hd56e;
	B = 16'h543e;
	ans = 16'hedc2;
	#20
	A = 16'h55e2;
	B = 16'h5bc4;
	ans = 16'h75b6;
	#20
	A = 16'hd7cc;
	B = 16'hd57a;
	ans = 16'h7156;
	#20
	A = 16'h551c;
	B = 16'hd687;
	ans = 16'hf02b;
	#20
	A = 16'h5b44;
	B = 16'hd3f4;
	ans = 16'hf339;
	#20
	A = 16'hce74;
	B = 16'h5bb7;
	ans = 16'hee39;
	#20
	A = 16'hd8d1;
	B = 16'h4d46;
	ans = 16'hea5a;
	#20
	A = 16'hdac8;
	B = 16'h5a83;
	ans = 16'hf985;
	#20
	A = 16'h580c;
	B = 16'hd833;
	ans = 16'hf440;
	#20
	A = 16'h596b;
	B = 16'h5273;
	ans = 16'h705e;
	#20
	A = 16'hdad9;
	B = 16'hda4d;
	ans = 16'h7965;
	#20
	A = 16'hda21;
	B = 16'h5884;
	ans = 16'hf6eb;
	#20
	A = 16'hd62b;
	B = 16'hd9f1;
	ans = 16'h7495;
	#20
	A = 16'h57a7;
	B = 16'h5759;
	ans = 16'h7307;
	#20
	A = 16'hd27c;
	B = 16'h5b63;
	ans = 16'hf1fd;
	#20
	A = 16'hdb58;
	B = 16'hd313;
	ans = 16'h727e;
	#20
	A = 16'hdbae;
	B = 16'hda92;
	ans = 16'h7a4f;
	#20
	A = 16'hd524;
	B = 16'h483b;
	ans = 16'he170;
	#20
	A = 16'hd030;
	B = 16'h5791;
	ans = 16'hebec;
	#20
	A = 16'h59b5;
	B = 16'hdaa8;
	ans = 16'hf8c0;
	#20
	A = 16'h3aba;
	B = 16'hd783;
	ans = 16'hd651;
	#20
	A = 16'hd9af;
	B = 16'h567f;
	ans = 16'hf49d;
	#20
	A = 16'hc7cb;
	B = 16'hd8d8;
	ans = 16'h64b8;
	#20
	A = 16'h501a;
	B = 16'hd774;
	ans = 16'heba4;
	#20
	A = 16'hdb4a;
	B = 16'hd979;
	ans = 16'h78fc;
	#20
	A = 16'hd834;
	B = 16'h5493;
	ans = 16'hf0ce;
	#20
	A = 16'hd745;
	B = 16'hd627;
	ans = 16'h7197;
	#20
	A = 16'hda56;
	B = 16'hcd09;
	ans = 16'h6bfa;
	#20
	A = 16'hd9be;
	B = 16'h575e;
	ans = 16'hf54a;
	#20
	A = 16'h59b0;
	B = 16'hd1de;
	ans = 16'hf02c;
	#20
	A = 16'h59e9;
	B = 16'h55a6;
	ans = 16'h742c;
	#20
	A = 16'hdbb2;
	B = 16'hd984;
	ans = 16'h794e;
	#20
	A = 16'h582c;
	B = 16'h569c;
	ans = 16'h72e5;
	#20
	A = 16'hd47d;
	B = 16'h5690;
	ans = 16'hef5d;
	#20
	A = 16'h598b;
	B = 16'hd913;
	ans = 16'hf708;
	#20
	A = 16'h59d8;
	B = 16'hda18;
	ans = 16'hf874;
	#20
	A = 16'h5a56;
	B = 16'hd489;
	ans = 16'hf32f;
	#20
	A = 16'hd1b6;
	B = 16'h5a51;
	ans = 16'hf082;
	#20
	A = 16'h5999;
	B = 16'h59b7;
	ans = 16'h77ff;
	#20
	A = 16'hda8d;
	B = 16'h56e7;
	ans = 16'hf5a7;
	#20
	A = 16'h548b;
	B = 16'hd83f;
	ans = 16'hf0d3;
	#20
	A = 16'hdb49;
	B = 16'h521f;
	ans = 16'hf193;
	#20
	A = 16'h5b66;
	B = 16'hd432;
	ans = 16'hf3c2;
	#20
	A = 16'hd860;
	B = 16'h548f;
	ans = 16'hf0fc;
	#20
	A = 16'h5be3;
	B = 16'h5a98;
	ans = 16'h7a80;
	#20
	A = 16'hd7c7;
	B = 16'hd33a;
	ans = 16'h6f07;
	#20
	A = 16'hd941;
	B = 16'h5915;
	ans = 16'hf6ad;
	#20
	A = 16'h5a85;
	B = 16'hda85;
	ans = 16'hf950;
	#20
	A = 16'hd49e;
	B = 16'h5279;
	ans = 16'heb79;
	#20
	A = 16'h5bcd;
	B = 16'hdb61;
	ans = 16'hfb32;
	#20
	A = 16'h5354;
	B = 16'hce08;
	ans = 16'he586;
	#20
	A = 16'h553f;
	B = 16'hdaf0;
	ans = 16'hf48d;
	#20
	A = 16'hda80;
	B = 16'h58cd;
	ans = 16'hf7cd;
	#20
	A = 16'h52c2;
	B = 16'hd810;
	ans = 16'heedd;
	#20
	A = 16'hd3ea;
	B = 16'h555c;
	ans = 16'hed4d;
	#20
	A = 16'h5a36;
	B = 16'h53d0;
	ans = 16'h7211;
	#20
	A = 16'hd751;
	B = 16'hda74;
	ans = 16'h75e7;
	#20
	A = 16'h5b4e;
	B = 16'h522f;
	ans = 16'h71a5;
	#20
	A = 16'h5829;
	B = 16'hd04c;
	ans = 16'hec78;
	#20
	A = 16'h50b1;
	B = 16'h543e;
	ans = 16'h68fa;
	#20
	A = 16'hd92c;
	B = 16'h586b;
	ans = 16'hf5b6;
	#20
	A = 16'hd45a;
	B = 16'hd88f;
	ans = 16'h70f6;
	#20
	A = 16'h58c3;
	B = 16'hd518;
	ans = 16'hf210;
	#20
	A = 16'h4d4d;
	B = 16'hc729;
	ans = 16'hd8bf;
	#20
	A = 16'hd0c3;
	B = 16'hd10f;
	ans = 16'h6606;
	#20
	A = 16'h5325;
	B = 16'h5a64;
	ans = 16'h71b5;
	#20
	A = 16'hd022;
	B = 16'h5039;
	ans = 16'he45d;
	#20
	A = 16'h5b42;
	B = 16'h45a4;
	ans = 16'h651e;
	#20
	A = 16'hd86d;
	B = 16'h57e1;
	ans = 16'hf45c;
	#20
	A = 16'hd948;
	B = 16'h5ac0;
	ans = 16'hf875;
	#20
	A = 16'hc9aa;
	B = 16'hca97;
	ans = 16'h58aa;
	#20
	A = 16'hd67e;
	B = 16'h5670;
	ans = 16'hf139;
	#20
	A = 16'hdae6;
	B = 16'h551a;
	ans = 16'hf466;
	#20
	A = 16'hd56d;
	B = 16'hc762;
	ans = 16'h6102;
	#20
	A = 16'h5659;
	B = 16'hd916;
	ans = 16'hf409;
	#20
	A = 16'h5365;
	B = 16'h4dbd;
	ans = 16'h654e;
	#20
	A = 16'h5b12;
	B = 16'h5a96;
	ans = 16'h79d2;
	#20
	A = 16'hcd00;
	B = 16'hda2d;
	ans = 16'h6bb8;
	#20
	A = 16'hd9c0;
	B = 16'hcc61;
	ans = 16'h6a4b;
	#20
	A = 16'hd76f;
	B = 16'hd6e5;
	ans = 16'h7268;
	#20
	A = 16'hd6a2;
	B = 16'h5b64;
	ans = 16'hf621;
	#20
	A = 16'h510d;
	B = 16'hda19;
	ans = 16'hefb3;
	#20
	A = 16'h5526;
	B = 16'h517d;
	ans = 16'h6b10;
	#20
	A = 16'hd772;
	B = 16'h597d;
	ans = 16'hf51c;
	#20
	A = 16'h45bf;
	B = 16'hd9fc;
	ans = 16'he44c;
	#20
	A = 16'h5643;
	B = 16'h59d0;
	ans = 16'h748d;
	#20
	A = 16'h5b23;
	B = 16'hdaed;
	ans = 16'hfa2e;
	#20
	A = 16'h59fa;
	B = 16'hd4c1;
	ans = 16'hf31a;
	#20
	A = 16'h5044;
	B = 16'h5941;
	ans = 16'h6d9a;
	#20
	A = 16'h594e;
	B = 16'h50bc;
	ans = 16'h6e47;
	#20
	A = 16'h57f2;
	B = 16'h5bbd;
	ans = 16'h77af;
	#20
	A = 16'hd0b6;
	B = 16'hd958;
	ans = 16'h6e4b;
	#20
	A = 16'hdac0;
	B = 16'hd413;
	ans = 16'h72e0;
	#20
	A = 16'hda35;
	B = 16'h54f6;
	ans = 16'hf3b3;
	#20
	A = 16'hd860;
	B = 16'hda62;
	ans = 16'h76fb;
	#20
	A = 16'h5574;
	B = 16'h50b0;
	ans = 16'h6a64;
	#20
	A = 16'h5a8a;
	B = 16'h5903;
	ans = 16'h7819;
	#20
	A = 16'hd433;
	B = 16'hd711;
	ans = 16'h6f6b;
	#20
	A = 16'hd932;
	B = 16'h5928;
	ans = 16'hf6b2;
	#20
	A = 16'hd96b;
	B = 16'hd527;
	ans = 16'h72fb;
	#20
	A = 16'h59ac;
	B = 16'h50ce;
	ans = 16'h6ed0;
	#20
	A = 16'h57c3;
	B = 16'hdaf2;
	ans = 16'hf6bd;
	#20
	A = 16'haaa6;
	B = 16'h5a6a;
	ans = 16'hc955;
	#20
	A = 16'h5b24;
	B = 16'hda39;
	ans = 16'hf98e;
	#20
	A = 16'hd0c5;
	B = 16'hd128;
	ans = 16'h6626;
	#20
	A = 16'hd803;
	B = 16'hdbbe;
	ans = 16'h77c4;
	#20
	A = 16'h5a55;
	B = 16'h4c82;
	ans = 16'h6b23;
	#20
	A = 16'hd9fb;
	B = 16'h49ee;
	ans = 16'he86f;
	#20
	A = 16'hd715;
	B = 16'h4c30;
	ans = 16'he76a;
	#20
	A = 16'h58c8;
	B = 16'h5ad0;
	ans = 16'h7812;
	#20
	A = 16'hc96d;
	B = 16'hd508;
	ans = 16'h62d3;
	#20
	A = 16'hd411;
	B = 16'hd3f4;
	ans = 16'h6c0b;
	#20
	A = 16'h4eec;
	B = 16'hc6b3;
	ans = 16'hd9cc;
	#20
	A = 16'h57a4;
	B = 16'h5b52;
	ans = 16'h76fe;
	#20
	A = 16'hda8a;
	B = 16'h5bea;
	ans = 16'hfa78;
	#20
	A = 16'h5a86;
	B = 16'h587c;
	ans = 16'h7750;
	#20
	A = 16'h45f1;
	B = 16'hd51a;
	ans = 16'hdf94;
	#20
	A = 16'h5811;
	B = 16'hd8c7;
	ans = 16'hf4db;
	#20
	A = 16'h5520;
	B = 16'h595e;
	ans = 16'h72e0;
	#20
	A = 16'h5796;
	B = 16'h5b98;
	ans = 16'h7733;
	#20
	A = 16'h5b01;
	B = 16'hdac3;
	ans = 16'hf9eb;
	#20
	A = 16'hd74d;
	B = 16'hd9ef;
	ans = 16'h756a;
	#20
	A = 16'hdaff;
	B = 16'h4acc;
	ans = 16'he9f2;
	#20
	A = 16'h5bf1;
	B = 16'hd9a9;
	ans = 16'hf99e;
	#20
	A = 16'h57af;
	B = 16'hd7b7;
	ans = 16'hf369;
	#20
	A = 16'h59ed;
	B = 16'h52e9;
	ans = 16'h711e;
	#20
	A = 16'hdbbb;
	B = 16'hd4ec;
	ans = 16'h74c2;
	#20
	A = 16'hd327;
	B = 16'h5ad2;
	ans = 16'hf219;
	#20
	A = 16'h50df;
	B = 16'hd8c1;
	ans = 16'hedca;
	#20
	A = 16'h5b29;
	B = 16'h5b4a;
	ans = 16'h7a86;
	#20
	A = 16'h4610;
	B = 16'hdb84;
	ans = 16'he5b2;
	#20
	A = 16'hc2d1;
	B = 16'h5987;
	ans = 16'he0b6;
	#20
	A = 16'hd093;
	B = 16'h53b3;
	ans = 16'he867;
	#20
	A = 16'h5a02;
	B = 16'h5ae9;
	ans = 16'h7930;
	#20
	A = 16'h5831;
	B = 16'h5594;
	ans = 16'h71d8;
	#20
	A = 16'hd12e;
	B = 16'h5aaf;
	ans = 16'hf054;
	#20
	A = 16'hc6f8;
	B = 16'h5419;
	ans = 16'hdf24;
	#20
	A = 16'h5a4a;
	B = 16'hd209;
	ans = 16'hf0bf;
	#20
	A = 16'h5a33;
	B = 16'h5814;
	ans = 16'h7652;
	#20
	A = 16'hd675;
	B = 16'h5b47;
	ans = 16'hf5e0;
	#20
	A = 16'h56c1;
	B = 16'h5b06;
	ans = 16'h75ee;
	#20
	A = 16'hda42;
	B = 16'h5327;
	ans = 16'hf198;
	#20
	A = 16'h5799;
	B = 16'hdb43;
	ans = 16'hf6e6;
	#20
	A = 16'hd526;
	B = 16'h4b51;
	ans = 16'he4b5;
	#20
	A = 16'hd88f;
	B = 16'h58a8;
	ans = 16'hf54e;
	#20
	A = 16'h3669;
	B = 16'hda7c;
	ans = 16'hd532;
	#20
	A = 16'h54c6;
	B = 16'h5984;
	ans = 16'h7295;
	#20
	A = 16'hd6af;
	B = 16'hd860;
	ans = 16'h734f;
	#20
	A = 16'h5832;
	B = 16'h5a5c;
	ans = 16'h76ab;
	#20
	A = 16'hc535;
	B = 16'hd4f4;
	ans = 16'h5e73;
	#20
	A = 16'hd4f1;
	B = 16'hd442;
	ans = 16'h6d43;
	#20
	A = 16'h59d8;
	B = 16'hdaaa;
	ans = 16'hf8de;
	#20
	A = 16'hcd50;
	B = 16'hdac7;
	ans = 16'h6c80;
	#20
	A = 16'h5a42;
	B = 16'hd5e5;
	ans = 16'hf49c;
	#20
	A = 16'h5bd5;
	B = 16'hd8d9;
	ans = 16'hf8bf;
	#20
	A = 16'h539b;
	B = 16'h5ab1;
	ans = 16'h725d;
	#20
	A = 16'h5bac;
	B = 16'h5952;
	ans = 16'h791a;
	#20
	A = 16'h53c0;
	B = 16'h5b28;
	ans = 16'h72ef;
	#20
	A = 16'hda31;
	B = 16'hdb5a;
	ans = 16'h79b1;
	#20
	A = 16'h5a19;
	B = 16'hd6f7;
	ans = 16'hf54f;
	#20
	A = 16'h5a4d;
	B = 16'h58aa;
	ans = 16'h7759;
	#20
	A = 16'hcb5d;
	B = 16'hdbb9;
	ans = 16'h6b1c;
	#20
	A = 16'h500c;
	B = 16'hdb15;
	ans = 16'hef2a;
	#20
	A = 16'h583d;
	B = 16'hdaf9;
	ans = 16'hf763;
	#20
	A = 16'h5550;
	B = 16'hd922;
	ans = 16'hf2d1;
	#20
	A = 16'hd767;
	B = 16'h5712;
	ans = 16'hf28b;
	#20
	A = 16'hd57c;
	B = 16'hd944;
	ans = 16'h7338;
	#20
	A = 16'h58a2;
	B = 16'h58cd;
	ans = 16'h758f;
	#20
	A = 16'h56e5;
	B = 16'h4b40;
	ans = 16'h6640;
	#20
	A = 16'h5581;
	B = 16'h584c;
	ans = 16'h71ea;
	#20
	A = 16'h534d;
	B = 16'hd684;
	ans = 16'hedf2;
	#20
	A = 16'h566d;
	B = 16'hc444;
	ans = 16'hdeda;
	#20
	A = 16'h4e22;
	B = 16'h5799;
	ans = 16'h69d3;
	#20
	A = 16'hdbbb;
	B = 16'hdae2;
	ans = 16'h7aa7;
	#20
	A = 16'h4e8e;
	B = 16'h50c7;
	ans = 16'h63d4;
	#20
	A = 16'h5633;
	B = 16'hd972;
	ans = 16'hf438;
	#20
	A = 16'h50a0;
	B = 16'hd3db;
	ans = 16'he88b;
	#20
	A = 16'hdbd2;
	B = 16'h51b1;
	ans = 16'hf190;
	#20
	A = 16'h4e8f;
	B = 16'hdade;
	ans = 16'heda1;
	#20
	A = 16'h5bb6;
	B = 16'hd1bd;
	ans = 16'hf188;
	#20
	A = 16'hdbbe;
	B = 16'h5732;
	ans = 16'hf6f7;
	#20
	A = 16'h5755;
	B = 16'hdaac;
	ans = 16'hf61d;
	#20
	A = 16'hd7f7;
	B = 16'hda4e;
	ans = 16'h7647;
	#20
	A = 16'h58fd;
	B = 16'hd568;
	ans = 16'hf2be;
	#20
	A = 16'h596b;
	B = 16'h57bd;
	ans = 16'h753e;
	#20
	A = 16'hda91;
	B = 16'h5b29;
	ans = 16'hf9e1;
	#20
	A = 16'h5a8a;
	B = 16'h4d12;
	ans = 16'h6c25;
	#20
	A = 16'hd0fc;
	B = 16'hd1f5;
	ans = 16'h676c;
	#20
	A = 16'hdacd;
	B = 16'h585a;
	ans = 16'hf766;
	#20
	A = 16'hda82;
	B = 16'hd2e8;
	ans = 16'h719e;
	#20
	A = 16'hd883;
	B = 16'hd60e;
	ans = 16'h72d4;
	#20
	A = 16'hd85b;
	B = 16'h5bd0;
	ans = 16'hf841;
	#20
	A = 16'hdb61;
	B = 16'h599b;
	ans = 16'hf92c;
	#20
	A = 16'h5737;
	B = 16'hd845;
	ans = 16'hf3b3;
	#20
	A = 16'hd851;
	B = 16'h5af5;
	ans = 16'hf782;
	#20
	A = 16'h5aa9;
	B = 16'hdbe9;
	ans = 16'hfa96;
	#20
	A = 16'hdb94;
	B = 16'h580d;
	ans = 16'hf7ad;
	#20
	A = 16'hd8db;
	B = 16'hcdb8;
	ans = 16'h6af1;
	#20
	A = 16'hd488;
	B = 16'hd5ce;
	ans = 16'h6e93;
	#20
	A = 16'hd437;
	B = 16'hd4fb;
	ans = 16'h6d3f;
	#20
	A = 16'hd49e;
	B = 16'hdb8a;
	ans = 16'h745a;
	#20
	A = 16'h570e;
	B = 16'hd83b;
	ans = 16'hf376;
	#20
	A = 16'hd873;
	B = 16'h59d2;
	ans = 16'hf679;
	#20
	A = 16'hd585;
	B = 16'hd1ab;
	ans = 16'h6bd2;
	#20
	A = 16'h5bd7;
	B = 16'hdaf5;
	ans = 16'hfad1;
	#20
	A = 16'hdaf0;
	B = 16'h54f0;
	ans = 16'hf448;
	#20
	A = 16'h5880;
	B = 16'hcd46;
	ans = 16'he9ef;
	#20
	A = 16'h448d;
	B = 16'h5883;
	ans = 16'h6122;
	#20
	A = 16'hd3be;
	B = 16'hda1a;
	ans = 16'h71e8;
	#20
	A = 16'h5a6d;
	B = 16'hd63e;
	ans = 16'hf504;
	#20
	A = 16'h5a65;
	B = 16'hd8c6;
	ans = 16'hf7a2;
	#20
	A = 16'h5a4c;
	B = 16'h5bb0;
	ans = 16'h7a0d;
	#20
	A = 16'hda10;
	B = 16'h5aad;
	ans = 16'hf90f;
	#20
	A = 16'h5539;
	B = 16'h4c45;
	ans = 16'h6593;
	#20
	A = 16'h599f;
	B = 16'hd1f0;
	ans = 16'hf02c;
	#20
	A = 16'hdb58;
	B = 16'hd9fd;
	ans = 16'h797f;
	#20
	A = 16'h5a4d;
	B = 16'h51fb;
	ans = 16'h70b6;
	#20
	A = 16'h5a04;
	B = 16'h5200;
	ans = 16'h7083;
	#20
	A = 16'h5447;
	B = 16'hda25;
	ans = 16'hf292;
	#20
	A = 16'hd662;
	B = 16'h5ac4;
	ans = 16'hf566;
	#20
	A = 16'h51e2;
	B = 16'h5b3e;
	ans = 16'h7153;
	#20
	A = 16'h5bdb;
	B = 16'hcd99;
	ans = 16'hed7f;
	#20
	A = 16'hd550;
	B = 16'h5a56;
	ans = 16'hf435;
	#20
	A = 16'hd3a2;
	B = 16'hdaed;
	ans = 16'h729c;
	#20
	A = 16'hd92c;
	B = 16'h39f5;
	ans = 16'hd7b4;
	#20
	A = 16'h5aa6;
	B = 16'h54ee;
	ans = 16'h7419;
	#20
	A = 16'hd983;
	B = 16'h4c62;
	ans = 16'hea0a;
	#20
	A = 16'h5acc;
	B = 16'hd607;
	ans = 16'hf51f;
	#20
	A = 16'hd51a;
	B = 16'hdb5d;
	ans = 16'h74b2;
	#20
	A = 16'h58f4;
	B = 16'hd534;
	ans = 16'hf271;
	#20
	A = 16'hcaf5;
	B = 16'hda19;
	ans = 16'h694d;
	#20
	A = 16'h57a1;
	B = 16'h5055;
	ans = 16'h6c22;
	#20
	A = 16'h5526;
	B = 16'h587f;
	ans = 16'h71c9;
	#20
	A = 16'h5a38;
	B = 16'hd449;
	ans = 16'hf2a9;
	#20
	A = 16'hd619;
	B = 16'hd5c3;
	ans = 16'h7064;
	#20
	A = 16'h58df;
	B = 16'h5928;
	ans = 16'h7647;
	#20
	A = 16'h5983;
	B = 16'hdb6f;
	ans = 16'hf91f;
	#20
	A = 16'h54e1;
	B = 16'h5a91;
	ans = 16'h7401;
	#20
	A = 16'hda16;
	B = 16'hc766;
	ans = 16'h65a1;
	#20
	A = 16'hdace;
	B = 16'h5b3b;
	ans = 16'hfa26;
	#20
	A = 16'h5963;
	B = 16'hd3e9;
	ans = 16'hf154;
	#20
	A = 16'hd427;
	B = 16'h59e8;
	ans = 16'hf222;
	#20
	A = 16'hd96a;
	B = 16'h5ae0;
	ans = 16'hf8a7;
	#20
	A = 16'hd5b9;
	B = 16'h5563;
	ans = 16'hefb5;
	#20
	A = 16'h5bc4;
	B = 16'hced2;
	ans = 16'hee9f;
	#20
	A = 16'hd52a;
	B = 16'h58da;
	ans = 16'hf243;
	#20
	A = 16'hd509;
	B = 16'h5a80;
	ans = 16'hf417;
	#20
	A = 16'h56d7;
	B = 16'h5468;
	ans = 16'h6f89;
	#20
	A = 16'h57ac;
	B = 16'hcba1;
	ans = 16'he751;
	#20
	A = 16'hd217;
	B = 16'h5ac0;
	ans = 16'hf123;
	#20
	A = 16'hd82f;
	B = 16'h584f;
	ans = 16'hf482;
	#20
	A = 16'h4e66;
	B = 16'h549e;
	ans = 16'h6763;
	#20
	A = 16'hd2a2;
	B = 16'h5712;
	ans = 16'heddd;
	#20
	A = 16'h5abd;
	B = 16'h5b1f;
	ans = 16'h79ff;
	#20
	A = 16'hdb56;
	B = 16'hd46c;
	ans = 16'h740e;
	#20
	A = 16'h5a57;
	B = 16'h51ec;
	ans = 16'h70b1;
	#20
	A = 16'hd934;
	B = 16'h51c6;
	ans = 16'hef83;
	#20
	A = 16'hd682;
	B = 16'hdb56;
	ans = 16'h75f8;
	#20
	A = 16'h547d;
	B = 16'hd814;
	ans = 16'hf093;
	#20
	A = 16'h58ef;
	B = 16'hd42c;
	ans = 16'hf125;
	#20
	A = 16'hd3e8;
	B = 16'h59de;
	ans = 16'hf1cc;
	#20
	A = 16'h5b94;
	B = 16'h5ad2;
	ans = 16'h7a76;
	#20
	A = 16'hd6fe;
	B = 16'hdb0a;
	ans = 16'h7627;
	#20
	A = 16'h5bcb;
	B = 16'hdb5e;
	ans = 16'hfb2d;
	#20
	A = 16'hd935;
	B = 16'h5561;
	ans = 16'hf301;
	#20
	A = 16'hdb0a;
	B = 16'h54ba;
	ans = 16'hf429;
	#20
	A = 16'h5621;
	B = 16'hd8b2;
	ans = 16'hf332;
	#20
	A = 16'h540b;
	B = 16'h5a77;
	ans = 16'h7289;
	#20
	A = 16'h50cb;
	B = 16'h5a98;
	ans = 16'h6fe7;
	#20
	A = 16'hd46b;
	B = 16'hd293;
	ans = 16'h6b43;
	#20
	A = 16'h50a6;
	B = 16'h5551;
	ans = 16'h6a2e;
	#20
	A = 16'hccba;
	B = 16'hd447;
	ans = 16'h650e;
	#20
	A = 16'h5a1d;
	B = 16'hd8a4;
	ans = 16'hf718;
	#20
	A = 16'h5ab5;
	B = 16'hda91;
	ans = 16'hf981;
	#20
	A = 16'hd867;
	B = 16'hd9d5;
	ans = 16'h766b;
	#20
	A = 16'hdaf3;
	B = 16'h5adc;
	ans = 16'hf9f5;
	#20
	A = 16'h5aba;
	B = 16'h54f0;
	ans = 16'h7427;
	#20
	A = 16'h58f5;
	B = 16'h5b20;
	ans = 16'h786a;
	#20
	A = 16'hd7ab;
	B = 16'hd2df;
	ans = 16'h6e96;
	#20
	A = 16'hd916;
	B = 16'h533d;
	ans = 16'hf09a;
	#20
	A = 16'h5be0;
	B = 16'h5a5c;
	ans = 16'h7a43;
	#20
	A = 16'h5a8f;
	B = 16'hd585;
	ans = 16'hf486;
	#20
	A = 16'hced5;
	B = 16'hd873;
	ans = 16'h6b99;
	#20
	A = 16'h5857;
	B = 16'h4d50;
	ans = 16'h69c4;
	#20
	A = 16'h5be7;
	B = 16'h51e2;
	ans = 16'h71d0;
	#20
	A = 16'hd837;
	B = 16'h4d85;
	ans = 16'he9d1;
	#20
	A = 16'h547d;
	B = 16'hd69a;
	ans = 16'hef68;
	#20
	A = 16'h40cb;
	B = 16'hdad7;
	ans = 16'he019;
	#20
	A = 16'hc7f9;
	B = 16'hdb9c;
	ans = 16'h6795;
	#20
	A = 16'h588b;
	B = 16'h5724;
	ans = 16'h740e;
	#20
	A = 16'h5a36;
	B = 16'hd4ca;
	ans = 16'hf370;
	#20
	A = 16'h55d8;
	B = 16'hda2d;
	ans = 16'hf483;
	#20
	A = 16'h4f09;
	B = 16'h5b68;
	ans = 16'h6e83;
	#20
	A = 16'h5bac;
	B = 16'h4d19;
	ans = 16'h6ce3;
	#20
	A = 16'hd1ac;
	B = 16'hdb96;
	ans = 16'h7161;
	#20
	A = 16'h528b;
	B = 16'h5667;
	ans = 16'h6d3c;
	#20
	A = 16'hd64d;
	B = 16'h5896;
	ans = 16'hf339;
	#20
	A = 16'hd28e;
	B = 16'h5616;
	ans = 16'hecfd;
	#20
	A = 16'hd1f7;
	B = 16'hdb25;
	ans = 16'h7154;
	#20
	A = 16'hdad3;
	B = 16'hc2c7;
	ans = 16'h61c8;
	#20
	A = 16'h5995;
	B = 16'h5824;
	ans = 16'h75c7;
	#20
	A = 16'h5394;
	B = 16'h595c;
	ans = 16'h7114;
	#20
	A = 16'hd98f;
	B = 16'h55f5;
	ans = 16'hf424;
	#20
	A = 16'h5aa9;
	B = 16'hd502;
	ans = 16'hf42b;
	#20
	A = 16'hd85a;
	B = 16'hda3b;
	ans = 16'h76c7;
	#20
	A = 16'h598c;
	B = 16'hd261;
	ans = 16'hf06c;
	#20
	A = 16'hd9e4;
	B = 16'hd855;
	ans = 16'h7661;
	#20
	A = 16'h5b1a;
	B = 16'hd6c6;
	ans = 16'hf603;
	#20
	A = 16'hd8aa;
	B = 16'h5727;
	ans = 16'hf42b;
	#20
	A = 16'hcd5c;
	B = 16'h3cf0;
	ans = 16'hce9e;
	#20
	A = 16'h57b4;
	B = 16'h5b45;
	ans = 16'h7700;
	#20
	A = 16'h58b3;
	B = 16'h56ff;
	ans = 16'h741c;
	#20
	A = 16'hd9d9;
	B = 16'hd6b7;
	ans = 16'h74e9;
	#20
	A = 16'h5565;
	B = 16'hdba0;
	ans = 16'hf524;
	#20
	A = 16'h55a2;
	B = 16'h5503;
	ans = 16'h6f0f;
	#20
	A = 16'hd426;
	B = 16'h513a;
	ans = 16'he96c;
	#20
	A = 16'h49f4;
	B = 16'hd068;
	ans = 16'hde8f;
	#20
	A = 16'hcc61;
	B = 16'hd911;
	ans = 16'h698c;
	#20
	A = 16'hcb63;
	B = 16'hca41;
	ans = 16'h59c6;
	#20
	A = 16'h52ac;
	B = 16'h590e;
	ans = 16'h7037;
	#20
	A = 16'h5b7d;
	B = 16'h5396;
	ans = 16'h731a;
	#20
	A = 16'hd676;
	B = 16'hd6f3;
	ans = 16'h719d;
	#20
	A = 16'h58e0;
	B = 16'hdafa;
	ans = 16'hf840;
	#20
	A = 16'h568e;
	B = 16'h5557;
	ans = 16'h7060;
	#20
	A = 16'hd89b;
	B = 16'hd7cc;
	ans = 16'h747d;
	#20
	A = 16'h54f1;
	B = 16'h59c7;
	ans = 16'h7323;
	#20
	A = 16'hd59c;
	B = 16'h4eb6;
	ans = 16'he8b5;
	#20
	A = 16'hd443;
	B = 16'hd9dc;
	ans = 16'h723e;
	#20
	A = 16'h5b3c;
	B = 16'h55e6;
	ans = 16'h7555;
	#20
	A = 16'h5ba3;
	B = 16'hd465;
	ans = 16'hf432;
	#20
	A = 16'h5316;
	B = 16'hd5c2;
	ans = 16'hed1a;
	#20
	A = 16'hd84a;
	B = 16'hd983;
	ans = 16'h75e9;
	#20
	A = 16'hbc86;
	B = 16'h59ff;
	ans = 16'hdac8;
	#20
	A = 16'hd6b7;
	B = 16'hd7b8;
	ans = 16'h727b;
	#20
	A = 16'hd9cc;
	B = 16'hd8aa;
	ans = 16'h76c2;
	#20
	A = 16'h5546;
	B = 16'hda0f;
	ans = 16'hf3fd;
	#20
	A = 16'h50c3;
	B = 16'h5a7f;
	ans = 16'h6fbc;
	#20
	A = 16'h5bb8;
	B = 16'hd5f0;
	ans = 16'hf5bb;
	#20
	A = 16'h5b13;
	B = 16'h5848;
	ans = 16'h7792;
	#20
	A = 16'hdb46;
	B = 16'hd592;
	ans = 16'h7510;
	#20
	A = 16'h59bb;
	B = 16'h56a4;
	ans = 16'h74c2;
	#20
	A = 16'h58fe;
	B = 16'h4e99;
	ans = 16'h6c1e;
	#20
	A = 16'hdbab;
	B = 16'h58e7;
	ans = 16'hf8b3;
	#20
	A = 16'h501e;
	B = 16'hd528;
	ans = 16'he94f;
	#20
	A = 16'hd835;
	B = 16'hda51;
	ans = 16'h76a5;
	#20
	A = 16'hccad;
	B = 16'hdb0f;
	ans = 16'h6c20;
	#20
	A = 16'hd991;
	B = 16'h551a;
	ans = 16'hf319;
	#20
	A = 16'hd56a;
	B = 16'h583a;
	ans = 16'hf1b9;
	#20
	A = 16'h5aa9;
	B = 16'hd95c;
	ans = 16'hf876;
	#20
	A = 16'hdb94;
	B = 16'hd432;
	ans = 16'h73f3;
	#20
	A = 16'h5bb6;
	B = 16'h5be0;
	ans = 16'h7b97;
	#20
	A = 16'hd372;
	B = 16'h592c;
	ans = 16'hf0d0;
	#20
	A = 16'h5804;
	B = 16'hd129;
	ans = 16'hed2e;
	#20
	A = 16'h51af;
	B = 16'h5912;
	ans = 16'h6f34;
	#20
	A = 16'h5823;
	B = 16'h58c0;
	ans = 16'h74ea;
	#20
	A = 16'hcccf;
	B = 16'h5793;
	ans = 16'he88d;
	#20
	A = 16'hdaff;
	B = 16'hd95f;
	ans = 16'h78b2;
	#20
	A = 16'hda7c;
	B = 16'h52e7;
	ans = 16'hf198;
	#20
	A = 16'h505c;
	B = 16'h5894;
	ans = 16'h6cfd;
	#20
	A = 16'hd6b9;
	B = 16'h5af6;
	ans = 16'hf5d9;
	#20
	A = 16'hd819;
	B = 16'h48cc;
	ans = 16'he4ea;
	#20
	A = 16'h53ed;
	B = 16'hc8e9;
	ans = 16'he0dd;
	#20
	A = 16'h5509;
	B = 16'hda5d;
	ans = 16'hf401;
	#20
	A = 16'hda4b;
	B = 16'hd63d;
	ans = 16'h74e8;
	#20
	A = 16'h506b;
	B = 16'hd92f;
	ans = 16'hedba;
	#20
	A = 16'h5885;
	B = 16'h5812;
	ans = 16'h7499;
	#20
	A = 16'hd73c;
	B = 16'hda32;
	ans = 16'h759a;
	#20
	A = 16'hd92f;
	B = 16'h5be4;
	ans = 16'hf91d;
	#20
	A = 16'h5760;
	B = 16'hd46d;
	ans = 16'hf014;
	#20
	A = 16'hd932;
	B = 16'h49cb;
	ans = 16'he786;
	#20
	A = 16'h5956;
	B = 16'hcee8;
	ans = 16'hec9b;
	#20
	A = 16'hc41a;
	B = 16'hc7b7;
	ans = 16'h4fe9;
	#20
	A = 16'h5384;
	B = 16'hd545;
	ans = 16'hecf3;
	#20
	A = 16'hd07b;
	B = 16'h4ff5;
	ans = 16'he475;
	#20
	A = 16'h57bb;
	B = 16'hd298;
	ans = 16'hee5f;
	#20
	A = 16'h590c;
	B = 16'h4c0a;
	ans = 16'h6919;
	#20
	A = 16'hcfcd;
	B = 16'hd7c3;
	ans = 16'h6b92;
	#20
	A = 16'h5299;
	B = 16'h5b47;
	ans = 16'h7200;
	#20
	A = 16'hd197;
	B = 16'h5265;
	ans = 16'he878;
	#20
	A = 16'hd93e;
	B = 16'h58c9;
	ans = 16'hf645;
	#20
	A = 16'hd624;
	B = 16'h4c67;
	ans = 16'he6c2;
	#20
	A = 16'hd320;
	B = 16'hdbb5;
	ans = 16'h72dd;
	#20
	A = 16'h4eb5;
	B = 16'h4918;
	ans = 16'h5c45;
	#20
	A = 16'h55ac;
	B = 16'h4ade;
	ans = 16'h64de;
	#20
	A = 16'hdb8a;
	B = 16'h5bed;
	ans = 16'hfb78;
	#20
	A = 16'hc888;
	B = 16'hda95;
	ans = 16'h6775;
	#20
	A = 16'h55ff;
	B = 16'hdbb9;
	ans = 16'hf5ca;
	#20
	A = 16'hdb31;
	B = 16'h5a45;
	ans = 16'hf9a3;
	#20
	A = 16'hd427;
	B = 16'h553d;
	ans = 16'hed70;
	#20
	A = 16'h4b6c;
	B = 16'h5191;
	ans = 16'h612a;
	#20
	A = 16'h5729;
	B = 16'hd34d;
	ans = 16'hee89;
	#20
	A = 16'hc835;
	B = 16'h5738;
	ans = 16'he398;
	#20
	A = 16'h54e7;
	B = 16'h5876;
	ans = 16'h7178;
	#20
	A = 16'h5910;
	B = 16'hd54d;
	ans = 16'hf2b5;
	#20
	A = 16'hdb5f;
	B = 16'h5b75;
	ans = 16'hfadf;
	#20
	A = 16'h5768;
	B = 16'hd90a;
	ans = 16'hf4aa;
	#20
	A = 16'h554f;
	B = 16'h59cc;
	ans = 16'h73b1;
	#20
	A = 16'hd0fa;
	B = 16'hd0ab;
	ans = 16'h65cf;
	#20
	A = 16'hdabf;
	B = 16'hcd5a;
	ans = 16'h6c83;
	#20
	A = 16'h4128;
	B = 16'hdb47;
	ans = 16'he0b1;
	#20
	A = 16'h59dd;
	B = 16'h5252;
	ans = 16'h70a2;
	#20
	A = 16'hd9e3;
	B = 16'h4c93;
	ans = 16'heabb;
	#20
	A = 16'h526d;
	B = 16'hdb68;
	ans = 16'hf1f3;
	#20
	A = 16'h52eb;
	B = 16'hd345;
	ans = 16'hea49;
	#20
	A = 16'hd45a;
	B = 16'h4e59;
	ans = 16'he6e8;
	#20
	A = 16'hdbf4;
	B = 16'hdbcc;
	ans = 16'h7bc0;
	#20
	A = 16'hd681;
	B = 16'h5ab8;
	ans = 16'hf576;
	#20
	A = 16'h4be6;
	B = 16'hcd6d;
	ans = 16'hdd5b;
	#20
	A = 16'h4ed4;
	B = 16'h59ab;
	ans = 16'h6cd6;
	#20
	A = 16'hd0ec;
	B = 16'h5940;
	ans = 16'hee76;
	#20
	A = 16'hceab;
	B = 16'h57b5;
	ans = 16'hea6c;
	#20
	A = 16'hd53b;
	B = 16'hd4b3;
	ans = 16'h6e25;
	#20
	A = 16'hdbc8;
	B = 16'hda0e;
	ans = 16'h79e4;
	#20
	A = 16'hd9e6;
	B = 16'h5305;
	ans = 16'hf12d;
	#20
	A = 16'h511b;
	B = 16'h523f;
	ans = 16'h67f9;
	#20
	A = 16'hd5a7;
	B = 16'h5bee;
	ans = 16'hf59a;
	#20
	A = 16'h596b;
	B = 16'hca95;
	ans = 16'he875;
	#20
	A = 16'hd66a;
	B = 16'h58a0;
	ans = 16'hf36b;
	#20
	A = 16'hd8e4;
	B = 16'hd8a1;
	ans = 16'h75a9;
	#20
	A = 16'hd251;
	B = 16'hd940;
	ans = 16'h7025;
	#20
	A = 16'hd5a1;
	B = 16'h52f7;
	ans = 16'hece7;
	#20
	A = 16'hd7e4;
	B = 16'h5864;
	ans = 16'hf455;
	#20
	A = 16'h5228;
	B = 16'h4c43;
	ans = 16'h628f;
	#20
	A = 16'hc4c3;
	B = 16'hd704;
	ans = 16'h602d;
	#20
	A = 16'h58a6;
	B = 16'hdb26;
	ans = 16'hf827;
	#20
	A = 16'h5b7f;
	B = 16'h5127;
	ans = 16'h70d4;
	#20
	A = 16'h598d;
	B = 16'h5669;
	ans = 16'h7473;
	#20
	A = 16'hd8c5;
	B = 16'hd5ea;
	ans = 16'h730d;
	#20
	A = 16'h589e;
	B = 16'hd839;
	ans = 16'hf4e0;
	#20
	A = 16'hd49d;
	B = 16'hd484;
	ans = 16'h6d35;
	#20
	A = 16'h5b13;
	B = 16'hd326;
	ans = 16'hf252;
	#20
	A = 16'hdb00;
	B = 16'hccd0;
	ans = 16'h6c36;
	#20
	A = 16'h51ec;
	B = 16'hd42f;
	ans = 16'hea32;
	#20
	A = 16'h511d;
	B = 16'hd6e0;
	ans = 16'hec65;
	#20
	A = 16'h58dd;
	B = 16'h586d;
	ans = 16'h7562;
	#20
	A = 16'h58a8;
	B = 16'h5824;
	ans = 16'h74d2;
	#20
	A = 16'h584f;
	B = 16'h5aa9;
	ans = 16'h772d;
	#20
	A = 16'h55d7;
	B = 16'h5a85;
	ans = 16'h74c2;
	#20
	A = 16'h58ea;
	B = 16'hd9a2;
	ans = 16'hf6ec;
	#20
	A = 16'hd903;
	B = 16'h54d3;
	ans = 16'hf20b;
	#20
	A = 16'h4d6c;
	B = 16'h5643;
	ans = 16'h683e;
	#20
	A = 16'h5b06;
	B = 16'hd014;
	ans = 16'hef29;
	#20
	A = 16'hd265;
	B = 16'h5ae2;
	ans = 16'hf180;
	#20
	A = 16'h539f;
	B = 16'h51f7;
	ans = 16'h69af;
	#20
	A = 16'hdbce;
	B = 16'h566c;
	ans = 16'hf644;
	#20
	A = 16'h5ae9;
	B = 16'hdad2;
	ans = 16'hf9e4;
	#20
	A = 16'h5a51;
	B = 16'hd978;
	ans = 16'hf851;
	#20
	A = 16'hd404;
	B = 16'hd952;
	ans = 16'h7157;
	#20
	A = 16'hd85c;
	B = 16'h5906;
	ans = 16'hf57a;
	#20
	A = 16'hd307;
	B = 16'h5909;
	ans = 16'hf06c;
	#20
	A = 16'hdbeb;
	B = 16'h535c;
	ans = 16'hf349;
	#20
	A = 16'hd745;
	B = 16'hcd74;
	ans = 16'h68f5;
	#20
	A = 16'h59e6;
	B = 16'hd846;
	ans = 16'hf64d;
	#20
	A = 16'hd817;
	B = 16'hd795;
	ans = 16'h73c1;
	#20
	A = 16'hcbce;
	B = 16'hd857;
	ans = 16'h683c;
	#20
	A = 16'hdb67;
	B = 16'hdb41;
	ans = 16'h7ab6;
	#20
	A = 16'hd650;
	B = 16'h5793;
	ans = 16'hf1fa;
	#20
	A = 16'hd9b5;
	B = 16'h593b;
	ans = 16'hf776;
	#20
	A = 16'hd847;
	B = 16'h5472;
	ans = 16'hf0c1;
	#20
	A = 16'hda8a;
	B = 16'hdb3c;
	ans = 16'h79ea;
	#20
	A = 16'hd890;
	B = 16'h568c;
	ans = 16'hf378;
	#20
	A = 16'h54f8;
	B = 16'h58e4;
	ans = 16'h7213;
	#20
	A = 16'hdac2;
	B = 16'h5286;
	ans = 16'hf183;
	#20
	A = 16'h50f7;
	B = 16'hd0ef;
	ans = 16'he620;
	#20
	A = 16'hd897;
	B = 16'h501f;
	ans = 16'hecbb;
	#20
	A = 16'h522b;
	B = 16'hd8d3;
	ans = 16'hef70;
	#20
	A = 16'hca3a;
	B = 16'h5204;
	ans = 16'he0af;
	#20
	A = 16'h5a03;
	B = 16'hd2c7;
	ans = 16'hf118;
	#20
	A = 16'h584c;
	B = 16'hd9e7;
	ans = 16'hf657;
	#20
	A = 16'h59bf;
	B = 16'h5a56;
	ans = 16'h788d;
	#20
	A = 16'h4927;
	B = 16'hd9f0;
	ans = 16'he7a6;
	#20
	A = 16'hd982;
	B = 16'hdb1b;
	ans = 16'h78e4;
	#20
	A = 16'h5ae8;
	B = 16'h5a29;
	ans = 16'h7951;
	#20
	A = 16'hd9f4;
	B = 16'h56c8;
	ans = 16'hf50c;
	#20
	A = 16'h58fd;
	B = 16'h57e3;
	ans = 16'h74eb;
	#20
	A = 16'h5ab1;
	B = 16'h5889;
	ans = 16'h7796;
	#20
	A = 16'hda81;
	B = 16'hc9be;
	ans = 16'h68ab;
	#20
	A = 16'h593d;
	B = 16'hd940;
	ans = 16'hf6e0;
	#20
	A = 16'hc4e2;
	B = 16'h5992;
	ans = 16'he2cd;
	#20
	A = 16'h5569;
	B = 16'hdb4e;
	ans = 16'hf4f1;
	#20
	A = 16'hdb59;
	B = 16'h5868;
	ans = 16'hf80c;
	#20
	A = 16'hd5bc;
	B = 16'hd5f5;
	ans = 16'h7045;
	#20
	A = 16'h5b6c;
	B = 16'h581f;
	ans = 16'h77a6;
	#20
	A = 16'hdaad;
	B = 16'h57e1;
	ans = 16'hf693;
	#20
	A = 16'h58e8;
	B = 16'h5aed;
	ans = 16'h783f;
	#20
	A = 16'h4634;
	B = 16'hdb66;
	ans = 16'he5bd;
	#20
	A = 16'h538f;
	B = 16'hd86a;
	ans = 16'hf02c;
	#20
	A = 16'h5567;
	B = 16'hda7d;
	ans = 16'hf462;
	#20
	A = 16'hd3ca;
	B = 16'h5a7d;
	ans = 16'hf251;
	#20
	A = 16'h5899;
	B = 16'hd26b;
	ans = 16'hef60;
	#20
	A = 16'hd45c;
	B = 16'hd796;
	ans = 16'h7022;
	#20
	A = 16'h5724;
	B = 16'h540b;
	ans = 16'h6f38;
	#20
	A = 16'hd6fd;
	B = 16'hd39f;
	ans = 16'h6ea8;
	#20
	A = 16'h5bae;
	B = 16'hd5f5;
	ans = 16'hf5b8;
	#20
	A = 16'h4b26;
	B = 16'hca61;
	ans = 16'hd9b3;
	#20
	A = 16'hc428;
	B = 16'hd9dd;
	ans = 16'h6218;
	#20
	A = 16'hdb27;
	B = 16'h5a7d;
	ans = 16'hf9cd;
	#20
	A = 16'h549f;
	B = 16'h520b;
	ans = 16'h6afb;
	#20
	A = 16'h51d6;
	B = 16'hcf1e;
	ans = 16'he531;
	#20
	A = 16'hda8e;
	B = 16'hda0f;
	ans = 16'h78f7;
	#20
	A = 16'hdb90;
	B = 16'hd8e0;
	ans = 16'h789c;
	#20
	A = 16'hd9fc;
	B = 16'h598e;
	ans = 16'hf828;
	#20
	A = 16'hcf07;
	B = 16'hd931;
	ans = 16'h6c8f;
	#20
	A = 16'h4649;
	B = 16'hd995;
	ans = 16'he463;
	#20
	A = 16'hd5e8;
	B = 16'h52d0;
	ans = 16'hed08;
	#20
	A = 16'h53c1;
	B = 16'h554d;
	ans = 16'h6d23;
	#20
	A = 16'hd3fc;
	B = 16'h5aab;
	ans = 16'hf2a8;
	#20
	A = 16'h5a40;
	B = 16'h55fa;
	ans = 16'h74ab;
	#20
	A = 16'h5368;
	B = 16'hced0;
	ans = 16'he64f;
	#20
	A = 16'hd999;
	B = 16'hdb70;
	ans = 16'h7934;
	#20
	A = 16'h53f8;
	B = 16'hdb0a;
	ans = 16'hf303;
	#20
	A = 16'h56ad;
	B = 16'hd80e;
	ans = 16'hf2c4;
	#20
	A = 16'hdb63;
	B = 16'h58d4;
	ans = 16'hf875;
	#20
	A = 16'h5bc9;
	B = 16'h503a;
	ans = 16'h701d;
	#20
	A = 16'hdb74;
	B = 16'h59a8;
	ans = 16'hf945;
	#20
	A = 16'hd606;
	B = 16'h4f68;
	ans = 16'he994;
	#20
	A = 16'h57c5;
	B = 16'hcfdf;
	ans = 16'heba5;
	#20
	A = 16'hd1bb;
	B = 16'h5a3d;
	ans = 16'hf078;
	#20
	A = 16'h5abb;
	B = 16'hd8f7;
	ans = 16'hf82d;
	#20
	A = 16'hd985;
	B = 16'hd92f;
	ans = 16'h7727;
	#20
	A = 16'hd997;
	B = 16'hd423;
	ans = 16'h71c8;
	#20
	A = 16'hdbbd;
	B = 16'h5910;
	ans = 16'hf8e6;
	#20
	A = 16'hd79f;
	B = 16'hd9ce;
	ans = 16'h7588;
	#20
	A = 16'hd8e6;
	B = 16'hd615;
	ans = 16'h7373;
	#20
	A = 16'h538f;
	B = 16'h5412;
	ans = 16'h6bb1;
	#20
	A = 16'hd794;
	B = 16'h588d;
	ans = 16'hf450;
	#20
	A = 16'h5a43;
	B = 16'h5b6e;
	ans = 16'h79d1;
	#20
	A = 16'hda97;
	B = 16'hd701;
	ans = 16'h75c5;
	#20
	A = 16'h5612;
	B = 16'h5ae7;
	ans = 16'h753d;
	#20
	A = 16'hdadc;
	B = 16'h5241;
	ans = 16'hf15d;
	#20
	A = 16'hd93e;
	B = 16'hd78f;
	ans = 16'h74f4;
	#20
	A = 16'h5b27;
	B = 16'hda5a;
	ans = 16'hf9ae;
	#20
	A = 16'hdbbd;
	B = 16'hd4ff;
	ans = 16'h74d5;
	#20
	A = 16'hd96b;
	B = 16'h5b1b;
	ans = 16'hf8d0;
	#20
	A = 16'hda7e;
	B = 16'hd84f;
	ans = 16'h76fe;
	#20
	A = 16'hd451;
	B = 16'h561c;
	ans = 16'hee98;
	#20
	A = 16'hd849;
	B = 16'h4628;
	ans = 16'he298;
	#20
	A = 16'h56d0;
	B = 16'h4cb6;
	ans = 16'h6803;
	#20
	A = 16'hda7a;
	B = 16'h568b;
	ans = 16'hf54c;
	#20
	A = 16'hc913;
	B = 16'hd9c9;
	ans = 16'h6757;
	#20
	A = 16'hdb07;
	B = 16'hd859;
	ans = 16'h77a3;
	#20
	A = 16'h556b;
	B = 16'hdbb9;
	ans = 16'hf53b;
	#20
	A = 16'h526a;
	B = 16'hda1e;
	ans = 16'hf0e8;
	#20
	A = 16'h5b51;
	B = 16'h5450;
	ans = 16'h73e3;
	#20
	A = 16'hc792;
	B = 16'hd8f4;
	ans = 16'h64b0;
	#20
	A = 16'h57ff;
	B = 16'hd99a;
	ans = 16'hf599;
	#20
	A = 16'hd843;
	B = 16'hd77b;
	ans = 16'h73f8;
	#20
	A = 16'h59d5;
	B = 16'hd9f8;
	ans = 16'hf85a;
	#20
	A = 16'h59c6;
	B = 16'hd6f6;
	ans = 16'hf506;
	#20
	A = 16'h511a;
	B = 16'h5956;
	ans = 16'h6ece;
	#20
	A = 16'h5ba1;
	B = 16'h4d9d;
	ans = 16'h6d5a;
	#20
	A = 16'hd47e;
	B = 16'hceee;
	ans = 16'h67c8;
	#20
	A = 16'h501b;
	B = 16'h5bda;
	ans = 16'h7007;
	#20
	A = 16'hd524;
	B = 16'hdb1e;
	ans = 16'h7493;
	#20
	A = 16'hd9f3;
	B = 16'hd8d9;
	ans = 16'h7736;
	#20
	A = 16'hd9c0;
	B = 16'hd623;
	ans = 16'h7469;
	#20
	A = 16'h5942;
	B = 16'h4450;
	ans = 16'h61ab;
	#20
	A = 16'h5a04;
	B = 16'h5833;
	ans = 16'h7651;
	#20
	A = 16'h5992;
	B = 16'h5a4a;
	ans = 16'h7861;
	#20
	A = 16'h5693;
	B = 16'hd8fd;
	ans = 16'hf419;
	#20
	A = 16'h5480;
	B = 16'h5931;
	ans = 16'h71d7;
	#20
	A = 16'hca5b;
	B = 16'hd253;
	ans = 16'h6106;
	#20
	A = 16'h54e2;
	B = 16'h4f95;
	ans = 16'h68a1;
	#20
	A = 16'h5775;
	B = 16'h57ed;
	ans = 16'h7363;
	#20
	A = 16'h58e9;
	B = 16'hc95c;
	ans = 16'he694;
	#20
	A = 16'hdb9f;
	B = 16'hc007;
	ans = 16'h5fac;
	#20
	A = 16'hd4cd;
	B = 16'hdb74;
	ans = 16'h7479;
	#20
	A = 16'hd42f;
	B = 16'h5a31;
	ans = 16'hf27a;
	#20
	A = 16'hdb44;
	B = 16'h5769;
	ans = 16'hf6bb;
	#20
	A = 16'h5a53;
	B = 16'h59f1;
	ans = 16'h78b2;
	#20
	A = 16'h571a;
	B = 16'h48f4;
	ans = 16'h6466;
	#20
	A = 16'h4ee4;
	B = 16'hda6c;
	ans = 16'hed88;
	#20
	A = 16'hcec9;
	B = 16'hdbde;
	ans = 16'h6eac;
	#20
	A = 16'h5336;
	B = 16'hda6f;
	ans = 16'hf1cd;
	#20
	A = 16'hd4a6;
	B = 16'hd8ed;
	ans = 16'h71b9;
	#20
	A = 16'h5b3a;
	B = 16'h56b3;
	ans = 16'h760d;
	#20
	A = 16'hdb48;
	B = 16'hdb97;
	ans = 16'h7ae8;
	#20
	A = 16'hdb69;
	B = 16'hd9c2;
	ans = 16'h7955;
	#20
	A = 16'hd48e;
	B = 16'hda5e;
	ans = 16'h7340;
	#20
	A = 16'hd9d0;
	B = 16'hdae8;
	ans = 16'h7905;
	#20
	A = 16'h59e3;
	B = 16'h524e;
	ans = 16'h70a4;
	#20
	A = 16'hd906;
	B = 16'hd868;
	ans = 16'h7589;
	#20
	A = 16'hd9a8;
	B = 16'h5503;
	ans = 16'hf316;
	#20
	A = 16'h5be9;
	B = 16'h58b8;
	ans = 16'h78aa;
	#20
	A = 16'h4ec1;
	B = 16'h596e;
	ans = 16'h6c95;
	#20
	A = 16'hd50c;
	B = 16'hdac6;
	ans = 16'h7446;
	#20
	A = 16'h5afb;
	B = 16'hd874;
	ans = 16'hf7c5;
	#20
	A = 16'h56ff;
	B = 16'hd2c8;
	ans = 16'hedee;
	#20
	A = 16'hd752;
	B = 16'hd814;
	ans = 16'h7377;
	#20
	A = 16'hd658;
	B = 16'hd5f2;
	ans = 16'h70b7;
	#20
	A = 16'h54a2;
	B = 16'h5284;
	ans = 16'h6b8c;
	#20
	A = 16'hd964;
	B = 16'hd828;
	ans = 16'h759a;
	#20
	A = 16'h520a;
	B = 16'h5b12;
	ans = 16'h7156;
	#20
	A = 16'h59c6;
	B = 16'hdabd;
	ans = 16'hf8dd;
	#20
	A = 16'hd7c7;
	B = 16'hd45e;
	ans = 16'h703f;
	#20
	A = 16'hcff2;
	B = 16'h5829;
	ans = 16'hec22;
	#20
	A = 16'h587c;
	B = 16'hd8ce;
	ans = 16'hf563;
	#20
	A = 16'h5be9;
	B = 16'h561b;
	ans = 16'h7609;
	#20
	A = 16'hd812;
	B = 16'hd8cd;
	ans = 16'h74e3;
	#20
	A = 16'hdaae;
	B = 16'hcbd1;
	ans = 16'h6a87;
	#20
	A = 16'h59fd;
	B = 16'hd158;
	ans = 16'hf000;
	#20
	A = 16'hdbd0;
	B = 16'hdb39;
	ans = 16'h7b0e;
	#20
	A = 16'h5730;
	B = 16'h57f2;
	ans = 16'h7323;
	#20
	A = 16'hd8e6;
	B = 16'hd992;
	ans = 16'h76d2;
	#20
	A = 16'hd7d2;
	B = 16'h52ab;
	ans = 16'hee85;
	#20
	A = 16'hd528;
	B = 16'h55eb;
	ans = 16'hefa1;
	#20
	A = 16'hcc59;
	B = 16'hd8a8;
	ans = 16'h6910;
	#20
	A = 16'hda11;
	B = 16'hdba4;
	ans = 16'h79cb;
	#20
	A = 16'h5844;
	B = 16'hdb17;
	ans = 16'hf790;
	#20
	A = 16'h547f;
	B = 16'hdb9f;
	ans = 16'hf448;
	#20
	A = 16'hd05d;
	B = 16'h5729;
	ans = 16'hebcf;
	#20
	A = 16'h5b9e;
	B = 16'h5420;
	ans = 16'h73db;
	#20
	A = 16'h4cc1;
	B = 16'h558f;
	ans = 16'h669b;
	#20
	A = 16'hd474;
	B = 16'h559e;
	ans = 16'hee41;
	#20
	A = 16'hd865;
	B = 16'hd5d6;
	ans = 16'h7269;
	#20
	A = 16'h5793;
	B = 16'h5884;
	ans = 16'h7446;
	#20
	A = 16'h5315;
	B = 16'h4d74;
	ans = 16'h64d4;
	#20
	A = 16'h585a;
	B = 16'h596c;
	ans = 16'h75e6;
	#20
	A = 16'hd082;
	B = 16'h5546;
	ans = 16'he9f1;
	#20
	A = 16'hd5be;
	B = 16'hd031;
	ans = 16'h6a04;
	#20
	A = 16'h5a48;
	B = 16'h5976;
	ans = 16'h784a;
	#20
	A = 16'h5b37;
	B = 16'h5547;
	ans = 16'h74c2;
	#20
	A = 16'h5b4f;
	B = 16'hd28d;
	ans = 16'hf1fc;
	#20
	A = 16'h571d;
	B = 16'h4c61;
	ans = 16'h67c9;
	#20
	A = 16'hd615;
	B = 16'hdacb;
	ans = 16'h752a;
	#20
	A = 16'hd897;
	B = 16'hd9bd;
	ans = 16'h7696;
	#20
	A = 16'hd626;
	B = 16'hd792;
	ans = 16'h71d1;
	#20
	A = 16'hd3aa;
	B = 16'h4e8c;
	ans = 16'he646;
	#20
	A = 16'hdb78;
	B = 16'h554c;
	ans = 16'hf4f2;
	#20
	A = 16'hc84d;
	B = 16'h5852;
	ans = 16'he4a5;
	#20
	A = 16'hd9e7;
	B = 16'h5914;
	ans = 16'hf77e;
	#20
	A = 16'h5641;
	B = 16'h5824;
	ans = 16'h7279;
	#20
	A = 16'hd6a6;
	B = 16'h5954;
	ans = 16'hf46e;
	#20
	A = 16'hd8ce;
	B = 16'h5a49;
	ans = 16'hf78d;
	#20
	A = 16'h5852;
	B = 16'hd980;
	ans = 16'hf5f1;
	#20
	A = 16'h56a3;
	B = 16'h58ca;
	ans = 16'h73f2;
	#20
	A = 16'hd789;
	B = 16'h59ea;
	ans = 16'hf592;
	#20
	A = 16'hd5e7;
	B = 16'hd8ad;
	ans = 16'h72e6;
	#20
	A = 16'hda54;
	B = 16'h5b89;
	ans = 16'hf9f6;
	#20
	A = 16'h58eb;
	B = 16'h540f;
	ans = 16'h70fd;
	#20
	A = 16'hdb84;
	B = 16'h4faa;
	ans = 16'hef33;
	#20
	A = 16'hd2f6;
	B = 16'hdab9;
	ans = 16'h71d9;
	#20
	A = 16'hdb4f;
	B = 16'hd8ce;
	ans = 16'h7864;
	#20
	A = 16'h5b85;
	B = 16'h4028;
	ans = 16'h5fd0;
	#20
	A = 16'h5a7e;
	B = 16'h5953;
	ans = 16'h7852;
	#20
	A = 16'hdb96;
	B = 16'h55b1;
	ans = 16'hf566;
	#20
	A = 16'hd86b;
	B = 16'h5907;
	ans = 16'hf58d;
	#20
	A = 16'hc948;
	B = 16'hce9a;
	ans = 16'h5c5c;
	#20
	A = 16'hd9cb;
	B = 16'h595a;
	ans = 16'hf7c0;
	#20
	A = 16'hdaf1;
	B = 16'hdafc;
	ans = 16'h7a0f;
	#20
	A = 16'h5a4b;
	B = 16'hd821;
	ans = 16'hf67f;
	#20
	A = 16'hd967;
	B = 16'hd402;
	ans = 16'h716a;
	#20
	A = 16'hd4d6;
	B = 16'hdba3;
	ans = 16'h749e;
	#20
	A = 16'hd373;
	B = 16'hdb4c;
	ans = 16'h72cb;
	#20
	A = 16'hdb5c;
	B = 16'hd96f;
	ans = 16'h7900;
	#20
	A = 16'h5849;
	B = 16'hda1b;
	ans = 16'hf68a;
	#20
	A = 16'h5a06;
	B = 16'h58de;
	ans = 16'h7754;
	#20
	A = 16'h5b51;
	B = 16'hd68c;
	ans = 16'hf5fd;
	#20
	A = 16'h5a55;
	B = 16'hd0f0;
	ans = 16'hefd1;
	#20
	A = 16'h585e;
	B = 16'hda95;
	ans = 16'hf730;
	#20
	A = 16'hd732;
	B = 16'hd7f1;
	ans = 16'h7325;
	#20
	A = 16'h516b;
	B = 16'hd677;
	ans = 16'hec61;
	#20
	A = 16'h5776;
	B = 16'hdbb5;
	ans = 16'hf730;
	#20
	A = 16'h5af8;
	B = 16'h5712;
	ans = 16'h7629;
	#20
	A = 16'h5ad1;
	B = 16'hd427;
	ans = 16'hf313;
	#20
	A = 16'hd44e;
	B = 16'hd8db;
	ans = 16'h713a;
	#20
	A = 16'h5b22;
	B = 16'h4a64;
	ans = 16'h69b3;
	#20
	A = 16'hd128;
	B = 16'h56b9;
	ans = 16'hec55;
	#20
	A = 16'h5b7e;
	B = 16'hdb49;
	ans = 16'hfad3;
	#20
	A = 16'h514d;
	B = 16'hdab6;
	ans = 16'hf072;
	#20
	A = 16'hd452;
	B = 16'h559b;
	ans = 16'hee0e;
	#20
	A = 16'hd96b;
	B = 16'hd994;
	ans = 16'h778e;
	#20
	A = 16'hce7d;
	B = 16'h5434;
	ans = 16'he6d1;
	#20
	A = 16'hd154;
	B = 16'h54fc;
	ans = 16'heaa4;
	#20
	A = 16'hd607;
	B = 16'hd87a;
	ans = 16'h72bf;
	#20
	A = 16'h3d97;
	B = 16'h55a3;
	ans = 16'h57e1;
	#20
	A = 16'hd93a;
	B = 16'h4931;
	ans = 16'he6c9;
	#20
	A = 16'h57f1;
	B = 16'h59c8;
	ans = 16'h75bd;
	#20
	A = 16'hd8af;
	B = 16'h5986;
	ans = 16'hf678;
	#20
	A = 16'h5742;
	B = 16'hd726;
	ans = 16'hf27c;
	#20
	A = 16'hd0e0;
	B = 16'h54d8;
	ans = 16'he9e7;
	#20
	A = 16'hdb30;
	B = 16'h552d;
	ans = 16'hf4a6;
	#20
	A = 16'h58f8;
	B = 16'hd9f9;
	ans = 16'hf76b;
	#20
	A = 16'hdb82;
	B = 16'h57c5;
	ans = 16'hf74b;
	#20
	A = 16'h507b;
	B = 16'h5570;
	ans = 16'h6a17;
	#20
	A = 16'h5a41;
	B = 16'hdba8;
	ans = 16'hf9fc;
	#20
	A = 16'h5513;
	B = 16'h5b47;
	ans = 16'h749e;
	#20
	A = 16'h57dd;
	B = 16'hd156;
	ans = 16'hed3f;
	#20
	A = 16'hd01b;
	B = 16'hd52c;
	ans = 16'h694f;
	#20
	A = 16'hda3d;
	B = 16'hd986;
	ans = 16'h784f;
	#20
	A = 16'h5b0d;
	B = 16'h5851;
	ans = 16'h779c;
	#20
	A = 16'hda79;
	B = 16'hd8e1;
	ans = 16'h77e5;
	#20
	A = 16'h5b0b;
	B = 16'hd252;
	ans = 16'hf190;
	#20
	A = 16'hcea4;
	B = 16'h568a;
	ans = 16'he96e;
	#20
	A = 16'h5924;
	B = 16'hd81c;
	ans = 16'hf548;
	#20
	A = 16'h4f77;
	B = 16'h59f9;
	ans = 16'h6d93;
	#20
	A = 16'hd4ae;
	B = 16'hdab0;
	ans = 16'h73d3;
	#20
	A = 16'h59e8;
	B = 16'h5b45;
	ans = 16'h795e;
	#20
	A = 16'h509f;
	B = 16'hd32b;
	ans = 16'he824;
	#20
	A = 16'hd836;
	B = 16'hd774;
	ans = 16'h73d9;
	#20
	A = 16'h5a46;
	B = 16'h574b;
	ans = 16'h75b8;
	#20
	A = 16'h5b5f;
	B = 16'h5abc;
	ans = 16'h7a34;
	#20
	A = 16'h584b;
	B = 16'h4f23;
	ans = 16'h6ba9;
	#20
	A = 16'h4f10;
	B = 16'h5724;
	ans = 16'h6a4e;
	#20
	A = 16'hda6a;
	B = 16'hc88c;
	ans = 16'h674a;
	#20
	A = 16'hdaf5;
	B = 16'hda06;
	ans = 16'h793d;
	#20
	A = 16'hd0df;
	B = 16'hda60;
	ans = 16'h6fc3;
	#20
	A = 16'hd8ed;
	B = 16'h5964;
	ans = 16'hf6a3;
	#20
	A = 16'h5b2a;
	B = 16'h5aad;
	ans = 16'h79fa;
	#20
	A = 16'hd9cf;
	B = 16'h5745;
	ans = 16'hf547;
	#20
	A = 16'h54ac;
	B = 16'h542f;
	ans = 16'h6ce3;
	#20
	A = 16'hdbd1;
	B = 16'h59b4;
	ans = 16'hf992;
	#20
	A = 16'hda7c;
	B = 16'h5953;
	ans = 16'hf851;
	#20
	A = 16'h56fa;
	B = 16'h5b4d;
	ans = 16'h765e;
	#20
	A = 16'h5a61;
	B = 16'h5656;
	ans = 16'h750d;
	#20
	A = 16'h570a;
	B = 16'hd63a;
	ans = 16'hf17b;
	#20
	A = 16'hd061;
	B = 16'h559b;
	ans = 16'hea23;
	#20
	A = 16'hdab3;
	B = 16'h5b17;
	ans = 16'hf9f0;
	#20
	A = 16'hdaf3;
	B = 16'h58a2;
	ans = 16'hf806;
	#20
	A = 16'h597c;
	B = 16'hdb90;
	ans = 16'hf92f;
	#20
	A = 16'h5610;
	B = 16'h56d7;
	ans = 16'h712f;
	#20
	A = 16'hd1f5;
	B = 16'hd964;
	ans = 16'h7004;
	#20
	A = 16'h567c;
	B = 16'hdbc4;
	ans = 16'hf64b;
	#20
	A = 16'h5bba;
	B = 16'hdaf9;
	ans = 16'hfabc;
	#20
	A = 16'h520b;
	B = 16'hdb93;
	ans = 16'hf1b9;
	#20
	A = 16'h5b03;
	B = 16'hd7bd;
	ans = 16'hf6c8;
	#20
	A = 16'h5a4b;
	B = 16'hdbf4;
	ans = 16'hfa42;
	#20
	A = 16'hcb17;
	B = 16'h5a4c;
	ans = 16'he995;
	#20
	A = 16'h5685;
	B = 16'h5185;
	ans = 16'h6c80;
	#20
	A = 16'h4c82;
	B = 16'hd7d6;
	ans = 16'he86a;
	#20
	A = 16'h5a47;
	B = 16'hd890;
	ans = 16'hf729;
	#20
	A = 16'h5626;
	B = 16'h5a04;
	ans = 16'h74a0;
	#20
	A = 16'hd768;
	B = 16'h5b80;
	ans = 16'hf6f2;
	#20
	A = 16'h4e7f;
	B = 16'hd5e0;
	ans = 16'he8c5;
	#20
	A = 16'hd785;
	B = 16'hcc1f;
	ans = 16'h67bf;
	#20
	A = 16'hd39c;
	B = 16'hd887;
	ans = 16'h704e;
	#20
	A = 16'h4aec;
	B = 16'h523c;
	ans = 16'h6165;
	#20
	A = 16'hd76e;
	B = 16'h5466;
	ans = 16'hf016;
	#20
	A = 16'hc870;
	B = 16'hd4c5;
	ans = 16'h614b;
	#20
	A = 16'h5ab4;
	B = 16'hdad3;
	ans = 16'hf9b8;
	#20
	A = 16'hd738;
	B = 16'hd477;
	ans = 16'h7007;
	#20
	A = 16'hd0e3;
	B = 16'h5647;
	ans = 16'hebab;
	#20
	A = 16'h5acd;
	B = 16'hd483;
	ans = 16'hf3ac;
	#20
	A = 16'hd5c3;
	B = 16'hd549;
	ans = 16'h6f9d;
	#20
	A = 16'hd9ce;
	B = 16'hda28;
	ans = 16'h7878;
	#20
	A = 16'hd8ef;
	B = 16'hd552;
	ans = 16'h7290;
	#20
	A = 16'hda15;
	B = 16'hd4bd;
	ans = 16'h7334;
	#20
	A = 16'h59a0;
	B = 16'h5a61;
	ans = 16'h787c;
	#20
	A = 16'h5bb1;
	B = 16'hdaf4;
	ans = 16'hfaaf;
	#20
	A = 16'hd9f5;
	B = 16'hd567;
	ans = 16'h7406;
	#20
	A = 16'h3ea4;
	B = 16'hca24;
	ans = 16'hcd19;
	#20
	A = 16'h4a54;
	B = 16'h4b19;
	ans = 16'h599d;
	#20
	A = 16'h57f3;
	B = 16'hd8b1;
	ans = 16'hf4a9;
	#20
	A = 16'h5220;
	B = 16'hdba1;
	ans = 16'hf1d7;
	#20
	A = 16'h5a6c;
	B = 16'hd4d8;
	ans = 16'hf3c7;
	#20
	A = 16'h536d;
	B = 16'h5897;
	ans = 16'h7043;
	#20
	A = 16'hd1f5;
	B = 16'h4f02;
	ans = 16'he538;
	#20
	A = 16'h58f7;
	B = 16'h49fc;
	ans = 16'h676e;
	#20
	A = 16'hd9b7;
	B = 16'hd866;
	ans = 16'h7649;
	#20
	A = 16'hd31b;
	B = 16'hd9b7;
	ans = 16'h7113;
	#20
	A = 16'h5adb;
	B = 16'h5a5d;
	ans = 16'h7974;
	#20
	A = 16'hd553;
	B = 16'hd86d;
	ans = 16'h71e4;
	#20
	A = 16'hd8cc;
	B = 16'h54e9;
	ans = 16'hf1e3;
	#20
	A = 16'hd8fc;
	B = 16'hd65d;
	ans = 16'h73ee;
	#20
	A = 16'h5899;
	B = 16'h5712;
	ans = 16'h7410;
	#20
	A = 16'hd6dc;
	B = 16'h502c;
	ans = 16'heb27;
	#20
	A = 16'hd5e9;
	B = 16'h5be6;
	ans = 16'hf5d6;
	#20
	A = 16'h58bf;
	B = 16'h49d7;
	ans = 16'h66ee;
	#20
	A = 16'hd8cd;
	B = 16'h5036;
	ans = 16'hed0e;
	#20
	A = 16'h5591;
	B = 16'hdbe1;
	ans = 16'hf57b;
	#20
	A = 16'h5af9;
	B = 16'h5820;
	ans = 16'h7731;
	#20
	A = 16'h5b72;
	B = 16'h5a74;
	ans = 16'h7a01;
	#20
	A = 16'hd653;
	B = 16'hcedf;
	ans = 16'h696f;
	#20
	A = 16'h56f3;
	B = 16'hd948;
	ans = 16'hf496;
	#20
	A = 16'h5ad4;
	B = 16'h4c28;
	ans = 16'h6b18;
	#20
	A = 16'h5191;
	B = 16'h49de;
	ans = 16'h6015;
	#20
	A = 16'hd643;
	B = 16'h3cbe;
	ans = 16'hd76c;
	#20
	A = 16'hd864;
	B = 16'h51d0;
	ans = 16'hee61;
	#20
	A = 16'hd8d8;
	B = 16'hdaf3;
	ans = 16'h7835;
	#20
	A = 16'h532f;
	B = 16'h52c8;
	ans = 16'h6a17;
	#20
	A = 16'hd538;
	B = 16'h4e4e;
	ans = 16'he81d;
	#20
	A = 16'h4cda;
	B = 16'h5ac6;
	ans = 16'h6c1c;
	#20
	A = 16'hc428;
	B = 16'h583b;
	ans = 16'he065;
	#20
	A = 16'h4f0e;
	B = 16'hd553;
	ans = 16'he8b2;
	#20
	A = 16'hd037;
	B = 16'h52d5;
	ans = 16'he733;
	#20
	A = 16'hca9d;
	B = 16'hdbb8;
	ans = 16'h6a61;
	#20
	A = 16'h5aa8;
	B = 16'hd715;
	ans = 16'hf5e4;
	#20
	A = 16'h5ae8;
	B = 16'hd0bc;
	ans = 16'hf016;
	#20
	A = 16'h598b;
	B = 16'h5023;
	ans = 16'h6dbc;
	#20
	A = 16'hd33e;
	B = 16'hda30;
	ans = 16'h719a;
	#20
	A = 16'h44a8;
	B = 16'h50df;
	ans = 16'h59ac;
	#20
	A = 16'hd7c0;
	B = 16'h56e3;
	ans = 16'hf2ac;
	#20
	A = 16'hdac8;
	B = 16'h5139;
	ans = 16'hf06d;
	#20
	A = 16'h584a;
	B = 16'h5a14;
	ans = 16'h7684;
	#20
	A = 16'hd2a8;
	B = 16'h51ec;
	ans = 16'he8ed;
	#20
	A = 16'h5434;
	B = 16'h527b;
	ans = 16'h6acf;
	#20
	A = 16'hdab9;
	B = 16'h58c7;
	ans = 16'hf804;
	#20
	A = 16'h5837;
	B = 16'hd862;
	ans = 16'hf49e;
	#20
	A = 16'hd961;
	B = 16'h5b52;
	ans = 16'hf8ec;
	#20
	A = 16'h5a30;
	B = 16'h5a30;
	ans = 16'h78c9;
	#20
	A = 16'hd57c;
	B = 16'hd894;
	ans = 16'h7247;
	#20
	A = 16'h58d6;
	B = 16'hd8a9;
	ans = 16'hf5a2;
	#20
	A = 16'hda4d;
	B = 16'hd6f5;
	ans = 16'h757b;
	#20
	A = 16'hd0f0;
	B = 16'hd3fd;
	ans = 16'h68ee;
	#20
	A = 16'h5054;
	B = 16'hd445;
	ans = 16'he89f;
	#20
	A = 16'hd9e4;
	B = 16'h5a19;
	ans = 16'hf87d;
	#20
	A = 16'hd6be;
	B = 16'hd832;
	ans = 16'h7312;
	#20
	A = 16'hd9e0;
	B = 16'h5807;
	ans = 16'hf5ea;
	#20
	A = 16'h58d8;
	B = 16'hc5b4;
	ans = 16'he2e8;
	#20
	A = 16'h5777;
	B = 16'h58d6;
	ans = 16'h7483;
	#20
	A = 16'h527f;
	B = 16'hd544;
	ans = 16'hec47;
	#20
	A = 16'h2dbf;
	B = 16'hd6c0;
	ans = 16'hc8d9;
	#20
	A = 16'hdb2e;
	B = 16'h591a;
	ans = 16'hf894;
	#20
	A = 16'hdab3;
	B = 16'h57d0;
	ans = 16'hf68b;
	#20
	A = 16'h59af;
	B = 16'hd89f;
	ans = 16'hf691;
	#20
	A = 16'h5a65;
	B = 16'hd8d2;
	ans = 16'hf7b5;
	#20
	A = 16'hd8a5;
	B = 16'hd906;
	ans = 16'h75d5;
	#20
	A = 16'hca6e;
	B = 16'h5a43;
	ans = 16'he908;
	#20
	A = 16'hd6e6;
	B = 16'hca92;
	ans = 16'h65aa;
	#20
	A = 16'h544d;
	B = 16'hd41c;
	ans = 16'hec6b;
	#20
	A = 16'hd49a;
	B = 16'hd529;
	ans = 16'h6df0;
	#20
	A = 16'h571e;
	B = 16'hd6e8;
	ans = 16'hf225;
	#20
	A = 16'h5697;
	B = 16'hd3d1;
	ans = 16'hee70;
	#20
	A = 16'hd7ab;
	B = 16'h5774;
	ans = 16'hf325;
	#20
	A = 16'hcf7d;
	B = 16'h59bb;
	ans = 16'hed5d;
	#20
	A = 16'h5bc9;
	B = 16'h5a59;
	ans = 16'h7a2d;
	#20
	A = 16'hd07f;
	B = 16'hd4fa;
	ans = 16'h6998;
	#20
	A = 16'hcc44;
	B = 16'h5595;
	ans = 16'he5f4;
	#20
	A = 16'h5a51;
	B = 16'h5591;
	ans = 16'h7465;
	#20
	A = 16'hd44c;
	B = 16'hd5e2;
	ans = 16'h6e52;
	#20
	A = 16'h5ae1;
	B = 16'h5625;
	ans = 16'h7549;
	#20
	A = 16'h5924;
	B = 16'hdb26;
	ans = 16'hf898;
	#20
	A = 16'h54ca;
	B = 16'hda24;
	ans = 16'hf35a;
	#20
	A = 16'hda89;
	B = 16'hd8cf;
	ans = 16'h77db;
	#20
	A = 16'hd2ba;
	B = 16'h5b3c;
	ans = 16'hf215;
	#20
	A = 16'hd6d5;
	B = 16'hd699;
	ans = 16'h71a2;
	#20
	A = 16'h5911;
	B = 16'hd452;
	ans = 16'hf179;
	#20
	A = 16'h5a58;
	B = 16'hd8ad;
	ans = 16'hf76a;
	#20
	A = 16'h557e;
	B = 16'hd9be;
	ans = 16'hf3e2;
	#20
	A = 16'h5910;
	B = 16'h5acf;
	ans = 16'h784f;
	#20
	A = 16'hd890;
	B = 16'h50df;
	ans = 16'hed8e;
	#20
	A = 16'h5ae0;
	B = 16'hd8d5;
	ans = 16'hf827;
	#20
	A = 16'hcf94;
	B = 16'h5969;
	ans = 16'hed20;
	#20
	A = 16'hd7dc;
	B = 16'hd839;
	ans = 16'h7426;
	#20
	A = 16'hd36b;
	B = 16'h554c;
	ans = 16'hece9;
	#20
	A = 16'hd93d;
	B = 16'h4f88;
	ans = 16'hecee;
	#20
	A = 16'h51ba;
	B = 16'h4feb;
	ans = 16'h65ab;
	#20
	A = 16'h5854;
	B = 16'h4a27;
	ans = 16'h66a8;
	#20
	A = 16'hd85b;
	B = 16'hd990;
	ans = 16'h760f;
	#20
	A = 16'hcd78;
	B = 16'hd7c2;
	ans = 16'h694e;
	#20
	A = 16'h5bec;
	B = 16'hda2a;
	ans = 16'hfa1b;
	#20
	A = 16'hdbac;
	B = 16'h558b;
	ans = 16'hf551;
	#20
	A = 16'hdb73;
	B = 16'hd455;
	ans = 16'h7409;
	#20
	A = 16'h5ae8;
	B = 16'hd840;
	ans = 16'hf756;
	#20
	A = 16'hda53;
	B = 16'hd921;
	ans = 16'h780e;
	#20
	A = 16'h5b56;
	B = 16'hd9a9;
	ans = 16'hf931;
	#20
	A = 16'hd986;
	B = 16'h5b5e;
	ans = 16'hf916;
	#20
	A = 16'hda82;
	B = 16'hd966;
	ans = 16'h7864;
	#20
	A = 16'hd354;
	B = 16'hd18b;
	ans = 16'h6914;
	#20
	A = 16'hd80d;
	B = 16'h5315;
	ans = 16'hef2c;
	#20
	A = 16'h556f;
	B = 16'hd71a;
	ans = 16'hf0d3;
	#20
	A = 16'hd84b;
	B = 16'h52a8;
	ans = 16'hef25;
	#20
	A = 16'h54b7;
	B = 16'hd576;
	ans = 16'hee70;
	#20
	A = 16'hd72c;
	B = 16'hd6d8;
	ans = 16'h7223;
	#20
	A = 16'h550f;
	B = 16'h58ec;
	ans = 16'h7239;
	#20
	A = 16'hdb13;
	B = 16'h564c;
	ans = 16'hf591;
	#20
	A = 16'h5bea;
	B = 16'h527b;
	ans = 16'h7269;
	#20
	A = 16'hcba9;
	B = 16'h55cd;
	ans = 16'he58e;
	#20
	A = 16'h5b39;
	B = 16'h5b54;
	ans = 16'h7a9e;
	#20
	A = 16'hdac9;
	B = 16'h57d8;
	ans = 16'hf6a7;
	#20
	A = 16'h5568;
	B = 16'hceab;
	ans = 16'he882;
	#20
	A = 16'hd5dc;
	B = 16'h4dd9;
	ans = 16'he848;
	#20
	A = 16'h5687;
	B = 16'h5a72;
	ans = 16'h7542;
	#20
	A = 16'h5ac7;
	B = 16'h5ad1;
	ans = 16'h79c6;
	#20
	A = 16'hd91b;
	B = 16'hd1ad;
	ans = 16'h6f3f;
	#20
	A = 16'hd9f4;
	B = 16'h55bb;
	ans = 16'hf444;
	#20
	A = 16'hd8de;
	B = 16'hdb38;
	ans = 16'h7864;
	#20
	A = 16'h54b1;
	B = 16'h5917;
	ans = 16'h71f8;
	#20
	A = 16'h5aae;
	B = 16'hda8c;
	ans = 16'hf977;
	#20
	A = 16'hd869;
	B = 16'h5036;
	ans = 16'heca5;
	#20
	A = 16'hd917;
	B = 16'h5ae8;
	ans = 16'hf865;
	#20
	A = 16'hda2b;
	B = 16'h5b63;
	ans = 16'hf9b2;
	#20
	A = 16'hc74b;
	B = 16'h587a;
	ans = 16'he415;
	#20
	A = 16'h5454;
	B = 16'h5827;
	ans = 16'h707e;
	#20
	A = 16'h539d;
	B = 16'h58fe;
	ans = 16'h70c0;
	#20
	A = 16'h449b;
	B = 16'hda8b;
	ans = 16'he389;
	#20
	A = 16'h54ef;
	B = 16'hd36b;
	ans = 16'hec93;
	#20
	A = 16'hc449;
	B = 16'hce11;
	ans = 16'h5680;
	#20
	A = 16'h5b11;
	B = 16'hd068;
	ans = 16'hefc9;
	#20
	A = 16'h5013;
	B = 16'h5bb2;
	ans = 16'h6fd7;
	#20
	A = 16'hd24b;
	B = 16'hd5d0;
	ans = 16'h6c92;
	#20
	A = 16'h5079;
	B = 16'h53a1;
	ans = 16'h6844;
	#20
	A = 16'h497f;
	B = 16'hd9d8;
	ans = 16'he804;
	#20
	A = 16'h5243;
	B = 16'hd860;
	ans = 16'heed9;
	#20
	A = 16'hd646;
	B = 16'h58a6;
	ans = 16'hf34a;
	#20
	A = 16'hd48f;
	B = 16'h54d6;
	ans = 16'hed83;
	#20
	A = 16'h53ca;
	B = 16'h57f2;
	ans = 16'h6fbc;
	#20
	A = 16'hd422;
	B = 16'h5b57;
	ans = 16'hf395;
	#20
	A = 16'h5b65;
	B = 16'h5b5c;
	ans = 16'h7acd;
	#20
	A = 16'hd864;
	B = 16'h4c6f;
	ans = 16'he8de;
	#20
	A = 16'h54f1;
	B = 16'h524d;
	ans = 16'h6bc9;
	#20
	A = 16'hcbe7;
	B = 16'hd449;
	ans = 16'h643c;
	#20
	A = 16'hc914;
	B = 16'hd29a;
	ans = 16'h6031;
	#20
	A = 16'h5b6e;
	B = 16'h45f2;
	ans = 16'h6585;
	#20
	A = 16'hda6b;
	B = 16'h5be2;
	ans = 16'hfa53;
	#20
	A = 16'hd8fb;
	B = 16'h5961;
	ans = 16'hf6b3;
	#20
	A = 16'h5863;
	B = 16'h4789;
	ans = 16'h6422;
	#20
	A = 16'h5633;
	B = 16'h4ed8;
	ans = 16'h694e;
	#20
	A = 16'h58ae;
	B = 16'h50f2;
	ans = 16'h6dc9;
	#20
	A = 16'hd3ed;
	B = 16'h4ecc;
	ans = 16'he6bc;
	#20
	A = 16'hd759;
	B = 16'hd9d8;
	ans = 16'h755e;
	#20
	A = 16'hdb23;
	B = 16'hcca3;
	ans = 16'h6c23;
	#20
	A = 16'hdad5;
	B = 16'h5b33;
	ans = 16'hfa26;
	#20
	A = 16'hd92f;
	B = 16'h5abc;
	ans = 16'hf85d;
	#20
	A = 16'h5164;
	B = 16'h58b9;
	ans = 16'h6e5d;
	#20
	A = 16'hdbaf;
	B = 16'hd14f;
	ans = 16'h7119;
	#20
	A = 16'h5a6e;
	B = 16'hc266;
	ans = 16'he124;
	#20
	A = 16'h58c2;
	B = 16'h56af;
	ans = 16'h73f3;
	#20
	A = 16'h566d;
	B = 16'h59f8;
	ans = 16'h74cb;
	#20
	A = 16'h5ad5;
	B = 16'hd906;
	ans = 16'hf84a;
	#20
	A = 16'h5a32;
	B = 16'h5840;
	ans = 16'h7695;
	#20
	A = 16'hd86c;
	B = 16'hdb97;
	ans = 16'h7832;
	#20
	A = 16'h5317;
	B = 16'hdbdd;
	ans = 16'hf2f8;
	#20
	A = 16'h58b1;
	B = 16'hd952;
	ans = 16'hf63d;
	#20
	A = 16'h57ac;
	B = 16'h5beb;
	ans = 16'h7798;
	#20
	A = 16'hd5d9;
	B = 16'h500a;
	ans = 16'he9e8;
	#20
	A = 16'h597f;
	B = 16'hda7c;
	ans = 16'hf874;
	#20
	A = 16'hdb0b;
	B = 16'hd5b7;
	ans = 16'h7508;
	#20
	A = 16'hdad6;
	B = 16'hd908;
	ans = 16'h784d;
	#20
	A = 16'hd9e2;
	B = 16'hd3e3;
	ans = 16'h71cd;
	#20
	A = 16'h52f9;
	B = 16'hd55c;
	ans = 16'hecac;
	#20
	A = 16'h52b0;
	B = 16'hd713;
	ans = 16'hedea;
	#20
	A = 16'hd564;
	B = 16'hd67c;
	ans = 16'h705f;
	#20
	A = 16'hd13a;
	B = 16'hd6b2;
	ans = 16'h6c60;
	#20
	A = 16'h5960;
	B = 16'hdb94;
	ans = 16'hf917;
	#20
	A = 16'hd30b;
	B = 16'h5ab3;
	ans = 16'hf1e6;
	#20
	A = 16'hd776;
	B = 16'h511a;
	ans = 16'hecc2;
	#20
	A = 16'hc7b3;
	B = 16'h53bb;
	ans = 16'hdf71;
	#20
	A = 16'h5a59;
	B = 16'h4d03;
	ans = 16'h6bf4;
	#20
	A = 16'hd761;
	B = 16'h5acf;
	ans = 16'hf648;
	#20
	A = 16'h5569;
	B = 16'hd8c4;
	ans = 16'hf272;
	#20
	A = 16'h5748;
	B = 16'hd8ce;
	ans = 16'hf45f;
	#20
	A = 16'hd83e;
	B = 16'hce07;
	ans = 16'h6a64;
	#20
	A = 16'h5b73;
	B = 16'h590f;
	ans = 16'h78b6;
	#20
	A = 16'h540b;
	B = 16'hd440;
	ans = 16'hec4c;
	#20
	A = 16'hd49d;
	B = 16'hdbd8;
	ans = 16'h7486;
	#20
	A = 16'h46dc;
	B = 16'h5090;
	ans = 16'h5bd3;
	#20
	A = 16'h5a40;
	B = 16'hd695;
	ans = 16'hf524;
	#20
	A = 16'hdac5;
	B = 16'h5561;
	ans = 16'hf48d;
	#20
	A = 16'hd80b;
	B = 16'hdb08;
	ans = 16'h771b;
	#20
	A = 16'hcd6a;
	B = 16'hcd08;
	ans = 16'h5ecf;
	#20
	A = 16'h5877;
	B = 16'hd881;
	ans = 16'hf507;
	#20
	A = 16'h54f4;
	B = 16'hd686;
	ans = 16'hf00a;
	#20
	A = 16'h5948;
	B = 16'hd1df;
	ans = 16'hefc0;
	#20
	A = 16'h48a1;
	B = 16'h49e9;
	ans = 16'h56d7;
	#20
	A = 16'h589d;
	B = 16'h5a15;
	ans = 16'h7704;
	#20
	A = 16'hda0e;
	B = 16'hd334;
	ans = 16'h7174;
	#20
	A = 16'h59ba;
	B = 16'hd80b;
	ans = 16'hf5ca;
	#20
	A = 16'hd751;
	B = 16'h5573;
	ans = 16'hf0fc;
	#20
	A = 16'h547a;
	B = 16'h4f52;
	ans = 16'h6819;
	#20
	A = 16'hdbd2;
	B = 16'hdbc4;
	ans = 16'h7b97;
	#20
	A = 16'hdb7c;
	B = 16'hd883;
	ans = 16'h7839;
	#20
	A = 16'hdb81;
	B = 16'hda59;
	ans = 16'h79f4;
	#20
	A = 16'hd88a;
	B = 16'hda2f;
	ans = 16'h7704;
	#20
	A = 16'h58c7;
	B = 16'h56fa;
	ans = 16'h742b;
	#20
	A = 16'h5805;
	B = 16'hd99a;
	ans = 16'hf5a1;
	#20
	A = 16'h30b6;
	B = 16'h5410;
	ans = 16'h48c9;
	#20
	A = 16'h5b1e;
	B = 16'hd566;
	ans = 16'hf4cd;
	#20
	A = 16'h556d;
	B = 16'hd92c;
	ans = 16'hf304;
	#20
	A = 16'hd574;
	B = 16'h5b12;
	ans = 16'hf4d2;
	#20
	A = 16'hd77c;
	B = 16'hd97a;
	ans = 16'h7520;
	#20
	A = 16'hd8cc;
	B = 16'h57c5;
	ans = 16'hf4a9;
	#20
	A = 16'hd421;
	B = 16'h562d;
	ans = 16'hee60;
	#20
	A = 16'h4dac;
	B = 16'hd9ad;
	ans = 16'hec06;
	#20
	A = 16'hd9c8;
	B = 16'h5996;
	ans = 16'hf809;
	#20
	A = 16'hd5db;
	B = 16'hcc06;
	ans = 16'h65e4;
	#20
	A = 16'h5852;
	B = 16'h5982;
	ans = 16'h75f3;
	#20
	A = 16'h5824;
	B = 16'h5a64;
	ans = 16'h769e;
	#20
	A = 16'h577d;
	B = 16'hd93a;
	ans = 16'hf4e4;
	#20
	A = 16'h5807;
	B = 16'hd1ab;
	ans = 16'hedb5;
	#20
	A = 16'hd974;
	B = 16'hbd89;
	ans = 16'h5b8c;
	#20
	A = 16'h5af7;
	B = 16'h4413;
	ans = 16'h6318;
	#20
	A = 16'h5a87;
	B = 16'hd98f;
	ans = 16'hf889;
	#20
	A = 16'hdb95;
	B = 16'hd7df;
	ans = 16'h7776;
	#20
	A = 16'h558a;
	B = 16'h5957;
	ans = 16'h7365;
	#20
	A = 16'hda94;
	B = 16'hd165;
	ans = 16'h7070;
	#20
	A = 16'h5a49;
	B = 16'h5927;
	ans = 16'h780c;
	#20
	A = 16'h58de;
	B = 16'hd3e8;
	ans = 16'hf0cf;
	#20
	A = 16'hdaf9;
	B = 16'hcb90;
	ans = 16'h6a97;
	#20
	A = 16'h5be3;
	B = 16'h5654;
	ans = 16'h763d;
	#20
	A = 16'hda71;
	B = 16'h5140;
	ans = 16'hf03a;
	#20
	A = 16'hda7d;
	B = 16'h4f66;
	ans = 16'hee00;
	#20
	A = 16'h4f29;
	B = 16'h5a3b;
	ans = 16'h6d94;
	#20
	A = 16'hd611;
	B = 16'hced7;
	ans = 16'h6930;
	#20
	A = 16'hd912;
	B = 16'hdb58;
	ans = 16'h78a8;
	#20
	A = 16'hd3ec;
	B = 16'h5425;
	ans = 16'hec1b;
	#20
	A = 16'h514a;
	B = 16'h570e;
	ans = 16'h6caa;
	#20
	A = 16'h59f5;
	B = 16'h5635;
	ans = 16'h749f;
	#20
	A = 16'hda1a;
	B = 16'hdb3d;
	ans = 16'h7985;
	#20
	A = 16'h5bdd;
	B = 16'hd493;
	ans = 16'hf47f;
	#20
	A = 16'h556c;
	B = 16'hda6b;
	ans = 16'hf45a;
	#20
	A = 16'h5a95;
	B = 16'hd34b;
	ans = 16'hf200;
	#20
	A = 16'hd985;
	B = 16'hd886;
	ans = 16'h763e;
	#20
	A = 16'h40c4;
	B = 16'hd636;
	ans = 16'hdb66;
	#20
	A = 16'h58fb;
	B = 16'h5be8;
	ans = 16'h78ec;
	#20
	A = 16'hd24a;
	B = 16'hda6a;
	ans = 16'h710b;
	#20
	A = 16'hd0ab;
	B = 16'hdb7b;
	ans = 16'h705d;
	#20
	A = 16'h57a7;
	B = 16'h54b5;
	ans = 16'h7081;
	#20
	A = 16'h4e5c;
	B = 16'h5b11;
	ans = 16'h6d9e;
	#20
	A = 16'h58ef;
	B = 16'hd70b;
	ans = 16'hf458;
	#20
	A = 16'h5bb0;
	B = 16'h4015;
	ans = 16'h5fd8;
	#20
	A = 16'h3ef5;
	B = 16'hda5d;
	ans = 16'hdd89;
	#20
	A = 16'h583e;
	B = 16'hdb64;
	ans = 16'hf7d7;
	#20
	A = 16'h5a48;
	B = 16'hd876;
	ans = 16'hf701;
	#20
	A = 16'h5688;
	B = 16'hd927;
	ans = 16'hf435;
	#20
	A = 16'h59cd;
	B = 16'hd1c7;
	ans = 16'hf030;
	#20
	A = 16'h5136;
	B = 16'h4c5e;
	ans = 16'h61b0;
	#20
	A = 16'hd8c2;
	B = 16'hce47;
	ans = 16'h6b77;
	#20
	A = 16'hdacd;
	B = 16'h50e1;
	ans = 16'hf026;
	#20
	A = 16'hd808;
	B = 16'hd941;
	ans = 16'h754c;
	#20
	A = 16'h58e4;
	B = 16'hd925;
	ans = 16'hf64a;
	#20
	A = 16'h56b1;
	B = 16'hccfa;
	ans = 16'he82a;
	#20
	A = 16'hd9ae;
	B = 16'h5b69;
	ans = 16'hf943;
	#20
	A = 16'h5501;
	B = 16'hd9ed;
	ans = 16'hf36a;
	#20
	A = 16'hcf9e;
	B = 16'hc897;
	ans = 16'h5c5f;
	#20
	A = 16'hd63e;
	B = 16'h581e;
	ans = 16'hf26d;
	#20
	A = 16'h43e8;
	B = 16'hdad5;
	ans = 16'he2c1;
	#20
	A = 16'h5376;
	B = 16'hc98f;
	ans = 16'he12f;
	#20
	A = 16'hd9c6;
	B = 16'hc3b5;
	ans = 16'h6190;
	#20
	A = 16'h5a23;
	B = 16'hcb3b;
	ans = 16'he98c;
	#20
	A = 16'hd9a8;
	B = 16'hd63f;
	ans = 16'h746b;
	#20
	A = 16'h4ecc;
	B = 16'h58ad;
	ans = 16'h6bf2;
	#20
	A = 16'hd9f8;
	B = 16'hda96;
	ans = 16'h78ea;
	#20
	A = 16'hd7c2;
	B = 16'h59de;
	ans = 16'hf5b1;
	#20
	A = 16'h595d;
	B = 16'h5440;
	ans = 16'h71b3;
	#20
	A = 16'hd72b;
	B = 16'hdbf6;
	ans = 16'h7722;
	#20
	A = 16'hd3eb;
	B = 16'h5349;
	ans = 16'heb36;
	#20
	A = 16'hd6b2;
	B = 16'hd970;
	ans = 16'h748d;
	#20
	A = 16'h549b;
	B = 16'h4ecb;
	ans = 16'h67d2;
	#20
	A = 16'h5af8;
	B = 16'h5aa9;
	ans = 16'h79cd;
	#20
	A = 16'h5a5b;
	B = 16'h5429;
	ans = 16'h729c;
	#20
	A = 16'hc23d;
	B = 16'h5901;
	ans = 16'hdfce;
	#20
	A = 16'hd2e8;
	B = 16'hd7fe;
	ans = 16'h6ee6;
	#20
	A = 16'h5418;
	B = 16'h4d93;
	ans = 16'h65b4;
	#20
	A = 16'hcbc6;
	B = 16'h55f9;
	ans = 16'he5ce;
	#20
	A = 16'hd87b;
	B = 16'h5645;
	ans = 16'hf306;
	#20
	A = 16'hd913;
	B = 16'h59e4;
	ans = 16'hf779;
	#20
	A = 16'h532c;
	B = 16'h5636;
	ans = 16'h6d91;
	#20
	A = 16'hdaaf;
	B = 16'h4b34;
	ans = 16'hea05;
	#20
	A = 16'h5adf;
	B = 16'h5af3;
	ans = 16'h79f8;
	#20
	A = 16'h5954;
	B = 16'h5a85;
	ans = 16'h7858;
	#20
	A = 16'hdbe9;
	B = 16'hd53d;
	ans = 16'h752e;
	#20
	A = 16'h59fc;
	B = 16'h5984;
	ans = 16'h7820;
	#20
	A = 16'hda5b;
	B = 16'h5b28;
	ans = 16'hf9af;
	#20
	A = 16'hc4f2;
	B = 16'hda48;
	ans = 16'h63c4;
	#20
	A = 16'hdb06;
	B = 16'hd5bf;
	ans = 16'h750b;
	#20
	A = 16'h5ba6;
	B = 16'h548b;
	ans = 16'h7458;
	#20
	A = 16'h5320;
	B = 16'hdbd8;
	ans = 16'hf2fc;
	#20
	A = 16'hd046;
	B = 16'h5837;
	ans = 16'hec81;
	#20
	A = 16'hda2c;
	B = 16'hd464;
	ans = 16'h72c6;
	#20
	A = 16'hdb08;
	B = 16'h5b1e;
	ans = 16'hfa41;
	#20
	A = 16'hccec;
	B = 16'h5b8b;
	ans = 16'heca4;
	#20
	A = 16'hd8b7;
	B = 16'h59be;
	ans = 16'hf6c5;
	#20
	A = 16'h5b88;
	B = 16'hd6cc;
	ans = 16'hf666;
	#20
	A = 16'h4c91;
	B = 16'hdbd6;
	ans = 16'hec79;
	#20
	A = 16'hd744;
	B = 16'hdb0e;
	ans = 16'h7668;
	#20
	A = 16'h53fb;
	B = 16'h563b;
	ans = 16'h6e37;
	#20
	A = 16'hd55f;
	B = 16'hd53d;
	ans = 16'h6f09;
	#20
	A = 16'hd499;
	B = 16'hc383;
	ans = 16'h5c51;
	#20
	A = 16'h5433;
	B = 16'h5721;
	ans = 16'h6f7c;
	#20
	A = 16'hd096;
	B = 16'h5454;
	ans = 16'he8f6;
	#20
	A = 16'h5bac;
	B = 16'h5b73;
	ans = 16'h7b25;
	#20
	A = 16'h4ffb;
	B = 16'h595e;
	ans = 16'h6d5b;
	#20
	A = 16'hd504;
	B = 16'h5abb;
	ans = 16'hf438;
	#20
	A = 16'hd3b3;
	B = 16'h5bc6;
	ans = 16'hf37b;
	#20
	A = 16'h4d79;
	B = 16'h576a;
	ans = 16'h6912;
	#20
	A = 16'hd5a1;
	B = 16'h599b;
	ans = 16'hf3e3;
	#20
	A = 16'hd435;
	B = 16'hd9cc;
	ans = 16'h7219;
	#20
	A = 16'hdaa1;
	B = 16'h5722;
	ans = 16'hf5e9;
	#20
	A = 16'hd67a;
	B = 16'h5baa;
	ans = 16'hf634;
	#20
	A = 16'h5b35;
	B = 16'h596e;
	ans = 16'h78e4;
	#20
	A = 16'h5a6e;
	B = 16'h5b83;
	ans = 16'h7a0a;
	#20
	A = 16'hd51a;
	B = 16'hcde6;
	ans = 16'h6786;
	#20
	A = 16'hdaf3;
	B = 16'hd60c;
	ans = 16'h7541;
	#20
	A = 16'h57de;
	B = 16'h59bd;
	ans = 16'h75a5;
	#20
	A = 16'h5519;
	B = 16'hd45b;
	ans = 16'hed8d;
	#20
	A = 16'h5792;
	B = 16'h5bc5;
	ans = 16'h775a;
	#20
	A = 16'hd2ed;
	B = 16'hd8e6;
	ans = 16'h703e;
	#20
	A = 16'h51ad;
	B = 16'hcc36;
	ans = 16'he1fa;
	#20
	A = 16'hd9ad;
	B = 16'hd81e;
	ans = 16'h75d8;
	#20
	A = 16'h555d;
	B = 16'hcb59;
	ans = 16'he4ed;
	#20
	A = 16'h5687;
	B = 16'hd97b;
	ans = 16'hf479;
	#20
	A = 16'h5892;
	B = 16'h5144;
	ans = 16'h6e04;
	#20
	A = 16'hd6b5;
	B = 16'hdb06;
	ans = 16'h75e3;
	#20
	A = 16'hd670;
	B = 16'h53f8;
	ans = 16'hee6a;
	#20
	A = 16'hda5a;
	B = 16'hd9d9;
	ans = 16'h78a5;
	#20
	A = 16'h5b70;
	B = 16'h5977;
	ans = 16'h7915;
	#20
	A = 16'h5226;
	B = 16'hdbb7;
	ans = 16'hf1ee;
	#20
	A = 16'h5386;
	B = 16'h50db;
	ans = 16'h6891;
	#20
	A = 16'h5861;
	B = 16'hda88;
	ans = 16'hf726;
	#20
	A = 16'h5b55;
	B = 16'hcef8;
	ans = 16'hee63;
	#20
	A = 16'h5ba4;
	B = 16'hd7ba;
	ans = 16'hf761;
	#20
	A = 16'h57bd;
	B = 16'h3d81;
	ans = 16'h5953;
	#20
	A = 16'hdb7e;
	B = 16'h51a0;
	ans = 16'hf145;
	#20
	A = 16'hcaf0;
	B = 16'h53ee;
	ans = 16'he2e0;
	#20
	A = 16'h5b9f;
	B = 16'hd1fb;
	ans = 16'hf1b2;
	#20
	A = 16'hd9bd;
	B = 16'hd623;
	ans = 16'h7467;
	#20
	A = 16'hd8d0;
	B = 16'h5a31;
	ans = 16'hf773;
	#20
	A = 16'hdbb5;
	B = 16'hcc31;
	ans = 16'h6c0a;
	#20
	A = 16'hd5e3;
	B = 16'hdb15;
	ans = 16'h7536;
	#20
	A = 16'hd8d3;
	B = 16'h54d9;
	ans = 16'hf1d9;
	#20
	A = 16'hdabb;
	B = 16'hd450;
	ans = 16'h7342;
	#20
	A = 16'h440d;
	B = 16'h5926;
	ans = 16'h6137;
	#20
	A = 16'h5b59;
	B = 16'h5994;
	ans = 16'h7920;
	#20
	A = 16'hd92d;
	B = 16'hd6a5;
	ans = 16'h744d;
	#20
	A = 16'hd4f7;
	B = 16'h5b8b;
	ans = 16'hf4ae;
	#20
	A = 16'hd6c0;
	B = 16'hda74;
	ans = 16'h7572;
	#20
	A = 16'h5018;
	B = 16'hd396;
	ans = 16'he7c4;
	#20
	A = 16'hd422;
	B = 16'hd60d;
	ans = 16'h6e40;
	#20
	A = 16'hda5e;
	B = 16'hd6da;
	ans = 16'h7574;
	#20
	A = 16'h5b1b;
	B = 16'h5999;
	ans = 16'h78f9;
	#20
	A = 16'hd3b0;
	B = 16'hdbc0;
	ans = 16'h7372;
	#20
	A = 16'hd125;
	B = 16'hda54;
	ans = 16'h7012;
	#20
	A = 16'hc96e;
	B = 16'h5686;
	ans = 16'he46d;
	#20
	A = 16'hd5fa;
	B = 16'hc839;
	ans = 16'h624f;
	#20
	A = 16'hd184;
	B = 16'h427f;
	ans = 16'hd87b;
	#20
	A = 16'hdae5;
	B = 16'hd3e3;
	ans = 16'h72cc;
	#20
	A = 16'hdb79;
	B = 16'h59de;
	ans = 16'hf97b;
	#20
	A = 16'h54f7;
	B = 16'h4c07;
	ans = 16'h6500;
	#20
	A = 16'h5979;
	B = 16'h589b;
	ans = 16'h764d;
	#20
	A = 16'h5b69;
	B = 16'h52be;
	ans = 16'h723f;
	#20
	A = 16'h5a16;
	B = 16'hd9f8;
	ans = 16'hf88a;
	#20
	A = 16'h58d0;
	B = 16'hd089;
	ans = 16'hed75;
	#20
	A = 16'hd7a3;
	B = 16'h59f7;
	ans = 16'hf5b2;
	#20
	A = 16'h59e3;
	B = 16'hd651;
	ans = 16'hf4a6;
	#20
	A = 16'hd544;
	B = 16'h557c;
	ans = 16'hef38;
	#20
	A = 16'h5874;
	B = 16'hd818;
	ans = 16'hf48f;
	#20
	A = 16'hd2c9;
	B = 16'hd59e;
	ans = 16'h6cc4;
	#20
	A = 16'h5910;
	B = 16'h5833;
	ans = 16'h7551;
	#20
	A = 16'hdb24;
	B = 16'hd542;
	ans = 16'h74b1;
	#20
	A = 16'h58ed;
	B = 16'hd8c6;
	ans = 16'hf5e1;
	#20
	A = 16'h557f;
	B = 16'h5a8f;
	ans = 16'h7481;
	#20
	A = 16'h469c;
	B = 16'hd2a0;
	ans = 16'hdd79;
	#20
	A = 16'hdb08;
	B = 16'hd356;
	ans = 16'h7273;
	#20
	A = 16'h5822;
	B = 16'h5a36;
	ans = 16'h766b;
	#20
	A = 16'hcb73;
	B = 16'hd151;
	ans = 16'h60f3;
	#20
	A = 16'h596d;
	B = 16'h51cf;
	ans = 16'h6fe1;
	#20
	A = 16'h5844;
	B = 16'h5a68;
	ans = 16'h76d5;
	#20
	A = 16'hd853;
	B = 16'hd32b;
	ans = 16'h6fc0;
	#20
	A = 16'h5393;
	B = 16'h555e;
	ans = 16'h6d15;
	#20
	A = 16'h5878;
	B = 16'h59ae;
	ans = 16'h7658;
	#20
	A = 16'hd5f1;
	B = 16'hd610;
	ans = 16'h7081;
	#20
	A = 16'hcc73;
	B = 16'h5ba1;
	ans = 16'hec3e;
	#20
	A = 16'h5796;
	B = 16'hd8bf;
	ans = 16'hf480;
	#20
	A = 16'h400e;
	B = 16'hda10;
	ans = 16'hde25;
	#20
	A = 16'hd27f;
	B = 16'hd7d5;
	ans = 16'h6e5c;
	#20
	A = 16'hd76d;
	B = 16'hd97d;
	ans = 16'h7518;
	#20
	A = 16'h4ea9;
	B = 16'h5937;
	ans = 16'h6c57;
	#20
	A = 16'h5b5f;
	B = 16'h5b16;
	ans = 16'h7a87;
	#20
	A = 16'hd63d;
	B = 16'hd7c1;
	ans = 16'h720c;
	#20
	A = 16'h4f1b;
	B = 16'h5b88;
	ans = 16'h6eb0;
	#20
	A = 16'h3e94;
	B = 16'hd789;
	ans = 16'hda32;
	#20
	A = 16'h5ab4;
	B = 16'hcd48;
	ans = 16'hec6d;
	#20
	A = 16'h5b6a;
	B = 16'hcf1f;
	ans = 16'hee99;
	#20
	A = 16'h580a;
	B = 16'hd8cd;
	ans = 16'hf4d9;
	#20
	A = 16'h4ee6;
	B = 16'hd46b;
	ans = 16'he79f;
	#20
	A = 16'h5790;
	B = 16'hd697;
	ans = 16'hf23b;
	#20
	A = 16'hdb53;
	B = 16'h538d;
	ans = 16'hf2ea;
	#20
	A = 16'hcde2;
	B = 16'hdab7;
	ans = 16'h6cf0;
	#20
	A = 16'h59af;
	B = 16'h59f6;
	ans = 16'h783c;
	#20
	A = 16'h487c;
	B = 16'h5a47;
	ans = 16'h670a;
	#20
	A = 16'hd853;
	B = 16'h565d;
	ans = 16'hf2e1;
	#20
	A = 16'hd998;
	B = 16'h5197;
	ans = 16'hefd1;
	#20
	A = 16'hd988;
	B = 16'hda20;
	ans = 16'h783c;
	#20
	A = 16'h59a7;
	B = 16'hcd6e;
	ans = 16'hebac;
	#20
	A = 16'hce9c;
	B = 16'h551d;
	ans = 16'he839;
	#20
	A = 16'hd439;
	B = 16'hd9e7;
	ans = 16'h723b;
	#20
	A = 16'hdb22;
	B = 16'h597e;
	ans = 16'hf8e6;
	#20
	A = 16'h562d;
	B = 16'hda7a;
	ans = 16'hf500;
	#20
	A = 16'hd844;
	B = 16'h5b52;
	ans = 16'hf7ce;
	#20
	A = 16'hd5b0;
	B = 16'hda35;
	ans = 16'h746a;
	#20
	A = 16'h49fa;
	B = 16'hd903;
	ans = 16'he77d;
	#20
	A = 16'hd5af;
	B = 16'hcce1;
	ans = 16'h66ef;
	#20
	A = 16'h4c14;
	B = 16'hd991;
	ans = 16'he9ad;
	#20
	A = 16'hda1b;
	B = 16'h58b7;
	ans = 16'hf732;
	#20
	A = 16'h490c;
	B = 16'hd508;
	ans = 16'he259;
	#20
	A = 16'hd9d3;
	B = 16'h44be;
	ans = 16'he2e8;
	#20
	A = 16'hd9a5;
	B = 16'hdb19;
	ans = 16'h7902;
	#20
	A = 16'h52ec;
	B = 16'h562d;
	ans = 16'h6d58;
	#20
	A = 16'h540f;
	B = 16'h5ac0;
	ans = 16'h72d9;
	#20
	A = 16'h586f;
	B = 16'h54cb;
	ans = 16'h7150;
	#20
	A = 16'hd836;
	B = 16'h5811;
	ans = 16'hf448;
	#20
	A = 16'hd636;
	B = 16'hc293;
	ans = 16'h5d1b;
	#20
	A = 16'h5b87;
	B = 16'hd3f2;
	ans = 16'hf37a;
	#20
	A = 16'h446b;
	B = 16'hd244;
	ans = 16'hdaec;
	#20
	A = 16'h56db;
	B = 16'h5804;
	ans = 16'h72e2;
	#20
	A = 16'hd99e;
	B = 16'h5bea;
	ans = 16'hf98f;
	#20
	A = 16'h5358;
	B = 16'h591b;
	ans = 16'h70b0;
	#20
	A = 16'h5901;
	B = 16'hdbd3;
	ans = 16'hf8e5;
	#20
	A = 16'h56f6;
	B = 16'h5a9b;
	ans = 16'h75bf;
	#20
	A = 16'hd4b5;
	B = 16'h5acd;
	ans = 16'hf400;
	#20
	A = 16'h5636;
	B = 16'hdba1;
	ans = 16'hf5ec;
	#20
	A = 16'hda0a;
	B = 16'hcf67;
	ans = 16'h6d97;
	#20
	A = 16'hd5bf;
	B = 16'hd8a7;
	ans = 16'h72af;
	#20
	A = 16'hd972;
	B = 16'h5bdf;
	ans = 16'hf95c;
	#20
	A = 16'hc8a7;
	B = 16'h5641;
	ans = 16'he346;
	#20
	A = 16'hd8c8;
	B = 16'h5b5c;
	ans = 16'hf866;
	#20
	A = 16'hd779;
	B = 16'h5909;
	ans = 16'hf4b4;
	#20
	A = 16'h58bc;
	B = 16'h5848;
	ans = 16'h7511;
	#20
	A = 16'hcd53;
	B = 16'h542d;
	ans = 16'he58f;
	#20
	A = 16'h56a4;
	B = 16'h50d0;
	ans = 16'h6bfd;
	#20
	A = 16'h57a2;
	B = 16'h543f;
	ans = 16'h700d;
	#20
	A = 16'h4fa7;
	B = 16'h5458;
	ans = 16'h6828;
	#20
	A = 16'h5611;
	B = 16'hda54;
	ans = 16'hf4cc;
	#20
	A = 16'hdbdc;
	B = 16'h5127;
	ans = 16'hf110;
	#20
	A = 16'hd8b5;
	B = 16'h591a;
	ans = 16'hf601;
	#20
	A = 16'h593a;
	B = 16'h5410;
	ans = 16'h714f;
	#20
	A = 16'hd2fa;
	B = 16'hd524;
	ans = 16'h6c7c;
	#20
	A = 16'hd925;
	B = 16'hdba8;
	ans = 16'h78ec;
	#20
	A = 16'h5a73;
	B = 16'h5434;
	ans = 16'h72c7;
	#20
	A = 16'h5885;
	B = 16'hd871;
	ans = 16'hf505;
	#20
	A = 16'h5544;
	B = 16'h5bed;
	ans = 16'h7537;
	#20
	A = 16'h5a54;
	B = 16'h5ad0;
	ans = 16'h7964;
	#20
	A = 16'h50a3;
	B = 16'h587a;
	ans = 16'h6d30;
	#20
	A = 16'hd877;
	B = 16'hda73;
	ans = 16'h7733;
	#20
	A = 16'hce71;
	B = 16'h5057;
	ans = 16'he2fd;
	#20
	A = 16'h55a6;
	B = 16'hda76;
	ans = 16'hf490;
	#20
	A = 16'hd6a2;
	B = 16'h4f7e;
	ans = 16'hea36;
	#20
	A = 16'hdb68;
	B = 16'h5917;
	ans = 16'hf8b6;
	#20
	A = 16'hca7d;
	B = 16'h58e8;
	ans = 16'he7f5;
	#20
	A = 16'h4e23;
	B = 16'h4ef2;
	ans = 16'h6154;
	#20
	A = 16'h5b9b;
	B = 16'h58e7;
	ans = 16'h78a9;
	#20
	A = 16'hd40a;
	B = 16'h4ecd;
	ans = 16'he6de;
	#20
	A = 16'h4b27;
	B = 16'h5ba8;
	ans = 16'h6ad8;
	#20
	A = 16'hd7e6;
	B = 16'hd41c;
	ans = 16'h700f;
	#20
	A = 16'hda10;
	B = 16'h59b7;
	ans = 16'hf855;
	#20
	A = 16'hdaac;
	B = 16'hcdeb;
	ans = 16'h6cef;
	#20
	A = 16'hda23;
	B = 16'h58c7;
	ans = 16'hf754;
	#20
	A = 16'hd6dc;
	B = 16'h5469;
	ans = 16'hef90;
	#20
	A = 16'hd88f;
	B = 16'h5807;
	ans = 16'hf497;
	#20
	A = 16'hd166;
	B = 16'h58bb;
	ans = 16'hee62;
	#20
	A = 16'hd31c;
	B = 16'h59d1;
	ans = 16'hf12b;
	#20
	A = 16'h51ab;
	B = 16'hd5a6;
	ans = 16'hec00;
	#20
	A = 16'h48a4;
	B = 16'h54f4;
	ans = 16'h61bf;
	#20
	A = 16'hda26;
	B = 16'h5417;
	ans = 16'hf249;
	#20
	A = 16'h58b8;
	B = 16'h5032;
	ans = 16'h6cf3;
	#20
	A = 16'hcf8c;
	B = 16'hd834;
	ans = 16'h6bee;
	#20
	A = 16'hd1d0;
	B = 16'h5854;
	ans = 16'hee4a;
	#20
	A = 16'h526c;
	B = 16'h5034;
	ans = 16'h66bf;
	#20
	A = 16'hd212;
	B = 16'h51f9;
	ans = 16'he888;
	#20
	A = 16'hda02;
	B = 16'hd92b;
	ans = 16'h77c3;
	#20
	A = 16'h59e7;
	B = 16'hdbb4;
	ans = 16'hf9af;
	#20
	A = 16'hdbc0;
	B = 16'h555c;
	ans = 16'hf531;
	#20
	A = 16'hdbbd;
	B = 16'hd4f2;
	ans = 16'h74c9;
	#20
	A = 16'h5691;
	B = 16'h5881;
	ans = 16'h7365;
	#20
	A = 16'hda37;
	B = 16'hd09e;
	ans = 16'h6f2c;
	#20
	A = 16'hd6f2;
	B = 16'h5401;
	ans = 16'heef4;
	#20
	A = 16'hd4a5;
	B = 16'hdaef;
	ans = 16'h7407;
	#20
	A = 16'h5907;
	B = 16'hdb75;
	ans = 16'hf8b0;
	#20
	A = 16'h5712;
	B = 16'hd22f;
	ans = 16'hed77;
	#20
	A = 16'hd85c;
	B = 16'hd865;
	ans = 16'h74ca;
	#20
	A = 16'h58c8;
	B = 16'hd7b8;
	ans = 16'hf49d;
	#20
	A = 16'hd724;
	B = 16'h53db;
	ans = 16'hef03;
	#20
	A = 16'hd70e;
	B = 16'hd4db;
	ans = 16'h7048;
	#20
	A = 16'h56b3;
	B = 16'hd933;
	ans = 16'hf45b;
	#20
	A = 16'h41a0;
	B = 16'h5b76;
	ans = 16'h613f;
	#20
	A = 16'hcdbb;
	B = 16'hda3c;
	ans = 16'h6c77;
	#20
	A = 16'hd96c;
	B = 16'h5b32;
	ans = 16'hf8e0;
	#20
	A = 16'h5b13;
	B = 16'h5902;
	ans = 16'h786e;
	#20
	A = 16'h53fc;
	B = 16'h5858;
	ans = 16'h7056;
	#20
	A = 16'hda16;
	B = 16'h576d;
	ans = 16'hf5a6;
	#20
	A = 16'h4d75;
	B = 16'hca1d;
	ans = 16'hdc2c;
	#20
	A = 16'h599b;
	B = 16'hdada;
	ans = 16'hf8cd;
	#20
	A = 16'h5878;
	B = 16'h52f4;
	ans = 16'h6fc5;
	#20
	A = 16'h58f4;
	B = 16'h5887;
	ans = 16'h759b;
	#20
	A = 16'hd9f0;
	B = 16'h52b2;
	ans = 16'hf0f8;
	#20
	A = 16'hda58;
	B = 16'h5bc9;
	ans = 16'hfa2c;
	#20
	A = 16'h57cb;
	B = 16'h58ef;
	ans = 16'h74ce;
	#20
	A = 16'hd681;
	B = 16'h591a;
	ans = 16'hf426;
	#20
	A = 16'hd433;
	B = 16'hd735;
	ans = 16'h6f91;
	#20
	A = 16'h4b89;
	B = 16'h511c;
	ans = 16'h60d0;
	#20
	A = 16'hdbab;
	B = 16'h5839;
	ans = 16'hf80c;
	#20
	A = 16'h5462;
	B = 16'hd94c;
	ans = 16'hf1ce;
	#20
	A = 16'hd81b;
	B = 16'h5b6f;
	ans = 16'hf7a1;
	#20
	A = 16'h52df;
	B = 16'hd6ef;
	ans = 16'hedf5;
	#20
	A = 16'h5a28;
	B = 16'h5611;
	ans = 16'h74ab;
	#20
	A = 16'h5635;
	B = 16'h5a76;
	ans = 16'h7503;
	#20
	A = 16'h5837;
	B = 16'h4472;
	ans = 16'h60af;
	#20
	A = 16'hd8f6;
	B = 16'hd7a5;
	ans = 16'h74be;
	#20
	A = 16'h583a;
	B = 16'hd690;
	ans = 16'hf2ef;
	#20
	A = 16'h5857;
	B = 16'h589d;
	ans = 16'h7501;
	#20
	A = 16'hdad2;
	B = 16'hda04;
	ans = 16'h7921;
	#20
	A = 16'h5816;
	B = 16'hd907;
	ans = 16'hf523;
	#20
	A = 16'hd5b7;
	B = 16'hdac9;
	ans = 16'h74d9;
	#20
	A = 16'hda56;
	B = 16'hd6c3;
	ans = 16'h755b;
	#20
	A = 16'hd92c;
	B = 16'h5506;
	ans = 16'hf27f;
	#20
	A = 16'h5101;
	B = 16'h40bb;
	ans = 16'h55eb;
	#20
	A = 16'h59b4;
	B = 16'h5884;
	ans = 16'h7670;
	#20
	A = 16'hd327;
	B = 16'hd64d;
	ans = 16'h6da2;
	#20
	A = 16'hd0b6;
	B = 16'h56ca;
	ans = 16'hebff;
	#20
	A = 16'hd543;
	B = 16'hda18;
	ans = 16'h7402;
	#20
	A = 16'hd264;
	B = 16'hd8f2;
	ans = 16'h6fe7;
	#20
	A = 16'hd5b3;
	B = 16'h5a86;
	ans = 16'hf4a6;
	#20
	A = 16'hd78d;
	B = 16'hdb7b;
	ans = 16'h770f;
	#20
	A = 16'hd777;
	B = 16'hcc1a;
	ans = 16'h67a8;
	#20
	A = 16'h50eb;
	B = 16'h55cf;
	ans = 16'h6b24;
	#20
	A = 16'hd58e;
	B = 16'hdadb;
	ans = 16'h74c3;
	#20
	A = 16'h5956;
	B = 16'hd049;
	ans = 16'hedb7;
	#20
	A = 16'h5bc6;
	B = 16'hd497;
	ans = 16'hf476;
	#20
	A = 16'h5aee;
	B = 16'hd929;
	ans = 16'hf878;
	#20
	A = 16'h5bf7;
	B = 16'h595e;
	ans = 16'h7958;
	#20
	A = 16'hd8e4;
	B = 16'hd592;
	ans = 16'h72d0;
	#20
	A = 16'h496d;
	B = 16'h322c;
	ans = 16'h4030;
	#20
	A = 16'h56a8;
	B = 16'hda21;
	ans = 16'hf519;
	#20
	A = 16'hdb4d;
	B = 16'hda9b;
	ans = 16'h7a07;
	#20
	A = 16'h5a69;
	B = 16'h527f;
	ans = 16'h7135;
	#20
	A = 16'h5af8;
	B = 16'h483c;
	ans = 16'h6761;
	#20
	A = 16'hdb50;
	B = 16'hcdf8;
	ans = 16'h6d75;
	#20
	A = 16'hdafb;
	B = 16'h56d9;
	ans = 16'hf5fa;
	#20
	A = 16'h5b77;
	B = 16'h5bbe;
	ans = 16'h7b39;
	#20
	A = 16'hd251;
	B = 16'h5a5b;
	ans = 16'hf105;
	#20
	A = 16'hd58f;
	B = 16'hdaf1;
	ans = 16'h74d3;
	#20
	A = 16'hd0c5;
	B = 16'hccd4;
	ans = 16'h61c2;
	#20
	A = 16'hd84c;
	B = 16'hd847;
	ans = 16'h7498;
	#20
	A = 16'hdb8d;
	B = 16'hd9bc;
	ans = 16'h796a;
	#20
	A = 16'h57d0;
	B = 16'h577a;
	ans = 16'h734d;
	#20
	A = 16'h5ac2;
	B = 16'h54f3;
	ans = 16'h742e;
	#20
	A = 16'hd98e;
	B = 16'h54cf;
	ans = 16'hf2ad;
	#20
	A = 16'hcf9f;
	B = 16'h504b;
	ans = 16'he417;
	#20
	A = 16'h5969;
	B = 16'hdbf0;
	ans = 16'hf95e;
	#20
	A = 16'hd4ce;
	B = 16'h58fb;
	ans = 16'hf1fb;
	#20
	A = 16'h54ec;
	B = 16'h53be;
	ans = 16'h6cc3;
	#20
	A = 16'h560d;
	B = 16'hd900;
	ans = 16'hf390;
	#20
	A = 16'hda6c;
	B = 16'hdad4;
	ans = 16'h797b;
	#20
	A = 16'h5821;
	B = 16'h58d9;
	ans = 16'h7501;
	#20
	A = 16'hc6cf;
	B = 16'h5670;
	ans = 16'he17b;
	#20
	A = 16'hd267;
	B = 16'h5051;
	ans = 16'he6e9;
	#20
	A = 16'h58d7;
	B = 16'hdb85;
	ans = 16'hf88d;
	#20
	A = 16'h59e5;
	B = 16'h5b5e;
	ans = 16'h796e;
	#20
	A = 16'hd7be;
	B = 16'hda37;
	ans = 16'h7604;
	#20
	A = 16'hd8fe;
	B = 16'h562d;
	ans = 16'hf3b5;
	#20
	A = 16'h554d;
	B = 16'hd880;
	ans = 16'hf1f7;
	#20
	A = 16'hdb87;
	B = 16'hd536;
	ans = 16'h74e7;
	#20
	A = 16'h5562;
	B = 16'h5a49;
	ans = 16'h743b;
	#20
	A = 16'hd923;
	B = 16'h5827;
	ans = 16'hf555;
	#20
	A = 16'hd9c6;
	B = 16'h57ad;
	ans = 16'hf58a;
	#20
	A = 16'hcd84;
	B = 16'h4b1c;
	ans = 16'hdce7;
	#20
	A = 16'hd990;
	B = 16'h4926;
	ans = 16'he729;
	#20
	A = 16'h5676;
	B = 16'hd51d;
	ans = 16'hf021;
	#20
	A = 16'hd92b;
	B = 16'h58c5;
	ans = 16'hf62a;
	#20
	A = 16'hdb34;
	B = 16'hd60d;
	ans = 16'h7573;
	#20
	A = 16'hd17f;
	B = 16'hd923;
	ans = 16'h6f0f;
	#20
	A = 16'h59d9;
	B = 16'h5958;
	ans = 16'h77d0;
	#20
	A = 16'h5929;
	B = 16'h51a0;
	ans = 16'h6f42;
	#20
	A = 16'hd7fa;
	B = 16'hd38e;
	ans = 16'h6f88;
	#20
	A = 16'h5ba9;
	B = 16'hdb33;
	ans = 16'hfae5;
	#20
	A = 16'h5aba;
	B = 16'hd7ff;
	ans = 16'hf6b9;
	#20
	A = 16'h5985;
	B = 16'h45b8;
	ans = 16'h63e4;
	#20
	A = 16'hd1f0;
	B = 16'h51d2;
	ans = 16'he852;
	#20
	A = 16'h4fd7;
	B = 16'hd879;
	ans = 16'hec62;
	#20
	A = 16'hc83a;
	B = 16'h4845;
	ans = 16'hd483;
	#20
	A = 16'h54f5;
	B = 16'hd1d7;
	ans = 16'heb3d;
	#20
	A = 16'hda2b;
	B = 16'h599d;
	ans = 16'hf854;
	#20
	A = 16'hce0a;
	B = 16'hd7e1;
	ans = 16'h69f3;
	#20
	A = 16'hdaa3;
	B = 16'h59e0;
	ans = 16'hf8e0;
	#20
	A = 16'hd255;
	B = 16'hd20d;
	ans = 16'h68ca;
	#20
	A = 16'h45f2;
	B = 16'hd222;
	ans = 16'hdc8f;
	#20
	A = 16'h5553;
	B = 16'hd92d;
	ans = 16'hf2e4;
	#20
	A = 16'h5924;
	B = 16'hc8a0;
	ans = 16'he5f2;
	#20
	A = 16'hdad2;
	B = 16'h5670;
	ans = 16'hf57d;
	#20
	A = 16'hdaa1;
	B = 16'h5bde;
	ans = 16'hfa85;
	#20
	A = 16'h5114;
	B = 16'h5a49;
	ans = 16'h6ffb;
	#20
	A = 16'hd8d2;
	B = 16'hd186;
	ans = 16'h6ea8;
	#20
	A = 16'hd7ba;
	B = 16'hdb32;
	ans = 16'h76f3;
	#20
	A = 16'hdbf3;
	B = 16'h5904;
	ans = 16'hf8fc;
	#20
	A = 16'hd5cd;
	B = 16'h59ff;
	ans = 16'hf459;
	#20
	A = 16'hd861;
	B = 16'hd74d;
	ans = 16'h73fe;
	#20
	A = 16'h58e6;
	B = 16'h5bc3;
	ans = 16'h78c1;
	#20
	A = 16'h539c;
	B = 16'hd83e;
	ans = 16'hf009;
	#20
	A = 16'hd98b;
	B = 16'hd2a4;
	ans = 16'h709a;
	#20
	A = 16'h5454;
	B = 16'h515b;
	ans = 16'h69cb;
	#20
	A = 16'h53eb;
	B = 16'h57e5;
	ans = 16'h6fd0;
	#20
	A = 16'hd178;
	B = 16'h558c;
	ans = 16'heb95;
	#20
	A = 16'hda89;
	B = 16'h5a70;
	ans = 16'hf942;
	#20
	A = 16'hd7b4;
	B = 16'h56b1;
	ans = 16'hf271;
	#20
	A = 16'h5a8c;
	B = 16'hd347;
	ans = 16'hf1f5;
	#20
	A = 16'h5979;
	B = 16'h4dc7;
	ans = 16'h6be8;
	#20
	A = 16'hcd94;
	B = 16'hd916;
	ans = 16'h6b18;
	#20
	A = 16'hd425;
	B = 16'h584e;
	ans = 16'hf076;
	#20
	A = 16'hc90a;
	B = 16'hdae0;
	ans = 16'h6855;
	#20
	A = 16'hd385;
	B = 16'h53d8;
	ans = 16'heb5f;
	#20
	A = 16'hd5e7;
	B = 16'hcbd9;
	ans = 16'h65ca;
	#20
	A = 16'hd8fe;
	B = 16'h5a85;
	ans = 16'hf811;
	#20
	A = 16'hd5ab;
	B = 16'h5aeb;
	ans = 16'hf4e7;
	#20
	A = 16'h5aa2;
	B = 16'h5ada;
	ans = 16'h79ae;
	#20
	A = 16'h59ad;
	B = 16'h54c3;
	ans = 16'h72c2;
	#20
	A = 16'hd934;
	B = 16'h59f2;
	ans = 16'hf7bc;
	#20
	A = 16'h5a60;
	B = 16'hda0c;
	ans = 16'hf8d2;
	#20
	A = 16'h57e2;
	B = 16'hd2c2;
	ans = 16'heea9;
	#20
	A = 16'hd016;
	B = 16'hd848;
	ans = 16'h6c60;
	#20
	A = 16'h5974;
	B = 16'hd80c;
	ans = 16'hf584;
	#20
	A = 16'hd69a;
	B = 16'h4d58;
	ans = 16'he869;
	#20
	A = 16'h5885;
	B = 16'hd9d9;
	ans = 16'hf69b;
	#20
	A = 16'hcea3;
	B = 16'hd058;
	ans = 16'h6335;
	#20
	A = 16'hd627;
	B = 16'h57a9;
	ans = 16'hf1e4;
	#20
	A = 16'hd793;
	B = 16'h4942;
	ans = 16'he4fa;
	#20
	A = 16'h586a;
	B = 16'hbfb2;
	ans = 16'hdc3f;
	#20
	A = 16'h5aae;
	B = 16'hdae6;
	ans = 16'hf9c3;
	#20
	A = 16'h5aed;
	B = 16'h5abf;
	ans = 16'h79d7;
	#20
	A = 16'h5be9;
	B = 16'hdbb1;
	ans = 16'hfb9b;
	#20
	A = 16'hda59;
	B = 16'h5add;
	ans = 16'hf972;
	#20
	A = 16'hd962;
	B = 16'hda2f;
	ans = 16'h7829;
	#20
	A = 16'h54b0;
	B = 16'hd66d;
	ans = 16'hef88;
	#20
	A = 16'h50ae;
	B = 16'hcca8;
	ans = 16'he173;
	#20
	A = 16'h5bc2;
	B = 16'hc8f1;
	ans = 16'he8cb;
	#20
	A = 16'hd974;
	B = 16'hba45;
	ans = 16'h5846;
	#20
	A = 16'h555f;
	B = 16'hda8f;
	ans = 16'hf467;
	#20
	A = 16'hc742;
	B = 16'h59d1;
	ans = 16'he547;
	#20
	A = 16'h5866;
	B = 16'h5b91;
	ans = 16'h7829;
	#20
	A = 16'h4be2;
	B = 16'hd905;
	ans = 16'he8f2;
	#20
	A = 16'hcfbf;
	B = 16'h5a00;
	ans = 16'hedcf;
	#20
	A = 16'h502b;
	B = 16'hd5b3;
	ans = 16'he9f0;
	#20
	A = 16'h585c;
	B = 16'hd909;
	ans = 16'hf57d;
	#20
	A = 16'hdb90;
	B = 16'h5b9d;
	ans = 16'hfb32;
	#20
	A = 16'h5776;
	B = 16'h4f04;
	ans = 16'h6a8b;
	#20
	A = 16'h5aa7;
	B = 16'hd14c;
	ans = 16'hf068;
	#20
	A = 16'h597b;
	B = 16'hd684;
	ans = 16'hf477;
	#20
	A = 16'hd816;
	B = 16'h562e;
	ans = 16'hf250;
	#20
	A = 16'hdb29;
	B = 16'h5157;
	ans = 16'hf0c7;
	#20
	A = 16'hda9c;
	B = 16'h5024;
	ans = 16'heed7;
	#20
	A = 16'h587a;
	B = 16'h5360;
	ans = 16'h7020;
	#20
	A = 16'h4d73;
	B = 16'h4feb;
	ans = 16'h6165;
	#20
	A = 16'h58d1;
	B = 16'h5a98;
	ans = 16'h77f1;
	#20
	A = 16'hce95;
	B = 16'hceeb;
	ans = 16'h61b1;
	#20
	A = 16'hd36c;
	B = 16'hbc55;
	ans = 16'h5405;
	#20
	A = 16'h5304;
	B = 16'hd900;
	ans = 16'hf062;
	#20
	A = 16'h56c7;
	B = 16'h5601;
	ans = 16'h7116;
	#20
	A = 16'h588e;
	B = 16'h5694;
	ans = 16'h737e;
	#20
	A = 16'hd57b;
	B = 16'hd424;
	ans = 16'h6dac;
	#20
	A = 16'h561c;
	B = 16'hd919;
	ans = 16'hf3c9;
	#20
	A = 16'h5aa2;
	B = 16'h5b5c;
	ans = 16'h7a1a;
	#20
	A = 16'hd981;
	B = 16'hd945;
	ans = 16'h7740;
	#20
	A = 16'hda06;
	B = 16'h5b17;
	ans = 16'hf957;
	#20
	A = 16'hd76d;
	B = 16'hdb7b;
	ans = 16'h76f2;
	#20
	A = 16'hdbef;
	B = 16'hdbaa;
	ans = 16'h7b9a;
	#20
	A = 16'h5af5;
	B = 16'h5a48;
	ans = 16'h7976;
	#20
	A = 16'hd7cb;
	B = 16'h53ae;
	ans = 16'hef7b;
	#20
	A = 16'h5057;
	B = 16'h589f;
	ans = 16'h6d04;
	#20
	A = 16'h5964;
	B = 16'h5791;
	ans = 16'h7519;
	#20
	A = 16'hd745;
	B = 16'hd370;
	ans = 16'h6ec2;
	#20
	A = 16'h589b;
	B = 16'h5824;
	ans = 16'h74c4;
	#20
	A = 16'h50c0;
	B = 16'hb692;
	ans = 16'hcbcd;
	#20
	A = 16'h5582;
	B = 16'h5b23;
	ans = 16'h74ea;
	#20
	A = 16'h4cfb;
	B = 16'hdb0f;
	ans = 16'hec65;
	#20
	A = 16'hd682;
	B = 16'h5916;
	ans = 16'hf423;
	#20
	A = 16'hd8f1;
	B = 16'h5ac2;
	ans = 16'hf82d;
	#20
	A = 16'hd830;
	B = 16'hd295;
	ans = 16'h6ee4;
	#20
	A = 16'hd91b;
	B = 16'hcca5;
	ans = 16'h69ee;
	#20
	A = 16'h5167;
	B = 16'h5b69;
	ans = 16'h7101;
	#20
	A = 16'h5b62;
	B = 16'h5b40;
	ans = 16'h7ab1;
	#20
	A = 16'h5afb;
	B = 16'hd11c;
	ans = 16'hf075;
	#20
	A = 16'hdb05;
	B = 16'h5897;
	ans = 16'hf807;
	#20
	A = 16'hd4cc;
	B = 16'h5b1f;
	ans = 16'hf445;
	#20
	A = 16'h509d;
	B = 16'h542e;
	ans = 16'h68d2;
	#20
	A = 16'hd979;
	B = 16'h429e;
	ans = 16'he087;
	#20
	A = 16'h587e;
	B = 16'h5108;
	ans = 16'h6da6;
	#20
	A = 16'h57e8;
	B = 16'hd2bb;
	ans = 16'heea7;
	#20
	A = 16'h524a;
	B = 16'h5983;
	ans = 16'h7055;
	#20
	A = 16'h4a6b;
	B = 16'h5910;
	ans = 16'h6810;
	#20
	A = 16'h54fa;
	B = 16'h4a21;
	ans = 16'h63a0;
	#20
	A = 16'hdaf4;
	B = 16'h5995;
	ans = 16'hf8da;
	#20
	A = 16'h54ca;
	B = 16'h48f1;
	ans = 16'h61eb;
	#20
	A = 16'hd43b;
	B = 16'hd505;
	ans = 16'h6d4f;
	#20
	A = 16'hd73d;
	B = 16'h58ad;
	ans = 16'hf43b;
	#20
	A = 16'h549b;
	B = 16'hda74;
	ans = 16'hf36e;
	#20
	A = 16'h546c;
	B = 16'hd26a;
	ans = 16'heb17;
	#20
	A = 16'h537f;
	B = 16'hd22b;
	ans = 16'he9c8;
	#20
	A = 16'h4f79;
	B = 16'hdbf6;
	ans = 16'hef70;
	#20
	A = 16'hd422;
	B = 16'h4930;
	ans = 16'he15c;
	#20
	A = 16'h51ca;
	B = 16'hd607;
	ans = 16'hec5d;
	#20
	A = 16'hd624;
	B = 16'hda6f;
	ans = 16'h74f0;
	#20
	A = 16'h594b;
	B = 16'hd550;
	ans = 16'hf308;
	#20
	A = 16'hd101;
	B = 16'hd013;
	ans = 16'h6519;
	#20
	A = 16'h4e73;
	B = 16'h58aa;
	ans = 16'h6b85;
	#20
	A = 16'h5943;
	B = 16'hd5e8;
	ans = 16'hf3c5;
	#20
	A = 16'h529a;
	B = 16'hd9e4;
	ans = 16'hf0dc;
	#20
	A = 16'h5223;
	B = 16'h58c3;
	ans = 16'h6f4e;
	#20
	A = 16'h58c5;
	B = 16'hdb5a;
	ans = 16'hf862;
	#20
	A = 16'h5b92;
	B = 16'h593d;
	ans = 16'h78f5;
	#20
	A = 16'hc4cb;
	B = 16'hdb45;
	ans = 16'h645b;
	#20
	A = 16'h5642;
	B = 16'h540d;
	ans = 16'h6e56;
	#20
	A = 16'hcb23;
	B = 16'hd062;
	ans = 16'h5fd2;
	#20
	A = 16'hd9d4;
	B = 16'h4e1e;
	ans = 16'hec75;
	#20
	A = 16'hd7a4;
	B = 16'h59df;
	ans = 16'hf59b;
	#20
	A = 16'h587c;
	B = 16'hd5a6;
	ans = 16'hf255;
	#20
	A = 16'h5a62;
	B = 16'hd121;
	ans = 16'hf018;
	#20
	A = 16'h5324;
	B = 16'hdab4;
	ans = 16'hf1fc;
	#20
	A = 16'h5973;
	B = 16'h4ffa;
	ans = 16'h6d6f;
	#20
	A = 16'hdbe9;
	B = 16'hd145;
	ans = 16'h7136;
	#20
	A = 16'hd814;
	B = 16'h5add;
	ans = 16'hf6ff;
	#20
	A = 16'hd009;
	B = 16'h594f;
	ans = 16'hed5b;
	#20
	A = 16'h58cf;
	B = 16'h58db;
	ans = 16'h75d6;
	#20
	A = 16'hd8a9;
	B = 16'h58f6;
	ans = 16'hf5c8;
	#20
	A = 16'hd53c;
	B = 16'hcf13;
	ans = 16'h68a1;
	#20
	A = 16'h56f0;
	B = 16'h5826;
	ans = 16'h7332;
	#20
	A = 16'hdb44;
	B = 16'hdb66;
	ans = 16'h7ab8;
	#20
	A = 16'hd122;
	B = 16'h558c;
	ans = 16'heb1e;
	#20
	A = 16'h527c;
	B = 16'hcc3b;
	ans = 16'he2dc;
	#20
	A = 16'h5917;
	B = 16'hd453;
	ans = 16'hf181;
	#20
	A = 16'hd8e4;
	B = 16'hdac1;
	ans = 16'h7821;
	#20
	A = 16'hd6cb;
	B = 16'h580b;
	ans = 16'hf2de;
	#20
	A = 16'h5579;
	B = 16'hd1bc;
	ans = 16'hebd8;
	#20
	A = 16'hda7b;
	B = 16'h5624;
	ans = 16'hf4f9;
	#20
	A = 16'hd98f;
	B = 16'hd8ac;
	ans = 16'h767e;
	#20
	A = 16'hd669;
	B = 16'h5961;
	ans = 16'hf44f;
	#20
	A = 16'hdb14;
	B = 16'hd4f6;
	ans = 16'h7464;
	#20
	A = 16'h5767;
	B = 16'hd5ab;
	ans = 16'hf13f;
	#20
	A = 16'hd9bc;
	B = 16'h59fc;
	ans = 16'hf84a;
	#20
	A = 16'hd8c3;
	B = 16'h5ae1;
	ans = 16'hf818;
	#20
	A = 16'hd979;
	B = 16'h4cd7;
	ans = 16'hea9f;
	#20
	A = 16'hd906;
	B = 16'h5696;
	ans = 16'hf423;
	#20
	A = 16'h533d;
	B = 16'h54e5;
	ans = 16'h6c6e;
	#20
	A = 16'h5aa1;
	B = 16'h581b;
	ans = 16'h76ce;
	#20
	A = 16'hce34;
	B = 16'h5674;
	ans = 16'he901;
	#20
	A = 16'h590c;
	B = 16'h5bc2;
	ans = 16'h78e5;
	#20
	A = 16'hda38;
	B = 16'h4fc3;
	ans = 16'hee09;
	#20
	A = 16'h5b76;
	B = 16'hd563;
	ans = 16'hf506;
	#20
	A = 16'hd48d;
	B = 16'h592b;
	ans = 16'hf1e1;
	#20
	A = 16'h5400;
	B = 16'hdba2;
	ans = 16'hf3a2;
	#20
	A = 16'hd479;
	B = 16'h5339;
	ans = 16'hec0a;
	#20
	A = 16'hd470;
	B = 16'hcb2c;
	ans = 16'h63f5;
	#20
	A = 16'h5b86;
	B = 16'hd829;
	ans = 16'hf7d3;
	#20
	A = 16'hd81f;
	B = 16'h5722;
	ans = 16'hf359;
	#20
	A = 16'h4aa9;
	B = 16'hdb88;
	ans = 16'hea45;
	#20
	A = 16'h54dd;
	B = 16'hd900;
	ans = 16'hf214;
	#20
	A = 16'h59ae;
	B = 16'h5968;
	ans = 16'h77ad;
	#20
	A = 16'h5a05;
	B = 16'h5b93;
	ans = 16'h79b3;
	#20
	A = 16'hd557;
	B = 16'h5559;
	ans = 16'hef24;
	#20
	A = 16'h5163;
	B = 16'h59b4;
	ans = 16'h6fae;
	#20
	A = 16'h590d;
	B = 16'hdb24;
	ans = 16'hf882;
	#20
	A = 16'hd8f3;
	B = 16'hdb4c;
	ans = 16'h7884;
	#20
	A = 16'h58ae;
	B = 16'hd925;
	ans = 16'hf605;
	#20
	A = 16'h58de;
	B = 16'h5478;
	ans = 16'h7170;
	#20
	A = 16'h5961;
	B = 16'h4ed3;
	ans = 16'h6c97;
	#20
	A = 16'h5a4c;
	B = 16'h578b;
	ans = 16'h75f0;
	#20
	A = 16'hd328;
	B = 16'hd97f;
	ans = 16'h70eb;
	#20
	A = 16'hd9a5;
	B = 16'hda76;
	ans = 16'h788f;
	#20
	A = 16'h5bf3;
	B = 16'hbe96;
	ans = 16'hde8b;
	#20
	A = 16'h54ae;
	B = 16'hd76d;
	ans = 16'hf058;
	#20
	A = 16'h54e1;
	B = 16'h5962;
	ans = 16'h7291;
	#20
	A = 16'hd79b;
	B = 16'hc48a;
	ans = 16'h6051;
	#20
	A = 16'hcdc0;
	B = 16'h5a10;
	ans = 16'hec5c;
	#20
	A = 16'h46cf;
	B = 16'hdaeb;
	ans = 16'he5e3;
	#20
	A = 16'hc6fd;
	B = 16'hda37;
	ans = 16'h656e;
	#20
	A = 16'hd7ae;
	B = 16'hd640;
	ans = 16'h7200;
	#20
	A = 16'hd81b;
	B = 16'hd39b;
	ans = 16'h6fce;
	#20
	A = 16'hdb3a;
	B = 16'h545f;
	ans = 16'hf3e6;
	#20
	A = 16'hda4f;
	B = 16'hd6e2;
	ans = 16'h756d;
	#20
	A = 16'hd9b9;
	B = 16'h5b04;
	ans = 16'hf905;
	#20
	A = 16'hd167;
	B = 16'hda9d;
	ans = 16'h7077;
	#20
	A = 16'h568f;
	B = 16'h5b7f;
	ans = 16'h7625;
	#20
	A = 16'h5794;
	B = 16'hd989;
	ans = 16'hf53e;
	#20
	A = 16'hd69e;
	B = 16'hd002;
	ans = 16'h6aa1;
	#20
	A = 16'h58bd;
	B = 16'hd9c1;
	ans = 16'hf6d1;
	#20
	A = 16'hd8e4;
	B = 16'hd2d1;
	ans = 16'h702b;
	#20
	A = 16'h59a3;
	B = 16'hda88;
	ans = 16'hf89a;
	#20
	A = 16'h593f;
	B = 16'hd9a2;
	ans = 16'hf763;
	#20
	A = 16'hd8c6;
	B = 16'h5a26;
	ans = 16'hf756;
	#20
	A = 16'h4af5;
	B = 16'hc8a6;
	ans = 16'hd80b;
	#20
	A = 16'hd9a3;
	B = 16'h597f;
	ans = 16'hf7bf;
	#20
	A = 16'hd9f7;
	B = 16'hda05;
	ans = 16'h787d;
	#20
	A = 16'h5294;
	B = 16'h5b0f;
	ans = 16'h71ce;
	#20
	A = 16'h594c;
	B = 16'h52e6;
	ans = 16'h7091;
	#20
	A = 16'h5689;
	B = 16'h5691;
	ans = 16'h715d;
	#20
	A = 16'hd104;
	B = 16'h59ad;
	ans = 16'hef1e;
	#20
	A = 16'hd866;
	B = 16'hd9b5;
	ans = 16'h7647;
	#20
	A = 16'h5586;
	B = 16'h5be3;
	ans = 16'h7572;
	#20
	A = 16'hdaca;
	B = 16'h558f;
	ans = 16'hf4b8;
	#20
	A = 16'h5bf1;
	B = 16'hd460;
	ans = 16'hf458;
	#20
	A = 16'h5bf2;
	B = 16'hd60f;
	ans = 16'hf604;
	#20
	A = 16'h5a4f;
	B = 16'hda1e;
	ans = 16'hf8d3;
	#20
	A = 16'hd94b;
	B = 16'h5496;
	ans = 16'hf211;
	#20
	A = 16'h580c;
	B = 16'h395d;
	ans = 16'h556d;
	#20
	A = 16'hd48b;
	B = 16'hac38;
	ans = 16'h44cb;
	#20
	A = 16'hccfd;
	B = 16'h5b6e;
	ans = 16'heca2;
	#20
	A = 16'h56fa;
	B = 16'hcc31;
	ans = 16'he74f;
	#20
	A = 16'h548c;
	B = 16'h5b02;
	ans = 16'h73f7;
	#20
	A = 16'h499f;
	B = 16'hd100;
	ans = 16'hdf07;
	#20
	A = 16'h51a9;
	B = 16'hc55f;
	ans = 16'hdb9a;
	#20
	A = 16'hca2c;
	B = 16'h52c1;
	ans = 16'he136;
	#20
	A = 16'h54d6;
	B = 16'h5a5d;
	ans = 16'h73b1;
	#20
	A = 16'h591e;
	B = 16'hd50b;
	ans = 16'hf274;
	#20
	A = 16'hd9c5;
	B = 16'h5906;
	ans = 16'hf73f;
	#20
	A = 16'h5664;
	B = 16'hd7c4;
	ans = 16'hf234;
	#20
	A = 16'h58cc;
	B = 16'h528c;
	ans = 16'h6fda;
	#20
	A = 16'h5bc6;
	B = 16'hd989;
	ans = 16'hf961;
	#20
	A = 16'hd503;
	B = 16'h56a0;
	ans = 16'hf026;
	#20
	A = 16'hd02d;
	B = 16'hd1c9;
	ans = 16'h660a;
	#20
	A = 16'h564c;
	B = 16'hd529;
	ans = 16'hf010;
	#20
	A = 16'hd446;
	B = 16'hc827;
	ans = 16'h6070;
	#20
	A = 16'h585c;
	B = 16'hd9ae;
	ans = 16'hf631;
	#20
	A = 16'h4cfd;
	B = 16'hd319;
	ans = 16'he46d;
	#20
	A = 16'h5a70;
	B = 16'hd94b;
	ans = 16'hf842;
	#20
	A = 16'h590e;
	B = 16'hd9df;
	ans = 16'hf76b;
	#20
	A = 16'h59f3;
	B = 16'h5ba4;
	ans = 16'h79af;
	#20
	A = 16'h5630;
	B = 16'hd74b;
	ans = 16'hf1a4;
	#20
	A = 16'hd702;
	B = 16'hd93c;
	ans = 16'h7496;
	#20
	A = 16'hd6d5;
	B = 16'h5a69;
	ans = 16'hf579;
	#20
	A = 16'h58b3;
	B = 16'hdbee;
	ans = 16'hf8a8;
	#20
	A = 16'hd131;
	B = 16'hd2e8;
	ans = 16'h687b;
	#20
	A = 16'hdb65;
	B = 16'h5851;
	ans = 16'hf7fb;
	#20
	A = 16'hd80b;
	B = 16'h58ed;
	ans = 16'hf4fb;
	#20
	A = 16'hdb2c;
	B = 16'hd64d;
	ans = 16'h75a6;
	#20
	A = 16'hd85b;
	B = 16'h3653;
	ans = 16'hd2e3;
	#20
	A = 16'h5add;
	B = 16'h4dcf;
	ans = 16'h6cfc;
	#20
	A = 16'hd67f;
	B = 16'hd474;
	ans = 16'h6f3b;
	#20
	A = 16'h58e5;
	B = 16'h5a31;
	ans = 16'h7793;
	#20
	A = 16'h5bf1;
	B = 16'hd7bd;
	ans = 16'hf7ae;
	#20
	A = 16'hd708;
	B = 16'h548a;
	ans = 16'heffb;
	#20
	A = 16'hda0b;
	B = 16'hd8e8;
	ans = 16'h7769;
	#20
	A = 16'hcae3;
	B = 16'h4d25;
	ans = 16'hdc6e;
	#20
	A = 16'hda63;
	B = 16'h5a49;
	ans = 16'hf905;
	#20
	A = 16'hcbad;
	B = 16'h5212;
	ans = 16'he1d3;
	#20
	A = 16'h4246;
	B = 16'h5932;
	ans = 16'h6013;
	#20
	A = 16'h5a1d;
	B = 16'hdaf2;
	ans = 16'hf94f;
	#20
	A = 16'hd7b7;
	B = 16'h4d66;
	ans = 16'he935;
	#20
	A = 16'h5404;
	B = 16'hd682;
	ans = 16'hee89;
	#20
	A = 16'hd398;
	B = 16'h54ac;
	ans = 16'hec6f;
	#20
	A = 16'h5bb7;
	B = 16'hd9af;
	ans = 16'hf97b;
	#20
	A = 16'hd5d4;
	B = 16'h55c0;
	ans = 16'hf030;
	#20
	A = 16'hdb41;
	B = 16'h57b0;
	ans = 16'hf6f8;
	#20
	A = 16'h56d2;
	B = 16'hcb58;
	ans = 16'he643;
	#20
	A = 16'h58b0;
	B = 16'hd9a3;
	ans = 16'hf69b;
	#20
	A = 16'hd1e2;
	B = 16'h583e;
	ans = 16'hee3d;
	#20
	A = 16'hd812;
	B = 16'h596c;
	ans = 16'hf584;
	#20
	A = 16'h5889;
	B = 16'hb130;
	ans = 16'hcde2;
	#20
	A = 16'h5b2e;
	B = 16'hdbeb;
	ans = 16'hfb1b;
	#20
	A = 16'hd9b4;
	B = 16'h5a25;
	ans = 16'hf861;
	#20
	A = 16'h54cf;
	B = 16'h5387;
	ans = 16'h6c86;
	#20
	A = 16'h552f;
	B = 16'hda1f;
	ans = 16'hf3ef;
	#20
	A = 16'hc834;
	B = 16'h57cb;
	ans = 16'he418;
	#20
	A = 16'hdba3;
	B = 16'hdb25;
	ans = 16'h7ad2;
	#20
	A = 16'h4d76;
	B = 16'hdb74;
	ans = 16'hed16;
	#20
	A = 16'hda09;
	B = 16'h5a0f;
	ans = 16'hf892;
	#20
	A = 16'h5a9e;
	B = 16'h5822;
	ans = 16'h76d6;
	#20
	A = 16'h586c;
	B = 16'h5963;
	ans = 16'h75f4;
	#20
	A = 16'h587e;
	B = 16'h5a07;
	ans = 16'h76c5;
	#20
	A = 16'h5999;
	B = 16'hc906;
	ans = 16'he708;
	#20
	A = 16'h59ad;
	B = 16'hcf4d;
	ans = 16'hed2e;
	#20
	A = 16'hd129;
	B = 16'h5909;
	ans = 16'hee7f;
	#20
	A = 16'hdaa3;
	B = 16'hd912;
	ans = 16'h7835;
	#20
	A = 16'hdb6b;
	B = 16'hd9e9;
	ans = 16'h797b;
	#20
	A = 16'h538b;
	B = 16'h540f;
	ans = 16'h6ba7;
	#20
	A = 16'hd790;
	B = 16'h52e3;
	ans = 16'hee83;
	#20
	A = 16'hd8f5;
	B = 16'hd966;
	ans = 16'h76b1;
	#20
	A = 16'hdb7d;
	B = 16'hd469;
	ans = 16'h7421;
	#20
	A = 16'h501c;
	B = 16'hda1b;
	ans = 16'hee46;
	#20
	A = 16'hdb38;
	B = 16'hcaf8;
	ans = 16'h6a4a;
	#20
	A = 16'hd909;
	B = 16'hdbc3;
	ans = 16'h78e3;
	#20
	A = 16'hc6b4;
	B = 16'h5672;
	ans = 16'he167;
	#20
	A = 16'hd470;
	B = 16'h5890;
	ans = 16'hf110;
	#20
	A = 16'hcbf4;
	B = 16'hd702;
	ans = 16'h66f7;
	#20
	A = 16'hda35;
	B = 16'h584a;
	ans = 16'hf6a8;
	#20
	A = 16'h4a3d;
	B = 16'h5a93;
	ans = 16'h6920;
	#20
	A = 16'h58b3;
	B = 16'hd77e;
	ans = 16'hf467;
	#20
	A = 16'h5256;
	B = 16'hd91a;
	ans = 16'hf00a;
	#20
	A = 16'hd930;
	B = 16'hd26c;
	ans = 16'h702a;
	#20
	A = 16'hd8c9;
	B = 16'h51f2;
	ans = 16'hef1d;
	#20
	A = 16'h4fe5;
	B = 16'hd59c;
	ans = 16'he989;
	#20
	A = 16'h5bc2;
	B = 16'h5a84;
	ans = 16'h7a52;
	#20
	A = 16'hd476;
	B = 16'h5923;
	ans = 16'hf1bb;
	#20
	A = 16'h5ad1;
	B = 16'hda52;
	ans = 16'hf963;
	#20
	A = 16'hd4d7;
	B = 16'h4c86;
	ans = 16'he579;
	#20
	A = 16'h5539;
	B = 16'h58fd;
	ans = 16'h7283;
	#20
	A = 16'hd25b;
	B = 16'hd339;
	ans = 16'h69bd;
	#20
	A = 16'h54f3;
	B = 16'hd60f;
	ans = 16'hef7f;
	#20
	A = 16'hd5b2;
	B = 16'h59b5;
	ans = 16'hf410;
	#20
	A = 16'h5a9f;
	B = 16'h5adc;
	ans = 16'h79ad;
	#20
	A = 16'h3d1a;
	B = 16'h4845;
	ans = 16'h4972;
	#20
	A = 16'h5ad9;
	B = 16'h59e2;
	ans = 16'h7909;
	#20
	A = 16'hd479;
	B = 16'h59b3;
	ans = 16'hf25f;
	#20
	A = 16'hd756;
	B = 16'h532b;
	ans = 16'hee93;
	#20
	A = 16'hdab7;
	B = 16'hd291;
	ans = 16'h7183;
	#20
	A = 16'hc8e2;
	B = 16'hd980;
	ans = 16'h66b7;
	#20
	A = 16'hd0bf;
	B = 16'h4f99;
	ans = 16'he482;
	#20
	A = 16'hd2c1;
	B = 16'hd8a0;
	ans = 16'h6fcf;
	#20
	A = 16'h5bb1;
	B = 16'h492e;
	ans = 16'h68fb;
	#20
	A = 16'h5b57;
	B = 16'hd24a;
	ans = 16'hf1c5;
	#20
	A = 16'h56cd;
	B = 16'hd15d;
	ans = 16'hec8f;
	#20
	A = 16'hdb50;
	B = 16'h5bdf;
	ans = 16'hfb32;
	#20
	A = 16'h5a6b;
	B = 16'h571d;
	ans = 16'h75b5;
	#20
	A = 16'hd35e;
	B = 16'hd87c;
	ans = 16'h7021;
	#20
	A = 16'hdb29;
	B = 16'hdbac;
	ans = 16'h7ade;
	#20
	A = 16'hd985;
	B = 16'h5b5b;
	ans = 16'hf913;
	#20
	A = 16'hd645;
	B = 16'h5bcd;
	ans = 16'hf61d;
	#20
	A = 16'hda70;
	B = 16'hc334;
	ans = 16'h61cc;
	#20
	A = 16'hd951;
	B = 16'hd27f;
	ans = 16'h7051;
	#20
	A = 16'h5b20;
	B = 16'hc52a;
	ans = 16'he499;
	#20
	A = 16'h594d;
	B = 16'hd04e;
	ans = 16'hedb4;
	#20
	A = 16'h5480;
	B = 16'hd89f;
	ans = 16'hf133;
	#20
	A = 16'hda97;
	B = 16'hd948;
	ans = 16'h785a;
	#20
	A = 16'hda3a;
	B = 16'h5657;
	ans = 16'hf4ef;
	#20
	A = 16'h5735;
	B = 16'hd6e8;
	ans = 16'hf239;
	#20
	A = 16'h571a;
	B = 16'hd9f5;
	ans = 16'hf54a;
	#20
	A = 16'hd6e9;
	B = 16'h5bb5;
	ans = 16'hf6a8;
	#20
	A = 16'h5749;
	B = 16'hda2c;
	ans = 16'hf59f;
	#20
	A = 16'hd542;
	B = 16'hd904;
	ans = 16'h7298;
	#20
	A = 16'hd5b7;
	B = 16'hd49f;
	ans = 16'h6e9a;
	#20
	A = 16'h58a0;
	B = 16'h5b8b;
	ans = 16'h785c;
	#20
	A = 16'hd44f;
	B = 16'hdb8a;
	ans = 16'h740f;
	#20
	A = 16'hd4b4;
	B = 16'hd00a;
	ans = 16'h68c0;
	#20
	A = 16'hd01d;
	B = 16'hd70b;
	ans = 16'h6b3e;
	#20
	A = 16'hdbd3;
	B = 16'hd95e;
	ans = 16'h7940;
	#20
	A = 16'h5a44;
	B = 16'h5300;
	ans = 16'h717c;
	#20
	A = 16'hd339;
	B = 16'hd53f;
	ans = 16'h6cbd;
	#20
	A = 16'h5496;
	B = 16'hd95e;
	ans = 16'hf227;
	#20
	A = 16'h58b4;
	B = 16'hd4e1;
	ans = 16'hf1bd;
	#20
	A = 16'hd9d5;
	B = 16'hdbb5;
	ans = 16'h799e;
	#20
	A = 16'h5766;
	B = 16'hda3c;
	ans = 16'hf5c4;
	#20
	A = 16'h5516;
	B = 16'h4921;
	ans = 16'h6285;
	#20
	A = 16'h5b3d;
	B = 16'hd579;
	ans = 16'hf4f4;
	#20
	A = 16'h5a10;
	B = 16'h57ae;
	ans = 16'h75d2;
	#20
	A = 16'hd436;
	B = 16'h5a93;
	ans = 16'hf2ec;
	#20
	A = 16'h4f07;
	B = 16'h51a8;
	ans = 16'h64f8;
	#20
	A = 16'h5081;
	B = 16'hd45f;
	ans = 16'he8ec;
	#20
	A = 16'hd987;
	B = 16'hd593;
	ans = 16'h73b4;
	#20
	A = 16'h5471;
	B = 16'hd0c6;
	ans = 16'he94d;
	#20
	A = 16'hd449;
	B = 16'h5655;
	ans = 16'heec9;
	#20
	A = 16'h4e4f;
	B = 16'h540f;
	ans = 16'h6667;
	#20
	A = 16'h5b8e;
	B = 16'hdb4b;
	ans = 16'hfae3;
	#20
	A = 16'h48bc;
	B = 16'h500c;
	ans = 16'h5cca;
	#20
	A = 16'hda9c;
	B = 16'hccce;
	ans = 16'h6bf0;
	#20
	A = 16'h54ed;
	B = 16'h5a58;
	ans = 16'h73d0;
	#20
	A = 16'h4cf6;
	B = 16'hcec8;
	ans = 16'he035;
	#20
	A = 16'h4c12;
	B = 16'hd8e6;
	ans = 16'he8fc;
	#20
	A = 16'h5a0e;
	B = 16'hd901;
	ans = 16'hf793;
	#20
	A = 16'hdbe6;
	B = 16'h5ba6;
	ans = 16'hfb8d;
	#20
	A = 16'hce08;
	B = 16'hd4d9;
	ans = 16'h674f;
	#20
	A = 16'hd92c;
	B = 16'h5b5a;
	ans = 16'hf8c1;
	#20
	A = 16'h5bef;
	B = 16'hd9fe;
	ans = 16'hf9f1;
	#20
	A = 16'h5b02;
	B = 16'h3317;
	ans = 16'h5236;
	#20
	A = 16'hd315;
	B = 16'h56c7;
	ans = 16'hee00;
	#20
	A = 16'hd4df;
	B = 16'h4d15;
	ans = 16'he630;
	#20
	A = 16'hd542;
	B = 16'h5783;
	ans = 16'hf0f0;
	#20
	A = 16'hd06f;
	B = 16'hd94f;
	ans = 16'h6de2;
	#20
	A = 16'hd52a;
	B = 16'hdb9a;
	ans = 16'h74e8;
	#20
	A = 16'hd8ff;
	B = 16'h5539;
	ans = 16'hf286;
	#20
	A = 16'h5123;
	B = 16'h4111;
	ans = 16'h5682;
	#20
	A = 16'h5bed;
	B = 16'h4e47;
	ans = 16'h6e38;
	#20
	A = 16'h5b67;
	B = 16'hda7f;
	ans = 16'hfa03;
	#20
	A = 16'hd781;
	B = 16'hd8dc;
	ans = 16'h748f;
	#20
	A = 16'hd8ae;
	B = 16'h546c;
	ans = 16'hf12c;
	#20
	A = 16'hd177;
	B = 16'hd4ed;
	ans = 16'h6abb;
	#20
	A = 16'hd064;
	B = 16'h54b6;
	ans = 16'he92c;
	#20
	A = 16'hd22c;
	B = 16'h59d0;
	ans = 16'hf07c;
	#20
	A = 16'hd09d;
	B = 16'h5947;
	ans = 16'hee16;
	#20
	A = 16'h51e0;
	B = 16'hd9ca;
	ans = 16'hf040;
	#20
	A = 16'h55a4;
	B = 16'h5599;
	ans = 16'h6fe5;
	#20
	A = 16'hd793;
	B = 16'h4499;
	ans = 16'he05a;
	#20
	A = 16'hd883;
	B = 16'h5514;
	ans = 16'hf1ba;
	#20
	A = 16'hcc71;
	B = 16'hd605;
	ans = 16'h66af;
	#20
	A = 16'h583c;
	B = 16'hda10;
	ans = 16'hf66b;
	#20
	A = 16'h54ba;
	B = 16'h5948;
	ans = 16'h723e;
	#20
	A = 16'hd7a2;
	B = 16'h5962;
	ans = 16'hf523;
	#20
	A = 16'h5a19;
	B = 16'hd652;
	ans = 16'hf4d1;
	#20
	A = 16'h5902;
	B = 16'h59e6;
	ans = 16'h7762;
	#20
	A = 16'h5a0a;
	B = 16'hcef1;
	ans = 16'hed3d;
	#20
	A = 16'hdaab;
	B = 16'h5727;
	ans = 16'hf5f6;
	#20
	A = 16'h55c5;
	B = 16'h5800;
	ans = 16'h71c5;
	#20
	A = 16'h5a1d;
	B = 16'h5bbc;
	ans = 16'h79e9;
	#20
	A = 16'h55fd;
	B = 16'hd9fc;
	ans = 16'hf47b;
	#20
	A = 16'hd835;
	B = 16'hda0f;
	ans = 16'h765f;
	#20
	A = 16'h4c38;
	B = 16'h4edb;
	ans = 16'h5f3b;
	#20
	A = 16'hbd01;
	B = 16'hd9a6;
	ans = 16'h5b11;
	#20
	A = 16'h5a27;
	B = 16'h4d32;
	ans = 16'h6bfe;
	#20
	A = 16'h579f;
	B = 16'h5876;
	ans = 16'h7440;
	#20
	A = 16'hdb72;
	B = 16'h474a;
	ans = 16'he6c9;
	#20
	A = 16'h5067;
	B = 16'hd97d;
	ans = 16'hee0a;
	#20
	A = 16'hd6af;
	B = 16'h52f0;
	ans = 16'hedcc;
	#20
	A = 16'hdac0;
	B = 16'h57fa;
	ans = 16'hf6bb;
	#20
	A = 16'h5a61;
	B = 16'hd401;
	ans = 16'hf263;
	#20
	A = 16'hd2bc;
	B = 16'hda2e;
	ans = 16'h7134;
	#20
	A = 16'h58ba;
	B = 16'hd261;
	ans = 16'hef8a;
	#20
	A = 16'hd1ee;
	B = 16'h56b8;
	ans = 16'hecfb;
	#20
	A = 16'hd824;
	B = 16'h5981;
	ans = 16'hf5b3;
	#20
	A = 16'h5ada;
	B = 16'h597e;
	ans = 16'h78b4;
	#20
	A = 16'hd89f;
	B = 16'hd536;
	ans = 16'h7205;
	#20
	A = 16'hdb09;
	B = 16'hcd81;
	ans = 16'h6cd7;
	#20
	A = 16'h5bb2;
	B = 16'h57a2;
	ans = 16'h7758;
	#20
	A = 16'hd701;
	B = 16'hd482;
	ans = 16'h6fe5;
	#20
	A = 16'hd0c3;
	B = 16'hd686;
	ans = 16'h6bc4;
	#20
	A = 16'h5ae4;
	B = 16'hd0ad;
	ans = 16'hf007;
	#20
	A = 16'h58b7;
	B = 16'hd945;
	ans = 16'hf636;
	#20
	A = 16'hcf36;
	B = 16'hd690;
	ans = 16'h69ea;
	#20
	A = 16'h5a4d;
	B = 16'hd551;
	ans = 16'hf430;
	#20
	A = 16'hd99a;
	B = 16'hd5ee;
	ans = 16'h7427;
	#20
	A = 16'hdbe3;
	B = 16'h4714;
	ans = 16'he6fa;
	#20
	A = 16'h4873;
	B = 16'hd8e1;
	ans = 16'he56d;
	#20
	A = 16'h5bf6;
	B = 16'hd409;
	ans = 16'hf404;
	#20
	A = 16'h5ae5;
	B = 16'hd59c;
	ans = 16'hf4d6;
	#20
	A = 16'hc1bd;
	B = 16'hd888;
	ans = 16'h5e80;
	#20
	A = 16'hd433;
	B = 16'h45bf;
	ans = 16'hde08;
	#20
	A = 16'hd967;
	B = 16'hd74d;
	ans = 16'h74ee;
	#20
	A = 16'h562e;
	B = 16'hd1a6;
	ans = 16'hec5d;
	#20
	A = 16'hd770;
	B = 16'hd5dc;
	ans = 16'h7173;
	#20
	A = 16'h5853;
	B = 16'hd9fc;
	ans = 16'hf678;
	#20
	A = 16'h5939;
	B = 16'h5777;
	ans = 16'h74e0;
	#20
	A = 16'hd6f7;
	B = 16'hd9f9;
	ans = 16'h7533;
	#20
	A = 16'h5a3b;
	B = 16'hd818;
	ans = 16'hf660;
	#20
	A = 16'h59f3;
	B = 16'h3506;
	ans = 16'h5379;
	#20
	A = 16'hcc10;
	B = 16'hda48;
	ans = 16'h6a61;
	#20
	A = 16'h59f2;
	B = 16'h57e3;
	ans = 16'h75dc;
	#20
	A = 16'hd984;
	B = 16'hd468;
	ans = 16'h7213;
	#20
	A = 16'h4f52;
	B = 16'h4729;
	ans = 16'h5a8d;
	#20
	A = 16'h48b0;
	B = 16'h5294;
	ans = 16'h5fb5;
	#20
	A = 16'hd7e4;
	B = 16'h3c28;
	ans = 16'hd819;
	#20
	A = 16'h581c;
	B = 16'h53a4;
	ans = 16'h6fd9;
	#20
	A = 16'hc63b;
	B = 16'hd5e3;
	ans = 16'h6096;
	#20
	A = 16'h590c;
	B = 16'hd92b;
	ans = 16'hf685;
	#20
	A = 16'h59a5;
	B = 16'h4a9c;
	ans = 16'h68aa;
	#20
	A = 16'hda3c;
	B = 16'hd652;
	ans = 16'h74ed;
	#20
	A = 16'h4ee0;
	B = 16'h4a15;
	ans = 16'h5d3a;
	#20
	A = 16'h5293;
	B = 16'hcfc4;
	ans = 16'he662;
	#20
	A = 16'hda8e;
	B = 16'hdb34;
	ans = 16'h79e7;
	#20
	A = 16'h5b84;
	B = 16'hd91a;
	ans = 16'hf8cb;
	#20
	A = 16'hd792;
	B = 16'hd09e;
	ans = 16'h6c5f;
	#20
	A = 16'hd0d1;
	B = 16'h5b2f;
	ans = 16'hf053;
	#20
	A = 16'hd92e;
	B = 16'hdb45;
	ans = 16'h78b5;
	#20
	A = 16'h547c;
	B = 16'hd470;
	ans = 16'hecfa;
	#20
	A = 16'hd6d1;
	B = 16'hd3e6;
	ans = 16'h6ebb;
	#20
	A = 16'h5a89;
	B = 16'h576c;
	ans = 16'h7610;
	#20
	A = 16'h507a;
	B = 16'h5ae0;
	ans = 16'h6fb2;
	#20
	A = 16'h5a94;
	B = 16'hd878;
	ans = 16'hf759;
	#20
	A = 16'h5722;
	B = 16'h5898;
	ans = 16'h7419;
	#20
	A = 16'hcff6;
	B = 16'h59a0;
	ans = 16'hed99;
	#20
	A = 16'hd1f5;
	B = 16'hd9e6;
	ans = 16'h7064;
	#20
	A = 16'h57fb;
	B = 16'hd0e5;
	ans = 16'hece2;
	#20
	A = 16'hd0b8;
	B = 16'h39fd;
	ans = 16'hcf10;
	#20
	A = 16'h57cd;
	B = 16'hd242;
	ans = 16'hee1a;
	#20
	A = 16'h5b10;
	B = 16'h5aff;
	ans = 16'h7a2d;
	#20
	A = 16'hdb4d;
	B = 16'hc09f;
	ans = 16'h6038;
	#20
	A = 16'h55a3;
	B = 16'hd266;
	ans = 16'hec82;
	#20
	A = 16'hd430;
	B = 16'h57c5;
	ans = 16'hf011;
	#20
	A = 16'hd815;
	B = 16'hd765;
	ans = 16'h738c;
	#20
	A = 16'h55f5;
	B = 16'hd13c;
	ans = 16'hebcc;
	#20
	A = 16'h57e8;
	B = 16'hd6c4;
	ans = 16'hf2b0;
	#20
	A = 16'hd4b5;
	B = 16'h5774;
	ans = 16'hf063;
	#20
	A = 16'hdb3a;
	B = 16'hd988;
	ans = 16'h78ff;
	#20
	A = 16'h56de;
	B = 16'hd91b;
	ans = 16'hf462;
	#20
	A = 16'hda0d;
	B = 16'hd552;
	ans = 16'h7406;
	#20
	A = 16'hd6a6;
	B = 16'hda66;
	ans = 16'h7551;
	#20
	A = 16'hd27c;
	B = 16'hdba8;
	ans = 16'h7235;
	#20
	A = 16'h552b;
	B = 16'hd741;
	ans = 16'hf0b0;
	#20
	A = 16'hdbb2;
	B = 16'hda95;
	ans = 16'h7a55;
	#20
	A = 16'h4eb5;
	B = 16'hda81;
	ans = 16'hed74;
	#20
	A = 16'hcff4;
	B = 16'h5ae2;
	ans = 16'heed8;
	#20
	A = 16'hda94;
	B = 16'hc7b4;
	ans = 16'h6656;
	#20
	A = 16'h593a;
	B = 16'h533b;
	ans = 16'h70b9;
	#20
	A = 16'h58c2;
	B = 16'h591a;
	ans = 16'h7611;
	#20
	A = 16'h58ab;
	B = 16'h57ae;
	ans = 16'h747b;
	#20
	A = 16'hd004;
	B = 16'h533f;
	ans = 16'he746;
	#20
	A = 16'hd174;
	B = 16'h59e3;
	ans = 16'hf003;
	#20
	A = 16'hd985;
	B = 16'h58c2;
	ans = 16'hf691;
	#20
	A = 16'hd9e6;
	B = 16'hc8ce;
	ans = 16'h6716;
	#20
	A = 16'h5938;
	B = 16'h5923;
	ans = 16'h76b4;
	#20
	A = 16'h58a9;
	B = 16'hd952;
	ans = 16'hf633;
	#20
	A = 16'h569e;
	B = 16'hd61e;
	ans = 16'hf10f;
	#20
	A = 16'h51f2;
	B = 16'h5993;
	ans = 16'h7024;
	#20
	A = 16'h56a1;
	B = 16'h5a20;
	ans = 16'h7513;
	#20
	A = 16'h5969;
	B = 16'hd9d9;
	ans = 16'hf7e9;
	#20
	A = 16'hda7f;
	B = 16'hd605;
	ans = 16'h74e3;
	#20
	A = 16'h5350;
	B = 16'hd8b0;
	ans = 16'hf049;
	#20
	A = 16'h5849;
	B = 16'h39ab;
	ans = 16'h5612;
	#20
	A = 16'h589d;
	B = 16'hdaa8;
	ans = 16'hf7ad;
	#20
	A = 16'h5aad;
	B = 16'h572a;
	ans = 16'h75fa;
	#20
	A = 16'hd72c;
	B = 16'hd485;
	ans = 16'h700d;
	#20
	A = 16'h5770;
	B = 16'hd83c;
	ans = 16'hf3e0;
	#20
	A = 16'h4d00;
	B = 16'h5713;
	ans = 16'h686c;
	#20
	A = 16'h595c;
	B = 16'h564f;
	ans = 16'h743a;
	#20
	A = 16'h54a4;
	B = 16'h58f6;
	ans = 16'h71c1;
	#20
	A = 16'h5bac;
	B = 16'h58cf;
	ans = 16'h789d;
	#20
	A = 16'h57d0;
	B = 16'h597a;
	ans = 16'h7559;
	#20
	A = 16'hd8ee;
	B = 16'hd9d3;
	ans = 16'h772e;
	#20
	A = 16'h5aea;
	B = 16'h5976;
	ans = 16'h78b8;
	#20
	A = 16'h59e6;
	B = 16'h4d0e;
	ans = 16'h6b74;
	#20
	A = 16'hd57e;
	B = 16'hc999;
	ans = 16'h63b0;
	#20
	A = 16'h59f2;
	B = 16'hd9a7;
	ans = 16'hf833;
	#20
	A = 16'h49b1;
	B = 16'hd858;
	ans = 16'he62e;
	#20
	A = 16'hd8ab;
	B = 16'hd278;
	ans = 16'h6f8d;
	#20
	A = 16'h5894;
	B = 16'h569a;
	ans = 16'h738e;
	#20
	A = 16'h4ee8;
	B = 16'h5083;
	ans = 16'h63ca;
	#20
	A = 16'h5463;
	B = 16'hdb70;
	ans = 16'hf414;
	#20
	A = 16'hda46;
	B = 16'hdb7c;
	ans = 16'h79de;
	#20
	A = 16'h5218;
	B = 16'hd84e;
	ans = 16'hee8f;
	#20
	A = 16'h5b63;
	B = 16'hd0e9;
	ans = 16'hf089;
	#20
	A = 16'h5523;
	B = 16'h5a23;
	ans = 16'h73e1;
	#20
	A = 16'h56d9;
	B = 16'hd643;
	ans = 16'hf15c;
	#20
	A = 16'hd2e6;
	B = 16'hcfb2;
	ans = 16'h66a3;
	#20
	A = 16'h59ae;
	B = 16'h5b73;
	ans = 16'h794a;
	#20
	A = 16'hd76a;
	B = 16'h59be;
	ans = 16'hf552;
	#20
	A = 16'h5496;
	B = 16'h551a;
	ans = 16'h6dd9;
	#20
	A = 16'hce9d;
	B = 16'h51ca;
	ans = 16'he4c9;
	#20
	A = 16'h5921;
	B = 16'h5402;
	ans = 16'h7124;
	#20
	A = 16'hd04b;
	B = 16'h5400;
	ans = 16'he84b;
	#20
	A = 16'h5865;
	B = 16'h5945;
	ans = 16'h75ca;
	#20
	A = 16'h3d38;
	B = 16'hdb1a;
	ans = 16'hdca2;
	#20
	A = 16'h5357;
	B = 16'h5b89;
	ans = 16'h72ea;
	#20
	A = 16'h5b0c;
	B = 16'hd203;
	ans = 16'hf14c;
	#20
	A = 16'h5612;
	B = 16'hda70;
	ans = 16'hf4e2;
	#20
	A = 16'hd415;
	B = 16'h58f8;
	ans = 16'hf112;
	#20
	A = 16'h5787;
	B = 16'h442f;
	ans = 16'h5fdf;
	#20
	A = 16'h547f;
	B = 16'hd749;
	ans = 16'hf018;
	#20
	A = 16'h5b7b;
	B = 16'hcc21;
	ans = 16'hebb9;
	#20
	A = 16'hdb3d;
	B = 16'h4ef3;
	ans = 16'hee4a;
	#20
	A = 16'hd816;
	B = 16'h5868;
	ans = 16'hf480;
	#20
	A = 16'h5a9c;
	B = 16'hd081;
	ans = 16'hef71;
	#20
	A = 16'h5aff;
	B = 16'hd403;
	ans = 16'hf304;
	#20
	A = 16'hd47c;
	B = 16'hcbc5;
	ans = 16'h645b;
	#20
	A = 16'hdaf3;
	B = 16'h5a9c;
	ans = 16'hf9be;
	#20
	A = 16'h5837;
	B = 16'h4cc6;
	ans = 16'h6908;
	#20
	A = 16'h5240;
	B = 16'h5850;
	ans = 16'h6ebd;
	#20
	A = 16'hd8e1;
	B = 16'h58db;
	ans = 16'hf5ec;
	#20
	A = 16'h56b3;
	B = 16'h5976;
	ans = 16'h7493;
	#20
	A = 16'hd087;
	B = 16'hd4da;
	ans = 16'h697e;
	#20
	A = 16'hdb29;
	B = 16'h5ae7;
	ans = 16'hfa2d;
	#20
	A = 16'hda18;
	B = 16'hd699;
	ans = 16'h7507;
	#20
	A = 16'h58ad;
	B = 16'hd876;
	ans = 16'hf537;
	#20
	A = 16'h44bb;
	B = 16'hdae6;
	ans = 16'he414;
	#20
	A = 16'h59a0;
	B = 16'h4cba;
	ans = 16'h6aa6;
	#20
	A = 16'h59de;
	B = 16'hcc63;
	ans = 16'hea6f;
	#20
	A = 16'hda54;
	B = 16'h50b5;
	ans = 16'hef72;
	#20
	A = 16'hc964;
	B = 16'hd496;
	ans = 16'h622e;
	#20
	A = 16'h58d2;
	B = 16'hd970;
	ans = 16'hf68d;
	#20
	A = 16'hd9cf;
	B = 16'h5413;
	ans = 16'hf1eb;
	#20
	A = 16'hd864;
	B = 16'hcd2f;
	ans = 16'h69b1;
	#20
	A = 16'h58c2;
	B = 16'hcca5;
	ans = 16'he986;
	#20
	A = 16'hd378;
	B = 16'h5be3;
	ans = 16'hf35d;
	#20
	A = 16'h5692;
	B = 16'h58f8;
	ans = 16'h7415;
	#20
	A = 16'hd86b;
	B = 16'h5bf2;
	ans = 16'hf863;
	#20
	A = 16'h40f1;
	B = 16'hda91;
	ans = 16'he00e;
	#20
	A = 16'h5a02;
	B = 16'hc9fc;
	ans = 16'he87e;
	#20
	A = 16'hd638;
	B = 16'hdb1e;
	ans = 16'h7588;
	#20
	A = 16'hd9f0;
	B = 16'hd78f;
	ans = 16'h759c;
	#20
	A = 16'h5beb;
	B = 16'h516f;
	ans = 16'h7161;
	#20
	A = 16'hd7e9;
	B = 16'hd821;
	ans = 16'h7415;
	#20
	A = 16'hce06;
	B = 16'h5b4b;
	ans = 16'hed7e;
	#20
	A = 16'hd438;
	B = 16'h5ae1;
	ans = 16'hf341;
	#20
	A = 16'hdac3;
	B = 16'h5417;
	ans = 16'hf2ea;
	#20
	A = 16'h5be7;
	B = 16'h5619;
	ans = 16'h7606;
	#20
	A = 16'hd596;
	B = 16'hd929;
	ans = 16'h7335;
	#20
	A = 16'h56b6;
	B = 16'h454a;
	ans = 16'h6070;
	#20
	A = 16'h588d;
	B = 16'h592d;
	ans = 16'h75e3;
	#20
	A = 16'hd464;
	B = 16'h50f3;
	ans = 16'he96f;
	#20
	A = 16'hd6ff;
	B = 16'hda8b;
	ans = 16'h75b9;
	#20
	A = 16'hd99b;
	B = 16'h5147;
	ans = 16'hef65;
	#20
	A = 16'hdb9a;
	B = 16'hd140;
	ans = 16'h70fd;
	#20
	A = 16'hd002;
	B = 16'hd5af;
	ans = 16'h69b2;
	#20
	A = 16'hd6bc;
	B = 16'hda54;
	ans = 16'h7554;
	#20
	A = 16'h5a44;
	B = 16'hd8f5;
	ans = 16'hf7c4;
	#20
	A = 16'h50a4;
	B = 16'h56d4;
	ans = 16'h6bec;
	#20
	A = 16'hdb78;
	B = 16'h5b79;
	ans = 16'hfafa;
	#20
	A = 16'h5ba9;
	B = 16'hcc97;
	ans = 16'hec65;
	#20
	A = 16'h55ec;
	B = 16'h58bb;
	ans = 16'h7301;
	#20
	A = 16'h54e3;
	B = 16'hda72;
	ans = 16'hf3e0;
	#20
	A = 16'hcd9b;
	B = 16'hd1bf;
	ans = 16'h6407;
	#20
	A = 16'h5ba2;
	B = 16'hdadb;
	ans = 16'hfa8a;
	#20
	A = 16'h598e;
	B = 16'hd901;
	ans = 16'hf6f3;
	#20
	A = 16'h594b;
	B = 16'hd01f;
	ans = 16'hed74;
	#20
	A = 16'hd838;
	B = 16'hd41c;
	ans = 16'h7056;
	#20
	A = 16'h5816;
	B = 16'hd88f;
	ans = 16'hf4a8;
	#20
	A = 16'h5953;
	B = 16'hd604;
	ans = 16'hf401;
	#20
	A = 16'hdad9;
	B = 16'h5a7c;
	ans = 16'hf98d;
	#20
	A = 16'h5140;
	B = 16'h5a19;
	ans = 16'h7000;
	#20
	A = 16'h5baa;
	B = 16'h5988;
	ans = 16'h794d;
	#20
	A = 16'h59bc;
	B = 16'hcc4b;
	ans = 16'hea28;
	#20
	A = 16'h55ee;
	B = 16'h4f0a;
	ans = 16'h6938;
	#20
	A = 16'hd84b;
	B = 16'hd69d;
	ans = 16'h7319;
	#20
	A = 16'hdafd;
	B = 16'hc413;
	ans = 16'h631e;
	#20
	A = 16'h56b0;
	B = 16'h5b4c;
	ans = 16'h761a;
	#20
	A = 16'h590c;
	B = 16'h55d6;
	ans = 16'h735d;
	#20
	A = 16'h5909;
	B = 16'hd8bc;
	ans = 16'hf5f6;
	#20
	A = 16'hdbb8;
	B = 16'h5b7f;
	ans = 16'hfb3c;
	#20
	A = 16'h5401;
	B = 16'h5907;
	ans = 16'h7108;
	#20
	A = 16'h5526;
	B = 16'hd4e7;
	ans = 16'hee4f;
	#20
	A = 16'h55e3;
	B = 16'hc062;
	ans = 16'hda73;
	#20
	A = 16'h52d9;
	B = 16'h5b7c;
	ans = 16'h7268;
	#20
	A = 16'h571c;
	B = 16'h5b17;
	ans = 16'h764d;
	#20
	A = 16'h44ec;
	B = 16'h551a;
	ans = 16'h5e47;
	#20
	A = 16'hdab0;
	B = 16'hdb54;
	ans = 16'h7a20;
	#20
	A = 16'hd94e;
	B = 16'hd0ad;
	ans = 16'h6e33;
	#20
	A = 16'hd74c;
	B = 16'hdab1;
	ans = 16'h761a;
	#20
	A = 16'h5a15;
	B = 16'h5794;
	ans = 16'h75c3;
	#20
	A = 16'hc967;
	B = 16'h588b;
	ans = 16'he623;
	#20
	A = 16'h542f;
	B = 16'h5951;
	ans = 16'h718f;
	#20
	A = 16'h4c78;
	B = 16'hccfd;
	ans = 16'hdd93;
	#20
	A = 16'h561f;
	B = 16'h55fd;
	ans = 16'h7095;
	#20
	A = 16'hd41b;
	B = 16'hc981;
	ans = 16'h61a6;
	#20
	A = 16'h51f5;
	B = 16'h544a;
	ans = 16'h6a63;
	#20
	A = 16'hd70d;
	B = 16'h5272;
	ans = 16'hedae;
	#20
	A = 16'h5a0c;
	B = 16'hd9d0;
	ans = 16'hf865;
	#20
	A = 16'hd526;
	B = 16'h5b66;
	ans = 16'hf4c3;
	#20
	A = 16'hd477;
	B = 16'hd2e4;
	ans = 16'h6bb1;
	#20
	A = 16'hd879;
	B = 16'hd5e0;
	ans = 16'h7292;
	#20
	A = 16'hd9d1;
	B = 16'hd85f;
	ans = 16'h765b;
	#20
	A = 16'hcc4c;
	B = 16'h59bd;
	ans = 16'hea2a;
	#20
	A = 16'h58b3;
	B = 16'h4e93;
	ans = 16'h6bb9;
	#20
	A = 16'hd590;
	B = 16'h5a34;
	ans = 16'hf450;
	#20
	A = 16'h512b;
	B = 16'h591e;
	ans = 16'h6e9d;
	#20
	A = 16'hd8fb;
	B = 16'hd8dd;
	ans = 16'h760e;
	#20
	A = 16'hd671;
	B = 16'hd949;
	ans = 16'h7441;
	#20
	A = 16'hd8e6;
	B = 16'hd786;
	ans = 16'h749b;
	#20
	A = 16'hd49f;
	B = 16'hd839;
	ans = 16'h70e1;
	#20
	A = 16'hd27a;
	B = 16'h5531;
	ans = 16'hec34;
	#20
	A = 16'h5214;
	B = 16'h54c8;
	ans = 16'h6b44;
	#20
	A = 16'hd4a9;
	B = 16'hc506;
	ans = 16'h5dda;
	#20
	A = 16'h4966;
	B = 16'hd692;
	ans = 16'he46f;
	#20
	A = 16'hda8a;
	B = 16'hdabb;
	ans = 16'h7980;
	#20
	A = 16'hd12f;
	B = 16'hd7b4;
	ans = 16'h6cfe;
	#20
	A = 16'hd5bb;
	B = 16'h576b;
	ans = 16'hf150;
	#20
	A = 16'h5691;
	B = 16'hd8e1;
	ans = 16'hf401;
	#20
	A = 16'hd956;
	B = 16'h4fa5;
	ans = 16'hed19;
	#20
	A = 16'hcb52;
	B = 16'h5478;
	ans = 16'he417;
	#20
	A = 16'h5aae;
	B = 16'h4b69;
	ans = 16'h6a30;
	#20
	A = 16'hdb57;
	B = 16'h58cb;
	ans = 16'hf866;
	#20
	A = 16'hd5ce;
	B = 16'h53f4;
	ans = 16'hedc5;
	#20
	A = 16'hdbe6;
	B = 16'hd3b5;
	ans = 16'h739c;
	#20
	A = 16'hd43b;
	B = 16'h5954;
	ans = 16'hf1a3;
	#20
	A = 16'hdbd6;
	B = 16'hd961;
	ans = 16'h7945;
	#20
	A = 16'hd71e;
	B = 16'hd868;
	ans = 16'h73d7;
	#20
	A = 16'hd517;
	B = 16'hdb07;
	ans = 16'h7479;
	#20
	A = 16'h4c7c;
	B = 16'h52b3;
	ans = 16'h6383;
	#20
	A = 16'hd838;
	B = 16'h58bb;
	ans = 16'hf4fd;
	#20
	A = 16'h58e7;
	B = 16'h5b24;
	ans = 16'h7860;
	#20
	A = 16'h5ac8;
	B = 16'h526f;
	ans = 16'h7174;
	#20
	A = 16'hd752;
	B = 16'h5b5b;
	ans = 16'hf6bb;
	#20
	A = 16'hd9ef;
	B = 16'hd65a;
	ans = 16'h74b6;
	#20
	A = 16'h4ccb;
	B = 16'hd960;
	ans = 16'hea71;
	#20
	A = 16'hdb64;
	B = 16'hd47b;
	ans = 16'h7424;
	#20
	A = 16'h5290;
	B = 16'hd4b1;
	ans = 16'hebb2;
	#20
	A = 16'hcf39;
	B = 16'hd9cb;
	ans = 16'h6d3b;
	#20
	A = 16'h5023;
	B = 16'h581c;
	ans = 16'h6c40;
	#20
	A = 16'h592c;
	B = 16'hd9b3;
	ans = 16'hf75e;
	#20
	A = 16'h5569;
	B = 16'hdac1;
	ans = 16'hf491;
	#20
	A = 16'hd7ef;
	B = 16'hd8e1;
	ans = 16'h74d7;
	#20
	A = 16'h55df;
	B = 16'h5b8f;
	ans = 16'h758c;
	#20
	A = 16'h58cb;
	B = 16'hcc85;
	ans = 16'he96a;
	#20
	A = 16'hda8f;
	B = 16'h56ef;
	ans = 16'hf5af;
	#20
	A = 16'h509e;
	B = 16'hcc15;
	ans = 16'he0b6;
	#20
	A = 16'hd5fb;
	B = 16'hd61f;
	ans = 16'h7093;
	#20
	A = 16'hd76b;
	B = 16'h58ec;
	ans = 16'hf490;
	#20
	A = 16'h5b0d;
	B = 16'h570a;
	ans = 16'h7634;
	#20
	A = 16'hd34b;
	B = 16'hdb51;
	ans = 16'h72ab;
	#20
	A = 16'h5bf3;
	B = 16'h5be9;
	ans = 16'h7bdc;
	#20
	A = 16'h5962;
	B = 16'h4b0b;
	ans = 16'h68bd;
	#20
	A = 16'h5b86;
	B = 16'hd958;
	ans = 16'hf907;
	#20
	A = 16'h5b94;
	B = 16'hdb2b;
	ans = 16'hfaca;
	#20
	A = 16'h5a6d;
	B = 16'h4daf;
	ans = 16'h6c91;
	#20
	A = 16'hda71;
	B = 16'hd114;
	ans = 16'h7017;
	#20
	A = 16'hd9c3;
	B = 16'h566a;
	ans = 16'hf49f;
	#20
	A = 16'hce44;
	B = 16'hd28b;
	ans = 16'h6520;
	#20
	A = 16'hd8d9;
	B = 16'hce8f;
	ans = 16'h6bf3;
	#20
	A = 16'hda1d;
	B = 16'hd860;
	ans = 16'h76b0;
	#20
	A = 16'hd9a9;
	B = 16'hd5c4;
	ans = 16'h7414;
	#20
	A = 16'hda22;
	B = 16'hdad2;
	ans = 16'h793a;
	#20
	A = 16'h58de;
	B = 16'hd7e2;
	ans = 16'hf4cc;
	#20
	A = 16'hcd9c;
	B = 16'h5609;
	ans = 16'he83b;
	#20
	A = 16'h5af0;
	B = 16'hdb00;
	ans = 16'hfa12;
	#20
	A = 16'hcd46;
	B = 16'hdb4f;
	ans = 16'h6cd1;
	#20
	A = 16'h49e8;
	B = 16'hc8f8;
	ans = 16'hd756;
	#20
	A = 16'h51b5;
	B = 16'h57d1;
	ans = 16'h6d93;
	#20
	A = 16'h5b5e;
	B = 16'hd428;
	ans = 16'hf3a8;
	#20
	A = 16'h581d;
	B = 16'h5968;
	ans = 16'h758f;
	#20
	A = 16'h49d0;
	B = 16'hdaa7;
	ans = 16'he8d5;
	#20
	A = 16'h5832;
	B = 16'h547c;
	ans = 16'h70b4;
	#20
	A = 16'hdaff;
	B = 16'h55ea;
	ans = 16'hf52c;
	#20
	A = 16'h5a58;
	B = 16'hda54;
	ans = 16'hf905;
	#20
	A = 16'h506b;
	B = 16'h583f;
	ans = 16'h6cb1;
	#20
	A = 16'hd241;
	B = 16'hdba4;
	ans = 16'h71f9;
	#20
	A = 16'h5757;
	B = 16'h5415;
	ans = 16'h6f7e;
	#20
	A = 16'h4d20;
	B = 16'hc874;
	ans = 16'hd9b5;
	#20
	A = 16'hd1ca;
	B = 16'hda71;
	ans = 16'h70a9;
	#20
	A = 16'h586f;
	B = 16'hd554;
	ans = 16'hf1e8;
	#20
	A = 16'hcb9d;
	B = 16'hcf81;
	ans = 16'h5f24;
	#20
	A = 16'h58eb;
	B = 16'hd3c9;
	ans = 16'hf0c9;
	#20
	A = 16'hda18;
	B = 16'h5bef;
	ans = 16'hfa0b;
	#20
	A = 16'h5b0a;
	B = 16'hc806;
	ans = 16'he715;
	#20
	A = 16'hcf84;
	B = 16'h4dbe;
	ans = 16'he165;
	#20
	A = 16'hd8e2;
	B = 16'h5549;
	ans = 16'hf274;
	#20
	A = 16'h48a6;
	B = 16'hdad0;
	ans = 16'he7eb;
	#20
	A = 16'hd780;
	B = 16'h5507;
	ans = 16'hf0b7;
	#20
	A = 16'h5918;
	B = 16'h5a66;
	ans = 16'h7813;
	#20
	A = 16'h5b4e;
	B = 16'hda83;
	ans = 16'hf9f2;
	#20
	A = 16'h5948;
	B = 16'hd63e;
	ans = 16'hf41f;
	#20
	A = 16'h58e4;
	B = 16'h5240;
	ans = 16'h6fa4;
	#20
	A = 16'h5787;
	B = 16'h5bcd;
	ans = 16'h7757;
	#20
	A = 16'h52e0;
	B = 16'h5ac6;
	ans = 16'h71d2;
	#20
	A = 16'h5a33;
	B = 16'h4a0c;
	ans = 16'h68b0;
	#20
	A = 16'h5692;
	B = 16'h499d;
	ans = 16'h649c;
	#20
	A = 16'h5528;
	B = 16'h51b9;
	ans = 16'h6b60;
	#20
	A = 16'h58fc;
	B = 16'h5381;
	ans = 16'h70ad;
	#20
	A = 16'hda54;
	B = 16'h5658;
	ans = 16'hf505;
	#20
	A = 16'hca29;
	B = 16'hcf92;
	ans = 16'h5dd4;
	#20
	A = 16'hdb27;
	B = 16'hd860;
	ans = 16'h77d3;
	#20
	A = 16'hdad6;
	B = 16'hd768;
	ans = 16'h7654;
	#20
	A = 16'hdbb1;
	B = 16'hdb15;
	ans = 16'h7acf;
	#20
	A = 16'hd022;
	B = 16'h5042;
	ans = 16'he466;
	#20
	A = 16'hd1ae;
	B = 16'h5996;
	ans = 16'hefee;
	#20
	A = 16'h5547;
	B = 16'h5b96;
	ans = 16'h7501;
	#20
	A = 16'h545f;
	B = 16'hdbab;
	ans = 16'hf431;
	#20
	A = 16'h5046;
	B = 16'hd00d;
	ans = 16'he454;
	#20
	A = 16'h4829;
	B = 16'h5acc;
	ans = 16'h6712;
	#20
	A = 16'h399d;
	B = 16'hd84c;
	ans = 16'hd608;
	#20
	A = 16'hd753;
	B = 16'hd92a;
	ans = 16'h74ba;
	#20
	A = 16'h53ae;
	B = 16'hcd01;
	ans = 16'he4ce;
	#20
	A = 16'h5b7d;
	B = 16'hbe32;
	ans = 16'hddcd;
	#20
	A = 16'hda0c;
	B = 16'hd5b3;
	ans = 16'h744f;
	#20
	A = 16'h4864;
	B = 16'hd2a9;
	ans = 16'hdf50;
	#20
	A = 16'hd1ff;
	B = 16'hd27d;
	ans = 16'h68dd;
	#20
	A = 16'h59ee;
	B = 16'hd4a3;
	ans = 16'hf2e0;
	#20
	A = 16'hcfdf;
	B = 16'hd7c7;
	ans = 16'h6ba7;
	#20
	A = 16'h44b3;
	B = 16'hcfc7;
	ans = 16'hd892;
	#20
	A = 16'h54e6;
	B = 16'h59e3;
	ans = 16'h7335;
	#20
	A = 16'hd977;
	B = 16'hd5e7;
	ans = 16'h7408;
	#20
	A = 16'hd4d0;
	B = 16'hcf86;
	ans = 16'h6887;
	#20
	A = 16'hd36c;
	B = 16'h58d6;
	ans = 16'hf07d;
	#20
	A = 16'h5ab3;
	B = 16'hd6f8;
	ans = 16'hf5d6;
	#20
	A = 16'hd5e7;
	B = 16'hda14;
	ans = 16'h747c;
	#20
	A = 16'h578b;
	B = 16'h5afe;
	ans = 16'h7698;
	#20
	A = 16'h5097;
	B = 16'hcfce;
	ans = 16'he47a;
	#20
	A = 16'h50fe;
	B = 16'hd9ef;
	ans = 16'hef68;
	#20
	A = 16'h3ce2;
	B = 16'h54ec;
	ans = 16'h5602;
	#20
	A = 16'hd5c1;
	B = 16'h5a57;
	ans = 16'hf48f;
	#20
	A = 16'h59d3;
	B = 16'hc9db;
	ans = 16'he843;
	#20
	A = 16'h5915;
	B = 16'h56da;
	ans = 16'h745a;
	#20
	A = 16'hd29d;
	B = 16'h4522;
	ans = 16'hdc3e;
	#20
	A = 16'hd4ac;
	B = 16'h5491;
	ans = 16'hed55;
	#20
	A = 16'h5677;
	B = 16'h5a08;
	ans = 16'h74e0;
	#20
	A = 16'hd978;
	B = 16'h5ab0;
	ans = 16'hf892;
	#20
	A = 16'hd3fd;
	B = 16'hd3ce;
	ans = 16'h6bcb;
	#20
	A = 16'h58ee;
	B = 16'hd944;
	ans = 16'hf67d;
	#20
	A = 16'hd2ac;
	B = 16'hd0d8;
	ans = 16'h680a;
	#20
	A = 16'h5533;
	B = 16'h59b9;
	ans = 16'h7370;
	#20
	A = 16'h5993;
	B = 16'h590d;
	ans = 16'h770a;
	#20
	A = 16'h5b8e;
	B = 16'h5541;
	ans = 16'h74f6;
	#20
	A = 16'h576f;
	B = 16'h58d2;
	ans = 16'h747b;
	#20
	A = 16'h58eb;
	B = 16'hd14b;
	ans = 16'hee82;
	#20
	A = 16'h5aa8;
	B = 16'hd868;
	ans = 16'hf755;
	#20
	A = 16'hda1b;
	B = 16'hdb12;
	ans = 16'h7965;
	#20
	A = 16'h4d9c;
	B = 16'hd226;
	ans = 16'he450;
	#20
	A = 16'h500f;
	B = 16'h588d;
	ans = 16'h6c9e;
	#20
	A = 16'hdb54;
	B = 16'hda2e;
	ans = 16'h79a9;
	#20
	A = 16'h5378;
	B = 16'h588b;
	ans = 16'h703e;
	#20
	A = 16'h59e3;
	B = 16'h5ac4;
	ans = 16'h78fa;
	#20
	A = 16'hd8a6;
	B = 16'h5b4c;
	ans = 16'hf83d;
	#20
	A = 16'h54fc;
	B = 16'hda78;
	ans = 16'hf408;
	#20
	A = 16'h5b8e;
	B = 16'h4ad3;
	ans = 16'h6a72;
	#20
	A = 16'hdb89;
	B = 16'h5587;
	ans = 16'hf535;
	#20
	A = 16'h5abd;
	B = 16'hda20;
	ans = 16'hf929;
	#20
	A = 16'hdb76;
	B = 16'hd979;
	ans = 16'h791b;
	#20
	A = 16'h4e8d;
	B = 16'hdb8f;
	ans = 16'hee30;
	#20
	A = 16'hd0f8;
	B = 16'hd856;
	ans = 16'h6d63;
	#20
	A = 16'h5ab8;
	B = 16'hd8c5;
	ans = 16'hf801;
	#20
	A = 16'hd04d;
	B = 16'hd52f;
	ans = 16'h6993;
	#20
	A = 16'h587b;
	B = 16'hd630;
	ans = 16'hf2ee;
	#20
	A = 16'hd57c;
	B = 16'h584b;
	ans = 16'hf1e3;
	#20
	A = 16'h57c0;
	B = 16'h5662;
	ans = 16'h722f;
	#20
	A = 16'hdb8a;
	B = 16'h5814;
	ans = 16'hf7b0;
	#20
	A = 16'hdb37;
	B = 16'hd256;
	ans = 16'h71b7;
	#20
	A = 16'hd16e;
	B = 16'h5b62;
	ans = 16'hf103;
	#20
	A = 16'hd378;
	B = 16'hdb85;
	ans = 16'h7305;
	#20
	A = 16'hd879;
	B = 16'hd619;
	ans = 16'h72d1;
	#20
	A = 16'hd2c3;
	B = 16'hce48;
	ans = 16'h654f;
	#20
	A = 16'hd71b;
	B = 16'h54f3;
	ans = 16'hf065;
	#20
	A = 16'h5845;
	B = 16'hcc68;
	ans = 16'he8b4;
	#20
	A = 16'h599b;
	B = 16'h5a54;
	ans = 16'h786f;
	#20
	A = 16'h5b1c;
	B = 16'hcd2a;
	ans = 16'hec97;
	#20
	A = 16'hd64c;
	B = 16'hd775;
	ans = 16'h71df;
	#20
	A = 16'h5aed;
	B = 16'h53c3;
	ans = 16'h72b8;
	#20
	A = 16'hb746;
	B = 16'hd835;
	ans = 16'h53a6;
	#20
	A = 16'hda2f;
	B = 16'hd5cc;
	ans = 16'h747b;
	#20
	A = 16'hc56c;
	B = 16'hdb5b;
	ans = 16'h64fc;
	#20
	A = 16'h5a5f;
	B = 16'h584a;
	ans = 16'h76d5;
	#20
	A = 16'h5a88;
	B = 16'hdbe1;
	ans = 16'hfa6f;
	#20
	A = 16'h5bcc;
	B = 16'hdb25;
	ans = 16'hfaf7;
	#20
	A = 16'h50ec;
	B = 16'h56af;
	ans = 16'h6c1d;
	#20
	A = 16'h5686;
	B = 16'hd87f;
	ans = 16'hf355;
	#20
	A = 16'hd5e0;
	B = 16'hd9ad;
	ans = 16'h742b;
	#20
	A = 16'hd1e5;
	B = 16'hd883;
	ans = 16'h6ea6;
	#20
	A = 16'h5a79;
	B = 16'h5994;
	ans = 16'h7883;
	#20
	A = 16'h5810;
	B = 16'h557e;
	ans = 16'h7194;
	#20
	A = 16'h541d;
	B = 16'h545f;
	ans = 16'h6c7f;
	#20
	A = 16'hd686;
	B = 16'hd13a;
	ans = 16'h6c43;
	#20
	A = 16'h52cf;
	B = 16'hd6fc;
	ans = 16'hedf2;
	#20
	A = 16'hd6e5;
	B = 16'hdaf6;
	ans = 16'h7600;
	#20
	A = 16'hd83b;
	B = 16'hd954;
	ans = 16'h75a3;
	#20
	A = 16'h560a;
	B = 16'h55bd;
	ans = 16'h7055;
	#20
	A = 16'hd3b8;
	B = 16'hd8e1;
	ans = 16'h70b5;
	#20
	A = 16'h4946;
	B = 16'hd311;
	ans = 16'he0a8;
	#20
	A = 16'hd7ef;
	B = 16'h55c6;
	ans = 16'hf1ba;
	#20
	A = 16'hdb13;
	B = 16'h57a9;
	ans = 16'hf6c6;
	#20
	A = 16'hc0b3;
	B = 16'h55ca;
	ans = 16'hdacd;
	#20
	A = 16'hccc2;
	B = 16'h583f;
	ans = 16'he90d;
	#20
	A = 16'hd71d;
	B = 16'hd73e;
	ans = 16'h7271;
	#20
	A = 16'hd70d;
	B = 16'h5b4e;
	ans = 16'hf670;
	#20
	A = 16'h4de7;
	B = 16'h5907;
	ans = 16'h6b6b;
	#20
	A = 16'hd873;
	B = 16'h56ca;
	ans = 16'hf38d;
	#20
	A = 16'hd910;
	B = 16'hd487;
	ans = 16'h71bb;
	#20
	A = 16'h4ebe;
	B = 16'hda5f;
	ans = 16'hed5f;
	#20
	A = 16'h5884;
	B = 16'hcd40;
	ans = 16'he9ed;
	#20
	A = 16'hd97e;
	B = 16'h59e4;
	ans = 16'hf80b;
	#20
	A = 16'h5903;
	B = 16'hd6c9;
	ans = 16'hf440;
	#20
	A = 16'hcff8;
	B = 16'hcffe;
	ans = 16'h63f6;
	#20
	A = 16'h5429;
	B = 16'hd673;
	ans = 16'heeb5;
	#20
	A = 16'h591c;
	B = 16'h59ea;
	ans = 16'h778e;
	#20
	A = 16'hd5ea;
	B = 16'h5294;
	ans = 16'hecdd;
	#20
	A = 16'h5779;
	B = 16'h46a5;
	ans = 16'h6235;
	#20
	A = 16'hd4b1;
	B = 16'hd9e9;
	ans = 16'h72ef;
	#20
	A = 16'h5589;
	B = 16'h5875;
	ans = 16'h722b;
	#20
	A = 16'hda4d;
	B = 16'hd055;
	ans = 16'h6ed3;
	#20
	A = 16'hd838;
	B = 16'hd364;
	ans = 16'h6fcb;
	#20
	A = 16'hda07;
	B = 16'h5b1a;
	ans = 16'hf95a;
	#20
	A = 16'h5174;
	B = 16'hcfa7;
	ans = 16'he537;
	#20
	A = 16'h4eb2;
	B = 16'hd859;
	ans = 16'heb47;
	#20
	A = 16'h5b7e;
	B = 16'hd9c7;
	ans = 16'hf969;
	#20
	A = 16'h55a5;
	B = 16'hd94a;
	ans = 16'hf377;
	#20
	A = 16'hd790;
	B = 16'h4e0d;
	ans = 16'he9b8;
	#20
	A = 16'h5532;
	B = 16'h5827;
	ans = 16'h7165;
	#20
	A = 16'hcc67;
	B = 16'h4b42;
	ans = 16'hdbfd;
	#20
	A = 16'h52de;
	B = 16'h5a19;
	ans = 16'h713c;
	#20
	A = 16'h59fd;
	B = 16'h4e64;
	ans = 16'h6cc9;
	#20
	A = 16'hd40d;
	B = 16'h5b63;
	ans = 16'hf37b;
	#20
	A = 16'h514a;
	B = 16'h5133;
	ans = 16'h66e0;
	#20
	A = 16'h5415;
	B = 16'h5475;
	ans = 16'h6c8c;
	#20
	A = 16'h5ae5;
	B = 16'hd5e9;
	ans = 16'hf518;
	#20
	A = 16'hd561;
	B = 16'hdb77;
	ans = 16'h7505;
	#20
	A = 16'h5926;
	B = 16'hd84e;
	ans = 16'hf58a;
	#20
	A = 16'h56b7;
	B = 16'hd325;
	ans = 16'hedff;
	#20
	A = 16'h5ad3;
	B = 16'h5a1f;
	ans = 16'h7939;
	#20
	A = 16'h550a;
	B = 16'hd5f1;
	ans = 16'hef7c;
	#20
	A = 16'hcfcf;
	B = 16'hdafa;
	ans = 16'h6ecf;
	#20
	A = 16'hd2fa;
	B = 16'h5a83;
	ans = 16'hf1ae;
	#20
	A = 16'hd443;
	B = 16'h5803;
	ans = 16'hf046;
	#20
	A = 16'hd997;
	B = 16'hdaec;
	ans = 16'h78d6;
	#20
	A = 16'h49ed;
	B = 16'hd82b;
	ans = 16'he62d;
	#20
	A = 16'h3c85;
	B = 16'hdb92;
	ans = 16'hdc47;
	#20
	A = 16'hca5f;
	B = 16'h5b9b;
	ans = 16'hea0f;
	#20
	A = 16'hd62e;
	B = 16'h5864;
	ans = 16'hf2c8;
	#20
	A = 16'h59ab;
	B = 16'h5916;
	ans = 16'h7735;
	#20
	A = 16'hd5ca;
	B = 16'h5bd8;
	ans = 16'hf5ad;
	#20
	A = 16'hd8be;
	B = 16'hd9b9;
	ans = 16'h76c9;
	#20
	A = 16'h5976;
	B = 16'hd806;
	ans = 16'hf57e;
	#20
	A = 16'h5932;
	B = 16'hd69e;
	ans = 16'hf44c;
	#20
	A = 16'hdac9;
	B = 16'hdb1c;
	ans = 16'h7a08;
	#20
	A = 16'hd9e3;
	B = 16'h59be;
	ans = 16'hf83a;
	#20
	A = 16'h4e5d;
	B = 16'h5aab;
	ans = 16'h6d4e;
	#20
	A = 16'h4e96;
	B = 16'hcf60;
	ans = 16'he212;
	#20
	A = 16'h5b21;
	B = 16'hda19;
	ans = 16'hf96f;
	#20
	A = 16'hc42b;
	B = 16'h5952;
	ans = 16'he18b;
	#20
	A = 16'h4f85;
	B = 16'h5885;
	ans = 16'h6c40;
	#20
	A = 16'h55a4;
	B = 16'h5598;
	ans = 16'h6fe3;
	#20
	A = 16'hdaaa;
	B = 16'h5811;
	ans = 16'hf6c6;
	#20
	A = 16'hd579;
	B = 16'h586c;
	ans = 16'hf20d;
	#20
	A = 16'hda59;
	B = 16'hda1e;
	ans = 16'h78db;
	#20
	A = 16'h543d;
	B = 16'hd488;
	ans = 16'heccd;
	#20
	A = 16'hd72d;
	B = 16'hbe46;
	ans = 16'h59a1;
	#20
	A = 16'hd589;
	B = 16'hd9a6;
	ans = 16'h73d1;
	#20
	A = 16'h5be0;
	B = 16'h5a3b;
	ans = 16'h7a22;
	#20
	A = 16'hdb4b;
	B = 16'h575b;
	ans = 16'hf6b5;
	#20
	A = 16'h5b9e;
	B = 16'hd881;
	ans = 16'hf84a;
	#20
	A = 16'hc5b1;
	B = 16'h53d6;
	ans = 16'hdd93;
	#20
	A = 16'hd1c4;
	B = 16'hcaf5;
	ans = 16'h6104;
	#20
	A = 16'hd9de;
	B = 16'h5946;
	ans = 16'hf7bc;
	#20
	A = 16'hd9f6;
	B = 16'hd883;
	ans = 16'h76b9;
	#20
	A = 16'h555a;
	B = 16'hd6aa;
	ans = 16'hf075;
	#20
	A = 16'h56ad;
	B = 16'hcc73;
	ans = 16'he76d;
	#20
	A = 16'h54db;
	B = 16'hd70b;
	ans = 16'hf046;
	#20
	A = 16'hda08;
	B = 16'h59ae;
	ans = 16'hf848;
	#20
	A = 16'hd74a;
	B = 16'hd088;
	ans = 16'h6c21;
	#20
	A = 16'hdb17;
	B = 16'hdb43;
	ans = 16'h7a70;
	#20
	A = 16'h5815;
	B = 16'hd42b;
	ans = 16'hf041;
	#20
	A = 16'hd03c;
	B = 16'h59ec;
	ans = 16'hee45;
	#20
	A = 16'hd531;
	B = 16'h5774;
	ans = 16'hf0d6;
	#20
	A = 16'h45f8;
	B = 16'h58c5;
	ans = 16'h631e;
	#20
	A = 16'hd1e4;
	B = 16'hda57;
	ans = 16'h70ab;
	#20
	A = 16'h57f9;
	B = 16'hc9c9;
	ans = 16'he5c4;
	#20
	A = 16'h5be4;
	B = 16'hd09e;
	ans = 16'hf08e;
	#20
	A = 16'h5056;
	B = 16'hdb88;
	ans = 16'hf015;
	#20
	A = 16'hdbb4;
	B = 16'hd479;
	ans = 16'h744f;
	#20
	A = 16'h57b6;
	B = 16'h5232;
	ans = 16'h6df9;
	#20
	A = 16'h58e4;
	B = 16'h5495;
	ans = 16'h719a;
	#20
	A = 16'hc29e;
	B = 16'hd606;
	ans = 16'h5cfb;
	#20
	A = 16'hd975;
	B = 16'hdbb2;
	ans = 16'h7940;
	#20
	A = 16'hd92b;
	B = 16'hd772;
	ans = 16'h74cf;
	#20
	A = 16'h5af7;
	B = 16'hd94f;
	ans = 16'hf89f;
	#20
	A = 16'hd5fa;
	B = 16'h5bad;
	ans = 16'hf5bc;
	#20
	A = 16'h59c9;
	B = 16'h5913;
	ans = 16'h7757;
	#20
	A = 16'h50f0;
	B = 16'hdb9e;
	ans = 16'hf0b4;
	#20
	A = 16'hd78a;
	B = 16'h5178;
	ans = 16'hed27;
	#20
	A = 16'h5ba6;
	B = 16'hdbc5;
	ans = 16'hfb6e;
	#20
	A = 16'hd1e2;
	B = 16'h57cd;
	ans = 16'hedbc;
	#20
	A = 16'hdbb2;
	B = 16'h5a57;
	ans = 16'hfa19;
	#20
	A = 16'hdbf1;
	B = 16'h5991;
	ans = 16'hf987;
	#20
	A = 16'hd72c;
	B = 16'h5b13;
	ans = 16'hf658;
	#20
	A = 16'hc94a;
	B = 16'hdb7b;
	ans = 16'h68f2;
	#20
	A = 16'h589c;
	B = 16'hdbee;
	ans = 16'hf892;
	#20
	A = 16'h581d;
	B = 16'hd620;
	ans = 16'hf24c;
	#20
	A = 16'h5660;
	B = 16'h58b5;
	ans = 16'h7380;
	#20
	A = 16'hdb8e;
	B = 16'hda20;
	ans = 16'h79c9;
	#20
	A = 16'hdaa8;
	B = 16'h51b8;
	ans = 16'hf0c2;
	#20
	A = 16'h5535;
	B = 16'h4f78;
	ans = 16'h68dc;
	#20
	A = 16'h5a2a;
	B = 16'hd99d;
	ans = 16'hf853;
	#20
	A = 16'h59a3;
	B = 16'h5750;
	ans = 16'h7527;
	#20
	A = 16'hd3a9;
	B = 16'hd59f;
	ans = 16'h6d62;
	#20
	A = 16'hbf22;
	B = 16'hdbec;
	ans = 16'h5f10;
	#20
	A = 16'hda3f;
	B = 16'h579b;
	ans = 16'hf5f0;
	#20
	A = 16'hd0f2;
	B = 16'h5a1e;
	ans = 16'hef90;
	#20
	A = 16'h55f8;
	B = 16'hd6f1;
	ans = 16'hf12e;
	#20
	A = 16'h5abf;
	B = 16'h5422;
	ans = 16'h72f8;
	#20
	A = 16'hd93d;
	B = 16'hc910;
	ans = 16'h66a1;
	#20
	A = 16'hd758;
	B = 16'hd4e0;
	ans = 16'h707a;
	#20
	A = 16'hdad6;
	B = 16'h46da;
	ans = 16'he5db;
	#20
	A = 16'h54f1;
	B = 16'hdb31;
	ans = 16'hf471;
	#20
	A = 16'hd9f4;
	B = 16'hd5a9;
	ans = 16'h7436;
	#20
	A = 16'hd09c;
	B = 16'h5741;
	ans = 16'hec2e;
	#20
	A = 16'hdb37;
	B = 16'hdb5a;
	ans = 16'h7aa1;
	#20
	A = 16'hcf6a;
	B = 16'hda9f;
	ans = 16'h6e23;
	#20
	A = 16'hc3be;
	B = 16'hdaf8;
	ans = 16'h62bf;
	#20
	A = 16'hcc17;
	B = 16'hc0a0;
	ans = 16'h50bb;
	#20
	A = 16'h5ba5;
	B = 16'hd281;
	ans = 16'hf237;
	#20
	A = 16'hd092;
	B = 16'h5baa;
	ans = 16'hf061;
	#20
	A = 16'h4c28;
	B = 16'h5819;
	ans = 16'h6842;
	#20
	A = 16'h57b3;
	B = 16'h59a8;
	ans = 16'h7572;
	#20
	A = 16'hd949;
	B = 16'h4c80;
	ans = 16'he9f2;
	#20
	A = 16'hda76;
	B = 16'h5bcb;
	ans = 16'hfa4b;
	#20
	A = 16'h595d;
	B = 16'hd411;
	ans = 16'hf174;
	#20
	A = 16'hd0b5;
	B = 16'hd9cd;
	ans = 16'h6ed3;
	#20
	A = 16'h466b;
	B = 16'hd89f;
	ans = 16'he36a;
	#20
	A = 16'h5810;
	B = 16'h5480;
	ans = 16'h7092;
	#20
	A = 16'h5824;
	B = 16'h55fb;
	ans = 16'h7231;
	#20
	A = 16'hd959;
	B = 16'h5a25;
	ans = 16'hf81b;
	#20
	A = 16'h507f;
	B = 16'hd114;
	ans = 16'he5b5;
	#20
	A = 16'h59cc;
	B = 16'h58e0;
	ans = 16'h7711;
	#20
	A = 16'h5903;
	B = 16'hda10;
	ans = 16'hf799;
	#20
	A = 16'h5682;
	B = 16'h55a2;
	ans = 16'h7095;
	#20
	A = 16'hdb2e;
	B = 16'h580e;
	ans = 16'hf747;
	#20
	A = 16'hd837;
	B = 16'h5b9e;
	ans = 16'hf803;
	#20
	A = 16'h590f;
	B = 16'hd890;
	ans = 16'hf5c5;
	#20
	A = 16'hd730;
	B = 16'h4dca;
	ans = 16'he933;
	#20
	A = 16'hd634;
	B = 16'h4638;
	ans = 16'he0d2;
	#20
	A = 16'hd9d4;
	B = 16'hd87a;
	ans = 16'h7686;
	#20
	A = 16'h59e5;
	B = 16'hd8a8;
	ans = 16'hf6dd;
	#20
	A = 16'h593e;
	B = 16'h4dc3;
	ans = 16'h6b8d;
	#20
	A = 16'hd2b9;
	B = 16'h5a4f;
	ans = 16'hf14d;
	#20
	A = 16'h5951;
	B = 16'hd8a6;
	ans = 16'hf62e;
	#20
	A = 16'hda81;
	B = 16'h53c3;
	ans = 16'hf24f;
	#20
	A = 16'h58da;
	B = 16'hd881;
	ans = 16'hf576;
	#20
	A = 16'hd677;
	B = 16'h5b3b;
	ans = 16'hf5d8;
	#20
	A = 16'h592d;
	B = 16'hd5db;
	ans = 16'hf394;
	#20
	A = 16'hd397;
	B = 16'h598c;
	ans = 16'hf143;
	#20
	A = 16'h592d;
	B = 16'h54b6;
	ans = 16'h7218;
	#20
	A = 16'hd8cd;
	B = 16'h442e;
	ans = 16'he104;
	#20
	A = 16'hd923;
	B = 16'h5b3e;
	ans = 16'hf8a6;
	#20
	A = 16'h59b6;
	B = 16'h5731;
	ans = 16'h7522;
	#20
	A = 16'h5654;
	B = 16'hd627;
	ans = 16'hf0de;
	#20
	A = 16'h5740;
	B = 16'hdbaa;
	ans = 16'hf6f2;
	#20
	A = 16'h58bb;
	B = 16'h541e;
	ans = 16'h70de;
	#20
	A = 16'hd97a;
	B = 16'h549e;
	ans = 16'hf252;
	#20
	A = 16'h53c8;
	B = 16'hd78f;
	ans = 16'hef5a;
	#20
	A = 16'h4fc1;
	B = 16'h538e;
	ans = 16'h6753;
	#20
	A = 16'hda45;
	B = 16'hda84;
	ans = 16'h791b;
	#20
	A = 16'h599e;
	B = 16'h5a46;
	ans = 16'h7868;
	#20
	A = 16'hcd9c;
	B = 16'hd9a9;
	ans = 16'h6bf0;
	#20
	A = 16'h55ce;
	B = 16'h5a63;
	ans = 16'h74a2;
	#20
	A = 16'h57a4;
	B = 16'h4515;
	ans = 16'h60db;
	#20
	A = 16'h40e1;
	B = 16'h4e14;
	ans = 16'h536a;
	#20
	A = 16'hd623;
	B = 16'hd98a;
	ans = 16'h7440;
	#20
	A = 16'h4c4a;
	B = 16'h5009;
	ans = 16'h6054;
	#20
	A = 16'hd587;
	B = 16'hdacc;
	ans = 16'h74b2;
	#20
	A = 16'hd9de;
	B = 16'h59a6;
	ans = 16'hf824;
	#20
	A = 16'h569f;
	B = 16'hd62c;
	ans = 16'hf11c;
	#20
	A = 16'hd39f;
	B = 16'hd4c7;
	ans = 16'h6c8d;
	#20
	A = 16'hd5ec;
	B = 16'h5547;
	ans = 16'hefd0;
	#20
	A = 16'hd9ae;
	B = 16'h56d8;
	ans = 16'hf4dc;
	#20
	A = 16'hd887;
	B = 16'h58f1;
	ans = 16'hf598;
	#20
	A = 16'hd928;
	B = 16'h5a36;
	ans = 16'hf801;
	#20
	A = 16'hc12e;
	B = 16'hd99b;
	ans = 16'h5f42;
	#20
	A = 16'hd9bd;
	B = 16'hdada;
	ans = 16'h78ea;
	#20
	A = 16'hcd59;
	B = 16'h5b55;
	ans = 16'hece7;
	#20
	A = 16'hd61c;
	B = 16'h4f19;
	ans = 16'he96c;
	#20
	A = 16'hd3e9;
	B = 16'hdbb3;
	ans = 16'h739d;
	#20
	A = 16'hdad0;
	B = 16'h5a27;
	ans = 16'hf93d;
	#20
	A = 16'h5516;
	B = 16'h551c;
	ans = 16'h6e7f;
	#20
	A = 16'h532f;
	B = 16'h54cb;
	ans = 16'h6c4e;
	#20
	A = 16'hda49;
	B = 16'h59fc;
	ans = 16'hf8b4;
	#20
	A = 16'hdbe0;
	B = 16'h5427;
	ans = 16'hf416;
	#20
	A = 16'h517f;
	B = 16'h5691;
	ans = 16'h6c83;
	#20
	A = 16'hd6bf;
	B = 16'h54b7;
	ans = 16'heff4;
	#20
	A = 16'h5200;
	B = 16'hd8c4;
	ans = 16'hef26;
	#20
	A = 16'hd87d;
	B = 16'hdb03;
	ans = 16'h77de;
	#20
	A = 16'h547b;
	B = 16'hdac9;
	ans = 16'hf39a;
	#20
	A = 16'h5917;
	B = 16'hd9ca;
	ans = 16'hf75e;
	#20
	A = 16'h542f;
	B = 16'h5a07;
	ans = 16'h724e;
	#20
	A = 16'h5714;
	B = 16'hda56;
	ans = 16'hf59b;
	#20
	A = 16'h5ad5;
	B = 16'h5b73;
	ans = 16'h7a5d;
	#20
	A = 16'h5ad1;
	B = 16'hd815;
	ans = 16'hf6f5;
	#20
	A = 16'h5ba5;
	B = 16'h5a2f;
	ans = 16'h79e9;
	#20
	A = 16'h5b6f;
	B = 16'hd9d8;
	ans = 16'hf96e;
	#20
	A = 16'hdb36;
	B = 16'hda23;
	ans = 16'h7988;
	#20
	A = 16'h59f2;
	B = 16'hda8c;
	ans = 16'hf8de;
	#20
	A = 16'h4d78;
	B = 16'hdab5;
	ans = 16'hec96;
	#20
	A = 16'h5a4e;
	B = 16'h5b8c;
	ans = 16'h79f3;
	#20
	A = 16'hd137;
	B = 16'hd8f4;
	ans = 16'h6e75;
	#20
	A = 16'hd43f;
	B = 16'h4c34;
	ans = 16'he476;
	#20
	A = 16'hd221;
	B = 16'h55d4;
	ans = 16'hec77;
	#20
	A = 16'hd22a;
	B = 16'h4837;
	ans = 16'hde7f;
	#20
	A = 16'hd6b0;
	B = 16'hd81b;
	ans = 16'h72dd;
	#20
	A = 16'h595b;
	B = 16'hd47b;
	ans = 16'hf200;
	#20
	A = 16'hc8b5;
	B = 16'hd2a7;
	ans = 16'h5fd4;
	#20
	A = 16'hd081;
	B = 16'h555e;
	ans = 16'hea0b;
	#20
	A = 16'hd509;
	B = 16'hd9c5;
	ans = 16'h7343;
	#20
	A = 16'h5a8b;
	B = 16'h5360;
	ans = 16'h7208;
	#20
	A = 16'h5b2c;
	B = 16'hc9f5;
	ans = 16'he957;
	#20
	A = 16'h5a81;
	B = 16'hda9d;
	ans = 16'hf960;
	#20
	A = 16'h54d2;
	B = 16'h5356;
	ans = 16'h6c6c;
	#20
	A = 16'hda16;
	B = 16'hd578;
	ans = 16'h7429;
	#20
	A = 16'hd909;
	B = 16'hcce6;
	ans = 16'h6a2b;
	#20
	A = 16'h586c;
	B = 16'h59de;
	ans = 16'h767c;
	#20
	A = 16'hd8c2;
	B = 16'hd2f6;
	ans = 16'h7024;
	#20
	A = 16'hd4a6;
	B = 16'h5bed;
	ans = 16'hf49b;
	#20
	A = 16'hd9e5;
	B = 16'hcb8d;
	ans = 16'h6990;
	#20
	A = 16'hd978;
	B = 16'hcf08;
	ans = 16'h6cce;
	#20
	A = 16'h5a7d;
	B = 16'hc41d;
	ans = 16'he2ac;
	#20
	A = 16'h56a6;
	B = 16'h5558;
	ans = 16'h7071;
	#20
	A = 16'hd814;
	B = 16'h5869;
	ans = 16'hf47f;
	#20
	A = 16'h496b;
	B = 16'hd475;
	ans = 16'he209;
	#20
	A = 16'h5914;
	B = 16'hd971;
	ans = 16'hf6e8;
	#20
	A = 16'hd3ee;
	B = 16'h5782;
	ans = 16'hef71;
	#20
	A = 16'hd92f;
	B = 16'h589a;
	ans = 16'hf5f7;
	#20
	A = 16'h50bd;
	B = 16'h584a;
	ans = 16'h6d15;
	#20
	A = 16'h545f;
	B = 16'hd58f;
	ans = 16'hee13;
	#20
	A = 16'h5754;
	B = 16'h53ae;
	ans = 16'h6f09;
	#20
	A = 16'h5a67;
	B = 16'h5942;
	ans = 16'h7835;
	#20
	A = 16'h529b;
	B = 16'hdb2f;
	ans = 16'hf1ee;
	#20
	A = 16'h3bca;
	B = 16'hcde6;
	ans = 16'hcdbe;
	#20
	A = 16'h50f5;
	B = 16'hdb3b;
	ans = 16'hf07b;
	#20
	A = 16'h5960;
	B = 16'h598d;
	ans = 16'h7775;
	#20
	A = 16'h5101;
	B = 16'hd914;
	ans = 16'hee5a;
	#20
	A = 16'hd1ea;
	B = 16'hd843;
	ans = 16'h6e4d;
	#20
	A = 16'h551b;
	B = 16'h5823;
	ans = 16'h7148;
	#20
	A = 16'hdba7;
	B = 16'h5aed;
	ans = 16'hfaa0;
	#20
	A = 16'hd44e;
	B = 16'hcff1;
	ans = 16'h6846;
	#20
	A = 16'hc7a8;
	B = 16'h5b7e;
	ans = 16'he72c;
	#20
	A = 16'h5bee;
	B = 16'hd093;
	ans = 16'hf089;
	#20
	A = 16'h5ae6;
	B = 16'hdb31;
	ans = 16'hfa34;
	#20
	A = 16'hdb5b;
	B = 16'h542b;
	ans = 16'hf3aa;
	#20
	A = 16'h5182;
	B = 16'h4140;
	ans = 16'h573b;
	#20
	A = 16'hdad5;
	B = 16'h58ec;
	ans = 16'hf834;
	#20
	A = 16'hc6e2;
	B = 16'hd64a;
	ans = 16'h6169;
	#20
	A = 16'hd458;
	B = 16'hda35;
	ans = 16'h72be;
	#20
	A = 16'h59fa;
	B = 16'h5ba1;
	ans = 16'h79b3;
	#20
	A = 16'h5af9;
	B = 16'hd606;
	ans = 16'hf540;
	#20
	A = 16'hd8f7;
	B = 16'hd8a2;
	ans = 16'h75c0;
	#20
	A = 16'h5841;
	B = 16'hd78f;
	ans = 16'hf405;
	#20
	A = 16'hd8fd;
	B = 16'h5a74;
	ans = 16'hf806;
	#20
	A = 16'h5ac7;
	B = 16'h5a56;
	ans = 16'h795e;
	#20
	A = 16'h5a4f;
	B = 16'h5baf;
	ans = 16'h7a0f;
	#20
	A = 16'h56d7;
	B = 16'h5323;
	ans = 16'h6e1a;
	#20
	A = 16'hd440;
	B = 16'h5bb6;
	ans = 16'hf419;
	#20
	A = 16'hdb1b;
	B = 16'h454b;
	ans = 16'he4b3;
	#20
	A = 16'hd9be;
	B = 16'hd404;
	ans = 16'h71c4;
	#20
	A = 16'hd005;
	B = 16'h59af;
	ans = 16'hedb6;
	#20
	A = 16'hdafe;
	B = 16'h4533;
	ans = 16'he48b;
	#20
	A = 16'h5bc7;
	B = 16'h547e;
	ans = 16'h745e;
	#20
	A = 16'h4c1a;
	B = 16'h5514;
	ans = 16'h6535;
	#20
	A = 16'h57fb;
	B = 16'hd8d5;
	ans = 16'hf4d2;
	#20
	A = 16'hdba7;
	B = 16'hda30;
	ans = 16'h79eb;
	#20
	A = 16'hcf39;
	B = 16'hd7c3;
	ans = 16'h6b02;
	#20
	A = 16'h58a2;
	B = 16'hda60;
	ans = 16'hf762;
	#20
	A = 16'h4aac;
	B = 16'h593c;
	ans = 16'h685e;
	#20
	A = 16'h5978;
	B = 16'h54a9;
	ans = 16'h725f;
	#20
	A = 16'hda84;
	B = 16'hd7de;
	ans = 16'h7668;
	#20
	A = 16'hdaa7;
	B = 16'h4073;
	ans = 16'hdf66;
	#20
	A = 16'hdb47;
	B = 16'hd4fa;
	ans = 16'h7487;
	#20
	A = 16'hdb01;
	B = 16'hd90f;
	ans = 16'h786e;
	#20
	A = 16'hd942;
	B = 16'hd50d;
	ans = 16'h72a4;
	#20
	A = 16'hd6be;
	B = 16'h5796;
	ans = 16'hf265;
	#20
	A = 16'hd5c1;
	B = 16'h5ac7;
	ans = 16'hf4e0;
	#20
	A = 16'h563d;
	B = 16'h59c6;
	ans = 16'h7481;
	#20
	A = 16'h453b;
	B = 16'h5baf;
	ans = 16'h6506;
	#20
	A = 16'h5814;
	B = 16'h586d;
	ans = 16'h7483;
	#20
	A = 16'hd63f;
	B = 16'hd434;
	ans = 16'h6e90;
	#20
	A = 16'hd886;
	B = 16'hda2d;
	ans = 16'h76fc;
	#20
	A = 16'h57b6;
	B = 16'h4f8e;
	ans = 16'h6b48;
	#20
	A = 16'hd4a6;
	B = 16'h52a4;
	ans = 16'hebb8;
	#20
	A = 16'h565f;
	B = 16'hd6ad;
	ans = 16'hf151;
	#20
	A = 16'hd4f9;
	B = 16'hd4bc;
	ans = 16'h6de3;
	#20
	A = 16'hd4b8;
	B = 16'h5a22;
	ans = 16'hf33c;
	#20
	A = 16'hdb35;
	B = 16'hdae3;
	ans = 16'h7a34;
	#20
	A = 16'h500a;
	B = 16'hdb2a;
	ans = 16'hef3c;
	#20
	A = 16'h5208;
	B = 16'h4f73;
	ans = 16'h659e;
	#20
	A = 16'h59fe;
	B = 16'h58c9;
	ans = 16'h772b;
	#20
	A = 16'h4c41;
	B = 16'h562b;
	ans = 16'h668f;
	#20
	A = 16'hd9e5;
	B = 16'h5508;
	ans = 16'hf36a;
	#20
	A = 16'h552e;
	B = 16'hdad2;
	ans = 16'hf46a;
	#20
	A = 16'h54a6;
	B = 16'hdb98;
	ans = 16'hf46a;
	#20
	A = 16'h5be9;
	B = 16'h5849;
	ans = 16'h783d;
	#20
	A = 16'hdaf4;
	B = 16'hd71c;
	ans = 16'h762e;
	#20
	A = 16'h5a1e;
	B = 16'hd94d;
	ans = 16'hf80e;
	#20
	A = 16'hda72;
	B = 16'hd8ea;
	ans = 16'h77eb;
	#20
	A = 16'hd7bb;
	B = 16'hd80a;
	ans = 16'h73ce;
	#20
	A = 16'h59ca;
	B = 16'h5802;
	ans = 16'h75cd;
	#20
	A = 16'h5a93;
	B = 16'hd882;
	ans = 16'hf769;
	#20
	A = 16'h5636;
	B = 16'h54a0;
	ans = 16'h6f2e;
	#20
	A = 16'h59a2;
	B = 16'hd2d9;
	ans = 16'hf0d2;
	#20
	A = 16'h5465;
	B = 16'h591b;
	ans = 16'h719c;
	#20
	A = 16'h56c9;
	B = 16'h52bf;
	ans = 16'h6db9;
	#20
	A = 16'h5bee;
	B = 16'hda65;
	ans = 16'hfa57;
	#20
	A = 16'h40d1;
	B = 16'h557f;
	ans = 16'h5a9e;
	#20
	A = 16'hdae6;
	B = 16'h573d;
	ans = 16'hf63e;
	#20
	A = 16'h59d2;
	B = 16'h4fd4;
	ans = 16'h6db2;
	#20
	A = 16'hd5f0;
	B = 16'h4f05;
	ans = 16'he936;
	#20
	A = 16'hd528;
	B = 16'h56cb;
	ans = 16'hf061;
	#20
	A = 16'hda11;
	B = 16'hdb14;
	ans = 16'h795e;
	#20
	A = 16'hd89e;
	B = 16'h54e3;
	ans = 16'hf1a4;
	#20
	A = 16'hd8f4;
	B = 16'hd8e8;
	ans = 16'h7613;
	#20
	A = 16'hd8df;
	B = 16'hdb74;
	ans = 16'h788a;
	#20
	A = 16'h5a5d;
	B = 16'hd88a;
	ans = 16'hf739;
	#20
	A = 16'hd504;
	B = 16'h5b3f;
	ans = 16'hf48b;
	#20
	A = 16'h59b9;
	B = 16'h5834;
	ans = 16'h7603;
	#20
	A = 16'hd8a9;
	B = 16'h5ab0;
	ans = 16'hf7cb;
	#20
	A = 16'hd315;
	B = 16'h523e;
	ans = 16'he987;
	#20
	A = 16'h5333;
	B = 16'hd062;
	ans = 16'he7e3;
	#20
	A = 16'hd884;
	B = 16'hd83e;
	ans = 16'h74ca;
	#20
	A = 16'h5ba7;
	B = 16'hcaa0;
	ans = 16'hea56;
	#20
	A = 16'hc8ed;
	B = 16'hd751;
	ans = 16'h6481;
	#20
	A = 16'h5502;
	B = 16'hd648;
	ans = 16'hefdd;
	#20
	A = 16'hd230;
	B = 16'hd956;
	ans = 16'h7021;
	#20
	A = 16'h5a97;
	B = 16'h493a;
	ans = 16'h684e;
	#20
	A = 16'hd4a9;
	B = 16'hd91e;
	ans = 16'h71f6;
	#20
	A = 16'hd1f3;
	B = 16'h5979;
	ans = 16'hf012;
	#20
	A = 16'h5930;
	B = 16'h598e;
	ans = 16'h7734;
	#20
	A = 16'hcffa;
	B = 16'hd9a0;
	ans = 16'h6d9c;
	#20
	A = 16'hdab2;
	B = 16'hcdec;
	ans = 16'h6cf5;
	#20
	A = 16'h5873;
	B = 16'hc741;
	ans = 16'he409;
	#20
	A = 16'hd7c8;
	B = 16'hd8f9;
	ans = 16'h74d6;
	#20
	A = 16'hd3c1;
	B = 16'hdba2;
	ans = 16'h7366;
	#20
	A = 16'hdab6;
	B = 16'h5842;
	ans = 16'hf725;
	#20
	A = 16'h5636;
	B = 16'h4f54;
	ans = 16'h69b0;
	#20
	A = 16'h58c0;
	B = 16'hd388;
	ans = 16'hf079;
	#20
	A = 16'hd962;
	B = 16'hc6ab;
	ans = 16'h647d;
	#20
	A = 16'hd806;
	B = 16'h5770;
	ans = 16'hf37b;
	#20
	A = 16'h4d6d;
	B = 16'hd0c3;
	ans = 16'he276;
	#20
	A = 16'hd680;
	B = 16'hd20d;
	ans = 16'h6ceb;
	#20
	A = 16'h5a4b;
	B = 16'hdb66;
	ans = 16'hf9d2;
	#20
	A = 16'h59ee;
	B = 16'hd6d4;
	ans = 16'hf510;
	#20
	A = 16'hdb67;
	B = 16'hc82f;
	ans = 16'h67be;
	#20
	A = 16'h4cec;
	B = 16'h5a23;
	ans = 16'h6b8d;
	#20
	A = 16'hdbf0;
	B = 16'hd07e;
	ans = 16'h7075;
	#20
	A = 16'hd75b;
	B = 16'h570b;
	ans = 16'hf27a;
	#20
	A = 16'h41c7;
	B = 16'h594a;
	ans = 16'h5fa4;
	#20
	A = 16'hd81f;
	B = 16'hdb12;
	ans = 16'h7749;
	#20
	A = 16'hd994;
	B = 16'h5645;
	ans = 16'hf45f;
	#20
	A = 16'hc407;
	B = 16'h571a;
	ans = 16'hdf26;
	#20
	A = 16'hda6d;
	B = 16'h584f;
	ans = 16'hf6ec;
	#20
	A = 16'h3a61;
	B = 16'hc589;
	ans = 16'hc46a;
	#20
	A = 16'hd448;
	B = 16'hd615;
	ans = 16'h6e82;
	#20
	A = 16'h4fe1;
	B = 16'h54d5;
	ans = 16'h68c2;
	#20
	A = 16'h5a29;
	B = 16'h58d6;
	ans = 16'h7773;
	#20
	A = 16'h592c;
	B = 16'h5b1d;
	ans = 16'h7899;
	#20
	A = 16'hd87c;
	B = 16'h5226;
	ans = 16'heee5;
	#20
	A = 16'hdbde;
	B = 16'hd1f3;
	ans = 16'h71da;
	#20
	A = 16'h5839;
	B = 16'hd7d8;
	ans = 16'hf424;
	#20
	A = 16'h56fe;
	B = 16'h5ab5;
	ans = 16'h75dd;
	#20
	A = 16'hcf60;
	B = 16'h54e8;
	ans = 16'he886;
	#20
	A = 16'hd67b;
	B = 16'hd5c7;
	ans = 16'h70ae;
	#20
	A = 16'hd837;
	B = 16'hd786;
	ans = 16'h73ed;
	#20
	A = 16'hd92b;
	B = 16'hdb31;
	ans = 16'h78a5;
	#20
	A = 16'hd383;
	B = 16'hc978;
	ans = 16'h6123;
	#20
	A = 16'hd980;
	B = 16'h4f4e;
	ans = 16'hed06;
	#20
	A = 16'hd768;
	B = 16'hd856;
	ans = 16'h7404;
	#20
	A = 16'hd945;
	B = 16'hd85f;
	ans = 16'h75c2;
	#20
	A = 16'h58de;
	B = 16'h5920;
	ans = 16'h763c;
	#20
	A = 16'hd127;
	B = 16'hd05a;
	ans = 16'h659b;
	#20
	A = 16'hccb5;
	B = 16'hd4c6;
	ans = 16'h659e;
	#20
	A = 16'h5139;
	B = 16'h59ec;
	ans = 16'h6fbb;
	#20
	A = 16'h4918;
	B = 16'h5b38;
	ans = 16'h6899;
	#20
	A = 16'hdb73;
	B = 16'hdb2c;
	ans = 16'h7aae;
	#20
	A = 16'h5beb;
	B = 16'h5952;
	ans = 16'h7944;
	#20
	A = 16'hd8a5;
	B = 16'hda15;
	ans = 16'h7710;
	#20
	A = 16'hcdfe;
	B = 16'h5089;
	ans = 16'he2cb;
	#20
	A = 16'hdba3;
	B = 16'hd39b;
	ans = 16'h7343;
	#20
	A = 16'h53e6;
	B = 16'hc212;
	ans = 16'hd9fe;
	#20
	A = 16'hd95f;
	B = 16'hcb70;
	ans = 16'h68fe;
	#20
	A = 16'h56ef;
	B = 16'h530e;
	ans = 16'h6e1d;
	#20
	A = 16'h594a;
	B = 16'hdb7f;
	ans = 16'hf8f5;
	#20
	A = 16'hd7fe;
	B = 16'h5ab5;
	ans = 16'hf6b3;
	#20
	A = 16'h5b05;
	B = 16'hd71a;
	ans = 16'hf63b;
	#20
	A = 16'h51c9;
	B = 16'h5514;
	ans = 16'h6b58;
	#20
	A = 16'hd96e;
	B = 16'h5667;
	ans = 16'hf458;
	#20
	A = 16'hd1e0;
	B = 16'h5a33;
	ans = 16'hf08d;
	#20
	A = 16'hd61c;
	B = 16'h568d;
	ans = 16'hf101;
	#20
	A = 16'h5b2b;
	B = 16'hd364;
	ans = 16'hf29f;
	#20
	A = 16'h5050;
	B = 16'h585b;
	ans = 16'h6cb2;
	#20
	A = 16'h5884;
	B = 16'hdab6;
	ans = 16'hf793;
	#20
	A = 16'hda98;
	B = 16'hd96f;
	ans = 16'h787a;
	#20
	A = 16'h56bf;
	B = 16'hdbe5;
	ans = 16'hf6a8;
	#20
	A = 16'h5471;
	B = 16'h589c;
	ans = 16'h711e;
	#20
	A = 16'hd5eb;
	B = 16'hd49c;
	ans = 16'h6ed2;
	#20
	A = 16'hd378;
	B = 16'hd476;
	ans = 16'h6c2a;
	#20
	A = 16'hd9fa;
	B = 16'hd9f6;
	ans = 16'h7874;
	#20
	A = 16'h54f3;
	B = 16'hda52;
	ans = 16'hf3d2;
	#20
	A = 16'hcf95;
	B = 16'h545f;
	ans = 16'he825;
	#20
	A = 16'hd61f;
	B = 16'h5900;
	ans = 16'hf3a7;
	#20
	A = 16'h4fe6;
	B = 16'h5784;
	ans = 16'h6b6c;
	#20
	A = 16'h5329;
	B = 16'hd09f;
	ans = 16'he823;
	#20
	A = 16'h5349;
	B = 16'hd96f;
	ans = 16'hf0f3;
	#20
	A = 16'hd7cd;
	B = 16'h5869;
	ans = 16'hf44d;
	#20
	A = 16'hb97e;
	B = 16'hdb9c;
	ans = 16'h5939;
	#20
	A = 16'hd005;
	B = 16'h59bb;
	ans = 16'hedc2;
	#20
	A = 16'h5a90;
	B = 16'hd858;
	ans = 16'hf720;
	#20
	A = 16'h4379;
	B = 16'h5990;
	ans = 16'h6132;
	#20
	A = 16'h5999;
	B = 16'h52bb;
	ans = 16'h70b6;
	#20
	A = 16'h5b98;
	B = 16'hd25f;
	ans = 16'hf20c;
	#20
	A = 16'h5517;
	B = 16'h581a;
	ans = 16'h7138;
	#20
	A = 16'h58f2;
	B = 16'hd1f2;
	ans = 16'hef5a;
	#20
	A = 16'h4c72;
	B = 16'h4c89;
	ans = 16'h5d0a;
	#20
	A = 16'h55c7;
	B = 16'hd5a8;
	ans = 16'hf016;
	#20
	A = 16'h5a47;
	B = 16'hd456;
	ans = 16'hf2ce;
	#20
	A = 16'hcb91;
	B = 16'h5714;
	ans = 16'he6b2;
	#20
	A = 16'hdbe0;
	B = 16'hd828;
	ans = 16'h7817;
	#20
	A = 16'hd62f;
	B = 16'h5b33;
	ans = 16'hf591;
	#20
	A = 16'hcdaa;
	B = 16'hd0c7;
	ans = 16'h62c4;
	#20
	A = 16'hda01;
	B = 16'h56e9;
	ans = 16'hf530;
	#20
	A = 16'hd5f9;
	B = 16'hd1ef;
	ans = 16'h6c6e;
	#20
	A = 16'hd99e;
	B = 16'hd016;
	ans = 16'h6dbd;
	#20
	A = 16'hda7e;
	B = 16'hd96c;
	ans = 16'h7866;
	#20
	A = 16'h4fb9;
	B = 16'h49a4;
	ans = 16'h5d72;
	#20
	A = 16'h5917;
	B = 16'hd2b4;
	ans = 16'hf044;
	#20
	A = 16'hd5d4;
	B = 16'h360c;
	ans = 16'hd068;
	#20
	A = 16'h54e7;
	B = 16'hd9b4;
	ans = 16'hf2fd;
	#20
	A = 16'h5a1e;
	B = 16'h5559;
	ans = 16'h7417;
	#20
	A = 16'hdae3;
	B = 16'h59b6;
	ans = 16'hf8eb;
	#20
	A = 16'hd6d2;
	B = 16'h5a3f;
	ans = 16'hf553;
	#20
	A = 16'h5bb0;
	B = 16'hdb05;
	ans = 16'hfabf;
	#20
	A = 16'h5941;
	B = 16'h5bec;
	ans = 16'h7934;
	#20
	A = 16'hda24;
	B = 16'h5282;
	ans = 16'hf0ff;
	#20
	A = 16'hd726;
	B = 16'h593f;
	ans = 16'hf4b0;
	#20
	A = 16'h562d;
	B = 16'h5877;
	ans = 16'h72e5;
	#20
	A = 16'hd839;
	B = 16'hd49c;
	ans = 16'h70de;
	#20
	A = 16'hd5e1;
	B = 16'hda6e;
	ans = 16'h74ba;
	#20
	A = 16'h480b;
	B = 16'hd8df;
	ans = 16'he4ec;
	#20
	A = 16'hd9c1;
	B = 16'hd253;
	ans = 16'h708c;
	#20
	A = 16'hd7f0;
	B = 16'h5935;
	ans = 16'hf52b;
	#20
	A = 16'h5a07;
	B = 16'hd951;
	ans = 16'hf801;
	#20
	A = 16'hdaef;
	B = 16'hd85f;
	ans = 16'h7794;
	#20
	A = 16'hd5ae;
	B = 16'hdb48;
	ans = 16'h752b;
	#20
	A = 16'h5588;
	B = 16'h4d06;
	ans = 16'h66f2;
	#20
	A = 16'hd802;
	B = 16'hdacc;
	ans = 16'h76cf;
	#20
	A = 16'h5b22;
	B = 16'hdb5c;
	ans = 16'hfa90;
	#20
	A = 16'h5810;
	B = 16'h5b07;
	ans = 16'h7723;
	#20
	A = 16'h5a52;
	B = 16'hd9ce;
	ans = 16'hf896;
	#20
	A = 16'h573d;
	B = 16'hce9d;
	ans = 16'he9fc;
	#20
	A = 16'h5b6c;
	B = 16'hd47e;
	ans = 16'hf42b;
	#20
	A = 16'hd962;
	B = 16'h5308;
	ans = 16'hf0bb;
	#20
	A = 16'hd7f4;
	B = 16'h5497;
	ans = 16'hf090;
	#20
	A = 16'h5126;
	B = 16'hd9a3;
	ans = 16'hef41;
	#20
	A = 16'hd99e;
	B = 16'h5861;
	ans = 16'hf626;
	#20
	A = 16'h5b2d;
	B = 16'h4f51;
	ans = 16'h6e90;
	#20
	A = 16'h5b06;
	B = 16'h4f16;
	ans = 16'h6e39;
	#20
	A = 16'h58a2;
	B = 16'hd98c;
	ans = 16'hf66d;
	#20
	A = 16'h5b3a;
	B = 16'h598f;
	ans = 16'h7905;
	#20
	A = 16'hd3e2;
	B = 16'h52cb;
	ans = 16'heab2;
	#20
	A = 16'h5274;
	B = 16'h59ca;
	ans = 16'h70ab;
	#20
	A = 16'hd8ae;
	B = 16'hdae0;
	ans = 16'h7806;
	#20
	A = 16'h5998;
	B = 16'h548e;
	ans = 16'h725f;
	#20
	A = 16'h55cf;
	B = 16'h5845;
	ans = 16'h7233;
	#20
	A = 16'hdbb3;
	B = 16'h5a2f;
	ans = 16'hf9f3;
	#20
	A = 16'hd6ad;
	B = 16'h560c;
	ans = 16'hf10c;
	#20
	A = 16'hd9d8;
	B = 16'hd81e;
	ans = 16'h7604;
	#20
	A = 16'h58b7;
	B = 16'hcfe7;
	ans = 16'heca8;
	#20
	A = 16'h4e17;
	B = 16'h57f4;
	ans = 16'h6a0e;
	#20
	A = 16'hd5e3;
	B = 16'hd6f5;
	ans = 16'h711f;
	#20
	A = 16'hd932;
	B = 16'hd5fa;
	ans = 16'h73c3;
	#20
	A = 16'h5aa5;
	B = 16'hd7ca;
	ans = 16'hf678;
	#20
	A = 16'hd8dc;
	B = 16'h54e3;
	ans = 16'hf1f0;
	#20
	A = 16'hd817;
	B = 16'hd882;
	ans = 16'h749c;
	#20
	A = 16'hda26;
	B = 16'hc813;
	ans = 16'h6643;
	#20
	A = 16'h5795;
	B = 16'h5887;
	ans = 16'h744a;
	#20
	A = 16'hdad1;
	B = 16'hce7d;
	ans = 16'h6d87;
	#20
	A = 16'h50b2;
	B = 16'hd883;
	ans = 16'hed4c;
	#20
	A = 16'h584c;
	B = 16'h58c8;
	ans = 16'h7523;
	#20
	A = 16'h58e8;
	B = 16'hd1f9;
	ans = 16'hef53;
	#20
	A = 16'hd98d;
	B = 16'hda04;
	ans = 16'h782d;
	#20
	A = 16'h5678;
	B = 16'hdbb1;
	ans = 16'hf638;
	#20
	A = 16'hd3ad;
	B = 16'hccd2;
	ans = 16'h64a0;
	#20
	A = 16'hd9fd;
	B = 16'h56de;
	ans = 16'hf524;
	#20
	A = 16'h5b37;
	B = 16'hcc3e;
	ans = 16'heba7;
	#20
	A = 16'hd54d;
	B = 16'hd59d;
	ans = 16'h6f70;
	#20
	A = 16'h4f98;
	B = 16'h5a46;
	ans = 16'h6df4;
	#20
	A = 16'h5966;
	B = 16'hd986;
	ans = 16'hf774;
	#20
	A = 16'hd7c9;
	B = 16'h50e4;
	ans = 16'hecc2;
	#20
	A = 16'h5af5;
	B = 16'hccc4;
	ans = 16'hec25;
	#20
	A = 16'h55e5;
	B = 16'hccc4;
	ans = 16'he706;
	#20
	A = 16'hdbba;
	B = 16'hd96d;
	ans = 16'h793e;
	#20
	A = 16'hdb69;
	B = 16'h5844;
	ans = 16'hf7e7;
	#20
	A = 16'h5940;
	B = 16'h56a7;
	ans = 16'h745e;
	#20
	A = 16'hd13d;
	B = 16'h5a8a;
	ans = 16'hf048;
	#20
	A = 16'h5a8c;
	B = 16'h52d2;
	ans = 16'h7195;
	#20
	A = 16'hdb59;
	B = 16'hda8c;
	ans = 16'h7a03;
	#20
	A = 16'h5a9a;
	B = 16'hd7f0;
	ans = 16'hf68d;
	#20
	A = 16'hd8d0;
	B = 16'hd710;
	ans = 16'h7440;
	#20
	A = 16'h5ba6;
	B = 16'h5549;
	ans = 16'h750e;
	#20
	A = 16'hd8a6;
	B = 16'h57eb;
	ans = 16'hf49a;
	#20
	A = 16'h525e;
	B = 16'hdb20;
	ans = 16'hf1ac;
	#20
	A = 16'h54ae;
	B = 16'h5ba0;
	ans = 16'h7476;
	#20
	A = 16'hd220;
	B = 16'hdab6;
	ans = 16'h7123;
	#20
	A = 16'h4788;
	B = 16'hcea3;
	ans = 16'hda3f;
	#20
	A = 16'h5a3f;
	B = 16'hda04;
	ans = 16'hf8b2;
	#20
	A = 16'h4991;
	B = 16'hd7f3;
	ans = 16'he588;
	#20
	A = 16'hda3d;
	B = 16'hd7de;
	ans = 16'h7622;
	#20
	A = 16'hd954;
	B = 16'hd966;
	ans = 16'h7731;
	#20
	A = 16'h4d97;
	B = 16'hccc0;
	ans = 16'hdea3;
	#20
	A = 16'hd637;
	B = 16'hc9d5;
	ans = 16'h6488;
	#20
	A = 16'hd531;
	B = 16'hd974;
	ans = 16'h7314;
	#20
	A = 16'hd448;
	B = 16'hdb83;
	ans = 16'h7405;
	#20
	A = 16'hd410;
	B = 16'h5122;
	ans = 16'he937;
	#20
	A = 16'h5943;
	B = 16'hd923;
	ans = 16'hf6c2;
	#20
	A = 16'h5723;
	B = 16'hda25;
	ans = 16'hf57b;
	#20
	A = 16'hd8c3;
	B = 16'hd093;
	ans = 16'h6d72;
	#20
	A = 16'hc832;
	B = 16'h555e;
	ans = 16'he1a1;
	#20
	A = 16'h547f;
	B = 16'hd699;
	ans = 16'hef6a;
	#20
	A = 16'hd3ab;
	B = 16'h4bf1;
	ans = 16'he39d;
	#20
	A = 16'h5aff;
	B = 16'hd87d;
	ans = 16'hf7da;
	#20
	A = 16'h5039;
	B = 16'hd60a;
	ans = 16'hea60;
	#20
	A = 16'hd650;
	B = 16'hd619;
	ans = 16'h70d0;
	#20
	A = 16'hdb2e;
	B = 16'h59bc;
	ans = 16'hf925;
	#20
	A = 16'hc035;
	B = 16'hdac2;
	ans = 16'h5f1c;
	#20
	A = 16'h5076;
	B = 16'h53f4;
	ans = 16'h686f;
	#20
	A = 16'h3dab;
	B = 16'h5338;
	ans = 16'h551d;
	#20
	A = 16'hd6f8;
	B = 16'hcbfb;
	ans = 16'h66f4;
	#20
	A = 16'h5a46;
	B = 16'h57d3;
	ans = 16'h7623;
	#20
	A = 16'h52c9;
	B = 16'h5b57;
	ans = 16'h723a;
	#20
	A = 16'h555f;
	B = 16'h4407;
	ans = 16'h5d68;
	#20
	A = 16'h5848;
	B = 16'hd6cf;
	ans = 16'hf34a;
	#20
	A = 16'hdacc;
	B = 16'h5066;
	ans = 16'hef79;
	#20
	A = 16'h4ed5;
	B = 16'h5a9a;
	ans = 16'h6da3;
	#20
	A = 16'h5bde;
	B = 16'h575f;
	ans = 16'h7740;
	#20
	A = 16'h592b;
	B = 16'hdad4;
	ans = 16'hf869;
	#20
	A = 16'h588e;
	B = 16'h4f32;
	ans = 16'h6c19;
	#20
	A = 16'hdb5c;
	B = 16'hd85f;
	ans = 16'h7805;
	#20
	A = 16'hd426;
	B = 16'hdb07;
	ans = 16'h734a;
	#20
	A = 16'hd6ef;
	B = 16'hc101;
	ans = 16'h5c56;
	#20
	A = 16'h55a4;
	B = 16'hd253;
	ans = 16'hec76;
	#20
	A = 16'hd75e;
	B = 16'hd91f;
	ans = 16'h74b7;
	#20
	A = 16'h59e5;
	B = 16'h59b5;
	ans = 16'h7834;
	#20
	A = 16'h56c7;
	B = 16'h5b61;
	ans = 16'h7640;
	#20
	A = 16'hda0d;
	B = 16'hdbbd;
	ans = 16'h79da;
	#20
	A = 16'hc4ad;
	B = 16'hd899;
	ans = 16'h6160;
	#20
	A = 16'hd250;
	B = 16'h5912;
	ans = 16'hf000;
	#20
	A = 16'h4e35;
	B = 16'h561b;
	ans = 16'h68bd;
	#20
	A = 16'hd800;
	B = 16'hda5d;
	ans = 16'h765d;
	#20
	A = 16'h5a83;
	B = 16'hd160;
	ans = 16'hf060;
	#20
	A = 16'hdafe;
	B = 16'hd93a;
	ans = 16'h7891;
	#20
	A = 16'h53da;
	B = 16'hd41e;
	ans = 16'hec0a;
	#20
	A = 16'h56f2;
	B = 16'h5aa2;
	ans = 16'h75c2;
	#20
	A = 16'hd775;
	B = 16'hda8a;
	ans = 16'h7618;
	#20
	A = 16'hdaa2;
	B = 16'hd832;
	ans = 16'h76f5;
	#20
	A = 16'h5b57;
	B = 16'hd12e;
	ans = 16'hf0c1;
	#20
	A = 16'hd95e;
	B = 16'h544f;
	ans = 16'hf1c8;
	#20
	A = 16'hd995;
	B = 16'hd91e;
	ans = 16'h7724;
	#20
	A = 16'hd045;
	B = 16'h57cb;
	ans = 16'hec29;
	#20
	A = 16'h4d53;
	B = 16'hd264;
	ans = 16'he441;
	#20
	A = 16'hd89c;
	B = 16'hd9cd;
	ans = 16'h76af;
	#20
	A = 16'h5948;
	B = 16'h448a;
	ans = 16'h61fe;
	#20
	A = 16'hd8b6;
	B = 16'hdaea;
	ans = 16'h7812;
	#20
	A = 16'hd6d7;
	B = 16'h4039;
	ans = 16'hdb38;
	#20
	A = 16'hdbda;
	B = 16'hd68a;
	ans = 16'h766b;
	#20
	A = 16'hd47e;
	B = 16'h55d2;
	ans = 16'hee89;
	#20
	A = 16'h52c4;
	B = 16'hd454;
	ans = 16'heb52;
	#20
	A = 16'hda1a;
	B = 16'h5685;
	ans = 16'hf4f9;
	#20
	A = 16'hc13c;
	B = 16'h5422;
	ans = 16'hd968;
	#20
	A = 16'h54a8;
	B = 16'hdbd4;
	ans = 16'hf48e;
	#20
	A = 16'h4889;
	B = 16'h57f1;
	ans = 16'h6480;
	#20
	A = 16'hd8d3;
	B = 16'h5805;
	ans = 16'hf4d9;
	#20
	A = 16'h5b6d;
	B = 16'h4069;
	ans = 16'h6018;
	#20
	A = 16'hd881;
	B = 16'hd0a9;
	ans = 16'h6d3f;
	#20
	A = 16'hd4be;
	B = 16'hd68d;
	ans = 16'h6fc4;
	#20
	A = 16'h560d;
	B = 16'hd5f3;
	ans = 16'hf080;
	#20
	A = 16'h3edc;
	B = 16'hd84c;
	ans = 16'hdb5e;
	#20
	A = 16'h5ae5;
	B = 16'h520e;
	ans = 16'h7138;
	#20
	A = 16'hd8f7;
	B = 16'hd4e8;
	ans = 16'h7217;
	#20
	A = 16'hda54;
	B = 16'hceec;
	ans = 16'h6d7a;
	#20
	A = 16'hdbca;
	B = 16'hd0b2;
	ans = 16'h7092;
	#20
	A = 16'hda6c;
	B = 16'hd9bc;
	ans = 16'h789a;
	#20
	A = 16'h506a;
	B = 16'hdbeb;
	ans = 16'hf05e;
	#20
	A = 16'h55a6;
	B = 16'hc9aa;
	ans = 16'he400;
	#20
	A = 16'h543d;
	B = 16'h3f48;
	ans = 16'h57b7;
	#20
	A = 16'hd965;
	B = 16'h58bc;
	ans = 16'hf663;
	#20
	A = 16'hd95a;
	B = 16'h5a3a;
	ans = 16'hf82a;
	#20
	A = 16'hda3f;
	B = 16'h556d;
	ans = 16'hf43c;
	#20
	A = 16'h4df8;
	B = 16'h57d5;
	ans = 16'h69d8;
	#20
	A = 16'h51cd;
	B = 16'h59a9;
	ans = 16'h701b;
	#20
	A = 16'h5736;
	B = 16'h562f;
	ans = 16'h7193;
	#20
	A = 16'hdb26;
	B = 16'h574e;
	ans = 16'hf687;
	#20
	A = 16'hd19c;
	B = 16'hc6e8;
	ans = 16'h5cd8;
	#20
	A = 16'h533c;
	B = 16'hd58e;
	ans = 16'hed06;
	#20
	A = 16'h4383;
	B = 16'h5b74;
	ans = 16'h6300;
	#20
	A = 16'hd95a;
	B = 16'h5ad6;
	ans = 16'hf893;
	#20
	A = 16'hd5e1;
	B = 16'h51af;
	ans = 16'hec2d;
	#20
	A = 16'h5aa9;
	B = 16'hd8af;
	ans = 16'hf7cc;
	#20
	A = 16'h59ff;
	B = 16'hd8b1;
	ans = 16'hf708;
	#20
	A = 16'h5277;
	B = 16'hd7ed;
	ans = 16'hee68;
	#20
	A = 16'h5bb3;
	B = 16'hd94a;
	ans = 16'hf917;
	#20
	A = 16'hd45b;
	B = 16'h59b0;
	ans = 16'hf231;
	#20
	A = 16'h502a;
	B = 16'h4943;
	ans = 16'h5d7a;
	#20
	A = 16'hd633;
	B = 16'hd312;
	ans = 16'h6d7b;
	#20
	A = 16'h4014;
	B = 16'hc45d;
	ans = 16'hc873;
	#20
	A = 16'hd806;
	B = 16'hd81e;
	ans = 16'h7424;
	#20
	A = 16'hd521;
	B = 16'hd9d3;
	ans = 16'h7378;
	#20
	A = 16'hd905;
	B = 16'hd4d5;
	ans = 16'h7210;
	#20
	A = 16'h58ff;
	B = 16'h50df;
	ans = 16'h6e16;
	#20
	A = 16'hda91;
	B = 16'hcc38;
	ans = 16'h6aed;
	#20
	A = 16'h528a;
	B = 16'h5986;
	ans = 16'h7084;
	#20
	A = 16'hc131;
	B = 16'h583a;
	ans = 16'hdd7c;
	#20
	A = 16'h5882;
	B = 16'h50b1;
	ans = 16'h6d49;
	#20
	A = 16'hda7b;
	B = 16'hd900;
	ans = 16'h780d;
	#20
	A = 16'hd77c;
	B = 16'h416e;
	ans = 16'hdd14;
	#20
	A = 16'hd881;
	B = 16'hdbd0;
	ans = 16'h7866;
	#20
	A = 16'h541e;
	B = 16'h5b3d;
	ans = 16'h7373;
	#20
	A = 16'hda41;
	B = 16'h5b5d;
	ans = 16'hf9c2;
	#20
	A = 16'h526a;
	B = 16'h55c1;
	ans = 16'h6c9d;
	#20
	A = 16'h5481;
	B = 16'hd082;
	ans = 16'he913;
	#20
	A = 16'hd64b;
	B = 16'h56fe;
	ans = 16'hf180;
	#20
	A = 16'hdb1d;
	B = 16'h546f;
	ans = 16'hf3e2;
	#20
	A = 16'h4c2f;
	B = 16'hce4d;
	ans = 16'hde97;
	#20
	A = 16'h5608;
	B = 16'h5aa6;
	ans = 16'h7503;
	#20
	A = 16'h54dc;
	B = 16'hd823;
	ans = 16'hf107;
	#20
	A = 16'hd061;
	B = 16'hd611;
	ans = 16'h6aa4;
	#20
	A = 16'h4920;
	B = 16'h59f9;
	ans = 16'h67a7;
	#20
	A = 16'h55fb;
	B = 16'hd0a4;
	ans = 16'heaf0;
	#20
	A = 16'hd8d5;
	B = 16'hd56f;
	ans = 16'h7290;
	#20
	A = 16'h54cb;
	B = 16'hd6a9;
	ans = 16'heffb;
	#20
	A = 16'h59da;
	B = 16'hdabe;
	ans = 16'hf8ee;
	#20
	A = 16'h5877;
	B = 16'h4867;
	ans = 16'h64ea;
	#20
	A = 16'h57cf;
	B = 16'hd45c;
	ans = 16'hf041;
	#20
	A = 16'h59a2;
	B = 16'hd8c9;
	ans = 16'hf6bd;
	#20
	A = 16'h5599;
	B = 16'h586e;
	ans = 16'h7233;
	#20
	A = 16'hd9c3;
	B = 16'h5783;
	ans = 16'hf569;
	#20
	A = 16'h518c;
	B = 16'hdaab;
	ans = 16'hf0a0;
	#20
	A = 16'h5adf;
	B = 16'hd6aa;
	ans = 16'hf5b9;
	#20
	A = 16'hcea7;
	B = 16'hcecb;
	ans = 16'h61a6;
	#20
	A = 16'h59ce;
	B = 16'h5a55;
	ans = 16'h7898;
	#20
	A = 16'h5bd5;
	B = 16'hd459;
	ans = 16'hf442;
	#20
	A = 16'h552e;
	B = 16'hd184;
	ans = 16'heb24;
	#20
	A = 16'hd837;
	B = 16'hcdd4;
	ans = 16'h6a24;
	#20
	A = 16'hda75;
	B = 16'hd54c;
	ans = 16'h7446;
	#20
	A = 16'h58d1;
	B = 16'hd838;
	ans = 16'hf514;
	#20
	A = 16'h5611;
	B = 16'hc700;
	ans = 16'he14f;
	#20
	A = 16'h5bb0;
	B = 16'hd496;
	ans = 16'hf468;
	#20
	A = 16'hd5d3;
	B = 16'h59bd;
	ans = 16'hf42d;
	#20
	A = 16'hd78d;
	B = 16'hda2f;
	ans = 16'h75d6;
	#20
	A = 16'hdaff;
	B = 16'h5017;
	ans = 16'hef27;
	#20
	A = 16'h53d1;
	B = 16'hd462;
	ans = 16'hec48;
	#20
	A = 16'hd67a;
	B = 16'hdbb2;
	ans = 16'h763b;
	#20
	A = 16'hd3c1;
	B = 16'hdbc8;
	ans = 16'h738b;
	#20
	A = 16'h559d;
	B = 16'hc49f;
	ans = 16'hde7c;
	#20
	A = 16'hd8ac;
	B = 16'h5b11;
	ans = 16'hf820;
	#20
	A = 16'hdb09;
	B = 16'hdbb7;
	ans = 16'h7ac9;
	#20
	A = 16'hd945;
	B = 16'h5a51;
	ans = 16'hf829;
	#20
	A = 16'h558f;
	B = 16'h5a75;
	ans = 16'h747d;
	#20
	A = 16'h58a2;
	B = 16'hd534;
	ans = 16'hf207;
	#20
	A = 16'hda6e;
	B = 16'hda5b;
	ans = 16'h791c;
	#20
	A = 16'hd1fd;
	B = 16'hd62c;
	ans = 16'h6c9f;
	#20
	A = 16'h5a71;
	B = 16'hd6f8;
	ans = 16'hf59c;
	#20
	A = 16'h5b2a;
	B = 16'hd992;
	ans = 16'hf8fd;
	#20
	A = 16'h573d;
	B = 16'hd264;
	ans = 16'hedc8;
	#20
	A = 16'hd8df;
	B = 16'h527d;
	ans = 16'hefe7;
	#20
	A = 16'hd0a0;
	B = 16'hd9ec;
	ans = 16'h6ed9;
	#20
	A = 16'hd9b5;
	B = 16'hd9a0;
	ans = 16'h7803;
	#20
	A = 16'hda22;
	B = 16'hd8d4;
	ans = 16'h7767;
	#20
	A = 16'hd168;
	B = 16'h5116;
	ans = 16'he6e0;
	#20
	A = 16'h586a;
	B = 16'h5901;
	ans = 16'h7586;
	#20
	A = 16'h48fd;
	B = 16'h368d;
	ans = 16'h4416;
	#20
	A = 16'hd83d;
	B = 16'h59e7;
	ans = 16'hf641;
	#20
	A = 16'hd89c;
	B = 16'h58f2;
	ans = 16'hf5b3;
	#20
	A = 16'h4117;
	B = 16'hcd9b;
	ans = 16'hd322;
	#20
	A = 16'h534b;
	B = 16'h4eae;
	ans = 16'h6617;
	#20
	A = 16'hd78b;
	B = 16'h598a;
	ans = 16'hf539;
	#20
	A = 16'h4e19;
	B = 16'h53b4;
	ans = 16'h65df;
	#20
	A = 16'h5719;
	B = 16'h582f;
	ans = 16'h736c;
	#20
	A = 16'h4848;
	B = 16'hd8bc;
	ans = 16'he511;
	#20
	A = 16'h59ab;
	B = 16'h5783;
	ans = 16'h7552;
	#20
	A = 16'hd384;
	B = 16'h5969;
	ans = 16'hf115;
	#20
	A = 16'h57fb;
	B = 16'hdb84;
	ans = 16'hf77f;
	#20
	A = 16'hd713;
	B = 16'h55b0;
	ans = 16'hf108;
	#20
	A = 16'hd99f;
	B = 16'hccc8;
	ans = 16'h6ab8;
	#20
	A = 16'hd9f1;
	B = 16'hd6f6;
	ans = 16'h752b;
	#20
	A = 16'hd6e1;
	B = 16'h5af8;
	ans = 16'hf5fe;
	#20
	A = 16'hd021;
	B = 16'hd0ff;
	ans = 16'h6528;
	#20
	A = 16'h5baf;
	B = 16'hc488;
	ans = 16'he45a;
	#20
	A = 16'h59ae;
	B = 16'h5378;
	ans = 16'h714d;
	#20
	A = 16'h4dac;
	B = 16'h57a5;
	ans = 16'h696b;
	#20
	A = 16'h5ab1;
	B = 16'hd97d;
	ans = 16'hf897;
	#20
	A = 16'hdb82;
	B = 16'h2e7a;
	ans = 16'hce14;
	#20
	A = 16'hd79e;
	B = 16'hd5b6;
	ans = 16'h7170;
	#20
	A = 16'h580f;
	B = 16'hdaed;
	ans = 16'hf707;
	#20
	A = 16'hdb9e;
	B = 16'h58b7;
	ans = 16'hf87d;
	#20
	A = 16'h5b29;
	B = 16'h53f6;
	ans = 16'h7320;
	#20
	A = 16'h5950;
	B = 16'h5854;
	ans = 16'h75c0;
	#20
	A = 16'hd8e8;
	B = 16'h58e9;
	ans = 16'hf606;
	#20
	A = 16'h532c;
	B = 16'h55a8;
	ans = 16'h6d12;
	#20
	A = 16'h5bbf;
	B = 16'h581d;
	ans = 16'h77f7;
	#20
	A = 16'h5604;
	B = 16'hda3e;
	ans = 16'hf4b2;
	#20
	A = 16'hd167;
	B = 16'hd4a1;
	ans = 16'h6a40;
	#20
	A = 16'h5a02;
	B = 16'h543d;
	ans = 16'h725e;
	#20
	A = 16'h5ad9;
	B = 16'hd3e2;
	ans = 16'hf2bf;
	#20
	A = 16'h5b6f;
	B = 16'h549f;
	ans = 16'h744b;
	#20
	A = 16'h57a1;
	B = 16'hd909;
	ans = 16'hf4cd;
	#20
	A = 16'hd906;
	B = 16'h5b8f;
	ans = 16'hf8bf;
	#20
	A = 16'h574d;
	B = 16'h5b8d;
	ans = 16'h76e4;
	#20
	A = 16'hda7a;
	B = 16'h5449;
	ans = 16'hf2f0;
	#20
	A = 16'hd8fd;
	B = 16'h58e0;
	ans = 16'hf614;
	#20
	A = 16'hd8bd;
	B = 16'h560e;
	ans = 16'hf32c;
	#20
	A = 16'hce2a;
	B = 16'h5384;
	ans = 16'he5ca;
	#20
	A = 16'hd5b1;
	B = 16'hd890;
	ans = 16'h727e;
	#20
	A = 16'h5495;
	B = 16'h541e;
	ans = 16'h6cb7;
	#20
	A = 16'hd909;
	B = 16'h5afc;
	ans = 16'hf865;
	#20
	A = 16'hcf7b;
	B = 16'hd669;
	ans = 16'h69fe;
	#20
	A = 16'hd136;
	B = 16'h55e4;
	ans = 16'hebad;
	#20
	A = 16'h5b4e;
	B = 16'hd3b9;
	ans = 16'hf30d;
	#20
	A = 16'h4b6b;
	B = 16'h5bb3;
	ans = 16'h6b24;
	#20
	A = 16'h5434;
	B = 16'h5a68;
	ans = 16'h72bb;
	#20
	A = 16'hd757;
	B = 16'h559b;
	ans = 16'hf125;
	#20
	A = 16'hdb67;
	B = 16'hcc34;
	ans = 16'h6bc7;
	#20
	A = 16'hd805;
	B = 16'hc998;
	ans = 16'h659f;
	#20
	A = 16'hd176;
	B = 16'h5946;
	ans = 16'hef33;
	#20
	A = 16'hd70d;
	B = 16'h59a0;
	ans = 16'hf4f5;
	#20
	A = 16'h5207;
	B = 16'hdaa5;
	ans = 16'hf102;
	#20
	A = 16'h5a8e;
	B = 16'h5a54;
	ans = 16'h792f;
	#20
	A = 16'h55b6;
	B = 16'hd413;
	ans = 16'hedd1;
	#20
	A = 16'h5911;
	B = 16'hd5e8;
	ans = 16'hf37b;
	#20
	A = 16'hd52c;
	B = 16'h5322;
	ans = 16'hec9c;
	#20
	A = 16'h5865;
	B = 16'hd0fb;
	ans = 16'hed79;
	#20
	A = 16'h590d;
	B = 16'h51c0;
	ans = 16'h6f43;
	#20
	A = 16'hd4bb;
	B = 16'h55b5;
	ans = 16'heec0;
	#20
	A = 16'hda58;
	B = 16'hd873;
	ans = 16'h770e;
	#20
	A = 16'hd81e;
	B = 16'hd993;
	ans = 16'h75bd;
	#20
	A = 16'h57e3;
	B = 16'hd888;
	ans = 16'hf478;
	#20
	A = 16'hd879;
	B = 16'h5b92;
	ans = 16'hf83c;
	#20
	A = 16'hda44;
	B = 16'hdabb;
	ans = 16'h7945;
	#20
	A = 16'h54fb;
	B = 16'h4f06;
	ans = 16'h685f;
	#20
	A = 16'h51dd;
	B = 16'hdb5e;
	ans = 16'hf166;
	#20
	A = 16'h58ba;
	B = 16'hd718;
	ans = 16'hf431;
	#20
	A = 16'hcc09;
	B = 16'h5ac4;
	ans = 16'head3;
	#20
	A = 16'hdab4;
	B = 16'hd6bb;
	ans = 16'h75a4;
	#20
	A = 16'h56cc;
	B = 16'hd6b8;
	ans = 16'hf1b5;
	#20
	A = 16'hdb6f;
	B = 16'h5880;
	ans = 16'hf82e;
	#20
	A = 16'hccab;
	B = 16'h5638;
	ans = 16'he742;
	#20
	A = 16'hd90d;
	B = 16'h4eef;
	ans = 16'hec61;
	#20
	A = 16'hd416;
	B = 16'hda1f;
	ans = 16'h7241;
	#20
	A = 16'hd8b7;
	B = 16'hd95c;
	ans = 16'h7651;
	#20
	A = 16'h5805;
	B = 16'h4b19;
	ans = 16'h6722;
	#20
	A = 16'hd178;
	B = 16'h53c2;
	ans = 16'he94e;
	#20
	A = 16'h5420;
	B = 16'hd94f;
	ans = 16'hf179;
	#20
	A = 16'hd03b;
	B = 16'hd9ea;
	ans = 16'h6e41;
	#20
	A = 16'hccb8;
	B = 16'h5585;
	ans = 16'he683;
	#20
	A = 16'h563c;
	B = 16'h5921;
	ans = 16'h73fe;
	#20
	A = 16'hdbc0;
	B = 16'h590c;
	ans = 16'hf8e4;
	#20
	A = 16'hd9ec;
	B = 16'hdb10;
	ans = 16'h793a;
	#20
	A = 16'hc561;
	B = 16'hdb29;
	ans = 16'h64d0;
	#20
	A = 16'h5909;
	B = 16'hd952;
	ans = 16'hf6b2;
	#20
	A = 16'hb0f2;
	B = 16'h5b3c;
	ans = 16'hd079;
	#20
	A = 16'h5be2;
	B = 16'h5288;
	ans = 16'h7270;
	#20
	A = 16'hd989;
	B = 16'h4fa6;
	ans = 16'hed4b;
	#20
	A = 16'hd8ee;
	B = 16'hd0d1;
	ans = 16'h6df0;
	#20
	A = 16'h599c;
	B = 16'hd3eb;
	ans = 16'hf18d;
	#20
	A = 16'hd45d;
	B = 16'hcd14;
	ans = 16'h658a;
	#20
	A = 16'h5932;
	B = 16'h496a;
	ans = 16'h6708;
	#20
	A = 16'h5ba0;
	B = 16'h5815;
	ans = 16'h77c8;
	#20
	A = 16'h5544;
	B = 16'hd8d0;
	ans = 16'hf256;
	#20
	A = 16'h5635;
	B = 16'hd12a;
	ans = 16'hec02;
	#20
	A = 16'h5168;
	B = 16'hcb96;
	ans = 16'he120;
	#20
	A = 16'h5b95;
	B = 16'hdb7c;
	ans = 16'hfb18;
	#20
	A = 16'hd695;
	B = 16'h5abf;
	ans = 16'hf58d;
	#20
	A = 16'hd7fa;
	B = 16'hdbee;
	ans = 16'h77e8;
	#20
	A = 16'hda90;
	B = 16'hd964;
	ans = 16'h786c;
	#20
	A = 16'h5107;
	B = 16'hd596;
	ans = 16'heb05;
	#20
	A = 16'h56af;
	B = 16'hd358;
	ans = 16'hee23;
	#20
	A = 16'h580a;
	B = 16'h59f6;
	ans = 16'h7605;
	#20
	A = 16'h5ae4;
	B = 16'hc80d;
	ans = 16'he6fa;
	#20
	A = 16'hdae5;
	B = 16'hb2e0;
	ans = 16'h51ed;
	#20
	A = 16'hdb9f;
	B = 16'hda68;
	ans = 16'h7a1a;
	#20
	A = 16'hd762;
	B = 16'hd86f;
	ans = 16'h7417;
	#20
	A = 16'h5892;
	B = 16'hd6c2;
	ans = 16'hf3b9;
	#20
	A = 16'h4d58;
	B = 16'hd6d5;
	ans = 16'he890;
	#20
	A = 16'h53f1;
	B = 16'h5ad4;
	ans = 16'h72c7;
	#20
	A = 16'hdb35;
	B = 16'h59a4;
	ans = 16'hf915;
	#20
	A = 16'hd5d2;
	B = 16'hd5ce;
	ans = 16'h7039;
	#20
	A = 16'h5bea;
	B = 16'hdbe1;
	ans = 16'hfbcb;
	#20
	A = 16'h5533;
	B = 16'hd630;
	ans = 16'hf005;
	#20
	A = 16'h52ff;
	B = 16'hdb34;
	ans = 16'hf24d;
	#20
	A = 16'hd0b1;
	B = 16'hdb77;
	ans = 16'h7061;
	#20
	A = 16'hcbaa;
	B = 16'h5954;
	ans = 16'he91b;
	#20
	A = 16'h55d5;
	B = 16'hd5e8;
	ans = 16'hf04e;
	#20
	A = 16'h5766;
	B = 16'hd6a6;
	ans = 16'hf226;
	#20
	A = 16'h5ad1;
	B = 16'h598e;
	ans = 16'h78bc;
	#20
	A = 16'hd407;
	B = 16'hd691;
	ans = 16'h6e9c;
	#20
	A = 16'h554f;
	B = 16'h56fb;
	ans = 16'h70a2;
	#20
	A = 16'hcc07;
	B = 16'hceec;
	ans = 16'h5ef8;
	#20
	A = 16'h5740;
	B = 16'hd4cf;
	ans = 16'hf05c;
	#20
	A = 16'hd8d8;
	B = 16'h5b6f;
	ans = 16'hf880;
	#20
	A = 16'hd856;
	B = 16'hdbd2;
	ans = 16'h783d;
	#20
	A = 16'hd42e;
	B = 16'hd693;
	ans = 16'h6edf;
	#20
	A = 16'h591d;
	B = 16'h5466;
	ans = 16'h719f;
	#20
	A = 16'hd7cd;
	B = 16'hda8c;
	ans = 16'h7662;
	#20
	A = 16'hd376;
	B = 16'hd3af;
	ans = 16'h6b2a;
	#20
	A = 16'h5a77;
	B = 16'hdbf8;
	ans = 16'hfa71;
	#20
	A = 16'h577e;
	B = 16'hcb25;
	ans = 16'he6b1;
	#20
	A = 16'hd816;
	B = 16'hd6e2;
	ans = 16'h7308;
	#20
	A = 16'h4a84;
	B = 16'h4db1;
	ans = 16'h5ca3;
	#20
	A = 16'h58bc;
	B = 16'h430f;
	ans = 16'h602d;
	#20
	A = 16'hd67b;
	B = 16'h4e89;
	ans = 16'he94b;
	#20
	A = 16'h5490;
	B = 16'hd194;
	ans = 16'hea5d;
	#20
	A = 16'hd9a7;
	B = 16'h5a5c;
	ans = 16'hf87e;
	#20
	A = 16'h5713;
	B = 16'h59c5;
	ans = 16'h751a;
	#20
	A = 16'h57d5;
	B = 16'hcdb8;
	ans = 16'he999;
	#20
	A = 16'hd9b6;
	B = 16'hda71;
	ans = 16'h7899;
	#20
	A = 16'h558d;
	B = 16'h4c20;
	ans = 16'h65b9;
	#20
	A = 16'h5b66;
	B = 16'h59b5;
	ans = 16'h7947;
	#20
	A = 16'hcb90;
	B = 16'hd314;
	ans = 16'h62b1;
	#20
	A = 16'hd869;
	B = 16'h44fa;
	ans = 16'he17d;
	#20
	A = 16'hd726;
	B = 16'h549d;
	ans = 16'hf01f;
	#20
	A = 16'h5bac;
	B = 16'h4f32;
	ans = 16'h6ee6;
	#20
	A = 16'h5260;
	B = 16'hd602;
	ans = 16'hecca;
	#20
	A = 16'h5039;
	B = 16'h54de;
	ans = 16'h6923;
	#20
	A = 16'h5279;
	B = 16'h5541;
	ans = 16'h6c40;
	#20
	A = 16'h5382;
	B = 16'hd9ec;
	ans = 16'hf18f;
	#20
	A = 16'h5659;
	B = 16'h55a6;
	ans = 16'h707b;
	#20
	A = 16'h5a4d;
	B = 16'h4e81;
	ans = 16'h6d1f;
	#20
	A = 16'hdb00;
	B = 16'hd81f;
	ans = 16'h7736;
	#20
	A = 16'h5798;
	B = 16'h5a3c;
	ans = 16'h75eb;
	#20
	A = 16'hdbd9;
	B = 16'hd73d;
	ans = 16'h771a;
	#20
	A = 16'h50d3;
	B = 16'h45d2;
	ans = 16'h5b05;
	#20
	A = 16'hd94e;
	B = 16'hcff5;
	ans = 16'h6d47;
	#20
	A = 16'hda15;
	B = 16'hd447;
	ans = 16'h7281;
	#20
	A = 16'h57c3;
	B = 16'hcfe3;
	ans = 16'heba7;
	#20
	A = 16'hd6e8;
	B = 16'hd62f;
	ans = 16'h7157;
	#20
	A = 16'hd52f;
	B = 16'hd90c;
	ans = 16'h728a;
	#20
	A = 16'h5bcb;
	B = 16'h553a;
	ans = 16'h7517;
	#20
	A = 16'hd8ec;
	B = 16'h5858;
	ans = 16'hf558;
	#20
	A = 16'hda02;
	B = 16'h58cb;
	ans = 16'hf733;
	#20
	A = 16'h4ce0;
	B = 16'hd62b;
	ans = 16'he784;
	#20
	A = 16'hd6d5;
	B = 16'hdacb;
	ans = 16'h75cd;
	#20
	A = 16'hd268;
	B = 16'h5521;
	ans = 16'hec1b;
	#20
	A = 16'hd1be;
	B = 16'hd962;
	ans = 16'h6fba;
	#20
	A = 16'hd215;
	B = 16'h58d4;
	ans = 16'hef57;
	#20
	A = 16'hda4c;
	B = 16'hd49b;
	ans = 16'h7340;
	#20
	A = 16'hd714;
	B = 16'hda04;
	ans = 16'h7553;
	#20
	A = 16'hd245;
	B = 16'hcd44;
	ans = 16'h6420;
	#20
	A = 16'h5bbb;
	B = 16'hd415;
	ans = 16'hf3e4;
	#20
	A = 16'hd3f4;
	B = 16'hdaea;
	ans = 16'h72e0;
	#20
	A = 16'h56c3;
	B = 16'h552c;
	ans = 16'h705f;
	#20
	A = 16'hda60;
	B = 16'h491c;
	ans = 16'he812;
	#20
	A = 16'hdadc;
	B = 16'hd7c4;
	ans = 16'h76a9;
	#20
	A = 16'hd483;
	B = 16'h5b71;
	ans = 16'hf432;
	#20
	A = 16'h5bf6;
	B = 16'h5bb8;
	ans = 16'h7bae;
	#20
	A = 16'h5552;
	B = 16'h4894;
	ans = 16'h6217;
	#20
	A = 16'h5ab8;
	B = 16'h5af0;
	ans = 16'h79d4;
	#20
	A = 16'hcfcb;
	B = 16'h5a42;
	ans = 16'hee19;
	#20
	A = 16'hd7b7;
	B = 16'hd911;
	ans = 16'h74e3;
	#20
	A = 16'hd4af;
	B = 16'hd677;
	ans = 16'h6f92;
	#20
	A = 16'hd48a;
	B = 16'h5739;
	ans = 16'hf019;
	#20
	A = 16'hb9ad;
	B = 16'hda6d;
	ans = 16'h588f;
	#20
	A = 16'h588b;
	B = 16'hd9ca;
	ans = 16'hf693;
	#20
	A = 16'h5b5b;
	B = 16'h53f8;
	ans = 16'h7354;
	#20
	A = 16'hd8bc;
	B = 16'hdb33;
	ans = 16'h7843;
	#20
	A = 16'h5259;
	B = 16'h58b8;
	ans = 16'h6f7d;
	#20
	A = 16'hd8c8;
	B = 16'hd890;
	ans = 16'h7574;
	#20
	A = 16'hdb25;
	B = 16'hd843;
	ans = 16'h779d;
	#20
	A = 16'hd675;
	B = 16'h5556;
	ans = 16'hf04f;
	#20
	A = 16'hd39c;
	B = 16'hdbd8;
	ans = 16'h7376;
	#20
	A = 16'hd7ce;
	B = 16'h590e;
	ans = 16'hf4ee;
	#20
	A = 16'hdb70;
	B = 16'hd428;
	ans = 16'h73ba;
	#20
	A = 16'hdb0c;
	B = 16'h5b80;
	ans = 16'hfa9b;
	#20
	A = 16'hd852;
	B = 16'hda49;
	ans = 16'h76ca;
	#20
	A = 16'h5684;
	B = 16'hd49e;
	ans = 16'hef85;
	#20
	A = 16'hd809;
	B = 16'h571e;
	ans = 16'hf32e;
	#20
	A = 16'h4e38;
	B = 16'hbced;
	ans = 16'hcfa8;
	#20
	A = 16'h5ab0;
	B = 16'hd729;
	ans = 16'hf5fc;
	#20
	A = 16'hda58;
	B = 16'hd43c;
	ans = 16'h72b7;
	#20
	A = 16'hd4a8;
	B = 16'h5109;
	ans = 16'he9dc;
	#20
	A = 16'hd96a;
	B = 16'h5741;
	ans = 16'hf4e9;
	#20
	A = 16'h569a;
	B = 16'hcdf8;
	ans = 16'he8ed;
	#20
	A = 16'hdbd9;
	B = 16'h59d3;
	ans = 16'hf9b7;
	#20
	A = 16'hd9c5;
	B = 16'hd8fe;
	ans = 16'h7733;
	#20
	A = 16'h5a15;
	B = 16'hda6c;
	ans = 16'hf8e2;
	#20
	A = 16'h55cd;
	B = 16'hd933;
	ans = 16'hf38a;
	#20
	A = 16'hd4fd;
	B = 16'hd5cc;
	ans = 16'h6f3b;
	#20
	A = 16'h5bc6;
	B = 16'hd97c;
	ans = 16'hf954;
	#20
	A = 16'hd674;
	B = 16'h5939;
	ans = 16'hf436;
	#20
	A = 16'hda31;
	B = 16'h48c1;
	ans = 16'he75c;
	#20
	A = 16'h59b6;
	B = 16'hdabf;
	ans = 16'hf8d1;
	#20
	A = 16'h5533;
	B = 16'hda58;
	ans = 16'hf41f;
	#20
	A = 16'h580b;
	B = 16'h5200;
	ans = 16'h6e10;
	#20
	A = 16'h59fb;
	B = 16'hd482;
	ans = 16'hf2bd;
	#20
	A = 16'h589e;
	B = 16'hda35;
	ans = 16'hf72a;
	#20
	A = 16'hcdf2;
	B = 16'hc308;
	ans = 16'h553a;
	#20
	A = 16'h5bb6;
	B = 16'hd3a4;
	ans = 16'hf35d;
	#20
	A = 16'h592a;
	B = 16'h5522;
	ans = 16'h72a0;
	#20
	A = 16'h588a;
	B = 16'hd29c;
	ans = 16'hef80;
	#20
	A = 16'hda28;
	B = 16'h5bb7;
	ans = 16'hf9f0;
	#20
	A = 16'h58c0;
	B = 16'hd320;
	ans = 16'hf03b;
	#20
	A = 16'hd703;
	B = 16'hd45f;
	ans = 16'h6faa;
	#20
	A = 16'h4d9e;
	B = 16'h5b14;
	ans = 16'h6cf8;
	#20
	A = 16'hd81b;
	B = 16'h5b6a;
	ans = 16'hf79c;
	#20
	A = 16'h56cd;
	B = 16'hd630;
	ans = 16'hf143;
	#20
	A = 16'hd697;
	B = 16'hd08d;
	ans = 16'h6b7f;
	#20
	A = 16'hd3ac;
	B = 16'hdab9;
	ans = 16'h7272;
	#20
	A = 16'hdb66;
	B = 16'hcccc;
	ans = 16'h6c70;
	#20
	A = 16'h5a69;
	B = 16'h4d3f;
	ans = 16'h6c34;
	#20
	A = 16'hdbea;
	B = 16'hd8cd;
	ans = 16'h78c0;
	#20
	A = 16'h3d5c;
	B = 16'h50fa;
	ans = 16'h52ab;
	#20
	A = 16'h51dd;
	B = 16'hd8d5;
	ans = 16'hef15;
	#20
	A = 16'hdb89;
	B = 16'h591f;
	ans = 16'hf8d3;
	#20
	A = 16'h5a09;
	B = 16'hd905;
	ans = 16'hf793;
	#20
	A = 16'h5b05;
	B = 16'hd966;
	ans = 16'hf8bd;
	#20
	A = 16'hda1b;
	B = 16'h55d0;
	ans = 16'hf470;
	#20
	A = 16'h5b59;
	B = 16'h5661;
	ans = 16'h75dc;
	#20
	A = 16'hdb2d;
	B = 16'hd689;
	ans = 16'h75dd;
	#20
	A = 16'hd9ea;
	B = 16'h5879;
	ans = 16'hf69d;
	#20
	A = 16'h59ed;
	B = 16'h5bbe;
	ans = 16'h79bc;
	#20
	A = 16'h487d;
	B = 16'h5418;
	ans = 16'h6098;
	#20
	A = 16'hd58d;
	B = 16'h59b4;
	ans = 16'hf3ea;
	#20
	A = 16'hda52;
	B = 16'hd656;
	ans = 16'h7501;
	#20
	A = 16'hd914;
	B = 16'hda63;
	ans = 16'h780e;
	#20
	A = 16'hc9db;
	B = 16'hd86a;
	ans = 16'h6676;
	#20
	A = 16'hdb35;
	B = 16'hdaef;
	ans = 16'h7a3f;
	#20
	A = 16'h5275;
	B = 16'hc9ff;
	ans = 16'he0d7;
	#20
	A = 16'h5a52;
	B = 16'h5783;
	ans = 16'h75ef;
	#20
	A = 16'h5723;
	B = 16'hdb22;
	ans = 16'hf65d;
	#20
	A = 16'h4eaf;
	B = 16'hda95;
	ans = 16'hed80;
	#20
	A = 16'h5a70;
	B = 16'h5080;
	ans = 16'h6f3e;
	#20
	A = 16'hd605;
	B = 16'h5bf1;
	ans = 16'hf5fa;
	#20
	A = 16'h502d;
	B = 16'hda2d;
	ans = 16'hee72;
	#20
	A = 16'h54f9;
	B = 16'hd91d;
	ans = 16'hf25b;
	#20
	A = 16'h5964;
	B = 16'hda28;
	ans = 16'hf826;
	#20
	A = 16'hda84;
	B = 16'hd7b6;
	ans = 16'h7648;
	#20
	A = 16'h5897;
	B = 16'hd4f7;
	ans = 16'hf1b2;
	#20
	A = 16'hda6e;
	B = 16'h58cf;
	ans = 16'hf7bb;
	#20
	A = 16'hcd2d;
	B = 16'hdac2;
	ans = 16'h6c5f;
	#20
	A = 16'hd215;
	B = 16'h570c;
	ans = 16'hed5b;
	#20
	A = 16'hdada;
	B = 16'hd8ab;
	ans = 16'h77ff;
	#20
	A = 16'hc35c;
	B = 16'hda0a;
	ans = 16'h618e;
	#20
	A = 16'hd54c;
	B = 16'hd475;
	ans = 16'h6de7;
	#20
	A = 16'hd2c0;
	B = 16'hcdc4;
	ans = 16'h64dd;
	#20
	A = 16'hcf2b;
	B = 16'h5b61;
	ans = 16'hee9d;
	#20
	A = 16'hd543;
	B = 16'h5a52;
	ans = 16'hf428;
	#20
	A = 16'hdac9;
	B = 16'h5b9d;
	ans = 16'hfa75;
	#20
	A = 16'h5624;
	B = 16'hc354;
	ans = 16'hdda0;
	#20
	A = 16'hd808;
	B = 16'hd4d6;
	ans = 16'h70e0;
	#20
	A = 16'h51cb;
	B = 16'h5b47;
	ans = 16'h7145;
	#20
	A = 16'h5b37;
	B = 16'hd86c;
	ans = 16'hf7fa;
	#20
	A = 16'hd863;
	B = 16'h5bc6;
	ans = 16'hf843;
	#20
	A = 16'hdacb;
	B = 16'h5960;
	ans = 16'hf890;
	#20
	A = 16'h5176;
	B = 16'hd9f1;
	ans = 16'hf00e;
	#20
	A = 16'hd550;
	B = 16'h580d;
	ans = 16'hf161;
	#20
	A = 16'h55af;
	B = 16'h558d;
	ans = 16'h6fe3;
	#20
	A = 16'hd1d7;
	B = 16'h585c;
	ans = 16'hee5d;
	#20
	A = 16'h5b4b;
	B = 16'hd7af;
	ans = 16'hf701;
	#20
	A = 16'h573c;
	B = 16'hc5a2;
	ans = 16'he118;
	#20
	A = 16'hdac0;
	B = 16'hd7f3;
	ans = 16'h76b5;
	#20
	A = 16'hd90a;
	B = 16'hd80d;
	ans = 16'h751a;
	#20
	A = 16'h584c;
	B = 16'hd04c;
	ans = 16'hec9e;
	#20
	A = 16'h4c67;
	B = 16'hdb58;
	ans = 16'hec0b;
	#20
	A = 16'h586a;
	B = 16'h554d;
	ans = 16'h71d9;
	#20
	A = 16'hda16;
	B = 16'hd35b;
	ans = 16'h7198;
	#20
	A = 16'hda2c;
	B = 16'hd63b;
	ans = 16'h74cf;
	#20
	A = 16'h5b39;
	B = 16'hd774;
	ans = 16'hf6bb;
	#20
	A = 16'hdb2e;
	B = 16'h5959;
	ans = 16'hf8cd;
	#20
	A = 16'h5b23;
	B = 16'hce4b;
	ans = 16'hed9d;
	#20
	A = 16'hdad8;
	B = 16'h5a1e;
	ans = 16'hf93c;
	#20
	A = 16'h5898;
	B = 16'h57cd;
	ans = 16'h747b;
	#20
	A = 16'hdad9;
	B = 16'hd816;
	ans = 16'h76ff;
	#20
	A = 16'h58c1;
	B = 16'hd5e1;
	ans = 16'hf2fd;
	#20
	A = 16'h59e9;
	B = 16'h50be;
	ans = 16'h6f02;
	#20
	A = 16'hdac4;
	B = 16'hbf25;
	ans = 16'h5e0b;
	#20
	A = 16'hda27;
	B = 16'h4efb;
	ans = 16'hed5e;
	#20
	A = 16'hdaf2;
	B = 16'hdb40;
	ans = 16'h7a4b;
	#20
	A = 16'hd39d;
	B = 16'hda39;
	ans = 16'h71ec;
	#20
	A = 16'hd820;
	B = 16'hd9e4;
	ans = 16'h7613;
	#20
	A = 16'hcc29;
	B = 16'hda93;
	ans = 16'h6ad6;
	#20
	A = 16'h5896;
	B = 16'h5ae7;
	ans = 16'h77ea;
	#20
	A = 16'h559c;
	B = 16'hd926;
	ans = 16'hf338;
	#20
	A = 16'h5a7b;
	B = 16'hdbde;
	ans = 16'hfa5f;
	#20
	A = 16'hd726;
	B = 16'hd9d6;
	ans = 16'h7537;
	#20
	A = 16'h5b46;
	B = 16'hd96d;
	ans = 16'hf8ef;
	#20
	A = 16'hd985;
	B = 16'hda98;
	ans = 16'h788d;
	#20
	A = 16'hd44a;
	B = 16'h5b96;
	ans = 16'hf411;
	#20
	A = 16'hc5b0;
	B = 16'h4d0c;
	ans = 16'hd72d;
	#20
	A = 16'hdb64;
	B = 16'h590c;
	ans = 16'hf8aa;
	#20
	A = 16'h58e3;
	B = 16'hd811;
	ans = 16'hf4f8;
	#20
	A = 16'hdaf0;
	B = 16'h5966;
	ans = 16'hf8ae;
	#20
	A = 16'h54fc;
	B = 16'h540a;
	ans = 16'h6d08;
	#20
	A = 16'h5be6;
	B = 16'hd9cf;
	ans = 16'hf9bc;
	#20
	A = 16'h5235;
	B = 16'h592b;
	ans = 16'h7002;
	#20
	A = 16'hdb4c;
	B = 16'hdafa;
	ans = 16'h7a5d;
	#20
	A = 16'hd36b;
	B = 16'h5ba7;
	ans = 16'hf318;
	#20
	A = 16'h4c9a;
	B = 16'hd098;
	ans = 16'he149;
	#20
	A = 16'hd94c;
	B = 16'hdb7d;
	ans = 16'h78f5;
	#20
	A = 16'hda2d;
	B = 16'hd99f;
	ans = 16'h7857;
	#20
	A = 16'hd99b;
	B = 16'h5bd9;
	ans = 16'hf980;
	#20
	A = 16'h59fa;
	B = 16'hd58f;
	ans = 16'hf427;
	#20
	A = 16'hdb5d;
	B = 16'h5ba1;
	ans = 16'hfb06;
	#20
	A = 16'h5b7d;
	B = 16'hd70f;
	ans = 16'hf69b;
	#20
	A = 16'hdbbb;
	B = 16'h5a49;
	ans = 16'hfa13;
	#20
	A = 16'hda3a;
	B = 16'h5a49;
	ans = 16'hf8e4;
	#20
	A = 16'h4962;
	B = 16'hd5ce;
	ans = 16'he3d0;
	#20
	A = 16'h5289;
	B = 16'hd490;
	ans = 16'heb74;
	#20
	A = 16'hd989;
	B = 16'hdbd6;
	ans = 16'h796c;
	#20
	A = 16'h443b;
	B = 16'h5bf4;
	ans = 16'h6435;
	#20
	A = 16'h5b55;
	B = 16'hd278;
	ans = 16'hf1ee;
	#20
	A = 16'h5894;
	B = 16'hd679;
	ans = 16'hf368;
	#20
	A = 16'h542e;
	B = 16'hd541;
	ans = 16'hed7d;
	#20
	A = 16'hd9f5;
	B = 16'h4ba0;
	ans = 16'he9ae;
	#20
	A = 16'h590b;
	B = 16'hd9a3;
	ans = 16'hf71b;
	#20
	A = 16'h4ffc;
	B = 16'hd7b8;
	ans = 16'hebb4;
	#20
	A = 16'hd367;
	B = 16'h55e5;
	ans = 16'hed74;
	#20
	A = 16'h4d74;
	B = 16'h5173;
	ans = 16'h636e;
	#20
	A = 16'h4de4;
	B = 16'hd7a4;
	ans = 16'he9a0;
	#20
	A = 16'h5b98;
	B = 16'hd761;
	ans = 16'hf701;
	#20
	A = 16'hd951;
	B = 16'hd6af;
	ans = 16'h7471;
	#20
	A = 16'hd63a;
	B = 16'hdb20;
	ans = 16'h758c;
	#20
	A = 16'h57da;
	B = 16'h4f18;
	ans = 16'h6af6;
	#20
	A = 16'hd3c1;
	B = 16'hda9d;
	ans = 16'h7269;
	#20
	A = 16'hdb95;
	B = 16'h5bf1;
	ans = 16'hfb87;
	#20
	A = 16'h4da1;
	B = 16'h50c6;
	ans = 16'h62b8;
	#20
	A = 16'h591a;
	B = 16'hd98c;
	ans = 16'hf713;
	#20
	A = 16'h5806;
	B = 16'hd571;
	ans = 16'hf179;
	#20
	A = 16'h5907;
	B = 16'h45be;
	ans = 16'h6338;
	#20
	A = 16'h5b79;
	B = 16'hda25;
	ans = 16'hf9bd;
	#20
	A = 16'hce27;
	B = 16'hd801;
	ans = 16'h6a29;
	#20
	A = 16'h586a;
	B = 16'hcc49;
	ans = 16'he8bb;
	#20
	A = 16'h5806;
	B = 16'h4db9;
	ans = 16'h69c2;
	#20
	A = 16'hdaf1;
	B = 16'hb02e;
	ans = 16'h4f41;
	#20
	A = 16'h53b2;
	B = 16'h5959;
	ans = 16'h7125;
	#20
	A = 16'h5880;
	B = 16'hdbea;
	ans = 16'hf874;
	#20
	A = 16'h5be2;
	B = 16'hd9c6;
	ans = 16'hf9b0;
	#20
	A = 16'h554f;
	B = 16'hdb73;
	ans = 16'hf4f1;
	#20
	A = 16'h5678;
	B = 16'hd93d;
	ans = 16'hf43c;
	#20
	A = 16'h5a9d;
	B = 16'h5b26;
	ans = 16'h79e9;
	#20
	A = 16'h53cc;
	B = 16'h57f8;
	ans = 16'h6fc4;
	#20
	A = 16'h57a3;
	B = 16'h5a68;
	ans = 16'h761e;
	#20
	A = 16'hda41;
	B = 16'h5be8;
	ans = 16'hfa2e;
	#20
	A = 16'h5755;
	B = 16'h5827;
	ans = 16'h739c;
	#20
	A = 16'hd08a;
	B = 16'h5bba;
	ans = 16'hf062;
	#20
	A = 16'hd1c7;
	B = 16'hda0e;
	ans = 16'h705f;
	#20
	A = 16'hd9b3;
	B = 16'hd96b;
	ans = 16'h77b8;
	#20
	A = 16'h503f;
	B = 16'hd098;
	ans = 16'he4e0;
	#20
	A = 16'hda78;
	B = 16'h58ff;
	ans = 16'hf80a;
	#20
	A = 16'h49af;
	B = 16'hdadc;
	ans = 16'he8e0;
	#20
	A = 16'h5980;
	B = 16'h5846;
	ans = 16'h75e0;
	#20
	A = 16'hd839;
	B = 16'h5518;
	ans = 16'hf161;
	#20
	A = 16'hd31a;
	B = 16'hd188;
	ans = 16'h68e9;
	#20
	A = 16'hda0d;
	B = 16'h545e;
	ans = 16'hf29b;
	#20
	A = 16'hcc87;
	B = 16'hdb10;
	ans = 16'h6bfe;
	#20
	A = 16'h456b;
	B = 16'h55d6;
	ans = 16'h5fe8;
	#20
	A = 16'h52ca;
	B = 16'h4fd3;
	ans = 16'h66a4;
	#20
	A = 16'h59ea;
	B = 16'hda34;
	ans = 16'hf896;
	#20
	A = 16'hd9c9;
	B = 16'hcee3;
	ans = 16'h6cfb;
	#20
	A = 16'h583a;
	B = 16'h48d5;
	ans = 16'h651b;
	#20
	A = 16'h5b2a;
	B = 16'h5092;
	ans = 16'h7018;
	#20
	A = 16'hdaa0;
	B = 16'h55da;
	ans = 16'hf4d9;
	#20
	A = 16'hc484;
	B = 16'h5b7d;
	ans = 16'he43a;
	#20
	A = 16'h5985;
	B = 16'hd7e8;
	ans = 16'hf574;
	#20
	A = 16'hd85b;
	B = 16'h5a0e;
	ans = 16'hf698;
	#20
	A = 16'hd6f9;
	B = 16'h5434;
	ans = 16'hef54;
	#20
	A = 16'h5436;
	B = 16'h5ab9;
	ans = 16'h7314;
	#20
	A = 16'hd83a;
	B = 16'h5941;
	ans = 16'hf58d;
	#20
	A = 16'hd2e8;
	B = 16'h593e;
	ans = 16'hf087;
	#20
	A = 16'hd022;
	B = 16'h4d14;
	ans = 16'he13f;
	#20
	A = 16'hd4e4;
	B = 16'h5777;
	ans = 16'hf090;
	#20
	A = 16'hc8c4;
	B = 16'h4e25;
	ans = 16'hdb52;
	#20
	A = 16'h59f8;
	B = 16'h5567;
	ans = 16'h7408;
	#20
	A = 16'h57f0;
	B = 16'hdb65;
	ans = 16'hf756;
	#20
	A = 16'h528f;
	B = 16'hd2fc;
	ans = 16'he9ba;
	#20
	A = 16'hd8f0;
	B = 16'hd972;
	ans = 16'h76b9;
	#20
	A = 16'h5b34;
	B = 16'hcd69;
	ans = 16'hecdf;
	#20
	A = 16'h598a;
	B = 16'h59bc;
	ans = 16'h77f1;
	#20
	A = 16'h5b93;
	B = 16'h5828;
	ans = 16'h77df;
	#20
	A = 16'hdabe;
	B = 16'hdacc;
	ans = 16'h79ba;
	#20
	A = 16'hd429;
	B = 16'hd68b;
	ans = 16'h6ece;
	#20
	A = 16'h55d3;
	B = 16'h5893;
	ans = 16'h72a9;
	#20
	A = 16'hdaa0;
	B = 16'hd301;
	ans = 16'h71cd;
	#20
	A = 16'hda29;
	B = 16'hd8f2;
	ans = 16'h779e;
	#20
	A = 16'h5818;
	B = 16'hd85b;
	ans = 16'hf475;
	#20
	A = 16'h5b35;
	B = 16'hda6f;
	ans = 16'hf9cc;
	#20
	A = 16'hdb84;
	B = 16'h5983;
	ans = 16'hf92e;
	#20
	A = 16'hd624;
	B = 16'h5bab;
	ans = 16'hf5e3;
	#20
	A = 16'h5848;
	B = 16'hd9f7;
	ans = 16'hf662;
	#20
	A = 16'hd523;
	B = 16'h5b80;
	ans = 16'hf4d1;
	#20
	A = 16'hd462;
	B = 16'hdb7a;
	ans = 16'h7419;
	#20
	A = 16'hd515;
	B = 16'hda64;
	ans = 16'h740f;
	#20
	A = 16'h5b7e;
	B = 16'h5825;
	ans = 16'h77c3;
	#20
	A = 16'h55ac;
	B = 16'hd73d;
	ans = 16'hf122;
	#20
	A = 16'hdba9;
	B = 16'hd80f;
	ans = 16'h77c6;
	#20
	A = 16'hd7c6;
	B = 16'hd58b;
	ans = 16'h7163;
	#20
	A = 16'hd946;
	B = 16'h51c4;
	ans = 16'hef9a;
	#20
	A = 16'hd4c8;
	B = 16'h4d3c;
	ans = 16'he642;
	#20
	A = 16'h524e;
	B = 16'h553b;
	ans = 16'h6c1f;
	#20
	A = 16'h57c3;
	B = 16'hdb59;
	ans = 16'hf721;
	#20
	A = 16'h5909;
	B = 16'hd5d5;
	ans = 16'hf357;
	#20
	A = 16'h5bc0;
	B = 16'h5af2;
	ans = 16'h7aba;
	#20
	A = 16'hd7cc;
	B = 16'hd8d7;
	ans = 16'h74b8;
	#20
	A = 16'h4133;
	B = 16'h5a87;
	ans = 16'h603e;
	#20
	A = 16'h5882;
	B = 16'hd12e;
	ans = 16'hedd6;
	#20
	A = 16'h556f;
	B = 16'hd7af;
	ans = 16'hf138;
	#20
	A = 16'h537f;
	B = 16'h5525;
	ans = 16'h6cd2;
	#20
	A = 16'h5a7e;
	B = 16'h5ad2;
	ans = 16'h7989;
	#20
	A = 16'hd795;
	B = 16'h5a6a;
	ans = 16'hf614;
	#20
	A = 16'h486e;
	B = 16'hd719;
	ans = 16'he3dc;
	#20
	A = 16'hda08;
	B = 16'hd497;
	ans = 16'h72ec;
	#20
	A = 16'hc521;
	B = 16'hdb32;
	ans = 16'h649d;
	#20
	A = 16'hd0f3;
	B = 16'h5a81;
	ans = 16'hf006;
	#20
	A = 16'h54fb;
	B = 16'h5926;
	ans = 16'h7269;
	#20
	A = 16'hdaa4;
	B = 16'h5aa7;
	ans = 16'hf986;
	#20
	A = 16'hd777;
	B = 16'hd114;
	ans = 16'h6cbd;
	#20
	A = 16'h5275;
	B = 16'h55b2;
	ans = 16'h6c99;
	#20
	A = 16'h4cb2;
	B = 16'h56a5;
	ans = 16'h67cd;
	#20
	A = 16'h53b0;
	B = 16'h4560;
	ans = 16'h5d2a;
	#20
	A = 16'hd83f;
	B = 16'h596c;
	ans = 16'hf5c1;
	#20
	A = 16'hcfa6;
	B = 16'h594d;
	ans = 16'hed11;
	#20
	A = 16'h4fa8;
	B = 16'hd119;
	ans = 16'he4e1;
	#20
	A = 16'hdb05;
	B = 16'hd932;
	ans = 16'h788f;
	#20
	A = 16'h5a56;
	B = 16'hd520;
	ans = 16'hf40f;
	#20
	A = 16'h590e;
	B = 16'hd1e5;
	ans = 16'hef73;
	#20
	A = 16'h5959;
	B = 16'hdb47;
	ans = 16'hf8dd;
	#20
	A = 16'hd980;
	B = 16'hd3bd;
	ans = 16'h7152;
	#20
	A = 16'hd527;
	B = 16'h5aea;
	ans = 16'hf474;
	#20
	A = 16'h554f;
	B = 16'hc725;
	ans = 16'he0be;
	#20
	A = 16'hd9cd;
	B = 16'h5a48;
	ans = 16'hf88e;
	#20
	A = 16'hd2b0;
	B = 16'h58be;
	ans = 16'hefee;
	#20
	A = 16'h5477;
	B = 16'hdb41;
	ans = 16'hf40c;
	#20
	A = 16'h53e0;
	B = 16'hccdd;
	ans = 16'he4ca;
	#20
	A = 16'hd8f7;
	B = 16'hd8fb;
	ans = 16'h762f;
	#20
	A = 16'hcc55;
	B = 16'hcfc7;
	ans = 16'h6036;
	#20
	A = 16'h56a1;
	B = 16'hcf68;
	ans = 16'hea23;
	#20
	A = 16'h4cb1;
	B = 16'h53da;
	ans = 16'h649b;
	#20
	A = 16'hd96a;
	B = 16'h59e0;
	ans = 16'hf7f4;
	#20
	A = 16'h5947;
	B = 16'h5748;
	ans = 16'h74ce;
	#20
	A = 16'h554b;
	B = 16'h5adc;
	ans = 16'h748a;
	#20
	A = 16'h5a58;
	B = 16'hce01;
	ans = 16'hecc3;
	#20
	A = 16'hd123;
	B = 16'hce4f;
	ans = 16'h640d;
	#20
	A = 16'hd8f1;
	B = 16'hd430;
	ans = 16'h712c;
	#20
	A = 16'h5689;
	B = 16'h5718;
	ans = 16'h71cb;
	#20
	A = 16'hd19a;
	B = 16'h544b;
	ans = 16'hea03;
	#20
	A = 16'hd66c;
	B = 16'h5745;
	ans = 16'hf1d6;
	#20
	A = 16'h51ac;
	B = 16'hd4df;
	ans = 16'heae8;
	#20
	A = 16'hd88f;
	B = 16'hd1a0;
	ans = 16'h6e69;
	#20
	A = 16'h55a9;
	B = 16'h5a7e;
	ans = 16'h7498;
	#20
	A = 16'hda16;
	B = 16'hd790;
	ans = 16'h75c1;
	#20
	A = 16'h5996;
	B = 16'h58c1;
	ans = 16'h76a4;
	#20
	A = 16'h59bd;
	B = 16'hd9e2;
	ans = 16'hf838;
	#20
	A = 16'hd69b;
	B = 16'hd713;
	ans = 16'h71d7;
	#20
	A = 16'hda35;
	B = 16'h507a;
	ans = 16'heef2;
	#20
	A = 16'hd864;
	B = 16'hd670;
	ans = 16'h7311;
	#20
	A = 16'h5b97;
	B = 16'hd9b3;
	ans = 16'hf968;
	#20
	A = 16'hdb3a;
	B = 16'h5b07;
	ans = 16'hfa59;
	#20
	A = 16'h52b4;
	B = 16'hd588;
	ans = 16'heca2;
	#20
	A = 16'hd4b4;
	B = 16'hd9f0;
	ans = 16'h72fb;
	#20
	A = 16'hd4be;
	B = 16'h5933;
	ans = 16'hf22a;
	#20
	A = 16'hdaaf;
	B = 16'h547f;
	ans = 16'hf383;
	#20
	A = 16'h562c;
	B = 16'h4a94;
	ans = 16'h6513;
	#20
	A = 16'hd8e7;
	B = 16'h579f;
	ans = 16'hf4ac;
	#20
	A = 16'h4a92;
	B = 16'hd331;
	ans = 16'he1e8;
	#20
	A = 16'hce86;
	B = 16'h54cc;
	ans = 16'he7d3;
	#20
	A = 16'hd406;
	B = 16'hd9ab;
	ans = 16'h71b4;
	#20
	A = 16'h53d5;
	B = 16'hdbdd;
	ans = 16'hf3b3;
	#20
	A = 16'hd6bf;
	B = 16'hbeb4;
	ans = 16'h59a7;
	#20
	A = 16'hd7f9;
	B = 16'hdb1f;
	ans = 16'h7719;
	#20
	A = 16'h55ad;
	B = 16'hdaf9;
	ans = 16'hf4f2;
	#20
	A = 16'h5ad4;
	B = 16'hd288;
	ans = 16'hf193;
	#20
	A = 16'h56e8;
	B = 16'hd15b;
	ans = 16'heca0;
	#20
	A = 16'h53c5;
	B = 16'h56d1;
	ans = 16'h6e9f;
	#20
	A = 16'h5217;
	B = 16'hcb61;
	ans = 16'he19e;
	#20
	A = 16'h5b12;
	B = 16'hdada;
	ans = 16'hfa0e;
	#20
	A = 16'hcd9c;
	B = 16'h5b52;
	ans = 16'hed22;
	#20
	A = 16'hdbba;
	B = 16'h4f23;
	ans = 16'heee5;
	#20
	A = 16'hd934;
	B = 16'hdbe7;
	ans = 16'h7924;
	#20
	A = 16'h59e3;
	B = 16'h5358;
	ans = 16'h7167;
	#20
	A = 16'h5157;
	B = 16'h5b9e;
	ans = 16'h7116;
	#20
	A = 16'h54e5;
	B = 16'hd662;
	ans = 16'hefcf;
	#20
	A = 16'hd8ce;
	B = 16'h5857;
	ans = 16'hf537;
	#20
	A = 16'h5594;
	B = 16'h5755;
	ans = 16'h711d;
	#20
	A = 16'h5807;
	B = 16'h5975;
	ans = 16'h757f;
	#20
	A = 16'hd854;
	B = 16'h5710;
	ans = 16'hf3a4;
	#20
	A = 16'hd5e2;
	B = 16'h48dc;
	ans = 16'he326;
	#20
	A = 16'h5857;
	B = 16'h5a63;
	ans = 16'h76ee;
	#20
	A = 16'h5613;
	B = 16'h58ae;
	ans = 16'h731b;
	#20
	A = 16'hcda3;
	B = 16'h59ad;
	ans = 16'hec00;
	#20
	A = 16'h5b7c;
	B = 16'h546f;
	ans = 16'h7426;
	#20
	A = 16'hd636;
	B = 16'hd6da;
	ans = 16'h7152;
	#20
	A = 16'h52a0;
	B = 16'hd42b;
	ans = 16'heae7;
	#20
	A = 16'hd8ee;
	B = 16'h569b;
	ans = 16'hf412;
	#20
	A = 16'h5a1b;
	B = 16'hd554;
	ans = 16'hf411;
	#20
	A = 16'hcaf1;
	B = 16'hd801;
	ans = 16'h66f3;
	#20
	A = 16'h599c;
	B = 16'h5935;
	ans = 16'h774d;
	#20
	A = 16'h5b10;
	B = 16'hd45b;
	ans = 16'hf3b1;
	#20
	A = 16'hc956;
	B = 16'h5668;
	ans = 16'he446;
	#20
	A = 16'hdbee;
	B = 16'hda82;
	ans = 16'h7a73;
	#20
	A = 16'hd0c8;
	B = 16'hdb40;
	ans = 16'h7055;
	#20
	A = 16'h5bd1;
	B = 16'h58ee;
	ans = 16'h78d1;
	#20
	A = 16'h5ada;
	B = 16'h5a5e;
	ans = 16'h7974;
	#20
	A = 16'hd438;
	B = 16'hda10;
	ans = 16'h7265;
	#20
	A = 16'hda0c;
	B = 16'hda3f;
	ans = 16'h78b9;
	#20
	A = 16'hd4c8;
	B = 16'hdbeb;
	ans = 16'h74bb;
	#20
	A = 16'hd5c9;
	B = 16'hd8c2;
	ans = 16'h72e2;
	#20
	A = 16'h500b;
	B = 16'hd2fc;
	ans = 16'he70f;
	#20
	A = 16'hdb3e;
	B = 16'hda91;
	ans = 16'h79f2;
	#20
	A = 16'hd72b;
	B = 16'hd7f7;
	ans = 16'h7323;
	#20
	A = 16'h5687;
	B = 16'h4d6f;
	ans = 16'h686f;
	#20
	A = 16'hd681;
	B = 16'h5b3a;
	ans = 16'hf5e0;
	#20
	A = 16'hcf06;
	B = 16'h577f;
	ans = 16'hea95;
	#20
	A = 16'hc9fb;
	B = 16'h4c16;
	ans = 16'hda1c;
	#20
	A = 16'h5bce;
	B = 16'h568d;
	ans = 16'h7664;
	#20
	A = 16'h5994;
	B = 16'h4e05;
	ans = 16'h6c32;
	#20
	A = 16'h55c2;
	B = 16'h51f3;
	ans = 16'h6c48;
	#20
	A = 16'hd76a;
	B = 16'hc86c;
	ans = 16'h6419;
	#20
	A = 16'hd315;
	B = 16'h5143;
	ans = 16'he8a8;
	#20
	A = 16'h588e;
	B = 16'hda32;
	ans = 16'hf70e;
	#20
	A = 16'hcd03;
	B = 16'hd34d;
	ans = 16'h6493;
	#20
	A = 16'h58eb;
	B = 16'hdbcb;
	ans = 16'hf8ca;
	#20
	A = 16'h5abe;
	B = 16'hd24b;
	ans = 16'hf14e;
	#20
	A = 16'h5bcc;
	B = 16'hd8f8;
	ans = 16'hf8d8;
	#20
	A = 16'h57c7;
	B = 16'h591f;
	ans = 16'h74fb;
	#20
	A = 16'h55d9;
	B = 16'h5916;
	ans = 16'h736f;
	#20
	A = 16'h5487;
	B = 16'h5b79;
	ans = 16'h743b;
	#20
	A = 16'hd0d8;
	B = 16'h550e;
	ans = 16'hea1f;
	#20
	A = 16'h596f;
	B = 16'h5b70;
	ans = 16'h790d;
	#20
	A = 16'h55bf;
	B = 16'hdab6;
	ans = 16'hf4d2;
	#20
	A = 16'h590d;
	B = 16'hd6b0;
	ans = 16'hf439;
	#20
	A = 16'h5a5a;
	B = 16'hdb21;
	ans = 16'hf9a9;
	#20
	A = 16'h5a22;
	B = 16'hd885;
	ans = 16'hf6ee;
	#20
	A = 16'h4804;
	B = 16'h5366;
	ans = 16'h5f6d;
	#20
	A = 16'h56e2;
	B = 16'hd47d;
	ans = 16'hefb9;
	#20
	A = 16'h5ba7;
	B = 16'hd289;
	ans = 16'hf240;
	#20
	A = 16'hcfd0;
	B = 16'h5886;
	ans = 16'hec6b;
	#20
	A = 16'hb96a;
	B = 16'h532f;
	ans = 16'hd0dd;
	#20
	A = 16'hcd87;
	B = 16'h5b0d;
	ans = 16'hecdf;
	#20
	A = 16'h4d05;
	B = 16'hd51f;
	ans = 16'he66d;
	#20
	A = 16'hd896;
	B = 16'h58e4;
	ans = 16'hf59b;
	#20
	A = 16'hd043;
	B = 16'hd2c0;
	ans = 16'h6731;
	#20
	A = 16'hd903;
	B = 16'hc630;
	ans = 16'h63c1;
	#20
	A = 16'h52ad;
	B = 16'hd9f5;
	ans = 16'hf0f9;
	#20
	A = 16'h5a5d;
	B = 16'h57a4;
	ans = 16'h7614;
	#20
	A = 16'h5b32;
	B = 16'h550c;
	ans = 16'h748a;
	#20
	A = 16'hd8cf;
	B = 16'h5961;
	ans = 16'hf677;
	#20
	A = 16'hcce8;
	B = 16'h5802;
	ans = 16'he8ea;
	#20
	A = 16'h4fc7;
	B = 16'hd9e8;
	ans = 16'hedbe;
	#20
	A = 16'hcc09;
	B = 16'h59cb;
	ans = 16'he9d8;
	#20
	A = 16'hda33;
	B = 16'hd427;
	ans = 16'h726f;
	#20
	A = 16'hd99d;
	B = 16'hd489;
	ans = 16'h725d;
	#20
	A = 16'h5412;
	B = 16'h581b;
	ans = 16'h702d;
	#20
	A = 16'h57fb;
	B = 16'hd818;
	ans = 16'hf415;
	#20
	A = 16'h5785;
	B = 16'hd496;
	ans = 16'hf04f;
	#20
	A = 16'hd875;
	B = 16'hdaec;
	ans = 16'h77b6;
	#20
	A = 16'h55b4;
	B = 16'h5897;
	ans = 16'h728b;
	#20
	A = 16'h5a13;
	B = 16'h584f;
	ans = 16'h768b;
	#20
	A = 16'h5bb3;
	B = 16'h5813;
	ans = 16'h77d8;
	#20
	A = 16'h53ed;
	B = 16'h56ec;
	ans = 16'h6edc;
	#20
	A = 16'h5a45;
	B = 16'h59b2;
	ans = 16'h7877;
	#20
	A = 16'hdb88;
	B = 16'hb7ac;
	ans = 16'h5739;
	#20
	A = 16'hd619;
	B = 16'hd71f;
	ans = 16'h716e;
	#20
	A = 16'hcf51;
	B = 16'h5861;
	ans = 16'hec01;
	#20
	A = 16'hd92b;
	B = 16'hd96c;
	ans = 16'h7701;
	#20
	A = 16'h5999;
	B = 16'h5aa5;
	ans = 16'h78a6;
	#20
	A = 16'hc8b6;
	B = 16'hd748;
	ans = 16'h644a;
	#20
	A = 16'hd4d6;
	B = 16'h5a9b;
	ans = 16'hf3fc;
	#20
	A = 16'h58f8;
	B = 16'h544e;
	ans = 16'h7159;
	#20
	A = 16'h5a66;
	B = 16'hd899;
	ans = 16'hf75b;
	#20
	A = 16'hd948;
	B = 16'hd4a3;
	ans = 16'h721f;
	#20
	A = 16'h5b74;
	B = 16'h58af;
	ans = 16'h785d;
	#20
	A = 16'h5409;
	B = 16'h5829;
	ans = 16'h7032;
	#20
	A = 16'hda5b;
	B = 16'hd5b6;
	ans = 16'h7489;
	#20
	A = 16'hdb62;
	B = 16'hd619;
	ans = 16'h75a1;
	#20
	A = 16'h5acb;
	B = 16'hd8aa;
	ans = 16'hf7ec;
	#20
	A = 16'h5a63;
	B = 16'h4adc;
	ans = 16'h697a;
	#20
	A = 16'hd8b2;
	B = 16'hcf3c;
	ans = 16'h6c3f;
	#20
	A = 16'hdbed;
	B = 16'h5bdc;
	ans = 16'hfbc9;
	#20
	A = 16'hcd19;
	B = 16'h59a2;
	ans = 16'heb2e;
	#20
	A = 16'hbcc4;
	B = 16'h5adf;
	ans = 16'hdc18;
	#20
	A = 16'hd992;
	B = 16'hd61d;
	ans = 16'h7442;
	#20
	A = 16'hda42;
	B = 16'hd4d7;
	ans = 16'h7392;
	#20
	A = 16'hd1be;
	B = 16'hd5f2;
	ans = 16'h6c44;
	#20
	A = 16'h56d9;
	B = 16'h5a15;
	ans = 16'h7535;
	#20
	A = 16'h5362;
	B = 16'hc877;
	ans = 16'he01f;
	#20
	A = 16'hd78b;
	B = 16'hd79b;
	ans = 16'h732c;
	#20
	A = 16'hda48;
	B = 16'hdac7;
	ans = 16'h7952;
	#20
	A = 16'h5b5c;
	B = 16'hdae9;
	ans = 16'hfa5b;
	#20
	A = 16'h518a;
	B = 16'hd544;
	ans = 16'heb4b;
	#20
	A = 16'h4ad6;
	B = 16'h5b50;
	ans = 16'h6a40;
	#20
	A = 16'hcf68;
	B = 16'h5955;
	ans = 16'hecf0;
	#20
	A = 16'hd960;
	B = 16'hdb66;
	ans = 16'h78f9;
	#20
	A = 16'hd599;
	B = 16'hd752;
	ans = 16'h711f;
	#20
	A = 16'hd9a5;
	B = 16'hd61d;
	ans = 16'h7450;
	#20
	A = 16'hd7a6;
	B = 16'hd8a6;
	ans = 16'h7472;
	#20
	A = 16'hda0d;
	B = 16'hdb47;
	ans = 16'h7981;
	#20
	A = 16'h5734;
	B = 16'hdb93;
	ans = 16'hf6d2;
	#20
	A = 16'h53ba;
	B = 16'hd954;
	ans = 16'hf125;
	#20
	A = 16'hdad6;
	B = 16'h5a39;
	ans = 16'hf951;
	#20
	A = 16'h595c;
	B = 16'h5b18;
	ans = 16'h78c1;
	#20
	A = 16'h54d7;
	B = 16'h517c;
	ans = 16'h6aa3;
	#20
	A = 16'hd4fd;
	B = 16'hd727;
	ans = 16'h7076;
	#20
	A = 16'h556d;
	B = 16'hd763;
	ans = 16'hf103;
	#20
	A = 16'h5837;
	B = 16'h585d;
	ans = 16'h7499;
	#20
	A = 16'h58f4;
	B = 16'hd1e1;
	ans = 16'hef48;
	#20
	A = 16'h54c3;
	B = 16'hda9a;
	ans = 16'hf3dc;
	#20
	A = 16'hda5d;
	B = 16'h575c;
	ans = 16'hf5db;
	#20
	A = 16'h59e1;
	B = 16'hd13e;
	ans = 16'hefb4;
	#20
	A = 16'hd4bd;
	B = 16'h4a5d;
	ans = 16'he38a;
	#20
	A = 16'hd4a3;
	B = 16'hd7ee;
	ans = 16'h7099;
	#20
	A = 16'hda72;
	B = 16'hcc9d;
	ans = 16'h6b6f;
	#20
	A = 16'hdbd0;
	B = 16'hdac3;
	ans = 16'h7a9a;
	#20
	A = 16'hdae2;
	B = 16'h5953;
	ans = 16'hf895;
	#20
	A = 16'h5875;
	B = 16'h5515;
	ans = 16'h71aa;
	#20
	A = 16'hcc87;
	B = 16'hd981;
	ans = 16'h6a3b;
	#20
	A = 16'hd8c3;
	B = 16'hdbea;
	ans = 16'h78b6;
	#20
	A = 16'h4e3a;
	B = 16'hdbce;
	ans = 16'hee13;
	#20
	A = 16'h5a25;
	B = 16'h48c3;
	ans = 16'h6751;
	#20
	A = 16'h507e;
	B = 16'h5af9;
	ans = 16'h6fd5;
	#20
	A = 16'h5968;
	B = 16'hd663;
	ans = 16'hf451;
	#20
	A = 16'hcbcd;
	B = 16'hdb59;
	ans = 16'h6b2a;
	#20
	A = 16'h5879;
	B = 16'hca82;
	ans = 16'he747;
	#20
	A = 16'hdac4;
	B = 16'hda85;
	ans = 16'h7983;
	#20
	A = 16'hd5ec;
	B = 16'h5401;
	ans = 16'heded;
	#20
	A = 16'hd7d3;
	B = 16'hd4da;
	ans = 16'h70bf;
	#20
	A = 16'hd6fc;
	B = 16'h54e3;
	ans = 16'hf044;
	#20
	A = 16'h594e;
	B = 16'h5a25;
	ans = 16'h7813;
	#20
	A = 16'h5726;
	B = 16'hd933;
	ans = 16'hf4a5;
	#20
	A = 16'hd46e;
	B = 16'hd692;
	ans = 16'h6f47;
	#20
	A = 16'h5499;
	B = 16'hd462;
	ans = 16'hed0a;
	#20
	A = 16'hd695;
	B = 16'h4aef;
	ans = 16'he5b4;
	#20
	A = 16'hda39;
	B = 16'h57c3;
	ans = 16'hf60a;
	#20
	A = 16'h4c05;
	B = 16'hd075;
	ans = 16'he07b;
	#20
	A = 16'hd8e2;
	B = 16'h5595;
	ans = 16'hf2d0;
	#20
	A = 16'hd9dd;
	B = 16'hd268;
	ans = 16'h70b2;
	#20
	A = 16'hdaab;
	B = 16'h58e3;
	ans = 16'hf813;
	#20
	A = 16'hd6a7;
	B = 16'hd0ae;
	ans = 16'h6bc8;
	#20
	A = 16'h59b1;
	B = 16'h5b33;
	ans = 16'h791f;
	#20
	A = 16'hd512;
	B = 16'h5ae4;
	ans = 16'hf45e;
	#20
	A = 16'h4aeb;
	B = 16'h5723;
	ans = 16'h662c;
	#20
	A = 16'hdb75;
	B = 16'hdafd;
	ans = 16'h7a84;
	#20
	A = 16'hd89c;
	B = 16'h58ed;
	ans = 16'hf5ad;
	#20
	A = 16'h4a7e;
	B = 16'h5bf6;
	ans = 16'h6a76;
	#20
	A = 16'h5b82;
	B = 16'h5864;
	ans = 16'h781f;
	#20
	A = 16'hd5ff;
	B = 16'hcdd5;
	ans = 16'h685f;
	#20
	A = 16'h47ae;
	B = 16'hd973;
	ans = 16'he53b;
	#20
	A = 16'h514d;
	B = 16'h51f6;
	ans = 16'h67e6;
	#20
	A = 16'h574c;
	B = 16'hd659;
	ans = 16'hf1ca;
	#20
	A = 16'h5659;
	B = 16'h4d34;
	ans = 16'h6821;
	#20
	A = 16'hd48f;
	B = 16'h581a;
	ans = 16'hf0ad;
	#20
	A = 16'h5ba7;
	B = 16'h5400;
	ans = 16'h73a7;
	#20
	A = 16'h56c7;
	B = 16'h4905;
	ans = 16'h6441;
	#20
	A = 16'hd841;
	B = 16'h5503;
	ans = 16'hf154;
	#20
	A = 16'h5aa5;
	B = 16'hd717;
	ans = 16'hf5e3;
	#20
	A = 16'hd3b3;
	B = 16'h5644;
	ans = 16'hee08;
	#20
	A = 16'hdb1a;
	B = 16'hd8d6;
	ans = 16'h784b;
	#20
	A = 16'h52ea;
	B = 16'h595e;
	ans = 16'h70a3;
	#20
	A = 16'h596d;
	B = 16'hca12;
	ans = 16'he81e;
	#20
	A = 16'hd909;
	B = 16'hd5d7;
	ans = 16'h735a;
	#20
	A = 16'hda13;
	B = 16'hd1b3;
	ans = 16'h7054;
	#20
	A = 16'h54b0;
	B = 16'h5522;
	ans = 16'h6e04;
	#20
	A = 16'h5b16;
	B = 16'h5a52;
	ans = 16'h7999;
	#20
	A = 16'hd028;
	B = 16'h5934;
	ans = 16'hed68;
	#20
	A = 16'h55a5;
	B = 16'h5ba8;
	ans = 16'h7567;
	#20
	A = 16'h5824;
	B = 16'hd8f7;
	ans = 16'hf524;
	#20
	A = 16'h59a0;
	B = 16'hd2fd;
	ans = 16'hf0ea;
	#20
	A = 16'hd9bd;
	B = 16'h541f;
	ans = 16'hf1e9;
	#20
	A = 16'hce99;
	B = 16'h5a88;
	ans = 16'hed63;
	#20
	A = 16'hdb00;
	B = 16'h5612;
	ans = 16'hf550;
	#20
	A = 16'h5471;
	B = 16'h5a55;
	ans = 16'h7308;
	#20
	A = 16'hd92a;
	B = 16'h5b83;
	ans = 16'hf8d9;
	#20
	A = 16'h5838;
	B = 16'hd584;
	ans = 16'hf1d1;
	#20
	A = 16'h4f3d;
	B = 16'hd8ed;
	ans = 16'hec75;
	#20
	A = 16'h563e;
	B = 16'h5658;
	ans = 16'h70f3;
	#20
	A = 16'hd552;
	B = 16'hd236;
	ans = 16'h6c21;
	#20
	A = 16'hd17d;
	B = 16'h53d3;
	ans = 16'he95e;
	#20
	A = 16'hcfe4;
	B = 16'h5a71;
	ans = 16'hee5a;
	#20
	A = 16'hdb03;
	B = 16'h58ec;
	ans = 16'hf850;
	#20
	A = 16'h50f2;
	B = 16'h5969;
	ans = 16'h6eb0;
	#20
	A = 16'hd489;
	B = 16'h5af8;
	ans = 16'hf3e7;
	#20
	A = 16'h59b1;
	B = 16'h5595;
	ans = 16'h73f1;
	#20
	A = 16'hd905;
	B = 16'hd596;
	ans = 16'h7302;
	#20
	A = 16'hd533;
	B = 16'h598a;
	ans = 16'hf333;
	#20
	A = 16'hdae0;
	B = 16'h54ea;
	ans = 16'hf439;
	#20
	A = 16'hd9f2;
	B = 16'h5830;
	ans = 16'hf639;
	#20
	A = 16'h584a;
	B = 16'hda7e;
	ans = 16'hf6f6;
	#20
	A = 16'h527a;
	B = 16'h5366;
	ans = 16'h69fd;
	#20
	A = 16'h5a85;
	B = 16'hd040;
	ans = 16'heeed;
	#20
	A = 16'hda97;
	B = 16'hd819;
	ans = 16'h76c0;
	#20
	A = 16'h4a5b;
	B = 16'hcc5a;
	ans = 16'hdaea;
	#20
	A = 16'hd838;
	B = 16'h44ee;
	ans = 16'he133;
	#20
	A = 16'h5bf1;
	B = 16'hd7d7;
	ans = 16'hf7c8;
	#20
	A = 16'h55be;
	B = 16'hcdc8;
	ans = 16'he826;
	#20
	A = 16'hcf95;
	B = 16'h5ae0;
	ans = 16'hee84;
	#20
	A = 16'hd8dd;
	B = 16'hd471;
	ans = 16'h7166;
	#20
	A = 16'hd89a;
	B = 16'hcb91;
	ans = 16'h685a;
	#20
	A = 16'h58f1;
	B = 16'hd770;
	ans = 16'hf498;
	#20
	A = 16'h5089;
	B = 16'h51f8;
	ans = 16'h66c4;
	#20
	A = 16'h589a;
	B = 16'h5163;
	ans = 16'h6e32;
	#20
	A = 16'hdb06;
	B = 16'h5691;
	ans = 16'hf5c4;
	#20
	A = 16'hcacd;
	B = 16'hda67;
	ans = 16'h6971;
	#20
	A = 16'hda28;
	B = 16'h57bd;
	ans = 16'hf5f4;
	#20
	A = 16'h5a6b;
	B = 16'h56a1;
	ans = 16'h7551;
	#20
	A = 16'h58c2;
	B = 16'hd018;
	ans = 16'hecdf;
	#20
	A = 16'h519d;
	B = 16'hd88d;
	ans = 16'hee63;
	#20
	A = 16'h5a98;
	B = 16'h516b;
	ans = 16'h7077;
	#20
	A = 16'h5b7c;
	B = 16'h59b9;
	ans = 16'h795b;
	#20
	A = 16'hd38a;
	B = 16'hdbec;
	ans = 16'h7377;
	#20
	A = 16'hdac3;
	B = 16'hdbd4;
	ans = 16'h7a9e;
	#20
	A = 16'hd9b3;
	B = 16'hd59e;
	ans = 16'h7400;
	#20
	A = 16'h5881;
	B = 16'h562b;
	ans = 16'h72f2;
	#20
	A = 16'h4bfe;
	B = 16'h5895;
	ans = 16'h6894;
	#20
	A = 16'h54b2;
	B = 16'hd7f4;
	ans = 16'hf0ab;
	#20
	A = 16'hd837;
	B = 16'hd93a;
	ans = 16'h7582;
	#20
	A = 16'hd019;
	B = 16'h5a0c;
	ans = 16'hee32;
	#20
	A = 16'hd9a8;
	B = 16'hda51;
	ans = 16'h7877;
	#20
	A = 16'h525c;
	B = 16'h5b2f;
	ans = 16'h71b6;
	#20
	A = 16'hd9ff;
	B = 16'h5769;
	ans = 16'hf58e;
	#20
	A = 16'h5bda;
	B = 16'h512f;
	ans = 16'h7116;
	#20
	A = 16'hd5bd;
	B = 16'hda9b;
	ans = 16'h74bd;
	#20
	A = 16'h5aff;
	B = 16'hdb20;
	ans = 16'hfa3b;
	#20
	A = 16'h5afc;
	B = 16'hd934;
	ans = 16'hf88b;
	#20
	A = 16'hd986;
	B = 16'h4482;
	ans = 16'he23a;
	#20
	A = 16'hd9fc;
	B = 16'h58f3;
	ans = 16'hf768;
	#20
	A = 16'hd0be;
	B = 16'h5bd3;
	ans = 16'hf0a3;
	#20
	A = 16'h558c;
	B = 16'hc59e;
	ans = 16'hdfca;
	#20
	A = 16'h58a7;
	B = 16'h5a67;
	ans = 16'h7772;
	#20
	A = 16'hdb60;
	B = 16'h55a5;
	ans = 16'hf534;
	#20
	A = 16'h567f;
	B = 16'hd9d0;
	ans = 16'hf4b8;
	#20
	A = 16'hd4aa;
	B = 16'hcadb;
	ans = 16'h63fe;
	#20
	A = 16'hc5fc;
	B = 16'h5b17;
	ans = 16'he54e;
	#20
	A = 16'h5895;
	B = 16'hd477;
	ans = 16'hf11d;
	#20
	A = 16'hdb2b;
	B = 16'h5924;
	ans = 16'hf89b;
	#20
	A = 16'h5bdc;
	B = 16'hd94f;
	ans = 16'hf937;
	#20
	A = 16'h55b3;
	B = 16'hdbe5;
	ans = 16'hf5a0;
	#20
	A = 16'hd8b5;
	B = 16'hd0da;
	ans = 16'h6db6;
	#20
	A = 16'h59b1;
	B = 16'h5934;
	ans = 16'h7767;
	#20
	A = 16'hd9b3;
	B = 16'hc9cb;
	ans = 16'h6820;
	#20
	A = 16'hdbb4;
	B = 16'h5475;
	ans = 16'hf44b;
	#20
	A = 16'hd8b2;
	B = 16'h5449;
	ans = 16'hf108;
	#20
	A = 16'hd794;
	B = 16'h5522;
	ans = 16'hf0dd;
	#20
	A = 16'hd931;
	B = 16'h5592;
	ans = 16'hf33b;
	#20
	A = 16'hd32e;
	B = 16'hd190;
	ans = 16'h68fe;
	#20
	A = 16'h55e8;
	B = 16'h531c;
	ans = 16'h6d40;
	#20
	A = 16'hd7eb;
	B = 16'hd73f;
	ans = 16'h732c;
	#20
	A = 16'h5a6b;
	B = 16'hd9cc;
	ans = 16'hf8a7;
	#20
	A = 16'h538a;
	B = 16'h5799;
	ans = 16'h6f29;
	#20
	A = 16'hd7fa;
	B = 16'hda60;
	ans = 16'h765b;
	#20
	A = 16'h51ed;
	B = 16'hda8b;
	ans = 16'hf0d9;
	#20
	A = 16'hda82;
	B = 16'hda5a;
	ans = 16'h792b;
	#20
	A = 16'hd45f;
	B = 16'hdbc5;
	ans = 16'h743f;
	#20
	A = 16'hd7a5;
	B = 16'hd9df;
	ans = 16'h759c;
	#20
	A = 16'h55f8;
	B = 16'hda8f;
	ans = 16'hf4e5;
	#20
	A = 16'h5805;
	B = 16'h5752;
	ans = 16'h735b;
	#20
	A = 16'h442e;
	B = 16'h5a5e;
	ans = 16'h62a7;
	#20
	A = 16'hcddb;
	B = 16'hd90b;
	ans = 16'h6b62;
	#20
	A = 16'hd7da;
	B = 16'hd44c;
	ans = 16'h7038;
	#20
	A = 16'hd877;
	B = 16'h3c2a;
	ans = 16'hd8a6;
	#20
	A = 16'h580b;
	B = 16'h5355;
	ans = 16'h6f69;
	#20
	A = 16'hcecb;
	B = 16'h5b00;
	ans = 16'hedf2;
	#20
	A = 16'hdaa0;
	B = 16'h4dc6;
	ans = 16'hecc8;
	#20
	A = 16'h5722;
	B = 16'hcc1d;
	ans = 16'he756;
	#20
	A = 16'h5858;
	B = 16'h59b1;
	ans = 16'h762e;
	#20
	A = 16'h53eb;
	B = 16'hd5e7;
	ans = 16'hedd8;
	#20
	A = 16'h5bf4;
	B = 16'h5a81;
	ans = 16'h7a77;
	#20
	A = 16'hd8ca;
	B = 16'hc92a;
	ans = 16'h662f;
	#20
	A = 16'hd5c8;
	B = 16'h5ac1;
	ans = 16'hf4e1;
	#20
	A = 16'h533d;
	B = 16'hd939;
	ans = 16'hf0ba;
	#20
	A = 16'hcac9;
	B = 16'h58e3;
	ans = 16'he825;
	#20
	A = 16'hd71c;
	B = 16'hd7b4;
	ans = 16'h72d8;
	#20
	A = 16'h5466;
	B = 16'h5596;
	ans = 16'h6e24;
	#20
	A = 16'h5235;
	B = 16'h5b94;
	ans = 16'h71e1;
	#20
	A = 16'h4f17;
	B = 16'h4e3c;
	ans = 16'h6186;
	#20
	A = 16'h5900;
	B = 16'h5b2e;
	ans = 16'h787d;
	#20
	A = 16'h5af4;
	B = 16'h4e16;
	ans = 16'h6d4a;
	#20
	A = 16'hd2da;
	B = 16'hd355;
	ans = 16'h6a48;
	#20
	A = 16'hda56;
	B = 16'h5a31;
	ans = 16'hf8e7;
	#20
	A = 16'h576e;
	B = 16'hd22c;
	ans = 16'hedbb;
	#20
	A = 16'h56df;
	B = 16'h5b09;
	ans = 16'h760b;
	#20
	A = 16'hd877;
	B = 16'hdb57;
	ans = 16'h7819;
	#20
	A = 16'hdacc;
	B = 16'h58e3;
	ans = 16'hf827;
	#20
	A = 16'hd911;
	B = 16'hd167;
	ans = 16'h6ed8;
	#20
	A = 16'h5b86;
	B = 16'h5739;
	ans = 16'h76cb;
	#20
	A = 16'hd96f;
	B = 16'h54f6;
	ans = 16'hf2bd;
	#20
	A = 16'hcc2a;
	B = 16'h5482;
	ans = 16'he4b1;
	#20
	A = 16'hda13;
	B = 16'hd763;
	ans = 16'h759c;
	#20
	A = 16'hd46e;
	B = 16'hd493;
	ans = 16'h6d11;
	#20
	A = 16'h5696;
	B = 16'hdaf2;
	ans = 16'hf5b8;
	#20
	A = 16'hd97d;
	B = 16'hd67c;
	ans = 16'h7473;
	#20
	A = 16'hd95e;
	B = 16'hd6d7;
	ans = 16'h7497;
	#20
	A = 16'h554b;
	B = 16'hdb45;
	ans = 16'hf4cf;
	#20
	A = 16'hd88e;
	B = 16'h5909;
	ans = 16'hf5bc;
	#20
	A = 16'h5b92;
	B = 16'h5a47;
	ans = 16'h79f1;
	#20
	A = 16'h50f5;
	B = 16'hd55a;
	ans = 16'heaa2;
	#20
	A = 16'hd83d;
	B = 16'hd989;
	ans = 16'h75dd;
	#20
	A = 16'hcf98;
	B = 16'h5532;
	ans = 16'he8ee;
	#20
	A = 16'h5a79;
	B = 16'hd838;
	ans = 16'hf6d4;
	#20
	A = 16'hda2f;
	B = 16'h5a00;
	ans = 16'hf8a3;
	#20
	A = 16'h4e77;
	B = 16'hd463;
	ans = 16'he717;
	#20
	A = 16'hd9ba;
	B = 16'h5923;
	ans = 16'hf75b;
	#20
	A = 16'h5bc9;
	B = 16'h566d;
	ans = 16'h7641;
	#20
	A = 16'hd9b5;
	B = 16'h5b98;
	ans = 16'hf96b;
	#20
	A = 16'hd831;
	B = 16'hd88f;
	ans = 16'h74c7;
	#20
	A = 16'h5969;
	B = 16'h561e;
	ans = 16'h7423;
	#20
	A = 16'h5ab9;
	B = 16'h5785;
	ans = 16'h7652;
	#20
	A = 16'hcf84;
	B = 16'hd2ca;
	ans = 16'h6661;
	#20
	A = 16'h48b9;
	B = 16'h5439;
	ans = 16'h60fc;
	#20
	A = 16'hd58e;
	B = 16'hc8ec;
	ans = 16'h62d6;
	#20
	A = 16'h52a8;
	B = 16'hd931;
	ans = 16'hf052;
	#20
	A = 16'h5760;
	B = 16'hda2d;
	ans = 16'hf5b1;
	#20
	A = 16'hd829;
	B = 16'h5652;
	ans = 16'hf293;
	#20
	A = 16'hd0f9;
	B = 16'h4b28;
	ans = 16'he073;
	#20
	A = 16'hd856;
	B = 16'hd2f7;
	ans = 16'h6f8d;
	#20
	A = 16'h59df;
	B = 16'hdb18;
	ans = 16'hf935;
	#20
	A = 16'hd333;
	B = 16'h54e0;
	ans = 16'hec63;
	#20
	A = 16'h32e6;
	B = 16'hd922;
	ans = 16'hd06d;
	#20
	A = 16'h5999;
	B = 16'hd51f;
	ans = 16'hf32b;
	#20
	A = 16'hcafa;
	B = 16'h4fe1;
	ans = 16'hdedf;
	#20
	A = 16'hdab3;
	B = 16'hc5aa;
	ans = 16'h64be;
	#20
	A = 16'hd532;
	B = 16'h5b67;
	ans = 16'hf4cf;
	#20
	A = 16'hd4ee;
	B = 16'hdaf9;
	ans = 16'h744c;
	#20
	A = 16'h5536;
	B = 16'h5b5d;
	ans = 16'h74cc;
	#20
	A = 16'hd8b5;
	B = 16'hd652;
	ans = 16'h7370;
	#20
	A = 16'h5b3a;
	B = 16'h5605;
	ans = 16'h7570;
	#20
	A = 16'h571f;
	B = 16'hdb8e;
	ans = 16'hf6ba;
	#20
	A = 16'hda13;
	B = 16'h592d;
	ans = 16'hf7dc;
	#20
	A = 16'h5ae5;
	B = 16'hd278;
	ans = 16'hf193;
	#20
	A = 16'h573d;
	B = 16'h5bee;
	ans = 16'h772d;
	#20
	A = 16'hd23f;
	B = 16'h5a08;
	ans = 16'hf0b5;
	#20
	A = 16'h4235;
	B = 16'h5942;
	ans = 16'h6014;
	#20
	A = 16'hd961;
	B = 16'hce84;
	ans = 16'h6c62;
	#20
	A = 16'h4c39;
	B = 16'hd0d6;
	ans = 16'he11b;
	#20
	A = 16'h58c0;
	B = 16'h5892;
	ans = 16'h756d;
	#20
	A = 16'hd5b7;
	B = 16'h5adb;
	ans = 16'hf4e6;
	#20
	A = 16'hdac9;
	B = 16'h5b7f;
	ans = 16'hfa5c;
	#20
	A = 16'h5b6d;
	B = 16'hd9e7;
	ans = 16'hf97b;
	#20
	A = 16'h5971;
	B = 16'hd035;
	ans = 16'hedb9;
	#20
	A = 16'h5833;
	B = 16'hd6d9;
	ans = 16'hf330;
	#20
	A = 16'h53e7;
	B = 16'h5215;
	ans = 16'h6a02;
	#20
	A = 16'h5a12;
	B = 16'hd83d;
	ans = 16'hf66f;
	#20
	A = 16'hd42f;
	B = 16'hd0e9;
	ans = 16'h6923;
	#20
	A = 16'h5bb0;
	B = 16'h4e1a;
	ans = 16'h6ddd;
	#20
	A = 16'h5aab;
	B = 16'h55e1;
	ans = 16'h74e6;
	#20
	A = 16'hd27c;
	B = 16'h5047;
	ans = 16'he6ef;
	#20
	A = 16'h5824;
	B = 16'hd558;
	ans = 16'hf188;
	#20
	A = 16'h5b46;
	B = 16'h5598;
	ans = 16'h7516;
	#20
	A = 16'hda50;
	B = 16'hdb19;
	ans = 16'h799a;
	#20
	A = 16'h5aa2;
	B = 16'h50be;
	ans = 16'h6fdd;
	#20
	A = 16'hd7f7;
	B = 16'h51e8;
	ans = 16'hede1;
	#20
	A = 16'h58e1;
	B = 16'h594f;
	ans = 16'h767a;
	#20
	A = 16'hd86b;
	B = 16'h5675;
	ans = 16'hf322;
	#20
	A = 16'hd408;
	B = 16'hd803;
	ans = 16'h700b;
	#20
	A = 16'h57bd;
	B = 16'h5824;
	ans = 16'h7401;
	#20
	A = 16'hd817;
	B = 16'h5abf;
	ans = 16'hf6e6;
	#20
	A = 16'hd4ae;
	B = 16'h5501;
	ans = 16'heddb;
	#20
	A = 16'hda6f;
	B = 16'h5090;
	ans = 16'hef57;
	#20
	A = 16'h5a14;
	B = 16'h5818;
	ans = 16'h7638;
	#20
	A = 16'hda19;
	B = 16'hd9e3;
	ans = 16'h787d;
	#20
	A = 16'h59d6;
	B = 16'h5888;
	ans = 16'h769c;
	#20
	A = 16'hc888;
	B = 16'hda20;
	ans = 16'h66f0;
	#20
	A = 16'hd6dd;
	B = 16'hd43f;
	ans = 16'h6f49;
	#20
	A = 16'h55d9;
	B = 16'hce41;
	ans = 16'he892;
	#20
	A = 16'h4cf3;
	B = 16'hd97f;
	ans = 16'heacd;
	#20
	A = 16'h5a2e;
	B = 16'h53f4;
	ans = 16'h7225;
	#20
	A = 16'h589b;
	B = 16'hd61f;
	ans = 16'hf30c;
	#20
	A = 16'hd8ef;
	B = 16'h57ff;
	ans = 16'hf4ee;
	#20
	A = 16'hd5e4;
	B = 16'h4478;
	ans = 16'hde95;
	#20
	A = 16'hd8d3;
	B = 16'hd498;
	ans = 16'h718a;
	#20
	A = 16'h5134;
	B = 16'h5864;
	ans = 16'h6db6;
	#20
	A = 16'hd52b;
	B = 16'h4aa8;
	ans = 16'he44d;
	#20
	A = 16'h5950;
	B = 16'hd3f9;
	ans = 16'hf14b;
	#20
	A = 16'hd870;
	B = 16'hd420;
	ans = 16'h7094;
	#20
	A = 16'h5381;
	B = 16'hd91e;
	ans = 16'hf0cd;
	#20
	A = 16'h59c7;
	B = 16'hd582;
	ans = 16'hf3f5;
	#20
	A = 16'hd579;
	B = 16'h5740;
	ans = 16'hf0f6;
	#20
	A = 16'hceb2;
	B = 16'hd866;
	ans = 16'h6b5d;
	#20
	A = 16'h4a1c;
	B = 16'h5ad1;
	ans = 16'h6935;
	#20
	A = 16'h5a43;
	B = 16'h57a2;
	ans = 16'h75f9;
	#20
	A = 16'h5473;
	B = 16'hd93c;
	ans = 16'hf1d2;
	#20
	A = 16'hd21b;
	B = 16'h552b;
	ans = 16'hebe3;
	#20
	A = 16'hd3e7;
	B = 16'h5995;
	ans = 16'hf184;
	#20
	A = 16'h5769;
	B = 16'hd7be;
	ans = 16'hf32c;
	#20
	A = 16'hd685;
	B = 16'hda3b;
	ans = 16'h7514;
	#20
	A = 16'hd325;
	B = 16'hd537;
	ans = 16'h6ca8;
	#20
	A = 16'hc707;
	B = 16'hda45;
	ans = 16'h6582;
	#20
	A = 16'h5bd0;
	B = 16'h4f60;
	ans = 16'h6f34;
	#20
	A = 16'hd9b2;
	B = 16'hda65;
	ans = 16'h788d;
	#20
	A = 16'h5082;
	B = 16'hd881;
	ans = 16'hed13;
	#20
	A = 16'hc763;
	B = 16'h50a9;
	ans = 16'hdc4e;
	#20
	A = 16'hda3b;
	B = 16'h5a91;
	ans = 16'hf91d;
	#20
	A = 16'hd1d6;
	B = 16'h5bc3;
	ans = 16'hf1aa;
	#20
	A = 16'h587f;
	B = 16'h4cf5;
	ans = 16'h6992;
	#20
	A = 16'hd963;
	B = 16'hcb71;
	ans = 16'h6903;
	#20
	A = 16'h5494;
	B = 16'h5857;
	ans = 16'h70f8;
	#20
	A = 16'h5a1b;
	B = 16'hd449;
	ans = 16'hf28a;
	#20
	A = 16'hd9f1;
	B = 16'hd948;
	ans = 16'h77d8;
	#20
	A = 16'hda56;
	B = 16'h48eb;
	ans = 16'he7ca;
	#20
	A = 16'h4f50;
	B = 16'h58d9;
	ans = 16'h6c6e;
	#20
	A = 16'h55d3;
	B = 16'h56d1;
	ans = 16'h70f6;
	#20
	A = 16'hcfb3;
	B = 16'hd958;
	ans = 16'h6d25;
	#20
	A = 16'h504a;
	B = 16'h58b5;
	ans = 16'h6d0c;
	#20
	A = 16'h5866;
	B = 16'h5885;
	ans = 16'h74f8;
	#20
	A = 16'hda80;
	B = 16'h4d78;
	ans = 16'hec72;
	#20
	A = 16'h4f58;
	B = 16'hdbcd;
	ans = 16'hef29;
	#20
	A = 16'h3e13;
	B = 16'h4125;
	ans = 16'h43d0;
	#20
	A = 16'h5409;
	B = 16'h5b71;
	ans = 16'h7382;
	#20
	A = 16'hdb31;
	B = 16'h5260;
	ans = 16'hf1bb;
	#20
	A = 16'hd55a;
	B = 16'hdad6;
	ans = 16'h7493;
	#20
	A = 16'hdb4d;
	B = 16'h5a6c;
	ans = 16'hf9dc;
	#20
	A = 16'h423a;
	B = 16'h596c;
	ans = 16'h6038;
	#20
	A = 16'h5558;
	B = 16'hd853;
	ans = 16'hf1c7;
	#20
	A = 16'h5818;
	B = 16'h5883;
	ans = 16'h749e;
	#20
	A = 16'h5492;
	B = 16'h598b;
	ans = 16'h7255;
	#20
	A = 16'hd75c;
	B = 16'hd86b;
	ans = 16'h7410;
	#20
	A = 16'hdbc8;
	B = 16'hdbbb;
	ans = 16'h7b85;
	#20
	A = 16'h5a04;
	B = 16'hd879;
	ans = 16'hf6ba;
	#20
	A = 16'hd58f;
	B = 16'hd204;
	ans = 16'h6c2e;
	#20
	A = 16'hcac4;
	B = 16'hd80c;
	ans = 16'h66d8;
	#20
	A = 16'hda7d;
	B = 16'h5942;
	ans = 16'hf844;
	#20
	A = 16'h5a32;
	B = 16'h5670;
	ans = 16'h74fc;
	#20
	A = 16'hda62;
	B = 16'h50c6;
	ans = 16'hef9e;
	#20
	A = 16'hdb4e;
	B = 16'hdb5d;
	ans = 16'h7ab9;
	#20
	A = 16'h4dbe;
	B = 16'h51b5;
	ans = 16'h6419;
	#20
	A = 16'hd573;
	B = 16'hc9c2;
	ans = 16'h63d8;
	#20
	A = 16'h5b50;
	B = 16'h5879;
	ans = 16'h7817;
	#20
	A = 16'hd81d;
	B = 16'h54ff;
	ans = 16'hf123;
	#20
	A = 16'hd974;
	B = 16'hd908;
	ans = 16'h76dc;
	#20
	A = 16'hda4b;
	B = 16'h567d;
	ans = 16'hf51b;
	#20
	A = 16'hd9a8;
	B = 16'hcc36;
	ans = 16'h69f4;
	#20
	A = 16'h567d;
	B = 16'h5a45;
	ans = 16'h7516;
	#20
	A = 16'hd4d4;
	B = 16'h58d1;
	ans = 16'hf1d0;
	#20
	A = 16'h590f;
	B = 16'h59d1;
	ans = 16'h775b;
	#20
	A = 16'hc2b9;
	B = 16'hdb98;
	ans = 16'h6262;
	#20
	A = 16'h5042;
	B = 16'h5890;
	ans = 16'h6cdb;
	#20
	A = 16'hcd26;
	B = 16'h5aa9;
	ans = 16'hec49;
	#20
	A = 16'hd338;
	B = 16'h59fd;
	ans = 16'hf167;
	#20
	A = 16'hdba6;
	B = 16'h4bfb;
	ans = 16'heba1;
	#20
	A = 16'h5734;
	B = 16'hda42;
	ans = 16'hf5a2;
	#20
	A = 16'h5959;
	B = 16'hdb5b;
	ans = 16'hf8eb;
	#20
	A = 16'hd8e5;
	B = 16'h5a7f;
	ans = 16'hf7f3;
	#20
	A = 16'hd946;
	B = 16'hd729;
	ans = 16'h74b8;
	#20
	A = 16'h5437;
	B = 16'hd16b;
	ans = 16'he9b5;
	#20
	A = 16'hd8e9;
	B = 16'hd618;
	ans = 16'h737b;
	#20
	A = 16'hdb8a;
	B = 16'h5b86;
	ans = 16'hfb17;
	#20
	A = 16'h5bf2;
	B = 16'hda57;
	ans = 16'hfa4c;
	#20
	A = 16'hda2c;
	B = 16'hd60e;
	ans = 16'h74ac;
	#20
	A = 16'hd54a;
	B = 16'h5989;
	ans = 16'hf352;
	#20
	A = 16'h54cd;
	B = 16'h49a4;
	ans = 16'h62c5;
	#20
	A = 16'hd529;
	B = 16'hd65e;
	ans = 16'h701b;
	#20
	A = 16'h58a6;
	B = 16'h53ce;
	ans = 16'h7089;
	#20
	A = 16'hd4f7;
	B = 16'h54e6;
	ans = 16'hee14;
	#20
	A = 16'h5561;
	B = 16'hd6f3;
	ans = 16'hf0ac;
	#20
	A = 16'hdaa6;
	B = 16'h59e1;
	ans = 16'hf8e3;
	#20
	A = 16'h59ff;
	B = 16'h5bea;
	ans = 16'h79ef;
	#20
	A = 16'h5790;
	B = 16'hd98d;
	ans = 16'hf53f;
	#20
	A = 16'hd619;
	B = 16'hd840;
	ans = 16'h727b;
	#20
	A = 16'h5b3c;
	B = 16'h48fa;
	ans = 16'h6880;
	#20
	A = 16'h5ad4;
	B = 16'h5832;
	ans = 16'h7729;
	#20
	A = 16'hcc11;
	B = 16'h568f;
	ans = 16'he6ab;
	#20
	A = 16'hd1d8;
	B = 16'hd76a;
	ans = 16'h6d6a;
	#20
	A = 16'hdb31;
	B = 16'h52eb;
	ans = 16'hf238;
	#20
	A = 16'hdb2f;
	B = 16'hd9bd;
	ans = 16'h7927;
	#20
	A = 16'h5b27;
	B = 16'hd989;
	ans = 16'hf8f3;
	#20
	A = 16'hd8ec;
	B = 16'hd945;
	ans = 16'h767c;
	#20
	A = 16'h54d4;
	B = 16'h5bb0;
	ans = 16'h74a4;
	#20
	A = 16'h5342;
	B = 16'h5a95;
	ans = 16'h71f9;
	#20
	A = 16'h59c5;
	B = 16'hda86;
	ans = 16'hf8b4;
	#20
	A = 16'h5608;
	B = 16'h5a2c;
	ans = 16'h74a7;
	#20
	A = 16'h5849;
	B = 16'hda96;
	ans = 16'hf70e;
	#20
	A = 16'hd643;
	B = 16'hd771;
	ans = 16'h71d3;
	#20
	A = 16'hd9d2;
	B = 16'h590c;
	ans = 16'hf758;
	#20
	A = 16'hd829;
	B = 16'h5ace;
	ans = 16'hf714;
	#20
	A = 16'hd57a;
	B = 16'h5bdf;
	ans = 16'hf563;
	#20
	A = 16'h5593;
	B = 16'h5842;
	ans = 16'h71ef;
	#20
	A = 16'h58a2;
	B = 16'h55a3;
	ans = 16'h7287;
	#20
	A = 16'hc283;
	B = 16'h5397;
	ans = 16'hda2e;
	#20
	A = 16'hd021;
	B = 16'h5bc4;
	ans = 16'hf002;
	#20
	A = 16'hd8e8;
	B = 16'h56f8;
	ans = 16'hf446;
	#20
	A = 16'h5bb1;
	B = 16'hdb2b;
	ans = 16'hfae4;
	#20
	A = 16'h58b9;
	B = 16'hd1eb;
	ans = 16'heefd;
	#20
	A = 16'h5963;
	B = 16'hd703;
	ans = 16'hf4b9;
	#20
	A = 16'hd6cd;
	B = 16'h5ba7;
	ans = 16'hf681;
	#20
	A = 16'hd8fe;
	B = 16'h5559;
	ans = 16'hf2ad;
	#20
	A = 16'h554d;
	B = 16'hd18a;
	ans = 16'heb57;
	#20
	A = 16'h50c8;
	B = 16'h4073;
	ans = 16'h5551;
	#20
	A = 16'hd65d;
	B = 16'hd7ee;
	ans = 16'h724f;
	#20
	A = 16'hdad8;
	B = 16'hd43d;
	ans = 16'h7340;
	#20
	A = 16'hd828;
	B = 16'h3b76;
	ans = 16'hd7c1;
	#20
	A = 16'hda9c;
	B = 16'hd1dd;
	ans = 16'h70d8;
	#20
	A = 16'h59d1;
	B = 16'h5a81;
	ans = 16'h78bb;
	#20
	A = 16'hd64f;
	B = 16'h59a1;
	ans = 16'hf470;
	#20
	A = 16'hda48;
	B = 16'h49b4;
	ans = 16'he87a;
	#20
	A = 16'h5b91;
	B = 16'h59d0;
	ans = 16'h797f;
	#20
	A = 16'hd74e;
	B = 16'h5891;
	ans = 16'hf42b;
	#20
	A = 16'h577d;
	B = 16'hd45f;
	ans = 16'hf017;
	#20
	A = 16'hdb95;
	B = 16'h541a;
	ans = 16'hf3c6;
	#20
	A = 16'hd514;
	B = 16'hc88f;
	ans = 16'h61ca;
	#20
	A = 16'h5b67;
	B = 16'h55a0;
	ans = 16'h7534;
	#20
	A = 16'h58da;
	B = 16'h56e0;
	ans = 16'h742b;
	#20
	A = 16'h5286;
	B = 16'hdacf;
	ans = 16'hf18d;
	#20
	A = 16'h5794;
	B = 16'hd989;
	ans = 16'hf53e;
	#20
	A = 16'hdada;
	B = 16'hd656;
	ans = 16'h756d;
	#20
	A = 16'h5974;
	B = 16'hd16b;
	ans = 16'hef63;
	#20
	A = 16'hda45;
	B = 16'hd8a4;
	ans = 16'h7746;
	#20
	A = 16'hda98;
	B = 16'hd55c;
	ans = 16'h746b;
	#20
	A = 16'h58ce;
	B = 16'hd9e7;
	ans = 16'hf717;
	#20
	A = 16'h57a1;
	B = 16'h50b8;
	ans = 16'h6c80;
	#20
	A = 16'h58f8;
	B = 16'hd56f;
	ans = 16'hf2c0;
	#20
	A = 16'h57d3;
	B = 16'h59cd;
	ans = 16'h75ac;
	#20
	A = 16'hcc29;
	B = 16'h5840;
	ans = 16'he86c;
	#20
	A = 16'h5b7e;
	B = 16'hd507;
	ans = 16'hf4b5;
	#20
	A = 16'h5590;
	B = 16'hdbbb;
	ans = 16'hf560;
	#20
	A = 16'h5624;
	B = 16'hd491;
	ans = 16'hef03;
	#20
	A = 16'hd6a6;
	B = 16'h578f;
	ans = 16'hf248;
	#20
	A = 16'h5a7e;
	B = 16'h5aa6;
	ans = 16'h7965;
	#20
	A = 16'hd40f;
	B = 16'hd81f;
	ans = 16'h702e;
	#20
	A = 16'hdaa4;
	B = 16'h4bd3;
	ans = 16'hea7f;
	#20
	A = 16'hd55b;
	B = 16'hd99b;
	ans = 16'h7381;
	#20
	A = 16'hdb2d;
	B = 16'hdb33;
	ans = 16'h7a75;
	#20
	A = 16'h55c1;
	B = 16'h55b6;
	ans = 16'h701c;
	#20
	A = 16'h5b6f;
	B = 16'hd5c0;
	ans = 16'hf558;
	#20
	A = 16'hd9fa;
	B = 16'h59e7;
	ans = 16'hf869;
	#20
	A = 16'h5602;
	B = 16'h59e1;
	ans = 16'h746a;
	#20
	A = 16'h5b78;
	B = 16'h5750;
	ans = 16'h76d4;
	#20
	A = 16'hdb79;
	B = 16'h5918;
	ans = 16'hf8c2;
	#20
	A = 16'h5a98;
	B = 16'h585c;
	ans = 16'h7730;
	#20
	A = 16'hd77b;
	B = 16'hda6b;
	ans = 16'h7600;
	#20
	A = 16'hd0f8;
	B = 16'hd574;
	ans = 16'h6ac6;
	#20
	A = 16'hd8fc;
	B = 16'h58e4;
	ans = 16'hf618;
	#20
	A = 16'h5a4a;
	B = 16'hd37f;
	ans = 16'hf1e5;
	#20
	A = 16'h53d4;
	B = 16'h5a76;
	ans = 16'h7252;
	#20
	A = 16'h59ba;
	B = 16'hd834;
	ans = 16'hf604;
	#20
	A = 16'hd53d;
	B = 16'h5955;
	ans = 16'hf2fc;
	#20
	A = 16'h4ffa;
	B = 16'h5884;
	ans = 16'h6c81;
	#20
	A = 16'h5bb6;
	B = 16'h5111;
	ans = 16'h70e2;
	#20
	A = 16'h5696;
	B = 16'h51d3;
	ans = 16'h6ccb;
	#20
	A = 16'hd8dd;
	B = 16'h4a68;
	ans = 16'he7ca;
	#20
	A = 16'hda2d;
	B = 16'h5729;
	ans = 16'hf587;
	#20
	A = 16'h5b52;
	B = 16'hdb42;
	ans = 16'hfaa4;
	#20
	A = 16'hd4e5;
	B = 16'h59ee;
	ans = 16'hf341;
	#20
	A = 16'h59df;
	B = 16'h4cff;
	ans = 16'h6b55;
	#20
	A = 16'h57a8;
	B = 16'h55df;
	ans = 16'h719e;
	#20
	A = 16'h5a39;
	B = 16'hd875;
	ans = 16'hf6ef;
	#20
	A = 16'h58a6;
	B = 16'h4d08;
	ans = 16'h69d9;
	#20
	A = 16'hd8b7;
	B = 16'h59ec;
	ans = 16'hf6fb;
	#20
	A = 16'hd918;
	B = 16'h5968;
	ans = 16'hf6e2;
	#20
	A = 16'h482a;
	B = 16'h5004;
	ans = 16'h5c2e;
	#20
	A = 16'h5488;
	B = 16'hd434;
	ans = 16'hecc3;
	#20
	A = 16'hd4b5;
	B = 16'h5839;
	ans = 16'hf0f8;
	#20
	A = 16'hd40e;
	B = 16'hd43a;
	ans = 16'h6c49;
	#20
	A = 16'hd4cc;
	B = 16'hd7e5;
	ans = 16'h70bc;
	#20
	A = 16'hdbf0;
	B = 16'h5b64;
	ans = 16'hfb55;
	#20
	A = 16'h5a96;
	B = 16'h56c1;
	ans = 16'h758f;
	#20
	A = 16'h53aa;
	B = 16'hd3d1;
	ans = 16'heb7d;
	#20
	A = 16'hdab8;
	B = 16'h5b62;
	ans = 16'hfa33;
	#20
	A = 16'h5a03;
	B = 16'h59c2;
	ans = 16'h7854;
	#20
	A = 16'h596f;
	B = 16'hd44f;
	ans = 16'hf1da;
	#20
	A = 16'h5b1b;
	B = 16'h59ad;
	ans = 16'h790b;
	#20
	A = 16'h5b57;
	B = 16'h5a46;
	ans = 16'h79c1;
	#20
	A = 16'hcd7a;
	B = 16'hd828;
	ans = 16'h69b1;
	#20
	A = 16'hd5cb;
	B = 16'hd421;
	ans = 16'h6dfb;
	#20
	A = 16'hdaf9;
	B = 16'h564e;
	ans = 16'hf57f;
	#20
	A = 16'hdac5;
	B = 16'hd7a2;
	ans = 16'h7675;
	#20
	A = 16'hd81e;
	B = 16'hda20;
	ans = 16'h764e;
	#20
	A = 16'h5bbb;
	B = 16'h5a76;
	ans = 16'h7a3e;
	#20
	A = 16'hd5a4;
	B = 16'hd68d;
	ans = 16'h709e;
	#20
	A = 16'h5228;
	B = 16'hd5f8;
	ans = 16'hec98;
	#20
	A = 16'hd946;
	B = 16'hd874;
	ans = 16'h75df;
	#20
	A = 16'hd7d5;
	B = 16'hdb47;
	ans = 16'h7720;
	#20
	A = 16'hd676;
	B = 16'h54ae;
	ans = 16'hef8f;
	#20
	A = 16'h5912;
	B = 16'h5682;
	ans = 16'h7420;
	#20
	A = 16'hd5db;
	B = 16'hd4a6;
	ans = 16'h6ece;
	#20
	A = 16'h59d4;
	B = 16'h593f;
	ans = 16'h77a5;
	#20
	A = 16'hd4d5;
	B = 16'h56c2;
	ans = 16'hf015;
	#20
	A = 16'h5651;
	B = 16'h54f1;
	ans = 16'h6fce;
	#20
	A = 16'h5ad2;
	B = 16'h5b01;
	ans = 16'h79f9;
	#20
	A = 16'hd7e2;
	B = 16'h4de3;
	ans = 16'he9cd;
	#20
	A = 16'h4b38;
	B = 16'h53d7;
	ans = 16'h6313;
	#20
	A = 16'h4f2c;
	B = 16'hdae6;
	ans = 16'hee2f;
	#20
	A = 16'h5108;
	B = 16'hd546;
	ans = 16'heaa2;
	#20
	A = 16'h572a;
	B = 16'h5b29;
	ans = 16'h7669;
	#20
	A = 16'h549a;
	B = 16'hd03d;
	ans = 16'he8e0;
	#20
	A = 16'hd887;
	B = 16'hdbc8;
	ans = 16'h7867;
	#20
	A = 16'h4bdc;
	B = 16'h58ab;
	ans = 16'h6896;
	#20
	A = 16'hd3ca;
	B = 16'h5ac5;
	ans = 16'hf297;
	#20
	A = 16'hc1b4;
	B = 16'hdafb;
	ans = 16'h60fa;
	#20
	A = 16'hd45e;
	B = 16'h536d;
	ans = 16'hec0e;
	#20
	A = 16'h55dc;
	B = 16'hd841;
	ans = 16'hf23b;
	#20
	A = 16'h4687;
	B = 16'hd8cc;
	ans = 16'he3d4;
	#20
	A = 16'h599f;
	B = 16'h3f21;
	ans = 16'h5d02;
	#20
	A = 16'hda28;
	B = 16'h57ba;
	ans = 16'hf5f2;
	#20
	A = 16'hd0a8;
	B = 16'h582a;
	ans = 16'hecd9;
	#20
	A = 16'hcc84;
	B = 16'h5ae8;
	ans = 16'hebcc;
	#20
	A = 16'hd891;
	B = 16'hd072;
	ans = 16'h6d13;
	#20
	A = 16'h5b52;
	B = 16'hd986;
	ans = 16'hf90e;
	#20
	A = 16'hd7d4;
	B = 16'hdab9;
	ans = 16'h7694;
	#20
	A = 16'h5b1c;
	B = 16'h54f1;
	ans = 16'h7464;
	#20
	A = 16'hcad7;
	B = 16'h5812;
	ans = 16'he6f6;
	#20
	A = 16'h59de;
	B = 16'h58b2;
	ans = 16'h76e3;
	#20
	A = 16'hcd0d;
	B = 16'hdb8d;
	ans = 16'h6cc4;
	#20
	A = 16'hda44;
	B = 16'hda11;
	ans = 16'h78c0;
	#20
	A = 16'h5786;
	B = 16'h58a3;
	ans = 16'h745c;
	#20
	A = 16'hd9d4;
	B = 16'h55f8;
	ans = 16'hf459;
	#20
	A = 16'h5aa9;
	B = 16'h5743;
	ans = 16'h760c;
	#20
	A = 16'h5b13;
	B = 16'h5ba8;
	ans = 16'h7ac5;
	#20
	A = 16'h52a5;
	B = 16'h57bf;
	ans = 16'h6e6f;
	#20
	A = 16'hd675;
	B = 16'h59f0;
	ans = 16'hf4cb;
	#20
	A = 16'h51e9;
	B = 16'hdaa0;
	ans = 16'hf0e5;
	#20
	A = 16'hd522;
	B = 16'hd755;
	ans = 16'h70b4;
	#20
	A = 16'hd530;
	B = 16'h535b;
	ans = 16'hecc5;
	#20
	A = 16'h54b5;
	B = 16'h5613;
	ans = 16'h6f26;
	#20
	A = 16'h55b6;
	B = 16'hd1b4;
	ans = 16'hec12;
	#20
	A = 16'h5a4c;
	B = 16'h57e6;
	ans = 16'h7638;
	#20
	A = 16'hd7b4;
	B = 16'h593f;
	ans = 16'hf50d;
	#20
	A = 16'h4f78;
	B = 16'hdbd3;
	ans = 16'hef4e;
	#20
	A = 16'hd5e2;
	B = 16'h5b5f;
	ans = 16'hf56c;
	#20
	A = 16'h5772;
	B = 16'hd921;
	ans = 16'hf4c6;
	#20
	A = 16'h5585;
	B = 16'h53c2;
	ans = 16'h6d5a;
	#20
	A = 16'hdb41;
	B = 16'h5a5d;
	ans = 16'hf9c5;
	#20
	A = 16'h5228;
	B = 16'h4efe;
	ans = 16'h6561;
	#20
	A = 16'h5a55;
	B = 16'hd5e8;
	ans = 16'hf4ad;
	#20
	A = 16'h4fcd;
	B = 16'h5b50;
	ans = 16'h6f21;
	#20
	A = 16'hcfa2;
	B = 16'h40ec;
	ans = 16'hd4b2;
	#20
	A = 16'hd410;
	B = 16'h5851;
	ans = 16'hf062;
	#20
	A = 16'h4a65;
	B = 16'hd1d1;
	ans = 16'he0a6;
	#20
	A = 16'h58fe;
	B = 16'hd0dc;
	ans = 16'hee11;
	#20
	A = 16'hd8e6;
	B = 16'h5a9d;
	ans = 16'hf80d;
	#20
	A = 16'h4f5d;
	B = 16'h5b6e;
	ans = 16'h6ed7;
	#20
	A = 16'hdbe8;
	B = 16'h584a;
	ans = 16'hf83d;
	#20
	A = 16'hdad2;
	B = 16'h5655;
	ans = 16'hf566;
	#20
	A = 16'hd4c1;
	B = 16'hca59;
	ans = 16'h638b;
	#20
	A = 16'h5780;
	B = 16'hd91d;
	ans = 16'hf4cb;
	#20
	A = 16'h58f1;
	B = 16'hc98e;
	ans = 16'he6dd;
	#20
	A = 16'hcebd;
	B = 16'h53a3;
	ans = 16'he66f;
	#20
	A = 16'hd9b3;
	B = 16'h537b;
	ans = 16'hf154;
	#20
	A = 16'h5428;
	B = 16'hd8ad;
	ans = 16'hf0dc;
	#20
	A = 16'h5b6a;
	B = 16'h54eb;
	ans = 16'h748f;
	#20
	A = 16'h58ed;
	B = 16'h547c;
	ans = 16'h7186;
	#20
	A = 16'hd68d;
	B = 16'h5b16;
	ans = 16'hf5cd;
	#20
	A = 16'hd2b4;
	B = 16'hd0a8;
	ans = 16'h67ce;
	#20
	A = 16'h5923;
	B = 16'h5bad;
	ans = 16'h78ee;
	#20
	A = 16'h588a;
	B = 16'hcf23;
	ans = 16'hec0d;
	#20
	A = 16'h4e50;
	B = 16'h5a28;
	ans = 16'h6cdc;
	#20
	A = 16'hd86d;
	B = 16'hd619;
	ans = 16'h72bf;
	#20
	A = 16'hdaed;
	B = 16'hd870;
	ans = 16'h77af;
	#20
	A = 16'hd396;
	B = 16'h5866;
	ans = 16'hf02c;
	#20
	A = 16'h5872;
	B = 16'hd61e;
	ans = 16'hf2cc;
	#20
	A = 16'hd937;
	B = 16'hd70f;
	ans = 16'h749a;
	#20
	A = 16'h5953;
	B = 16'h5868;
	ans = 16'h75dd;
	#20
	A = 16'h563f;
	B = 16'h58cc;
	ans = 16'h737e;
	#20
	A = 16'hd290;
	B = 16'hd512;
	ans = 16'h6c29;
	#20
	A = 16'hccfe;
	B = 16'h4e04;
	ans = 16'hdf82;
	#20
	A = 16'h5af1;
	B = 16'h555f;
	ans = 16'h74a9;
	#20
	A = 16'h5984;
	B = 16'h5b99;
	ans = 16'h793d;
	#20
	A = 16'hd98a;
	B = 16'hd868;
	ans = 16'h761a;
	#20
	A = 16'h53ec;
	B = 16'h59db;
	ans = 16'h71cc;
	#20
	A = 16'h4959;
	B = 16'hdb4f;
	ans = 16'he8e3;
	#20
	A = 16'hd6dd;
	B = 16'h54e9;
	ans = 16'hf036;
	#20
	A = 16'h4f4e;
	B = 16'hd9bf;
	ans = 16'hed3f;
	#20
	A = 16'h536e;
	B = 16'hd1cd;
	ans = 16'he963;
	#20
	A = 16'h597e;
	B = 16'h532d;
	ans = 16'h70ed;
	#20
	A = 16'h585e;
	B = 16'hd447;
	ans = 16'hf0ac;
	#20
	A = 16'hcd15;
	B = 16'hd715;
	ans = 16'h6880;
	#20
	A = 16'h5661;
	B = 16'hd4a5;
	ans = 16'hef68;
	#20
	A = 16'h50d8;
	B = 16'hdb2f;
	ans = 16'hf059;
	#20
	A = 16'h4b1e;
	B = 16'hd1e8;
	ans = 16'he141;
	#20
	A = 16'hd28f;
	B = 16'h548e;
	ans = 16'heb78;
	#20
	A = 16'h5a9d;
	B = 16'hda02;
	ans = 16'hf8f7;
	#20
	A = 16'hd741;
	B = 16'hd571;
	ans = 16'h70ef;
	#20
	A = 16'h56a5;
	B = 16'hd8bf;
	ans = 16'hf3e2;
	#20
	A = 16'h542b;
	B = 16'hd4c9;
	ans = 16'hecfc;
	#20
	A = 16'hd41f;
	B = 16'h590d;
	ans = 16'hf134;
	#20
	A = 16'hd840;
	B = 16'h5948;
	ans = 16'hf59c;
	#20
	A = 16'h4e4b;
	B = 16'h5bc3;
	ans = 16'h6e1b;
	#20
	A = 16'h5873;
	B = 16'h58ba;
	ans = 16'h7542;
	#20
	A = 16'hd83f;
	B = 16'hd7d2;
	ans = 16'h7427;
	#20
	A = 16'h5a34;
	B = 16'h5b33;
	ans = 16'h7995;
	#20
	A = 16'hd7e4;
	B = 16'hd12b;
	ans = 16'h6d19;
	#20
	A = 16'h5b57;
	B = 16'hd367;
	ans = 16'hf2cb;
	#20
	A = 16'hda53;
	B = 16'hd8d3;
	ans = 16'h77a1;
	#20
	A = 16'hda06;
	B = 16'h57cc;
	ans = 16'hf5df;
	#20
	A = 16'h59fa;
	B = 16'h4ab6;
	ans = 16'h6903;
	#20
	A = 16'hd9b8;
	B = 16'hd9b5;
	ans = 16'h7814;
	#20
	A = 16'h5963;
	B = 16'h59e1;
	ans = 16'h77eb;
	#20
	A = 16'hda31;
	B = 16'h50a2;
	ans = 16'hef2c;
	#20
	A = 16'h5a54;
	B = 16'hd0a7;
	ans = 16'hef5c;
	#20
	A = 16'h49f0;
	B = 16'h5aa4;
	ans = 16'h68ee;
	#20
	A = 16'h58f7;
	B = 16'h4b10;
	ans = 16'h6862;
	#20
	A = 16'h5a2f;
	B = 16'hd816;
	ans = 16'hf651;
	#20
	A = 16'hd0ef;
	B = 16'h5169;
	ans = 16'he6ac;
	#20
	A = 16'hdab8;
	B = 16'hda36;
	ans = 16'h7937;
	#20
	A = 16'hd30a;
	B = 16'hcc17;
	ans = 16'h6332;
	#20
	A = 16'hd9d3;
	B = 16'hd90d;
	ans = 16'h775b;
	#20
	A = 16'hd1eb;
	B = 16'hd86b;
	ans = 16'h6e89;
	#20
	A = 16'hcb54;
	B = 16'hd7c7;
	ans = 16'h6720;
	#20
	A = 16'h52b8;
	B = 16'hd4b6;
	ans = 16'hebea;
	#20
	A = 16'hda04;
	B = 16'h58ed;
	ans = 16'hf768;
	#20
	A = 16'h5be5;
	B = 16'h4ea5;
	ans = 16'h6e8f;
	#20
	A = 16'h5b1e;
	B = 16'hd986;
	ans = 16'hf8ea;
	#20
	A = 16'hdbf3;
	B = 16'h408c;
	ans = 16'he085;
	#20
	A = 16'h5438;
	B = 16'hdadf;
	ans = 16'hf33f;
	#20
	A = 16'hd09c;
	B = 16'hdb85;
	ans = 16'h7055;
	#20
	A = 16'hdb61;
	B = 16'hd992;
	ans = 16'h7923;
	#20
	A = 16'h3f1f;
	B = 16'hccc6;
	ans = 16'hd040;
	#20
	A = 16'h576b;
	B = 16'h5a11;
	ans = 16'h75a0;
	#20
	A = 16'hdbe8;
	B = 16'h59cf;
	ans = 16'hf9be;
	#20
	A = 16'h5705;
	B = 16'h55b5;
	ans = 16'h7102;
	#20
	A = 16'h5704;
	B = 16'h56db;
	ans = 16'h7203;
	#20
	A = 16'h5b36;
	B = 16'hdbc2;
	ans = 16'hfafe;
	#20
	A = 16'hda48;
	B = 16'hce8b;
	ans = 16'h6d23;
	#20
	A = 16'h5835;
	B = 16'hdbcb;
	ans = 16'hf819;
	#20
	A = 16'h5613;
	B = 16'hd900;
	ans = 16'hf398;
	#20
	A = 16'hd87a;
	B = 16'hda0d;
	ans = 16'h76c6;
	#20
	A = 16'h5a5f;
	B = 16'h51db;
	ans = 16'h70aa;
	#20
	A = 16'h5b17;
	B = 16'h5b2e;
	ans = 16'h7a5d;
	#20
	A = 16'hd4fe;
	B = 16'h5a78;
	ans = 16'hf409;
	#20
	A = 16'h57a2;
	B = 16'h5934;
	ans = 16'h74f7;
	#20
	A = 16'hd586;
	B = 16'h4d1a;
	ans = 16'he70b;
	#20
	A = 16'hd76b;
	B = 16'hd873;
	ans = 16'h7420;
	#20
	A = 16'hdae2;
	B = 16'h5729;
	ans = 16'hf629;
	#20
	A = 16'h579d;
	B = 16'h51c1;
	ans = 16'h6d7a;
	#20
	A = 16'hda1c;
	B = 16'hced0;
	ans = 16'h6d34;
	#20
	A = 16'h4d03;
	B = 16'h543b;
	ans = 16'h654d;
	#20
	A = 16'hcd7c;
	B = 16'h4ae7;
	ans = 16'hdcbb;
	#20
	A = 16'hd6ca;
	B = 16'hdb71;
	ans = 16'h7651;
	#20
	A = 16'h58b2;
	B = 16'h5b92;
	ans = 16'h7871;
	#20
	A = 16'hdb91;
	B = 16'hd715;
	ans = 16'h76b3;
	#20
	A = 16'hd919;
	B = 16'hd894;
	ans = 16'h75d6;
	#20
	A = 16'hd8d1;
	B = 16'hd9d1;
	ans = 16'h7701;
	#20
	A = 16'h5a39;
	B = 16'hda59;
	ans = 16'hf8f0;
	#20
	A = 16'hdb7c;
	B = 16'h5033;
	ans = 16'hefdb;
	#20
	A = 16'h5b4b;
	B = 16'h5acd;
	ans = 16'h7a33;
	#20
	A = 16'h51cf;
	B = 16'hdbb8;
	ans = 16'hf19b;
	#20
	A = 16'hdb61;
	B = 16'hd67a;
	ans = 16'h75f9;
	#20
	A = 16'hdab6;
	B = 16'hd930;
	ans = 16'h785a;
	#20
	A = 16'hd642;
	B = 16'hdaeb;
	ans = 16'h7569;
	#20
	A = 16'hd32b;
	B = 16'hd966;
	ans = 16'h70d6;
	#20
	A = 16'h439a;
	B = 16'h5030;
	ans = 16'h57f5;
	#20
	A = 16'hd922;
	B = 16'h457f;
	ans = 16'he30d;
	#20
	A = 16'h5a53;
	B = 16'hdbf4;
	ans = 16'hfa4a;
	#20
	A = 16'hd41a;
	B = 16'h5b23;
	ans = 16'hf351;
	#20
	A = 16'hd7a2;
	B = 16'hc875;
	ans = 16'h6441;
	#20
	A = 16'h511c;
	B = 16'h4ddd;
	ans = 16'h637d;
	#20
	A = 16'h5950;
	B = 16'hcdb0;
	ans = 16'heb8e;
	#20
	A = 16'h59d1;
	B = 16'h5a04;
	ans = 16'h7860;
	#20
	A = 16'h59da;
	B = 16'hd723;
	ans = 16'hf538;
	#20
	A = 16'h582d;
	B = 16'h51c4;
	ans = 16'h6e05;
	#20
	A = 16'hdb49;
	B = 16'h53c3;
	ans = 16'hf311;
	#20
	A = 16'h56bb;
	B = 16'hcf5a;
	ans = 16'hea2f;
	#20
	A = 16'h59a8;
	B = 16'hd1ce;
	ans = 16'hf01b;
	#20
	A = 16'hd63a;
	B = 16'h59bd;
	ans = 16'hf477;
	#20
	A = 16'hd41e;
	B = 16'hd9f8;
	ans = 16'h7225;
	#20
	A = 16'h5518;
	B = 16'hdaf0;
	ans = 16'hf46b;
	#20
	A = 16'hd59a;
	B = 16'h5224;
	ans = 16'hec4d;
	#20
	A = 16'h557b;
	B = 16'hd775;
	ans = 16'hf11c;
	#20
	A = 16'hd62a;
	B = 16'h59b4;
	ans = 16'hf465;
	#20
	A = 16'hb88f;
	B = 16'h58ed;
	ans = 16'hd59d;
	#20
	A = 16'hda7c;
	B = 16'h56ab;
	ans = 16'hf568;
	#20
	A = 16'hd9fd;
	B = 16'h5ba5;
	ans = 16'hf9b9;
	#20
	A = 16'h506f;
	B = 16'hd9c8;
	ans = 16'hee68;
	#20
	A = 16'hcf4b;
	B = 16'h4e85;
	ans = 16'he1f1;
	#20
	A = 16'hda8f;
	B = 16'h4ff0;
	ans = 16'hee82;
	#20
	A = 16'hdaca;
	B = 16'hd0f8;
	ans = 16'h7037;
	#20
	A = 16'hd587;
	B = 16'hcd8a;
	ans = 16'h67a7;
	#20
	A = 16'h5ad3;
	B = 16'h5ae4;
	ans = 16'h79e1;
	#20
	A = 16'hdb72;
	B = 16'h5a2a;
	ans = 16'hf9bd;
	#20
	A = 16'hdb4c;
	B = 16'h5b96;
	ans = 16'hfaeb;
	#20
	A = 16'hd7a4;
	B = 16'h4a50;
	ans = 16'he607;
	#20
	A = 16'h5946;
	B = 16'h58a1;
	ans = 16'h761a;
	#20
	A = 16'h582e;
	B = 16'h5bb6;
	ans = 16'h7807;
	#20
	A = 16'h5b81;
	B = 16'hcc67;
	ans = 16'hec21;
	#20
	A = 16'h55e1;
	B = 16'hd7b8;
	ans = 16'hf1ac;
	#20
	A = 16'h5156;
	B = 16'h5236;
	ans = 16'h6825;
	#20
	A = 16'hdb2e;
	B = 16'hd800;
	ans = 16'h772e;
	#20
	A = 16'hd09b;
	B = 16'hd690;
	ans = 16'h6b8e;
	#20
	A = 16'h582a;
	B = 16'hd0c0;
	ans = 16'hecf2;
	#20
	A = 16'hd937;
	B = 16'h5ab2;
	ans = 16'hf85d;
	#20
	A = 16'hc825;
	B = 16'h59ea;
	ans = 16'he621;
	#20
	A = 16'hca83;
	B = 16'h5a29;
	ans = 16'he904;
	#20
	A = 16'hcafd;
	B = 16'h5673;
	ans = 16'he5a2;
	#20
	A = 16'h5ab1;
	B = 16'h52b4;
	ans = 16'h719b;
	#20
	A = 16'h53dd;
	B = 16'h5564;
	ans = 16'h6d4c;
	#20
	A = 16'hda40;
	B = 16'hd8b6;
	ans = 16'h775c;
	#20
	A = 16'h5b60;
	B = 16'hd7f4;
	ans = 16'hf755;
	#20
	A = 16'hd442;
	B = 16'h59c2;
	ans = 16'hf221;
	#20
	A = 16'hd914;
	B = 16'hd020;
	ans = 16'h6d3d;
	#20
	A = 16'hd48c;
	B = 16'hd7fd;
	ans = 16'h708a;
	#20
	A = 16'h5817;
	B = 16'h5933;
	ans = 16'h7551;
	#20
	A = 16'hd4e5;
	B = 16'hd48e;
	ans = 16'h6d93;
	#20
	A = 16'h596e;
	B = 16'h580f;
	ans = 16'h7582;
	#20
	A = 16'hd257;
	B = 16'hd589;
	ans = 16'h6c63;
	#20
	A = 16'h55c5;
	B = 16'h5731;
	ans = 16'h7130;
	#20
	A = 16'hdaaf;
	B = 16'hd213;
	ans = 16'h7113;
	#20
	A = 16'h5be3;
	B = 16'h59df;
	ans = 16'h79ca;
	#20
	A = 16'hd87e;
	B = 16'h572a;
	ans = 16'hf406;
	#20
	A = 16'h54c7;
	B = 16'h5425;
	ans = 16'h6cf3;
	#20
	A = 16'h58e1;
	B = 16'h58ba;
	ans = 16'h75c4;
	#20
	A = 16'hd913;
	B = 16'hd9f6;
	ans = 16'h7790;
	#20
	A = 16'h58b4;
	B = 16'h53e7;
	ans = 16'h70a5;
	#20
	A = 16'h5a3d;
	B = 16'h556f;
	ans = 16'h743d;
	#20
	A = 16'h5ae1;
	B = 16'h4db0;
	ans = 16'h6ce4;
	#20
	A = 16'h5b9e;
	B = 16'hce9b;
	ans = 16'hee4a;
	#20
	A = 16'h4e49;
	B = 16'h57b4;
	ans = 16'h6a0d;
	#20
	A = 16'hd303;
	B = 16'hdbe6;
	ans = 16'h72ec;
	#20
	A = 16'h584a;
	B = 16'h5538;
	ans = 16'h7199;
	#20
	A = 16'h4ce5;
	B = 16'h4f63;
	ans = 16'h6085;
	#20
	A = 16'h5b61;
	B = 16'hda1c;
	ans = 16'hf9a3;
	#20
	A = 16'hb503;
	B = 16'h5293;
	ans = 16'hcc1e;
	#20
	A = 16'hd9ad;
	B = 16'hd30c;
	ans = 16'h7100;
	#20
	A = 16'hd620;
	B = 16'hd04f;
	ans = 16'h6a99;
	#20
	A = 16'hda66;
	B = 16'hd7d7;
	ans = 16'h7645;
	#20
	A = 16'h578c;
	B = 16'hd966;
	ans = 16'hf518;
	#20
	A = 16'hda57;
	B = 16'hda8a;
	ans = 16'h792f;
	#20
	A = 16'hd969;
	B = 16'h5af9;
	ans = 16'hf8b7;
	#20
	A = 16'h4fd7;
	B = 16'h52d9;
	ans = 16'h66b6;
	#20
	A = 16'hce36;
	B = 16'h530d;
	ans = 16'he579;
	#20
	A = 16'hd6a1;
	B = 16'hd998;
	ans = 16'h74a3;
	#20
	A = 16'h53d2;
	B = 16'hda49;
	ans = 16'hf225;
	#20
	A = 16'h4c89;
	B = 16'h4c62;
	ans = 16'h5cf8;
	#20
	A = 16'hd11a;
	B = 16'h5633;
	ans = 16'hebe8;
	#20
	A = 16'hd9d1;
	B = 16'hd151;
	ans = 16'h6fbb;
	#20
	A = 16'h5a49;
	B = 16'hd808;
	ans = 16'hf656;
	#20
	A = 16'hd889;
	B = 16'hda8a;
	ans = 16'h776a;
	#20
	A = 16'hd059;
	B = 16'hd0a6;
	ans = 16'h650d;
	#20
	A = 16'hd2c0;
	B = 16'h5a22;
	ans = 16'hf12d;
	#20
	A = 16'h5905;
	B = 16'h5b91;
	ans = 16'h78bf;
	#20
	A = 16'hcfa7;
	B = 16'hdb56;
	ans = 16'h6f04;
	#20
	A = 16'h59bb;
	B = 16'h5826;
	ans = 16'h75f1;
	#20
	A = 16'h5a41;
	B = 16'hd586;
	ans = 16'hf451;
	#20
	A = 16'hd35b;
	B = 16'hd987;
	ans = 16'h7115;
	#20
	A = 16'hd948;
	B = 16'hd9c3;
	ans = 16'h779b;
	#20
	A = 16'hdadf;
	B = 16'h59fd;
	ans = 16'hf925;
	#20
	A = 16'h59db;
	B = 16'h5474;
	ans = 16'h7285;
	#20
	A = 16'h580f;
	B = 16'h58a9;
	ans = 16'h74ba;
	#20
	A = 16'hd6d8;
	B = 16'h58d9;
	ans = 16'hf426;
	#20
	A = 16'hd93d;
	B = 16'h5a42;
	ans = 16'hf819;
	#20
	A = 16'hcaec;
	B = 16'h587a;
	ans = 16'he7bf;
	#20
	A = 16'h54ad;
	B = 16'h5a5e;
	ans = 16'h7371;
	#20
	A = 16'hda01;
	B = 16'hd7f3;
	ans = 16'h75f7;
	#20
	A = 16'h5988;
	B = 16'hcde9;
	ans = 16'hec16;
	#20
	A = 16'h59f2;
	B = 16'h5bc5;
	ans = 16'h79c6;
	#20
	A = 16'h5b20;
	B = 16'h5340;
	ans = 16'h7275;
	#20
	A = 16'h561d;
	B = 16'hd712;
	ans = 16'hf167;
	#20
	A = 16'hd953;
	B = 16'hd93f;
	ans = 16'h76fc;
	#20
	A = 16'hc930;
	B = 16'h4941;
	ans = 16'hd6d0;
	#20
	A = 16'h5b55;
	B = 16'hd00d;
	ans = 16'hef6d;
	#20
	A = 16'hda9d;
	B = 16'hd980;
	ans = 16'h788c;
	#20
	A = 16'hd8f4;
	B = 16'h5882;
	ans = 16'hf595;
	#20
	A = 16'hd70f;
	B = 16'h511f;
	ans = 16'hec85;
	#20
	A = 16'hd317;
	B = 16'hcf16;
	ans = 16'h6648;
	#20
	A = 16'h547a;
	B = 16'h569b;
	ans = 16'h6f64;
	#20
	A = 16'hd956;
	B = 16'hda74;
	ans = 16'h784e;
	#20
	A = 16'h540e;
	B = 16'h5489;
	ans = 16'h6c99;
	#20
	A = 16'hdae9;
	B = 16'hdb04;
	ans = 16'h7a0f;
	#20
	A = 16'hd80c;
	B = 16'h54ec;
	ans = 16'hf0fb;
	#20
	A = 16'hd630;
	B = 16'h505b;
	ans = 16'heabd;
	#20
	A = 16'h5b5e;
	B = 16'hd98d;
	ans = 16'hf91d;
	#20
	A = 16'hdbbd;
	B = 16'hd0f0;
	ans = 16'h70c7;
	#20
	A = 16'hda43;
	B = 16'hd76e;
	ans = 16'h75d1;
	#20
	A = 16'h5748;
	B = 16'h5591;
	ans = 16'h7111;
	#20
	A = 16'h5673;
	B = 16'h5973;
	ans = 16'h7465;
	#20
	A = 16'h5403;
	B = 16'hdaf5;
	ans = 16'hf2fa;
	#20
	A = 16'hd861;
	B = 16'hdb10;
	ans = 16'h77bb;
	#20
	A = 16'h4f23;
	B = 16'h51c4;
	ans = 16'h6525;
	#20
	A = 16'h509c;
	B = 16'h4ec0;
	ans = 16'h63c7;
	#20
	A = 16'hda20;
	B = 16'hdb1b;
	ans = 16'h7971;
	#20
	A = 16'hda6f;
	B = 16'h5ab0;
	ans = 16'hf961;
	#20
	A = 16'hd49b;
	B = 16'hd53b;
	ans = 16'h6e06;
	#20
	A = 16'h4f39;
	B = 16'h5931;
	ans = 16'h6cb0;
	#20
	A = 16'h5bb9;
	B = 16'h56a5;
	ans = 16'h766a;
	#20
	A = 16'h58f1;
	B = 16'hd7e2;
	ans = 16'hf4de;
	#20
	A = 16'h5b2e;
	B = 16'hd723;
	ans = 16'hf668;
	#20
	A = 16'h58c7;
	B = 16'h47bc;
	ans = 16'h649e;
	#20
	A = 16'h58b2;
	B = 16'hdb9f;
	ans = 16'hf879;
	#20
	A = 16'h55a9;
	B = 16'hd040;
	ans = 16'hea04;
	#20
	A = 16'h5909;
	B = 16'h5872;
	ans = 16'h7599;
	#20
	A = 16'h4de8;
	B = 16'hd9d7;
	ans = 16'hec50;
	#20
	A = 16'h56de;
	B = 16'hc9c5;
	ans = 16'he4f4;
	#20
	A = 16'h518b;
	B = 16'h56c2;
	ans = 16'h6caf;
	#20
	A = 16'h5a78;
	B = 16'h53a8;
	ans = 16'h7231;
	#20
	A = 16'hd67b;
	B = 16'hb8a5;
	ans = 16'h5386;
	#20
	A = 16'hd99e;
	B = 16'h50f0;
	ans = 16'heeef;
	#20
	A = 16'h5b9b;
	B = 16'hd71f;
	ans = 16'hf6c5;
	#20
	A = 16'h5468;
	B = 16'h57ca;
	ans = 16'h704a;
	#20
	A = 16'h54dc;
	B = 16'hd08e;
	ans = 16'he989;
	#20
	A = 16'h563f;
	B = 16'h57d4;
	ans = 16'h721d;
	#20
	A = 16'hdb60;
	B = 16'hdb5d;
	ans = 16'h7aca;
	#20
	A = 16'hd9d4;
	B = 16'h5bc9;
	ans = 16'hf9ac;
	#20
	A = 16'h5080;
	B = 16'h4f63;
	ans = 16'h6428;
	#20
	A = 16'h55ac;
	B = 16'h5834;
	ans = 16'h71f6;
	#20
	A = 16'hd829;
	B = 16'h5872;
	ans = 16'hf4a0;
	#20
	A = 16'hd6b9;
	B = 16'hd567;
	ans = 16'h708a;
	#20
	A = 16'hcb00;
	B = 16'hd4af;
	ans = 16'h6419;
	#20
	A = 16'hc910;
	B = 16'hd8a2;
	ans = 16'h65dd;
	#20
	A = 16'hdb10;
	B = 16'h591f;
	ans = 16'hf885;
	#20
	A = 16'h57aa;
	B = 16'h4d9f;
	ans = 16'h6963;
	#20
	A = 16'hd416;
	B = 16'h5894;
	ans = 16'hf0ad;
	#20
	A = 16'hce4f;
	B = 16'h5472;
	ans = 16'he703;
	#20
	A = 16'hc08b;
	B = 16'hd48e;
	ans = 16'h592c;
	#20
	A = 16'hcab5;
	B = 16'hdb96;
	ans = 16'h6a5c;
	#20
	A = 16'hd76a;
	B = 16'hd5e3;
	ans = 16'h7175;
	#20
	A = 16'h58f5;
	B = 16'hd988;
	ans = 16'hf6db;
	#20
	A = 16'hd820;
	B = 16'hc58b;
	ans = 16'h61b7;
	#20
	A = 16'h551f;
	B = 16'hd4fc;
	ans = 16'hee62;
	#20
	A = 16'h59d5;
	B = 16'h5aaa;
	ans = 16'h78dc;
	#20
	A = 16'hd960;
	B = 16'h557b;
	ans = 16'hf35d;
	#20
	A = 16'hda68;
	B = 16'h59ee;
	ans = 16'hf8c0;
	#20
	A = 16'hd7a9;
	B = 16'h5b6d;
	ans = 16'hf71c;
	#20
	A = 16'hd868;
	B = 16'h5afc;
	ans = 16'hf7b2;
	#20
	A = 16'hd2be;
	B = 16'h5654;
	ans = 16'hed55;
	#20
	A = 16'h5af0;
	B = 16'hd096;
	ans = 16'heff4;
	#20
	A = 16'h5805;
	B = 16'h556f;
	ans = 16'h7176;
	#20
	A = 16'h5957;
	B = 16'h582f;
	ans = 16'h7596;
	#20
	A = 16'h58aa;
	B = 16'hd919;
	ans = 16'hf5f2;
	#20
	A = 16'hd87a;
	B = 16'hd911;
	ans = 16'h75ac;
	#20
	A = 16'h4718;
	B = 16'h5018;
	ans = 16'h5b43;
	#20
	A = 16'h590c;
	B = 16'h5ade;
	ans = 16'h7855;
	#20
	A = 16'h5a12;
	B = 16'h59ac;
	ans = 16'h784e;
	#20
	A = 16'hd43b;
	B = 16'hdb69;
	ans = 16'h73d6;
	#20
	A = 16'h561b;
	B = 16'hdb49;
	ans = 16'hf58f;
	#20
	A = 16'hd9d6;
	B = 16'h52f6;
	ans = 16'hf114;
	#20
	A = 16'h5538;
	B = 16'hda81;
	ans = 16'hf43e;
	#20
	A = 16'h5337;
	B = 16'h5610;
	ans = 16'h6d78;
	#20
	A = 16'hd932;
	B = 16'hd1c7;
	ans = 16'h6f81;
	#20
	A = 16'h557f;
	B = 16'h57c7;
	ans = 16'h7158;
	#20
	A = 16'hda07;
	B = 16'hce71;
	ans = 16'h6cda;
	#20
	A = 16'h5856;
	B = 16'hdbf2;
	ans = 16'hf84e;
	#20
	A = 16'h5825;
	B = 16'h5a17;
	ans = 16'h764f;
	#20
	A = 16'h58e8;
	B = 16'hd59c;
	ans = 16'hf2e1;
	#20
	A = 16'h554e;
	B = 16'h58c2;
	ans = 16'h724f;
	#20
	A = 16'h5ade;
	B = 16'h5b91;
	ans = 16'h7a7f;
	#20
	A = 16'hdb56;
	B = 16'hd574;
	ans = 16'h7500;
	#20
	A = 16'h5a6b;
	B = 16'hd6f9;
	ans = 16'hf598;
	#20
	A = 16'hd957;
	B = 16'hdb40;
	ans = 16'h78d7;
	#20
	A = 16'h58d3;
	B = 16'hd5e0;
	ans = 16'hf316;
	#20
	A = 16'hbda2;
	B = 16'h561a;
	ans = 16'hd84c;
	#20
	A = 16'h523f;
	B = 16'hc2d8;
	ans = 16'hd958;
	#20
	A = 16'h546e;
	B = 16'hd630;
	ans = 16'heeda;
	#20
	A = 16'hd47a;
	B = 16'h567a;
	ans = 16'hef40;
	#20
	A = 16'hdb41;
	B = 16'hce88;
	ans = 16'h6dec;
	#20
	A = 16'hcc63;
	B = 16'h4b8e;
	ans = 16'hdc24;
	#20
	A = 16'hda2a;
	B = 16'h57da;
	ans = 16'hf60d;
	#20
	A = 16'h4e80;
	B = 16'h5890;
	ans = 16'h6b6a;
	#20
	A = 16'h5431;
	B = 16'h5b27;
	ans = 16'h737f;
	#20
	A = 16'hdbb5;
	B = 16'hd73f;
	ans = 16'h76fb;
	#20
	A = 16'h5776;
	B = 16'hc0fb;
	ans = 16'hdca5;
	#20
	A = 16'h5996;
	B = 16'hd908;
	ans = 16'hf707;
	#20
	A = 16'hdaed;
	B = 16'hdb05;
	ans = 16'h7a14;
	#20
	A = 16'h4c1a;
	B = 16'hd599;
	ans = 16'he5bd;
	#20
	A = 16'hd26c;
	B = 16'hda4d;
	ans = 16'h710f;
	#20
	A = 16'hd7a4;
	B = 16'hd2d5;
	ans = 16'h6e86;
	#20
	A = 16'hd00a;
	B = 16'h555a;
	ans = 16'he967;
	#20
	A = 16'hcc43;
	B = 16'hd5b1;
	ans = 16'h6610;
	#20
	A = 16'h588e;
	B = 16'h56f1;
	ans = 16'h73e7;
	#20
	A = 16'hd9ed;
	B = 16'h5820;
	ans = 16'hf61c;
	#20
	A = 16'hcf93;
	B = 16'hd1f2;
	ans = 16'h65a1;
	#20
	A = 16'hda59;
	B = 16'h5bdd;
	ans = 16'hfa3d;
	#20
	A = 16'h542d;
	B = 16'hd437;
	ans = 16'hec66;
	#20
	A = 16'h5973;
	B = 16'h5b26;
	ans = 16'h78df;
	#20
	A = 16'h5be6;
	B = 16'hd9bb;
	ans = 16'hf9a8;
	#20
	A = 16'hdb9a;
	B = 16'h4341;
	ans = 16'he2e5;
	#20
	A = 16'h5836;
	B = 16'hdaa0;
	ans = 16'hf6f9;
	#20
	A = 16'h5b19;
	B = 16'hda31;
	ans = 16'hf97e;
	#20
	A = 16'hcbbd;
	B = 16'h49a0;
	ans = 16'hd971;
	#20
	A = 16'hd8b6;
	B = 16'h5a73;
	ans = 16'hf798;
	#20
	A = 16'h5b3c;
	B = 16'hd6dc;
	ans = 16'hf634;
	#20
	A = 16'h52e4;
	B = 16'hd6f7;
	ans = 16'hee00;
	#20
	A = 16'h5b4d;
	B = 16'hd53f;
	ans = 16'hf4ca;
	#20
	A = 16'hda0f;
	B = 16'hd4fc;
	ans = 16'h738d;
	#20
	A = 16'hd4c1;
	B = 16'h592c;
	ans = 16'hf226;
	#20
	A = 16'h5aef;
	B = 16'hda7e;
	ans = 16'hf9a0;
	#20
	A = 16'h59cb;
	B = 16'h576b;
	ans = 16'h755f;
	#20
	A = 16'hdac8;
	B = 16'hda83;
	ans = 16'h7985;
	#20
	A = 16'hd918;
	B = 16'hca4f;
	ans = 16'h6804;
	#20
	A = 16'h55d9;
	B = 16'h5a85;
	ans = 16'h74c4;
	#20
	A = 16'h589f;
	B = 16'h58d1;
	ans = 16'h7590;
	#20
	A = 16'h5174;
	B = 16'hd0a6;
	ans = 16'he656;
	#20
	A = 16'h4fed;
	B = 16'hdbd7;
	ans = 16'hefc4;
	#20
	A = 16'h5b26;
	B = 16'h4560;
	ans = 16'h64ce;
	#20
	A = 16'hd96a;
	B = 16'h54b7;
	ans = 16'hf262;
	#20
	A = 16'hda88;
	B = 16'h4b3c;
	ans = 16'he9e8;
	#20
	A = 16'hd9f8;
	B = 16'hdab1;
	ans = 16'h78fe;
	#20
	A = 16'h58fc;
	B = 16'h518e;
	ans = 16'h6eec;
	#20
	A = 16'h5263;
	B = 16'h49f9;
	ans = 16'h60c5;
	#20
	A = 16'hd842;
	B = 16'h5903;
	ans = 16'hf556;
	#20
	A = 16'h5420;
	B = 16'h4a2d;
	ans = 16'h625e;
	#20
	A = 16'hd86c;
	B = 16'h5a91;
	ans = 16'hf742;
	#20
	A = 16'h5a1f;
	B = 16'h58df;
	ans = 16'h7774;
	#20
	A = 16'h4d25;
	B = 16'h59b0;
	ans = 16'h6b51;
	#20
	A = 16'hd3e9;
	B = 16'hd5e3;
	ans = 16'h6dd2;
	#20
	A = 16'h5721;
	B = 16'hd9f1;
	ans = 16'hf54b;
	#20
	A = 16'h573e;
	B = 16'h562a;
	ans = 16'h7195;
	#20
	A = 16'hd427;
	B = 16'hd98a;
	ans = 16'h71c0;
	#20
	A = 16'h59d6;
	B = 16'hc92e;
	ans = 16'he78f;
	#20
	A = 16'hda94;
	B = 16'hd411;
	ans = 16'h72b0;
	#20
	A = 16'hdb52;
	B = 16'h4d8e;
	ans = 16'hed15;
	#20
	A = 16'h58ed;
	B = 16'hdbea;
	ans = 16'hf8df;
	#20
	A = 16'hda6e;
	B = 16'h5982;
	ans = 16'hf86d;
	#20
	A = 16'h586f;
	B = 16'h563a;
	ans = 16'h72e7;
	#20
	A = 16'hda49;
	B = 16'h5276;
	ans = 16'hf113;
	#20
	A = 16'h5655;
	B = 16'h5640;
	ans = 16'h70f2;
	#20
	A = 16'h5abc;
	B = 16'h5109;
	ans = 16'h703d;
	#20
	A = 16'h5566;
	B = 16'h529f;
	ans = 16'h6c78;
	#20
	A = 16'hda01;
	B = 16'hcb28;
	ans = 16'h695f;
	#20
	A = 16'hd826;
	B = 16'h529e;
	ans = 16'heedd;
	#20
	A = 16'hd9c7;
	B = 16'hd2e3;
	ans = 16'h70f9;
	#20
	A = 16'h598b;
	B = 16'h5503;
	ans = 16'h72f2;
	#20
	A = 16'hd1d5;
	B = 16'hd4e2;
	ans = 16'h6b1f;
	#20
	A = 16'h4c69;
	B = 16'h56b6;
	ans = 16'h6766;
	#20
	A = 16'hd786;
	B = 16'h5bc1;
	ans = 16'hf74b;
	#20
	A = 16'hd6b0;
	B = 16'h54fd;
	ans = 16'hf02b;
	#20
	A = 16'h587c;
	B = 16'hd80b;
	ans = 16'hf488;
	#20
	A = 16'h5497;
	B = 16'h585c;
	ans = 16'h7101;
	#20
	A = 16'h5a62;
	B = 16'h5625;
	ans = 16'h74e7;
	#20
	A = 16'hd5f0;
	B = 16'hdb61;
	ans = 16'h757a;
	#20
	A = 16'h5aaf;
	B = 16'hdb22;
	ans = 16'hf9f6;
	#20
	A = 16'hdb9d;
	B = 16'hd8eb;
	ans = 16'h78ae;
	#20
	A = 16'h5631;
	B = 16'hcba5;
	ans = 16'he5eb;
	#20
	A = 16'h4b3a;
	B = 16'hd9a9;
	ans = 16'he91d;
	#20
	A = 16'hda8f;
	B = 16'h51ba;
	ans = 16'hf0b2;
	#20
	A = 16'hd537;
	B = 16'hdbb5;
	ans = 16'h7506;
	#20
	A = 16'hd427;
	B = 16'hd870;
	ans = 16'h709b;
	#20
	A = 16'hd702;
	B = 16'hd5f4;
	ans = 16'h7137;
	#20
	A = 16'h4f38;
	B = 16'h4ffc;
	ans = 16'h6334;
	#20
	A = 16'h5b45;
	B = 16'h4c15;
	ans = 16'h6b6b;
	#20
	A = 16'hda85;
	B = 16'hd839;
	ans = 16'h76e2;
	#20
	A = 16'hd5a5;
	B = 16'h5bcc;
	ans = 16'hf580;
	#20
	A = 16'hdbd8;
	B = 16'hd94e;
	ans = 16'h7933;
	#20
	A = 16'hcbd1;
	B = 16'h5b2d;
	ans = 16'heb03;
	#20
	A = 16'h5b48;
	B = 16'hdbc4;
	ans = 16'hfb11;
	#20
	A = 16'hd896;
	B = 16'hce9c;
	ans = 16'h6b94;
	#20
	A = 16'hda6d;
	B = 16'hda5c;
	ans = 16'h791c;
	#20
	A = 16'h5a2c;
	B = 16'h58e1;
	ans = 16'h7787;
	#20
	A = 16'hd205;
	B = 16'h4751;
	ans = 16'hdd81;
	#20
	A = 16'hd8c8;
	B = 16'h58a3;
	ans = 16'hf58b;
	#20
	A = 16'hdb7d;
	B = 16'h5b27;
	ans = 16'hfab2;
	#20
	A = 16'h50bb;
	B = 16'h5473;
	ans = 16'h6943;
	#20
	A = 16'hd51d;
	B = 16'h55bf;
	ans = 16'hef58;
	#20
	A = 16'h57f9;
	B = 16'h5ba9;
	ans = 16'h77a2;
	#20
	A = 16'h5a4a;
	B = 16'hdace;
	ans = 16'hf959;
	#20
	A = 16'h5b36;
	B = 16'h5b47;
	ans = 16'h7a8f;
	#20
	A = 16'h5919;
	B = 16'h5bb1;
	ans = 16'h78e7;
	#20
	A = 16'hd799;
	B = 16'hda33;
	ans = 16'h75e3;
	#20
	A = 16'h577c;
	B = 16'hdb78;
	ans = 16'hf6fd;
	#20
	A = 16'h54ff;
	B = 16'hd8a2;
	ans = 16'hf1c9;
	#20
	A = 16'hdaac;
	B = 16'hd954;
	ans = 16'h7872;
	#20
	A = 16'h587a;
	B = 16'h4776;
	ans = 16'h642d;
	#20
	A = 16'hd849;
	B = 16'h55ed;
	ans = 16'hf259;
	#20
	A = 16'hd992;
	B = 16'hd920;
	ans = 16'h7723;
	#20
	A = 16'h590a;
	B = 16'h5406;
	ans = 16'h7112;
	#20
	A = 16'hd8b2;
	B = 16'hd9ef;
	ans = 16'h76f7;
	#20
	A = 16'hda25;
	B = 16'h55b3;
	ans = 16'hf461;
	#20
	A = 16'h5906;
	B = 16'hd552;
	ans = 16'hf2ae;
	#20
	A = 16'hd23d;
	B = 16'h5a9c;
	ans = 16'hf127;
	#20
	A = 16'hda03;
	B = 16'h55f8;
	ans = 16'hf47c;
	#20
	A = 16'hcf65;
	B = 16'h5ab2;
	ans = 16'hee30;
	#20
	A = 16'h5b66;
	B = 16'hce29;
	ans = 16'hedb2;
	#20
	A = 16'h5349;
	B = 16'hd613;
	ans = 16'hed88;
	#20
	A = 16'hca9a;
	B = 16'h5859;
	ans = 16'he72d;
	#20
	A = 16'hcf17;
	B = 16'hd8ba;
	ans = 16'h6c30;
	#20
	A = 16'h5928;
	B = 16'h5a77;
	ans = 16'h782b;
	#20
	A = 16'hd94c;
	B = 16'hd915;
	ans = 16'h76bb;
	#20
	A = 16'hdb61;
	B = 16'h58ad;
	ans = 16'hf850;
	#20
	A = 16'hdbdb;
	B = 16'h57b3;
	ans = 16'hf78f;
	#20
	A = 16'h572f;
	B = 16'h3c7f;
	ans = 16'h580a;
	#20
	A = 16'h5804;
	B = 16'hd9d9;
	ans = 16'hf5df;
	#20
	A = 16'hd945;
	B = 16'h5bb1;
	ans = 16'hf911;
	#20
	A = 16'h40b3;
	B = 16'hd8c4;
	ans = 16'hdd99;
	#20
	A = 16'hd7f2;
	B = 16'hd610;
	ans = 16'h7205;
	#20
	A = 16'h586a;
	B = 16'h5a85;
	ans = 16'h7732;
	#20
	A = 16'h4e89;
	B = 16'hd09f;
	ans = 16'he38d;
	#20
	A = 16'h5b7a;
	B = 16'h5a91;
	ans = 16'h7a23;
	#20
	A = 16'hd467;
	B = 16'hd4a4;
	ans = 16'h6d1b;
	#20
	A = 16'hd8e0;
	B = 16'h55a4;
	ans = 16'hf2e0;
	#20
	A = 16'hd81a;
	B = 16'hd1fd;
	ans = 16'h6e24;
	#20
	A = 16'h5af0;
	B = 16'h4fdd;
	ans = 16'h6ed2;
	#20
	A = 16'h53c8;
	B = 16'h5480;
	ans = 16'h6c60;
	#20
	A = 16'hda73;
	B = 16'hdb31;
	ans = 16'h79cc;
	#20
	A = 16'hbf72;
	B = 16'h5aa8;
	ans = 16'hde32;
	#20
	A = 16'h4f5f;
	B = 16'hd80b;
	ans = 16'heb73;
	#20
	A = 16'hd8fa;
	B = 16'h59f9;
	ans = 16'hf76e;
	#20
	A = 16'hc553;
	B = 16'h5a6f;
	ans = 16'he448;
	#20
	A = 16'h562e;
	B = 16'hd8d4;
	ans = 16'hf376;
	#20
	A = 16'h584e;
	B = 16'h4f3d;
	ans = 16'h6bca;
	#20
	A = 16'h5b9b;
	B = 16'hd667;
	ans = 16'hf616;
	#20
	A = 16'hd976;
	B = 16'hcfc7;
	ans = 16'h6d4f;
	#20
	A = 16'h5744;
	B = 16'hd87d;
	ans = 16'hf414;
	#20
	A = 16'hdabf;
	B = 16'hdbc5;
	ans = 16'h7a8d;
	#20
	A = 16'hd814;
	B = 16'h48c4;
	ans = 16'he4dc;
	#20
	A = 16'h59df;
	B = 16'hd8da;
	ans = 16'hf71f;
	#20
	A = 16'h595a;
	B = 16'hd0fc;
	ans = 16'heeab;
	#20
	A = 16'h575c;
	B = 16'hdb81;
	ans = 16'hf6e7;
	#20
	A = 16'h56d9;
	B = 16'hce6f;
	ans = 16'he982;
	#20
	A = 16'h5833;
	B = 16'h581d;
	ans = 16'h7451;
	#20
	A = 16'h5189;
	B = 16'h5120;
	ans = 16'h6718;
	#20
	A = 16'h5889;
	B = 16'hd80a;
	ans = 16'hf494;
	#20
	A = 16'h5489;
	B = 16'hda40;
	ans = 16'hf316;
	#20
	A = 16'hdb3b;
	B = 16'h5ad7;
	ans = 16'hfa2f;
	#20
	A = 16'hd86e;
	B = 16'h5a94;
	ans = 16'hf749;
	#20
	A = 16'h581d;
	B = 16'h5b4f;
	ans = 16'h7784;
	#20
	A = 16'h58a1;
	B = 16'hd78a;
	ans = 16'hf45d;
	#20
	A = 16'h508a;
	B = 16'h5671;
	ans = 16'h6b4f;
	#20
	A = 16'hdad5;
	B = 16'h59dd;
	ans = 16'hf902;
	#20
	A = 16'hd546;
	B = 16'hda5c;
	ans = 16'h7431;
	#20
	A = 16'h5393;
	B = 16'hd872;
	ans = 16'hf035;
	#20
	A = 16'hdbd0;
	B = 16'h593b;
	ans = 16'hf91c;
	#20
	A = 16'h575f;
	B = 16'h54aa;
	ans = 16'h704c;
	#20
	A = 16'h596b;
	B = 16'h5b60;
	ans = 16'h78ff;
	#20
	A = 16'hd4ff;
	B = 16'h5291;
	ans = 16'hec1a;
	#20
	A = 16'h5512;
	B = 16'h5905;
	ans = 16'h725d;
	#20
	A = 16'h5a7a;
	B = 16'h522d;
	ans = 16'h7100;
	#20
	A = 16'hd587;
	B = 16'hd0cd;
	ans = 16'h6aa2;
	#20
	A = 16'h5be0;
	B = 16'h598f;
	ans = 16'h7979;
	#20
	A = 16'h425f;
	B = 16'h5989;
	ans = 16'h6068;
	#20
	A = 16'hd8a9;
	B = 16'hdb32;
	ans = 16'h7831;
	#20
	A = 16'h5b61;
	B = 16'hda00;
	ans = 16'hf989;
	#20
	A = 16'hd329;
	B = 16'h5978;
	ans = 16'hf0e5;
	#20
	A = 16'hd9b5;
	B = 16'h505f;
	ans = 16'hee3d;
	#20
	A = 16'h502f;
	B = 16'h4936;
	ans = 16'h5d73;
	#20
	A = 16'hc7f0;
	B = 16'hdaf3;
	ans = 16'h66e5;
	#20
	A = 16'hdb0a;
	B = 16'h5b03;
	ans = 16'hfa2b;
	#20
	A = 16'hd54e;
	B = 16'h559d;
	ans = 16'hef72;
	#20
	A = 16'h56ea;
	B = 16'hd9da;
	ans = 16'hf50f;
	#20
	A = 16'h5a12;
	B = 16'hd417;
	ans = 16'hf235;
	#20
	A = 16'hd619;
	B = 16'h595b;
	ans = 16'hf415;
	#20
	A = 16'h5734;
	B = 16'hd49e;
	ans = 16'hf028;
	#20
	A = 16'h55fe;
	B = 16'hd4cb;
	ans = 16'hef2e;
	#20
	A = 16'hdb10;
	B = 16'hd6ca;
	ans = 16'h75fe;
	#20
	A = 16'hd611;
	B = 16'h58db;
	ans = 16'hf35d;
	#20
	A = 16'hd933;
	B = 16'h59c0;
	ans = 16'hf779;
	#20
	A = 16'h5702;
	B = 16'hd8c5;
	ans = 16'hf42e;
	#20
	A = 16'hd530;
	B = 16'hdb97;
	ans = 16'h74ec;
	#20
	A = 16'hd4b6;
	B = 16'hd792;
	ans = 16'h7075;
	#20
	A = 16'h5a26;
	B = 16'hda5e;
	ans = 16'hf8e5;
	#20
	A = 16'h5847;
	B = 16'hd9fa;
	ans = 16'hf664;
	#20
	A = 16'hda47;
	B = 16'hd935;
	ans = 16'h7816;
	#20
	A = 16'h4da9;
	B = 16'h4dd9;
	ans = 16'h6023;
	#20
	A = 16'h4bca;
	B = 16'hd1d1;
	ans = 16'he1aa;
	#20
	A = 16'h4e05;
	B = 16'h4897;
	ans = 16'h5ae8;
	#20
	A = 16'h5af8;
	B = 16'hdae6;
	ans = 16'hfa02;
	#20
	A = 16'hd39b;
	B = 16'hd5cf;
	ans = 16'h6d86;
	#20
	A = 16'hda54;
	B = 16'h599d;
	ans = 16'hf871;
	#20
	A = 16'hda10;
	B = 16'hd9a7;
	ans = 16'h7849;
	#20
	A = 16'hd1eb;
	B = 16'hd8b1;
	ans = 16'h6ef1;
	#20
	A = 16'h5532;
	B = 16'hd701;
	ans = 16'hf08c;
	#20
	A = 16'h530d;
	B = 16'h5676;
	ans = 16'h6db2;
	#20
	A = 16'h49c2;
	B = 16'h4d35;
	ans = 16'h5b7f;
	#20
	A = 16'hd88a;
	B = 16'hdaf0;
	ans = 16'h77df;
	#20
	A = 16'hd461;
	B = 16'hd93a;
	ans = 16'h71b9;
	#20
	A = 16'hc3db;
	B = 16'h5b5e;
	ans = 16'he33c;
	#20
	A = 16'h5b20;
	B = 16'hdb54;
	ans = 16'hfa87;
	#20
	A = 16'h5996;
	B = 16'h5a50;
	ans = 16'h7868;
	#20
	A = 16'h501a;
	B = 16'hd400;
	ans = 16'he81a;
	#20
	A = 16'hd910;
	B = 16'hd8b1;
	ans = 16'h75f0;
	#20
	A = 16'h55ff;
	B = 16'hd816;
	ans = 16'hf220;
	#20
	A = 16'h5ab5;
	B = 16'hd067;
	ans = 16'hef62;
	#20
	A = 16'hdbe7;
	B = 16'h545a;
	ans = 16'hf44c;
	#20
	A = 16'h5abd;
	B = 16'hd972;
	ans = 16'hf896;
	#20
	A = 16'hd6aa;
	B = 16'hd7c7;
	ans = 16'h727b;
	#20
	A = 16'hd5bb;
	B = 16'h59cc;
	ans = 16'hf427;
	#20
	A = 16'hd570;
	B = 16'hdbc0;
	ans = 16'h7544;
	#20
	A = 16'hdac8;
	B = 16'hd680;
	ans = 16'h7582;
	#20
	A = 16'hd7ab;
	B = 16'h56d1;
	ans = 16'hf289;
	#20
	A = 16'hd7a5;
	B = 16'hd1eb;
	ans = 16'h6da8;
	#20
	A = 16'h544a;
	B = 16'hd4bf;
	ans = 16'hed17;
	#20
	A = 16'h5989;
	B = 16'hda74;
	ans = 16'hf877;
	#20
	A = 16'h55d4;
	B = 16'h5a82;
	ans = 16'h74be;
	#20
	A = 16'hd837;
	B = 16'h51f3;
	ans = 16'hee45;
	#20
	A = 16'h59c0;
	B = 16'h4cd7;
	ans = 16'h6af5;
	#20
	A = 16'hd8de;
	B = 16'hd634;
	ans = 16'h738c;
	#20
	A = 16'hdb2c;
	B = 16'h5a8d;
	ans = 16'hf9df;
	#20
	A = 16'hd948;
	B = 16'hbda8;
	ans = 16'h5b78;
	#20
	A = 16'h535b;
	B = 16'hd23a;
	ans = 16'he9ba;
	#20
	A = 16'hdafe;
	B = 16'h5576;
	ans = 16'hf4c6;
	#20
	A = 16'h5b14;
	B = 16'h5880;
	ans = 16'h77f6;
	#20
	A = 16'hdb87;
	B = 16'hd6a2;
	ans = 16'h763e;
	#20
	A = 16'hdb43;
	B = 16'h54dc;
	ans = 16'hf469;
	#20
	A = 16'hd429;
	B = 16'h524a;
	ans = 16'hea8a;
	#20
	A = 16'hdaf9;
	B = 16'h5654;
	ans = 16'hf584;
	#20
	A = 16'h50a4;
	B = 16'h4845;
	ans = 16'h5cf4;
	#20
	A = 16'hda4b;
	B = 16'h5b0c;
	ans = 16'hf98b;
	#20
	A = 16'h58fc;
	B = 16'hd8e7;
	ans = 16'hf61c;
	#20
	A = 16'h566f;
	B = 16'hdab2;
	ans = 16'hf562;
	#20
	A = 16'hcaa0;
	B = 16'hc517;
	ans = 16'h5437;
	#20
	A = 16'hd812;
	B = 16'h5682;
	ans = 16'hf29f;
	#20
	A = 16'h599d;
	B = 16'hd51f;
	ans = 16'hf330;
	#20
	A = 16'h58c3;
	B = 16'hd9dd;
	ans = 16'hf6fb;
	#20
	A = 16'h5b86;
	B = 16'hda4e;
	ans = 16'hf9ee;
	#20
	A = 16'hd6c2;
	B = 16'hd005;
	ans = 16'h6aca;
	#20
	A = 16'h58d0;
	B = 16'hd868;
	ans = 16'hf54d;
	#20
	A = 16'hd274;
	B = 16'h5828;
	ans = 16'heeb5;
	#20
	A = 16'h58ef;
	B = 16'h51ff;
	ans = 16'h6f65;
	#20
	A = 16'hd800;
	B = 16'hd9a6;
	ans = 16'h75a6;
	#20
	A = 16'hce3c;
	B = 16'h539f;
	ans = 16'he5f0;
	#20
	A = 16'hd318;
	B = 16'hd5d0;
	ans = 16'h6d27;
	#20
	A = 16'hd9b7;
	B = 16'hda69;
	ans = 16'h7894;
	#20
	A = 16'h48fd;
	B = 16'h45d3;
	ans = 16'h5343;
	#20
	A = 16'h55bd;
	B = 16'h5b54;
	ans = 16'h7542;
	#20
	A = 16'h3539;
	B = 16'h561e;
	ans = 16'h4ffd;
	#20
	A = 16'h5322;
	B = 16'h58e9;
	ans = 16'h7061;
	#20
	A = 16'hd9b8;
	B = 16'h5857;
	ans = 16'hf634;
	#20
	A = 16'h5745;
	B = 16'h57db;
	ans = 16'h7323;
	#20
	A = 16'hd975;
	B = 16'hd950;
	ans = 16'h773f;
	#20
	A = 16'h4729;
	B = 16'h3867;
	ans = 16'h43e1;
	#20
	A = 16'hca3f;
	B = 16'hc52f;
	ans = 16'h540c;
	#20
	A = 16'h5bae;
	B = 16'hd4ab;
	ans = 16'hf47b;
	#20
	A = 16'hdad2;
	B = 16'h5ac4;
	ans = 16'hf9c5;
	#20
	A = 16'h5914;
	B = 16'h5bb6;
	ans = 16'h78e5;
	#20
	A = 16'hd462;
	B = 16'hcbf2;
	ans = 16'h645a;
	#20
	A = 16'hd68d;
	B = 16'h3ec8;
	ans = 16'hd98e;
	#20
	A = 16'h592a;
	B = 16'h5bdf;
	ans = 16'h7915;
	#20
	A = 16'hd208;
	B = 16'hd697;
	ans = 16'h6cf8;
	#20
	A = 16'h5751;
	B = 16'hcc5d;
	ans = 16'he7fb;
	#20
	A = 16'h5a07;
	B = 16'hdabe;
	ans = 16'hf914;
	#20
	A = 16'h5bef;
	B = 16'h5429;
	ans = 16'h7420;
	#20
	A = 16'hd69d;
	B = 16'h51aa;
	ans = 16'hecaf;
	#20
	A = 16'hcead;
	B = 16'hd6b9;
	ans = 16'h699c;
	#20
	A = 16'h5bde;
	B = 16'h3ed5;
	ans = 16'h5eb8;
	#20
	A = 16'h5b96;
	B = 16'hd440;
	ans = 16'hf408;
	#20
	A = 16'h4354;
	B = 16'h5af7;
	ans = 16'h6261;
	#20
	A = 16'hd8c6;
	B = 16'h5940;
	ans = 16'hf644;
	#20
	A = 16'hd738;
	B = 16'hd56c;
	ans = 16'h70e4;
	#20
	A = 16'h5a49;
	B = 16'hcf07;
	ans = 16'hed85;
	#20
	A = 16'h531f;
	B = 16'h582f;
	ans = 16'h6f73;
	#20
	A = 16'hd9f5;
	B = 16'hdb7f;
	ans = 16'h7995;
	#20
	A = 16'hbfdb;
	B = 16'hdada;
	ans = 16'h5eba;
	#20
	A = 16'h5a3a;
	B = 16'h3fcc;
	ans = 16'h5e12;
	#20
	A = 16'h5b1e;
	B = 16'h4ea7;
	ans = 16'h6deb;
	#20
	A = 16'h5875;
	B = 16'h5925;
	ans = 16'h75bb;
	#20
	A = 16'hd2af;
	B = 16'h54be;
	ans = 16'hebec;
	#20
	A = 16'hce0c;
	B = 16'h5a9c;
	ans = 16'hecff;
	#20
	A = 16'h5396;
	B = 16'h5020;
	ans = 16'h67d3;
	#20
	A = 16'hdb4a;
	B = 16'hdbe0;
	ans = 16'h7b2d;
	#20
	A = 16'hd9e5;
	B = 16'hd667;
	ans = 16'h74b8;
	#20
	A = 16'hd4c2;
	B = 16'hd9ad;
	ans = 16'h72c0;
	#20
	A = 16'hd649;
	B = 16'hd99b;
	ans = 16'h7467;
	#20
	A = 16'hd27b;
	B = 16'hd284;
	ans = 16'h6947;
	#20
	A = 16'hd8ab;
	B = 16'hd9ef;
	ans = 16'h76ed;
	#20
	A = 16'hda19;
	B = 16'h5498;
	ans = 16'hf301;
	#20
	A = 16'h5627;
	B = 16'hdaaf;
	ans = 16'hf524;
	#20
	A = 16'h4fcb;
	B = 16'hd552;
	ans = 16'he92f;
	#20
	A = 16'h58b6;
	B = 16'hc4bf;
	ans = 16'he197;
	#20
	A = 16'h52e9;
	B = 16'hd515;
	ans = 16'hec64;
	#20
	A = 16'hd568;
	B = 16'h5a64;
	ans = 16'hf452;
	#20
	A = 16'h59d0;
	B = 16'h57a4;
	ans = 16'h758d;
	#20
	A = 16'h5689;
	B = 16'h5bb4;
	ans = 16'h764b;
	#20
	A = 16'hdba3;
	B = 16'hda1e;
	ans = 16'h79d7;
	#20
	A = 16'h586b;
	B = 16'hd974;
	ans = 16'hf606;
	#20
	A = 16'h52e4;
	B = 16'hcd25;
	ans = 16'he46e;
	#20
	A = 16'hc226;
	B = 16'hd444;
	ans = 16'h5a8f;
	#20
	A = 16'hd588;
	B = 16'hd807;
	ans = 16'h7192;
	#20
	A = 16'hda83;
	B = 16'hd83d;
	ans = 16'h76e6;
	#20
	A = 16'hd922;
	B = 16'hdb41;
	ans = 16'h78a7;
	#20
	A = 16'h5724;
	B = 16'hd6b5;
	ans = 16'hf1fd;
	#20
	A = 16'hdb70;
	B = 16'hd225;
	ans = 16'h71b6;
	#20
	A = 16'h5199;
	B = 16'hd928;
	ans = 16'hef37;
	#20
	A = 16'h5a3d;
	B = 16'h4f79;
	ans = 16'h6dd4;
	#20
	A = 16'h5b04;
	B = 16'hcee8;
	ans = 16'hee0e;
	#20
	A = 16'h5af9;
	B = 16'hdbc8;
	ans = 16'hfac8;
	#20
	A = 16'hd8e4;
	B = 16'hda95;
	ans = 16'h7806;
	#20
	A = 16'hce99;
	B = 16'hd90c;
	ans = 16'h6c2a;
	#20
	A = 16'h56d6;
	B = 16'hcb9d;
	ans = 16'he681;
	#20
	A = 16'hd094;
	B = 16'h5bb2;
	ans = 16'hf067;
	#20
	A = 16'hcdf8;
	B = 16'hd176;
	ans = 16'h6413;
	#20
	A = 16'hca3e;
	B = 16'h555a;
	ans = 16'he42d;
	#20
	A = 16'hcf7b;
	B = 16'hd7d4;
	ans = 16'h6b52;
	#20
	A = 16'h5649;
	B = 16'h5bee;
	ans = 16'h763b;
	#20
	A = 16'h56ad;
	B = 16'h58fb;
	ans = 16'h7428;
	#20
	A = 16'h5847;
	B = 16'h5422;
	ans = 16'h706b;
	#20
	A = 16'h4fe6;
	B = 16'hdac2;
	ans = 16'heeac;
	#20
	A = 16'hd856;
	B = 16'h53bb;
	ans = 16'hf031;
	#20
	A = 16'h4c5b;
	B = 16'h5740;
	ans = 16'h67e5;
	#20
	A = 16'h571b;
	B = 16'h59e6;
	ans = 16'h753d;
	#20
	A = 16'h582c;
	B = 16'h4e38;
	ans = 16'h6a7c;
	#20
	A = 16'hd947;
	B = 16'hcb03;
	ans = 16'h68a0;
	#20
	A = 16'hdaf5;
	B = 16'hdace;
	ans = 16'h79eb;
	#20
	A = 16'h58b4;
	B = 16'h5876;
	ans = 16'h753f;
	#20
	A = 16'h54a9;
	B = 16'hce0e;
	ans = 16'he70e;
	#20
	A = 16'hd8dc;
	B = 16'hd200;
	ans = 16'h6f4a;
	#20
	A = 16'h5980;
	B = 16'hcab6;
	ans = 16'he89d;
	#20
	A = 16'hd660;
	B = 16'h5342;
	ans = 16'hedc9;
	#20
	A = 16'hd562;
	B = 16'hdb1d;
	ans = 16'h74c9;
	#20
	A = 16'hd9c3;
	B = 16'hd783;
	ans = 16'h7569;
	#20
	A = 16'h4db5;
	B = 16'h5105;
	ans = 16'h6329;
	#20
	A = 16'hd891;
	B = 16'h4681;
	ans = 16'he36d;
	#20
	A = 16'hdbc9;
	B = 16'hd79f;
	ans = 16'h776b;
	#20
	A = 16'h3a3f;
	B = 16'h5a0b;
	ans = 16'h58b8;
	#20
	A = 16'h4c2b;
	B = 16'h5141;
	ans = 16'h6179;
	#20
	A = 16'hd811;
	B = 16'hdb59;
	ans = 16'h7778;
	#20
	A = 16'h4fe1;
	B = 16'h55a1;
	ans = 16'h698b;
	#20
	A = 16'h5bf2;
	B = 16'hdbb7;
	ans = 16'hfba9;
	#20
	A = 16'hcda8;
	B = 16'hd1d5;
	ans = 16'h6420;
	#20
	A = 16'h5bf6;
	B = 16'hd950;
	ans = 16'hf949;
	#20
	A = 16'h58a6;
	B = 16'hd741;
	ans = 16'hf437;
	#20
	A = 16'h56b4;
	B = 16'h5b6f;
	ans = 16'h763b;
	#20
	A = 16'hd86b;
	B = 16'hd40b;
	ans = 16'h7077;
	#20
	A = 16'hd811;
	B = 16'hda5f;
	ans = 16'h767a;
	#20
	A = 16'h5870;
	B = 16'h4fdf;
	ans = 16'h6c5e;
	#20
	A = 16'h5bdb;
	B = 16'h5633;
	ans = 16'h7616;
	#20
	A = 16'h56a3;
	B = 16'hdb40;
	ans = 16'hf604;
	#20
	A = 16'h483e;
	B = 16'hd9a9;
	ans = 16'he601;
	#20
	A = 16'hd929;
	B = 16'h59bf;
	ans = 16'hf76a;
	#20
	A = 16'hd0a2;
	B = 16'hd29c;
	ans = 16'h67a8;
	#20
	A = 16'h5605;
	B = 16'hd9af;
	ans = 16'hf447;
	#20
	A = 16'hd1b0;
	B = 16'hd52c;
	ans = 16'h6b5b;
	#20
	A = 16'h5416;
	B = 16'h508f;
	ans = 16'h68a8;
	#20
	A = 16'h546c;
	B = 16'hd936;
	ans = 16'hf1c3;
	#20
	A = 16'hd9ef;
	B = 16'h5910;
	ans = 16'hf782;
	#20
	A = 16'h5191;
	B = 16'h5992;
	ans = 16'h6fc0;
	#20
	A = 16'h58d6;
	B = 16'hdae5;
	ans = 16'hf82b;
	#20
	A = 16'h59e0;
	B = 16'h5035;
	ans = 16'h6e2e;
	#20
	A = 16'hd6c9;
	B = 16'h4c4d;
	ans = 16'he74c;
	#20
	A = 16'hd831;
	B = 16'hda68;
	ans = 16'h76b6;
	#20
	A = 16'hdb0d;
	B = 16'hd4b3;
	ans = 16'h7424;
	#20
	A = 16'h5816;
	B = 16'hcedf;
	ans = 16'heb05;
	#20
	A = 16'h56d1;
	B = 16'h5a1e;
	ans = 16'h7536;
	#20
	A = 16'hda57;
	B = 16'h577f;
	ans = 16'hf5f1;
	#20
	A = 16'hd867;
	B = 16'h590c;
	ans = 16'hf58e;
	#20
	A = 16'hd5ae;
	B = 16'h5b7f;
	ans = 16'hf552;
	#20
	A = 16'h5865;
	B = 16'h5412;
	ans = 16'h7079;
	#20
	A = 16'hd69d;
	B = 16'hda29;
	ans = 16'h7518;
	#20
	A = 16'hd2bd;
	B = 16'hd7e4;
	ans = 16'h6ea5;
	#20
	A = 16'hd2f5;
	B = 16'hd45a;
	ans = 16'h6b92;
	#20
	A = 16'hd23f;
	B = 16'hd9c5;
	ans = 16'h7081;
	#20
	A = 16'hd695;
	B = 16'h5a3f;
	ans = 16'hf524;
	#20
	A = 16'h5a47;
	B = 16'h596c;
	ans = 16'h7841;
	#20
	A = 16'h5004;
	B = 16'h54cb;
	ans = 16'h68d0;
	#20
	A = 16'hc4ab;
	B = 16'h59e5;
	ans = 16'he2e1;
	#20
	A = 16'h5ac3;
	B = 16'h4ca9;
	ans = 16'h6be1;
	#20
	A = 16'hdb7b;
	B = 16'hd619;
	ans = 16'h75b4;
	#20
	A = 16'h575f;
	B = 16'hcd82;
	ans = 16'he913;
	#20
	A = 16'hd6a9;
	B = 16'h5465;
	ans = 16'hef51;
	#20
	A = 16'h57a7;
	B = 16'h4278;
	ans = 16'h5e30;
	#20
	A = 16'h5bcf;
	B = 16'hd57d;
	ans = 16'hf55b;
	#20
	A = 16'h5ab0;
	B = 16'hd81f;
	ans = 16'hf6e4;
	#20
	A = 16'hdb66;
	B = 16'h54e7;
	ans = 16'hf489;
	#20
	A = 16'hd9e4;
	B = 16'h5a96;
	ans = 16'hf8d9;
	#20
	A = 16'hdab3;
	B = 16'h56e4;
	ans = 16'hf5c5;
	#20
	A = 16'hcec8;
	B = 16'h5858;
	ans = 16'heb5d;
	#20
	A = 16'hd9b2;
	B = 16'h5676;
	ans = 16'hf49a;
	#20
	A = 16'h48a4;
	B = 16'h56dd;
	ans = 16'h63f6;
	#20
	A = 16'h586c;
	B = 16'h5024;
	ans = 16'h6c94;
	#20
	A = 16'h5743;
	B = 16'hd124;
	ans = 16'hecab;
	#20
	A = 16'h5bc3;
	B = 16'h5abd;
	ans = 16'h7a8a;
	#20
	A = 16'h538c;
	B = 16'h587b;
	ans = 16'h703a;
	#20
	A = 16'hd8f2;
	B = 16'hd8ca;
	ans = 16'h75ec;
	#20
	A = 16'h5876;
	B = 16'h58c7;
	ans = 16'h7554;
	#20
	A = 16'hd600;
	B = 16'h5826;
	ans = 16'hf239;
	#20
	A = 16'h5a30;
	B = 16'hd22d;
	ans = 16'hf0c7;
	#20
	A = 16'h4ec4;
	B = 16'hd8a0;
	ans = 16'hebd3;
	#20
	A = 16'hd90d;
	B = 16'hd520;
	ans = 16'h7279;
	#20
	A = 16'hd94e;
	B = 16'hd245;
	ans = 16'h7028;
	#20
	A = 16'hd22c;
	B = 16'hd6a9;
	ans = 16'h6d23;
	#20
	A = 16'hd52d;
	B = 16'hd8d4;
	ans = 16'h723f;
	#20
	A = 16'hd887;
	B = 16'hdaeb;
	ans = 16'h77d4;
	#20
	A = 16'hdb5f;
	B = 16'h522c;
	ans = 16'hf1b0;
	#20
	A = 16'h57ab;
	B = 16'hc916;
	ans = 16'he4e0;
	#20
	A = 16'h5930;
	B = 16'h52c6;
	ans = 16'h7064;
	#20
	A = 16'h4ca5;
	B = 16'hdabd;
	ans = 16'hebd3;
	#20
	A = 16'h5b51;
	B = 16'h5bb2;
	ans = 16'h7b0a;
	#20
	A = 16'hd77b;
	B = 16'h5aea;
	ans = 16'hf677;
	#20
	A = 16'hcc9b;
	B = 16'h5bb8;
	ans = 16'hec72;
	#20
	A = 16'hd601;
	B = 16'h5a2e;
	ans = 16'hf4a3;
	#20
	A = 16'hcb98;
	B = 16'h54e2;
	ans = 16'he4a3;
	#20
	A = 16'h55e4;
	B = 16'hd9bf;
	ans = 16'hf43b;
	#20
	A = 16'hd89f;
	B = 16'hdba5;
	ans = 16'h786a;
	#20
	A = 16'h5414;
	B = 16'hd90f;
	ans = 16'hf128;
	#20
	A = 16'h59b8;
	B = 16'hd94d;
	ans = 16'hf794;
	#20
	A = 16'hd804;
	B = 16'h544b;
	ans = 16'hf04f;
	#20
	A = 16'hd986;
	B = 16'h5a91;
	ans = 16'hf889;
	#20
	A = 16'h5911;
	B = 16'hcb86;
	ans = 16'he8c4;
	#20
	A = 16'h5078;
	B = 16'h54d4;
	ans = 16'h6965;
	#20
	A = 16'h59d3;
	B = 16'hd786;
	ans = 16'hf57a;
	#20
	A = 16'h593e;
	B = 16'hd717;
	ans = 16'hf4a5;
	#20
	A = 16'h5866;
	B = 16'hd834;
	ans = 16'hf49f;
	#20
	A = 16'h55d2;
	B = 16'h4d61;
	ans = 16'h67d4;
	#20
	A = 16'h504d;
	B = 16'h4704;
	ans = 16'h5b8b;
	#20
	A = 16'h5a3e;
	B = 16'h5739;
	ans = 16'h75a3;
	#20
	A = 16'h588c;
	B = 16'h5b26;
	ans = 16'h7810;
	#20
	A = 16'hd3a3;
	B = 16'hd6cd;
	ans = 16'h6e7e;
	#20
	A = 16'hd512;
	B = 16'hdb5e;
	ans = 16'h74ab;
	#20
	A = 16'hd149;
	B = 16'h5544;
	ans = 16'heaf5;
	#20
	A = 16'h5124;
	B = 16'hdbdc;
	ans = 16'hf10d;
	#20
	A = 16'h585c;
	B = 16'h5067;
	ans = 16'h6ccc;
	#20
	A = 16'h5032;
	B = 16'hdae2;
	ans = 16'hef38;
	#20
	A = 16'h50f2;
	B = 16'h548e;
	ans = 16'h69a2;
	#20
	A = 16'h563b;
	B = 16'hd91b;
	ans = 16'hf3f4;
	#20
	A = 16'hd1dc;
	B = 16'hda83;
	ans = 16'h70c5;
	#20
	A = 16'h551d;
	B = 16'h5a79;
	ans = 16'h7423;
	#20
	A = 16'hd50c;
	B = 16'h5b12;
	ans = 16'hf476;
	#20
	A = 16'h4950;
	B = 16'hd862;
	ans = 16'he5d2;
	#20
	A = 16'hdb49;
	B = 16'h5ab5;
	ans = 16'hfa1c;
	#20
	A = 16'h59cf;
	B = 16'hdba5;
	ans = 16'hf98d;
	#20
	A = 16'h5175;
	B = 16'hdb67;
	ans = 16'hf10d;
	#20
	A = 16'hd599;
	B = 16'h4e53;
	ans = 16'he86d;
	#20
	A = 16'h5963;
	B = 16'h598f;
	ans = 16'h777c;
	#20
	A = 16'h5bd6;
	B = 16'hd399;
	ans = 16'hf371;
	#20
	A = 16'h54c6;
	B = 16'h5aba;
	ans = 16'h7403;
	#20
	A = 16'h589a;
	B = 16'h5b49;
	ans = 16'h7831;
	#20
	A = 16'h5804;
	B = 16'hd48b;
	ans = 16'hf090;
	#20
	A = 16'h5b30;
	B = 16'h581d;
	ans = 16'h7764;
	#20
	A = 16'h5986;
	B = 16'h55c9;
	ans = 16'h73fd;
	#20
	A = 16'h5bbd;
	B = 16'h530b;
	ans = 16'h72d0;
	#20
	A = 16'hd484;
	B = 16'h502b;
	ans = 16'he8b5;
	#20
	A = 16'hd4a0;
	B = 16'h5b51;
	ans = 16'hf43b;
	#20
	A = 16'h4c56;
	B = 16'h59e8;
	ans = 16'h6a67;
	#20
	A = 16'h5b0a;
	B = 16'hdb4b;
	ans = 16'hfa6b;
	#20
	A = 16'h5b25;
	B = 16'hcc79;
	ans = 16'hebfd;
	#20
	A = 16'hd46d;
	B = 16'hdb4f;
	ans = 16'h740b;
	#20
	A = 16'hc555;
	B = 16'h55d2;
	ans = 16'hdfc2;
	#20
	A = 16'h54d4;
	B = 16'h57e8;
	ans = 16'h70c6;
	#20
	A = 16'h4f04;
	B = 16'hd7d1;
	ans = 16'headb;
	#20
	A = 16'h5be2;
	B = 16'h4963;
	ans = 16'h694f;
	#20
	A = 16'hd5f9;
	B = 16'h548d;
	ans = 16'heecc;
	#20
	A = 16'h52b2;
	B = 16'h5acc;
	ans = 16'h71b0;
	#20
	A = 16'hd57b;
	B = 16'hdb9f;
	ans = 16'h7539;
	#20
	A = 16'h5a56;
	B = 16'h5bf3;
	ans = 16'h7a4c;
	#20
	A = 16'h52dc;
	B = 16'h52ff;
	ans = 16'h6a00;
	#20
	A = 16'h5687;
	B = 16'hd928;
	ans = 16'hf435;
	#20
	A = 16'hd681;
	B = 16'hd89f;
	ans = 16'h7384;
	#20
	A = 16'h5b6c;
	B = 16'hd806;
	ans = 16'hf777;
	#20
	A = 16'h4c54;
	B = 16'hd89f;
	ans = 16'he900;
	#20
	A = 16'hd96f;
	B = 16'hcbef;
	ans = 16'h6963;
	#20
	A = 16'h57fc;
	B = 16'hd8ab;
	ans = 16'hf4a9;
	#20
	A = 16'h53c8;
	B = 16'h4e9a;
	ans = 16'h666c;
	#20
	A = 16'h5936;
	B = 16'h5909;
	ans = 16'h768f;
	#20
	A = 16'h5868;
	B = 16'h5972;
	ans = 16'h7600;
	#20
	A = 16'h5b58;
	B = 16'hd0a4;
	ans = 16'hf043;
	#20
	A = 16'hc473;
	B = 16'hda50;
	ans = 16'h6305;
	#20
	A = 16'hdb85;
	B = 16'hd8d8;
	ans = 16'h788e;
	#20
	A = 16'h5a70;
	B = 16'h5bdf;
	ans = 16'h7a55;
	#20
	A = 16'hd992;
	B = 16'h59bc;
	ans = 16'hf7fc;
	#20
	A = 16'hdb41;
	B = 16'hdab2;
	ans = 16'h7a12;
	#20
	A = 16'hd8c4;
	B = 16'hcaab;
	ans = 16'h67f2;
	#20
	A = 16'h556a;
	B = 16'h55b8;
	ans = 16'h6fbe;
	#20
	A = 16'h5142;
	B = 16'hd76c;
	ans = 16'hece1;
	#20
	A = 16'hdad7;
	B = 16'h58bd;
	ans = 16'hf80d;
	#20
	A = 16'h547f;
	B = 16'hd4fe;
	ans = 16'hed9d;
	#20
	A = 16'hbcaf;
	B = 16'hdbd5;
	ans = 16'h5c96;
	#20
	A = 16'hd83f;
	B = 16'hdb54;
	ans = 16'h77c7;
	#20
	A = 16'hda36;
	B = 16'hd79f;
	ans = 16'h75eb;
	#20
	A = 16'h5420;
	B = 16'hc450;
	ans = 16'hdc72;
	#20
	A = 16'h5a98;
	B = 16'h4e2a;
	ans = 16'h6d15;
	#20
	A = 16'h5bc1;
	B = 16'h5b4b;
	ans = 16'h7b12;
	#20
	A = 16'h5a55;
	B = 16'hd11d;
	ans = 16'hf00c;
	#20
	A = 16'h583a;
	B = 16'h4827;
	ans = 16'h6463;
	#20
	A = 16'h57bd;
	B = 16'h51ac;
	ans = 16'h6d7c;
	#20
	A = 16'hd274;
	B = 16'hdbe6;
	ans = 16'h725f;
	#20
	A = 16'h5488;
	B = 16'hd641;
	ans = 16'hef16;
	#20
	A = 16'h584d;
	B = 16'h576b;
	ans = 16'h73fa;
	#20
	A = 16'h5945;
	B = 16'h596a;
	ans = 16'h7722;
	#20
	A = 16'hc9b3;
	B = 16'h5b81;
	ans = 16'he959;
	#20
	A = 16'h594f;
	B = 16'hcfb7;
	ans = 16'hed1f;
	#20
	A = 16'hd42e;
	B = 16'hcd45;
	ans = 16'h6582;
	#20
	A = 16'hd931;
	B = 16'hdaae;
	ans = 16'h7856;
	#20
	A = 16'hd363;
	B = 16'h57f9;
	ans = 16'hef5d;
	#20
	A = 16'h56de;
	B = 16'h4817;
	ans = 16'h6305;
	#20
	A = 16'hd27c;
	B = 16'hd92e;
	ans = 16'h7033;
	#20
	A = 16'hd349;
	B = 16'hcdf2;
	ans = 16'h656a;
	#20
	A = 16'h5116;
	B = 16'hd2d8;
	ans = 16'he85a;
	#20
	A = 16'h571e;
	B = 16'h5b7c;
	ans = 16'h76a9;
	#20
	A = 16'h5aa3;
	B = 16'h597d;
	ans = 16'h788e;
	#20
	A = 16'h480e;
	B = 16'h4d09;
	ans = 16'h591b;
	#20
	A = 16'h3856;
	B = 16'hda26;
	ans = 16'hd6aa;
	#20
	A = 16'hd908;
	B = 16'h5230;
	ans = 16'hefc8;
	#20
	A = 16'h4921;
	B = 16'hdb01;
	ans = 16'he87e;
	#20
	A = 16'hdb74;
	B = 16'h57b0;
	ans = 16'hf729;
	#20
	A = 16'hd76b;
	B = 16'h4967;
	ans = 16'he502;
	#20
	A = 16'hd9c8;
	B = 16'hdbe8;
	ans = 16'h79b7;
	#20
	A = 16'h500d;
	B = 16'h5924;
	ans = 16'h6d35;
	#20
	A = 16'h5b76;
	B = 16'h5b70;
	ans = 16'h7af0;
	#20
	A = 16'hdba3;
	B = 16'h585e;
	ans = 16'hf82b;
	#20
	A = 16'h543a;
	B = 16'h54ec;
	ans = 16'h6d33;
	#20
	A = 16'h5bd6;
	B = 16'h5479;
	ans = 16'h7462;
	#20
	A = 16'hd9b6;
	B = 16'hdb6b;
	ans = 16'h794c;
	#20
	A = 16'hd8c9;
	B = 16'hdacf;
	ans = 16'h7813;
	#20
	A = 16'hd85c;
	B = 16'h573b;
	ans = 16'hf3e1;
	#20
	A = 16'hd98f;
	B = 16'h48eb;
	ans = 16'he6d6;
	#20
	A = 16'hcdc3;
	B = 16'hd92c;
	ans = 16'h6b73;
	#20
	A = 16'hd993;
	B = 16'h4fa8;
	ans = 16'hed56;
	#20
	A = 16'h5853;
	B = 16'h5b49;
	ans = 16'h77e0;
	#20
	A = 16'hdae8;
	B = 16'hd9b0;
	ans = 16'h78e9;
	#20
	A = 16'h4fc1;
	B = 16'h5b55;
	ans = 16'h6f1b;
	#20
	A = 16'hd497;
	B = 16'hd83f;
	ans = 16'h70df;
	#20
	A = 16'h59da;
	B = 16'hd9b7;
	ans = 16'hf82e;
	#20
	A = 16'h57c6;
	B = 16'hcd18;
	ans = 16'he8f3;
	#20
	A = 16'hda10;
	B = 16'h4a0f;
	ans = 16'he897;
	#20
	A = 16'h57ec;
	B = 16'h5575;
	ans = 16'h7167;
	#20
	A = 16'hda32;
	B = 16'h557b;
	ans = 16'hf43f;
	#20
	A = 16'h55b7;
	B = 16'h52b0;
	ans = 16'h6cc7;
	#20
	A = 16'h44ac;
	B = 16'h5b4c;
	ans = 16'h6443;
	#20
	A = 16'h586f;
	B = 16'hd8c5;
	ans = 16'hf549;
	#20
	A = 16'hd77b;
	B = 16'h53fd;
	ans = 16'hef78;
	#20
	A = 16'h5a76;
	B = 16'h5826;
	ans = 16'h76b3;
	#20
	A = 16'h5822;
	B = 16'h5a9d;
	ans = 16'h76d5;
	#20
	A = 16'hdb98;
	B = 16'h5661;
	ans = 16'hf60e;
	#20
	A = 16'h5854;
	B = 16'h4846;
	ans = 16'h64a0;
	#20
	A = 16'h4c28;
	B = 16'h582c;
	ans = 16'h6856;
	#20
	A = 16'hd65c;
	B = 16'h5abd;
	ans = 16'hf55b;
	#20
	A = 16'h55ee;
	B = 16'h5a27;
	ans = 16'h748f;
	#20
	A = 16'h5935;
	B = 16'h574b;
	ans = 16'h74bf;
	#20
	A = 16'h586f;
	B = 16'h56db;
	ans = 16'h7399;
	#20
	A = 16'h5a9f;
	B = 16'hd92d;
	ans = 16'hf849;
	#20
	A = 16'h59b5;
	B = 16'hd9ef;
	ans = 16'hf83c;
	#20
	A = 16'h54c3;
	B = 16'h51fb;
	ans = 16'h6b1f;
	#20
	A = 16'h59a8;
	B = 16'hdaec;
	ans = 16'hf8e5;
	#20
	A = 16'hd71a;
	B = 16'hd785;
	ans = 16'h72ad;
	#20
	A = 16'hdb46;
	B = 16'hd85c;
	ans = 16'h77ed;
	#20
	A = 16'hda1a;
	B = 16'h54d2;
	ans = 16'hf35a;
	#20
	A = 16'hd8f4;
	B = 16'h5415;
	ans = 16'hf10e;
	#20
	A = 16'hd424;
	B = 16'hd948;
	ans = 16'h7178;
	#20
	A = 16'hcdee;
	B = 16'h4e98;
	ans = 16'he0e3;
	#20
	A = 16'hda39;
	B = 16'h5a0b;
	ans = 16'hf8b3;
	#20
	A = 16'hd0af;
	B = 16'hdaaf;
	ans = 16'h6fd3;
	#20
	A = 16'h5be7;
	B = 16'hd9e5;
	ans = 16'hf9d3;
	#20
	A = 16'h5b52;
	B = 16'h565a;
	ans = 16'h75d0;
	#20
	A = 16'hdad5;
	B = 16'h52bd;
	ans = 16'hf1c1;
	#20
	A = 16'h593b;
	B = 16'h5a85;
	ans = 16'h7843;
	#20
	A = 16'h5aea;
	B = 16'h4c3b;
	ans = 16'h6b50;
	#20
	A = 16'hd6eb;
	B = 16'hd5ab;
	ans = 16'h70e7;
	#20
	A = 16'h4c13;
	B = 16'hd2cf;
	ans = 16'he2ef;
	#20
	A = 16'h55d5;
	B = 16'h58cd;
	ans = 16'h7300;
	#20
	A = 16'h5954;
	B = 16'h5a08;
	ans = 16'h7804;
	#20
	A = 16'h5bea;
	B = 16'hca57;
	ans = 16'hea46;
	#20
	A = 16'hdb70;
	B = 16'h58b2;
	ans = 16'hf85d;
	#20
	A = 16'h54ef;
	B = 16'hd6c5;
	ans = 16'hf02d;
	#20
	A = 16'h5b2a;
	B = 16'hd0f3;
	ans = 16'hf06f;
	#20
	A = 16'h58f2;
	B = 16'h4f82;
	ans = 16'h6ca4;
	#20
	A = 16'h55d1;
	B = 16'hdb37;
	ans = 16'hf53f;
	#20
	A = 16'h5b89;
	B = 16'h56b4;
	ans = 16'h7650;
	#20
	A = 16'hd91a;
	B = 16'hd9d3;
	ans = 16'h776e;
	#20
	A = 16'hdbd7;
	B = 16'h530b;
	ans = 16'hf2e7;
	#20
	A = 16'hdb02;
	B = 16'h5a5d;
	ans = 16'hf993;
	#20
	A = 16'h5721;
	B = 16'h55ac;
	ans = 16'h710e;
	#20
	A = 16'hd511;
	B = 16'hc89e;
	ans = 16'h61d9;
	#20
	A = 16'h5813;
	B = 16'hdb32;
	ans = 16'hf754;
	#20
	A = 16'h5540;
	B = 16'hd7e6;
	ans = 16'hf12f;
	#20
	A = 16'hdb8c;
	B = 16'h5a36;
	ans = 16'hf9dc;
	#20
	A = 16'h5aff;
	B = 16'hd6b6;
	ans = 16'hf5de;
	#20
	A = 16'h5484;
	B = 16'h5084;
	ans = 16'h6919;
	#20
	A = 16'h5b95;
	B = 16'hdb30;
	ans = 16'hfad0;
	#20
	A = 16'h572d;
	B = 16'h4cb7;
	ans = 16'h683b;
	#20
	A = 16'hdb1a;
	B = 16'h45f1;
	ans = 16'he546;
	#20
	A = 16'hd8cc;
	B = 16'hd885;
	ans = 16'h756b;
	#20
	A = 16'h586a;
	B = 16'h4e32;
	ans = 16'h6ad6;
	#20
	A = 16'h55c2;
	B = 16'hdb92;
	ans = 16'hf573;
	#20
	A = 16'hd933;
	B = 16'hdbc9;
	ans = 16'h790f;
	#20
	A = 16'h58d1;
	B = 16'hd8bf;
	ans = 16'hf5b7;
	#20
	A = 16'hdb8a;
	B = 16'h4e04;
	ans = 16'hedab;
	#20
	A = 16'hd5e7;
	B = 16'h46e6;
	ans = 16'he117;
	#20
	A = 16'hd62a;
	B = 16'h55a5;
	ans = 16'hf059;
	#20
	A = 16'h4f46;
	B = 16'h5032;
	ans = 16'h63a1;
	#20
	A = 16'h57c5;
	B = 16'h4a4d;
	ans = 16'h661f;
	#20
	A = 16'hcdf2;
	B = 16'hd808;
	ans = 16'h69fe;
	#20
	A = 16'hd4ac;
	B = 16'hd4a1;
	ans = 16'h6d68;
	#20
	A = 16'h5b99;
	B = 16'h5593;
	ans = 16'h754b;
	#20
	A = 16'h5956;
	B = 16'hd70b;
	ans = 16'hf4b3;
	#20
	A = 16'hcedb;
	B = 16'hd225;
	ans = 16'h6544;
	#20
	A = 16'h5143;
	B = 16'hda5b;
	ans = 16'hf02e;
	#20
	A = 16'h581e;
	B = 16'h51f7;
	ans = 16'h6e24;
	#20
	A = 16'hd53f;
	B = 16'hdb22;
	ans = 16'h74ad;
	#20
	A = 16'hd9cb;
	B = 16'hdba5;
	ans = 16'h7989;
	#20
	A = 16'hd992;
	B = 16'hd18f;
	ans = 16'h6fbe;
	#20
	A = 16'h5101;
	B = 16'h5aec;
	ans = 16'h7054;
	#20
	A = 16'h581f;
	B = 16'hd395;
	ans = 16'hefd0;
	#20
	A = 16'h5690;
	B = 16'hd944;
	ans = 16'hf452;
	#20
	A = 16'hd4a3;
	B = 16'hdad4;
	ans = 16'h73ea;
	#20
	A = 16'h59fc;
	B = 16'h5490;
	ans = 16'h72d3;
	#20
	A = 16'h536c;
	B = 16'h5af0;
	ans = 16'h7270;
	#20
	A = 16'h56b9;
	B = 16'h5a5f;
	ans = 16'h755b;
	#20
	A = 16'h3ff7;
	B = 16'h582e;
	ans = 16'h5c29;
	#20
	A = 16'hd403;
	B = 16'hd19b;
	ans = 16'h699f;
	#20
	A = 16'hd92f;
	B = 16'hdb5b;
	ans = 16'h78c4;
	#20
	A = 16'hd09a;
	B = 16'hd2a0;
	ans = 16'h679f;
	#20
	A = 16'hdbc3;
	B = 16'h5032;
	ans = 16'hf012;
	#20
	A = 16'h4657;
	B = 16'hd5ad;
	ans = 16'he07f;
	#20
	A = 16'h5b6a;
	B = 16'h5273;
	ans = 16'h71fa;
	#20
	A = 16'hd571;
	B = 16'h59db;
	ans = 16'hf3f7;
	#20
	A = 16'hd2ec;
	B = 16'h5189;
	ans = 16'he8ca;
	#20
	A = 16'h57a7;
	B = 16'hda31;
	ans = 16'hf5ec;
	#20
	A = 16'hd8d4;
	B = 16'h560b;
	ans = 16'hf34b;
	#20
	A = 16'h5885;
	B = 16'hda6d;
	ans = 16'hf743;
	#20
	A = 16'hd5f7;
	B = 16'hd807;
	ans = 16'h7201;
	#20
	A = 16'hda37;
	B = 16'hd15e;
	ans = 16'h702b;
	#20
	A = 16'hd871;
	B = 16'hd516;
	ans = 16'h71a6;
	#20
	A = 16'hd368;
	B = 16'hd15f;
	ans = 16'h68f9;
	#20
	A = 16'hd232;
	B = 16'h563a;
	ans = 16'hecd2;
	#20
	A = 16'h3591;
	B = 16'h5a1e;
	ans = 16'h5442;
	#20
	A = 16'hcc79;
	B = 16'h5bb6;
	ans = 16'hec50;
	#20
	A = 16'h5bd5;
	B = 16'h5a51;
	ans = 16'h7a2f;
	#20
	A = 16'h54f3;
	B = 16'h5690;
	ans = 16'h700f;
	#20
	A = 16'hdbd4;
	B = 16'hd435;
	ans = 16'h741e;
	#20
	A = 16'hd0fa;
	B = 16'h59e9;
	ans = 16'hef5a;
	#20
	A = 16'hd5cc;
	B = 16'h5927;
	ans = 16'hf378;
	#20
	A = 16'hd815;
	B = 16'hdbe7;
	ans = 16'h7808;
	#20
	A = 16'hcd88;
	B = 16'h5a84;
	ans = 16'hec81;
	#20
	A = 16'h564b;
	B = 16'h5420;
	ans = 16'h6e7d;
	#20
	A = 16'h54a6;
	B = 16'h5646;
	ans = 16'h6f4a;
	#20
	A = 16'hdb9b;
	B = 16'h5721;
	ans = 16'hf6c7;
	#20
	A = 16'hdb94;
	B = 16'h5998;
	ans = 16'hf94c;
	#20
	A = 16'hd79a;
	B = 16'h583c;
	ans = 16'hf406;
	#20
	A = 16'hd723;
	B = 16'hd566;
	ans = 16'h70d1;
	#20
	A = 16'hd9bd;
	B = 16'hccb8;
	ans = 16'h6ac5;
	#20
	A = 16'hd8d0;
	B = 16'h565b;
	ans = 16'hf3a5;
	#20
	A = 16'hd52f;
	B = 16'h5bbe;
	ans = 16'hf504;
	#20
	A = 16'hd3e9;
	B = 16'h4e20;
	ans = 16'he60e;
	#20
	A = 16'h5b5f;
	B = 16'hdbcc;
	ans = 16'hfb2f;
	#20
	A = 16'hd7c8;
	B = 16'h554e;
	ans = 16'hf129;
	#20
	A = 16'h5522;
	B = 16'h52e6;
	ans = 16'h6c6d;
	#20
	A = 16'h523a;
	B = 16'h4af5;
	ans = 16'h616a;
	#20
	A = 16'hcf20;
	B = 16'hd597;
	ans = 16'h68fa;
	#20
	A = 16'hd6d8;
	B = 16'h549c;
	ans = 16'hefe3;
	#20
	A = 16'hd4d7;
	B = 16'hd395;
	ans = 16'h6c96;
	#20
	A = 16'h5819;
	B = 16'hdbf3;
	ans = 16'hf812;
	#20
	A = 16'h5a4d;
	B = 16'hd89d;
	ans = 16'hf744;
	#20
	A = 16'h5a5b;
	B = 16'hda1e;
	ans = 16'hf8dc;
	#20
	A = 16'hdbee;
	B = 16'hd63b;
	ans = 16'h762d;
	#20
	A = 16'h50d6;
	B = 16'h58e5;
	ans = 16'h6deb;
	#20
	A = 16'hd8c1;
	B = 16'h582b;
	ans = 16'hf4f4;
	#20
	A = 16'h54d2;
	B = 16'h5b38;
	ans = 16'h7459;
	#20
	A = 16'h588a;
	B = 16'h5acd;
	ans = 16'h77b8;
	#20
	A = 16'hd69e;
	B = 16'h5a97;
	ans = 16'hf573;
	#20
	A = 16'hd568;
	B = 16'h5347;
	ans = 16'heceb;
	#20
	A = 16'hd93b;
	B = 16'hdb42;
	ans = 16'h78bf;
	#20
	A = 16'hda15;
	B = 16'h595e;
	ans = 16'hf815;
	#20
	A = 16'hd6a7;
	B = 16'h59a2;
	ans = 16'hf4af;
	#20
	A = 16'hd9e6;
	B = 16'h5403;
	ans = 16'hf1ea;
	#20
	A = 16'hd913;
	B = 16'h5681;
	ans = 16'hf420;
	#20
	A = 16'h57f2;
	B = 16'h53c9;
	ans = 16'h6fbb;
	#20
	A = 16'h56fb;
	B = 16'h58fb;
	ans = 16'h7459;
	#20
	A = 16'h52fe;
	B = 16'h4eac;
	ans = 16'h65d5;
	#20
	A = 16'hcbca;
	B = 16'hdac0;
	ans = 16'h6a92;
	#20
	A = 16'h503c;
	B = 16'h5b96;
	ans = 16'h7004;
	#20
	A = 16'h5948;
	B = 16'h5451;
	ans = 16'h71b3;
	#20
	A = 16'hd04f;
	B = 16'h57d1;
	ans = 16'hec36;
	#20
	A = 16'h56d9;
	B = 16'h51e1;
	ans = 16'h6d08;
	#20
	A = 16'hda32;
	B = 16'h4f99;
	ans = 16'hede2;
	#20
	A = 16'hd916;
	B = 16'hdb8a;
	ans = 16'h78cb;
	#20
	A = 16'hd92d;
	B = 16'hbf27;
	ans = 16'h5ca1;
	#20
	A = 16'h598d;
	B = 16'h4d98;
	ans = 16'h6bc3;
	#20
	A = 16'hd17c;
	B = 16'hdb09;
	ans = 16'h70d3;
	#20
	A = 16'h5a95;
	B = 16'hd69c;
	ans = 16'hf570;
	#20
	A = 16'h5203;
	B = 16'h592e;
	ans = 16'h6fc9;
	#20
	A = 16'h5a20;
	B = 16'h5be0;
	ans = 16'h7a08;
	#20
	A = 16'h540e;
	B = 16'hda83;
	ans = 16'hf29a;
	#20
	A = 16'hd46e;
	B = 16'h5b0d;
	ans = 16'hf3cf;
	#20
	A = 16'hd9b3;
	B = 16'h5185;
	ans = 16'hefdd;
	#20
	A = 16'hd042;
	B = 16'hdbc9;
	ans = 16'h7025;
	#20
	A = 16'h57ff;
	B = 16'h5adc;
	ans = 16'h76db;
	#20
	A = 16'hdaa7;
	B = 16'h59b7;
	ans = 16'hf8c1;
	#20
	A = 16'hdad5;
	B = 16'h599b;
	ans = 16'hf8c9;
	#20
	A = 16'h512d;
	B = 16'h5b64;
	ans = 16'h70c8;
	#20
	A = 16'hdb10;
	B = 16'hdbba;
	ans = 16'h7ad2;
	#20
	A = 16'hd331;
	B = 16'h5adf;
	ans = 16'hf22d;
	#20
	A = 16'hcc80;
	B = 16'hd4bd;
	ans = 16'h6555;
	#20
	A = 16'h5ba9;
	B = 16'h5968;
	ans = 16'h792d;
	#20
	A = 16'hd66d;
	B = 16'hd677;
	ans = 16'h7131;
	#20
	A = 16'hd942;
	B = 16'h5bc7;
	ans = 16'hf91d;
	#20
	A = 16'hd352;
	B = 16'h586c;
	ans = 16'hf00c;
	#20
	A = 16'hd5c1;
	B = 16'h5a63;
	ans = 16'hf498;
	#20
	A = 16'hda33;
	B = 16'h4d44;
	ans = 16'hec15;
	#20
	A = 16'hd9de;
	B = 16'h4c00;
	ans = 16'he9de;
	#20
	A = 16'h5a46;
	B = 16'hd51a;
	ans = 16'hf400;
	#20
	A = 16'hd8b3;
	B = 16'hce6b;
	ans = 16'h6b8a;
	#20
	A = 16'hd8d8;
	B = 16'hdba8;
	ans = 16'h78a3;
	#20
	A = 16'h5a0a;
	B = 16'hd385;
	ans = 16'hf1ad;
	#20
	A = 16'hc8ef;
	B = 16'hd7d8;
	ans = 16'h64d6;
	#20
	A = 16'h5249;
	B = 16'hda31;
	ans = 16'hf0dd;
	#20
	A = 16'h5930;
	B = 16'hcb8d;
	ans = 16'he8e5;
	#20
	A = 16'hd518;
	B = 16'h4f68;
	ans = 16'he8b7;
	#20
	A = 16'hdb1a;
	B = 16'h4b08;
	ans = 16'hea3e;
	#20
	A = 16'h552a;
	B = 16'h5bc2;
	ans = 16'h7502;
	#20
	A = 16'hce9d;
	B = 16'h5096;
	ans = 16'he395;
	#20
	A = 16'hd794;
	B = 16'h5420;
	ans = 16'hefd1;
	#20
	A = 16'hdbef;
	B = 16'hd827;
	ans = 16'h781e;
	#20
	A = 16'h558b;
	B = 16'hdb4d;
	ans = 16'hf50f;
	#20
	A = 16'hd3c6;
	B = 16'hcfd4;
	ans = 16'h679b;
	#20
	A = 16'h5561;
	B = 16'h5246;
	ans = 16'h6c38;
	#20
	A = 16'hdb54;
	B = 16'hd97b;
	ans = 16'h7905;
	#20
	A = 16'hd95f;
	B = 16'h5bd6;
	ans = 16'hf943;
	#20
	A = 16'hd987;
	B = 16'h40fb;
	ans = 16'hdee2;
	#20
	A = 16'hc4e7;
	B = 16'h4eb1;
	ans = 16'hd81a;
	#20
	A = 16'h51a9;
	B = 16'h5b72;
	ans = 16'h7145;
	#20
	A = 16'hd84a;
	B = 16'hdb85;
	ans = 16'h7808;
	#20
	A = 16'h5b1b;
	B = 16'h56a4;
	ans = 16'h75e6;
	#20
	A = 16'h5b30;
	B = 16'hd001;
	ans = 16'hef32;
	#20
	A = 16'h5863;
	B = 16'hd40a;
	ans = 16'hf06e;
	#20
	A = 16'h50ce;
	B = 16'hcc03;
	ans = 16'he0d2;
	#20
	A = 16'h5aba;
	B = 16'h5a3a;
	ans = 16'h793c;
	#20
	A = 16'hda2f;
	B = 16'hd9f0;
	ans = 16'h7897;
	#20
	A = 16'hd478;
	B = 16'h5023;
	ans = 16'he89f;
	#20
	A = 16'hd83a;
	B = 16'h41db;
	ans = 16'hde30;
	#20
	A = 16'hd884;
	B = 16'hd284;
	ans = 16'h6f5b;
	#20
	A = 16'h5696;
	B = 16'h5ad6;
	ans = 16'h75a1;
	#20
	A = 16'hda3c;
	B = 16'h4fd1;
	ans = 16'hee17;
	#20
	A = 16'hc8fa;
	B = 16'hd972;
	ans = 16'h66c6;
	#20
	A = 16'h59e7;
	B = 16'h5b3a;
	ans = 16'h7955;
	#20
	A = 16'h547e;
	B = 16'h4826;
	ans = 16'h60a9;
	#20
	A = 16'hd4c3;
	B = 16'h5bc9;
	ans = 16'hf4a2;
	#20
	A = 16'hc1e4;
	B = 16'hd6b2;
	ans = 16'h5cee;
	#20
	A = 16'hd33a;
	B = 16'hd4ed;
	ans = 16'h6c73;
	#20
	A = 16'h5923;
	B = 16'hd4d3;
	ans = 16'hf232;
	#20
	A = 16'hd645;
	B = 16'hd243;
	ans = 16'h6ce8;
	#20
	A = 16'h557a;
	B = 16'h5bdc;
	ans = 16'h7561;
	#20
	A = 16'h525d;
	B = 16'h5bd8;
	ans = 16'h723d;
	#20
	A = 16'h5b13;
	B = 16'hd373;
	ans = 16'hf296;
	#20
	A = 16'hdbe1;
	B = 16'hd8ce;
	ans = 16'h78bb;
	#20
	A = 16'hdbe6;
	B = 16'h54fd;
	ans = 16'hf4ed;
	#20
	A = 16'hd3c2;
	B = 16'h5a39;
	ans = 16'hf209;
	#20
	A = 16'h51ed;
	B = 16'h50cf;
	ans = 16'h6720;
	#20
	A = 16'h557d;
	B = 16'hd8a4;
	ans = 16'hf25e;
	#20
	A = 16'hd8a6;
	B = 16'h4d9f;
	ans = 16'hea88;
	#20
	A = 16'hd83f;
	B = 16'hd502;
	ans = 16'h7151;
	#20
	A = 16'hd8b0;
	B = 16'hcc55;
	ans = 16'h6914;
	#20
	A = 16'h5afc;
	B = 16'h58b8;
	ans = 16'h781f;
	#20
	A = 16'hd01e;
	B = 16'h5621;
	ans = 16'hea4f;
	#20
	A = 16'hce40;
	B = 16'h4974;
	ans = 16'hdc43;
	#20
	A = 16'hd7af;
	B = 16'h598d;
	ans = 16'hf555;
	#20
	A = 16'h56c1;
	B = 16'h5065;
	ans = 16'h6b6c;
	#20
	A = 16'h5a5e;
	B = 16'h5a89;
	ans = 16'h7934;
	#20
	A = 16'hd8e3;
	B = 16'h5b77;
	ans = 16'hf88f;
	#20
	A = 16'hd746;
	B = 16'hd587;
	ans = 16'h7106;
	#20
	A = 16'hd1fa;
	B = 16'h596e;
	ans = 16'hf00e;
	#20
	A = 16'h5bd6;
	B = 16'hda07;
	ans = 16'hf9e7;
	#20
	A = 16'hd5b2;
	B = 16'hda9a;
	ans = 16'h74b3;
	#20
	A = 16'hccce;
	B = 16'hdac3;
	ans = 16'h6c10;
	#20
	A = 16'h5892;
	B = 16'hdb67;
	ans = 16'hf83b;
	#20
	A = 16'h582e;
	B = 16'h5402;
	ans = 16'h7030;
	#20
	A = 16'hdb76;
	B = 16'h56e3;
	ans = 16'hf66c;
	#20
	A = 16'h507e;
	B = 16'hda22;
	ans = 16'heee3;
	#20
	A = 16'hdb72;
	B = 16'hdbe2;
	ans = 16'h7b56;
	#20
	A = 16'hda06;
	B = 16'h5620;
	ans = 16'hf49d;
	#20
	A = 16'h546d;
	B = 16'h54b3;
	ans = 16'h6d33;
	#20
	A = 16'hd947;
	B = 16'hdaef;
	ans = 16'h7893;
	#20
	A = 16'hd6b4;
	B = 16'h596e;
	ans = 16'hf48d;
	#20
	A = 16'hd301;
	B = 16'hda8e;
	ans = 16'h71bd;
	#20
	A = 16'h5836;
	B = 16'h59b0;
	ans = 16'h75fd;
	#20
	A = 16'hd8d0;
	B = 16'h5bac;
	ans = 16'hf89d;
	#20
	A = 16'hd9b9;
	B = 16'h528d;
	ans = 16'hf0b0;
	#20
	A = 16'h5b46;
	B = 16'hd743;
	ans = 16'hf69a;
	#20
	A = 16'h57b5;
	B = 16'h5029;
	ans = 16'h6c02;
	#20
	A = 16'h5a8a;
	B = 16'hd449;
	ans = 16'hf301;
	#20
	A = 16'hd10b;
	B = 16'hc769;
	ans = 16'h5cac;
	#20
	A = 16'h5b10;
	B = 16'h58a4;
	ans = 16'h7819;
	#20
	A = 16'hd9e0;
	B = 16'h58e3;
	ans = 16'hf72d;
	#20
	A = 16'h5748;
	B = 16'h4433;
	ans = 16'h5fa5;
	#20
	A = 16'h58f1;
	B = 16'hccc0;
	ans = 16'he9de;
	#20
	A = 16'h5935;
	B = 16'hdaee;
	ans = 16'hf883;
	#20
	A = 16'h56b5;
	B = 16'h5531;
	ans = 16'h705a;
	#20
	A = 16'h58aa;
	B = 16'hd9b5;
	ans = 16'hf6a8;
	#20
	A = 16'hd6dd;
	B = 16'hd220;
	ans = 16'h6d41;
	#20
	A = 16'h5af8;
	B = 16'hda4c;
	ans = 16'hf97c;
	#20
	A = 16'h5bb4;
	B = 16'hd5f8;
	ans = 16'hf5bf;
	#20
	A = 16'hdb54;
	B = 16'h5b39;
	ans = 16'hfa9e;
	#20
	A = 16'hd918;
	B = 16'hd58f;
	ans = 16'h7314;
	#20
	A = 16'h558d;
	B = 16'h5154;
	ans = 16'h6b65;
	#20
	A = 16'hd860;
	B = 16'hd549;
	ans = 16'h71c8;
	#20
	A = 16'hdb90;
	B = 16'hda6c;
	ans = 16'h7a12;
	#20
	A = 16'h4923;
	B = 16'h5b47;
	ans = 16'h68ac;
	#20
	A = 16'hd95b;
	B = 16'hd71e;
	ans = 16'h74c4;
	#20
	A = 16'hc846;
	B = 16'hd644;
	ans = 16'h62b2;
	#20
	A = 16'h5923;
	B = 16'hd392;
	ans = 16'hf0dc;
	#20
	A = 16'hd288;
	B = 16'h5530;
	ans = 16'hec3c;
	#20
	A = 16'h58db;
	B = 16'hd67e;
	ans = 16'hf3e1;
	#20
	A = 16'hd153;
	B = 16'hcdca;
	ans = 16'h63b5;
	#20
	A = 16'h5bc5;
	B = 16'hdbba;
	ans = 16'hfb81;
	#20
	A = 16'h528e;
	B = 16'hd5be;
	ans = 16'hecb4;
	#20
	A = 16'h591d;
	B = 16'hcdf7;
	ans = 16'heba0;
	#20
	A = 16'hd8ef;
	B = 16'hd65b;
	ans = 16'h73d7;
	#20
	A = 16'hd2af;
	B = 16'hdaa9;
	ans = 16'h7190;
	#20
	A = 16'hd5c8;
	B = 16'hd749;
	ans = 16'h7144;
	#20
	A = 16'h58e5;
	B = 16'h559d;
	ans = 16'h72de;
	#20
	A = 16'h4148;
	B = 16'h4ed9;
	ans = 16'h5485;
	#20
	A = 16'h5882;
	B = 16'hd4f6;
	ans = 16'hf197;
	#20
	A = 16'h56b9;
	B = 16'hd6e2;
	ans = 16'hf1c9;
	#20
	A = 16'hd5af;
	B = 16'h5bab;
	ans = 16'hf573;
	#20
	A = 16'hcc25;
	B = 16'hd948;
	ans = 16'h6979;
	#20
	A = 16'hd447;
	B = 16'hd4a1;
	ans = 16'h6cf3;
	#20
	A = 16'hc9d3;
	B = 16'h587d;
	ans = 16'he689;
	#20
	A = 16'hd066;
	B = 16'h584a;
	ans = 16'hecb7;
	#20
	A = 16'h5979;
	B = 16'hd9d8;
	ans = 16'hf7ff;
	#20
	A = 16'hd1b8;
	B = 16'h565e;
	ans = 16'hec8d;
	#20
	A = 16'hd405;
	B = 16'hda8e;
	ans = 16'h7296;
	#20
	A = 16'hd897;
	B = 16'hd8f9;
	ans = 16'h75b5;
	#20
	A = 16'hd960;
	B = 16'h574d;
	ans = 16'hf4e8;
	#20
	A = 16'hda65;
	B = 16'hda6a;
	ans = 16'h7920;
	#20
	A = 16'hd046;
	B = 16'hdb05;
	ans = 16'h6f80;
	#20
	A = 16'hda6f;
	B = 16'hcca8;
	ans = 16'h6b7d;
	#20
	A = 16'hdb06;
	B = 16'h5646;
	ans = 16'hf582;
	#20
	A = 16'h5bde;
	B = 16'hd63e;
	ans = 16'hf623;
	#20
	A = 16'h58a6;
	B = 16'hd076;
	ans = 16'hed2f;
	#20
	A = 16'hd4f4;
	B = 16'h5b1a;
	ans = 16'hf466;
	#20
	A = 16'h59ec;
	B = 16'hcb5f;
	ans = 16'he975;
	#20
	A = 16'hdae6;
	B = 16'hd924;
	ans = 16'h786f;
	#20
	A = 16'hdacf;
	B = 16'hda77;
	ans = 16'h7981;
	#20
	A = 16'h4969;
	B = 16'h55d3;
	ans = 16'h63e1;
	#20
	A = 16'hdbac;
	B = 16'h5b09;
	ans = 16'hfabf;
	#20
	A = 16'h4d54;
	B = 16'h5957;
	ans = 16'h6b1d;
	#20
	A = 16'hca0b;
	B = 16'hd9e8;
	ans = 16'h6876;
	#20
	A = 16'hdbe2;
	B = 16'h4c27;
	ans = 16'hec17;
	#20
	A = 16'h5ad8;
	B = 16'h4676;
	ans = 16'h6587;
	#20
	A = 16'h5877;
	B = 16'hd9ff;
	ans = 16'hf6b1;
	#20
	A = 16'h5967;
	B = 16'hdb8f;
	ans = 16'hf91b;
	#20
	A = 16'h5937;
	B = 16'h5881;
	ans = 16'h75df;
	#20
	A = 16'hd89b;
	B = 16'hd8ff;
	ans = 16'h75c1;
	#20
	A = 16'hd964;
	B = 16'h5a84;
	ans = 16'hf864;
	#20
	A = 16'hd269;
	B = 16'hd9ac;
	ans = 16'h708b;
	#20
	A = 16'hd4b8;
	B = 16'h4f57;
	ans = 16'he854;
	#20
	A = 16'h5840;
	B = 16'hd128;
	ans = 16'hed7a;
	#20
	A = 16'hd90e;
	B = 16'hd280;
	ans = 16'h701b;
	#20
	A = 16'hd704;
	B = 16'hc37e;
	ans = 16'h5e92;
	#20
	A = 16'h5b01;
	B = 16'h5900;
	ans = 16'h7861;
	#20
	A = 16'h54a5;
	B = 16'hd978;
	ans = 16'hf25a;
	#20
	A = 16'hcf4e;
	B = 16'h5a10;
	ans = 16'hed89;
	#20
	A = 16'hd762;
	B = 16'hd6c9;
	ans = 16'h7243;
	#20
	A = 16'hd4c7;
	B = 16'hd356;
	ans = 16'h6c61;
	#20
	A = 16'hd1e0;
	B = 16'hdab3;
	ans = 16'h70eb;
	#20
	A = 16'hd850;
	B = 16'h50e1;
	ans = 16'hed43;
	#20
	A = 16'h5540;
	B = 16'hcd68;
	ans = 16'he718;
	#20
	A = 16'hdb23;
	B = 16'hdbe9;
	ans = 16'h7b0e;
	#20
	A = 16'h5a8c;
	B = 16'h5911;
	ans = 16'h7825;
	#20
	A = 16'h5456;
	B = 16'h5ab2;
	ans = 16'h7342;
	#20
	A = 16'hd8de;
	B = 16'hd52b;
	ans = 16'h724a;
	#20
	A = 16'hd125;
	B = 16'h544d;
	ans = 16'he988;
	#20
	A = 16'hd9b4;
	B = 16'hda59;
	ans = 16'h7886;
	#20
	A = 16'hd865;
	B = 16'hd9aa;
	ans = 16'h7639;
	#20
	A = 16'h5882;
	B = 16'h51c6;
	ans = 16'h6e82;
	#20
	A = 16'h51d8;
	B = 16'hda64;
	ans = 16'hf0ab;
	#20
	A = 16'h50b1;
	B = 16'hd8af;
	ans = 16'hed7e;
	#20
	A = 16'h599e;
	B = 16'h5899;
	ans = 16'h7675;
	#20
	A = 16'hd5cb;
	B = 16'h595b;
	ans = 16'hf3c2;
	#20
	A = 16'h481a;
	B = 16'hd8b2;
	ans = 16'he4d1;
	#20
	A = 16'hd838;
	B = 16'hd966;
	ans = 16'h75b2;
	#20
	A = 16'hca5d;
	B = 16'hd0b9;
	ans = 16'h5f83;
	#20
	A = 16'h5253;
	B = 16'hd7db;
	ans = 16'hee36;
	#20
	A = 16'hdb26;
	B = 16'hdae0;
	ans = 16'h7a25;
	#20
	A = 16'hd804;
	B = 16'h5a13;
	ans = 16'hf619;
	#20
	A = 16'h5462;
	B = 16'hd9e6;
	ans = 16'hf277;
	#20
	A = 16'h53a0;
	B = 16'hd678;
	ans = 16'hee2a;
	#20
	A = 16'h4fac;
	B = 16'h59b8;
	ans = 16'h6d7c;
	#20
	A = 16'hdba6;
	B = 16'h596e;
	ans = 16'hf931;
	#20
	A = 16'h51d9;
	B = 16'h5b17;
	ans = 16'h712f;
	#20
	A = 16'hd750;
	B = 16'h5047;
	ans = 16'hebd2;
	#20
	A = 16'hd82d;
	B = 16'h4477;
	ans = 16'he0a9;
	#20
	A = 16'hdb2e;
	B = 16'hdbd9;
	ans = 16'h7b0b;
	#20
	A = 16'hda91;
	B = 16'hda6e;
	ans = 16'h7947;
	#20
	A = 16'h5094;
	B = 16'h5666;
	ans = 16'h6b53;
	#20
	A = 16'hdacd;
	B = 16'h5385;
	ans = 16'hf264;
	#20
	A = 16'h5469;
	B = 16'hd189;
	ans = 16'hea1a;
	#20
	A = 16'hdad8;
	B = 16'h55da;
	ans = 16'hf501;
	#20
	A = 16'hd0fe;
	B = 16'hd05c;
	ans = 16'h6571;
	#20
	A = 16'hd9e7;
	B = 16'h5839;
	ans = 16'hf63b;
	#20
	A = 16'hdb33;
	B = 16'h53f9;
	ans = 16'hf32d;
	#20
	A = 16'hda2b;
	B = 16'h5b78;
	ans = 16'hf9c2;
	#20
	A = 16'h545f;
	B = 16'h5434;
	ans = 16'h6c98;
	#20
	A = 16'h519f;
	B = 16'h5961;
	ans = 16'h6f8f;
	#20
	A = 16'h5929;
	B = 16'h59a3;
	ans = 16'h7746;
	#20
	A = 16'hd5a5;
	B = 16'h4fd8;
	ans = 16'he989;
	#20
	A = 16'h4fb7;
	B = 16'h5366;
	ans = 16'h6722;
	#20
	A = 16'h5744;
	B = 16'hd041;
	ans = 16'hebba;
	#20
	A = 16'hdbb9;
	B = 16'hdb03;
	ans = 16'h7ac5;
	#20
	A = 16'h539f;
	B = 16'hce6b;
	ans = 16'he61d;
	#20
	A = 16'h586b;
	B = 16'h5128;
	ans = 16'h6db2;
	#20
	A = 16'hd729;
	B = 16'h5387;
	ans = 16'heebd;
	#20
	A = 16'hd86e;
	B = 16'h5b0d;
	ans = 16'hf7cf;
	#20
	A = 16'hd814;
	B = 16'h58b4;
	ans = 16'hf4cc;
	#20
	A = 16'hd247;
	B = 16'hdb4b;
	ans = 16'h71b9;
	#20
	A = 16'h5ae1;
	B = 16'h59da;
	ans = 16'h7908;
	#20
	A = 16'hd894;
	B = 16'h57d0;
	ans = 16'hf479;
	#20
	A = 16'hd86b;
	B = 16'h4c6a;
	ans = 16'he8e0;
	#20
	A = 16'hd8d2;
	B = 16'h5bcd;
	ans = 16'hf8b3;
	#20
	A = 16'h5475;
	B = 16'hd667;
	ans = 16'hef22;
	#20
	A = 16'h5977;
	B = 16'h5680;
	ans = 16'h7471;
	#20
	A = 16'h5650;
	B = 16'hd97b;
	ans = 16'hf453;
	#20
	A = 16'h5809;
	B = 16'hdb59;
	ans = 16'hf76a;
	#20
	A = 16'hdbf5;
	B = 16'h5863;
	ans = 16'hf85d;
	#20
	A = 16'hd89b;
	B = 16'h53d4;
	ans = 16'hf082;
	#20
	A = 16'hd87e;
	B = 16'hdb82;
	ans = 16'h7837;
	#20
	A = 16'h57ef;
	B = 16'hd9fb;
	ans = 16'hf5ee;
	#20
	A = 16'h4d50;
	B = 16'h5572;
	ans = 16'h673b;
	#20
	A = 16'h5b24;
	B = 16'hdb6a;
	ans = 16'hfa9e;
	#20
	A = 16'h5a9b;
	B = 16'hdad4;
	ans = 16'hf9a3;
	#20
	A = 16'h5a72;
	B = 16'hcc05;
	ans = 16'hea7a;
	#20
	A = 16'hd678;
	B = 16'h58fb;
	ans = 16'hf407;
	#20
	A = 16'h5a51;
	B = 16'hd4b5;
	ans = 16'hf36f;
	#20
	A = 16'h5598;
	B = 16'hd580;
	ans = 16'hefb1;
	#20
	A = 16'h5751;
	B = 16'h558b;
	ans = 16'h7112;
	#20
	A = 16'hd43b;
	B = 16'hdabb;
	ans = 16'h731e;
	#20
	A = 16'h53df;
	B = 16'hd771;
	ans = 16'hef52;
	#20
	A = 16'h5818;
	B = 16'h59e5;
	ans = 16'h7608;
	#20
	A = 16'hd418;
	B = 16'h4115;
	ans = 16'hd933;
	#20
	A = 16'hd738;
	B = 16'hd798;
	ans = 16'h72da;
	#20
	A = 16'hd771;
	B = 16'hdb92;
	ans = 16'h770b;
	#20
	A = 16'h5994;
	B = 16'hd512;
	ans = 16'hf312;
	#20
	A = 16'hdb3d;
	B = 16'h59ee;
	ans = 16'hf95d;
	#20
	A = 16'h5746;
	B = 16'h52f1;
	ans = 16'h6e50;
	#20
	A = 16'hcc4f;
	B = 16'hd695;
	ans = 16'h6717;
	#20
	A = 16'hd622;
	B = 16'hdba6;
	ans = 16'h75dd;
	#20
	A = 16'h5551;
	B = 16'h595a;
	ans = 16'h731d;
	#20
	A = 16'hd853;
	B = 16'hd999;
	ans = 16'h760d;
	#20
	A = 16'hcff5;
	B = 16'h4e77;
	ans = 16'he26e;
	#20
	A = 16'h5ae5;
	B = 16'hd19c;
	ans = 16'hf0d6;
	#20
	A = 16'hdbbb;
	B = 16'h52fc;
	ans = 16'hf2c0;
	#20
	A = 16'h5b04;
	B = 16'h4f62;
	ans = 16'h6e79;
	#20
	A = 16'hda8f;
	B = 16'h5a9d;
	ans = 16'hf96c;
	#20
	A = 16'h58bc;
	B = 16'hdb28;
	ans = 16'hf83c;
	#20
	A = 16'hd7c4;
	B = 16'h587d;
	ans = 16'hf45b;
	#20
	A = 16'hda48;
	B = 16'hd6a3;
	ans = 16'h7536;
	#20
	A = 16'h4cb6;
	B = 16'hd6d4;
	ans = 16'he805;
	#20
	A = 16'hd400;
	B = 16'h5a2c;
	ans = 16'hf22c;
	#20
	A = 16'h5af3;
	B = 16'hd54e;
	ans = 16'hf49c;
	#20
	A = 16'hd7e4;
	B = 16'hd0ba;
	ans = 16'h6ca9;
	#20
	A = 16'h5ac8;
	B = 16'h550e;
	ans = 16'h7449;
	#20
	A = 16'hd0b5;
	B = 16'h59f9;
	ans = 16'hef07;
	#20
	A = 16'h595d;
	B = 16'h4e97;
	ans = 16'h6c6b;
	#20
	A = 16'hd68b;
	B = 16'h5a0e;
	ans = 16'hf4f4;
	#20
	A = 16'h4e79;
	B = 16'hda4d;
	ans = 16'hed19;
	#20
	A = 16'hdb43;
	B = 16'h5472;
	ans = 16'hf409;
	#20
	A = 16'h580e;
	B = 16'hd85b;
	ans = 16'hf46a;
	#20
	A = 16'hc921;
	B = 16'h5442;
	ans = 16'he176;
	#20
	A = 16'hda52;
	B = 16'h590c;
	ans = 16'hf7f9;
	#20
	A = 16'hd9fd;
	B = 16'hdab2;
	ans = 16'h7903;
	#20
	A = 16'h50e2;
	B = 16'hd0ba;
	ans = 16'he5c5;
	#20
	A = 16'h57a1;
	B = 16'hd58a;
	ans = 16'hf148;
	#20
	A = 16'h5bea;
	B = 16'h58c8;
	ans = 16'h78bb;
	#20
	A = 16'hdb4c;
	B = 16'h5759;
	ans = 16'hf6b4;
	#20
	A = 16'h552e;
	B = 16'hdaee;
	ans = 16'hf47d;
	#20
	A = 16'h4d59;
	B = 16'h5ba3;
	ans = 16'h6d1b;
	#20
	A = 16'h553b;
	B = 16'h5a03;
	ans = 16'h73dc;
	#20
	A = 16'hd734;
	B = 16'hc100;
	ans = 16'h5c80;
	#20
	A = 16'hd8b5;
	B = 16'h5921;
	ans = 16'hf609;
	#20
	A = 16'hdbde;
	B = 16'hcfea;
	ans = 16'h6fc8;
	#20
	A = 16'h55cb;
	B = 16'h4c96;
	ans = 16'h66a4;
	#20
	A = 16'h5911;
	B = 16'hd160;
	ans = 16'heecf;
	#20
	A = 16'hd833;
	B = 16'h5863;
	ans = 16'hf49b;
	#20
	A = 16'hd5eb;
	B = 16'h51d6;
	ans = 16'hec51;
	#20
	A = 16'h5b46;
	B = 16'hd10c;
	ans = 16'hf097;
	#20
	A = 16'hd6cd;
	B = 16'hd492;
	ans = 16'h6fc5;
	#20
	A = 16'h5628;
	B = 16'hda5e;
	ans = 16'hf4e6;
	#20
	A = 16'h562d;
	B = 16'h5b96;
	ans = 16'h75db;
	#20
	A = 16'hdaea;
	B = 16'h58c9;
	ans = 16'hf823;
	#20
	A = 16'h58c7;
	B = 16'hd782;
	ans = 16'hf47c;
	#20
	A = 16'h52de;
	B = 16'hcce1;
	ans = 16'he430;
	#20
	A = 16'hd174;
	B = 16'hd90e;
	ans = 16'h6ee4;
	#20
	A = 16'hd1c8;
	B = 16'hda77;
	ans = 16'h70ac;
	#20
	A = 16'h5134;
	B = 16'h578b;
	ans = 16'h6ce8;
	#20
	A = 16'hd02f;
	B = 16'h594a;
	ans = 16'hed88;
	#20
	A = 16'hd934;
	B = 16'h5651;
	ans = 16'hf41c;
	#20
	A = 16'h4ed5;
	B = 16'hd19a;
	ans = 16'he4c9;
	#20
	A = 16'hd1f8;
	B = 16'h5816;
	ans = 16'hee19;
	#20
	A = 16'hd6f0;
	B = 16'h51cc;
	ans = 16'hed07;
	#20
	A = 16'hd76b;
	B = 16'h5b7b;
	ans = 16'hf6f0;
	#20
	A = 16'hcdae;
	B = 16'hd14d;
	ans = 16'h6387;
	#20
	A = 16'hdb71;
	B = 16'h58c8;
	ans = 16'hf873;
	#20
	A = 16'h5770;
	B = 16'hd3f9;
	ans = 16'hef69;
	#20
	A = 16'h585f;
	B = 16'hd25d;
	ans = 16'heef4;
	#20
	A = 16'hcdc4;
	B = 16'h59ba;
	ans = 16'hec21;
	#20
	A = 16'h58af;
	B = 16'hd89d;
	ans = 16'hf567;
	#20
	A = 16'h502d;
	B = 16'h54db;
	ans = 16'h6912;
	#20
	A = 16'h4a65;
	B = 16'hd97e;
	ans = 16'he864;
	#20
	A = 16'h58e4;
	B = 16'h5495;
	ans = 16'h719a;
	#20
	A = 16'h5a2e;
	B = 16'h5b77;
	ans = 16'h79c4;
	#20
	A = 16'hd4ba;
	B = 16'hd893;
	ans = 16'h7168;
	#20
	A = 16'hd522;
	B = 16'hd6b2;
	ans = 16'h704c;
	#20
	A = 16'h407c;
	B = 16'h4d47;
	ans = 16'h51eb;
	#20
	A = 16'h5aa2;
	B = 16'hd632;
	ans = 16'hf523;
	#20
	A = 16'h57b7;
	B = 16'h5620;
	ans = 16'h71e8;
	#20
	A = 16'hd8b6;
	B = 16'hd7da;
	ans = 16'h74a0;
	#20
	A = 16'h4a58;
	B = 16'h5980;
	ans = 16'h685c;
	#20
	A = 16'hd4fa;
	B = 16'h557a;
	ans = 16'heed0;
	#20
	A = 16'hda2e;
	B = 16'h5230;
	ans = 16'hf0c8;
	#20
	A = 16'hd93a;
	B = 16'h57d7;
	ans = 16'hf51f;
	#20
	A = 16'h5832;
	B = 16'h50a3;
	ans = 16'h6cdd;
	#20
	A = 16'h4f4a;
	B = 16'hdb5f;
	ans = 16'heeb7;
	#20
	A = 16'h54a9;
	B = 16'hc5de;
	ans = 16'hded6;
	#20
	A = 16'h54cb;
	B = 16'hdb44;
	ans = 16'hf45a;
	#20
	A = 16'h56c0;
	B = 16'h5561;
	ans = 16'h708a;
	#20
	A = 16'hd89e;
	B = 16'h5042;
	ans = 16'hecea;
	#20
	A = 16'hda3c;
	B = 16'hd5da;
	ans = 16'h748f;
	#20
	A = 16'hc697;
	B = 16'hdaf4;
	ans = 16'h65ba;
	#20
	A = 16'h5896;
	B = 16'hd844;
	ans = 16'hf4e4;
	#20
	A = 16'h5493;
	B = 16'h5621;
	ans = 16'h6f02;
	#20
	A = 16'hd7b5;
	B = 16'hd926;
	ans = 16'h74f6;
	#20
	A = 16'h5b0c;
	B = 16'hd792;
	ans = 16'hf6ab;
	#20
	A = 16'h5844;
	B = 16'h595c;
	ans = 16'h75b7;
	#20
	A = 16'hd7a1;
	B = 16'hd73f;
	ans = 16'h72e9;
	#20
	A = 16'hd99e;
	B = 16'hd834;
	ans = 16'h75e7;
	#20
	A = 16'h5ab6;
	B = 16'hd19f;
	ans = 16'hf0b7;
	#20
	A = 16'hd37c;
	B = 16'h5875;
	ans = 16'hf02b;
	#20
	A = 16'hcc7a;
	B = 16'hd9ee;
	ans = 16'h6aa3;
	#20
	A = 16'h4993;
	B = 16'hdb1f;
	ans = 16'he8f6;
	#20
	A = 16'h541f;
	B = 16'h50c0;
	ans = 16'h68e5;
	#20
	A = 16'h5b54;
	B = 16'hd89f;
	ans = 16'hf83c;
	#20
	A = 16'h5a42;
	B = 16'hcf27;
	ans = 16'hed98;
	#20
	A = 16'hda93;
	B = 16'hd113;
	ans = 16'h702b;
	#20
	A = 16'h5a62;
	B = 16'hdab0;
	ans = 16'hf956;
	#20
	A = 16'hda9c;
	B = 16'hd1dd;
	ans = 16'h70d8;
	#20
	A = 16'hd9d2;
	B = 16'hd42f;
	ans = 16'h7216;
	#20
	A = 16'h553d;
	B = 16'h5158;
	ans = 16'h6aff;
	#20
	A = 16'hd8e4;
	B = 16'h5b43;
	ans = 16'hf870;
	#20
	A = 16'h5bb7;
	B = 16'h550f;
	ans = 16'h74e1;
	#20
	A = 16'hd86a;
	B = 16'hd8f9;
	ans = 16'h757d;
	#20
	A = 16'hd2fc;
	B = 16'h5adc;
	ans = 16'hf1fd;
	#20
	A = 16'h5916;
	B = 16'h588a;
	ans = 16'h75c5;
	#20
	A = 16'hd608;
	B = 16'h4527;
	ans = 16'hdfc5;
	#20
	A = 16'h589e;
	B = 16'h550c;
	ans = 16'h71d3;
	#20
	A = 16'h5a81;
	B = 16'h505a;
	ans = 16'h6f13;
	#20
	A = 16'hd0e9;
	B = 16'h58e8;
	ans = 16'hee06;
	#20
	A = 16'h5591;
	B = 16'h5491;
	ans = 16'h6e5b;
	#20
	A = 16'hdb24;
	B = 16'hda20;
	ans = 16'h7978;
	#20
	A = 16'hda6a;
	B = 16'hd20d;
	ans = 16'h70da;
	#20
	A = 16'hccb9;
	B = 16'h5003;
	ans = 16'he0bd;
	#20
	A = 16'h51ce;
	B = 16'hdaa8;
	ans = 16'hf0d4;
	#20
	A = 16'h5a65;
	B = 16'hd377;
	ans = 16'hf1f7;
	#20
	A = 16'hd72e;
	B = 16'hda5a;
	ans = 16'h75b3;
	#20
	A = 16'hd671;
	B = 16'hdb5a;
	ans = 16'h75eb;
	#20
	A = 16'hd614;
	B = 16'hdac5;
	ans = 16'h7525;
	#20
	A = 16'hdbf1;
	B = 16'h592c;
	ans = 16'hf922;
	#20
	A = 16'hd457;
	B = 16'h541f;
	ans = 16'hec79;
	#20
	A = 16'h59ec;
	B = 16'h59a7;
	ans = 16'h782f;
	#20
	A = 16'h58e2;
	B = 16'h51e4;
	ans = 16'h6f31;
	#20
	A = 16'h5a74;
	B = 16'h5372;
	ans = 16'h7201;
	#20
	A = 16'h5840;
	B = 16'h4f5a;
	ans = 16'h6bd0;
	#20
	A = 16'hce92;
	B = 16'hd524;
	ans = 16'h6839;
	#20
	A = 16'h5b04;
	B = 16'hd836;
	ans = 16'hf763;
	#20
	A = 16'hc847;
	B = 16'hd82e;
	ans = 16'h6478;
	#20
	A = 16'h5a94;
	B = 16'hdb78;
	ans = 16'hfa24;
	#20
	A = 16'h4fab;
	B = 16'hd93a;
	ans = 16'hed02;
	#20
	A = 16'h59e0;
	B = 16'hdb4f;
	ans = 16'hf95e;
	#20
	A = 16'hda5c;
	B = 16'hd4d6;
	ans = 16'h73b0;
	#20
	A = 16'hd5b0;
	B = 16'hd691;
	ans = 16'h70ab;
	#20
	A = 16'h5270;
	B = 16'h578c;
	ans = 16'h6e13;
	#20
	A = 16'h567a;
	B = 16'h55aa;
	ans = 16'h7096;
	#20
	A = 16'hd6ef;
	B = 16'h582a;
	ans = 16'hf338;
	#20
	A = 16'h58c1;
	B = 16'hda0d;
	ans = 16'hf731;
	#20
	A = 16'hdbab;
	B = 16'hb012;
	ans = 16'h4fce;
	#20
	A = 16'h5879;
	B = 16'hd5a1;
	ans = 16'hf24b;
	#20
	A = 16'h59bf;
	B = 16'h5b44;
	ans = 16'h7938;
	#20
	A = 16'hd369;
	B = 16'hd94a;
	ans = 16'h70e6;
	#20
	A = 16'h4aa5;
	B = 16'hcfb5;
	ans = 16'hde67;
	#20
	A = 16'h5b85;
	B = 16'hcfd7;
	ans = 16'hef5e;
	#20
	A = 16'h563c;
	B = 16'hcfee;
	ans = 16'hea2e;
	#20
	A = 16'h5a6f;
	B = 16'h54a4;
	ans = 16'h7377;
	#20
	A = 16'h5857;
	B = 16'hd284;
	ans = 16'hef12;
	#20
	A = 16'hd9ae;
	B = 16'h5680;
	ans = 16'hf49d;
	#20
	A = 16'hdabc;
	B = 16'h5732;
	ans = 16'hf60f;
	#20
	A = 16'h5b27;
	B = 16'h5bdf;
	ans = 16'h7b09;
	#20
	A = 16'hd9c8;
	B = 16'h5496;
	ans = 16'hf2a1;
	#20
	A = 16'h5bf4;
	B = 16'h593f;
	ans = 16'h7937;
	#20
	A = 16'hcc1d;
	B = 16'hd912;
	ans = 16'h6937;
	#20
	A = 16'hd4cd;
	B = 16'hdacd;
	ans = 16'h7415;
	#20
	A = 16'h5a12;
	B = 16'h59e4;
	ans = 16'h7878;
	#20
	A = 16'hd95d;
	B = 16'h575c;
	ans = 16'hf4ef;
	#20
	A = 16'h5bd3;
	B = 16'hcc32;
	ans = 16'hec1a;
	#20
	A = 16'h574e;
	B = 16'h5b32;
	ans = 16'h7692;
	#20
	A = 16'h5936;
	B = 16'h5a69;
	ans = 16'h782d;
	#20
	A = 16'h546e;
	B = 16'h524d;
	ans = 16'h6afa;
	#20
	A = 16'hd5bb;
	B = 16'hd139;
	ans = 16'h6b7b;
	#20
	A = 16'hd17e;
	B = 16'h53a6;
	ans = 16'he940;
	#20
	A = 16'hd494;
	B = 16'h44de;
	ans = 16'hdd92;
	#20
	A = 16'h5ad6;
	B = 16'h5a20;
	ans = 16'h793c;
	#20
	A = 16'hcbc6;
	B = 16'h59bc;
	ans = 16'he992;
	#20
	A = 16'hdbdd;
	B = 16'hd76c;
	ans = 16'h774c;
	#20
	A = 16'hd360;
	B = 16'hd7af;
	ans = 16'h6f15;
	#20
	A = 16'h592b;
	B = 16'h57af;
	ans = 16'h74f7;
	#20
	A = 16'hdbb0;
	B = 16'hd439;
	ans = 16'h740f;
	#20
	A = 16'hd6b7;
	B = 16'h5447;
	ans = 16'hef2e;
	#20
	A = 16'h5858;
	B = 16'h57f0;
	ans = 16'h744f;
	#20
	A = 16'hd2cf;
	B = 16'h525a;
	ans = 16'he968;
	#20
	A = 16'h5162;
	B = 16'hd4b7;
	ans = 16'hea58;
	#20
	A = 16'hd93e;
	B = 16'h51e7;
	ans = 16'hefbc;
	#20
	A = 16'hd990;
	B = 16'hd804;
	ans = 16'h7596;
	#20
	A = 16'h5bbb;
	B = 16'h5a25;
	ans = 16'h79f0;
	#20
	A = 16'hdb3d;
	B = 16'hd653;
	ans = 16'h75b9;
	#20
	A = 16'hd7ff;
	B = 16'h52a6;
	ans = 16'heea5;
	#20
	A = 16'h52ce;
	B = 16'h569b;
	ans = 16'h6d9e;
	#20
	A = 16'h5b97;
	B = 16'h5972;
	ans = 16'h792b;
	#20
	A = 16'hd710;
	B = 16'h5984;
	ans = 16'hf4df;
	#20
	A = 16'h5b84;
	B = 16'h5a43;
	ans = 16'h79e2;
	#20
	A = 16'hd7f6;
	B = 16'hcc62;
	ans = 16'h685d;
	#20
	A = 16'h5623;
	B = 16'hdbdc;
	ans = 16'hf607;
	#20
	A = 16'h4e90;
	B = 16'hbb19;
	ans = 16'hcdd3;
	#20
	A = 16'h58ec;
	B = 16'h5a63;
	ans = 16'h77dc;
	#20
	A = 16'h5497;
	B = 16'hd8be;
	ans = 16'hf171;
	#20
	A = 16'hd7a7;
	B = 16'hd224;
	ans = 16'h6de0;
	#20
	A = 16'hdb41;
	B = 16'h5af1;
	ans = 16'hfa4b;
	#20
	A = 16'h5059;
	B = 16'hc675;
	ans = 16'hdb05;
	#20
	A = 16'h4f0d;
	B = 16'h545f;
	ans = 16'h67b4;
	#20
	A = 16'h4680;
	B = 16'hd800;
	ans = 16'he280;
	#20
	A = 16'hd784;
	B = 16'h5b64;
	ans = 16'hf6f1;
	#20
	A = 16'hd5a9;
	B = 16'h577c;
	ans = 16'hf14c;
	#20
	A = 16'hd042;
	B = 16'h554d;
	ans = 16'he9a4;
	#20
	A = 16'hdb3a;
	B = 16'hda1a;
	ans = 16'h7983;
	#20
	A = 16'h4cb2;
	B = 16'hdaac;
	ans = 16'hebd5;
	#20
	A = 16'h546c;
	B = 16'h5855;
	ans = 16'h70ca;
	#20
	A = 16'h5ac5;
	B = 16'hd5e8;
	ans = 16'hf4ff;
	#20
	A = 16'h586f;
	B = 16'h5954;
	ans = 16'h75e8;
	#20
	A = 16'h5099;
	B = 16'h57a1;
	ans = 16'h6c62;
	#20
	A = 16'h5b61;
	B = 16'hcf6f;
	ans = 16'heedb;
	#20
	A = 16'h5ba7;
	B = 16'hd836;
	ans = 16'hf807;
	#20
	A = 16'h5580;
	B = 16'h5881;
	ans = 16'h7231;
	#20
	A = 16'hdadc;
	B = 16'h5151;
	ans = 16'hf08f;
	#20
	A = 16'hd992;
	B = 16'h5948;
	ans = 16'hf75b;
	#20
	A = 16'h5974;
	B = 16'h5981;
	ans = 16'h7781;
	#20
	A = 16'hc13d;
	B = 16'h5b64;
	ans = 16'he0d7;
	#20
	A = 16'hd9f2;
	B = 16'hda94;
	ans = 16'h78e3;
	#20
	A = 16'h54c4;
	B = 16'h4699;
	ans = 16'h5fdc;
	#20
	A = 16'h53d2;
	B = 16'hd51e;
	ans = 16'hed01;
	#20
	A = 16'h54b5;
	B = 16'h580e;
	ans = 16'h70c5;
	#20
	A = 16'hd22d;
	B = 16'h5055;
	ans = 16'he6b0;
	#20
	A = 16'hd75b;
	B = 16'hcd4d;
	ans = 16'h68e0;
	#20
	A = 16'hd65a;
	B = 16'hcc8d;
	ans = 16'h673a;
	#20
	A = 16'hd567;
	B = 16'h5ba6;
	ans = 16'hf52a;
	#20
	A = 16'hcff8;
	B = 16'h5a1c;
	ans = 16'hee16;
	#20
	A = 16'h5ac9;
	B = 16'hd908;
	ans = 16'hf844;
	#20
	A = 16'hc47d;
	B = 16'hc85e;
	ans = 16'h50e6;
	#20
	A = 16'h588f;
	B = 16'hd367;
	ans = 16'hf038;
	#20
	A = 16'hcc2b;
	B = 16'h59b4;
	ans = 16'he9f1;
	#20
	A = 16'h595f;
	B = 16'hdaf6;
	ans = 16'hf8ac;
	#20
	A = 16'hd5d0;
	B = 16'h542d;
	ans = 16'hee11;
	#20
	A = 16'hccfa;
	B = 16'hd895;
	ans = 16'h69b3;
	#20
	A = 16'h509f;
	B = 16'h590b;
	ans = 16'h6dd3;
	#20
	A = 16'hc358;
	B = 16'h5b7a;
	ans = 16'he2dd;
	#20
	A = 16'hcc93;
	B = 16'h55fd;
	ans = 16'he6d9;
	#20
	A = 16'h4ef8;
	B = 16'h56f3;
	ans = 16'h6a0e;
	#20
	A = 16'h5502;
	B = 16'h5851;
	ans = 16'h7167;
	#20
	A = 16'h5612;
	B = 16'h59ae;
	ans = 16'h744f;
	#20
	A = 16'h5729;
	B = 16'hdab8;
	ans = 16'hf603;
	#20
	A = 16'h56bb;
	B = 16'hcef5;
	ans = 16'he9da;
	#20
	A = 16'hda41;
	B = 16'h57c5;
	ans = 16'hf613;
	#20
	A = 16'hdaa6;
	B = 16'hcb97;
	ans = 16'h6a4f;
	#20
	A = 16'hd0fd;
	B = 16'hd88b;
	ans = 16'h6daa;
	#20
	A = 16'h5112;
	B = 16'hdb93;
	ans = 16'hf0cd;
	#20
	A = 16'hdbae;
	B = 16'hda74;
	ans = 16'h7a32;
	#20
	A = 16'hd860;
	B = 16'hd9c7;
	ans = 16'h7652;
	#20
	A = 16'h541d;
	B = 16'hd817;
	ans = 16'hf035;
	#20
	A = 16'h58cf;
	B = 16'h5ab8;
	ans = 16'h780a;
	#20
	A = 16'h5979;
	B = 16'h52ce;
	ans = 16'h70a8;
	#20
	A = 16'h54a6;
	B = 16'h5a28;
	ans = 16'h7327;
	#20
	A = 16'hd2d0;
	B = 16'hd5ad;
	ans = 16'h6cd5;
	#20
	A = 16'h5358;
	B = 16'hd500;
	ans = 16'hec97;
	#20
	A = 16'hd060;
	B = 16'h575f;
	ans = 16'hec08;
	#20
	A = 16'h5592;
	B = 16'hd98c;
	ans = 16'hf3b9;
	#20
	A = 16'h5934;
	B = 16'h54e8;
	ans = 16'h7262;
	#20
	A = 16'h5b37;
	B = 16'hcec0;
	ans = 16'hee16;
	#20
	A = 16'h537a;
	B = 16'hc986;
	ans = 16'he129;
	#20
	A = 16'h4406;
	B = 16'h5a75;
	ans = 16'h627f;
	#20
	A = 16'hd6a5;
	B = 16'hd946;
	ans = 16'h7461;
	#20
	A = 16'h5704;
	B = 16'hd904;
	ans = 16'hf466;
	#20
	A = 16'hd5da;
	B = 16'hcc31;
	ans = 16'h6622;
	#20
	A = 16'hdbc8;
	B = 16'h5ad9;
	ans = 16'hfaa9;
	#20
	A = 16'hcf99;
	B = 16'hbcdf;
	ans = 16'h50a0;
	#20
	A = 16'hd949;
	B = 16'h502d;
	ans = 16'hed84;
	#20
	A = 16'h549a;
	B = 16'h5374;
	ans = 16'h6c49;
	#20
	A = 16'h499f;
	B = 16'hdaec;
	ans = 16'he8dd;
	#20
	A = 16'hd093;
	B = 16'h5b17;
	ans = 16'hf00e;
	#20
	A = 16'h5797;
	B = 16'hceb0;
	ans = 16'hea58;
	#20
	A = 16'hd989;
	B = 16'h50eb;
	ans = 16'heece;
	#20
	A = 16'h5b21;
	B = 16'h578e;
	ans = 16'h76bb;
	#20
	A = 16'hd66d;
	B = 16'hdac4;
	ans = 16'h756f;
	#20
	A = 16'h4bbe;
	B = 16'hc57a;
	ans = 16'hd54d;
	#20
	A = 16'h4afb;
	B = 16'hd4cb;
	ans = 16'he42f;
	#20
	A = 16'h5a45;
	B = 16'h5562;
	ans = 16'h7438;
	#20
	A = 16'hdbb2;
	B = 16'h5ae1;
	ans = 16'hfa9e;
	#20
	A = 16'h4cf9;
	B = 16'hd3c1;
	ans = 16'he4d2;
	#20
	A = 16'h4970;
	B = 16'hd78e;
	ans = 16'he523;
	#20
	A = 16'h5564;
	B = 16'h474b;
	ans = 16'h60ea;
	#20
	A = 16'hd381;
	B = 16'hd399;
	ans = 16'h6b20;
	#20
	A = 16'hdbb9;
	B = 16'hd95d;
	ans = 16'h792d;
	#20
	A = 16'hd962;
	B = 16'h5aa2;
	ans = 16'hf877;
	#20
	A = 16'h4c3d;
	B = 16'h5b25;
	ans = 16'h6b92;
	#20
	A = 16'hd969;
	B = 16'hd941;
	ans = 16'h771b;
	#20
	A = 16'hd247;
	B = 16'hd81f;
	ans = 16'h6e78;
	#20
	A = 16'h5805;
	B = 16'h55f8;
	ans = 16'h71ff;
	#20
	A = 16'hd4f2;
	B = 16'h4eb5;
	ans = 16'he825;
	#20
	A = 16'hdbae;
	B = 16'h56c8;
	ans = 16'hf682;
	#20
	A = 16'h5b0c;
	B = 16'h5aee;
	ans = 16'h7a1b;
	#20
	A = 16'h4ad9;
	B = 16'hd940;
	ans = 16'he87e;
	#20
	A = 16'hdb0a;
	B = 16'hd920;
	ans = 16'h7882;
	#20
	A = 16'h572b;
	B = 16'h5ade;
	ans = 16'h7627;
	#20
	A = 16'h4b3d;
	B = 16'hd995;
	ans = 16'he90d;
	#20
	A = 16'h59f2;
	B = 16'h5989;
	ans = 16'h781d;
	#20
	A = 16'hd85d;
	B = 16'h59f0;
	ans = 16'hf67a;
	#20
	A = 16'hd67b;
	B = 16'hd2d4;
	ans = 16'h6d88;
	#20
	A = 16'hba25;
	B = 16'h51b9;
	ans = 16'hd065;
	#20
	A = 16'h54ac;
	B = 16'hd853;
	ans = 16'hf10d;
	#20
	A = 16'h5428;
	B = 16'h59d9;
	ans = 16'h7213;
	#20
	A = 16'h5abd;
	B = 16'h5b45;
	ans = 16'h7a1f;
	#20
	A = 16'h554d;
	B = 16'hd9c5;
	ans = 16'hf3a5;
	#20
	A = 16'hd49d;
	B = 16'h5878;
	ans = 16'hf127;
	#20
	A = 16'h5863;
	B = 16'h5a05;
	ans = 16'h769a;
	#20
	A = 16'hd996;
	B = 16'hd879;
	ans = 16'h763f;
	#20
	A = 16'hdac6;
	B = 16'h5b23;
	ans = 16'hfa0b;
	#20
	A = 16'h58fd;
	B = 16'hd9e5;
	ans = 16'hf75a;
	#20
	A = 16'h59af;
	B = 16'h58a3;
	ans = 16'h7697;
	#20
	A = 16'hd7d8;
	B = 16'hd496;
	ans = 16'h707f;
	#20
	A = 16'hd48e;
	B = 16'h5906;
	ans = 16'hf1b8;
	#20
	A = 16'hd6dc;
	B = 16'hd233;
	ans = 16'h6d51;
	#20
	A = 16'h562e;
	B = 16'hd9f2;
	ans = 16'hf498;
	#20
	A = 16'h58a6;
	B = 16'hcb93;
	ans = 16'he867;
	#20
	A = 16'hd570;
	B = 16'hdb04;
	ans = 16'h74c5;
	#20
	A = 16'h5072;
	B = 16'h5931;
	ans = 16'h6dc5;
	#20
	A = 16'hcfd3;
	B = 16'h58ab;
	ans = 16'hec91;
	#20
	A = 16'hcfc6;
	B = 16'hd03f;
	ans = 16'h6420;
	#20
	A = 16'h59ed;
	B = 16'hda7a;
	ans = 16'hf8cc;
	#20
	A = 16'h4ce8;
	B = 16'hd8b6;
	ans = 16'he9c7;
	#20
	A = 16'hd6cf;
	B = 16'hda16;
	ans = 16'h752e;
	#20
	A = 16'hd7e9;
	B = 16'h5871;
	ans = 16'hf464;
	#20
	A = 16'h526d;
	B = 16'hd89b;
	ans = 16'hef66;
	#20
	A = 16'hda78;
	B = 16'h4a3c;
	ans = 16'he90b;
	#20
	A = 16'hd97a;
	B = 16'h5281;
	ans = 16'hf074;
	#20
	A = 16'h5435;
	B = 16'h5bed;
	ans = 16'h742b;
	#20
	A = 16'h59c8;
	B = 16'hd8c1;
	ans = 16'hf6df;
	#20
	A = 16'hc832;
	B = 16'h4c1d;
	ans = 16'hd850;
	#20
	A = 16'hd5b6;
	B = 16'hd810;
	ans = 16'h71cd;
	#20
	A = 16'h50d8;
	B = 16'hd4ff;
	ans = 16'hea0d;
	#20
	A = 16'h5152;
	B = 16'h571f;
	ans = 16'h6cbc;
	#20
	A = 16'hd8ed;
	B = 16'hcf3a;
	ans = 16'h6c73;
	#20
	A = 16'hd060;
	B = 16'h5a2b;
	ans = 16'heebf;
	#20
	A = 16'h57d5;
	B = 16'h5b07;
	ans = 16'h76e1;
	#20
	A = 16'hd0ad;
	B = 16'h5a6d;
	ans = 16'hef83;
	#20
	A = 16'h5264;
	B = 16'h5005;
	ans = 16'h666c;
	#20
	A = 16'hd924;
	B = 16'h57d6;
	ans = 16'hf509;
	#20
	A = 16'h595b;
	B = 16'hd760;
	ans = 16'hf4f0;
	#20
	A = 16'h5bf2;
	B = 16'h5a72;
	ans = 16'h7a67;
	#20
	A = 16'hd593;
	B = 16'h4b90;
	ans = 16'he545;
	#20
	A = 16'h582f;
	B = 16'hdb15;
	ans = 16'hf768;
	#20
	A = 16'hda6b;
	B = 16'hdb20;
	ans = 16'h79b7;
	#20
	A = 16'hd8a9;
	B = 16'h4739;
	ans = 16'he435;
	#20
	A = 16'h4cbe;
	B = 16'h5a79;
	ans = 16'h6bac;
	#20
	A = 16'hd8f6;
	B = 16'hdbd1;
	ans = 16'h78d9;
	#20
	A = 16'hbb19;
	B = 16'hdb11;
	ans = 16'h5a45;
	#20
	A = 16'h4e6d;
	B = 16'hd7c2;
	ans = 16'hea3b;
	#20
	A = 16'hd986;
	B = 16'hd864;
	ans = 16'h7610;
	#20
	A = 16'h582d;
	B = 16'h5b97;
	ans = 16'h77ec;
	#20
	A = 16'h52c6;
	B = 16'hdbc7;
	ans = 16'hf296;
	#20
	A = 16'h4ffb;
	B = 16'h5b81;
	ans = 16'h6f7c;
	#20
	A = 16'h4c36;
	B = 16'hdb44;
	ans = 16'heba6;
	#20
	A = 16'h5b0c;
	B = 16'h561f;
	ans = 16'h7564;
	#20
	A = 16'hd185;
	B = 16'hd5ff;
	ans = 16'h6c23;
	#20
	A = 16'hda3a;
	B = 16'h53f4;
	ans = 16'hf231;
	#20
	A = 16'h5aee;
	B = 16'hd5e4;
	ans = 16'hf51a;
	#20
	A = 16'h5739;
	B = 16'hd737;
	ans = 16'hf284;
	#20
	A = 16'hc80b;
	B = 16'hd0b5;
	ans = 16'h5cc2;
	#20
	A = 16'h59f4;
	B = 16'hd84a;
	ans = 16'hf662;
	#20
	A = 16'h5009;
	B = 16'hd260;
	ans = 16'he66e;
	#20
	A = 16'h5bcf;
	B = 16'h577f;
	ans = 16'h7751;
	#20
	A = 16'h4ae5;
	B = 16'h56e0;
	ans = 16'h65ed;
	#20
	A = 16'hc81f;
	B = 16'h59a2;
	ans = 16'he5ce;
	#20
	A = 16'hd4f2;
	B = 16'hd46c;
	ans = 16'h6d78;
	#20
	A = 16'hda33;
	B = 16'h5a53;
	ans = 16'hf8e7;
	#20
	A = 16'h51d2;
	B = 16'hda63;
	ans = 16'hf0a6;
	#20
	A = 16'h5300;
	B = 16'hd7c0;
	ans = 16'heec8;
	#20
	A = 16'h4b1f;
	B = 16'hdb51;
	ans = 16'hea83;
	#20
	A = 16'h5195;
	B = 16'hc99c;
	ans = 16'hdfd4;
	#20
	A = 16'h589a;
	B = 16'h5b6e;
	ans = 16'h7846;
	#20
	A = 16'hcfd7;
	B = 16'hd410;
	ans = 16'h67f6;
	#20
	A = 16'hd8c6;
	B = 16'h5981;
	ans = 16'hf691;
	#20
	A = 16'hd871;
	B = 16'h5532;
	ans = 16'hf1c5;
	#20
	A = 16'h44b8;
	B = 16'h5066;
	ans = 16'h5930;
	#20
	A = 16'hcdc4;
	B = 16'h58c9;
	ans = 16'heae6;
	#20
	A = 16'hda5b;
	B = 16'h480a;
	ans = 16'he66b;
	#20
	A = 16'hd713;
	B = 16'hdb65;
	ans = 16'h768a;
	#20
	A = 16'hda0b;
	B = 16'h5912;
	ans = 16'hf7a9;
	#20
	A = 16'h59d3;
	B = 16'h5a6b;
	ans = 16'h78ac;
	#20
	A = 16'h59de;
	B = 16'hd47d;
	ans = 16'hf295;
	#20
	A = 16'hd1a3;
	B = 16'hd684;
	ans = 16'h6c97;
	#20
	A = 16'h4846;
	B = 16'h58ae;
	ans = 16'h6500;
	#20
	A = 16'hd14d;
	B = 16'h5b99;
	ans = 16'hf109;
	#20
	A = 16'h527e;
	B = 16'hd5a2;
	ans = 16'hec92;
	#20
	A = 16'h53d5;
	B = 16'h5588;
	ans = 16'h6d6a;
	#20
	A = 16'h5597;
	B = 16'hd76b;
	ans = 16'hf12f;
	#20
	A = 16'h55bc;
	B = 16'hcf35;
	ans = 16'he92a;
	#20
	A = 16'h5b65;
	B = 16'hd59e;
	ans = 16'hf531;
	#20
	A = 16'hd306;
	B = 16'h5975;
	ans = 16'hf0ca;
	#20
	A = 16'hceaf;
	B = 16'hd46e;
	ans = 16'h6767;
	#20
	A = 16'hdafc;
	B = 16'h5177;
	ans = 16'hf0c5;
	#20
	A = 16'hd69b;
	B = 16'h5a22;
	ans = 16'hf510;
	#20
	A = 16'h593f;
	B = 16'h57e3;
	ans = 16'h752c;
	#20
	A = 16'h5517;
	B = 16'h59b5;
	ans = 16'h7343;
	#20
	A = 16'hcdc7;
	B = 16'hda07;
	ans = 16'h6c5a;
	#20
	A = 16'h4dba;
	B = 16'h579d;
	ans = 16'h6973;
	#20
	A = 16'hccec;
	B = 16'h5b6f;
	ans = 16'hec93;
	#20
	A = 16'h57af;
	B = 16'h4ddb;
	ans = 16'h69a0;
	#20
	A = 16'hdb4b;
	B = 16'h59b8;
	ans = 16'hf937;
	#20
	A = 16'hd0ab;
	B = 16'hd93e;
	ans = 16'h6e1e;
	#20
	A = 16'h563c;
	B = 16'hd50b;
	ans = 16'hefdc;
	#20
	A = 16'h5ab6;
	B = 16'hd42c;
	ans = 16'hf300;
	#20
	A = 16'h593e;
	B = 16'hd37a;
	ans = 16'hf0e6;
	#20
	A = 16'hd344;
	B = 16'h57ad;
	ans = 16'heef9;
	#20
	A = 16'hd99c;
	B = 16'hd548;
	ans = 16'h7368;
	#20
	A = 16'h5b20;
	B = 16'h5780;
	ans = 16'h76ae;
	#20
	A = 16'h59b8;
	B = 16'h5789;
	ans = 16'h7563;
	#20
	A = 16'hd6e2;
	B = 16'hd980;
	ans = 16'h74bb;
	#20
	A = 16'h5bac;
	B = 16'h4f54;
	ans = 16'h6f07;
	#20
	A = 16'h55f3;
	B = 16'hd8cb;
	ans = 16'hf321;
	#20
	A = 16'hdb0d;
	B = 16'hda14;
	ans = 16'h795b;
	#20
	A = 16'hda95;
	B = 16'h585d;
	ans = 16'hf72e;
	#20
	A = 16'h5175;
	B = 16'hcaf1;
	ans = 16'he0bc;
	#20
	A = 16'hd5f5;
	B = 16'hd528;
	ans = 16'h6fae;
	#20
	A = 16'h536a;
	B = 16'hdb32;
	ans = 16'hf2ab;
	#20
	A = 16'hdad2;
	B = 16'hd529;
	ans = 16'h7466;
	#20
	A = 16'h58e8;
	B = 16'h5580;
	ans = 16'h72bf;
	#20
	A = 16'hda81;
	B = 16'hd1ae;
	ans = 16'h709e;
	#20
	A = 16'hdaa8;
	B = 16'hd98a;
	ans = 16'h789c;
	#20
	A = 16'h4645;
	B = 16'h5b81;
	ans = 16'h65e1;
	#20
	A = 16'h58ff;
	B = 16'h59ce;
	ans = 16'h7740;
	#20
	A = 16'h51a2;
	B = 16'h556f;
	ans = 16'h6ba7;
	#20
	A = 16'hd842;
	B = 16'hd0c4;
	ans = 16'h6d13;
	#20
	A = 16'hd162;
	B = 16'hd5f5;
	ans = 16'h6c02;
	#20
	A = 16'h5748;
	B = 16'h5535;
	ans = 16'h70bd;
	#20
	A = 16'hd545;
	B = 16'hdb34;
	ans = 16'h74bf;
	#20
	A = 16'h5a71;
	B = 16'h5a14;
	ans = 16'h78e5;
	#20
	A = 16'h5b16;
	B = 16'hd80e;
	ans = 16'hf72f;
	#20
	A = 16'hd87f;
	B = 16'h56bf;
	ans = 16'hf395;
	#20
	A = 16'h5505;
	B = 16'hbf24;
	ans = 16'hd87b;
	#20
	A = 16'h57a0;
	B = 16'hd855;
	ans = 16'hf421;
	#20
	A = 16'h582a;
	B = 16'h5593;
	ans = 16'h71ce;
	#20
	A = 16'h56d5;
	B = 16'h5b14;
	ans = 16'h760b;
	#20
	A = 16'hdacc;
	B = 16'h5a7f;
	ans = 16'hf985;
	#20
	A = 16'h55b3;
	B = 16'h5bf3;
	ans = 16'h75aa;
	#20
	A = 16'hd61a;
	B = 16'hd865;
	ans = 16'h72b4;
	#20
	A = 16'hda08;
	B = 16'hce3e;
	ans = 16'h6cb5;
	#20
	A = 16'h5971;
	B = 16'hd669;
	ans = 16'hf45c;
	#20
	A = 16'hd83f;
	B = 16'hd2f9;
	ans = 16'h6f67;
	#20
	A = 16'h53a5;
	B = 16'h4d30;
	ans = 16'h64f5;
	#20
	A = 16'h5a65;
	B = 16'h5a33;
	ans = 16'h78f5;
	#20
	A = 16'h54b7;
	B = 16'hd1e5;
	ans = 16'heaf3;
	#20
	A = 16'h51a2;
	B = 16'h587c;
	ans = 16'h6e51;
	#20
	A = 16'h5be0;
	B = 16'hd531;
	ans = 16'hf51c;
	#20
	A = 16'h5afb;
	B = 16'hd928;
	ans = 16'hf880;
	#20
	A = 16'h5bc3;
	B = 16'hd8a2;
	ans = 16'hf87f;
	#20
	A = 16'h58e0;
	B = 16'h5b13;
	ans = 16'h7850;
	#20
	A = 16'h4cc7;
	B = 16'h5489;
	ans = 16'h656b;
	#20
	A = 16'hd456;
	B = 16'hd589;
	ans = 16'h6e00;
	#20
	A = 16'h5b1e;
	B = 16'hd87e;
	ans = 16'hf7fe;
	#20
	A = 16'h5b4e;
	B = 16'h589d;
	ans = 16'h7836;
	#20
	A = 16'hd829;
	B = 16'h527b;
	ans = 16'heebd;
	#20
	A = 16'h4fff;
	B = 16'hd942;
	ans = 16'hed41;
	#20
	A = 16'hdbd0;
	B = 16'hdaf6;
	ans = 16'h7acc;
	#20
	A = 16'hdb6b;
	B = 16'hd30a;
	ans = 16'h7287;
	#20
	A = 16'hdb62;
	B = 16'hd854;
	ans = 16'h77fd;
	#20
	A = 16'hd220;
	B = 16'hd640;
	ans = 16'h6cc9;
	#20
	A = 16'hd856;
	B = 16'hd757;
	ans = 16'h73f5;
	#20
	A = 16'hd963;
	B = 16'hd5e0;
	ans = 16'h73e9;
	#20
	A = 16'hd9d6;
	B = 16'hdb74;
	ans = 16'h7970;
	#20
	A = 16'h5861;
	B = 16'h567a;
	ans = 16'h7317;
	#20
	A = 16'hd8c0;
	B = 16'h4eb1;
	ans = 16'hebf2;
	#20
	A = 16'hd9d5;
	B = 16'hc028;
	ans = 16'h5e0f;
	#20
	A = 16'h5a94;
	B = 16'hd422;
	ans = 16'hf2cc;
	#20
	A = 16'h5617;
	B = 16'hd979;
	ans = 16'hf42a;
	#20
	A = 16'hd6f6;
	B = 16'h5923;
	ans = 16'hf478;
	#20
	A = 16'h507a;
	B = 16'hd6f8;
	ans = 16'hebcd;
	#20
	A = 16'hd9b3;
	B = 16'h5b13;
	ans = 16'hf90a;
	#20
	A = 16'h583a;
	B = 16'hd510;
	ans = 16'hf159;
	#20
	A = 16'hdb9a;
	B = 16'hca6c;
	ans = 16'h6a1a;
	#20
	A = 16'hdb33;
	B = 16'h59da;
	ans = 16'hf944;
	#20
	A = 16'h5641;
	B = 16'h4306;
	ans = 16'h5d7e;
	#20
	A = 16'hdb2c;
	B = 16'hdb05;
	ans = 16'h7a4b;
	#20
	A = 16'h50c9;
	B = 16'h5505;
	ans = 16'h6a01;
	#20
	A = 16'h506e;
	B = 16'h5a07;
	ans = 16'h6ead;
	#20
	A = 16'h5af4;
	B = 16'h59be;
	ans = 16'h78fe;
	#20
	A = 16'h5933;
	B = 16'h599e;
	ans = 16'h774d;
	#20
	A = 16'hd74b;
	B = 16'hd4f0;
	ans = 16'h7080;
	#20
	A = 16'hdb69;
	B = 16'h5924;
	ans = 16'hf8c3;
	#20
	A = 16'h5bca;
	B = 16'h3cd3;
	ans = 16'h5cb2;
	#20
	A = 16'hda30;
	B = 16'hd6d1;
	ans = 16'h7546;
	#20
	A = 16'h5932;
	B = 16'h53eb;
	ans = 16'h7124;
	#20
	A = 16'h5ab9;
	B = 16'hd23d;
	ans = 16'hf13e;
	#20
	A = 16'hd800;
	B = 16'h3b93;
	ans = 16'hd793;
	#20
	A = 16'hda91;
	B = 16'h582b;
	ans = 16'hf6d8;
	#20
	A = 16'hd89a;
	B = 16'h58b6;
	ans = 16'hf56b;
	#20
	A = 16'hd966;
	B = 16'hceb5;
	ans = 16'h6c87;
	#20
	A = 16'h58d3;
	B = 16'h596f;
	ans = 16'h768e;
	#20
	A = 16'h5345;
	B = 16'h5acd;
	ans = 16'h722e;
	#20
	A = 16'hd4f8;
	B = 16'h5b86;
	ans = 16'hf4ac;
	#20
	A = 16'h55e0;
	B = 16'hd70c;
	ans = 16'hf12d;
	#20
	A = 16'hd34c;
	B = 16'hd926;
	ans = 16'h70b2;
	#20
	A = 16'hd9ac;
	B = 16'hd8f2;
	ans = 16'h7703;
	#20
	A = 16'hd84a;
	B = 16'hd0c3;
	ans = 16'h6d1b;
	#20
	A = 16'hd177;
	B = 16'h4ed3;
	ans = 16'he4a9;
	#20
	A = 16'hdb4c;
	B = 16'hd18f;
	ans = 16'h7112;
	#20
	A = 16'h5520;
	B = 16'hd723;
	ans = 16'hf092;
	#20
	A = 16'hce2a;
	B = 16'hd588;
	ans = 16'h6843;
	#20
	A = 16'h5996;
	B = 16'hda65;
	ans = 16'hf877;
	#20
	A = 16'hd5b9;
	B = 16'h54ed;
	ans = 16'hef0c;
	#20
	A = 16'h4db4;
	B = 16'h54e0;
	ans = 16'h66f3;
	#20
	A = 16'hc6a9;
	B = 16'h5ab0;
	ans = 16'he591;
	#20
	A = 16'h5bf6;
	B = 16'hcced;
	ans = 16'hece7;
	#20
	A = 16'h5410;
	B = 16'hd845;
	ans = 16'hf056;
	#20
	A = 16'h5b47;
	B = 16'hd863;
	ans = 16'hf7fb;
	#20
	A = 16'hd17b;
	B = 16'hd9fe;
	ans = 16'h701b;
	#20
	A = 16'hd673;
	B = 16'hd82f;
	ans = 16'h72bf;
	#20
	A = 16'hd693;
	B = 16'hc0a3;
	ans = 16'h5b9f;
	#20
	A = 16'hd826;
	B = 16'h48ac;
	ans = 16'he4d8;
	#20
	A = 16'hd1be;
	B = 16'hd987;
	ans = 16'h6fef;
	#20
	A = 16'h520d;
	B = 16'h57d2;
	ans = 16'h6dea;
	#20
	A = 16'hda16;
	B = 16'hd460;
	ans = 16'h72a8;
	#20
	A = 16'h56db;
	B = 16'hd74c;
	ans = 16'hf241;
	#20
	A = 16'hda98;
	B = 16'h58f8;
	ans = 16'hf818;
	#20
	A = 16'hd5b5;
	B = 16'hdb65;
	ans = 16'h7546;
	#20
	A = 16'hd282;
	B = 16'hd854;
	ans = 16'h6f0b;
	#20
	A = 16'hd9dc;
	B = 16'hd969;
	ans = 16'h77ed;
	#20
	A = 16'hd48c;
	B = 16'hdb89;
	ans = 16'h7448;
	#20
	A = 16'h5333;
	B = 16'hd38a;
	ans = 16'heac9;
	#20
	A = 16'hd93c;
	B = 16'h5acb;
	ans = 16'hf872;
	#20
	A = 16'h5b5c;
	B = 16'hd970;
	ans = 16'hf901;
	#20
	A = 16'h5866;
	B = 16'h5395;
	ans = 16'h702b;
	#20
	A = 16'hd0c4;
	B = 16'h5bf3;
	ans = 16'hf0bc;
	#20
	A = 16'hd631;
	B = 16'h5353;
	ans = 16'hedab;
	#20
	A = 16'hd6d8;
	B = 16'h5b65;
	ans = 16'hf653;
	#20
	A = 16'hd91d;
	B = 16'h5bf7;
	ans = 16'hf917;
	#20
	A = 16'h5987;
	B = 16'h5acf;
	ans = 16'h78b4;
	#20
	A = 16'h5867;
	B = 16'h5a8d;
	ans = 16'h7736;
	#20
	A = 16'h5956;
	B = 16'h5b7d;
	ans = 16'h78ff;
	#20
	A = 16'h5a4e;
	B = 16'h5849;
	ans = 16'h76c1;
	#20
	A = 16'h4df7;
	B = 16'h5b70;
	ans = 16'h6d8c;
	#20
	A = 16'hda5a;
	B = 16'hd8b0;
	ans = 16'h7771;
	#20
	A = 16'h555a;
	B = 16'hcd75;
	ans = 16'he74d;
	#20
	A = 16'h5861;
	B = 16'h5a93;
	ans = 16'h7732;
	#20
	A = 16'hcdb5;
	B = 16'hd8d1;
	ans = 16'h6adf;
	#20
	A = 16'hd43b;
	B = 16'hd0c5;
	ans = 16'h690b;
	#20
	A = 16'h4b53;
	B = 16'hce6c;
	ans = 16'hdde1;
	#20
	A = 16'hd675;
	B = 16'h5901;
	ans = 16'hf40a;
	#20
	A = 16'h4c51;
	B = 16'h597a;
	ans = 16'h69e9;
	#20
	A = 16'hd929;
	B = 16'hd70c;
	ans = 16'h748c;
	#20
	A = 16'hd2a3;
	B = 16'hd86d;
	ans = 16'h6f58;
	#20
	A = 16'hd771;
	B = 16'hd0cc;
	ans = 16'h6c76;
	#20
	A = 16'hd519;
	B = 16'hd081;
	ans = 16'h69bd;
	#20
	A = 16'hd8f4;
	B = 16'hd9dc;
	ans = 16'h7741;
	#20
	A = 16'hce2a;
	B = 16'hdb13;
	ans = 16'h6d73;
	#20
	A = 16'h561a;
	B = 16'hdbbb;
	ans = 16'hf5e5;
	#20
	A = 16'hd9b6;
	B = 16'hd980;
	ans = 16'h77da;
	#20
	A = 16'h5a64;
	B = 16'hdb41;
	ans = 16'hf9cb;
	#20
	A = 16'hd428;
	B = 16'h5738;
	ans = 16'hef80;
	#20
	A = 16'hd7b3;
	B = 16'h5875;
	ans = 16'hf44a;
	#20
	A = 16'h5a3e;
	B = 16'hd5d7;
	ans = 16'hf48f;
	#20
	A = 16'h587e;
	B = 16'h565d;
	ans = 16'h7325;
	#20
	A = 16'hd630;
	B = 16'h5b23;
	ans = 16'hf585;
	#20
	A = 16'hcfbb;
	B = 16'hd8ca;
	ans = 16'h6ca1;
	#20
	A = 16'h5721;
	B = 16'hdbe1;
	ans = 16'hf705;
	#20
	A = 16'hd3d1;
	B = 16'hdb5b;
	ans = 16'h7330;
	#20
	A = 16'hda1a;
	B = 16'hd120;
	ans = 16'h6fd1;
	#20
	A = 16'h5b4f;
	B = 16'hd18b;
	ans = 16'hf110;
	#20
	A = 16'h5160;
	B = 16'hd84f;
	ans = 16'hedca;
	#20
	A = 16'hc5e2;
	B = 16'hc8f0;
	ans = 16'h5343;
	#20
	A = 16'h56df;
	B = 16'hd6b4;
	ans = 16'hf1c2;
	#20
	A = 16'h51a8;
	B = 16'hda84;
	ans = 16'hf09b;
	#20
	A = 16'hd821;
	B = 16'hd19d;
	ans = 16'h6dcb;
	#20
	A = 16'hd9e3;
	B = 16'hdb9b;
	ans = 16'h7999;
	#20
	A = 16'h5a06;
	B = 16'hd8ad;
	ans = 16'hf70b;
	#20
	A = 16'hdb60;
	B = 16'h4d46;
	ans = 16'hecdd;
	#20
	A = 16'hda2f;
	B = 16'h5884;
	ans = 16'hf6fb;
	#20
	A = 16'hd8e1;
	B = 16'h51d9;
	ans = 16'hef22;
	#20
	A = 16'h5b67;
	B = 16'h5882;
	ans = 16'h782c;
	#20
	A = 16'h5791;
	B = 16'hdbd9;
	ans = 16'hf76c;
	#20
	A = 16'hc48e;
	B = 16'hd809;
	ans = 16'h6098;
	#20
	A = 16'h59a5;
	B = 16'h59e0;
	ans = 16'h7825;
	#20
	A = 16'h52b0;
	B = 16'h562b;
	ans = 16'h6d28;
	#20
	A = 16'h5260;
	B = 16'h5aaf;
	ans = 16'h7153;
	#20
	A = 16'hd560;
	B = 16'h5afd;
	ans = 16'hf4b2;
	#20
	A = 16'h5788;
	B = 16'h5615;
	ans = 16'h71ba;
	#20
	A = 16'hdb0c;
	B = 16'hda0e;
	ans = 16'h7955;
	#20
	A = 16'hd81d;
	B = 16'h5855;
	ans = 16'hf474;
	#20
	A = 16'hd8db;
	B = 16'hc84e;
	ans = 16'h653a;
	#20
	A = 16'hd9cd;
	B = 16'hd24d;
	ans = 16'h7092;
	#20
	A = 16'hd913;
	B = 16'hd984;
	ans = 16'h76ff;
	#20
	A = 16'hc3b8;
	B = 16'h5934;
	ans = 16'he105;
	#20
	A = 16'hda2f;
	B = 16'hd555;
	ans = 16'h741f;
	#20
	A = 16'h59a3;
	B = 16'h4b49;
	ans = 16'h6922;
	#20
	A = 16'hd6db;
	B = 16'h55d7;
	ans = 16'hf101;
	#20
	A = 16'hd71c;
	B = 16'hd0b1;
	ans = 16'h6c2b;
	#20
	A = 16'hda6a;
	B = 16'hdbec;
	ans = 16'h7a5a;
	#20
	A = 16'hdb45;
	B = 16'h5567;
	ans = 16'hf4e9;
	#20
	A = 16'h5a30;
	B = 16'h5b63;
	ans = 16'h79b7;
	#20
	A = 16'h552c;
	B = 16'h5ac3;
	ans = 16'h745f;
	#20
	A = 16'hda3c;
	B = 16'h533e;
	ans = 16'hf1a5;
	#20
	A = 16'h513c;
	B = 16'hda0b;
	ans = 16'hefe8;
	#20
	A = 16'h5607;
	B = 16'hdb03;
	ans = 16'hf548;
	#20
	A = 16'h5ae2;
	B = 16'hda3f;
	ans = 16'hf960;
	#20
	A = 16'hc5f4;
	B = 16'h58f0;
	ans = 16'he359;
	#20
	A = 16'hd69a;
	B = 16'hd8ad;
	ans = 16'h73b8;
	#20
	A = 16'h4591;
	B = 16'h54fd;
	ans = 16'h5ef1;
	#20
	A = 16'hdb61;
	B = 16'h59a8;
	ans = 16'hf938;
	#20
	A = 16'hd96d;
	B = 16'hda7a;
	ans = 16'h7864;
	#20
	A = 16'h4f1c;
	B = 16'hda55;
	ans = 16'heda1;
	#20
	A = 16'hda32;
	B = 16'h5708;
	ans = 16'hf572;
	#20
	A = 16'hd7aa;
	B = 16'hd97a;
	ans = 16'h753f;
	#20
	A = 16'hd745;
	B = 16'h5979;
	ans = 16'hf4f9;
	#20
	A = 16'hdadc;
	B = 16'hd8c6;
	ans = 16'h7818;
	#20
	A = 16'h52a2;
	B = 16'h57a0;
	ans = 16'h6e52;
	#20
	A = 16'hd942;
	B = 16'hda01;
	ans = 16'h77e4;
	#20
	A = 16'hd32d;
	B = 16'hd885;
	ans = 16'h700e;
	#20
	A = 16'h58f2;
	B = 16'h56ed;
	ans = 16'h7448;
	#20
	A = 16'hd4ec;
	B = 16'h4d71;
	ans = 16'he6b2;
	#20
	A = 16'h4ed7;
	B = 16'hd1e2;
	ans = 16'he508;
	#20
	A = 16'h5b81;
	B = 16'hda1a;
	ans = 16'hf9b9;
	#20
	A = 16'hd78c;
	B = 16'h59e5;
	ans = 16'hf590;
	#20
	A = 16'h5a04;
	B = 16'hd910;
	ans = 16'hf79d;
	#20
	A = 16'hd790;
	B = 16'hdaf0;
	ans = 16'h768f;
	#20
	A = 16'h5089;
	B = 16'h59f3;
	ans = 16'h6ebf;
	#20
	A = 16'hd111;
	B = 16'h5a5e;
	ans = 16'hf008;
	#20
	A = 16'hd9ce;
	B = 16'h5257;
	ans = 16'hf09a;
	#20
	A = 16'h5ba2;
	B = 16'hdb51;
	ans = 16'hfafb;
	#20
	A = 16'h5a86;
	B = 16'hd6be;
	ans = 16'hf57f;
	#20
	A = 16'hd136;
	B = 16'hdb3b;
	ans = 16'h70b6;
	#20
	A = 16'hd1c0;
	B = 16'h55b6;
	ans = 16'hec1b;
	#20
	A = 16'hda5a;
	B = 16'h541d;
	ans = 16'hf288;
	#20
	A = 16'h5b7d;
	B = 16'hcf18;
	ans = 16'heea4;
	#20
	A = 16'hd300;
	B = 16'h4d58;
	ans = 16'he4ad;
	#20
	A = 16'h5803;
	B = 16'hda8d;
	ans = 16'hf692;
	#20
	A = 16'hda4d;
	B = 16'h5824;
	ans = 16'hf686;
	#20
	A = 16'hcd75;
	B = 16'h5ace;
	ans = 16'heca4;
	#20
	A = 16'hdbbf;
	B = 16'hdb50;
	ans = 16'h7b15;
	#20
	A = 16'hda64;
	B = 16'hd9d4;
	ans = 16'h78a8;
	#20
	A = 16'h53a8;
	B = 16'hd9fc;
	ans = 16'hf1ba;
	#20
	A = 16'h5a26;
	B = 16'h585e;
	ans = 16'h76b6;
	#20
	A = 16'h53c8;
	B = 16'h5b46;
	ans = 16'h7313;
	#20
	A = 16'hdbe7;
	B = 16'hcff1;
	ans = 16'h6fd8;
	#20
	A = 16'hd711;
	B = 16'hd707;
	ans = 16'h7235;
	#20
	A = 16'hda00;
	B = 16'hcca5;
	ans = 16'h6af8;
	#20
	A = 16'hdb1b;
	B = 16'h5811;
	ans = 16'hf739;
	#20
	A = 16'hd40b;
	B = 16'h57bc;
	ans = 16'hefd1;
	#20
	A = 16'hdbe0;
	B = 16'hdbd3;
	ans = 16'h7bb4;
	#20
	A = 16'h508a;
	B = 16'hd03a;
	ans = 16'he4cc;
	#20
	A = 16'hd442;
	B = 16'hd946;
	ans = 16'h719d;
	#20
	A = 16'h549e;
	B = 16'h54a6;
	ans = 16'h6d5e;
	#20
	A = 16'hd2d1;
	B = 16'hd24c;
	ans = 16'h695e;
	#20
	A = 16'hd909;
	B = 16'h5bed;
	ans = 16'hf8fd;
	#20
	A = 16'hd86d;
	B = 16'h5bbf;
	ans = 16'hf849;
	#20
	A = 16'hd3b5;
	B = 16'h536b;
	ans = 16'heb25;
	#20
	A = 16'hdbb9;
	B = 16'hd55f;
	ans = 16'h752f;
	#20
	A = 16'h5b6c;
	B = 16'h4d41;
	ans = 16'h6ce0;
	#20
	A = 16'hdbb5;
	B = 16'h5865;
	ans = 16'hf83c;
	#20
	A = 16'h5bf1;
	B = 16'hd6e1;
	ans = 16'hf6d4;
	#20
	A = 16'hda52;
	B = 16'h5a03;
	ans = 16'hf8c0;
	#20
	A = 16'hd65f;
	B = 16'hd6b0;
	ans = 16'h7153;
	#20
	A = 16'h5a46;
	B = 16'h5ad1;
	ans = 16'h7958;
	#20
	A = 16'hd747;
	B = 16'h5915;
	ans = 16'hf49f;
	#20
	A = 16'hd971;
	B = 16'h5541;
	ans = 16'hf326;
	#20
	A = 16'hd9c2;
	B = 16'hd4b7;
	ans = 16'h72c9;
	#20
	A = 16'h4a79;
	B = 16'hd70a;
	ans = 16'he5b2;
	#20
	A = 16'hd959;
	B = 16'hda47;
	ans = 16'h7832;
	#20
	A = 16'h566b;
	B = 16'hd512;
	ans = 16'hf011;
	#20
	A = 16'h5909;
	B = 16'hd4d7;
	ans = 16'hf218;
	#20
	A = 16'hdb50;
	B = 16'hca41;
	ans = 16'h69b7;
	#20
	A = 16'h5a05;
	B = 16'hd994;
	ans = 16'hf832;
	#20
	A = 16'h584e;
	B = 16'hcdc6;
	ans = 16'hea37;
	#20
	A = 16'hd9d5;
	B = 16'h5376;
	ans = 16'hf170;
	#20
	A = 16'h5427;
	B = 16'hda6f;
	ans = 16'hf2ae;
	#20
	A = 16'hd211;
	B = 16'h52a9;
	ans = 16'he90d;
	#20
	A = 16'hcecf;
	B = 16'h5680;
	ans = 16'he988;
	#20
	A = 16'h5b76;
	B = 16'h550e;
	ans = 16'h74b7;
	#20
	A = 16'h5bca;
	B = 16'h5538;
	ans = 16'h7515;
	#20
	A = 16'h53fe;
	B = 16'h5490;
	ans = 16'h6c8f;
	#20
	A = 16'hd80d;
	B = 16'hdb4b;
	ans = 16'h7763;
	#20
	A = 16'h58d3;
	B = 16'hd7f0;
	ans = 16'hf4c9;
	#20
	A = 16'h5935;
	B = 16'hcf02;
	ans = 16'hec90;
	#20
	A = 16'h579b;
	B = 16'hd417;
	ans = 16'hefc7;
	#20
	A = 16'hd572;
	B = 16'h5ac3;
	ans = 16'hf49a;
	#20
	A = 16'hd58c;
	B = 16'h4d80;
	ans = 16'he7a0;
	#20
	A = 16'h5400;
	B = 16'h56f8;
	ans = 16'h6ef8;
	#20
	A = 16'h4f0f;
	B = 16'hdac6;
	ans = 16'hedfa;
	#20
	A = 16'hd8ea;
	B = 16'h4833;
	ans = 16'he529;
	#20
	A = 16'hd10e;
	B = 16'hd36c;
	ans = 16'h68b0;
	#20
	A = 16'hd951;
	B = 16'hd6c4;
	ans = 16'h747f;
	#20
	A = 16'h58fc;
	B = 16'h56ac;
	ans = 16'h7428;
	#20
	A = 16'h492b;
	B = 16'hd8f5;
	ans = 16'he668;
	#20
	A = 16'hd865;
	B = 16'h59d6;
	ans = 16'hf669;
	#20
	A = 16'hd7a5;
	B = 16'hd69d;
	ans = 16'h7252;
	#20
	A = 16'hce7f;
	B = 16'h5648;
	ans = 16'he91a;
	#20
	A = 16'hd62e;
	B = 16'hd82a;
	ans = 16'h726f;
	#20
	A = 16'hd3be;
	B = 16'hd68a;
	ans = 16'h6e54;
	#20
	A = 16'h55cd;
	B = 16'h57f1;
	ans = 16'h71c2;
	#20
	A = 16'h5824;
	B = 16'hdacb;
	ans = 16'hf708;
	#20
	A = 16'hcedf;
	B = 16'hd590;
	ans = 16'h68c7;
	#20
	A = 16'h4957;
	B = 16'hcb05;
	ans = 16'hd8af;
	#20
	A = 16'h55da;
	B = 16'hd78a;
	ans = 16'hf184;
	#20
	A = 16'h57ea;
	B = 16'h564b;
	ans = 16'h723a;
	#20
	A = 16'h58ca;
	B = 16'h5805;
	ans = 16'h74d0;
	#20
	A = 16'hd8c0;
	B = 16'h587f;
	ans = 16'hf557;
	#20
	A = 16'h48ba;
	B = 16'h4e39;
	ans = 16'h5b5a;
	#20
	A = 16'h4f03;
	B = 16'h4f25;
	ans = 16'h6243;
	#20
	A = 16'hcfb9;
	B = 16'h56be;
	ans = 16'hea82;
	#20
	A = 16'hd935;
	B = 16'hdb23;
	ans = 16'h78a5;
	#20
	A = 16'hd313;
	B = 16'hd9e4;
	ans = 16'h7135;
	#20
	A = 16'hd6d5;
	B = 16'hd5a3;
	ans = 16'h70d0;
	#20
	A = 16'h5792;
	B = 16'hc440;
	ans = 16'he006;
	#20
	A = 16'h59a2;
	B = 16'hdb18;
	ans = 16'hf8ff;
	#20
	A = 16'hd98b;
	B = 16'h5b68;
	ans = 16'hf922;
	#20
	A = 16'hcced;
	B = 16'hd699;
	ans = 16'h6810;
	#20
	A = 16'hd641;
	B = 16'hda96;
	ans = 16'h7526;
	#20
	A = 16'hdb44;
	B = 16'hd9b6;
	ans = 16'h7930;
	#20
	A = 16'h562a;
	B = 16'hd82c;
	ans = 16'hf26e;
	#20
	A = 16'hd070;
	B = 16'hd0d8;
	ans = 16'h6560;
	#20
	A = 16'hd828;
	B = 16'h5a30;
	ans = 16'hf66e;
	#20
	A = 16'h5950;
	B = 16'hd968;
	ans = 16'hf72e;
	#20
	A = 16'hd7ba;
	B = 16'h3db1;
	ans = 16'hd97f;
	#20
	A = 16'hd9af;
	B = 16'hcd94;
	ans = 16'h6bed;
	#20
	A = 16'hd009;
	B = 16'h4f62;
	ans = 16'he373;
	#20
	A = 16'h4995;
	B = 16'h54a5;
	ans = 16'h627b;
	#20
	A = 16'h525f;
	B = 16'hd420;
	ans = 16'hea92;
	#20
	A = 16'h54dc;
	B = 16'hdacc;
	ans = 16'hf421;
	#20
	A = 16'hd5ed;
	B = 16'hb6b2;
	ans = 16'h50f6;
	#20
	A = 16'hd5d0;
	B = 16'h5a8d;
	ans = 16'hf4c2;
	#20
	A = 16'hd92d;
	B = 16'hd21e;
	ans = 16'h6fea;
	#20
	A = 16'h57d9;
	B = 16'h573d;
	ans = 16'h731a;
	#20
	A = 16'hdba3;
	B = 16'hd6b7;
	ans = 16'h7669;
	#20
	A = 16'h553b;
	B = 16'h52f0;
	ans = 16'h6c89;
	#20
	A = 16'h543a;
	B = 16'h59c5;
	ans = 16'h7219;
	#20
	A = 16'h59c5;
	B = 16'hd8cd;
	ans = 16'hf6ed;
	#20
	A = 16'h5689;
	B = 16'hdbc4;
	ans = 16'hf658;
	#20
	A = 16'hd4b2;
	B = 16'hda1b;
	ans = 16'h732b;
	#20
	A = 16'h4edd;
	B = 16'h5be7;
	ans = 16'h6ec8;
	#20
	A = 16'h515f;
	B = 16'hd91a;
	ans = 16'heeda;
	#20
	A = 16'h4ccc;
	B = 16'hda4b;
	ans = 16'heb8c;
	#20
	A = 16'h5482;
	B = 16'hd47d;
	ans = 16'hed0f;
	#20
	A = 16'hd884;
	B = 16'h5aa0;
	ans = 16'hf77b;
	#20
	A = 16'hc712;
	B = 16'h55d6;
	ans = 16'he128;
	#20
	A = 16'h55d3;
	B = 16'h58d5;
	ans = 16'h7309;
	#20
	A = 16'hd9fc;
	B = 16'h547e;
	ans = 16'hf2b9;
	#20
	A = 16'h48aa;
	B = 16'h5acb;
	ans = 16'h67ec;
	#20
	A = 16'hd96e;
	B = 16'h5b37;
	ans = 16'hf8e6;
	#20
	A = 16'hd470;
	B = 16'hdad4;
	ans = 16'h7393;
	#20
	A = 16'h5b0d;
	B = 16'h5489;
	ans = 16'h73fe;
	#20
	A = 16'hd5ce;
	B = 16'h5688;
	ans = 16'hf0bd;
	#20
	A = 16'h4dd1;
	B = 16'h5b20;
	ans = 16'h6d2e;
	#20
	A = 16'h561f;
	B = 16'hd9c1;
	ans = 16'hf467;
	#20
	A = 16'h5039;
	B = 16'h480c;
	ans = 16'h5c46;
	#20
	A = 16'hda47;
	B = 16'hcd1f;
	ans = 16'h6c05;
	#20
	A = 16'hdbf2;
	B = 16'h597c;
	ans = 16'hf972;
	#20
	A = 16'h53be;
	B = 16'hd47d;
	ans = 16'hec58;
	#20
	A = 16'hd53f;
	B = 16'hd886;
	ans = 16'h71ef;
	#20
	A = 16'h5589;
	B = 16'hd000;
	ans = 16'he989;
	#20
	A = 16'h52ea;
	B = 16'hd7fe;
	ans = 16'heee8;
	#20
	A = 16'h4e90;
	B = 16'h5b11;
	ans = 16'h6dcc;
	#20
	A = 16'h5b4c;
	B = 16'h4f38;
	ans = 16'h6e96;
	#20
	A = 16'h5819;
	B = 16'h5714;
	ans = 16'h7340;
	#20
	A = 16'hdbcf;
	B = 16'h5ab6;
	ans = 16'hfa8d;
	#20
	A = 16'h51ae;
	B = 16'h5344;
	ans = 16'h6929;
	#20
	A = 16'hdb0a;
	B = 16'hd94a;
	ans = 16'h78a7;
	#20
	A = 16'hd875;
	B = 16'h59a9;
	ans = 16'hf64f;
	#20
	A = 16'h54ec;
	B = 16'h4f72;
	ans = 16'h6895;
	#20
	A = 16'hd9ca;
	B = 16'h5ada;
	ans = 16'hf8f5;
	#20
	A = 16'hdafa;
	B = 16'hd772;
	ans = 16'h767e;
	#20
	A = 16'hdba8;
	B = 16'hd5bc;
	ans = 16'h757d;
	#20
	A = 16'hd5ef;
	B = 16'h597a;
	ans = 16'hf410;
	#20
	A = 16'hd9d4;
	B = 16'hd4dd;
	ans = 16'h7316;
	#20
	A = 16'hd39b;
	B = 16'h50eb;
	ans = 16'he8ad;
	#20
	A = 16'hd3ef;
	B = 16'hd980;
	ans = 16'h7174;
	#20
	A = 16'h5425;
	B = 16'h5b90;
	ans = 16'h73d6;
	#20
	A = 16'hd41e;
	B = 16'h5ad6;
	ans = 16'hf309;
	#20
	A = 16'h5806;
	B = 16'hd328;
	ans = 16'hef33;
	#20
	A = 16'hc9fa;
	B = 16'hd85d;
	ans = 16'h6685;
	#20
	A = 16'h5939;
	B = 16'hd1e3;
	ans = 16'hefb0;
	#20
	A = 16'hd974;
	B = 16'h581b;
	ans = 16'hf599;
	#20
	A = 16'h58f4;
	B = 16'hd9b3;
	ans = 16'hf70f;
	#20
	A = 16'hd900;
	B = 16'hcd5c;
	ans = 16'h6ab3;
	#20
	A = 16'hcc67;
	B = 16'hd715;
	ans = 16'h67cb;
	#20
	A = 16'hd277;
	B = 16'hd2b9;
	ans = 16'h696f;
	#20
	A = 16'hd55c;
	B = 16'hd7c8;
	ans = 16'h7136;
	#20
	A = 16'hd4e1;
	B = 16'hda11;
	ans = 16'h7366;
	#20
	A = 16'h5b6e;
	B = 16'hd85b;
	ans = 16'hf80c;
	#20
	A = 16'h5059;
	B = 16'hcafa;
	ans = 16'hdf95;
	#20
	A = 16'h5b5f;
	B = 16'h5820;
	ans = 16'h779a;
	#20
	A = 16'h5777;
	B = 16'h55c7;
	ans = 16'h7164;
	#20
	A = 16'hd7b7;
	B = 16'h5a40;
	ans = 16'hf607;
	#20
	A = 16'hd80c;
	B = 16'hd14a;
	ans = 16'h6d5a;
	#20
	A = 16'h5a76;
	B = 16'h572d;
	ans = 16'h75cc;
	#20
	A = 16'hc41b;
	B = 16'hd575;
	ans = 16'h5d9a;
	#20
	A = 16'hda3a;
	B = 16'hd7fc;
	ans = 16'h7637;
	#20
	A = 16'h4e9b;
	B = 16'h5a4e;
	ans = 16'h6d35;
	#20
	A = 16'hdac3;
	B = 16'hd500;
	ans = 16'h743a;
	#20
	A = 16'hd8ed;
	B = 16'hd991;
	ans = 16'h76db;
	#20
	A = 16'h4ed9;
	B = 16'hd9f6;
	ans = 16'hed1a;
	#20
	A = 16'h593a;
	B = 16'hdaec;
	ans = 16'hf886;
	#20
	A = 16'h5bc8;
	B = 16'h5475;
	ans = 16'h7456;
	#20
	A = 16'hd48f;
	B = 16'hd552;
	ans = 16'h6e10;
	#20
	A = 16'hd2bd;
	B = 16'h51e2;
	ans = 16'he8f4;
	#20
	A = 16'h583d;
	B = 16'hdaba;
	ans = 16'hf721;
	#20
	A = 16'h49a1;
	B = 16'hd7b9;
	ans = 16'he56f;
	#20
	A = 16'hd5d7;
	B = 16'hda24;
	ans = 16'h747c;
	#20
	A = 16'hd6b1;
	B = 16'h5490;
	ans = 16'hefa2;
	#20
	A = 16'hd568;
	B = 16'hdade;
	ans = 16'h74a4;
	#20
	A = 16'hc824;
	B = 16'hdb0d;
	ans = 16'h674c;
	#20
	A = 16'hda13;
	B = 16'hd47c;
	ans = 16'h72cf;
	#20
	A = 16'h56cd;
	B = 16'h57c6;
	ans = 16'h729c;
	#20
	A = 16'hd2e8;
	B = 16'h4bc7;
	ans = 16'he2b7;
	#20
	A = 16'hd22f;
	B = 16'hd7b4;
	ans = 16'h6df4;
	#20
	A = 16'hd7a2;
	B = 16'h5876;
	ans = 16'hf442;
	#20
	A = 16'hd63c;
	B = 16'hcb5c;
	ans = 16'h65bc;
	#20
	A = 16'hdbdf;
	B = 16'h516c;
	ans = 16'hf156;
	#20
	A = 16'hda4c;
	B = 16'h599f;
	ans = 16'hf86d;
	#20
	A = 16'h5904;
	B = 16'hccd6;
	ans = 16'hea10;
	#20
	A = 16'hd8a1;
	B = 16'hd673;
	ans = 16'h7377;
	#20
	A = 16'h50d5;
	B = 16'h5977;
	ans = 16'h6e9a;
	#20
	A = 16'h5b3b;
	B = 16'hdbee;
	ans = 16'hfb2b;
	#20
	A = 16'h5b0c;
	B = 16'h585a;
	ans = 16'h77ab;
	#20
	A = 16'h561b;
	B = 16'h5221;
	ans = 16'h6cad;
	#20
	A = 16'h5b46;
	B = 16'h5b88;
	ans = 16'h7ad9;
	#20
	A = 16'h4db8;
	B = 16'h4d55;
	ans = 16'h5fa0;
	#20
	A = 16'hd801;
	B = 16'hcd60;
	ans = 16'h6961;
	#20
	A = 16'hdaad;
	B = 16'h591d;
	ans = 16'hf844;
	#20
	A = 16'hda49;
	B = 16'h5921;
	ans = 16'hf808;
	#20
	A = 16'h5955;
	B = 16'h5799;
	ans = 16'h7510;
	#20
	A = 16'h5b7c;
	B = 16'h54d3;
	ans = 16'h7483;
	#20
	A = 16'h51e4;
	B = 16'h55df;
	ans = 16'h6c53;
	#20
	A = 16'hd531;
	B = 16'hda49;
	ans = 16'h7414;
	#20
	A = 16'hd3de;
	B = 16'hd3f9;
	ans = 16'h6bd7;
	#20
	A = 16'hdbe8;
	B = 16'h5267;
	ans = 16'hf254;
	#20
	A = 16'hc05d;
	B = 16'h5704;
	ans = 16'hdba7;
	#20
	A = 16'hd00a;
	B = 16'h5564;
	ans = 16'he971;
	#20
	A = 16'hda30;
	B = 16'h5788;
	ans = 16'hf5d3;
	#20
	A = 16'hc9cc;
	B = 16'h4cb3;
	ans = 16'hdacf;
	#20
	A = 16'hd0e8;
	B = 16'hd9ce;
	ans = 16'h6f1f;
	#20
	A = 16'h5724;
	B = 16'h5464;
	ans = 16'h6fd7;
	#20
	A = 16'h5b68;
	B = 16'hd463;
	ans = 16'hf410;
	#20
	A = 16'h5bec;
	B = 16'h400c;
	ans = 16'h6002;
	#20
	A = 16'hd8e0;
	B = 16'hcd52;
	ans = 16'h6a7c;
	#20
	A = 16'h582b;
	B = 16'h50fc;
	ans = 16'h6d32;
	#20
	A = 16'h504a;
	B = 16'h58fc;
	ans = 16'h6d58;
	#20
	A = 16'h503f;
	B = 16'h5bc2;
	ans = 16'h701e;
	#20
	A = 16'h569d;
	B = 16'h54cb;
	ans = 16'h6fed;
	#20
	A = 16'hd52e;
	B = 16'h55b0;
	ans = 16'hef5d;
	#20
	A = 16'h5aaf;
	B = 16'hdb72;
	ans = 16'hfa38;
	#20
	A = 16'h5743;
	B = 16'h5472;
	ans = 16'h7009;
	#20
	A = 16'hd1a2;
	B = 16'h5a36;
	ans = 16'hf060;
	#20
	A = 16'hd0f0;
	B = 16'h4fa7;
	ans = 16'he4b9;
	#20
	A = 16'h5af2;
	B = 16'hda88;
	ans = 16'hf9ac;
	#20
	A = 16'h4e4f;
	B = 16'h5994;
	ans = 16'h6c66;
	#20
	A = 16'h5179;
	B = 16'hd625;
	ans = 16'hec34;
	#20
	A = 16'hd431;
	B = 16'hdac5;
	ans = 16'h7318;
	#20
	A = 16'h5924;
	B = 16'h5452;
	ans = 16'h718d;
	#20
	A = 16'hdbf5;
	B = 16'h5b74;
	ans = 16'hfb6a;
	#20
	A = 16'h5250;
	B = 16'h505e;
	ans = 16'h66e4;
	#20
	A = 16'hd349;
	B = 16'hdbd7;
	ans = 16'h7324;
	#20
	A = 16'h4d08;
	B = 16'hd012;
	ans = 16'he11f;
	#20
	A = 16'h5667;
	B = 16'h548c;
	ans = 16'h6f47;
	#20
	A = 16'h50aa;
	B = 16'h51c5;
	ans = 16'h66ba;
	#20
	A = 16'hd81e;
	B = 16'h5a3b;
	ans = 16'hf66a;
	#20
	A = 16'h4ba9;
	B = 16'hd64d;
	ans = 16'he608;
	#20
	A = 16'hd03d;
	B = 16'h5360;
	ans = 16'he7d0;
	#20
	A = 16'hdaba;
	B = 16'hd54a;
	ans = 16'h7472;
	#20
	A = 16'hbda5;
	B = 16'h555e;
	ans = 16'hd793;
	#20
	A = 16'h59f4;
	B = 16'hd9e6;
	ans = 16'hf864;
	#20
	A = 16'h5a20;
	B = 16'hd5b0;
	ans = 16'hf45b;
	#20
	A = 16'h5bf4;
	B = 16'h5845;
	ans = 16'h783f;
	#20
	A = 16'h55b1;
	B = 16'h5ba3;
	ans = 16'h756f;
	#20
	A = 16'hd992;
	B = 16'hd6b1;
	ans = 16'h74a9;
	#20
	A = 16'hd916;
	B = 16'hd053;
	ans = 16'h6d80;
	#20
	A = 16'h5560;
	B = 16'hd8a1;
	ans = 16'hf238;
	#20
	A = 16'hdb47;
	B = 16'hd20d;
	ans = 16'h7181;
	#20
	A = 16'h5406;
	B = 16'hd936;
	ans = 16'hf13e;
	#20
	A = 16'h56f4;
	B = 16'hd9c3;
	ans = 16'hf502;
	#20
	A = 16'hdbd0;
	B = 16'hd68b;
	ans = 16'h7664;
	#20
	A = 16'hd488;
	B = 16'hc48f;
	ans = 16'h5d2a;
	#20
	A = 16'h5568;
	B = 16'hd399;
	ans = 16'hed22;
	#20
	A = 16'h4fbe;
	B = 16'hd791;
	ans = 16'heb53;
	#20
	A = 16'h37ac;
	B = 16'hd8b6;
	ans = 16'hd485;
	#20
	A = 16'h5b3d;
	B = 16'hda2e;
	ans = 16'hf997;
	#20
	A = 16'h5298;
	B = 16'h5913;
	ans = 16'h702f;
	#20
	A = 16'h54f0;
	B = 16'h5ba1;
	ans = 16'h74b5;
	#20
	A = 16'h5276;
	B = 16'hdbed;
	ans = 16'hf267;
	#20
	A = 16'hda08;
	B = 16'hcc68;
	ans = 16'h6aa5;
	#20
	A = 16'h5b82;
	B = 16'hdb05;
	ans = 16'hfa96;
	#20
	A = 16'hd610;
	B = 16'hd34d;
	ans = 16'h6d88;
	#20
	A = 16'hd858;
	B = 16'hd054;
	ans = 16'h6cb3;
	#20
	A = 16'h51c6;
	B = 16'hd916;
	ans = 16'hef57;
	#20
	A = 16'hd2ac;
	B = 16'hd5b0;
	ans = 16'h6cbe;
	#20
	A = 16'hdaa3;
	B = 16'h5a47;
	ans = 16'hf935;
	#20
	A = 16'hd804;
	B = 16'hd50a;
	ans = 16'h710f;
	#20
	A = 16'h44fe;
	B = 16'h5666;
	ans = 16'h5ffc;
	#20
	A = 16'hd865;
	B = 16'hda57;
	ans = 16'h76f7;
	#20
	A = 16'hc730;
	B = 16'hd4c7;
	ans = 16'h604b;
	#20
	A = 16'h59d5;
	B = 16'hdbcd;
	ans = 16'hf9b0;
	#20
	A = 16'hd9ac;
	B = 16'hd783;
	ans = 16'h7553;
	#20
	A = 16'hd0ec;
	B = 16'hc504;
	ans = 16'h5a2c;
	#20
	A = 16'hd70e;
	B = 16'h5a0c;
	ans = 16'hf555;
	#20
	A = 16'h52f3;
	B = 16'hd0f1;
	ans = 16'he84b;
	#20
	A = 16'h5557;
	B = 16'hda58;
	ans = 16'hf43c;
	#20
	A = 16'hd33a;
	B = 16'hd8ee;
	ans = 16'h7074;
	#20
	A = 16'hd483;
	B = 16'hcada;
	ans = 16'h63ba;
	#20
	A = 16'h5a96;
	B = 16'hd561;
	ans = 16'hf46e;
	#20
	A = 16'hd69d;
	B = 16'hdb97;
	ans = 16'h7646;
	#20
	A = 16'hd1a1;
	B = 16'h589a;
	ans = 16'hee7a;
	#20
	A = 16'hdb1a;
	B = 16'h4f1a;
	ans = 16'hee4e;
	#20
	A = 16'h57ee;
	B = 16'hd177;
	ans = 16'hed6b;
	#20
	A = 16'hcf74;
	B = 16'h596a;
	ans = 16'hed0b;
	#20
	A = 16'h5a61;
	B = 16'h55a0;
	ans = 16'h747c;
	#20
	A = 16'h5ac6;
	B = 16'h5909;
	ans = 16'h7843;
	#20
	A = 16'hd4b0;
	B = 16'h5a89;
	ans = 16'hf3a9;
	#20
	A = 16'h56ae;
	B = 16'h568a;
	ans = 16'h7176;
	#20
	A = 16'h5124;
	B = 16'hcc9c;
	ans = 16'he1ec;
	#20
	A = 16'hd93d;
	B = 16'h5afd;
	ans = 16'hf893;
	#20
	A = 16'hd6d1;
	B = 16'hd912;
	ans = 16'h7452;
	#20
	A = 16'hd7cc;
	B = 16'hd3cb;
	ans = 16'h6f98;
	#20
	A = 16'hda1c;
	B = 16'h5732;
	ans = 16'hf57f;
	#20
	A = 16'hdb88;
	B = 16'hd6c3;
	ans = 16'h765e;
	#20
	A = 16'h5b16;
	B = 16'hd819;
	ans = 16'hf742;
	#20
	A = 16'hd24b;
	B = 16'hd432;
	ans = 16'h6a9a;
	#20
	A = 16'h53f8;
	B = 16'h548b;
	ans = 16'h6c86;
	#20
	A = 16'hdbcf;
	B = 16'hd9de;
	ans = 16'h79ba;
	#20
	A = 16'hd910;
	B = 16'hdbe5;
	ans = 16'h78ff;
	#20
	A = 16'hc54f;
	B = 16'hcdf8;
	ans = 16'h57ec;
	#20
	A = 16'h5234;
	B = 16'hd45e;
	ans = 16'heac6;
	#20
	A = 16'h5a1c;
	B = 16'hbf47;
	ans = 16'hdd8f;
	#20
	A = 16'hd7e5;
	B = 16'hd997;
	ans = 16'h7584;
	#20
	A = 16'hd4f6;
	B = 16'hd77a;
	ans = 16'h70a3;
	#20
	A = 16'h52df;
	B = 16'hda1a;
	ans = 16'hf13e;
	#20
	A = 16'hd0d6;
	B = 16'hdbf7;
	ans = 16'h70d1;
	#20
	A = 16'h5899;
	B = 16'hdba9;
	ans = 16'hf867;
	#20
	A = 16'hcfb2;
	B = 16'hdb1d;
	ans = 16'h6ed8;
	#20
	A = 16'h508f;
	B = 16'h5bc3;
	ans = 16'h706c;
	#20
	A = 16'h54de;
	B = 16'hc8bb;
	ans = 16'he1c2;
	#20
	A = 16'h5af3;
	B = 16'h5973;
	ans = 16'h78bc;
	#20
	A = 16'hcf8e;
	B = 16'hd9a7;
	ans = 16'h6d56;
	#20
	A = 16'h5b34;
	B = 16'h5940;
	ans = 16'h78ba;
	#20
	A = 16'h5ac1;
	B = 16'h57f6;
	ans = 16'h76b9;
	#20
	A = 16'hd9e8;
	B = 16'h5696;
	ans = 16'hf4dd;
	#20
	A = 16'h59c7;
	B = 16'h54c2;
	ans = 16'h72df;
	#20
	A = 16'h50a7;
	B = 16'hda76;
	ans = 16'hef84;
	#20
	A = 16'h4768;
	B = 16'h5b6d;
	ans = 16'h66e0;
	#20
	A = 16'h5b44;
	B = 16'h4d36;
	ans = 16'h6cbc;
	#20
	A = 16'hdaa3;
	B = 16'hd887;
	ans = 16'h7783;
	#20
	A = 16'hd942;
	B = 16'h5b99;
	ans = 16'hf8fe;
	#20
	A = 16'hd453;
	B = 16'h5ae2;
	ans = 16'hf371;
	#20
	A = 16'h5a43;
	B = 16'hdb5a;
	ans = 16'hf9c1;
	#20
	A = 16'hd899;
	B = 16'h57f4;
	ans = 16'hf492;
	#20
	A = 16'hd479;
	B = 16'hd4f0;
	ans = 16'h6d85;
	#20
	A = 16'h5932;
	B = 16'h5ab6;
	ans = 16'h785c;
	#20
	A = 16'hdab5;
	B = 16'h593f;
	ans = 16'hf866;
	#20
	A = 16'h4f31;
	B = 16'h5b09;
	ans = 16'h6e53;
	#20
	A = 16'h590b;
	B = 16'hd69c;
	ans = 16'hf42b;
	#20
	A = 16'h55c1;
	B = 16'hda58;
	ans = 16'hf490;
	#20
	A = 16'hd622;
	B = 16'hd9f5;
	ans = 16'h7491;
	#20
	A = 16'hd1fa;
	B = 16'h4fbb;
	ans = 16'he5c6;
	#20
	A = 16'hce16;
	B = 16'hd82a;
	ans = 16'h6a56;
	#20
	A = 16'hd551;
	B = 16'hc904;
	ans = 16'h62ab;
	#20
	A = 16'h59dd;
	B = 16'h5ad8;
	ans = 16'h7904;
	#20
	A = 16'hdbc9;
	B = 16'h4be5;
	ans = 16'hebaf;
	#20
	A = 16'hd698;
	B = 16'h44c5;
	ans = 16'hdfdd;
	#20
	A = 16'hcaf3;
	B = 16'h5590;
	ans = 16'he4d5;
	#20
	A = 16'h479e;
	B = 16'h4b6d;
	ans = 16'h5712;
	#20
	A = 16'h547c;
	B = 16'hdbce;
	ans = 16'hf460;
	#20
	A = 16'h5b46;
	B = 16'hd475;
	ans = 16'hf40d;
	#20
	A = 16'hd922;
	B = 16'h5810;
	ans = 16'hf537;
	#20
	A = 16'h53e8;
	B = 16'h54c7;
	ans = 16'h6cb9;
	#20
	A = 16'hd0f5;
	B = 16'hd1b3;
	ans = 16'h6710;
	#20
	A = 16'hd878;
	B = 16'hd187;
	ans = 16'h6e2d;
	#20
	A = 16'h4a7c;
	B = 16'h550a;
	ans = 16'h6416;
	#20
	A = 16'h57b6;
	B = 16'hdaad;
	ans = 16'hf66f;
	#20
	A = 16'h581d;
	B = 16'h5a99;
	ans = 16'h76c9;
	#20
	A = 16'hd80f;
	B = 16'hdbb8;
	ans = 16'h77d5;
	#20
	A = 16'hda75;
	B = 16'h566a;
	ans = 16'hf52d;
	#20
	A = 16'h55e8;
	B = 16'hdace;
	ans = 16'hf506;
	#20
	A = 16'h523f;
	B = 16'h5920;
	ans = 16'h7000;
	#20
	A = 16'h5885;
	B = 16'h5501;
	ans = 16'h71a7;
	#20
	A = 16'h5956;
	B = 16'hd975;
	ans = 16'hf748;
	#20
	A = 16'h5a97;
	B = 16'h5494;
	ans = 16'h738b;
	#20
	A = 16'h555e;
	B = 16'hda5f;
	ans = 16'hf446;
	#20
	A = 16'hcc95;
	B = 16'hd548;
	ans = 16'h660d;
	#20
	A = 16'h4e15;
	B = 16'hd563;
	ans = 16'he818;
	#20
	A = 16'h4a39;
	B = 16'hd3ad;
	ans = 16'he1f8;
	#20
	A = 16'hc5c0;
	B = 16'hda18;
	ans = 16'h6461;
	#20
	A = 16'h56b8;
	B = 16'h5b61;
	ans = 16'h7632;
	#20
	A = 16'h5860;
	B = 16'h59e3;
	ans = 16'h7670;
	#20
	A = 16'h58f7;
	B = 16'h58d0;
	ans = 16'h75f9;
	#20
	A = 16'hd85b;
	B = 16'h5595;
	ans = 16'hf214;
	#20
	A = 16'hda3e;
	B = 16'h5abf;
	ans = 16'hf944;
	#20
	A = 16'h51b9;
	B = 16'hd8fc;
	ans = 16'hef22;
	#20
	A = 16'hd932;
	B = 16'h5384;
	ans = 16'hf0e1;
	#20
	A = 16'hd7d8;
	B = 16'h54a2;
	ans = 16'hf08b;
	#20
	A = 16'h57e3;
	B = 16'hd0ce;
	ans = 16'hecbd;
	#20
	A = 16'hd9a9;
	B = 16'h591f;
	ans = 16'hf73f;
	#20
	A = 16'h5bea;
	B = 16'h5140;
	ans = 16'h7132;
	#20
	A = 16'h59d9;
	B = 16'h5956;
	ans = 16'h77cd;
	#20
	A = 16'h5898;
	B = 16'hd7b9;
	ans = 16'hf46f;
	#20
	A = 16'hd2d7;
	B = 16'hd819;
	ans = 16'h6f02;
	#20
	A = 16'hca98;
	B = 16'hd816;
	ans = 16'h66bc;
	#20
	A = 16'hd956;
	B = 16'h58cc;
	ans = 16'hf666;
	#20
	A = 16'hd4ec;
	B = 16'h593b;
	ans = 16'hf270;
	#20
	A = 16'hda21;
	B = 16'h54f5;
	ans = 16'hf398;
	#20
	A = 16'hdbc4;
	B = 16'hd822;
	ans = 16'h7803;
	#20
	A = 16'h4f62;
	B = 16'h488d;
	ans = 16'h5c33;
	#20
	A = 16'hda16;
	B = 16'h59dd;
	ans = 16'hf876;
	#20
	A = 16'h5234;
	B = 16'h505b;
	ans = 16'h66c1;
	#20
	A = 16'h5295;
	B = 16'h589b;
	ans = 16'h6f94;
	#20
	A = 16'hd837;
	B = 16'hdbb7;
	ans = 16'h7811;
	#20
	A = 16'h5603;
	B = 16'hd10a;
	ans = 16'heb93;
	#20
	A = 16'hd607;
	B = 16'h4e31;
	ans = 16'he8aa;
	#20
	A = 16'h5b60;
	B = 16'hda05;
	ans = 16'hf98d;
	#20
	A = 16'h547e;
	B = 16'h54f1;
	ans = 16'h6d8d;
	#20
	A = 16'h46b1;
	B = 16'hd879;
	ans = 16'he37b;
	#20
	A = 16'h5924;
	B = 16'h5171;
	ans = 16'h6efe;
	#20
	A = 16'h5a2f;
	B = 16'hda3f;
	ans = 16'hf8d4;
	#20
	A = 16'h589e;
	B = 16'h5827;
	ans = 16'h74cb;
	#20
	A = 16'h5471;
	B = 16'hda18;
	ans = 16'hf2c4;
	#20
	A = 16'h5b32;
	B = 16'hd9d1;
	ans = 16'hf93b;
	#20
	A = 16'h57f1;
	B = 16'hd503;
	ans = 16'hf0fa;
	#20
	A = 16'h59af;
	B = 16'h5a55;
	ans = 16'h7880;
	#20
	A = 16'hdb0e;
	B = 16'hd577;
	ans = 16'h74d2;
	#20
	A = 16'hd887;
	B = 16'h517c;
	ans = 16'hee35;
	#20
	A = 16'h4de0;
	B = 16'hd8fc;
	ans = 16'heb52;
	#20
	A = 16'hd3df;
	B = 16'h5607;
	ans = 16'hedee;
	#20
	A = 16'hd944;
	B = 16'hd8b2;
	ans = 16'h762e;
	#20
	A = 16'hcc91;
	B = 16'hda09;
	ans = 16'h6ae4;
	#20
	A = 16'hda0b;
	B = 16'hd199;
	ans = 16'h703a;
	#20
	A = 16'hd894;
	B = 16'h5885;
	ans = 16'hf52c;
	#20
	A = 16'hd7f8;
	B = 16'hda57;
	ans = 16'h7651;
	#20
	A = 16'h529b;
	B = 16'hd4b6;
	ans = 16'hebc8;
	#20
	A = 16'h5220;
	B = 16'h44df;
	ans = 16'h5b75;
	#20
	A = 16'h5ab3;
	B = 16'hdaa8;
	ans = 16'hf993;
	#20
	A = 16'h44c2;
	B = 16'h55ab;
	ans = 16'h5ebe;
	#20
	A = 16'hd4f3;
	B = 16'h5a34;
	ans = 16'hf3ad;
	#20
	A = 16'h50b5;
	B = 16'hd86b;
	ans = 16'hed33;
	#20
	A = 16'hda5f;
	B = 16'hd40e;
	ans = 16'h7275;
	#20
	A = 16'hd90f;
	B = 16'h52d2;
	ans = 16'hf050;
	#20
	A = 16'hd9e4;
	B = 16'h4fc5;
	ans = 16'hedb9;
	#20
	A = 16'hd922;
	B = 16'h5295;
	ans = 16'hf039;
	#20
	A = 16'hd687;
	B = 16'hd809;
	ans = 16'h7296;
	#20
	A = 16'h36d6;
	B = 16'h5a2c;
	ans = 16'h5546;
	#20
	A = 16'h5ae4;
	B = 16'h5931;
	ans = 16'h7879;
	#20
	A = 16'h4f8b;
	B = 16'hdac9;
	ans = 16'hee66;
	#20
	A = 16'h59d1;
	B = 16'hced1;
	ans = 16'hecf5;
	#20
	A = 16'hd7a8;
	B = 16'hd49c;
	ans = 16'h7069;
	#20
	A = 16'hd9f6;
	B = 16'hd832;
	ans = 16'h7641;
	#20
	A = 16'h527d;
	B = 16'h5691;
	ans = 16'h6d53;
	#20
	A = 16'h5a8a;
	B = 16'hccde;
	ans = 16'hebf5;
	#20
	A = 16'hd9c8;
	B = 16'h5b2d;
	ans = 16'hf930;
	#20
	A = 16'h51cc;
	B = 16'h5946;
	ans = 16'h6fa4;
	#20
	A = 16'hcfe0;
	B = 16'h5977;
	ans = 16'hed61;
	#20
	A = 16'hdbd8;
	B = 16'h5b42;
	ans = 16'hfb1e;
	#20
	A = 16'h5bf6;
	B = 16'hd2d2;
	ans = 16'hf2c9;
	#20
	A = 16'h5836;
	B = 16'hdbe6;
	ans = 16'hf828;
	#20
	A = 16'hd2e1;
	B = 16'hc148;
	ans = 16'h588b;
	#20
	A = 16'hd250;
	B = 16'h587c;
	ans = 16'hef14;
	#20
	A = 16'hd343;
	B = 16'h5975;
	ans = 16'hf0f4;
	#20
	A = 16'h4164;
	B = 16'hd5d8;
	ans = 16'hdbe0;
	#20
	A = 16'h5b98;
	B = 16'hdb2b;
	ans = 16'hface;
	#20
	A = 16'hc537;
	B = 16'h5364;
	ans = 16'hdcd1;
	#20
	A = 16'hd788;
	B = 16'hd616;
	ans = 16'h71bb;
	#20
	A = 16'h552f;
	B = 16'hdb49;
	ans = 16'hf4b8;
	#20
	A = 16'h57aa;
	B = 16'hdbe0;
	ans = 16'hf78b;
	#20
	A = 16'h5b32;
	B = 16'h4006;
	ans = 16'h5f3d;
	#20
	A = 16'hcd1e;
	B = 16'hd640;
	ans = 16'h67ff;
	#20
	A = 16'hd9df;
	B = 16'h5a5c;
	ans = 16'hf8ab;
	#20
	A = 16'h511b;
	B = 16'h591a;
	ans = 16'h6e83;
	#20
	A = 16'h5306;
	B = 16'hdaae;
	ans = 16'hf1dd;
	#20
	A = 16'h5aa5;
	B = 16'hd570;
	ans = 16'hf484;
	#20
	A = 16'h58a8;
	B = 16'hd47d;
	ans = 16'hf13a;
	#20
	A = 16'h5a0c;
	B = 16'h5b6f;
	ans = 16'h799e;
	#20
	A = 16'hd8f4;
	B = 16'h4f22;
	ans = 16'hec6b;
	#20
	A = 16'hd62f;
	B = 16'h5a0d;
	ans = 16'hf4ad;
	#20
	A = 16'hcd3a;
	B = 16'h4788;
	ans = 16'hd8ec;
	#20
	A = 16'hdb9c;
	B = 16'h4684;
	ans = 16'he633;
	#20
	A = 16'h51b5;
	B = 16'h5a46;
	ans = 16'h707a;
	#20
	A = 16'hd5df;
	B = 16'hd711;
	ans = 16'h7130;
	#20
	A = 16'h5920;
	B = 16'hbdd4;
	ans = 16'hdb78;
	#20
	A = 16'h5734;
	B = 16'hc124;
	ans = 16'hdca1;
	#20
	A = 16'h5b75;
	B = 16'hd8a8;
	ans = 16'hf857;
	#20
	A = 16'h5293;
	B = 16'hcda1;
	ans = 16'he4a0;
	#20
	A = 16'hd9df;
	B = 16'hd8ef;
	ans = 16'h773e;
	#20
	A = 16'h5ae5;
	B = 16'h5316;
	ans = 16'h721b;
	#20
	A = 16'h58cc;
	B = 16'hd9d2;
	ans = 16'hf6fb;
	#20
	A = 16'h561a;
	B = 16'h574d;
	ans = 16'h7191;
	#20
	A = 16'hd6b1;
	B = 16'h4d64;
	ans = 16'he882;
	#20
	A = 16'h5554;
	B = 16'h55f5;
	ans = 16'h6fef;
	#20
	A = 16'h556a;
	B = 16'h5956;
	ans = 16'h7339;
	#20
	A = 16'h589d;
	B = 16'hd1cf;
	ans = 16'heeb3;
	#20
	A = 16'hd510;
	B = 16'h57c5;
	ans = 16'hf0eb;
	#20
	A = 16'h5906;
	B = 16'h59ab;
	ans = 16'h771e;
	#20
	A = 16'h5958;
	B = 16'hd0e6;
	ans = 16'hee8b;
	#20
	A = 16'hdb47;
	B = 16'h563b;
	ans = 16'hf5ab;
	#20
	A = 16'h561c;
	B = 16'h54bb;
	ans = 16'h6f3a;
	#20
	A = 16'hd895;
	B = 16'hdab1;
	ans = 16'h77aa;
	#20
	A = 16'hdba0;
	B = 16'hc700;
	ans = 16'h66ac;
	#20
	A = 16'h5ada;
	B = 16'h5a2a;
	ans = 16'h7947;
	#20
	A = 16'h5aab;
	B = 16'h5a65;
	ans = 16'h7954;
	#20
	A = 16'h5785;
	B = 16'hd991;
	ans = 16'hf53b;
	#20
	A = 16'h56ea;
	B = 16'hd59e;
	ans = 16'hf0db;
	#20
	A = 16'hc6aa;
	B = 16'hdb96;
	ans = 16'h6652;
	#20
	A = 16'h5ba4;
	B = 16'h4f66;
	ans = 16'h6f11;
	#20
	A = 16'hd95c;
	B = 16'hdaae;
	ans = 16'h787a;
	#20
	A = 16'hd82f;
	B = 16'hd88c;
	ans = 16'h74c1;
	#20
	A = 16'hd47a;
	B = 16'h5976;
	ans = 16'hf21d;
	#20
	A = 16'h5539;
	B = 16'hd531;
	ans = 16'heec7;
	#20
	A = 16'hd141;
	B = 16'hd6e8;
	ans = 16'h6c89;
	#20
	A = 16'hd914;
	B = 16'h5289;
	ans = 16'hf026;
	#20
	A = 16'hd61f;
	B = 16'hda99;
	ans = 16'h750c;
	#20
	A = 16'h5567;
	B = 16'h58ea;
	ans = 16'h72a3;
	#20
	A = 16'h5726;
	B = 16'h571f;
	ans = 16'h725d;
	#20
	A = 16'h5370;
	B = 16'h5ad4;
	ans = 16'h7259;
	#20
	A = 16'h544f;
	B = 16'hd8c6;
	ans = 16'hf124;
	#20
	A = 16'hd8b2;
	B = 16'hcd87;
	ans = 16'h6a7d;
	#20
	A = 16'hd2ca;
	B = 16'hd925;
	ans = 16'h705e;
	#20
	A = 16'hcf83;
	B = 16'h4770;
	ans = 16'hdafc;
	#20
	A = 16'hd84c;
	B = 16'hc099;
	ans = 16'h5cf0;
	#20
	A = 16'h5b97;
	B = 16'hda0d;
	ans = 16'hf9be;
	#20
	A = 16'hd9ad;
	B = 16'h4092;
	ans = 16'hde7c;
	#20
	A = 16'hdac6;
	B = 16'hd084;
	ans = 16'h6fa6;
	#20
	A = 16'hda50;
	B = 16'h540c;
	ans = 16'hf263;
	#20
	A = 16'hd5cf;
	B = 16'hd8a9;
	ans = 16'h72c4;
	#20
	A = 16'hd256;
	B = 16'h5a9f;
	ans = 16'hf13e;
	#20
	A = 16'hd9d1;
	B = 16'h5a67;
	ans = 16'hf8a8;
	#20
	A = 16'hd496;
	B = 16'h5523;
	ans = 16'hede4;
	#20
	A = 16'h4fc0;
	B = 16'h5843;
	ans = 16'h6c21;
	#20
	A = 16'hc4ac;
	B = 16'hd891;
	ans = 16'h6155;
	#20
	A = 16'h545e;
	B = 16'h52ac;
	ans = 16'h6b49;
	#20
	A = 16'h5aec;
	B = 16'hdbdb;
	ans = 16'hfacc;
	#20
	A = 16'hd9c0;
	B = 16'hca91;
	ans = 16'h68b8;
	#20
	A = 16'hda3f;
	B = 16'hdaa3;
	ans = 16'h792f;
	#20
	A = 16'hda9d;
	B = 16'h577a;
	ans = 16'hf62e;
	#20
	A = 16'hd7bb;
	B = 16'hd616;
	ans = 16'h71e2;
	#20
	A = 16'hd9a5;
	B = 16'hd529;
	ans = 16'h7348;
	#20
	A = 16'h521c;
	B = 16'h5a8d;
	ans = 16'h7101;
	#20
	A = 16'hcb28;
	B = 16'h5865;
	ans = 16'he7dd;
	#20
	A = 16'h59f9;
	B = 16'h5a00;
	ans = 16'h787b;
	#20
	A = 16'h51ef;
	B = 16'h4fe0;
	ans = 16'h65d7;
	#20
	A = 16'hd8f7;
	B = 16'hd948;
	ans = 16'h768e;
	#20
	A = 16'hd95c;
	B = 16'h3eac;
	ans = 16'hdc78;
	#20
	A = 16'hd511;
	B = 16'hda0a;
	ans = 16'h73a6;
	#20
	A = 16'h4015;
	B = 16'hd9e6;
	ans = 16'hde05;
	#20
	A = 16'hda4c;
	B = 16'hd2bf;
	ans = 16'h714f;
	#20
	A = 16'h5bd8;
	B = 16'hce69;
	ans = 16'hee49;
	#20
	A = 16'hdb61;
	B = 16'h51c8;
	ans = 16'hf155;
	#20
	A = 16'hd447;
	B = 16'h5742;
	ans = 16'hefc3;
	#20
	A = 16'hd4c8;
	B = 16'h58fd;
	ans = 16'hf1f6;
	#20
	A = 16'hd951;
	B = 16'h563e;
	ans = 16'hf426;
	#20
	A = 16'h5b28;
	B = 16'h5959;
	ans = 16'h78c9;
	#20
	A = 16'hd791;
	B = 16'hd877;
	ans = 16'h7439;
	#20
	A = 16'h596d;
	B = 16'h5a96;
	ans = 16'h7877;
	#20
	A = 16'h57f6;
	B = 16'h5705;
	ans = 16'h72fc;
	#20
	A = 16'h5976;
	B = 16'h53dd;
	ans = 16'h715e;
	#20
	A = 16'h5b89;
	B = 16'h5ae9;
	ans = 16'h7a82;
	#20
	A = 16'hd3f1;
	B = 16'hd009;
	ans = 16'h6801;
	#20
	A = 16'h5b39;
	B = 16'hc21a;
	ans = 16'he182;
	#20
	A = 16'h5927;
	B = 16'h5b77;
	ans = 16'h78cf;
	#20
	A = 16'h549a;
	B = 16'hd57e;
	ans = 16'hee51;
	#20
	A = 16'hd0e0;
	B = 16'hd408;
	ans = 16'h68ea;
	#20
	A = 16'hc809;
	B = 16'hda1b;
	ans = 16'h6629;
	#20
	A = 16'hd9c9;
	B = 16'hd4b2;
	ans = 16'h72ca;
	#20
	A = 16'hd827;
	B = 16'hd3d7;
	ans = 16'h7012;
	#20
	A = 16'hd667;
	B = 16'hcc3a;
	ans = 16'h66c4;
	#20
	A = 16'hda0b;
	B = 16'hd57f;
	ans = 16'h7427;
	#20
	A = 16'hd2e4;
	B = 16'h5840;
	ans = 16'hef52;
	#20
	A = 16'h5bb3;
	B = 16'h59c8;
	ans = 16'h7990;
	#20
	A = 16'h5a26;
	B = 16'h5a32;
	ans = 16'h78c3;
	#20
	A = 16'hdae6;
	B = 16'h55c8;
	ans = 16'hf4fc;
	#20
	A = 16'hdb5f;
	B = 16'hd64d;
	ans = 16'h75ce;
	#20
	A = 16'h5b3e;
	B = 16'hd679;
	ans = 16'hf5dc;
	#20
	A = 16'hdbd2;
	B = 16'h5856;
	ans = 16'hf83d;
	#20
	A = 16'h5b55;
	B = 16'h5bce;
	ans = 16'h7b27;
	#20
	A = 16'h58f7;
	B = 16'hd4f5;
	ans = 16'hf227;
	#20
	A = 16'hd27c;
	B = 16'hdb20;
	ans = 16'h71c6;
	#20
	A = 16'hdabf;
	B = 16'hd3ce;
	ans = 16'h7295;
	#20
	A = 16'hd3b9;
	B = 16'hd808;
	ans = 16'h6fc8;
	#20
	A = 16'hd8bf;
	B = 16'h5986;
	ans = 16'hf68e;
	#20
	A = 16'hd585;
	B = 16'h4c78;
	ans = 16'he62b;
	#20
	A = 16'hd882;
	B = 16'hda79;
	ans = 16'h774b;
	#20
	A = 16'hd5c7;
	B = 16'hd1e2;
	ans = 16'h6c40;
	#20
	A = 16'h50b4;
	B = 16'h5a36;
	ans = 16'h6f4d;
	#20
	A = 16'hd065;
	B = 16'hd752;
	ans = 16'h6c05;
	#20
	A = 16'hd7c3;
	B = 16'h5a4b;
	ans = 16'hf61b;
	#20
	A = 16'h5ab2;
	B = 16'h4fc6;
	ans = 16'h6e81;
	#20
	A = 16'h555d;
	B = 16'hd8c1;
	ans = 16'hf260;
	#20
	A = 16'h5b60;
	B = 16'hce49;
	ans = 16'hedcb;
	#20
	A = 16'hdad4;
	B = 16'hd0f3;
	ans = 16'h7039;
	#20
	A = 16'hd4b7;
	B = 16'h537c;
	ans = 16'hec69;
	#20
	A = 16'hd937;
	B = 16'hda30;
	ans = 16'h7809;
	#20
	A = 16'hd272;
	B = 16'hd81f;
	ans = 16'h6ea4;
	#20
	A = 16'h58a7;
	B = 16'h533a;
	ans = 16'h7034;
	#20
	A = 16'h5bb9;
	B = 16'h5a56;
	ans = 16'h7a1e;
	#20
	A = 16'hd76f;
	B = 16'hdb7d;
	ans = 16'h76f5;
	#20
	A = 16'hd2c3;
	B = 16'hd71d;
	ans = 16'h6e03;
	#20
	A = 16'hd62c;
	B = 16'h536a;
	ans = 16'hedb8;
	#20
	A = 16'h5236;
	B = 16'hceeb;
	ans = 16'he55f;
	#20
	A = 16'h4ee3;
	B = 16'hd924;
	ans = 16'hec6d;
	#20
	A = 16'hd8fe;
	B = 16'hd508;
	ans = 16'h7247;
	#20
	A = 16'h508b;
	B = 16'h58ca;
	ans = 16'h6d70;
	#20
	A = 16'hd8b8;
	B = 16'h4826;
	ans = 16'he4e5;
	#20
	A = 16'h54f5;
	B = 16'h4906;
	ans = 16'h623a;
	#20
	A = 16'h5461;
	B = 16'hdab8;
	ans = 16'hf35b;
	#20
	A = 16'hc273;
	B = 16'hdbd0;
	ans = 16'h624c;
	#20
	A = 16'hca5b;
	B = 16'h4e39;
	ans = 16'hdcf2;
	#20
	A = 16'h58f4;
	B = 16'hd90a;
	ans = 16'hf63d;
	#20
	A = 16'h5ad3;
	B = 16'hd5a5;
	ans = 16'hf4d1;
	#20
	A = 16'h5ad3;
	B = 16'h5a7d;
	ans = 16'h7989;
	#20
	A = 16'h595a;
	B = 16'hd7ae;
	ans = 16'hf523;
	#20
	A = 16'h590e;
	B = 16'hd945;
	ans = 16'hf6a9;
	#20
	A = 16'hd7a1;
	B = 16'h5842;
	ans = 16'hf40f;
	#20
	A = 16'h56e2;
	B = 16'h4c6a;
	ans = 16'h6798;
	#20
	A = 16'hd93c;
	B = 16'hc93c;
	ans = 16'h66da;
	#20
	A = 16'hd0fd;
	B = 16'hcc46;
	ans = 16'h6154;
	#20
	A = 16'h5556;
	B = 16'h5a0a;
	ans = 16'h7407;
	#20
	A = 16'hdba2;
	B = 16'h57f7;
	ans = 16'hf799;
	#20
	A = 16'hd46d;
	B = 16'hd4cc;
	ans = 16'h6d4f;
	#20
	A = 16'hdabe;
	B = 16'h4c7d;
	ans = 16'heb91;
	#20
	A = 16'h5aac;
	B = 16'hdb61;
	ans = 16'hfa27;
	#20
	A = 16'h586c;
	B = 16'hdb22;
	ans = 16'hf7e3;
	#20
	A = 16'h5826;
	B = 16'hd03f;
	ans = 16'hec67;
	#20
	A = 16'hd96d;
	B = 16'h5739;
	ans = 16'hf4e6;
	#20
	A = 16'h51d5;
	B = 16'hd612;
	ans = 16'hec6d;
	#20
	A = 16'h5bcb;
	B = 16'h5911;
	ans = 16'h78ef;
	#20
	A = 16'h59f5;
	B = 16'h5bab;
	ans = 16'h79b6;
	#20
	A = 16'hd8f5;
	B = 16'hda9c;
	ans = 16'h7818;
	#20
	A = 16'h4c04;
	B = 16'hd781;
	ans = 16'he789;
	#20
	A = 16'h5466;
	B = 16'h5675;
	ans = 16'h6f1a;
	#20
	A = 16'h5acd;
	B = 16'hdad8;
	ans = 16'hf9d1;
	#20
	A = 16'hd8e6;
	B = 16'h5a08;
	ans = 16'hf763;
	#20
	A = 16'hd98d;
	B = 16'hdaf6;
	ans = 16'h78d4;
	#20
	A = 16'hd41b;
	B = 16'hdb38;
	ans = 16'h7369;
	#20
	A = 16'hd4a7;
	B = 16'hcdea;
	ans = 16'h66e1;
	#20
	A = 16'h54ea;
	B = 16'h5606;
	ans = 16'h6f66;
	#20
	A = 16'hdae1;
	B = 16'h5ac4;
	ans = 16'hf9d1;
	#20
	A = 16'hcf4b;
	B = 16'h5ac1;
	ans = 16'hee28;
	#20
	A = 16'hd407;
	B = 16'hdb18;
	ans = 16'h7324;
	#20
	A = 16'h5afa;
	B = 16'h5ad6;
	ans = 16'h79f6;
	#20
	A = 16'hd478;
	B = 16'h56df;
	ans = 16'hefad;
	#20
	A = 16'h5bbc;
	B = 16'hda94;
	ans = 16'hfa5c;
	#20
	A = 16'hdadc;
	B = 16'h56a5;
	ans = 16'hf5b2;
	#20
	A = 16'h57f7;
	B = 16'hd3a6;
	ans = 16'hef9d;
	#20
	A = 16'hd98f;
	B = 16'hd1c4;
	ans = 16'h7002;
	#20
	A = 16'hd442;
	B = 16'h5b97;
	ans = 16'hf40a;
	#20
	A = 16'hd920;
	B = 16'hd097;
	ans = 16'h6de1;
	#20
	A = 16'hd9ce;
	B = 16'h57dd;
	ans = 16'hf5b5;
	#20
	A = 16'hb54c;
	B = 16'hd6b8;
	ans = 16'h5073;
	#20
	A = 16'hc9b7;
	B = 16'h51eb;
	ans = 16'he03a;
	#20
	A = 16'hd933;
	B = 16'h5401;
	ans = 16'hf134;
	#20
	A = 16'hd833;
	B = 16'hd8ba;
	ans = 16'h74f6;
	#20
	A = 16'hda95;
	B = 16'h535c;
	ans = 16'hf20e;
	#20
	A = 16'hcc96;
	B = 16'hd6f0;
	ans = 16'h67f4;
	#20
	A = 16'h5998;
	B = 16'h521a;
	ans = 16'h7044;
	#20
	A = 16'hcd0c;
	B = 16'h5926;
	ans = 16'hea7f;
	#20
	A = 16'hcc3b;
	B = 16'h5b1e;
	ans = 16'heb87;
	#20
	A = 16'h59cd;
	B = 16'hdaf9;
	ans = 16'hf90e;
	#20
	A = 16'h57c0;
	B = 16'h5b60;
	ans = 16'h7725;
	#20
	A = 16'hda55;
	B = 16'h5980;
	ans = 16'hf85a;
	#20
	A = 16'hd88c;
	B = 16'h58ae;
	ans = 16'hf552;
	#20
	A = 16'h5049;
	B = 16'h5904;
	ans = 16'h6d60;
	#20
	A = 16'hcc28;
	B = 16'h568e;
	ans = 16'he6d0;
	#20
	A = 16'hd8aa;
	B = 16'hd90d;
	ans = 16'h75e4;
	#20
	A = 16'hd923;
	B = 16'hd759;
	ans = 16'h74b8;
	#20
	A = 16'h4bc7;
	B = 16'hcd10;
	ans = 16'hdcec;
	#20
	A = 16'h5848;
	B = 16'hd8a7;
	ans = 16'hf4fb;
	#20
	A = 16'hd263;
	B = 16'hdaaf;
	ans = 16'h7156;
	#20
	A = 16'hd631;
	B = 16'hd96e;
	ans = 16'h7434;
	#20
	A = 16'hd50c;
	B = 16'h5a7b;
	ans = 16'hf417;
	#20
	A = 16'hda2e;
	B = 16'hcc27;
	ans = 16'h6a6a;
	#20
	A = 16'hdade;
	B = 16'hdad0;
	ans = 16'h79d9;
	#20
	A = 16'h57e9;
	B = 16'hd924;
	ans = 16'hf515;
	#20
	A = 16'hd699;
	B = 16'h4e1f;
	ans = 16'he90c;
	#20
	A = 16'hd8b2;
	B = 16'h50e8;
	ans = 16'hedc2;
	#20
	A = 16'h51b2;
	B = 16'hd935;
	ans = 16'hef6a;
	#20
	A = 16'h56b1;
	B = 16'h5294;
	ans = 16'h6d81;
	#20
	A = 16'hd857;
	B = 16'h550d;
	ans = 16'hf17b;
	#20
	A = 16'hd1c4;
	B = 16'hd983;
	ans = 16'h6ff2;
	#20
	A = 16'hdac7;
	B = 16'h48a9;
	ans = 16'he7e5;
	#20
	A = 16'h49f1;
	B = 16'hd538;
	ans = 16'he3c0;
	#20
	A = 16'hd9e4;
	B = 16'h5909;
	ans = 16'hf76a;
	#20
	A = 16'h586c;
	B = 16'h4f95;
	ans = 16'h6c31;
	#20
	A = 16'h595b;
	B = 16'hd93d;
	ans = 16'hf703;
	#20
	A = 16'h5b4f;
	B = 16'hdad8;
	ans = 16'hfa41;
	#20
	A = 16'hd9ef;
	B = 16'h556a;
	ans = 16'hf404;
	#20
	A = 16'h5a30;
	B = 16'hd987;
	ans = 16'hf846;
	#20
	A = 16'hd827;
	B = 16'hdb77;
	ans = 16'h77c0;
	#20
	A = 16'hd92e;
	B = 16'h5bd3;
	ans = 16'hf911;
	#20
	A = 16'h5bcb;
	B = 16'hd4e7;
	ans = 16'hf4c7;
	#20
	A = 16'hd983;
	B = 16'h5881;
	ans = 16'hf635;
	#20
	A = 16'h579c;
	B = 16'hd8ac;
	ans = 16'hf472;
	#20
	A = 16'hce51;
	B = 16'h5b68;
	ans = 16'hedd9;
	#20
	A = 16'h5558;
	B = 16'hd8b6;
	ans = 16'hf24b;
	#20
	A = 16'h5787;
	B = 16'h5790;
	ans = 16'h731e;
	#20
	A = 16'hdb6a;
	B = 16'hd3ab;
	ans = 16'h731b;
	#20
	A = 16'h5b95;
	B = 16'hd495;
	ans = 16'hf458;
	#20
	A = 16'h57bf;
	B = 16'hd062;
	ans = 16'hec3e;
	#20
	A = 16'hdab3;
	B = 16'h5447;
	ans = 16'hf32a;
	#20
	A = 16'h5a2b;
	B = 16'h5a79;
	ans = 16'h78fe;
	#20
	A = 16'h5768;
	B = 16'hd48b;
	ans = 16'hf035;
	#20
	A = 16'h5b3c;
	B = 16'h5057;
	ans = 16'h6fd9;
	#20
	A = 16'hd00a;
	B = 16'h578e;
	ans = 16'heba1;
	#20
	A = 16'h548b;
	B = 16'hd8fa;
	ans = 16'hf1a7;
	#20
	A = 16'h5aa4;
	B = 16'h5562;
	ans = 16'h7478;
	#20
	A = 16'h5b84;
	B = 16'h5926;
	ans = 16'h78d6;
	#20
	A = 16'h58a2;
	B = 16'hdb2b;
	ans = 16'hf827;
	#20
	A = 16'h5941;
	B = 16'h5a6e;
	ans = 16'h7839;
	#20
	A = 16'h5a60;
	B = 16'hd835;
	ans = 16'hf6b4;
	#20
	A = 16'hd9d7;
	B = 16'h522b;
	ans = 16'hf081;
	#20
	A = 16'hd7d5;
	B = 16'h5b72;
	ans = 16'hf74a;
	#20
	A = 16'hda55;
	B = 16'hda93;
	ans = 16'h7934;
	#20
	A = 16'h5b44;
	B = 16'hd88e;
	ans = 16'hf823;
	#20
	A = 16'h54f1;
	B = 16'h5ac2;
	ans = 16'h742d;
	#20
	A = 16'hcec0;
	B = 16'h56a8;
	ans = 16'he99e;
	#20
	A = 16'hd81a;
	B = 16'h5609;
	ans = 16'hf230;
	#20
	A = 16'h592b;
	B = 16'hd9f0;
	ans = 16'hf7ac;
	#20
	A = 16'h4dc1;
	B = 16'hd4c8;
	ans = 16'he6e1;
	#20
	A = 16'h5853;
	B = 16'h54f5;
	ans = 16'h715c;
	#20
	A = 16'hd6bc;
	B = 16'hd7a8;
	ans = 16'h7272;
	#20
	A = 16'h58fd;
	B = 16'ha0a1;
	ans = 16'hbdc6;
	#20
	A = 16'hd9aa;
	B = 16'hd8c4;
	ans = 16'h76c0;
	#20
	A = 16'hd1e5;
	B = 16'hc04f;
	ans = 16'h5659;
	#20
	A = 16'h59ab;
	B = 16'hcaf6;
	ans = 16'he8ef;
	#20
	A = 16'hd8af;
	B = 16'h4e19;
	ans = 16'heb24;
	#20
	A = 16'hdadd;
	B = 16'h5250;
	ans = 16'hf16a;
	#20
	A = 16'h567d;
	B = 16'h5b5b;
	ans = 16'h75f7;
	#20
	A = 16'hd2a4;
	B = 16'h550d;
	ans = 16'hec31;
	#20
	A = 16'hd14b;
	B = 16'hda9a;
	ans = 16'h705e;
	#20
	A = 16'h587a;
	B = 16'hd915;
	ans = 16'hf5b0;
	#20
	A = 16'hdbd7;
	B = 16'h589e;
	ans = 16'hf886;
	#20
	A = 16'hd67a;
	B = 16'h5b8b;
	ans = 16'hf61b;
	#20
	A = 16'hd95c;
	B = 16'h5a50;
	ans = 16'hf83b;
	#20
	A = 16'h56bf;
	B = 16'hd995;
	ans = 16'hf4b5;
	#20
	A = 16'h54d9;
	B = 16'hd787;
	ans = 16'hf090;
	#20
	A = 16'hd2ad;
	B = 16'hd6fb;
	ans = 16'h6dd3;
	#20
	A = 16'h5a3c;
	B = 16'hda04;
	ans = 16'hf8b0;
	#20
	A = 16'h5817;
	B = 16'h5af3;
	ans = 16'h771b;
	#20
	A = 16'h5bf2;
	B = 16'h2e80;
	ans = 16'h4e75;
	#20
	A = 16'hd892;
	B = 16'hd81c;
	ans = 16'h74b2;
	#20
	A = 16'hd618;
	B = 16'hd814;
	ans = 16'h7236;
	#20
	A = 16'h55c1;
	B = 16'h550c;
	ans = 16'h6f43;
	#20
	A = 16'h506a;
	B = 16'hd60e;
	ans = 16'heaae;
	#20
	A = 16'hd6eb;
	B = 16'h5a6f;
	ans = 16'hf590;
	#20
	A = 16'hdb85;
	B = 16'hda25;
	ans = 16'h79c7;
	#20
	A = 16'h5798;
	B = 16'h5be2;
	ans = 16'h777c;
	#20
	A = 16'h5215;
	B = 16'hd906;
	ans = 16'hefa3;
	#20
	A = 16'h5b89;
	B = 16'h59d2;
	ans = 16'h797b;
	#20
	A = 16'h5b3f;
	B = 16'h5a9d;
	ans = 16'h79fd;
	#20
	A = 16'hd68e;
	B = 16'hb96f;
	ans = 16'h5474;
	#20
	A = 16'hd771;
	B = 16'hd9fd;
	ans = 16'h7592;
	#20
	A = 16'hd6df;
	B = 16'h5bf3;
	ans = 16'hf6d4;
	#20
	A = 16'hd3e8;
	B = 16'h58bc;
	ans = 16'hf0ae;
	#20
	A = 16'hc219;
	B = 16'hda1b;
	ans = 16'h60a7;
	#20
	A = 16'h5335;
	B = 16'h5b49;
	ans = 16'h7290;
	#20
	A = 16'h58af;
	B = 16'hd3a4;
	ans = 16'hf079;
	#20
	A = 16'h5b89;
	B = 16'h4783;
	ans = 16'h6713;
	#20
	A = 16'h58d4;
	B = 16'h5a63;
	ans = 16'h77b5;
	#20
	A = 16'hdaec;
	B = 16'hd83c;
	ans = 16'h7754;
	#20
	A = 16'hcf7f;
	B = 16'h59d8;
	ans = 16'hed7a;
	#20
	A = 16'hdb17;
	B = 16'hd772;
	ans = 16'h7699;
	#20
	A = 16'hd00f;
	B = 16'h4d4e;
	ans = 16'he162;
	#20
	A = 16'hd820;
	B = 16'h54cf;
	ans = 16'hf0f5;
	#20
	A = 16'h47b6;
	B = 16'h5a5c;
	ans = 16'h6621;
	#20
	A = 16'hdaa6;
	B = 16'h5907;
	ans = 16'hf82e;
	#20
	A = 16'hd6b5;
	B = 16'hd9ca;
	ans = 16'h74da;
	#20
	A = 16'hdb45;
	B = 16'h5903;
	ans = 16'hf88e;
	#20
	A = 16'h5826;
	B = 16'hd8d6;
	ans = 16'hf504;
	#20
	A = 16'hd7ef;
	B = 16'h561a;
	ans = 16'hf20d;
	#20
	A = 16'hd34f;
	B = 16'h57b4;
	ans = 16'hef0a;
	#20
	A = 16'h5663;
	B = 16'h5822;
	ans = 16'h7299;
	#20
	A = 16'h59b2;
	B = 16'hd928;
	ans = 16'hf757;
	#20
	A = 16'hc936;
	B = 16'hd6ce;
	ans = 16'h646f;
	#20
	A = 16'hdb9e;
	B = 16'hdadd;
	ans = 16'h7a89;
	#20
	A = 16'h4e50;
	B = 16'h54e6;
	ans = 16'h67bb;
	#20
	A = 16'h5a74;
	B = 16'h53d2;
	ans = 16'h724f;
	#20
	A = 16'hd955;
	B = 16'hdbc1;
	ans = 16'h792b;
	#20
	A = 16'h51de;
	B = 16'h59cb;
	ans = 16'h7040;
	#20
	A = 16'hcdac;
	B = 16'h5172;
	ans = 16'he3b9;
	#20
	A = 16'hd403;
	B = 16'hd9d4;
	ans = 16'h71d8;
	#20
	A = 16'h4534;
	B = 16'hd001;
	ans = 16'hd935;
	#20
	A = 16'hd9d4;
	B = 16'h5bd1;
	ans = 16'hf9b2;
	#20
	A = 16'hd92a;
	B = 16'hd892;
	ans = 16'h75e6;
	#20
	A = 16'h5663;
	B = 16'hd4dd;
	ans = 16'hefc4;
	#20
	A = 16'hd434;
	B = 16'h58bd;
	ans = 16'hf0fb;
	#20
	A = 16'h592c;
	B = 16'hd992;
	ans = 16'hf734;
	#20
	A = 16'h5601;
	B = 16'hd8b0;
	ans = 16'hf309;
	#20
	A = 16'h590d;
	B = 16'hd4ff;
	ans = 16'hf24f;
	#20
	A = 16'hd9d1;
	B = 16'h5321;
	ans = 16'hf12f;
	#20
	A = 16'hdba5;
	B = 16'hdb68;
	ans = 16'h7b14;
	#20
	A = 16'hb849;
	B = 16'hdaee;
	ans = 16'h576c;
	#20
	A = 16'h562b;
	B = 16'h565c;
	ans = 16'h70e7;
	#20
	A = 16'hd4a5;
	B = 16'hdb74;
	ans = 16'h7454;
	#20
	A = 16'h59b2;
	B = 16'h58da;
	ans = 16'h76e8;
	#20
	A = 16'hd81e;
	B = 16'h5595;
	ans = 16'hf1bf;
	#20
	A = 16'h4e41;
	B = 16'h5bf5;
	ans = 16'h6e38;
	#20
	A = 16'h5ab6;
	B = 16'h5122;
	ans = 16'h704e;
	#20
	A = 16'hd568;
	B = 16'h56a7;
	ans = 16'hf07f;
	#20
	A = 16'h5754;
	B = 16'h57f8;
	ans = 16'h734d;
	#20
	A = 16'hd129;
	B = 16'h5826;
	ans = 16'hed5a;
	#20
	A = 16'hd898;
	B = 16'hd863;
	ans = 16'h750a;
	#20
	A = 16'h5ba9;
	B = 16'hdb7a;
	ans = 16'hfb29;
	#20
	A = 16'h593c;
	B = 16'h55a8;
	ans = 16'h7367;
	#20
	A = 16'hd5fb;
	B = 16'hd9b9;
	ans = 16'h7447;
	#20
	A = 16'h5a75;
	B = 16'hd597;
	ans = 16'hf483;
	#20
	A = 16'h587c;
	B = 16'h3955;
	ans = 16'h55fa;
	#20
	A = 16'hd136;
	B = 16'hdab6;
	ans = 16'h705f;
	#20
	A = 16'hd41a;
	B = 16'h55f3;
	ans = 16'hee1a;
	#20
	A = 16'h54a2;
	B = 16'hdb30;
	ans = 16'hf42a;
	#20
	A = 16'hdaa8;
	B = 16'hd935;
	ans = 16'h7855;
	#20
	A = 16'hd5b3;
	B = 16'hda71;
	ans = 16'h7497;
	#20
	A = 16'h554a;
	B = 16'hd24e;
	ans = 16'hec2b;
	#20
	A = 16'hdae6;
	B = 16'h5345;
	ans = 16'hf245;
	#20
	A = 16'hd636;
	B = 16'hd902;
	ans = 16'h73c7;
	#20
	A = 16'h538c;
	B = 16'hdbda;
	ans = 16'hf368;
	#20
	A = 16'h58f2;
	B = 16'h5454;
	ans = 16'h715a;
	#20
	A = 16'h4ad9;
	B = 16'h58f7;
	ans = 16'h6840;
	#20
	A = 16'h5859;
	B = 16'h5b11;
	ans = 16'h77ae;
	#20
	A = 16'h597b;
	B = 16'hd82e;
	ans = 16'hf5ba;
	#20
	A = 16'h51a7;
	B = 16'hd61d;
	ans = 16'hec52;
	#20
	A = 16'hd4a5;
	B = 16'h54a9;
	ans = 16'hed69;
	#20
	A = 16'h4797;
	B = 16'h5b74;
	ans = 16'h6712;
	#20
	A = 16'h5a47;
	B = 16'hd9e0;
	ans = 16'hf89c;
	#20
	A = 16'h56ff;
	B = 16'h5623;
	ans = 16'h715e;
	#20
	A = 16'hd032;
	B = 16'hdbda;
	ans = 16'h701e;
	#20
	A = 16'h5836;
	B = 16'hdbb5;
	ans = 16'hf80f;
	#20
	A = 16'h4908;
	B = 16'hd943;
	ans = 16'he69e;
	#20
	A = 16'hd801;
	B = 16'hcaa7;
	ans = 16'h66a9;
	#20
	A = 16'hd60b;
	B = 16'hd98b;
	ans = 16'h7430;
	#20
	A = 16'h5506;
	B = 16'h55f9;
	ans = 16'h6f80;
	#20
	A = 16'hd37d;
	B = 16'h588c;
	ans = 16'hf042;
	#20
	A = 16'h5446;
	B = 16'hdb15;
	ans = 16'hf391;
	#20
	A = 16'hd9f3;
	B = 16'hd0a5;
	ans = 16'h6ee8;
	#20
	A = 16'hd607;
	B = 16'hd464;
	ans = 16'h6e9e;
	#20
	A = 16'h56d8;
	B = 16'hcf04;
	ans = 16'hea00;
	#20
	A = 16'hd7f7;
	B = 16'hbd19;
	ans = 16'h5913;
	#20
	A = 16'h59b0;
	B = 16'hd5c9;
	ans = 16'hf41d;
	#20
	A = 16'hd516;
	B = 16'hdb5f;
	ans = 16'h74b0;
	#20
	A = 16'h543b;
	B = 16'hd5d2;
	ans = 16'hee28;
	#20
	A = 16'hdafe;
	B = 16'h5660;
	ans = 16'hf592;
	#20
	A = 16'hd9de;
	B = 16'h55b2;
	ans = 16'hf42d;
	#20
	A = 16'hd725;
	B = 16'h5960;
	ans = 16'hf4cd;
	#20
	A = 16'h55aa;
	B = 16'h58ea;
	ans = 16'h72f5;
	#20
	A = 16'h548c;
	B = 16'h4a4f;
	ans = 16'h632c;
	#20
	A = 16'hc9e0;
	B = 16'h5506;
	ans = 16'he361;
	#20
	A = 16'hd554;
	B = 16'hd9bd;
	ans = 16'h73a5;
	#20
	A = 16'h5693;
	B = 16'hd828;
	ans = 16'hf2d5;
	#20
	A = 16'hdaf8;
	B = 16'h5b0d;
	ans = 16'hfa24;
	#20
	A = 16'hbc29;
	B = 16'h58a0;
	ans = 16'hd8cf;
	#20
	A = 16'h5a38;
	B = 16'h48b8;
	ans = 16'h6756;
	#20
	A = 16'hd9b0;
	B = 16'hd8b9;
	ans = 16'h76b7;
	#20
	A = 16'h57a3;
	B = 16'hd6d7;
	ans = 16'hf287;
	#20
	A = 16'hd5e6;
	B = 16'h55d6;
	ans = 16'hf04e;
	#20
	A = 16'hd477;
	B = 16'h5860;
	ans = 16'hf0e2;
	#20
	A = 16'hd97b;
	B = 16'hcb9a;
	ans = 16'h6935;
	#20
	A = 16'h5ae0;
	B = 16'h54d5;
	ans = 16'h7427;
	#20
	A = 16'h5abe;
	B = 16'h5b8d;
	ans = 16'h7a5d;
	#20
	A = 16'h5016;
	B = 16'hcd04;
	ans = 16'he120;
	#20
	A = 16'hd3ce;
	B = 16'h47bc;
	ans = 16'hdf8c;
	#20
	A = 16'h5885;
	B = 16'h52e3;
	ans = 16'h6fc8;
	#20
	A = 16'hd933;
	B = 16'hd845;
	ans = 16'h758d;
	#20
	A = 16'h577d;
	B = 16'hd8b2;
	ans = 16'hf465;
	#20
	A = 16'hd9eb;
	B = 16'hd0e9;
	ans = 16'h6f44;
	#20
	A = 16'hcd9e;
	B = 16'h5941;
	ans = 16'heb61;
	#20
	A = 16'h5a55;
	B = 16'hdb7e;
	ans = 16'hf9ee;
	#20
	A = 16'h547a;
	B = 16'h47a6;
	ans = 16'h6048;
	#20
	A = 16'h521e;
	B = 16'hdab3;
	ans = 16'hf11f;
	#20
	A = 16'h5064;
	B = 16'hd41f;
	ans = 16'he886;
	#20
	A = 16'h59c6;
	B = 16'h5252;
	ans = 16'h7090;
	#20
	A = 16'hd814;
	B = 16'h5a3a;
	ans = 16'hf659;
	#20
	A = 16'h5a08;
	B = 16'hdb09;
	ans = 16'hf94e;
	#20
	A = 16'h57d3;
	B = 16'hcbe1;
	ans = 16'he7b5;
	#20
	A = 16'hdafa;
	B = 16'hd63b;
	ans = 16'h756f;
	#20
	A = 16'hdb28;
	B = 16'h5438;
	ans = 16'hf38c;
	#20
	A = 16'hda1f;
	B = 16'h5993;
	ans = 16'hf844;
	#20
	A = 16'hcccd;
	B = 16'h49b5;
	ans = 16'hdad9;
	#20
	A = 16'hd981;
	B = 16'h5bd1;
	ans = 16'hf961;
	#20
	A = 16'h5081;
	B = 16'h52be;
	ans = 16'h6797;
	#20
	A = 16'hcfdc;
	B = 16'h5bf4;
	ans = 16'hefd0;
	#20
	A = 16'h53b7;
	B = 16'h556c;
	ans = 16'h6d3b;
	#20
	A = 16'h4c00;
	B = 16'h58cf;
	ans = 16'h68cf;
	#20
	A = 16'hb9a3;
	B = 16'h5929;
	ans = 16'hd746;
	#20
	A = 16'h58b3;
	B = 16'h4d0a;
	ans = 16'h69eb;
	#20
	A = 16'h5a23;
	B = 16'h59e3;
	ans = 16'h7884;
	#20
	A = 16'hd559;
	B = 16'hdb2d;
	ans = 16'h74cc;
	#20
	A = 16'hd990;
	B = 16'hcabf;
	ans = 16'h68b1;
	#20
	A = 16'hd7ed;
	B = 16'hccb4;
	ans = 16'h68a9;
	#20
	A = 16'h59bf;
	B = 16'hd971;
	ans = 16'hf7d1;
	#20
	A = 16'h593e;
	B = 16'h5a89;
	ans = 16'h7848;
	#20
	A = 16'hd0f4;
	B = 16'hd58c;
	ans = 16'h6ade;
	#20
	A = 16'h55e4;
	B = 16'h4d8d;
	ans = 16'h6816;
	#20
	A = 16'h5b0a;
	B = 16'hdbf0;
	ans = 16'hfafc;
	#20
	A = 16'hdac8;
	B = 16'h5a99;
	ans = 16'hf998;
	#20
	A = 16'hdb18;
	B = 16'h539b;
	ans = 16'hf2be;
	#20
	A = 16'hd55e;
	B = 16'hd0b8;
	ans = 16'h6a55;
	#20
	A = 16'h55b5;
	B = 16'h5a72;
	ans = 16'h7499;
	#20
	A = 16'hdade;
	B = 16'h577c;
	ans = 16'hf66d;
	#20
	A = 16'hd544;
	B = 16'hd823;
	ans = 16'h7172;
	#20
	A = 16'h52f2;
	B = 16'h546e;
	ans = 16'h6bb1;
	#20
	A = 16'h5bb3;
	B = 16'h54b9;
	ans = 16'h748c;
	#20
	A = 16'h573c;
	B = 16'hd646;
	ans = 16'hf1ac;
	#20
	A = 16'h58c2;
	B = 16'hd884;
	ans = 16'hf55f;
	#20
	A = 16'h5490;
	B = 16'h5428;
	ans = 16'h6cbe;
	#20
	A = 16'h530c;
	B = 16'h5a77;
	ans = 16'h71b2;
	#20
	A = 16'h5afa;
	B = 16'hdbe8;
	ans = 16'hfae5;
	#20
	A = 16'h57f7;
	B = 16'hd507;
	ans = 16'hf101;
	#20
	A = 16'hda58;
	B = 16'hdb32;
	ans = 16'h79b5;
	#20
	A = 16'h5994;
	B = 16'hd6a1;
	ans = 16'hf49f;
	#20
	A = 16'h5897;
	B = 16'hd852;
	ans = 16'hf4f5;
	#20
	A = 16'h5825;
	B = 16'h549e;
	ans = 16'h70c9;
	#20
	A = 16'hd9d6;
	B = 16'h53a3;
	ans = 16'hf192;
	#20
	A = 16'h5457;
	B = 16'h5091;
	ans = 16'h68f4;
	#20
	A = 16'h51da;
	B = 16'hd995;
	ans = 16'hf015;
	#20
	A = 16'h5928;
	B = 16'h5818;
	ans = 16'h7547;
	#20
	A = 16'h5414;
	B = 16'hdbf5;
	ans = 16'hf40e;
	#20
	A = 16'h5a21;
	B = 16'h4e74;
	ans = 16'h6cf2;
	#20
	A = 16'hd5d5;
	B = 16'hd7e1;
	ans = 16'h71be;
	#20
	A = 16'h5863;
	B = 16'h532f;
	ans = 16'h6fe1;
	#20
	A = 16'hd294;
	B = 16'h598f;
	ans = 16'hf092;
	#20
	A = 16'hd8a1;
	B = 16'h54ed;
	ans = 16'hf1b3;
	#20
	A = 16'hc65d;
	B = 16'h5769;
	ans = 16'he1e5;
	#20
	A = 16'hd3ee;
	B = 16'h57fa;
	ans = 16'hefe8;
	#20
	A = 16'hccda;
	B = 16'h585b;
	ans = 16'he948;
	#20
	A = 16'h58ec;
	B = 16'h4526;
	ans = 16'h6256;
	#20
	A = 16'hd9fc;
	B = 16'hd855;
	ans = 16'h767b;
	#20
	A = 16'hdb0f;
	B = 16'hd7c0;
	ans = 16'h76d7;
	#20
	A = 16'hdaf2;
	B = 16'hd7f6;
	ans = 16'h76e9;
	#20
	A = 16'h5b2d;
	B = 16'hdb3b;
	ans = 16'hfa7c;
	#20
	A = 16'h58f8;
	B = 16'hdb6c;
	ans = 16'hf89c;
	#20
	A = 16'h5029;
	B = 16'hd544;
	ans = 16'he97a;
	#20
	A = 16'h5551;
	B = 16'hd16a;
	ans = 16'heb32;
	#20
	A = 16'hd590;
	B = 16'h5848;
	ans = 16'hf1f4;
	#20
	A = 16'hd1ac;
	B = 16'h5bcb;
	ans = 16'hf186;
	#20
	A = 16'hcfc0;
	B = 16'h551f;
	ans = 16'he8f6;
	#20
	A = 16'h5614;
	B = 16'h5042;
	ans = 16'h6a78;
	#20
	A = 16'hd153;
	B = 16'h544b;
	ans = 16'he9b7;
	#20
	A = 16'h583b;
	B = 16'hd65b;
	ans = 16'hf2b9;
	#20
	A = 16'hdaa2;
	B = 16'h5993;
	ans = 16'hf89f;
	#20
	A = 16'h5b7b;
	B = 16'h5923;
	ans = 16'h78ce;
	#20
	A = 16'hd883;
	B = 16'hd8fa;
	ans = 16'h759d;
	#20
	A = 16'hc0cd;
	B = 16'h58b0;
	ans = 16'hdda0;
	#20
	A = 16'hd625;
	B = 16'hd995;
	ans = 16'h744a;
	#20
	A = 16'hd25e;
	B = 16'hd92b;
	ans = 16'h701d;
	#20
	A = 16'hd7dd;
	B = 16'h5529;
	ans = 16'hf112;
	#20
	A = 16'h5b5d;
	B = 16'hce0c;
	ans = 16'hed91;
	#20
	A = 16'hd929;
	B = 16'hd3ac;
	ans = 16'h70f3;
	#20
	A = 16'h5b1c;
	B = 16'hd9f5;
	ans = 16'hf94b;
	#20
	A = 16'h5a03;
	B = 16'h58c8;
	ans = 16'h7730;
	#20
	A = 16'h5880;
	B = 16'hccbd;
	ans = 16'he955;
	#20
	A = 16'hd5d8;
	B = 16'h4ac6;
	ans = 16'he4f3;
	#20
	A = 16'h539e;
	B = 16'hd02b;
	ans = 16'he7f0;
	#20
	A = 16'h5634;
	B = 16'h5334;
	ans = 16'h6d96;
	#20
	A = 16'h52fc;
	B = 16'h5b2d;
	ans = 16'h7244;
	#20
	A = 16'h57c5;
	B = 16'h4e05;
	ans = 16'h69d9;
	#20
	A = 16'hcaad;
	B = 16'h571d;
	ans = 16'he5f0;
	#20
	A = 16'hdae5;
	B = 16'h58fb;
	ans = 16'hf84b;
	#20
	A = 16'h58fb;
	B = 16'hd428;
	ans = 16'hf12d;
	#20
	A = 16'h580e;
	B = 16'h5ba2;
	ans = 16'h77bd;
	#20
	A = 16'h549f;
	B = 16'hc8c2;
	ans = 16'he17f;
	#20
	A = 16'h588b;
	B = 16'h59ac;
	ans = 16'h7671;
	#20
	A = 16'hd818;
	B = 16'hd536;
	ans = 16'h7155;
	#20
	A = 16'hd8bb;
	B = 16'hd8e1;
	ans = 16'h75c5;
	#20
	A = 16'h4e25;
	B = 16'hdbe4;
	ans = 16'hee0f;
	#20
	A = 16'hdb59;
	B = 16'hd03d;
	ans = 16'h6fc9;
	#20
	A = 16'hd6bf;
	B = 16'h59a3;
	ans = 16'hf4c1;
	#20
	A = 16'h40f2;
	B = 16'hd3ce;
	ans = 16'hd8d3;
	#20
	A = 16'h5831;
	B = 16'h57e8;
	ans = 16'h7424;
	#20
	A = 16'hd751;
	B = 16'h5ab5;
	ans = 16'hf622;
	#20
	A = 16'h5a26;
	B = 16'hdb26;
	ans = 16'hf97e;
	#20
	A = 16'hd78c;
	B = 16'h4ecf;
	ans = 16'hea6c;
	#20
	A = 16'h5917;
	B = 16'h5a6c;
	ans = 16'h7816;
	#20
	A = 16'hce89;
	B = 16'hcfbb;
	ans = 16'h6251;
	#20
	A = 16'h582f;
	B = 16'hd926;
	ans = 16'hf562;
	#20
	A = 16'hc0e4;
	B = 16'h58e0;
	ans = 16'hddf6;
	#20
	A = 16'hd697;
	B = 16'hda2b;
	ans = 16'h7515;
	#20
	A = 16'h5683;
	B = 16'hda6b;
	ans = 16'hf539;
	#20
	A = 16'hdb70;
	B = 16'hdb93;
	ans = 16'h7b0b;
	#20
	A = 16'hd4c9;
	B = 16'h5b7f;
	ans = 16'hf47c;
	#20
	A = 16'hcdbb;
	B = 16'hd54d;
	ans = 16'h6798;
	#20
	A = 16'hd9db;
	B = 16'hb582;
	ans = 16'h5408;
	#20
	A = 16'h5b62;
	B = 16'h593f;
	ans = 16'h78d7;
	#20
	A = 16'hd9b7;
	B = 16'h59e3;
	ans = 16'hf835;
	#20
	A = 16'h55bd;
	B = 16'h5b3f;
	ans = 16'h7533;
	#20
	A = 16'h50ac;
	B = 16'h4448;
	ans = 16'h5900;
	#20
	A = 16'hd61a;
	B = 16'h5481;
	ans = 16'heedf;
	#20
	A = 16'h531e;
	B = 16'hdaae;
	ans = 16'hf1f1;
	#20
	A = 16'hd93d;
	B = 16'h5a7b;
	ans = 16'hf83e;
	#20
	A = 16'h5814;
	B = 16'hdae9;
	ans = 16'hf70c;
	#20
	A = 16'h5a8c;
	B = 16'h596b;
	ans = 16'h786f;
	#20
	A = 16'hd5fa;
	B = 16'hcc5a;
	ans = 16'h6680;
	#20
	A = 16'hda99;
	B = 16'h5a5c;
	ans = 16'hf93f;
	#20
	A = 16'h56a6;
	B = 16'h413b;
	ans = 16'h5c59;
	#20
	A = 16'hd086;
	B = 16'h4fef;
	ans = 16'he47c;
	#20
	A = 16'h5a31;
	B = 16'h59df;
	ans = 16'h788b;
	#20
	A = 16'hd9aa;
	B = 16'h581b;
	ans = 16'hf5d0;
	#20
	A = 16'hd8d4;
	B = 16'hd8e9;
	ans = 16'h75ed;
	#20
	A = 16'h5ae6;
	B = 16'h559d;
	ans = 16'h74d7;
	#20
	A = 16'h5b03;
	B = 16'hd86d;
	ans = 16'hf7c2;
	#20
	A = 16'h5b21;
	B = 16'h584d;
	ans = 16'h77aa;
	#20
	A = 16'h5077;
	B = 16'hd9c9;
	ans = 16'hee75;
	#20
	A = 16'hd8e0;
	B = 16'hd915;
	ans = 16'h7632;
	#20
	A = 16'h57d2;
	B = 16'h5738;
	ans = 16'h730e;
	#20
	A = 16'h546c;
	B = 16'h4f60;
	ans = 16'h6814;
	#20
	A = 16'h5aab;
	B = 16'h5254;
	ans = 16'h7146;
	#20
	A = 16'h5696;
	B = 16'h568f;
	ans = 16'h7166;
	#20
	A = 16'h5a2b;
	B = 16'h5904;
	ans = 16'h77bc;
	#20
	A = 16'hd9bb;
	B = 16'hd674;
	ans = 16'h749f;
	#20
	A = 16'hd479;
	B = 16'hda23;
	ans = 16'h72dd;
	#20
	A = 16'hd9a1;
	B = 16'hd5cb;
	ans = 16'h7413;
	#20
	A = 16'hd413;
	B = 16'h5a6e;
	ans = 16'hf28d;
	#20
	A = 16'hda0f;
	B = 16'hd2f8;
	ans = 16'h7147;
	#20
	A = 16'hda0e;
	B = 16'h3e5b;
	ans = 16'hdccf;
	#20
	A = 16'hdb8f;
	B = 16'hc8e7;
	ans = 16'h68a2;
	#20
	A = 16'hda91;
	B = 16'hd1c9;
	ans = 16'h70c0;
	#20
	A = 16'hd41c;
	B = 16'h5b03;
	ans = 16'hf334;
	#20
	A = 16'h5184;
	B = 16'hd873;
	ans = 16'hee23;
	#20
	A = 16'h5295;
	B = 16'hd5c6;
	ans = 16'hecc0;
	#20
	A = 16'h5834;
	B = 16'h52b9;
	ans = 16'h6f10;
	#20
	A = 16'h5a31;
	B = 16'hdbad;
	ans = 16'hf9f1;
	#20
	A = 16'hd546;
	B = 16'h538a;
	ans = 16'hecf8;
	#20
	A = 16'h53ec;
	B = 16'hd022;
	ans = 16'he818;
	#20
	A = 16'hda47;
	B = 16'h57d6;
	ans = 16'hf626;
	#20
	A = 16'h51ae;
	B = 16'h570a;
	ans = 16'h6cff;
	#20
	A = 16'h469a;
	B = 16'h5403;
	ans = 16'h5e9f;
	#20
	A = 16'hdbb4;
	B = 16'h5491;
	ans = 16'hf466;
	#20
	A = 16'hd941;
	B = 16'hc4b1;
	ans = 16'h6229;
	#20
	A = 16'h5bd6;
	B = 16'hd148;
	ans = 16'hf12c;
	#20
	A = 16'h54fc;
	B = 16'h53f3;
	ans = 16'h6cf4;
	#20
	A = 16'h53a4;
	B = 16'h5a3e;
	ans = 16'h71f6;
	#20
	A = 16'hd41d;
	B = 16'h59e4;
	ans = 16'hf20f;
	#20
	A = 16'hd6b2;
	B = 16'hd177;
	ans = 16'h6c93;
	#20
	A = 16'hd7a0;
	B = 16'h58e8;
	ans = 16'hf4ad;
	#20
	A = 16'hdb84;
	B = 16'h5a7e;
	ans = 16'hfa19;
	#20
	A = 16'hd870;
	B = 16'hd4d0;
	ans = 16'h7157;
	#20
	A = 16'hd39c;
	B = 16'h5889;
	ans = 16'hf050;
	#20
	A = 16'h5249;
	B = 16'h59dd;
	ans = 16'h709b;
	#20
	A = 16'h5b33;
	B = 16'hcb1d;
	ans = 16'hea67;
	#20
	A = 16'hd49b;
	B = 16'h5b23;
	ans = 16'hf41c;
	#20
	A = 16'hdaf9;
	B = 16'hd948;
	ans = 16'h789a;
	#20
	A = 16'h5929;
	B = 16'h57db;
	ans = 16'h7511;
	#20
	A = 16'h5160;
	B = 16'hd8f4;
	ans = 16'heea8;
	#20
	A = 16'h5a29;
	B = 16'h5534;
	ans = 16'h7402;
	#20
	A = 16'hc740;
	B = 16'hcbc9;
	ans = 16'h570e;
	#20
	A = 16'hd8c9;
	B = 16'hd91e;
	ans = 16'h761f;
	#20
	A = 16'hd50e;
	B = 16'h5582;
	ans = 16'heef6;
	#20
	A = 16'hd871;
	B = 16'hd9c0;
	ans = 16'h7662;
	#20
	A = 16'hdafc;
	B = 16'h54fe;
	ans = 16'hf45c;
	#20
	A = 16'hd709;
	B = 16'hd6b1;
	ans = 16'h71e2;
	#20
	A = 16'hdb58;
	B = 16'h5aca;
	ans = 16'hfa3b;
	#20
	A = 16'h5656;
	B = 16'h58c2;
	ans = 16'h7389;
	#20
	A = 16'h571f;
	B = 16'h52f4;
	ans = 16'h6e30;
	#20
	A = 16'hc9e5;
	B = 16'hdbf5;
	ans = 16'h69dd;
	#20
	A = 16'h5260;
	B = 16'hd8aa;
	ans = 16'hef6f;
	#20
	A = 16'h5932;
	B = 16'hd9d9;
	ans = 16'hf798;
	#20
	A = 16'h5629;
	B = 16'h59a7;
	ans = 16'h745a;
	#20
	A = 16'hd220;
	B = 16'hd8e0;
	ans = 16'h6f77;
	#20
	A = 16'h5bdd;
	B = 16'hd6c3;
	ans = 16'hf6a5;
	#20
	A = 16'h58e7;
	B = 16'hd820;
	ans = 16'hf50e;
	#20
	A = 16'hdb3d;
	B = 16'h4834;
	ans = 16'he79b;
	#20
	A = 16'hd9c7;
	B = 16'h4790;
	ans = 16'he576;
	#20
	A = 16'h5468;
	B = 16'h596e;
	ans = 16'h71fb;
	#20
	A = 16'h4b46;
	B = 16'hda90;
	ans = 16'he9f7;
	#20
	A = 16'hd892;
	B = 16'h555f;
	ans = 16'hf223;
	#20
	A = 16'hda4f;
	B = 16'hdaf4;
	ans = 16'h797c;
	#20
	A = 16'h5745;
	B = 16'hd42a;
	ans = 16'hef91;
	#20
	A = 16'h51fa;
	B = 16'h5948;
	ans = 16'h6fe4;
	#20
	A = 16'h5a1d;
	B = 16'hdbe2;
	ans = 16'hfa06;
	#20
	A = 16'h3ef2;
	B = 16'hccb5;
	ans = 16'hd016;
	#20
	A = 16'hd305;
	B = 16'h5599;
	ans = 16'hece9;
	#20
	A = 16'hdbb3;
	B = 16'hda09;
	ans = 16'h79cf;
	#20
	A = 16'h52da;
	B = 16'h5bcf;
	ans = 16'h72b0;
	#20
	A = 16'hd681;
	B = 16'h5924;
	ans = 16'hf42e;
	#20
	A = 16'hd034;
	B = 16'hd24d;
	ans = 16'h669f;
	#20
	A = 16'h58c1;
	B = 16'h5ae7;
	ans = 16'h781a;
	#20
	A = 16'hd77e;
	B = 16'hd724;
	ans = 16'h72b0;
	#20
	A = 16'h59c6;
	B = 16'h5830;
	ans = 16'h760b;
	#20
	A = 16'hdb33;
	B = 16'h599a;
	ans = 16'hf90a;
	#20
	A = 16'h520a;
	B = 16'hdb30;
	ans = 16'hf16d;
	#20
	A = 16'h59d5;
	B = 16'h594d;
	ans = 16'h77bb;
	#20
	A = 16'h4893;
	B = 16'hd916;
	ans = 16'he5d1;
	#20
	A = 16'h501b;
	B = 16'h52ad;
	ans = 16'h66da;
	#20
	A = 16'h4e8a;
	B = 16'hd8d8;
	ans = 16'hebeb;
	#20
	A = 16'hd40b;
	B = 16'hd9ad;
	ans = 16'h71bd;
	#20
	A = 16'hd94b;
	B = 16'hd6d3;
	ans = 16'h7484;
	#20
	A = 16'hd98a;
	B = 16'h553d;
	ans = 16'hf341;
	#20
	A = 16'hd8c4;
	B = 16'hd949;
	ans = 16'h764c;
	#20
	A = 16'h522b;
	B = 16'h5b4d;
	ans = 16'h71a1;
	#20
	A = 16'h52d9;
	B = 16'hd950;
	ans = 16'hf08c;
	#20
	A = 16'h58f4;
	B = 16'h5710;
	ans = 16'h745f;
	#20
	A = 16'hda63;
	B = 16'h4a47;
	ans = 16'he903;
	#20
	A = 16'hd892;
	B = 16'h59f4;
	ans = 16'hf6cd;
	#20
	A = 16'hd6b7;
	B = 16'hd95e;
	ans = 16'h7481;
	#20
	A = 16'hd152;
	B = 16'hda83;
	ans = 16'h7055;
	#20
	A = 16'h5999;
	B = 16'hd975;
	ans = 16'hf7a3;
	#20
	A = 16'hd9c7;
	B = 16'hda30;
	ans = 16'h7878;
	#20
	A = 16'h55aa;
	B = 16'h562e;
	ans = 16'h7060;
	#20
	A = 16'h50fc;
	B = 16'hdb0d;
	ans = 16'hf065;
	#20
	A = 16'h5078;
	B = 16'hc5c6;
	ans = 16'hda73;
	#20
	A = 16'hd84f;
	B = 16'hd89d;
	ans = 16'h74f8;
	#20
	A = 16'hd999;
	B = 16'h5b85;
	ans = 16'hf943;
	#20
	A = 16'h581e;
	B = 16'hd37c;
	ans = 16'hefb4;
	#20
	A = 16'hdaa2;
	B = 16'h59cc;
	ans = 16'hf8ce;
	#20
	A = 16'h5ab5;
	B = 16'hd972;
	ans = 16'hf891;
	#20
	A = 16'h536c;
	B = 16'h59e7;
	ans = 16'h717a;
	#20
	A = 16'hdb31;
	B = 16'hd5d4;
	ans = 16'h753d;
	#20
	A = 16'h53d8;
	B = 16'h5a9d;
	ans = 16'h727c;
	#20
	A = 16'hda25;
	B = 16'hd4f2;
	ans = 16'h7399;
	#20
	A = 16'h5b67;
	B = 16'h5586;
	ans = 16'h751c;
	#20
	A = 16'hd817;
	B = 16'h507a;
	ans = 16'hec94;
	#20
	A = 16'hd8fa;
	B = 16'h58b7;
	ans = 16'hf5de;
	#20
	A = 16'hd68a;
	B = 16'hd583;
	ans = 16'h7081;
	#20
	A = 16'hd410;
	B = 16'hd99c;
	ans = 16'h71b2;
	#20
	A = 16'hda38;
	B = 16'hdade;
	ans = 16'h7957;
	#20
	A = 16'h5419;
	B = 16'h59ab;
	ans = 16'h71ce;
	#20
	A = 16'h59c1;
	B = 16'hd478;
	ans = 16'hf26e;
	#20
	A = 16'hdbc7;
	B = 16'h5a09;
	ans = 16'hf9de;
	#20
	A = 16'h56f0;
	B = 16'hd52d;
	ans = 16'hf07d;
	#20
	A = 16'h5b12;
	B = 16'h5741;
	ans = 16'h7669;
	#20
	A = 16'h5874;
	B = 16'hd0ec;
	ans = 16'hed7b;
	#20
	A = 16'hd8c2;
	B = 16'hcf87;
	ans = 16'h6c7a;
	#20
	A = 16'hd917;
	B = 16'h5950;
	ans = 16'hf6c3;
	#20
	A = 16'hdb8a;
	B = 16'hda41;
	ans = 16'h79e5;
	#20
	A = 16'hd882;
	B = 16'h48fc;
	ans = 16'he59e;
	#20
	A = 16'h5ad1;
	B = 16'h53b0;
	ans = 16'h728d;
	#20
	A = 16'hdaf8;
	B = 16'h565f;
	ans = 16'hf58d;
	#20
	A = 16'hd600;
	B = 16'hda1d;
	ans = 16'h7496;
	#20
	A = 16'hccf8;
	B = 16'h5471;
	ans = 16'he584;
	#20
	A = 16'hda18;
	B = 16'hdad0;
	ans = 16'h7930;
	#20
	A = 16'hd24e;
	B = 16'h5b47;
	ans = 16'hf1bc;
	#20
	A = 16'hd99a;
	B = 16'h5bc4;
	ans = 16'hf970;
	#20
	A = 16'h5aa6;
	B = 16'hd3b1;
	ans = 16'hf264;
	#20
	A = 16'hdaf0;
	B = 16'h589d;
	ans = 16'hf800;
	#20
	A = 16'hd902;
	B = 16'h5913;
	ans = 16'hf65a;
	#20
	A = 16'h58fa;
	B = 16'h4c2c;
	ans = 16'h6931;
	#20
	A = 16'h4ac8;
	B = 16'hd6f5;
	ans = 16'he5e6;
	#20
	A = 16'hd69d;
	B = 16'hcb12;
	ans = 16'h65d8;
	#20
	A = 16'h5b4a;
	B = 16'hda5d;
	ans = 16'hf9cc;
	#20
	A = 16'h5629;
	B = 16'h5af9;
	ans = 16'h755e;
	#20
	A = 16'hdad2;
	B = 16'h5896;
	ans = 16'hf7d2;
	#20
	A = 16'hda03;
	B = 16'h59b6;
	ans = 16'hf84b;
	#20
	A = 16'hdb63;
	B = 16'h573c;
	ans = 16'hf6ae;
	#20
	A = 16'hca68;
	B = 16'h4a5e;
	ans = 16'hd919;
	#20
	A = 16'h47d4;
	B = 16'hd93e;
	ans = 16'he521;
	#20
	A = 16'h4cc6;
	B = 16'hdac8;
	ans = 16'hec0c;
	#20
	A = 16'h52a8;
	B = 16'hccb7;
	ans = 16'he3d9;
	#20
	A = 16'hcb8a;
	B = 16'hdb42;
	ans = 16'h6ad7;
	#20
	A = 16'h5b24;
	B = 16'hcc07;
	ans = 16'heb30;
	#20
	A = 16'h59e7;
	B = 16'h5919;
	ans = 16'h7786;
	#20
	A = 16'hd606;
	B = 16'h52c6;
	ans = 16'hed1a;
	#20
	A = 16'h56e4;
	B = 16'h5b49;
	ans = 16'h7646;
	#20
	A = 16'h5230;
	B = 16'hd40f;
	ans = 16'hea47;
	#20
	A = 16'hdb4d;
	B = 16'hd598;
	ans = 16'h751b;
	#20
	A = 16'hd54a;
	B = 16'hdb42;
	ans = 16'h74cc;
	#20
	A = 16'h5134;
	B = 16'hd5d2;
	ans = 16'heb92;
	#20
	A = 16'hdbe9;
	B = 16'h5b67;
	ans = 16'hfb52;
	#20
	A = 16'hd64c;
	B = 16'h583b;
	ans = 16'hf2a9;
	#20
	A = 16'h5810;
	B = 16'h5a10;
	ans = 16'h7628;
	#20
	A = 16'hd9d4;
	B = 16'hd8d9;
	ans = 16'h7710;
	#20
	A = 16'h5493;
	B = 16'h51c8;
	ans = 16'h6a9c;
	#20
	A = 16'h58b5;
	B = 16'h53f7;
	ans = 16'h70b0;
	#20
	A = 16'hdbf0;
	B = 16'h5aae;
	ans = 16'hfaa1;
	#20
	A = 16'hd934;
	B = 16'hd375;
	ans = 16'h70da;
	#20
	A = 16'hd813;
	B = 16'hce5d;
	ans = 16'h6a7b;
	#20
	A = 16'hd1a5;
	B = 16'h5368;
	ans = 16'he93a;
	#20
	A = 16'h5a56;
	B = 16'h581c;
	ans = 16'h7682;
	#20
	A = 16'hd86b;
	B = 16'h5875;
	ans = 16'hf4ec;
	#20
	A = 16'hd953;
	B = 16'hd51d;
	ans = 16'h72ce;
	#20
	A = 16'hd248;
	B = 16'h4bc2;
	ans = 16'he217;
	#20
	A = 16'h499b;
	B = 16'hd93f;
	ans = 16'he75a;
	#20
	A = 16'hd6d0;
	B = 16'hc805;
	ans = 16'h62d9;
	#20
	A = 16'h51e3;
	B = 16'hd676;
	ans = 16'hecc1;
	#20
	A = 16'h477b;
	B = 16'hcbab;
	ans = 16'hd72c;
	#20
	A = 16'h4cba;
	B = 16'h5b51;
	ans = 16'h6c53;
	#20
	A = 16'hd9e7;
	B = 16'hd6c8;
	ans = 16'h7501;
	#20
	A = 16'h59ac;
	B = 16'h56d8;
	ans = 16'h74da;
	#20
	A = 16'hd508;
	B = 16'hd365;
	ans = 16'h6ca7;
	#20
	A = 16'h4ed9;
	B = 16'hdb3d;
	ans = 16'hee32;
	#20
	A = 16'hd404;
	B = 16'h54f2;
	ans = 16'hecf7;
	#20
	A = 16'h5bc0;
	B = 16'hd5c3;
	ans = 16'hf595;
	#20
	A = 16'h5841;
	B = 16'h59ed;
	ans = 16'h764d;
	#20
	A = 16'hca91;
	B = 16'h50ef;
	ans = 16'he00d;
	#20
	A = 16'hd2ba;
	B = 16'h5ba9;
	ans = 16'hf271;
	#20
	A = 16'hd03d;
	B = 16'hdbd6;
	ans = 16'h7027;
	#20
	A = 16'h5b8b;
	B = 16'hd90e;
	ans = 16'hf8c4;
	#20
	A = 16'h5b02;
	B = 16'hd107;
	ans = 16'hf067;
	#20
	A = 16'hd5f0;
	B = 16'hd9f2;
	ans = 16'h746a;
	#20
	A = 16'h50ea;
	B = 16'h59c5;
	ans = 16'h6f17;
	#20
	A = 16'hd6e6;
	B = 16'hd832;
	ans = 16'h733c;
	#20
	A = 16'hd4af;
	B = 16'hdab1;
	ans = 16'h73d6;
	#20
	A = 16'h595d;
	B = 16'hd682;
	ans = 16'hf45d;
	#20
	A = 16'hd8cc;
	B = 16'hdb4b;
	ans = 16'h785f;
	#20
	A = 16'h5a55;
	B = 16'hdb98;
	ans = 16'hfa03;
	#20
	A = 16'h4b4f;
	B = 16'hd26e;
	ans = 16'he1e0;
	#20
	A = 16'hca47;
	B = 16'h5383;
	ans = 16'he1e5;
	#20
	A = 16'h50da;
	B = 16'h54cb;
	ans = 16'h69d0;
	#20
	A = 16'h5114;
	B = 16'hd94c;
	ans = 16'heeb9;
	#20
	A = 16'hdb97;
	B = 16'h5bb7;
	ans = 16'hfb52;
	#20
	A = 16'hdb77;
	B = 16'h4b7b;
	ans = 16'heafb;
	#20
	A = 16'hda65;
	B = 16'h5762;
	ans = 16'hf5e7;
	#20
	A = 16'h50b2;
	B = 16'h5413;
	ans = 16'h68c8;
	#20
	A = 16'h5822;
	B = 16'h5b7c;
	ans = 16'h77bc;
	#20
	A = 16'h5b32;
	B = 16'h588b;
	ans = 16'h7816;
	#20
	A = 16'h5a2a;
	B = 16'h56ae;
	ans = 16'h7526;
	#20
	A = 16'hd488;
	B = 16'hda67;
	ans = 16'h7341;
	#20
	A = 16'h5924;
	B = 16'hd96f;
	ans = 16'hf6fc;
	#20
	A = 16'h59c9;
	B = 16'hc61f;
	ans = 16'he46d;
	#20
	A = 16'h521b;
	B = 16'h51ac;
	ans = 16'h6854;
	#20
	A = 16'h5736;
	B = 16'hd533;
	ans = 16'hf0b0;
	#20
	A = 16'hd814;
	B = 16'hc8cd;
	ans = 16'h64e5;
	#20
	A = 16'h5a41;
	B = 16'h5b0b;
	ans = 16'h7981;
	#20
	A = 16'hcfcc;
	B = 16'hdbae;
	ans = 16'h6f7c;
	#20
	A = 16'hd8f8;
	B = 16'h594b;
	ans = 16'hf693;
	#20
	A = 16'h5a54;
	B = 16'hdad8;
	ans = 16'hf96a;
	#20
	A = 16'hd125;
	B = 16'h575a;
	ans = 16'hecba;
	#20
	A = 16'hd358;
	B = 16'h4fa4;
	ans = 16'he704;
	#20
	A = 16'hd540;
	B = 16'h579e;
	ans = 16'hf100;
	#20
	A = 16'hd650;
	B = 16'h5951;
	ans = 16'hf432;
	#20
	A = 16'h5933;
	B = 16'hdaf0;
	ans = 16'hf882;
	#20
	A = 16'hd7d2;
	B = 16'hdbf5;
	ans = 16'h77c7;
	#20
	A = 16'h5ad7;
	B = 16'hcf38;
	ans = 16'hee2c;
	#20
	A = 16'h5b59;
	B = 16'hdb25;
	ans = 16'hfa90;
	#20
	A = 16'h4f90;
	B = 16'h5ade;
	ans = 16'h6e7e;
	#20
	A = 16'hd177;
	B = 16'h585c;
	ans = 16'hedf5;
	#20
	A = 16'hcfd8;
	B = 16'hda36;
	ans = 16'h6e17;
	#20
	A = 16'h4f88;
	B = 16'h58e6;
	ans = 16'h6c9d;
	#20
	A = 16'hd92f;
	B = 16'hd772;
	ans = 16'h74d3;
	#20
	A = 16'hda31;
	B = 16'hd16a;
	ans = 16'h7031;
	#20
	A = 16'hd46f;
	B = 16'hc1b5;
	ans = 16'h5a53;
	#20
	A = 16'hcf46;
	B = 16'h5413;
	ans = 16'he769;
	#20
	A = 16'h5a37;
	B = 16'h5b57;
	ans = 16'h79b4;
	#20
	A = 16'h5b3c;
	B = 16'hd783;
	ans = 16'hf6cb;
	#20
	A = 16'hd11d;
	B = 16'hd9bb;
	ans = 16'h6f53;
	#20
	A = 16'h4d9c;
	B = 16'h4d04;
	ans = 16'h5f09;
	#20
	A = 16'h5479;
	B = 16'h5833;
	ans = 16'h70b2;
	#20
	A = 16'h523a;
	B = 16'h5599;
	ans = 16'h6c5b;
	#20
	A = 16'h5934;
	B = 16'hdb99;
	ans = 16'hf8f1;
	#20
	A = 16'hd7ba;
	B = 16'hd4eb;
	ans = 16'h70c0;
	#20
	A = 16'hd5b0;
	B = 16'h5ba4;
	ans = 16'hf56f;
	#20
	A = 16'hdaa3;
	B = 16'h5a20;
	ans = 16'hf915;
	#20
	A = 16'h590c;
	B = 16'hd0b4;
	ans = 16'hedef;
	#20
	A = 16'hccc4;
	B = 16'hd901;
	ans = 16'h69f6;
	#20
	A = 16'hd706;
	B = 16'hd80c;
	ans = 16'h731b;
	#20
	A = 16'h59da;
	B = 16'h50d5;
	ans = 16'h6f12;
	#20
	A = 16'hd606;
	B = 16'h5860;
	ans = 16'hf297;
	#20
	A = 16'hda76;
	B = 16'hd590;
	ans = 16'h747e;
	#20
	A = 16'hdb1c;
	B = 16'hd71c;
	ans = 16'h7651;
	#20
	A = 16'hda91;
	B = 16'hd72f;
	ans = 16'h75e5;
	#20
	A = 16'h5924;
	B = 16'hd78b;
	ans = 16'hf4d9;
	#20
	A = 16'h5724;
	B = 16'hc9b9;
	ans = 16'he51c;
	#20
	A = 16'hd52b;
	B = 16'h5995;
	ans = 16'hf336;
	#20
	A = 16'h58ab;
	B = 16'h5a36;
	ans = 16'h7740;
	#20
	A = 16'hd915;
	B = 16'h5499;
	ans = 16'hf1d7;
	#20
	A = 16'h5bac;
	B = 16'h5377;
	ans = 16'h7329;
	#20
	A = 16'h5849;
	B = 16'h5a2a;
	ans = 16'h769a;
	#20
	A = 16'hd91c;
	B = 16'h4581;
	ans = 16'he308;
	#20
	A = 16'h53cb;
	B = 16'hd805;
	ans = 16'hefd5;
	#20
	A = 16'hdb67;
	B = 16'h56df;
	ans = 16'hf65c;
	#20
	A = 16'hd996;
	B = 16'h5702;
	ans = 16'hf4e5;
	#20
	A = 16'h4af3;
	B = 16'h5895;
	ans = 16'h67f6;
	#20
	A = 16'h4af6;
	B = 16'h4da4;
	ans = 16'h5ce8;
	#20
	A = 16'hdbd3;
	B = 16'h56dd;
	ans = 16'hf6b6;
	#20
	A = 16'h4454;
	B = 16'hd931;
	ans = 16'he19e;
	#20
	A = 16'h5a2f;
	B = 16'hd280;
	ans = 16'hf106;
	#20
	A = 16'h5176;
	B = 16'h5748;
	ans = 16'h6cf8;
	#20
	A = 16'hdb66;
	B = 16'h5760;
	ans = 16'hf6d2;
	#20
	A = 16'h507b;
	B = 16'h570b;
	ans = 16'h6be4;
	#20
	A = 16'h58aa;
	B = 16'h5522;
	ans = 16'h71fc;
	#20
	A = 16'hd794;
	B = 16'hd572;
	ans = 16'h7128;
	#20
	A = 16'h58a1;
	B = 16'hd726;
	ans = 16'hf423;
	#20
	A = 16'hda26;
	B = 16'hdb48;
	ans = 16'h7999;
	#20
	A = 16'hd97d;
	B = 16'h55f5;
	ans = 16'hf416;
	#20
	A = 16'h5410;
	B = 16'hd797;
	ans = 16'hefb5;
	#20
	A = 16'h591e;
	B = 16'h5852;
	ans = 16'h7587;
	#20
	A = 16'hd002;
	B = 16'h57f6;
	ans = 16'hebfa;
	#20
	A = 16'h54eb;
	B = 16'hd705;
	ans = 16'hf051;
	#20
	A = 16'hd81f;
	B = 16'hd61d;
	ans = 16'h724c;
	#20
	A = 16'hd958;
	B = 16'hc58b;
	ans = 16'h6368;
	#20
	A = 16'h5880;
	B = 16'h4f73;
	ans = 16'h6c31;
	#20
	A = 16'hdb87;
	B = 16'hdabb;
	ans = 16'h7a55;
	#20
	A = 16'hdacb;
	B = 16'hd75a;
	ans = 16'h763e;
	#20
	A = 16'hd12b;
	B = 16'hd87a;
	ans = 16'h6dc9;
	#20
	A = 16'hd0e7;
	B = 16'hd249;
	ans = 16'h67b4;
	#20
	A = 16'h5a3f;
	B = 16'hd3ce;
	ans = 16'hf218;
	#20
	A = 16'hd5cb;
	B = 16'h55c1;
	ans = 16'hf02b;
	#20
	A = 16'hced0;
	B = 16'h4df1;
	ans = 16'he10f;
	#20
	A = 16'h3fbd;
	B = 16'h5908;
	ans = 16'h5cde;
	#20
	A = 16'h4ea9;
	B = 16'hd2bf;
	ans = 16'he59e;
	#20
	A = 16'h5bad;
	B = 16'h5b4b;
	ans = 16'h7aff;
	#20
	A = 16'hd6ac;
	B = 16'hd452;
	ans = 16'h6f35;
	#20
	A = 16'h485b;
	B = 16'h5455;
	ans = 16'h60b8;
	#20
	A = 16'h56b3;
	B = 16'hd618;
	ans = 16'hf11a;
	#20
	A = 16'hdaed;
	B = 16'hc179;
	ans = 16'h60bd;
	#20
	A = 16'h50f0;
	B = 16'h5787;
	ans = 16'h6ca5;
	#20
	A = 16'hc5e2;
	B = 16'hd3de;
	ans = 16'h5dc9;
	#20
	A = 16'h546f;
	B = 16'hd7c8;
	ans = 16'hf050;
	#20
	A = 16'h535f;
	B = 16'h562e;
	ans = 16'h6db2;
	#20
	A = 16'hd674;
	B = 16'h391f;
	ans = 16'hd422;
	#20
	A = 16'h53d3;
	B = 16'h4822;
	ans = 16'h600b;
	#20
	A = 16'hd4ab;
	B = 16'h5931;
	ans = 16'hf20f;
	#20
	A = 16'h5ad1;
	B = 16'h5bdf;
	ans = 16'h7ab5;
	#20
	A = 16'h5a63;
	B = 16'hcfd3;
	ans = 16'hee3f;
	#20
	A = 16'h5a09;
	B = 16'hda1e;
	ans = 16'hf89d;
	#20
	A = 16'h416d;
	B = 16'hd7a9;
	ans = 16'hdd32;
	#20
	A = 16'hd99a;
	B = 16'hd9a0;
	ans = 16'h77e1;
	#20
	A = 16'hd8cd;
	B = 16'hd3af;
	ans = 16'h709c;
	#20
	A = 16'hda7c;
	B = 16'h51ff;
	ans = 16'hf0dc;
	#20
	A = 16'hd8b1;
	B = 16'h5496;
	ans = 16'hf161;
	#20
	A = 16'hd288;
	B = 16'hcf94;
	ans = 16'h6630;
	#20
	A = 16'h5880;
	B = 16'hc992;
	ans = 16'he644;
	#20
	A = 16'h58ef;
	B = 16'hd6d2;
	ans = 16'hf435;
	#20
	A = 16'hcbea;
	B = 16'h5b88;
	ans = 16'heb73;
	#20
	A = 16'h567c;
	B = 16'hcd18;
	ans = 16'he821;
	#20
	A = 16'hda7f;
	B = 16'hd813;
	ans = 16'h769e;
	#20
	A = 16'h5876;
	B = 16'hd4b1;
	ans = 16'hf13b;
	#20
	A = 16'hd5ba;
	B = 16'h5bc5;
	ans = 16'hf590;
	#20
	A = 16'hd43f;
	B = 16'h5993;
	ans = 16'hf1eb;
	#20
	A = 16'hd6cc;
	B = 16'h5422;
	ans = 16'hef06;
	#20
	A = 16'hc4a9;
	B = 16'h595b;
	ans = 16'he23d;
	#20
	A = 16'h510d;
	B = 16'h581b;
	ans = 16'h6d2f;
	#20
	A = 16'h5466;
	B = 16'hdba4;
	ans = 16'hf433;
	#20
	A = 16'h5316;
	B = 16'hd0d2;
	ans = 16'he845;
	#20
	A = 16'h5228;
	B = 16'hda38;
	ans = 16'hf0c9;
	#20
	A = 16'hdb03;
	B = 16'h5574;
	ans = 16'hf4c8;
	#20
	A = 16'h5aa3;
	B = 16'hd786;
	ans = 16'hf63e;
	#20
	A = 16'hda05;
	B = 16'hd6bc;
	ans = 16'h7511;
	#20
	A = 16'hcdd2;
	B = 16'hd8f8;
	ans = 16'h6b3b;
	#20
	A = 16'h5683;
	B = 16'h580a;
	ans = 16'h7293;
	#20
	A = 16'h555a;
	B = 16'h5893;
	ans = 16'h721f;
	#20
	A = 16'h4f26;
	B = 16'h5b4c;
	ans = 16'h6e85;
	#20
	A = 16'hcc3f;
	B = 16'h588f;
	ans = 16'he8d7;
	#20
	A = 16'hd2c5;
	B = 16'hdb56;
	ans = 16'h7235;
	#20
	A = 16'h4cec;
	B = 16'hdacf;
	ans = 16'hec30;
	#20
	A = 16'hd539;
	B = 16'hc0df;
	ans = 16'h5a5c;
	#20
	A = 16'h4d00;
	B = 16'h5740;
	ans = 16'h6888;
	#20
	A = 16'h3bd6;
	B = 16'h585d;
	ans = 16'h5846;
	#20
	A = 16'hda4b;
	B = 16'h5b66;
	ans = 16'hf9d2;
	#20
	A = 16'h5b0c;
	B = 16'hd402;
	ans = 16'hf310;
	#20
	A = 16'hd9f4;
	B = 16'hd94a;
	ans = 16'h77df;
	#20
	A = 16'h5586;
	B = 16'h5a17;
	ans = 16'h7434;
	#20
	A = 16'hdb4e;
	B = 16'h553b;
	ans = 16'hf4c7;
	#20
	A = 16'hd434;
	B = 16'hd111;
	ans = 16'h6953;
	#20
	A = 16'hdb20;
	B = 16'hd5e9;
	ans = 16'h7544;
	#20
	A = 16'hda18;
	B = 16'hd66d;
	ans = 16'h74e5;
	#20
	A = 16'hd810;
	B = 16'hcd55;
	ans = 16'h696a;
	#20
	A = 16'hd8a2;
	B = 16'h595c;
	ans = 16'hf635;
	#20
	A = 16'h525c;
	B = 16'hd280;
	ans = 16'he92b;
	#20
	A = 16'hda5a;
	B = 16'h5bc6;
	ans = 16'hfa2c;
	#20
	A = 16'h460c;
	B = 16'hdbe8;
	ans = 16'he5fa;
	#20
	A = 16'h4dcc;
	B = 16'hda47;
	ans = 16'hec8c;
	#20
	A = 16'h5632;
	B = 16'h513b;
	ans = 16'h6c0d;
	#20
	A = 16'hd58d;
	B = 16'hd80e;
	ans = 16'h71a0;
	#20
	A = 16'hdb53;
	B = 16'hcd43;
	ans = 16'h6cd1;
	#20
	A = 16'hd6f4;
	B = 16'hd1bb;
	ans = 16'h6cfb;
	#20
	A = 16'hd407;
	B = 16'hdb06;
	ans = 16'h7312;
	#20
	A = 16'hdb10;
	B = 16'h5305;
	ans = 16'hf232;
	#20
	A = 16'h4624;
	B = 16'h528a;
	ans = 16'h5d05;
	#20
	A = 16'hce4e;
	B = 16'h58b1;
	ans = 16'heb65;
	#20
	A = 16'hdb40;
	B = 16'hdb57;
	ans = 16'h7aa7;
	#20
	A = 16'hcc1a;
	B = 16'h59b5;
	ans = 16'he9da;
	#20
	A = 16'hd3a5;
	B = 16'hd259;
	ans = 16'h6a11;
	#20
	A = 16'h5ada;
	B = 16'hd8cf;
	ans = 16'hf81e;
	#20
	A = 16'h5a42;
	B = 16'hc41c;
	ans = 16'he26e;
	#20
	A = 16'hce21;
	B = 16'hda6e;
	ans = 16'h6ced;
	#20
	A = 16'hd7ef;
	B = 16'h54fd;
	ans = 16'hf0f2;
	#20
	A = 16'hda6d;
	B = 16'hd312;
	ans = 16'h71ae;
	#20
	A = 16'hda0b;
	B = 16'h510d;
	ans = 16'hefa1;
	#20
	A = 16'hd5e6;
	B = 16'hcfe2;
	ans = 16'h69d0;
	#20
	A = 16'hd724;
	B = 16'hd8a8;
	ans = 16'h7428;
	#20
	A = 16'h513c;
	B = 16'hd995;
	ans = 16'hef4e;
	#20
	A = 16'h59ee;
	B = 16'hd566;
	ans = 16'hf400;
	#20
	A = 16'hd76d;
	B = 16'hd24a;
	ans = 16'h6dd6;
	#20
	A = 16'hd967;
	B = 16'hd481;
	ans = 16'h7215;
	#20
	A = 16'hd31f;
	B = 16'h5b6e;
	ans = 16'hf29d;
	#20
	A = 16'hd522;
	B = 16'hd9b6;
	ans = 16'h7354;
	#20
	A = 16'hd6b2;
	B = 16'h4cea;
	ans = 16'he81d;
	#20
	A = 16'hd4a5;
	B = 16'h58fb;
	ans = 16'hf1c8;
	#20
	A = 16'hd32f;
	B = 16'hda4c;
	ans = 16'h71a7;
	#20
	A = 16'h5552;
	B = 16'h595c;
	ans = 16'h7321;
	#20
	A = 16'h5969;
	B = 16'hd7ff;
	ans = 16'hf568;
	#20
	A = 16'h514b;
	B = 16'h5008;
	ans = 16'h6556;
	#20
	A = 16'h598f;
	B = 16'hd91a;
	ans = 16'hf717;
	#20
	A = 16'h55e1;
	B = 16'h5097;
	ans = 16'h6abf;
	#20
	A = 16'hd8db;
	B = 16'hd951;
	ans = 16'h7674;
	#20
	A = 16'h5590;
	B = 16'h5b6d;
	ans = 16'h752a;
	#20
	A = 16'h5b47;
	B = 16'h5092;
	ans = 16'h7028;
	#20
	A = 16'hd45f;
	B = 16'hd9fc;
	ans = 16'h728a;
	#20
	A = 16'h5214;
	B = 16'h53e4;
	ans = 16'h69ff;
	#20
	A = 16'hc925;
	B = 16'hd5cf;
	ans = 16'h6378;
	#20
	A = 16'h59f3;
	B = 16'hdae4;
	ans = 16'hf920;
	#20
	A = 16'h525c;
	B = 16'h5b9b;
	ans = 16'h720c;
	#20
	A = 16'hd889;
	B = 16'hd742;
	ans = 16'h741d;
	#20
	A = 16'h5a90;
	B = 16'hdb4d;
	ans = 16'hf9fd;
	#20
	A = 16'h47a2;
	B = 16'hd0dc;
	ans = 16'hdca3;
	#20
	A = 16'h5889;
	B = 16'hcc59;
	ans = 16'he8ee;
	#20
	A = 16'hc3cf;
	B = 16'hdae2;
	ans = 16'h62b8;
	#20
	A = 16'h599c;
	B = 16'hd346;
	ans = 16'hf11a;
	#20
	A = 16'hdabf;
	B = 16'hd559;
	ans = 16'h7482;
	#20
	A = 16'h56e3;
	B = 16'hda32;
	ans = 16'hf555;
	#20
	A = 16'h596f;
	B = 16'hdbcc;
	ans = 16'hf94c;
	#20
	A = 16'h55c3;
	B = 16'h5408;
	ans = 16'h6dcf;
	#20
	A = 16'hd9a8;
	B = 16'h5b93;
	ans = 16'hf95b;
	#20
	A = 16'hcdd8;
	B = 16'hc607;
	ans = 16'h5867;
	#20
	A = 16'h532c;
	B = 16'hda7c;
	ans = 16'hf1d0;
	#20
	A = 16'h5716;
	B = 16'hd90a;
	ans = 16'hf477;
	#20
	A = 16'h5562;
	B = 16'hd9b4;
	ans = 16'hf3ad;
	#20
	A = 16'h55ff;
	B = 16'hd479;
	ans = 16'heeb4;
	#20
	A = 16'h567f;
	B = 16'h58f4;
	ans = 16'h7406;
	#20
	A = 16'hcf0c;
	B = 16'hda33;
	ans = 16'h6d76;
	#20
	A = 16'h5834;
	B = 16'h594e;
	ans = 16'h7593;
	#20
	A = 16'hd038;
	B = 16'h588f;
	ans = 16'heccf;
	#20
	A = 16'hda2e;
	B = 16'h50c7;
	ans = 16'hef61;
	#20
	A = 16'h475e;
	B = 16'h5a44;
	ans = 16'h65c5;
	#20
	A = 16'hc8ce;
	B = 16'h558e;
	ans = 16'he2ac;
	#20
	A = 16'h5a66;
	B = 16'h4ff1;
	ans = 16'h6e5a;
	#20
	A = 16'hd446;
	B = 16'h54f6;
	ans = 16'hed4d;
	#20
	A = 16'h5131;
	B = 16'hd896;
	ans = 16'hedf4;
	#20
	A = 16'hdae9;
	B = 16'h5830;
	ans = 16'hf73c;
	#20
	A = 16'h5275;
	B = 16'h5a84;
	ans = 16'h7142;
	#20
	A = 16'h5a55;
	B = 16'h4e76;
	ans = 16'h6d1d;
	#20
	A = 16'hdbc3;
	B = 16'h5a29;
	ans = 16'hf9fa;
	#20
	A = 16'h4a50;
	B = 16'hda29;
	ans = 16'he8dc;
	#20
	A = 16'h4cf3;
	B = 16'hd5af;
	ans = 16'he708;
	#20
	A = 16'hd8a0;
	B = 16'h44bc;
	ans = 16'he179;
	#20
	A = 16'h59ee;
	B = 16'hd4ff;
	ans = 16'hf368;
	#20
	A = 16'hd450;
	B = 16'hd953;
	ans = 16'h71bd;
	#20
	A = 16'hdba0;
	B = 16'h54c4;
	ans = 16'hf48b;
	#20
	A = 16'hd92e;
	B = 16'h5438;
	ans = 16'hf177;
	#20
	A = 16'hd0d3;
	B = 16'h5877;
	ans = 16'hed63;
	#20
	A = 16'h5a0c;
	B = 16'hd250;
	ans = 16'hf0c5;
	#20
	A = 16'h5ba2;
	B = 16'hdad5;
	ans = 16'hfa85;
	#20
	A = 16'hdb08;
	B = 16'h5693;
	ans = 16'hf5c7;
	#20
	A = 16'hd6a7;
	B = 16'hd81f;
	ans = 16'h72db;
	#20
	A = 16'hcb4d;
	B = 16'hd71e;
	ans = 16'h667f;
	#20
	A = 16'h5468;
	B = 16'h573d;
	ans = 16'h6ff9;
	#20
	A = 16'hd8a2;
	B = 16'hdac4;
	ans = 16'h77d6;
	#20
	A = 16'h57fd;
	B = 16'hcdd6;
	ans = 16'he9d4;
	#20
	A = 16'hd3c4;
	B = 16'h58ef;
	ans = 16'hf0ca;
	#20
	A = 16'h5a4f;
	B = 16'hd287;
	ans = 16'hf126;
	#20
	A = 16'hda0e;
	B = 16'h5bf0;
	ans = 16'hfa02;
	#20
	A = 16'h4abd;
	B = 16'h5bb0;
	ans = 16'h6a7a;
	#20
	A = 16'h5578;
	B = 16'hda75;
	ans = 16'hf46a;
	#20
	A = 16'hd081;
	B = 16'hd021;
	ans = 16'h64a6;
	#20
	A = 16'hdaeb;
	B = 16'h599f;
	ans = 16'hf8dc;
	#20
	A = 16'hcee2;
	B = 16'hd45b;
	ans = 16'h677f;
	#20
	A = 16'hd3b6;
	B = 16'h56d0;
	ans = 16'hee91;
	#20
	A = 16'h5585;
	B = 16'h51ee;
	ans = 16'h6c17;
	#20
	A = 16'hd5f4;
	B = 16'h5629;
	ans = 16'hf096;
	#20
	A = 16'hd97b;
	B = 16'hd947;
	ans = 16'h773b;
	#20
	A = 16'hd9d6;
	B = 16'h5474;
	ans = 16'hf27f;
	#20
	A = 16'hdb37;
	B = 16'hd5e3;
	ans = 16'h754f;
	#20
	A = 16'hcc46;
	B = 16'h5152;
	ans = 16'he1af;
	#20
	A = 16'hda6d;
	B = 16'hd4d9;
	ans = 16'h73ca;
	#20
	A = 16'hd4e1;
	B = 16'h592e;
	ans = 16'hf251;
	#20
	A = 16'h5a63;
	B = 16'h5971;
	ans = 16'h7858;
	#20
	A = 16'hd465;
	B = 16'hd2a7;
	ans = 16'h6b4f;
	#20
	A = 16'h5535;
	B = 16'h555e;
	ans = 16'h6efd;
	#20
	A = 16'h5155;
	B = 16'h547a;
	ans = 16'h69f8;
	#20
	A = 16'hda03;
	B = 16'hda62;
	ans = 16'h78cc;
	#20
	A = 16'hcfe8;
	B = 16'h55c3;
	ans = 16'he9b2;
	#20
	A = 16'hd5d9;
	B = 16'h5709;
	ans = 16'hf124;
	#20
	A = 16'hd61b;
	B = 16'hd983;
	ans = 16'h7435;
	#20
	A = 16'h5797;
	B = 16'hd978;
	ans = 16'hf530;
	#20
	A = 16'h5a99;
	B = 16'h4822;
	ans = 16'h66d1;
	#20
	A = 16'h4f6c;
	B = 16'hce47;
	ans = 16'he1d3;
	#20
	A = 16'hd7d0;
	B = 16'hc96c;
	ans = 16'h654b;
	#20
	A = 16'h5834;
	B = 16'h5772;
	ans = 16'h73d3;
	#20
	A = 16'hda94;
	B = 16'hcfbb;
	ans = 16'h6e5b;
	#20
	A = 16'h5767;
	B = 16'hd769;
	ans = 16'hf2db;
	#20
	A = 16'h548d;
	B = 16'hd425;
	ans = 16'hecb7;
	#20
	A = 16'hd8a5;
	B = 16'hd786;
	ans = 16'h745e;
	#20
	A = 16'hdafe;
	B = 16'h5b45;
	ans = 16'hfa5b;
	#20
	A = 16'h5af0;
	B = 16'h5667;
	ans = 16'h758d;
	#20
	A = 16'h5a14;
	B = 16'hd4ea;
	ans = 16'hf378;
	#20
	A = 16'h5843;
	B = 16'hda7a;
	ans = 16'hf6e6;
	#20
	A = 16'h5ad7;
	B = 16'hda4b;
	ans = 16'hf961;
	#20
	A = 16'hd84d;
	B = 16'h5a76;
	ans = 16'hf6f2;
	#20
	A = 16'hd97c;
	B = 16'h58fe;
	ans = 16'hf6d8;
	#20
	A = 16'hd59b;
	B = 16'h52a8;
	ans = 16'hecaa;
	#20
	A = 16'h5b7e;
	B = 16'hd62c;
	ans = 16'hf5c8;
	#20
	A = 16'hca7a;
	B = 16'hdac9;
	ans = 16'h697e;
	#20
	A = 16'h562a;
	B = 16'hca5d;
	ans = 16'he4e7;
	#20
	A = 16'h5b72;
	B = 16'hcc96;
	ans = 16'hec45;
	#20
	A = 16'hd9ac;
	B = 16'hc9c9;
	ans = 16'h681a;
	#20
	A = 16'hd678;
	B = 16'h5873;
	ans = 16'hf332;
	#20
	A = 16'h5b5f;
	B = 16'hd94b;
	ans = 16'hf8e0;
	#20
	A = 16'h5bd8;
	B = 16'hd800;
	ans = 16'hf7d8;
	#20
	A = 16'hd71f;
	B = 16'hdafb;
	ans = 16'h7637;
	#20
	A = 16'hd0d3;
	B = 16'hd8a3;
	ans = 16'h6d98;
	#20
	A = 16'hd485;
	B = 16'hc40f;
	ans = 16'h5c96;
	#20
	A = 16'h51d0;
	B = 16'hd843;
	ans = 16'hee31;
	#20
	A = 16'h5bd2;
	B = 16'h5a97;
	ans = 16'h7a71;
	#20
	A = 16'h5913;
	B = 16'h59a0;
	ans = 16'h7723;
	#20
	A = 16'hcfab;
	B = 16'h5b62;
	ans = 16'hef14;
	#20
	A = 16'h5a29;
	B = 16'h543a;
	ans = 16'h7282;
	#20
	A = 16'hda72;
	B = 16'h5bb7;
	ans = 16'hfa37;
	#20
	A = 16'hce7c;
	B = 16'hd0d3;
	ans = 16'h63d2;
	#20
	A = 16'h5b9b;
	B = 16'hd9de;
	ans = 16'hf994;
	#20
	A = 16'hd407;
	B = 16'hdbe0;
	ans = 16'h73ee;
	#20
	A = 16'h5b8d;
	B = 16'h5a2f;
	ans = 16'h79d6;
	#20
	A = 16'h5aaf;
	B = 16'h546a;
	ans = 16'h7360;
	#20
	A = 16'h5b5c;
	B = 16'hd247;
	ans = 16'hf1c6;
	#20
	A = 16'h5587;
	B = 16'h502d;
	ans = 16'h69c5;
	#20
	A = 16'hd635;
	B = 16'hda46;
	ans = 16'h74de;
	#20
	A = 16'h5928;
	B = 16'hd5cd;
	ans = 16'hf37a;
	#20
	A = 16'hd8a5;
	B = 16'hd95b;
	ans = 16'h7638;
	#20
	A = 16'h50ca;
	B = 16'hd772;
	ans = 16'hec75;
	#20
	A = 16'hced9;
	B = 16'h56e2;
	ans = 16'he9e4;
	#20
	A = 16'hd7d2;
	B = 16'h5910;
	ans = 16'hf4f3;
	#20
	A = 16'h5724;
	B = 16'hdb12;
	ans = 16'hf650;
	#20
	A = 16'hd905;
	B = 16'hd0b1;
	ans = 16'h6de3;
	#20
	A = 16'h55af;
	B = 16'h596e;
	ans = 16'h73b7;
	#20
	A = 16'hd13c;
	B = 16'h58cb;
	ans = 16'hee46;
	#20
	A = 16'h54d9;
	B = 16'h5a23;
	ans = 16'h7370;
	#20
	A = 16'h4fe5;
	B = 16'hda72;
	ans = 16'hee5c;
	#20
	A = 16'hd75c;
	B = 16'hd5ad;
	ans = 16'h7139;
	#20
	A = 16'h5a93;
	B = 16'h5941;
	ans = 16'h7851;
	#20
	A = 16'hd5b4;
	B = 16'h57e2;
	ans = 16'hf19f;
	#20
	A = 16'h57f3;
	B = 16'h4a9f;
	ans = 16'h6694;
	#20
	A = 16'h5512;
	B = 16'h5578;
	ans = 16'h6eef;
	#20
	A = 16'hd720;
	B = 16'hd8ea;
	ans = 16'h7460;
	#20
	A = 16'hdbc0;
	B = 16'hda9e;
	ans = 16'h7a69;
	#20
	A = 16'h54ac;
	B = 16'hd0e5;
	ans = 16'he9b7;
	#20
	A = 16'h5b61;
	B = 16'hd8bb;
	ans = 16'hf85d;
	#20
	A = 16'hd7b4;
	B = 16'h593c;
	ans = 16'hf50a;
	#20
	A = 16'h5b24;
	B = 16'hd104;
	ans = 16'hf07a;
	#20
	A = 16'h545b;
	B = 16'hdbaa;
	ans = 16'hf42c;
	#20
	A = 16'hd559;
	B = 16'hd9ee;
	ans = 16'h73ed;
	#20
	A = 16'hd8ef;
	B = 16'hd8b5;
	ans = 16'h75ce;
	#20
	A = 16'h4b6c;
	B = 16'h54a7;
	ans = 16'h6451;
	#20
	A = 16'hdbd4;
	B = 16'hda51;
	ans = 16'h7a2e;
	#20
	A = 16'h4cd9;
	B = 16'hdab9;
	ans = 16'hec13;
	#20
	A = 16'hdbc6;
	B = 16'h587b;
	ans = 16'hf85b;
	#20
	A = 16'hd965;
	B = 16'h59b7;
	ans = 16'hf7b5;
	#20
	A = 16'hcd54;
	B = 16'hd17c;
	ans = 16'h634e;
	#20
	A = 16'h57f5;
	B = 16'hcc5c;
	ans = 16'he856;
	#20
	A = 16'h59ed;
	B = 16'h4e2f;
	ans = 16'h6c95;
	#20
	A = 16'hd65b;
	B = 16'hdae4;
	ans = 16'h7579;
	#20
	A = 16'hd44f;
	B = 16'h5a00;
	ans = 16'hf276;
	#20
	A = 16'hdb3b;
	B = 16'hd8f1;
	ans = 16'h7877;
	#20
	A = 16'hda18;
	B = 16'hdbbf;
	ans = 16'h79e6;
	#20
	A = 16'h5b3c;
	B = 16'hd72c;
	ans = 16'hf67c;
	#20
	A = 16'hdbe4;
	B = 16'hc8fa;
	ans = 16'h68e9;
	#20
	A = 16'hd8a9;
	B = 16'h54ba;
	ans = 16'hf182;
	#20
	A = 16'hd465;
	B = 16'hc238;
	ans = 16'h5ad5;
	#20
	A = 16'hd730;
	B = 16'h4ae9;
	ans = 16'he635;
	#20
	A = 16'hdaaa;
	B = 16'hdbc8;
	ans = 16'h7a7b;
	#20
	A = 16'hd81e;
	B = 16'h5777;
	ans = 16'hf3af;
	#20
	A = 16'h51c9;
	B = 16'h562e;
	ans = 16'h6c78;
	#20
	A = 16'h5295;
	B = 16'hdbef;
	ans = 16'hf287;
	#20
	A = 16'hd9ef;
	B = 16'hd53d;
	ans = 16'h73c5;
	#20
	A = 16'hbeed;
	B = 16'h546f;
	ans = 16'hd7ad;
	#20
	A = 16'hd8eb;
	B = 16'h5b4f;
	ans = 16'hf87e;
	#20
	A = 16'h53e4;
	B = 16'h5a32;
	ans = 16'h721c;
	#20
	A = 16'h5846;
	B = 16'hdade;
	ans = 16'hf756;
	#20
	A = 16'hd91e;
	B = 16'h52ab;
	ans = 16'hf044;
	#20
	A = 16'h5af8;
	B = 16'hcaa9;
	ans = 16'he9cd;
	#20
	A = 16'hc90b;
	B = 16'hdaad;
	ans = 16'h6835;
	#20
	A = 16'hda41;
	B = 16'h5bc7;
	ans = 16'hfa14;
	#20
	A = 16'hda71;
	B = 16'h5a97;
	ans = 16'hf94e;
	#20
	A = 16'h55b2;
	B = 16'hd773;
	ans = 16'hf14e;
	#20
	A = 16'h5a68;
	B = 16'h51c2;
	ans = 16'h709c;
	#20
	A = 16'h5be9;
	B = 16'hd99f;
	ans = 16'hf98f;
	#20
	A = 16'hd4cb;
	B = 16'hd8d4;
	ans = 16'h71c9;
	#20
	A = 16'hd6d3;
	B = 16'hd5ab;
	ans = 16'h70d6;
	#20
	A = 16'hcecb;
	B = 16'hd39c;
	ans = 16'h6676;
	#20
	A = 16'hd527;
	B = 16'h5a0d;
	ans = 16'hf3cb;
	#20
	A = 16'hd858;
	B = 16'h5917;
	ans = 16'hf587;
	#20
	A = 16'hd8ea;
	B = 16'h4ada;
	ans = 16'he835;
	#20
	A = 16'hca93;
	B = 16'hd038;
	ans = 16'h5eef;
	#20
	A = 16'h541c;
	B = 16'h54bc;
	ans = 16'h6cdd;
	#20
	A = 16'h533c;
	B = 16'h5969;
	ans = 16'h70e4;
	#20
	A = 16'hd8bd;
	B = 16'hd7f9;
	ans = 16'h74b9;
	#20
	A = 16'h44c8;
	B = 16'h59cd;
	ans = 16'h62ef;
	#20
	A = 16'h541c;
	B = 16'h5aac;
	ans = 16'h72db;
	#20
	A = 16'h5499;
	B = 16'hd097;
	ans = 16'he947;
	#20
	A = 16'hd93c;
	B = 16'hdbbd;
	ans = 16'h7910;
	#20
	A = 16'hdab0;
	B = 16'h3f82;
	ans = 16'hde47;
	#20
	A = 16'hd8e8;
	B = 16'hda2d;
	ans = 16'h7793;
	#20
	A = 16'h5287;
	B = 16'h58cf;
	ans = 16'h6fd9;
	#20
	A = 16'hd9ad;
	B = 16'h5361;
	ans = 16'hf13c;
	#20
	A = 16'h46dd;
	B = 16'hc149;
	ans = 16'hcc89;
	#20
	A = 16'hd43e;
	B = 16'h58d9;
	ans = 16'hf124;
	#20
	A = 16'hd246;
	B = 16'h5a3d;
	ans = 16'hf0e4;
	#20
	A = 16'hd56e;
	B = 16'hcea2;
	ans = 16'h6880;
	#20
	A = 16'h581f;
	B = 16'hd11a;
	ans = 16'hed42;
	#20
	A = 16'h5ae5;
	B = 16'h5243;
	ans = 16'h7165;
	#20
	A = 16'h5746;
	B = 16'hd230;
	ans = 16'heda0;
	#20
	A = 16'hd964;
	B = 16'h5407;
	ans = 16'hf16d;
	#20
	A = 16'hd416;
	B = 16'hd9c6;
	ans = 16'h71e6;
	#20
	A = 16'hd805;
	B = 16'hd21e;
	ans = 16'h6e26;
	#20
	A = 16'h5a88;
	B = 16'hcb95;
	ans = 16'hea31;
	#20
	A = 16'h59fa;
	B = 16'hdb82;
	ans = 16'hf99c;
	#20
	A = 16'h5aad;
	B = 16'hda6b;
	ans = 16'hf95b;
	#20
	A = 16'hdbe3;
	B = 16'hd71c;
	ans = 16'h7702;
	#20
	A = 16'hd3a1;
	B = 16'hda82;
	ans = 16'h7235;
	#20
	A = 16'hd794;
	B = 16'hdb21;
	ans = 16'h76c1;
	#20
	A = 16'h56da;
	B = 16'hd171;
	ans = 16'heca9;
	#20
	A = 16'h579e;
	B = 16'h4f83;
	ans = 16'h6b27;
	#20
	A = 16'hd76d;
	B = 16'h5363;
	ans = 16'heedb;
	#20
	A = 16'hd948;
	B = 16'h5874;
	ans = 16'hf5e1;
	#20
	A = 16'h5084;
	B = 16'h55f0;
	ans = 16'h6ab4;
	#20
	A = 16'hd85e;
	B = 16'hd759;
	ans = 16'h7403;
	#20
	A = 16'h5853;
	B = 16'h5b62;
	ans = 16'h77fb;
	#20
	A = 16'hc53b;
	B = 16'hd01d;
	ans = 16'h5961;
	#20
	A = 16'hcede;
	B = 16'hdbd6;
	ans = 16'h6eba;
	#20
	A = 16'h5581;
	B = 16'h5a83;
	ans = 16'h747b;
	#20
	A = 16'h5072;
	B = 16'h5bb1;
	ans = 16'h7046;
	#20
	A = 16'hdb89;
	B = 16'h5057;
	ans = 16'hf016;
	#20
	A = 16'h5a15;
	B = 16'hd954;
	ans = 16'hf80d;
	#20
	A = 16'hda8e;
	B = 16'h4051;
	ans = 16'hdf13;
	#20
	A = 16'hceea;
	B = 16'h5aa3;
	ans = 16'hedbc;
	#20
	A = 16'hd80c;
	B = 16'hd572;
	ans = 16'h7182;
	#20
	A = 16'hd337;
	B = 16'h5b81;
	ans = 16'hf2c4;
	#20
	A = 16'hdbe7;
	B = 16'hcb4a;
	ans = 16'h6b33;
	#20
	A = 16'hd4e0;
	B = 16'hd7d4;
	ans = 16'h70c5;
	#20
	A = 16'h5be4;
	B = 16'hd607;
	ans = 16'hf5f2;
	#20
	A = 16'hdbaf;
	B = 16'h48d3;
	ans = 16'he8a2;
	#20
	A = 16'hd65e;
	B = 16'h57dd;
	ans = 16'hf242;
	#20
	A = 16'h53a0;
	B = 16'hda46;
	ans = 16'hf1fb;
	#20
	A = 16'h5598;
	B = 16'h4fd9;
	ans = 16'h697d;
	#20
	A = 16'h47dd;
	B = 16'hd590;
	ans = 16'he178;
	#20
	A = 16'hdb45;
	B = 16'h42e1;
	ans = 16'he240;
	#20
	A = 16'hd75d;
	B = 16'h5857;
	ans = 16'hf3fd;
	#20
	A = 16'h5710;
	B = 16'hb624;
	ans = 16'hd16c;
	#20
	A = 16'h4f25;
	B = 16'hdae7;
	ans = 16'hee2a;
	#20
	A = 16'hdba4;
	B = 16'h550e;
	ans = 16'hf4d4;
	#20
	A = 16'hd96a;
	B = 16'h4c2a;
	ans = 16'he9a3;
	#20
	A = 16'h52f6;
	B = 16'hdbe6;
	ans = 16'hf2df;
	#20
	A = 16'hd88f;
	B = 16'h5919;
	ans = 16'hf5cf;
	#20
	A = 16'h588a;
	B = 16'h5261;
	ans = 16'h6f3d;
	#20
	A = 16'h4f7d;
	B = 16'h5944;
	ans = 16'h6cee;
	#20
	A = 16'h589d;
	B = 16'hd90b;
	ans = 16'hf5d1;
	#20
	A = 16'h58e0;
	B = 16'hdb4a;
	ans = 16'hf871;
	#20
	A = 16'hd910;
	B = 16'hd95c;
	ans = 16'h76c8;
	#20
	A = 16'h4915;
	B = 16'h4f9c;
	ans = 16'h5cd5;
	#20
	A = 16'h49e1;
	B = 16'hd768;
	ans = 16'he571;
	#20
	A = 16'h487e;
	B = 16'h576d;
	ans = 16'h642b;
	#20
	A = 16'hda31;
	B = 16'hd2fc;
	ans = 16'h7168;
	#20
	A = 16'h5355;
	B = 16'h58d0;
	ans = 16'h7069;
	#20
	A = 16'hd0dc;
	B = 16'hd710;
	ans = 16'h6c4a;
	#20
	A = 16'h5063;
	B = 16'hdb73;
	ans = 16'hf016;
	#20
	A = 16'hd912;
	B = 16'h5b5b;
	ans = 16'hf8a9;
	#20
	A = 16'h5b49;
	B = 16'hd684;
	ans = 16'hf5ef;
	#20
	A = 16'h5908;
	B = 16'h54ec;
	ans = 16'h7231;
	#20
	A = 16'hd9fc;
	B = 16'hdadf;
	ans = 16'h7924;
	#20
	A = 16'hdaf5;
	B = 16'h58a1;
	ans = 16'hf807;
	#20
	A = 16'hdb05;
	B = 16'h5a3c;
	ans = 16'hf978;
	#20
	A = 16'hd9b4;
	B = 16'h56f6;
	ans = 16'hf4f6;
	#20
	A = 16'h545f;
	B = 16'hcc07;
	ans = 16'he467;
	#20
	A = 16'h5a7b;
	B = 16'hd3d1;
	ans = 16'hf255;
	#20
	A = 16'hd7d5;
	B = 16'h557f;
	ans = 16'hf161;
	#20
	A = 16'hd993;
	B = 16'hd34a;
	ans = 16'h7114;
	#20
	A = 16'hdb4c;
	B = 16'h5518;
	ans = 16'hf4a5;
	#20
	A = 16'h572a;
	B = 16'hd012;
	ans = 16'heb4a;
	#20
	A = 16'hd790;
	B = 16'hd80b;
	ans = 16'h73a5;
	#20
	A = 16'hdb6d;
	B = 16'h5796;
	ans = 16'hf70b;
	#20
	A = 16'hd0c9;
	B = 16'hd74b;
	ans = 16'h6c5d;
	#20
	A = 16'hda7c;
	B = 16'hd906;
	ans = 16'h7812;
	#20
	A = 16'h5b3e;
	B = 16'hda27;
	ans = 16'hf992;
	#20
	A = 16'hdb35;
	B = 16'hc2fa;
	ans = 16'h6249;
	#20
	A = 16'h5a0a;
	B = 16'h5bb2;
	ans = 16'h79cf;
	#20
	A = 16'hdb72;
	B = 16'h5a8c;
	ans = 16'hfa18;
	#20
	A = 16'hccfe;
	B = 16'h4a6e;
	ans = 16'hdc03;
	#20
	A = 16'h5a00;
	B = 16'h5a3b;
	ans = 16'h78ac;
	#20
	A = 16'hd4ad;
	B = 16'h5521;
	ans = 16'hedff;
	#20
	A = 16'hc056;
	B = 16'hd623;
	ans = 16'h5aa7;
	#20
	A = 16'h55b5;
	B = 16'hdbc6;
	ans = 16'hf58c;
	#20
	A = 16'hd5bb;
	B = 16'h5b8c;
	ans = 16'hf568;
	#20
	A = 16'h5964;
	B = 16'hd880;
	ans = 16'hf610;
	#20
	A = 16'h51c5;
	B = 16'h5a4e;
	ans = 16'h708c;
	#20
	A = 16'h5144;
	B = 16'hd529;
	ans = 16'heacb;
	#20
	A = 16'hd995;
	B = 16'h5887;
	ans = 16'hf651;
	#20
	A = 16'h59ab;
	B = 16'hd807;
	ans = 16'hf5b5;
	#20
	A = 16'h5940;
	B = 16'h5996;
	ans = 16'h7755;
	#20
	A = 16'h5a35;
	B = 16'h584a;
	ans = 16'h76a8;
	#20
	A = 16'hd3a6;
	B = 16'hd1ce;
	ans = 16'h698d;
	#20
	A = 16'h54f8;
	B = 16'h4d05;
	ans = 16'h663c;
	#20
	A = 16'hdb9f;
	B = 16'hd942;
	ans = 16'h7902;
	#20
	A = 16'hd469;
	B = 16'h58d6;
	ans = 16'hf155;
	#20
	A = 16'hd7b0;
	B = 16'h5400;
	ans = 16'hefb0;
	#20
	A = 16'hd686;
	B = 16'hd66d;
	ans = 16'h713d;
	#20
	A = 16'h5a5a;
	B = 16'hdbae;
	ans = 16'hfa19;
	#20
	A = 16'h5360;
	B = 16'h513b;
	ans = 16'h68d2;
	#20
	A = 16'h5b67;
	B = 16'h5ade;
	ans = 16'h7a5b;
	#20
	A = 16'h4bce;
	B = 16'hda56;
	ans = 16'hea2e;
	#20
	A = 16'h5b89;
	B = 16'hdaeb;
	ans = 16'hfa84;
	#20
	A = 16'h59c9;
	B = 16'hd804;
	ans = 16'hf5cf;
	#20
	A = 16'h58f7;
	B = 16'h559b;
	ans = 16'h72f5;
	#20
	A = 16'h588b;
	B = 16'h4df1;
	ans = 16'h6abf;
	#20
	A = 16'h5521;
	B = 16'h5bad;
	ans = 16'h74ec;
	#20
	A = 16'hd6be;
	B = 16'h55f7;
	ans = 16'hf107;
	#20
	A = 16'hd5a0;
	B = 16'hd4ad;
	ans = 16'h6e93;
	#20
	A = 16'hdbe7;
	B = 16'h5790;
	ans = 16'hf778;
	#20
	A = 16'hd614;
	B = 16'hdb15;
	ans = 16'h7561;
	#20
	A = 16'h5415;
	B = 16'h4027;
	ans = 16'h583d;
	#20
	A = 16'h5b60;
	B = 16'h5a46;
	ans = 16'h79c9;
	#20
	A = 16'h4fb0;
	B = 16'h585e;
	ans = 16'h6c32;
	#20
	A = 16'hd854;
	B = 16'hd7ac;
	ans = 16'h7427;
	#20
	A = 16'hda3f;
	B = 16'h5af3;
	ans = 16'hf96d;
	#20
	A = 16'hd75a;
	B = 16'hd138;
	ans = 16'h6ccc;
	#20
	A = 16'h56bf;
	B = 16'h583d;
	ans = 16'h7326;
	#20
	A = 16'h55dc;
	B = 16'h5b3c;
	ans = 16'h754c;
	#20
	A = 16'h5ba9;
	B = 16'hd0d2;
	ans = 16'hf09e;
	#20
	A = 16'h5184;
	B = 16'hdb26;
	ans = 16'hf0ee;
	#20
	A = 16'hdb6d;
	B = 16'h5a03;
	ans = 16'hf995;
	#20
	A = 16'h5514;
	B = 16'hd805;
	ans = 16'hf11a;
	#20
	A = 16'hd9b1;
	B = 16'h5918;
	ans = 16'hf73f;
	#20
	A = 16'hcd4d;
	B = 16'hd8a6;
	ans = 16'h6a29;
	#20
	A = 16'h5805;
	B = 16'h514c;
	ans = 16'h6d53;
	#20
	A = 16'hd8d5;
	B = 16'hd8ff;
	ans = 16'h7609;
	#20
	A = 16'h5ba8;
	B = 16'hd3a8;
	ans = 16'hf354;
	#20
	A = 16'hda47;
	B = 16'hda54;
	ans = 16'h78f7;
	#20
	A = 16'hd818;
	B = 16'hdb38;
	ans = 16'h7763;
	#20
	A = 16'hd670;
	B = 16'h5a24;
	ans = 16'hf4f1;
	#20
	A = 16'h5811;
	B = 16'h5bf4;
	ans = 16'h780b;
	#20
	A = 16'hd9d3;
	B = 16'hd624;
	ans = 16'h7478;
	#20
	A = 16'hd067;
	B = 16'h54ff;
	ans = 16'he980;
	#20
	A = 16'h5b21;
	B = 16'h5424;
	ans = 16'h7361;
	#20
	A = 16'h4d4a;
	B = 16'hd36b;
	ans = 16'he4e7;
	#20
	A = 16'hc8c5;
	B = 16'hd98b;
	ans = 16'h669c;
	#20
	A = 16'hd7d5;
	B = 16'h565b;
	ans = 16'hf239;
	#20
	A = 16'h5ae7;
	B = 16'hd5f3;
	ans = 16'hf522;
	#20
	A = 16'hd8a8;
	B = 16'h5a36;
	ans = 16'hf73b;
	#20
	A = 16'hd1f6;
	B = 16'hd441;
	ans = 16'h6a57;
	#20
	A = 16'hd6f5;
	B = 16'hda5e;
	ans = 16'h7589;
	#20
	A = 16'h59f0;
	B = 16'h59c0;
	ans = 16'h7844;
	#20
	A = 16'hdae2;
	B = 16'hd51c;
	ans = 16'h7465;
	#20
	A = 16'h595b;
	B = 16'hd388;
	ans = 16'hf10b;
	#20
	A = 16'hd8f9;
	B = 16'h59b5;
	ans = 16'hf718;
	#20
	A = 16'h4e70;
	B = 16'hd83a;
	ans = 16'heacd;
	#20
	A = 16'h4f5e;
	B = 16'hd24f;
	ans = 16'he5cf;
	#20
	A = 16'hdb61;
	B = 16'h58bc;
	ans = 16'hf85e;
	#20
	A = 16'hd55d;
	B = 16'hdbaa;
	ans = 16'h7523;
	#20
	A = 16'h5b68;
	B = 16'hd75f;
	ans = 16'hf6d3;
	#20
	A = 16'h5255;
	B = 16'hd70e;
	ans = 16'hed95;
	#20
	A = 16'h54a6;
	B = 16'h5292;
	ans = 16'h6ba3;
	#20
	A = 16'hd68f;
	B = 16'h3e4f;
	ans = 16'hd92c;
	#20
	A = 16'hd7bc;
	B = 16'hd071;
	ans = 16'h6c4b;
	#20
	A = 16'hd8a0;
	B = 16'h5b87;
	ans = 16'hf85a;
	#20
	A = 16'h5728;
	B = 16'hccf6;
	ans = 16'he870;
	#20
	A = 16'hd110;
	B = 16'h5674;
	ans = 16'hec15;
	#20
	A = 16'hdbd4;
	B = 16'h5ab2;
	ans = 16'hfa8d;
	#20
	A = 16'h5431;
	B = 16'h59e9;
	ans = 16'h7231;
	#20
	A = 16'hdacc;
	B = 16'hd543;
	ans = 16'h7478;
	#20
	A = 16'h554c;
	B = 16'hd7be;
	ans = 16'hf120;
	#20
	A = 16'hdb95;
	B = 16'hd77a;
	ans = 16'h7716;
	#20
	A = 16'hdb63;
	B = 16'h5ac6;
	ans = 16'hfa41;
	#20
	A = 16'h5788;
	B = 16'hd291;
	ans = 16'hee2f;
	#20
	A = 16'h5690;
	B = 16'h59f3;
	ans = 16'h74e1;
	#20
	A = 16'h56fd;
	B = 16'hd891;
	ans = 16'hf3fa;
	#20
	A = 16'h57e8;
	B = 16'h5bbc;
	ans = 16'h77a5;
	#20
	A = 16'hd637;
	B = 16'h560d;
	ans = 16'hf0b3;
	#20
	A = 16'hd217;
	B = 16'hd8eb;
	ans = 16'h6f7d;
	#20
	A = 16'hd364;
	B = 16'h5b52;
	ans = 16'hf2c3;
	#20
	A = 16'hd6e7;
	B = 16'h5b1d;
	ans = 16'hf623;
	#20
	A = 16'h59e0;
	B = 16'hd5d5;
	ans = 16'hf448;
	#20
	A = 16'hcf75;
	B = 16'hd6ba;
	ans = 16'h6a45;
	#20
	A = 16'hd93c;
	B = 16'hdb3e;
	ans = 16'h78bd;
	#20
	A = 16'hda1d;
	B = 16'h548e;
	ans = 16'hf2f6;
	#20
	A = 16'hd8ea;
	B = 16'hd80f;
	ans = 16'h74fc;
	#20
	A = 16'hceb0;
	B = 16'h5139;
	ans = 16'he45e;
	#20
	A = 16'h4c06;
	B = 16'hda24;
	ans = 16'hea2d;
	#20
	A = 16'h5708;
	B = 16'h468d;
	ans = 16'h61c2;
	#20
	A = 16'hdaa4;
	B = 16'h5a57;
	ans = 16'hf943;
	#20
	A = 16'hd87c;
	B = 16'hc8a1;
	ans = 16'h6530;
	#20
	A = 16'h59f6;
	B = 16'h57c9;
	ans = 16'h75cd;
	#20
	A = 16'hd7a3;
	B = 16'hd218;
	ans = 16'h6dd1;
	#20
	A = 16'h59ac;
	B = 16'hdad1;
	ans = 16'hf8d5;
	#20
	A = 16'h40af;
	B = 16'hd913;
	ans = 16'hddf1;
	#20
	A = 16'h3edf;
	B = 16'h5aa7;
	ans = 16'h5db7;
	#20
	A = 16'h585f;
	B = 16'hca3a;
	ans = 16'he6ce;
	#20
	A = 16'hd997;
	B = 16'hd94c;
	ans = 16'h7767;
	#20
	A = 16'hd812;
	B = 16'hdb15;
	ans = 16'h7735;
	#20
	A = 16'hc6f4;
	B = 16'hd644;
	ans = 16'h6172;
	#20
	A = 16'hd9ea;
	B = 16'h55db;
	ans = 16'hf454;
	#20
	A = 16'hd5dd;
	B = 16'h5a5d;
	ans = 16'hf4aa;
	#20
	A = 16'hd92c;
	B = 16'hda6b;
	ans = 16'h7826;
	#20
	A = 16'hda7f;
	B = 16'h5b2d;
	ans = 16'hf9d4;
	#20
	A = 16'hdb1f;
	B = 16'hd9b0;
	ans = 16'h7910;
	#20
	A = 16'h5a78;
	B = 16'h59e2;
	ans = 16'h78c2;
	#20
	A = 16'hdae1;
	B = 16'hd1bb;
	ans = 16'h70ed;
	#20
	A = 16'hd9a0;
	B = 16'h4c93;
	ans = 16'hea6f;
	#20
	A = 16'hd23f;
	B = 16'hd9ec;
	ans = 16'h70a0;
	#20
	A = 16'h59f3;
	B = 16'h574e;
	ans = 16'h756f;
	#20
	A = 16'h432c;
	B = 16'hdb42;
	ans = 16'he282;
	#20
	A = 16'hd40d;
	B = 16'h389e;
	ans = 16'hd0ad;
	#20
	A = 16'hdb54;
	B = 16'hd5f5;
	ans = 16'h7575;
	#20
	A = 16'h5948;
	B = 16'hdabb;
	ans = 16'hf871;
	#20
	A = 16'hcdb3;
	B = 16'hc5d9;
	ans = 16'h582a;
	#20
	A = 16'h5554;
	B = 16'hcc2d;
	ans = 16'he590;
	#20
	A = 16'h5944;
	B = 16'h5468;
	ans = 16'h71cd;
	#20
	A = 16'hdaf8;
	B = 16'hd849;
	ans = 16'h7777;
	#20
	A = 16'h582e;
	B = 16'h5739;
	ans = 16'h738c;
	#20
	A = 16'h56fa;
	B = 16'hda7e;
	ans = 16'hf5a9;
	#20
	A = 16'hd01e;
	B = 16'h47c4;
	ans = 16'hdbfe;
	#20
	A = 16'hda69;
	B = 16'h5a04;
	ans = 16'hf8d2;
	#20
	A = 16'h5aa5;
	B = 16'h5a45;
	ans = 16'h7935;
	#20
	A = 16'hd433;
	B = 16'hdaf0;
	ans = 16'h7348;
	#20
	A = 16'h559e;
	B = 16'h5b65;
	ans = 16'h7531;
	#20
	A = 16'hd7e4;
	B = 16'hd5e2;
	ans = 16'h71cd;
	#20
	A = 16'h58e7;
	B = 16'h4c5c;
	ans = 16'h6958;
	#20
	A = 16'h57c6;
	B = 16'hd7c1;
	ans = 16'hf389;
	#20
	A = 16'h58c3;
	B = 16'h5acd;
	ans = 16'h780c;
	#20
	A = 16'h5bb3;
	B = 16'hd912;
	ans = 16'hf8e1;
	#20
	A = 16'h5a44;
	B = 16'h4f02;
	ans = 16'h6d7d;
	#20
	A = 16'h5b1e;
	B = 16'hd282;
	ans = 16'hf1ca;
	#20
	A = 16'h5333;
	B = 16'hd5dc;
	ans = 16'hed46;
	#20
	A = 16'h5aa0;
	B = 16'h5bcb;
	ans = 16'h7a74;
	#20
	A = 16'hdb42;
	B = 16'h4d2d;
	ans = 16'hecb2;
	#20
	A = 16'hd13e;
	B = 16'hd6ed;
	ans = 16'h6c8a;
	#20
	A = 16'h5a11;
	B = 16'hd974;
	ans = 16'hf823;
	#20
	A = 16'hd5bd;
	B = 16'hcfa7;
	ans = 16'h697d;
	#20
	A = 16'hd483;
	B = 16'h564c;
	ans = 16'hef1a;
	#20
	A = 16'h5bbf;
	B = 16'h580e;
	ans = 16'h77da;
	#20
	A = 16'h569d;
	B = 16'hd405;
	ans = 16'heea5;
	#20
	A = 16'h5950;
	B = 16'hd9ec;
	ans = 16'hf7dd;
	#20
	A = 16'h585e;
	B = 16'hdb51;
	ans = 16'hf7fd;
	#20
	A = 16'hdadf;
	B = 16'hd33d;
	ans = 16'h7238;
	#20
	A = 16'h5b4f;
	B = 16'hdb10;
	ans = 16'hfa74;
	#20
	A = 16'h5aea;
	B = 16'h576f;
	ans = 16'h766d;
	#20
	A = 16'hda35;
	B = 16'h557d;
	ans = 16'hf442;
	#20
	A = 16'h51cb;
	B = 16'hd5c2;
	ans = 16'hec2b;
	#20
	A = 16'hd9a2;
	B = 16'h58e4;
	ans = 16'hf6e3;
	#20
	A = 16'h4ce7;
	B = 16'hd803;
	ans = 16'he8eb;
	#20
	A = 16'h558f;
	B = 16'hcdb1;
	ans = 16'he7e9;
	#20
	A = 16'h5949;
	B = 16'h5bb9;
	ans = 16'h791a;
	#20
	A = 16'h56cd;
	B = 16'h5bea;
	ans = 16'h76ba;
	#20
	A = 16'hdbdc;
	B = 16'h585f;
	ans = 16'hf84b;
	#20
	A = 16'hd61e;
	B = 16'h5615;
	ans = 16'hf0a7;
	#20
	A = 16'h5b2c;
	B = 16'h5a4d;
	ans = 16'h79a6;
	#20
	A = 16'hd87f;
	B = 16'hd5c5;
	ans = 16'h727c;
	#20
	A = 16'h4fc8;
	B = 16'h5988;
	ans = 16'h6d61;
	#20
	A = 16'h5936;
	B = 16'hd7f1;
	ans = 16'hf52c;
	#20
	A = 16'h57d8;
	B = 16'hd481;
	ans = 16'hf06a;
	#20
	A = 16'hd898;
	B = 16'hcea2;
	ans = 16'h6b9e;
	#20
	A = 16'hd6fa;
	B = 16'h5a24;
	ans = 16'hf55b;
	#20
	A = 16'h543d;
	B = 16'hdaea;
	ans = 16'hf353;
	#20
	A = 16'hdb25;
	B = 16'hd93d;
	ans = 16'h78ae;
	#20
	A = 16'h565b;
	B = 16'hdb60;
	ans = 16'hf5dc;
	#20
	A = 16'h5a0f;
	B = 16'h5ae5;
	ans = 16'h7939;
	#20
	A = 16'h5787;
	B = 16'h5854;
	ans = 16'h7413;
	#20
	A = 16'h54bf;
	B = 16'hd5ee;
	ans = 16'hef09;
	#20
	A = 16'h5aa9;
	B = 16'h595e;
	ans = 16'h7878;
	#20
	A = 16'hdbdc;
	B = 16'hdb4f;
	ans = 16'h7b2e;
	#20
	A = 16'hd68b;
	B = 16'h59b3;
	ans = 16'hf4a9;
	#20
	A = 16'hc136;
	B = 16'hdbe7;
	ans = 16'h6126;
	#20
	A = 16'hd9fc;
	B = 16'h581d;
	ans = 16'hf627;
	#20
	A = 16'h5a89;
	B = 16'h581a;
	ans = 16'h76b3;
	#20
	A = 16'hd6e5;
	B = 16'h5765;
	ans = 16'hf25f;
	#20
	A = 16'h5bb2;
	B = 16'h5a32;
	ans = 16'h79f6;
	#20
	A = 16'h4af1;
	B = 16'hd8da;
	ans = 16'he836;
	#20
	A = 16'h5b11;
	B = 16'hd194;
	ans = 16'hf0ed;
	#20
	A = 16'hc9d3;
	B = 16'h599c;
	ans = 16'he815;
	#20
	A = 16'h5954;
	B = 16'h5460;
	ans = 16'h71d4;
	#20
	A = 16'h5316;
	B = 16'h580a;
	ans = 16'h6f28;
	#20
	A = 16'hd19e;
	B = 16'h54b0;
	ans = 16'hea95;
	#20
	A = 16'h59b3;
	B = 16'hd568;
	ans = 16'hf3b4;
	#20
	A = 16'hd930;
	B = 16'hc70a;
	ans = 16'h6490;
	#20
	A = 16'hce93;
	B = 16'h4dd2;
	ans = 16'he0c8;
	#20
	A = 16'h2d88;
	B = 16'h559d;
	ans = 16'h47c3;
	#20
	A = 16'hc520;
	B = 16'h4fcf;
	ans = 16'hd901;
	#20
	A = 16'h583c;
	B = 16'hd541;
	ans = 16'hf190;
	#20
	A = 16'h5bc8;
	B = 16'hd8fe;
	ans = 16'hf8db;
	#20
	A = 16'h5aac;
	B = 16'hdbea;
	ans = 16'hfa9a;
	#20
	A = 16'h57b9;
	B = 16'h499f;
	ans = 16'h656d;
	#20
	A = 16'h53d9;
	B = 16'h4dbe;
	ans = 16'h65a2;
	#20
	A = 16'h551c;
	B = 16'h540a;
	ans = 16'h6d29;
	#20
	A = 16'hd4b7;
	B = 16'hcece;
	ans = 16'h6803;
	#20
	A = 16'hd9a6;
	B = 16'h560e;
	ans = 16'hf446;
	#20
	A = 16'h5511;
	B = 16'h5acb;
	ans = 16'h744d;
	#20
	A = 16'hcd3f;
	B = 16'h5a44;
	ans = 16'hec1c;
	#20
	A = 16'h44b7;
	B = 16'h4de4;
	ans = 16'h56f1;
	#20
	A = 16'hd52f;
	B = 16'hd5dc;
	ans = 16'h6f98;
	#20
	A = 16'hd381;
	B = 16'hd8c6;
	ans = 16'h707a;
	#20
	A = 16'h4d9a;
	B = 16'hcee8;
	ans = 16'he0d6;
	#20
	A = 16'h54cd;
	B = 16'h4cdd;
	ans = 16'h65d6;
	#20
	A = 16'h4e8c;
	B = 16'h5a45;
	ans = 16'h6d21;
	#20
	A = 16'h4ec5;
	B = 16'h57d7;
	ans = 16'h6aa2;
	#20
	A = 16'h5498;
	B = 16'h5975;
	ans = 16'h7244;
	#20
	A = 16'hd3cb;
	B = 16'h5a63;
	ans = 16'hf239;
	#20
	A = 16'h5a0e;
	B = 16'hd1f6;
	ans = 16'hf083;
	#20
	A = 16'hd225;
	B = 16'hd7c7;
	ans = 16'h6df9;
	#20
	A = 16'h5454;
	B = 16'hd923;
	ans = 16'hf18f;
	#20
	A = 16'hdbd3;
	B = 16'h5bc3;
	ans = 16'hfb97;
	#20
	A = 16'h5989;
	B = 16'h558e;
	ans = 16'h73b0;
	#20
	A = 16'h589d;
	B = 16'hd904;
	ans = 16'hf5c9;
	#20
	A = 16'h5ac6;
	B = 16'h5bb5;
	ans = 16'h7a86;
	#20
	A = 16'hda13;
	B = 16'h3835;
	ans = 16'hd663;
	#20
	A = 16'hdb9d;
	B = 16'h552b;
	ans = 16'hf4eb;
	#20
	A = 16'h55bb;
	B = 16'h55b0;
	ans = 16'h7013;
	#20
	A = 16'hd96a;
	B = 16'h5bd9;
	ans = 16'hf950;
	#20
	A = 16'hccb7;
	B = 16'hd904;
	ans = 16'h69e9;
	#20
	A = 16'hd5ac;
	B = 16'hd509;
	ans = 16'h6f24;
	#20
	A = 16'hcead;
	B = 16'h5970;
	ans = 16'hec8a;
	#20
	A = 16'hdb09;
	B = 16'h517b;
	ans = 16'hf0d2;
	#20
	A = 16'hdb2d;
	B = 16'hd638;
	ans = 16'h7594;
	#20
	A = 16'hd833;
	B = 16'hd82b;
	ans = 16'h7460;
	#20
	A = 16'h5b49;
	B = 16'hd3a4;
	ans = 16'hf2f5;
	#20
	A = 16'hda4c;
	B = 16'hce70;
	ans = 16'h6d11;
	#20
	A = 16'hd84a;
	B = 16'hdb6c;
	ans = 16'h77f5;
	#20
	A = 16'hdb9b;
	B = 16'h5aec;
	ans = 16'hfa95;
	#20
	A = 16'h406a;
	B = 16'hd567;
	ans = 16'hd9f6;
	#20
	A = 16'h594e;
	B = 16'hda50;
	ans = 16'hf830;
	#20
	A = 16'hd213;
	B = 16'hd74e;
	ans = 16'h6d8c;
	#20
	A = 16'hd64f;
	B = 16'h5690;
	ans = 16'hf12d;
	#20
	A = 16'hcda0;
	B = 16'hd4ea;
	ans = 16'h66e9;
	#20
	A = 16'h5873;
	B = 16'h550c;
	ans = 16'h719d;
	#20
	A = 16'hda07;
	B = 16'hdbda;
	ans = 16'h79ea;
	#20
	A = 16'hd83d;
	B = 16'hda68;
	ans = 16'h76ca;
	#20
	A = 16'hdb12;
	B = 16'hd4df;
	ans = 16'h744e;
	#20
	A = 16'h50b8;
	B = 16'h5480;
	ans = 16'h694f;
	#20
	A = 16'h53e1;
	B = 16'hda1e;
	ans = 16'hf206;
	#20
	A = 16'hdbdb;
	B = 16'h5a41;
	ans = 16'hfa24;
	#20
	A = 16'hd9c6;
	B = 16'hda19;
	ans = 16'h7867;
	#20
	A = 16'hce04;
	B = 16'h50ba;
	ans = 16'he31c;
	#20
	A = 16'h5b8a;
	B = 16'hd6dd;
	ans = 16'hf678;
	#20
	A = 16'h5597;
	B = 16'h5056;
	ans = 16'h6a0f;
	#20
	A = 16'hd572;
	B = 16'h560e;
	ans = 16'hf01f;
	#20
	A = 16'hda86;
	B = 16'h5a4d;
	ans = 16'hf923;
	#20
	A = 16'hd8c8;
	B = 16'h5b1d;
	ans = 16'hf840;
	#20
	A = 16'hda10;
	B = 16'hd918;
	ans = 16'h77b8;
	#20
	A = 16'hd983;
	B = 16'h5908;
	ans = 16'hf6ef;
	#20
	A = 16'h4f08;
	B = 16'hd70d;
	ans = 16'hea32;
	#20
	A = 16'hd967;
	B = 16'h565a;
	ans = 16'hf44a;
	#20
	A = 16'h561b;
	B = 16'hd826;
	ans = 16'hf255;
	#20
	A = 16'hd7f5;
	B = 16'hd698;
	ans = 16'h728f;
	#20
	A = 16'h5788;
	B = 16'h5815;
	ans = 16'h73b0;
	#20
	A = 16'h4b7f;
	B = 16'hd05b;
	ans = 16'he015;
	#20
	A = 16'h59d2;
	B = 16'h58b8;
	ans = 16'h76de;
	#20
	A = 16'h5197;
	B = 16'hce56;
	ans = 16'he46d;
	#20
	A = 16'hdb0c;
	B = 16'hd831;
	ans = 16'h7762;
	#20
	A = 16'hd675;
	B = 16'hd813;
	ans = 16'h7294;
	#20
	A = 16'hd5ec;
	B = 16'h586e;
	ans = 16'hf28f;
	#20
	A = 16'h5ac7;
	B = 16'h58f4;
	ans = 16'h7832;
	#20
	A = 16'hdb1a;
	B = 16'hcc41;
	ans = 16'h6b8d;
	#20
	A = 16'hd8cc;
	B = 16'h5ba4;
	ans = 16'hf895;
	#20
	A = 16'hd43a;
	B = 16'hd6e6;
	ans = 16'h6f4a;
	#20
	A = 16'hd72e;
	B = 16'h5115;
	ans = 16'hec90;
	#20
	A = 16'hd129;
	B = 16'h531e;
	ans = 16'he897;
	#20
	A = 16'hcf04;
	B = 16'h5b6a;
	ans = 16'hee80;
	#20
	A = 16'h5930;
	B = 16'hd730;
	ans = 16'hf4a9;
	#20
	A = 16'hd821;
	B = 16'h4462;
	ans = 16'he086;
	#20
	A = 16'h5a37;
	B = 16'hc90b;
	ans = 16'he7d6;
	#20
	A = 16'h5b2d;
	B = 16'h5409;
	ans = 16'h733d;
	#20
	A = 16'hdbf5;
	B = 16'hd931;
	ans = 16'h792a;
	#20
	A = 16'h54c3;
	B = 16'h5573;
	ans = 16'h6e7d;
	#20
	A = 16'h5814;
	B = 16'h5173;
	ans = 16'h6d8e;
	#20
	A = 16'hd03f;
	B = 16'h4cf2;
	ans = 16'he140;
	#20
	A = 16'hd818;
	B = 16'h5b83;
	ans = 16'hf7b0;
	#20
	A = 16'h53ba;
	B = 16'hd9ca;
	ans = 16'hf197;
	#20
	A = 16'h5962;
	B = 16'h562c;
	ans = 16'h7427;
	#20
	A = 16'hd9ae;
	B = 16'hd870;
	ans = 16'h764d;
	#20
	A = 16'hd285;
	B = 16'hd707;
	ans = 16'h6dba;
	#20
	A = 16'h5997;
	B = 16'hda2e;
	ans = 16'hf851;
	#20
	A = 16'hdb49;
	B = 16'hd60e;
	ans = 16'h7583;
	#20
	A = 16'hda4f;
	B = 16'hdb2b;
	ans = 16'h79a7;
	#20
	A = 16'hd27d;
	B = 16'h5b1c;
	ans = 16'hf1c4;
	#20
	A = 16'hdae1;
	B = 16'hce62;
	ans = 16'h6d7d;
	#20
	A = 16'hd48d;
	B = 16'h5081;
	ans = 16'he920;
	#20
	A = 16'h57d3;
	B = 16'h5633;
	ans = 16'h7210;
	#20
	A = 16'h5abd;
	B = 16'h5abe;
	ans = 16'h79ae;
	#20
	A = 16'hd2b6;
	B = 16'hdb33;
	ans = 16'h720a;
	#20
	A = 16'hcf07;
	B = 16'h5978;
	ans = 16'hecce;
	#20
	A = 16'h5584;
	B = 16'hd827;
	ans = 16'hf1ba;
	#20
	A = 16'hd160;
	B = 16'hdb86;
	ans = 16'h710e;
	#20
	A = 16'hd9e0;
	B = 16'h5379;
	ans = 16'hf17d;
	#20
	A = 16'hd863;
	B = 16'h507a;
	ans = 16'hece9;
	#20
	A = 16'hd4aa;
	B = 16'hc890;
	ans = 16'h6152;
	#20
	A = 16'hd251;
	B = 16'h5967;
	ans = 16'hf044;
	#20
	A = 16'h4ecb;
	B = 16'hd907;
	ans = 16'hec45;
	#20
	A = 16'h56d0;
	B = 16'h593d;
	ans = 16'h7476;
	#20
	A = 16'h59bc;
	B = 16'hd0e1;
	ans = 16'heeff;
	#20
	A = 16'hd33f;
	B = 16'h56e6;
	ans = 16'hee40;
	#20
	A = 16'hd92f;
	B = 16'h54d1;
	ans = 16'hf23e;
	#20
	A = 16'hdb43;
	B = 16'h5a0e;
	ans = 16'hf97f;
	#20
	A = 16'hd159;
	B = 16'hd784;
	ans = 16'h6d06;
	#20
	A = 16'hdb74;
	B = 16'hd804;
	ans = 16'h777b;
	#20
	A = 16'h5810;
	B = 16'h592b;
	ans = 16'h7540;
	#20
	A = 16'hd7b4;
	B = 16'hd775;
	ans = 16'h732e;
	#20
	A = 16'hd606;
	B = 16'h594c;
	ans = 16'hf3fa;
	#20
	A = 16'h5352;
	B = 16'hdb98;
	ans = 16'hf2f3;
	#20
	A = 16'hda1a;
	B = 16'hda5d;
	ans = 16'h78da;
	#20
	A = 16'h54c8;
	B = 16'hda5e;
	ans = 16'hf39c;
	#20
	A = 16'hd963;
	B = 16'hc675;
	ans = 16'h6459;
	#20
	A = 16'h52e0;
	B = 16'h5782;
	ans = 16'h6e74;
	#20
	A = 16'hca26;
	B = 16'hcea3;
	ans = 16'h5d1a;
	#20
	A = 16'hd998;
	B = 16'hd3b4;
	ans = 16'h7163;
	#20
	A = 16'hd90c;
	B = 16'hdb2c;
	ans = 16'h7886;
	#20
	A = 16'hd7bc;
	B = 16'h5ab2;
	ans = 16'hf679;
	#20
	A = 16'h5921;
	B = 16'hda28;
	ans = 16'hf7e5;
	#20
	A = 16'h5684;
	B = 16'hd860;
	ans = 16'hf320;
	#20
	A = 16'h58e5;
	B = 16'h54dc;
	ans = 16'h71f2;
	#20
	A = 16'h5b62;
	B = 16'h58c3;
	ans = 16'h7865;
	#20
	A = 16'h3ce2;
	B = 16'h4c1d;
	ans = 16'h4d05;
	#20
	A = 16'hd87b;
	B = 16'h5b04;
	ans = 16'hf7dc;
	#20
	A = 16'hda1f;
	B = 16'hc00b;
	ans = 16'h5e30;
	#20
	A = 16'hd5ca;
	B = 16'hd9d6;
	ans = 16'h7439;
	#20
	A = 16'hda59;
	B = 16'h5802;
	ans = 16'hf65c;
	#20
	A = 16'hd76d;
	B = 16'hda2e;
	ans = 16'h75bc;
	#20
	A = 16'hd88d;
	B = 16'hd88a;
	ans = 16'h752a;
	#20
	A = 16'h502f;
	B = 16'h561e;
	ans = 16'h6a66;
	#20
	A = 16'h5725;
	B = 16'hd6dd;
	ans = 16'hf221;
	#20
	A = 16'h50f7;
	B = 16'h54fa;
	ans = 16'h6a2d;
	#20
	A = 16'h5bcc;
	B = 16'hd9fc;
	ans = 16'hf9d5;
	#20
	A = 16'hda64;
	B = 16'hc5c7;
	ans = 16'h649d;
	#20
	A = 16'h571c;
	B = 16'hd98a;
	ans = 16'hf4ec;
	#20
	A = 16'hd480;
	B = 16'h5728;
	ans = 16'hf006;
	#20
	A = 16'h403b;
	B = 16'h52c4;
	ans = 16'h5728;
	#20
	A = 16'hd0eb;
	B = 16'h5aff;
	ans = 16'hf04d;
	#20
	A = 16'hdac3;
	B = 16'h51c3;
	ans = 16'hf0df;
	#20
	A = 16'h50e9;
	B = 16'hd5b3;
	ans = 16'heaff;
	#20
	A = 16'hd8c3;
	B = 16'hda0b;
	ans = 16'h7732;
	#20
	A = 16'hd5b2;
	B = 16'h5ad5;
	ans = 16'hf4dd;
	#20
	A = 16'hcf76;
	B = 16'h5817;
	ans = 16'heba1;
	#20
	A = 16'hd8d5;
	B = 16'h5601;
	ans = 16'hf341;
	#20
	A = 16'h5956;
	B = 16'hd20c;
	ans = 16'hf009;
	#20
	A = 16'hbc6a;
	B = 16'hd9d1;
	ans = 16'h5a6b;
	#20
	A = 16'hdbbc;
	B = 16'h5a0d;
	ans = 16'hf9da;
	#20
	A = 16'h5060;
	B = 16'h48c0;
	ans = 16'h5d32;
	#20
	A = 16'hc702;
	B = 16'h5976;
	ans = 16'he4c9;
	#20
	A = 16'h5a15;
	B = 16'hda6c;
	ans = 16'hf8e2;
	#20
	A = 16'hd652;
	B = 16'h52c0;
	ans = 16'hed55;
	#20
	A = 16'h5993;
	B = 16'hbed3;
	ans = 16'hdcc1;
	#20
	A = 16'hda28;
	B = 16'hd990;
	ans = 16'h7848;
	#20
	A = 16'hd17e;
	B = 16'h58a4;
	ans = 16'hee5f;
	#20
	A = 16'hda13;
	B = 16'h5a69;
	ans = 16'hf8de;
	#20
	A = 16'hd655;
	B = 16'h5873;
	ans = 16'hf30b;
	#20
	A = 16'hd8e5;
	B = 16'hccf1;
	ans = 16'h6a0c;
	#20
	A = 16'hd931;
	B = 16'hd029;
	ans = 16'h6d66;
	#20
	A = 16'h564a;
	B = 16'hdb02;
	ans = 16'hf582;
	#20
	A = 16'hd090;
	B = 16'hdb6a;
	ans = 16'h703a;
	#20
	A = 16'h56c3;
	B = 16'hda12;
	ans = 16'hf521;
	#20
	A = 16'hd1b3;
	B = 16'hd692;
	ans = 16'h6cae;
	#20
	A = 16'h5929;
	B = 16'h58d7;
	ans = 16'h763e;
	#20
	A = 16'hdad4;
	B = 16'hd613;
	ans = 16'h752f;
	#20
	A = 16'hd928;
	B = 16'hbc32;
	ans = 16'h5968;
	#20
	A = 16'h57b2;
	B = 16'h54b9;
	ans = 16'h708b;
	#20
	A = 16'hcd67;
	B = 16'h5a06;
	ans = 16'hec11;
	#20
	A = 16'hd727;
	B = 16'h5ba7;
	ans = 16'hf6d7;
	#20
	A = 16'hd8b4;
	B = 16'h5578;
	ans = 16'hf26e;
	#20
	A = 16'h572c;
	B = 16'hd667;
	ans = 16'hf1bd;
	#20
	A = 16'h55bd;
	B = 16'hdace;
	ans = 16'hf4e2;
	#20
	A = 16'h5465;
	B = 16'hd4a2;
	ans = 16'hed17;
	#20
	A = 16'hd618;
	B = 16'hcb45;
	ans = 16'h658a;
	#20
	A = 16'hca22;
	B = 16'h5b4b;
	ans = 16'he997;
	#20
	A = 16'h5a33;
	B = 16'h5aff;
	ans = 16'h796c;
	#20
	A = 16'hd17d;
	B = 16'h58f2;
	ans = 16'heec9;
	#20
	A = 16'hdbf1;
	B = 16'hd817;
	ans = 16'h780f;
	#20
	A = 16'hdb7f;
	B = 16'h5ba3;
	ans = 16'hfb28;
	#20
	A = 16'hc5db;
	B = 16'hdb7e;
	ans = 16'h657c;
	#20
	A = 16'h5aa2;
	B = 16'hd893;
	ans = 16'hf796;
	#20
	A = 16'hd4b6;
	B = 16'hd2fe;
	ans = 16'h6c1e;
	#20
	A = 16'hd81d;
	B = 16'hdbd8;
	ans = 16'h7808;
	#20
	A = 16'h5979;
	B = 16'hd8fa;
	ans = 16'hf6cf;
	#20
	A = 16'h5b46;
	B = 16'hdb89;
	ans = 16'hfada;
	#20
	A = 16'hdb2f;
	B = 16'hdba3;
	ans = 16'h7adb;
	#20
	A = 16'hda6d;
	B = 16'h5bdf;
	ans = 16'hfa52;
	#20
	A = 16'h572f;
	B = 16'h5b14;
	ans = 16'h765b;
	#20
	A = 16'h5bc3;
	B = 16'hd166;
	ans = 16'hf13d;
	#20
	A = 16'h560a;
	B = 16'h58ab;
	ans = 16'h730c;
	#20
	A = 16'hd967;
	B = 16'h5762;
	ans = 16'hf4fc;
	#20
	A = 16'h587a;
	B = 16'h561e;
	ans = 16'h72d9;
	#20
	A = 16'h5b17;
	B = 16'h5b81;
	ans = 16'h7aa6;
	#20
	A = 16'hd16a;
	B = 16'hd891;
	ans = 16'h6e2e;
	#20
	A = 16'hd96f;
	B = 16'h5b3b;
	ans = 16'hf8e9;
	#20
	A = 16'h53d3;
	B = 16'h5924;
	ans = 16'h7107;
	#20
	A = 16'hd978;
	B = 16'hd82d;
	ans = 16'h75b6;
	#20
	A = 16'h4275;
	B = 16'h59cd;
	ans = 16'h60af;
	#20
	A = 16'h58fc;
	B = 16'h5491;
	ans = 16'h71b1;
	#20
	A = 16'hd886;
	B = 16'h5567;
	ans = 16'hf21c;
	#20
	A = 16'h58ed;
	B = 16'hdb9d;
	ans = 16'hf8b0;
	#20
	A = 16'hd101;
	B = 16'h5a2b;
	ans = 16'hefb7;
	#20
	A = 16'h57fa;
	B = 16'h593c;
	ans = 16'h7538;
	#20
	A = 16'h5897;
	B = 16'h4d3e;
	ans = 16'h6a04;
	#20
	A = 16'h59ec;
	B = 16'hd76c;
	ans = 16'hf57e;
	#20
	A = 16'h5961;
	B = 16'hd0f2;
	ans = 16'heea6;
	#20
	A = 16'h558d;
	B = 16'h5ac4;
	ans = 16'h74b2;
	#20
	A = 16'h58dd;
	B = 16'h57e8;
	ans = 16'h74ce;
	#20
	A = 16'h560c;
	B = 16'h557f;
	ans = 16'h7027;
	#20
	A = 16'h58e1;
	B = 16'h543e;
	ans = 16'h712d;
	#20
	A = 16'hd986;
	B = 16'h4378;
	ans = 16'he128;
	#20
	A = 16'h4d59;
	B = 16'hd89b;
	ans = 16'hea28;
	#20
	A = 16'h5818;
	B = 16'hd0dd;
	ans = 16'hecfa;
	#20
	A = 16'hd5fd;
	B = 16'h567a;
	ans = 16'hf0d9;
	#20
	A = 16'hd846;
	B = 16'h5abf;
	ans = 16'hf735;
	#20
	A = 16'h5a3c;
	B = 16'h5069;
	ans = 16'h6ee0;
	#20
	A = 16'h55a3;
	B = 16'hd6a9;
	ans = 16'hf0b1;
	#20
	A = 16'h5be2;
	B = 16'hd261;
	ans = 16'hf249;
	#20
	A = 16'hd93b;
	B = 16'hd898;
	ans = 16'h7602;
	#20
	A = 16'hd871;
	B = 16'h5456;
	ans = 16'hf0d0;
	#20
	A = 16'hd865;
	B = 16'hd912;
	ans = 16'h7592;
	#20
	A = 16'hd589;
	B = 16'h5939;
	ans = 16'hf33a;
	#20
	A = 16'hd94b;
	B = 16'hd503;
	ans = 16'h72a2;
	#20
	A = 16'h534a;
	B = 16'hd935;
	ans = 16'hf0bf;
	#20
	A = 16'hdb13;
	B = 16'h571b;
	ans = 16'hf649;
	#20
	A = 16'hd5b0;
	B = 16'hdbf7;
	ans = 16'h75aa;
	#20
	A = 16'h59fc;
	B = 16'hdaa6;
	ans = 16'hf8f9;
	#20
	A = 16'h5ac5;
	B = 16'h55d1;
	ans = 16'h74ec;
	#20
	A = 16'hc6b5;
	B = 16'h54e8;
	ans = 16'he01d;
	#20
	A = 16'h5a23;
	B = 16'hd0e1;
	ans = 16'hef7c;
	#20
	A = 16'hd303;
	B = 16'h51b2;
	ans = 16'he8fe;
	#20
	A = 16'hc84a;
	B = 16'hd70f;
	ans = 16'h6392;
	#20
	A = 16'hd76a;
	B = 16'h5854;
	ans = 16'hf403;
	#20
	A = 16'h51f5;
	B = 16'hd892;
	ans = 16'heece;
	#20
	A = 16'hd775;
	B = 16'hcfa7;
	ans = 16'h6b22;
	#20
	A = 16'h4503;
	B = 16'hdbb6;
	ans = 16'he4d5;
	#20
	A = 16'h5bbe;
	B = 16'h597a;
	ans = 16'h794d;
	#20
	A = 16'hd889;
	B = 16'hd84c;
	ans = 16'h74df;
	#20
	A = 16'hd444;
	B = 16'h3ef2;
	ans = 16'hd768;
	#20
	A = 16'hda62;
	B = 16'h58a6;
	ans = 16'hf76b;
	#20
	A = 16'hd0f1;
	B = 16'h5272;
	ans = 16'he7f6;
	#20
	A = 16'h5a4b;
	B = 16'hdbbb;
	ans = 16'hfa15;
	#20
	A = 16'hd387;
	B = 16'h5813;
	ans = 16'hefab;
	#20
	A = 16'h5a77;
	B = 16'h5617;
	ans = 16'h74ec;
	#20
	A = 16'h5a75;
	B = 16'h5480;
	ans = 16'h7344;
	#20
	A = 16'h52d0;
	B = 16'hd4e2;
	ans = 16'hec28;
	#20
	A = 16'h5534;
	B = 16'h5a0c;
	ans = 16'h73de;
	#20
	A = 16'h548c;
	B = 16'hd5d2;
	ans = 16'hee9e;
	#20
	A = 16'hd993;
	B = 16'h5a64;
	ans = 16'hf874;
	#20
	A = 16'h4d6d;
	B = 16'h5067;
	ans = 16'h61f9;
	#20
	A = 16'h5876;
	B = 16'h5bf5;
	ans = 16'h7870;
	#20
	A = 16'h5678;
	B = 16'h579a;
	ans = 16'h7226;
	#20
	A = 16'h56e3;
	B = 16'hdaf0;
	ans = 16'hf5f9;
	#20
	A = 16'h549e;
	B = 16'h5a8a;
	ans = 16'h738c;
	#20
	A = 16'h5783;
	B = 16'h5487;
	ans = 16'h7040;
	#20
	A = 16'h58e9;
	B = 16'hda63;
	ans = 16'hf7d7;
	#20
	A = 16'h5920;
	B = 16'hd43c;
	ans = 16'hf16d;
	#20
	A = 16'hd564;
	B = 16'hd41c;
	ans = 16'h6d8a;
	#20
	A = 16'hd47f;
	B = 16'h5814;
	ans = 16'hf095;
	#20
	A = 16'hd939;
	B = 16'hcf5e;
	ans = 16'h6ccf;
	#20
	A = 16'hd3bc;
	B = 16'hce9c;
	ans = 16'h6664;
	#20
	A = 16'h5a3a;
	B = 16'hd6d0;
	ans = 16'hf54d;
	#20
	A = 16'h5ba3;
	B = 16'hdb8e;
	ans = 16'hfb36;
	#20
	A = 16'hd29c;
	B = 16'h5a83;
	ans = 16'hf161;
	#20
	A = 16'hcc86;
	B = 16'h592c;
	ans = 16'he9d9;
	#20
	A = 16'h5101;
	B = 16'hd739;
	ans = 16'hec85;
	#20
	A = 16'h596b;
	B = 16'h5b3c;
	ans = 16'h78e6;
	#20
	A = 16'hd96c;
	B = 16'hd87b;
	ans = 16'h7613;
	#20
	A = 16'hd566;
	B = 16'hdbaf;
	ans = 16'h752f;
	#20
	A = 16'h4a11;
	B = 16'h54fa;
	ans = 16'h638c;
	#20
	A = 16'h4a22;
	B = 16'h5b96;
	ans = 16'h69d1;
	#20
	A = 16'h5502;
	B = 16'h5374;
	ans = 16'h6caa;
	#20
	A = 16'h5ac7;
	B = 16'hd53e;
	ans = 16'hf471;
	#20
	A = 16'hd04c;
	B = 16'h5911;
	ans = 16'hed71;
	#20
	A = 16'hd7d1;
	B = 16'hcbe4;
	ans = 16'h67b6;
	#20
	A = 16'hd4f2;
	B = 16'h4fa9;
	ans = 16'he8bc;
	#20
	A = 16'h55cc;
	B = 16'h5474;
	ans = 16'h6e74;
	#20
	A = 16'h5a08;
	B = 16'h5a69;
	ans = 16'h78d5;
	#20
	A = 16'h5937;
	B = 16'h582a;
	ans = 16'h756e;
	#20
	A = 16'h5b89;
	B = 16'h5bce;
	ans = 16'h7b5a;
	#20
	A = 16'h5a38;
	B = 16'hdbd3;
	ans = 16'hfa15;
	#20
	A = 16'hdbdb;
	B = 16'h581d;
	ans = 16'hf80a;
	#20
	A = 16'hc170;
	B = 16'h5725;
	ans = 16'hdcdb;
	#20
	A = 16'h5112;
	B = 16'h5649;
	ans = 16'h6bf8;
	#20
	A = 16'h5a99;
	B = 16'hd793;
	ans = 16'hf63f;
	#20
	A = 16'hd1e5;
	B = 16'h418b;
	ans = 16'hd816;
	#20
	A = 16'hd9aa;
	B = 16'h5bb7;
	ans = 16'hf976;
	#20
	A = 16'h58ea;
	B = 16'hd5a1;
	ans = 16'hf2ea;
	#20
	A = 16'hd618;
	B = 16'hd4dc;
	ans = 16'h6f67;
	#20
	A = 16'h5081;
	B = 16'h595d;
	ans = 16'h6e0a;
	#20
	A = 16'h582f;
	B = 16'h5917;
	ans = 16'h7553;
	#20
	A = 16'hdb70;
	B = 16'hdbcf;
	ans = 16'h7b42;
	#20
	A = 16'h5b5b;
	B = 16'h568f;
	ans = 16'h7608;
	#20
	A = 16'h593c;
	B = 16'hc653;
	ans = 16'he423;
	#20
	A = 16'hd94d;
	B = 16'hd82f;
	ans = 16'h758b;
	#20
	A = 16'hce61;
	B = 16'hd8a4;
	ans = 16'h6b67;
	#20
	A = 16'hda78;
	B = 16'hd6d4;
	ans = 16'h7585;
	#20
	A = 16'hd5ce;
	B = 16'h5816;
	ans = 16'hf1ee;
	#20
	A = 16'h4f80;
	B = 16'h5853;
	ans = 16'h6c0e;
	#20
	A = 16'hd590;
	B = 16'hd930;
	ans = 16'h7337;
	#20
	A = 16'hd627;
	B = 16'h585a;
	ans = 16'hf2b1;
	#20
	A = 16'hd3ba;
	B = 16'h5b03;
	ans = 16'hf2c6;
	#20
	A = 16'h5650;
	B = 16'hda8b;
	ans = 16'hf52a;
	#20
	A = 16'hdaac;
	B = 16'hda0d;
	ans = 16'h790c;
	#20
	A = 16'h5830;
	B = 16'hd8e8;
	ans = 16'hf523;
	#20
	A = 16'h4c49;
	B = 16'h5a59;
	ans = 16'h6acd;
	#20
	A = 16'h5462;
	B = 16'hd7a5;
	ans = 16'hf030;
	#20
	A = 16'h5add;
	B = 16'h5ba9;
	ans = 16'h7a92;
	#20
	A = 16'h55ac;
	B = 16'hc9ce;
	ans = 16'he41e;
	#20
	A = 16'h5af9;
	B = 16'hdb53;
	ans = 16'hfa62;
	#20
	A = 16'hdafe;
	B = 16'h4bc5;
	ans = 16'heaca;
	#20
	A = 16'h5445;
	B = 16'hd8f9;
	ans = 16'hf14f;
	#20
	A = 16'hd1af;
	B = 16'hd9d1;
	ans = 16'h7022;
	#20
	A = 16'h5a9a;
	B = 16'h59ed;
	ans = 16'h78e4;
	#20
	A = 16'hdb36;
	B = 16'h5838;
	ans = 16'hf79b;
	#20
	A = 16'hdbe4;
	B = 16'hd76d;
	ans = 16'h7753;
	#20
	A = 16'h5590;
	B = 16'h5a23;
	ans = 16'h7444;
	#20
	A = 16'h5855;
	B = 16'hdb72;
	ans = 16'hf808;
	#20
	A = 16'h4d5e;
	B = 16'h5b3f;
	ans = 16'h6cdd;
	#20
	A = 16'h58e4;
	B = 16'h40e5;
	ans = 16'h5dfc;
	#20
	A = 16'hd877;
	B = 16'h4e90;
	ans = 16'heb53;
	#20
	A = 16'h4ba1;
	B = 16'h566b;
	ans = 16'h661f;
	#20
	A = 16'hd409;
	B = 16'h5a3c;
	ans = 16'hf24a;
	#20
	A = 16'hd929;
	B = 16'hdae5;
	ans = 16'h7872;
	#20
	A = 16'hda32;
	B = 16'h4ca4;
	ans = 16'heb30;
	#20
	A = 16'h5808;
	B = 16'h5680;
	ans = 16'h728d;
	#20
	A = 16'h5803;
	B = 16'hd4f5;
	ans = 16'hf0f9;
	#20
	A = 16'h5a3f;
	B = 16'h5bb5;
	ans = 16'h7a04;
	#20
	A = 16'h5a94;
	B = 16'h49da;
	ans = 16'h68d0;
	#20
	A = 16'hcc0d;
	B = 16'hdad7;
	ans = 16'h6aed;
	#20
	A = 16'h5824;
	B = 16'hd78c;
	ans = 16'hf3d0;
	#20
	A = 16'h55ce;
	B = 16'h5a6e;
	ans = 16'h74aa;
	#20
	A = 16'hd10c;
	B = 16'hd749;
	ans = 16'h6c99;
	#20
	A = 16'h5bd4;
	B = 16'h53fe;
	ans = 16'h73d2;
	#20
	A = 16'h572f;
	B = 16'h4854;
	ans = 16'h63c6;
	#20
	A = 16'h5870;
	B = 16'h49a5;
	ans = 16'h6643;
	#20
	A = 16'h5833;
	B = 16'hd732;
	ans = 16'hf38e;
	#20
	A = 16'hd850;
	B = 16'hd99b;
	ans = 16'h760b;
	#20
	A = 16'h5bb6;
	B = 16'h5929;
	ans = 16'h78f9;
	#20
	A = 16'hd82f;
	B = 16'hce89;
	ans = 16'h6ad6;
	#20
	A = 16'h5424;
	B = 16'hcfd2;
	ans = 16'he80c;
	#20
	A = 16'hd1b3;
	B = 16'hd14f;
	ans = 16'h6790;
	#20
	A = 16'hda3f;
	B = 16'h589f;
	ans = 16'hf737;
	#20
	A = 16'h5b9d;
	B = 16'h3b81;
	ans = 16'h5b24;
	#20
	A = 16'h5be9;
	B = 16'hd786;
	ans = 16'hf770;
	#20
	A = 16'hd0e6;
	B = 16'hd5f4;
	ans = 16'h6b4a;
	#20
	A = 16'h5818;
	B = 16'hd49f;
	ans = 16'hf0bb;
	#20
	A = 16'h5630;
	B = 16'h5bab;
	ans = 16'h75ee;
	#20
	A = 16'hcbb4;
	B = 16'h5435;
	ans = 16'he40d;
	#20
	A = 16'hc5f3;
	B = 16'hda53;
	ans = 16'h64b4;
	#20
	A = 16'hdaa0;
	B = 16'h5474;
	ans = 16'hf360;
	#20
	A = 16'h58cd;
	B = 16'h585d;
	ans = 16'h753d;
	#20
	A = 16'hda3f;
	B = 16'h4511;
	ans = 16'he3e9;
	#20
	A = 16'hd837;
	B = 16'hd49b;
	ans = 16'h70da;
	#20
	A = 16'h569e;
	B = 16'hd92f;
	ans = 16'hf44a;
	#20
	A = 16'hd90a;
	B = 16'hd4bf;
	ans = 16'h71fb;
	#20
	A = 16'h54b2;
	B = 16'h5676;
	ans = 16'h6f96;
	#20
	A = 16'h59ef;
	B = 16'h5834;
	ans = 16'h763c;
	#20
	A = 16'hd92f;
	B = 16'h5a5d;
	ans = 16'hf820;
	#20
	A = 16'h57bb;
	B = 16'h59fb;
	ans = 16'h75c7;
	#20
	A = 16'hd872;
	B = 16'h54ae;
	ans = 16'hf133;
	#20
	A = 16'h4bcd;
	B = 16'h59ff;
	ans = 16'h69d9;
	#20
	A = 16'h59ef;
	B = 16'h354d;
	ans = 16'h53dd;
	#20
	A = 16'h518d;
	B = 16'h560f;
	ans = 16'h6c34;
	#20
	A = 16'h57d5;
	B = 16'h5507;
	ans = 16'h70ec;
	#20
	A = 16'h38a4;
	B = 16'hda7e;
	ans = 16'hd788;
	#20
	A = 16'h53e4;
	B = 16'h516f;
	ans = 16'h695c;
	#20
	A = 16'h4e9b;
	B = 16'h5987;
	ans = 16'h6c90;
	#20
	A = 16'hcc1d;
	B = 16'h52fa;
	ans = 16'he32d;
	#20
	A = 16'h581d;
	B = 16'h5854;
	ans = 16'h7473;
	#20
	A = 16'h58c3;
	B = 16'hd273;
	ans = 16'hefad;
	#20
	A = 16'h588c;
	B = 16'hd537;
	ans = 16'hf1ee;
	#20
	A = 16'h533e;
	B = 16'h5bcf;
	ans = 16'h7312;
	#20
	A = 16'hdb5f;
	B = 16'hdaad;
	ans = 16'h7a27;
	#20
	A = 16'hd47b;
	B = 16'hd7dc;
	ans = 16'h7067;
	#20
	A = 16'hd38c;
	B = 16'h5be4;
	ans = 16'hf372;
	#20
	A = 16'h5aff;
	B = 16'h4bbd;
	ans = 16'h6ac4;
	#20
	A = 16'h59f3;
	B = 16'hdac9;
	ans = 16'hf90c;
	#20
	A = 16'h5a5e;
	B = 16'h5520;
	ans = 16'h7414;
	#20
	A = 16'h529e;
	B = 16'h500b;
	ans = 16'h66b0;
	#20
	A = 16'h58be;
	B = 16'haf08;
	ans = 16'hcc2b;
	#20
	A = 16'hd481;
	B = 16'hcf21;
	ans = 16'h6803;
	#20
	A = 16'hd160;
	B = 16'hd2a1;
	ans = 16'h6874;
	#20
	A = 16'h591b;
	B = 16'h588a;
	ans = 16'h75cb;
	#20
	A = 16'hda34;
	B = 16'h5aae;
	ans = 16'hf92e;
	#20
	A = 16'hdaa6;
	B = 16'hd8a6;
	ans = 16'h77ba;
	#20
	A = 16'h5635;
	B = 16'h58cb;
	ans = 16'h7370;
	#20
	A = 16'hdb33;
	B = 16'h5aea;
	ans = 16'hfa39;
	#20
	A = 16'hd953;
	B = 16'h5b80;
	ans = 16'hf8fe;
	#20
	A = 16'h5795;
	B = 16'hd986;
	ans = 16'hf53c;
	#20
	A = 16'hd791;
	B = 16'hd705;
	ans = 16'h72a4;
	#20
	A = 16'hc1b7;
	B = 16'h59dc;
	ans = 16'he030;
	#20
	A = 16'h5b87;
	B = 16'h4fc2;
	ans = 16'h6f4d;
	#20
	A = 16'hd917;
	B = 16'hd4e3;
	ans = 16'h7238;
	#20
	A = 16'hd4ce;
	B = 16'h5281;
	ans = 16'hebd0;
	#20
	A = 16'hd795;
	B = 16'h58a7;
	ans = 16'hf469;
	#20
	A = 16'h4ef1;
	B = 16'hcf50;
	ans = 16'he258;
	#20
	A = 16'hd9b6;
	B = 16'hd8b4;
	ans = 16'h76b7;
	#20
	A = 16'h5737;
	B = 16'hd953;
	ans = 16'hf4cd;
	#20
	A = 16'hda6d;
	B = 16'hd32c;
	ans = 16'h71c3;
	#20
	A = 16'h5a17;
	B = 16'h5987;
	ans = 16'h7835;
	#20
	A = 16'hcd22;
	B = 16'hdabc;
	ans = 16'h6c52;
	#20
	A = 16'hd0a2;
	B = 16'hd469;
	ans = 16'h691c;
	#20
	A = 16'h5bc2;
	B = 16'h594e;
	ans = 16'h7925;
	#20
	A = 16'h5845;
	B = 16'h584e;
	ans = 16'h7498;
	#20
	A = 16'hd80c;
	B = 16'h50e9;
	ans = 16'hecf8;
	#20
	A = 16'h5585;
	B = 16'hda3a;
	ans = 16'hf44c;
	#20
	A = 16'hbf2b;
	B = 16'hca74;
	ans = 16'h4dc8;
	#20
	A = 16'hd970;
	B = 16'hda6f;
	ans = 16'h785f;
	#20
	A = 16'hd9fd;
	B = 16'h5aa2;
	ans = 16'hf8f7;
	#20
	A = 16'hda1a;
	B = 16'hd9dc;
	ans = 16'h7878;
	#20
	A = 16'h5888;
	B = 16'hd80d;
	ans = 16'hf497;
	#20
	A = 16'hda6a;
	B = 16'h5a4a;
	ans = 16'hf90b;
	#20
	A = 16'h4ca3;
	B = 16'hda4f;
	ans = 16'heb50;
	#20
	A = 16'h3b90;
	B = 16'hcb3f;
	ans = 16'hcada;
	#20
	A = 16'h5955;
	B = 16'hd526;
	ans = 16'hf2dd;
	#20
	A = 16'h576d;
	B = 16'hd3f3;
	ans = 16'hef61;
	#20
	A = 16'h5b4a;
	B = 16'hca7c;
	ans = 16'he9e8;
	#20
	A = 16'h59be;
	B = 16'h5ab1;
	ans = 16'h78ce;
	#20
	A = 16'hd5e2;
	B = 16'hd9c3;
	ans = 16'h743d;
	#20
	A = 16'hd383;
	B = 16'h45c6;
	ans = 16'hdd6c;
	#20
	A = 16'h5487;
	B = 16'h5b79;
	ans = 16'h743b;
	#20
	A = 16'h5681;
	B = 16'hd56d;
	ans = 16'hf069;
	#20
	A = 16'hd048;
	B = 16'h5b15;
	ans = 16'hef94;
	#20
	A = 16'h59f7;
	B = 16'h55af;
	ans = 16'h743d;
	#20
	A = 16'hd10d;
	B = 16'h524b;
	ans = 16'he7f2;
	#20
	A = 16'h58b7;
	B = 16'hda0d;
	ans = 16'hf722;
	#20
	A = 16'h4ff9;
	B = 16'h5bbc;
	ans = 16'h6fb5;
	#20
	A = 16'h5658;
	B = 16'hd3da;
	ans = 16'hee3a;
	#20
	A = 16'h5746;
	B = 16'h5a73;
	ans = 16'h75dd;
	#20
	A = 16'h5af2;
	B = 16'hd08b;
	ans = 16'hefe3;
	#20
	A = 16'hc7a0;
	B = 16'h53ef;
	ans = 16'hdf90;
	#20
	A = 16'h5a5b;
	B = 16'h501e;
	ans = 16'h6e8b;
	#20
	A = 16'h59ae;
	B = 16'hdaf9;
	ans = 16'hf8f3;
	#20
	A = 16'hd811;
	B = 16'h585e;
	ans = 16'hf471;
	#20
	A = 16'h5bae;
	B = 16'h4893;
	ans = 16'h6864;
	#20
	A = 16'hd3e3;
	B = 16'h5995;
	ans = 16'hf181;
	#20
	A = 16'h5992;
	B = 16'h55bd;
	ans = 16'h73fe;
	#20
	A = 16'hd898;
	B = 16'hda94;
	ans = 16'h778e;
	#20
	A = 16'hc9d2;
	B = 16'hd94b;
	ans = 16'h67b4;
	#20
	A = 16'hda3b;
	B = 16'h54af;
	ans = 16'hf34c;
	#20
	A = 16'hd69b;
	B = 16'hd608;
	ans = 16'h70fb;
	#20
	A = 16'hd3e7;
	B = 16'h5af3;
	ans = 16'hf2dd;
	#20
	A = 16'hd392;
	B = 16'h57e3;
	ans = 16'hef77;
	#20
	A = 16'h58f8;
	B = 16'hd69b;
	ans = 16'hf41a;
	#20
	A = 16'h5561;
	B = 16'h53df;
	ans = 16'h6d4b;
	#20
	A = 16'h5890;
	B = 16'hd873;
	ans = 16'hf513;
	#20
	A = 16'hca00;
	B = 16'hd789;
	ans = 16'h65a7;
	#20
	A = 16'hd489;
	B = 16'hd86c;
	ans = 16'h7103;
	#20
	A = 16'hd893;
	B = 16'h5ba8;
	ans = 16'hf861;
	#20
	A = 16'h55ad;
	B = 16'hd8f1;
	ans = 16'hf303;
	#20
	A = 16'h581e;
	B = 16'hc9d3;
	ans = 16'he5ff;
	#20
	A = 16'h5af3;
	B = 16'hd53a;
	ans = 16'hf48a;
	#20
	A = 16'h5ac9;
	B = 16'hd747;
	ans = 16'hf62c;
	#20
	A = 16'h5081;
	B = 16'h5be1;
	ans = 16'h7070;
	#20
	A = 16'hcead;
	B = 16'h5965;
	ans = 16'hec80;
	#20
	A = 16'h5a90;
	B = 16'hca38;
	ans = 16'he91a;
	#20
	A = 16'h54a4;
	B = 16'h5066;
	ans = 16'h691a;
	#20
	A = 16'hd608;
	B = 16'hdaa9;
	ans = 16'h7505;
	#20
	A = 16'hd662;
	B = 16'hda4f;
	ans = 16'h7509;
	#20
	A = 16'h564d;
	B = 16'hd2e7;
	ans = 16'hed70;
	#20
	A = 16'h5bcf;
	B = 16'h5b67;
	ans = 16'h7b3a;
	#20
	A = 16'hc8c4;
	B = 16'hd99d;
	ans = 16'h66b0;
	#20
	A = 16'h5a82;
	B = 16'hd9c9;
	ans = 16'hf8b5;
	#20
	A = 16'h54bd;
	B = 16'h5b4b;
	ans = 16'h7452;
	#20
	A = 16'h5aad;
	B = 16'h4cdf;
	ans = 16'h6c11;
	#20
	A = 16'h5778;
	B = 16'hd65d;
	ans = 16'hf1f1;
	#20
	A = 16'hd812;
	B = 16'h5af5;
	ans = 16'hf714;
	#20
	A = 16'h58ce;
	B = 16'h57c2;
	ans = 16'h74a9;
	#20
	A = 16'h5ae6;
	B = 16'hcffb;
	ans = 16'heee2;
	#20
	A = 16'h5bd3;
	B = 16'h571a;
	ans = 16'h76f2;
	#20
	A = 16'h5ab6;
	B = 16'hd205;
	ans = 16'hf10d;
	#20
	A = 16'hd9cb;
	B = 16'hd924;
	ans = 16'h7772;
	#20
	A = 16'h5535;
	B = 16'h585f;
	ans = 16'h71b1;
	#20
	A = 16'h5661;
	B = 16'hdb4a;
	ans = 16'hf5d0;
	#20
	A = 16'h5b0b;
	B = 16'h5a2e;
	ans = 16'h7971;
	#20
	A = 16'hd963;
	B = 16'hd844;
	ans = 16'h75bf;
	#20
	A = 16'h4bf6;
	B = 16'h5893;
	ans = 16'h688d;
	#20
	A = 16'hcc4f;
	B = 16'hd7a5;
	ans = 16'h681e;
	#20
	A = 16'h57e7;
	B = 16'hd0cb;
	ans = 16'hecbc;
	#20
	A = 16'h3c74;
	B = 16'hd45d;
	ans = 16'hd4dc;
	#20
	A = 16'h5ab8;
	B = 16'hd68a;
	ans = 16'hf57e;
	#20
	A = 16'hd799;
	B = 16'h5a6c;
	ans = 16'hf619;
	#20
	A = 16'hdaf8;
	B = 16'h5be0;
	ans = 16'hfadc;
	#20
	A = 16'h5af6;
	B = 16'h5a17;
	ans = 16'h794d;
	#20
	A = 16'hd8bf;
	B = 16'hd978;
	ans = 16'h767d;
	#20
	A = 16'hd1af;
	B = 16'hc4e5;
	ans = 16'h5af4;
	#20
	A = 16'hd553;
	B = 16'hd903;
	ans = 16'h72ac;
	#20
	A = 16'h46de;
	B = 16'hd8c8;
	ans = 16'he41b;
	#20
	A = 16'h58af;
	B = 16'hda90;
	ans = 16'hf7af;
	#20
	A = 16'h5abd;
	B = 16'h440a;
	ans = 16'h62ce;
	#20
	A = 16'h598a;
	B = 16'hd6c1;
	ans = 16'hf4ad;
	#20
	A = 16'hda5c;
	B = 16'hd5dc;
	ans = 16'h74a8;
	#20
	A = 16'hd256;
	B = 16'h56a3;
	ans = 16'hed42;
	#20
	A = 16'h4ce4;
	B = 16'h520a;
	ans = 16'h6362;
	#20
	A = 16'hd925;
	B = 16'hdb3b;
	ans = 16'h78a6;
	#20
	A = 16'hcd48;
	B = 16'h58f7;
	ans = 16'hea8e;
	#20
	A = 16'hda82;
	B = 16'h5897;
	ans = 16'hf778;
	#20
	A = 16'h5721;
	B = 16'hd9ad;
	ans = 16'hf50f;
	#20
	A = 16'h569b;
	B = 16'hcba5;
	ans = 16'he650;
	#20
	A = 16'h41be;
	B = 16'h5564;
	ans = 16'h5bbd;
	#20
	A = 16'h59fc;
	B = 16'hd6f0;
	ans = 16'hf531;
	#20
	A = 16'hd77e;
	B = 16'hda9c;
	ans = 16'h7631;
	#20
	A = 16'hd527;
	B = 16'hd821;
	ans = 16'h7152;
	#20
	A = 16'hd4c0;
	B = 16'h5886;
	ans = 16'hf15f;
	#20
	A = 16'hd403;
	B = 16'hd2b1;
	ans = 16'h6ab6;
	#20
	A = 16'hd069;
	B = 16'h5762;
	ans = 16'hec12;
	#20
	A = 16'hd162;
	B = 16'hd2c0;
	ans = 16'h688b;
	#20
	A = 16'hc745;
	B = 16'h563c;
	ans = 16'he1aa;
	#20
	A = 16'h5936;
	B = 16'h560c;
	ans = 16'h73e1;
	#20
	A = 16'h4f28;
	B = 16'hd8b2;
	ans = 16'hec33;
	#20
	A = 16'h596f;
	B = 16'hd9ab;
	ans = 16'hf7b3;
	#20
	A = 16'h59e8;
	B = 16'h50c6;
	ans = 16'h6f0c;
	#20
	A = 16'hd8d2;
	B = 16'hd4a5;
	ans = 16'h7199;
	#20
	A = 16'h56bf;
	B = 16'h593e;
	ans = 16'h746c;
	#20
	A = 16'h54ff;
	B = 16'hd938;
	ans = 16'hf285;
	#20
	A = 16'h559d;
	B = 16'hd95f;
	ans = 16'hf38a;
	#20
	A = 16'hda2e;
	B = 16'hcd1e;
	ans = 16'h6be8;
	#20
	A = 16'hd7a2;
	B = 16'hd535;
	ans = 16'h70f8;
	#20
	A = 16'h5878;
	B = 16'hda23;
	ans = 16'hf6db;
	#20
	A = 16'h58b7;
	B = 16'h5146;
	ans = 16'h6e37;
	#20
	A = 16'h5435;
	B = 16'hd907;
	ans = 16'hf14a;
	#20
	A = 16'h4760;
	B = 16'h5945;
	ans = 16'h64dc;
	#20
	A = 16'hdbca;
	B = 16'hda3d;
	ans = 16'h7a13;
	#20
	A = 16'h51e0;
	B = 16'h56a4;
	ans = 16'h6ce0;
	#20
	A = 16'hd9c6;
	B = 16'hdb85;
	ans = 16'h796d;
	#20
	A = 16'h4f78;
	B = 16'h5277;
	ans = 16'h6609;
	#20
	A = 16'hd86f;
	B = 16'hdacf;
	ans = 16'h778c;
	#20
	A = 16'h4e07;
	B = 16'hd840;
	ans = 16'hea67;
	#20
	A = 16'hd6e4;
	B = 16'hd502;
	ans = 16'h7050;
	#20
	A = 16'h46d3;
	B = 16'hd930;
	ans = 16'he46d;
	#20
	A = 16'hdbe9;
	B = 16'hd88e;
	ans = 16'h7881;
	#20
	A = 16'hdb9b;
	B = 16'h582b;
	ans = 16'hf7ed;
	#20
	A = 16'h5333;
	B = 16'h59d6;
	ans = 16'h7140;
	#20
	A = 16'hcc37;
	B = 16'h585d;
	ans = 16'he899;
	#20
	A = 16'hdbe6;
	B = 16'hd01a;
	ans = 16'h700d;
	#20
	A = 16'h5bc6;
	B = 16'h4abc;
	ans = 16'h6a8b;
	#20
	A = 16'hd629;
	B = 16'h5b44;
	ans = 16'hf598;
	#20
	A = 16'hcf6a;
	B = 16'hd9af;
	ans = 16'h6d44;
	#20
	A = 16'hd185;
	B = 16'h58c6;
	ans = 16'hee96;
	#20
	A = 16'h55ab;
	B = 16'h598d;
	ans = 16'h73de;
	#20
	A = 16'h4deb;
	B = 16'hd50d;
	ans = 16'he779;
	#20
	A = 16'hdb3b;
	B = 16'hd04f;
	ans = 16'h6fca;
	#20
	A = 16'hdacf;
	B = 16'h5895;
	ans = 16'hf7cd;
	#20
	A = 16'h5b58;
	B = 16'h5745;
	ans = 16'h76ac;
	#20
	A = 16'hcf5b;
	B = 16'hd8e1;
	ans = 16'h6c7c;
	#20
	A = 16'h58b9;
	B = 16'h491f;
	ans = 16'h660c;
	#20
	A = 16'h58b2;
	B = 16'h4ca9;
	ans = 16'h6978;
	#20
	A = 16'hdae7;
	B = 16'hc8f7;
	ans = 16'h6849;
	#20
	A = 16'h5b9c;
	B = 16'h5751;
	ans = 16'h76f6;
	#20
	A = 16'h5a6b;
	B = 16'h585c;
	ans = 16'h76ff;
	#20
	A = 16'hd695;
	B = 16'h5897;
	ans = 16'hf38d;
	#20
	A = 16'hd119;
	B = 16'h505e;
	ans = 16'he591;
	#20
	A = 16'hc464;
	B = 16'hd288;
	ans = 16'h5b2b;
	#20
	A = 16'h4d68;
	B = 16'hcc6e;
	ans = 16'hddfd;
	#20
	A = 16'hd89b;
	B = 16'hd087;
	ans = 16'h6d36;
	#20
	A = 16'h58f2;
	B = 16'hcbd4;
	ans = 16'he8d7;
	#20
	A = 16'hd2c6;
	B = 16'h5a87;
	ans = 16'hf187;
	#20
	A = 16'hdaae;
	B = 16'h521d;
	ans = 16'hf11b;
	#20
	A = 16'hd945;
	B = 16'hda0c;
	ans = 16'h77f7;
	#20
	A = 16'hda76;
	B = 16'h5803;
	ans = 16'hf67b;
	#20
	A = 16'hda86;
	B = 16'hda13;
	ans = 16'h78f4;
	#20
	A = 16'h4b14;
	B = 16'h58e9;
	ans = 16'h6858;
	#20
	A = 16'hd17a;
	B = 16'hd9d3;
	ans = 16'h6ff9;
	#20
	A = 16'h5818;
	B = 16'hd060;
	ans = 16'hec7a;
	#20
	A = 16'hdb8e;
	B = 16'h5a2d;
	ans = 16'hf9d5;
	#20
	A = 16'h5b58;
	B = 16'h58c3;
	ans = 16'h785f;
	#20
	A = 16'h5991;
	B = 16'h5843;
	ans = 16'h75ee;
	#20
	A = 16'hd746;
	B = 16'h5863;
	ans = 16'hf3fa;
	#20
	A = 16'h5a9f;
	B = 16'h5a65;
	ans = 16'h794b;
	#20
	A = 16'hd8b4;
	B = 16'h5403;
	ans = 16'hf0b8;
	#20
	A = 16'hd96c;
	B = 16'h5a47;
	ans = 16'hf841;
	#20
	A = 16'h5847;
	B = 16'h597b;
	ans = 16'h75dc;
	#20
	A = 16'h5557;
	B = 16'h5899;
	ans = 16'h7223;
	#20
	A = 16'hd99e;
	B = 16'h5623;
	ans = 16'hf44f;
	#20
	A = 16'h545b;
	B = 16'hd3e2;
	ans = 16'hec4b;
	#20
	A = 16'hd817;
	B = 16'h58b2;
	ans = 16'hf4cd;
	#20
	A = 16'hc974;
	B = 16'hd4a7;
	ans = 16'h6258;
	#20
	A = 16'h53ac;
	B = 16'hd649;
	ans = 16'hee07;
	#20
	A = 16'h5aa7;
	B = 16'hd99d;
	ans = 16'hf8ab;
	#20
	A = 16'hdbe3;
	B = 16'h59a4;
	ans = 16'hf990;
	#20
	A = 16'h58d4;
	B = 16'h59e3;
	ans = 16'h771b;
	#20
	A = 16'h5a7c;
	B = 16'hd5b4;
	ans = 16'hf49f;
	#20
	A = 16'h55a2;
	B = 16'h59f2;
	ans = 16'h7430;
	#20
	A = 16'h593e;
	B = 16'h59e9;
	ans = 16'h77bf;
	#20
	A = 16'hd4c1;
	B = 16'hd676;
	ans = 16'h6fae;
	#20
	A = 16'h4ce8;
	B = 16'h5882;
	ans = 16'h6987;
	#20
	A = 16'hdbad;
	B = 16'h5718;
	ans = 16'hf6ce;
	#20
	A = 16'h5a16;
	B = 16'h5b0b;
	ans = 16'h795c;
	#20
	A = 16'h542f;
	B = 16'hcb5a;
	ans = 16'he3b0;
	#20
	A = 16'h591a;
	B = 16'hd46c;
	ans = 16'hf1a4;
	#20
	A = 16'h5898;
	B = 16'h554e;
	ans = 16'h7218;
	#20
	A = 16'hd0b2;
	B = 16'hd88d;
	ans = 16'h6d58;
	#20
	A = 16'h5904;
	B = 16'h5043;
	ans = 16'h6d58;
	#20
	A = 16'hd935;
	B = 16'h55f5;
	ans = 16'hf3c1;
	#20
	A = 16'h5b6c;
	B = 16'h5b3d;
	ans = 16'h7ab7;
	#20
	A = 16'h5a97;
	B = 16'h57a1;
	ans = 16'h7649;
	#20
	A = 16'h59f7;
	B = 16'h55e1;
	ans = 16'h7462;
	#20
	A = 16'hd9c2;
	B = 16'h5856;
	ans = 16'hf63e;
	#20
	A = 16'hd9f0;
	B = 16'hd27a;
	ans = 16'h70cf;
	#20
	A = 16'h5a98;
	B = 16'hcaac;
	ans = 16'he980;
	#20
	A = 16'hd89e;
	B = 16'h569f;
	ans = 16'hf3a5;
	#20
	A = 16'h58c7;
	B = 16'h5bf6;
	ans = 16'h78c1;
	#20
	A = 16'hdaf3;
	B = 16'h4f05;
	ans = 16'hee19;
	#20
	A = 16'h543b;
	B = 16'h59e5;
	ans = 16'h723c;
	#20
	A = 16'hdb44;
	B = 16'h56a0;
	ans = 16'hf604;
	#20
	A = 16'h5674;
	B = 16'h5b85;
	ans = 16'h7611;
	#20
	A = 16'hdb46;
	B = 16'hcef3;
	ans = 16'h6e51;
	#20
	A = 16'h5bde;
	B = 16'hd98f;
	ans = 16'hf977;
	#20
	A = 16'hd13c;
	B = 16'hd697;
	ans = 16'h6c50;
	#20
	A = 16'h54a6;
	B = 16'hdb87;
	ans = 16'hf460;
	#20
	A = 16'hdaee;
	B = 16'h5aa1;
	ans = 16'hf9be;
	#20
	A = 16'h57b5;
	B = 16'h59b7;
	ans = 16'h7581;
	#20
	A = 16'hd976;
	B = 16'hda06;
	ans = 16'h781d;
	#20
	A = 16'hcd2b;
	B = 16'hd95c;
	ans = 16'h6aed;
	#20
	A = 16'hd74e;
	B = 16'h5b29;
	ans = 16'hf68a;
	#20
	A = 16'h5ab2;
	B = 16'h55a3;
	ans = 16'h74b8;
	#20
	A = 16'h5886;
	B = 16'h574d;
	ans = 16'h7421;
	#20
	A = 16'hd606;
	B = 16'h5a30;
	ans = 16'hf4a9;
	#20
	A = 16'h5bb9;
	B = 16'h5725;
	ans = 16'h76e6;
	#20
	A = 16'h5bda;
	B = 16'hd488;
	ans = 16'hf472;
	#20
	A = 16'h5aaf;
	B = 16'h547d;
	ans = 16'h7380;
	#20
	A = 16'h59bb;
	B = 16'hd6de;
	ans = 16'hf4eb;
	#20
	A = 16'h5b37;
	B = 16'hdb62;
	ans = 16'hfaa9;
	#20
	A = 16'hc6a2;
	B = 16'h4e8c;
	ans = 16'hd96e;
	#20
	A = 16'hd4f5;
	B = 16'hcdf3;
	ans = 16'h675f;
	#20
	A = 16'h5980;
	B = 16'hd88b;
	ans = 16'hf63f;
	#20
	A = 16'h54ad;
	B = 16'hd8ed;
	ans = 16'hf1c2;
	#20
	A = 16'h595f;
	B = 16'hcccb;
	ans = 16'hea70;
	#20
	A = 16'h576d;
	B = 16'h4c97;
	ans = 16'h6843;
	#20
	A = 16'hdbaa;
	B = 16'h56c7;
	ans = 16'hf67e;
	#20
	A = 16'h5521;
	B = 16'hda28;
	ans = 16'hf3e5;
	#20
	A = 16'h5b17;
	B = 16'hcf17;
	ans = 16'hee49;
	#20
	A = 16'hda74;
	B = 16'h550b;
	ans = 16'hf411;
	#20
	A = 16'hd733;
	B = 16'hdb49;
	ans = 16'h768e;
	#20
	A = 16'hd94b;
	B = 16'hd39b;
	ans = 16'h7108;
	#20
	A = 16'h5b07;
	B = 16'hd832;
	ans = 16'hf75f;
	#20
	A = 16'hd719;
	B = 16'h5674;
	ans = 16'hf1ba;
	#20
	A = 16'hdabf;
	B = 16'h56dd;
	ans = 16'hf5ca;
	#20
	A = 16'h54b1;
	B = 16'h5375;
	ans = 16'h6c5f;
	#20
	A = 16'h5a2e;
	B = 16'hda27;
	ans = 16'hf8c1;
	#20
	A = 16'hd801;
	B = 16'h5704;
	ans = 16'hf306;
	#20
	A = 16'hd75c;
	B = 16'hcc46;
	ans = 16'h67dd;
	#20
	A = 16'h5537;
	B = 16'hd4be;
	ans = 16'hee2f;
	#20
	A = 16'h5a26;
	B = 16'h5b65;
	ans = 16'h79af;
	#20
	A = 16'h590c;
	B = 16'hdb84;
	ans = 16'hf8be;
	#20
	A = 16'h57ba;
	B = 16'h5972;
	ans = 16'h7542;
	#20
	A = 16'h554a;
	B = 16'hda22;
	ans = 16'hf40e;
	#20
	A = 16'h545a;
	B = 16'hdbe3;
	ans = 16'hf44a;
	#20
	A = 16'hd299;
	B = 16'h5707;
	ans = 16'hedcc;
	#20
	A = 16'h5290;
	B = 16'hd7cb;
	ans = 16'hee65;
	#20
	A = 16'hc43f;
	B = 16'h5838;
	ans = 16'he07a;
	#20
	A = 16'h524f;
	B = 16'h58c8;
	ans = 16'h6f8a;
	#20
	A = 16'h5656;
	B = 16'h54d1;
	ans = 16'h6fa1;
	#20
	A = 16'hd823;
	B = 16'hc5d9;
	ans = 16'h620c;
	#20
	A = 16'h5bcc;
	B = 16'h5aa9;
	ans = 16'h7a7e;
	#20
	A = 16'hdb8a;
	B = 16'hc28d;
	ans = 16'h622c;
	#20
	A = 16'h5156;
	B = 16'hdbcd;
	ans = 16'hf134;
	#20
	A = 16'hdbce;
	B = 16'h5a0f;
	ans = 16'hf9e9;
	#20
	A = 16'h58e7;
	B = 16'hd5f8;
	ans = 16'hf351;
	#20
	A = 16'h4fc9;
	B = 16'hdbd5;
	ans = 16'hef9f;
	#20
	A = 16'h59ca;
	B = 16'h5ba2;
	ans = 16'h7986;
	#20
	A = 16'h5b3d;
	B = 16'h4f21;
	ans = 16'h6e73;
	#20
	A = 16'hd659;
	B = 16'h59ff;
	ans = 16'hf4c2;
	#20
	A = 16'h59c0;
	B = 16'h59f7;
	ans = 16'h784a;
	#20
	A = 16'h55ff;
	B = 16'h4946;
	ans = 16'h63e8;
	#20
	A = 16'hd869;
	B = 16'hd9bc;
	ans = 16'h7653;
	#20
	A = 16'h54f9;
	B = 16'h56f9;
	ans = 16'h7056;
	#20
	A = 16'h5995;
	B = 16'h5b17;
	ans = 16'h78f2;
	#20
	A = 16'h59db;
	B = 16'hd519;
	ans = 16'hf376;
	#20
	A = 16'hdabe;
	B = 16'hd96e;
	ans = 16'h7893;
	#20
	A = 16'hcda0;
	B = 16'hd977;
	ans = 16'h6baf;
	#20
	A = 16'h4b9a;
	B = 16'hcbe8;
	ans = 16'hdb83;
	#20
	A = 16'h526b;
	B = 16'h4a69;
	ans = 16'h6124;
	#20
	A = 16'h5603;
	B = 16'h589a;
	ans = 16'h72ea;
	#20
	A = 16'h5272;
	B = 16'h5ae9;
	ans = 16'h7191;
	#20
	A = 16'h3d60;
	B = 16'hd8c7;
	ans = 16'hda6b;
	#20
	A = 16'h5a8a;
	B = 16'hd1e3;
	ans = 16'hf0d0;
	#20
	A = 16'hdacc;
	B = 16'h5693;
	ans = 16'hf596;
	#20
	A = 16'hdbce;
	B = 16'hda97;
	ans = 16'h7a6e;
	#20
	A = 16'h561a;
	B = 16'hd855;
	ans = 16'hf29c;
	#20
	A = 16'hd01b;
	B = 16'h4be9;
	ans = 16'he00f;
	#20
	A = 16'hcd0b;
	B = 16'hd424;
	ans = 16'h6538;
	#20
	A = 16'hd1a7;
	B = 16'h5111;
	ans = 16'he729;
	#20
	A = 16'hd6de;
	B = 16'h584d;
	ans = 16'hf362;
	#20
	A = 16'hd922;
	B = 16'h54a6;
	ans = 16'hf1f7;
	#20
	A = 16'hd593;
	B = 16'h552f;
	ans = 16'hef39;
	#20
	A = 16'hd91c;
	B = 16'hb2cf;
	ans = 16'h5059;
	#20
	A = 16'h57bc;
	B = 16'hd8ac;
	ans = 16'hf484;
	#20
	A = 16'h5782;
	B = 16'hd88b;
	ans = 16'hf443;
	#20
	A = 16'h5461;
	B = 16'hd707;
	ans = 16'hefb1;
	#20
	A = 16'hd81d;
	B = 16'h5a7e;
	ans = 16'hf6ad;
	#20
	A = 16'hd809;
	B = 16'hda6a;
	ans = 16'h7678;
	#20
	A = 16'hd2f2;
	B = 16'hd40e;
	ans = 16'h6b0a;
	#20
	A = 16'hd904;
	B = 16'hd93e;
	ans = 16'h7693;
	#20
	A = 16'hd7c0;
	B = 16'hd772;
	ans = 16'h7336;
	#20
	A = 16'hced5;
	B = 16'hd9fa;
	ans = 16'h6d1b;
	#20
	A = 16'h5b56;
	B = 16'h5a81;
	ans = 16'h79f7;
	#20
	A = 16'hd946;
	B = 16'hda48;
	ans = 16'h7824;
	#20
	A = 16'hda01;
	B = 16'hd802;
	ans = 16'h7604;
	#20
	A = 16'h5b05;
	B = 16'h587d;
	ans = 16'h77e0;
	#20
	A = 16'hd560;
	B = 16'h547d;
	ans = 16'hee08;
	#20
	A = 16'h5821;
	B = 16'hcf90;
	ans = 16'hebce;
	#20
	A = 16'h4c96;
	B = 16'hd296;
	ans = 16'he38d;
	#20
	A = 16'h4921;
	B = 16'hdbeb;
	ans = 16'he914;
	#20
	A = 16'hd4c5;
	B = 16'h5835;
	ans = 16'hf104;
	#20
	A = 16'hda7d;
	B = 16'h5a82;
	ans = 16'hf947;
	#20
	A = 16'hd9dc;
	B = 16'hd76e;
	ans = 16'h7571;
	#20
	A = 16'h4430;
	B = 16'hda50;
	ans = 16'he29c;
	#20
	A = 16'h56fa;
	B = 16'h592d;
	ans = 16'h7483;
	#20
	A = 16'hcb84;
	B = 16'h5bb3;
	ans = 16'heb3c;
	#20
	A = 16'h587c;
	B = 16'hd8df;
	ans = 16'hf576;
	#20
	A = 16'h5586;
	B = 16'hbe64;
	ans = 16'hd86a;
	#20
	A = 16'h53a1;
	B = 16'h56e5;
	ans = 16'h6e93;
	#20
	A = 16'hdac8;
	B = 16'h592c;
	ans = 16'hf862;
	#20
	A = 16'hdbd3;
	B = 16'hd8e2;
	ans = 16'h78c7;
	#20
	A = 16'hd9cf;
	B = 16'h5992;
	ans = 16'hf80b;
	#20
	A = 16'hd8f4;
	B = 16'h5871;
	ans = 16'hf580;
	#20
	A = 16'h5634;
	B = 16'h5659;
	ans = 16'h70ec;
	#20
	A = 16'h58ab;
	B = 16'h5805;
	ans = 16'h74b1;
	#20
	A = 16'hdbea;
	B = 16'h5a6d;
	ans = 16'hfa5b;
	#20
	A = 16'h536c;
	B = 16'hd9a8;
	ans = 16'hf13f;
	#20
	A = 16'hd562;
	B = 16'h5a1a;
	ans = 16'hf41b;
	#20
	A = 16'hd3ac;
	B = 16'h535a;
	ans = 16'heb0d;
	#20
	A = 16'hd4e4;
	B = 16'h50d8;
	ans = 16'he9ec;
	#20
	A = 16'h564a;
	B = 16'hd628;
	ans = 16'hf0d7;
	#20
	A = 16'h5b55;
	B = 16'h5a67;
	ans = 16'h79de;
	#20
	A = 16'h5470;
	B = 16'h5780;
	ans = 16'h7029;
	#20
	A = 16'hd5d9;
	B = 16'hd21f;
	ans = 16'h6c79;
	#20
	A = 16'hdacb;
	B = 16'h5949;
	ans = 16'hf87d;
	#20
	A = 16'h5940;
	B = 16'hda8e;
	ans = 16'hf84d;
	#20
	A = 16'hcfc8;
	B = 16'hda2e;
	ans = 16'h6e03;
	#20
	A = 16'h5bc8;
	B = 16'hd8b9;
	ans = 16'hf898;
	#20
	A = 16'hcc51;
	B = 16'hda1f;
	ans = 16'h6a9b;
	#20
	A = 16'hd8ec;
	B = 16'hca34;
	ans = 16'h67a2;
	#20
	A = 16'hda39;
	B = 16'hd63c;
	ans = 16'h74d9;
	#20
	A = 16'h5ae6;
	B = 16'hd978;
	ans = 16'hf8b7;
	#20
	A = 16'hcfbc;
	B = 16'hd897;
	ans = 16'h6c70;
	#20
	A = 16'h54b2;
	B = 16'hd5d7;
	ans = 16'heedb;
	#20
	A = 16'h5b52;
	B = 16'h5af5;
	ans = 16'h7a5e;
	#20
	A = 16'h50c0;
	B = 16'h5928;
	ans = 16'h6e20;
	#20
	A = 16'h5739;
	B = 16'h5ac8;
	ans = 16'h761f;
	#20
	A = 16'hdb68;
	B = 16'h5a8c;
	ans = 16'hfa10;
	#20
	A = 16'hd851;
	B = 16'hcdc6;
	ans = 16'h6a3b;
	#20
	A = 16'h59d2;
	B = 16'h5828;
	ans = 16'h760c;
	#20
	A = 16'hd996;
	B = 16'h4f6a;
	ans = 16'hed2d;
	#20
	A = 16'hdad5;
	B = 16'h5bb5;
	ans = 16'hfa95;
	#20
	A = 16'hd149;
	B = 16'h5237;
	ans = 16'he81b;
	#20
	A = 16'h552c;
	B = 16'hd98a;
	ans = 16'hf329;
	#20
	A = 16'hd9c9;
	B = 16'hdacc;
	ans = 16'h78ea;
	#20
	A = 16'hd89d;
	B = 16'hd9c9;
	ans = 16'h76ac;
	#20
	A = 16'h5b57;
	B = 16'hd861;
	ans = 16'hf804;
	#20
	A = 16'h5675;
	B = 16'h57aa;
	ans = 16'h7230;
	#20
	A = 16'h569c;
	B = 16'hd807;
	ans = 16'hf2a8;
	#20
	A = 16'hd44e;
	B = 16'hd0f2;
	ans = 16'h6952;
	#20
	A = 16'h55cf;
	B = 16'hd784;
	ans = 16'hf175;
	#20
	A = 16'hd9da;
	B = 16'h5bd6;
	ans = 16'hf9bb;
	#20
	A = 16'h5605;
	B = 16'h5aa1;
	ans = 16'h74fd;
	#20
	A = 16'h5b5e;
	B = 16'h4f9c;
	ans = 16'h6f02;
	#20
	A = 16'h537d;
	B = 16'h5102;
	ans = 16'h68b0;
	#20
	A = 16'hd7e2;
	B = 16'hd936;
	ans = 16'h7522;
	#20
	A = 16'hd909;
	B = 16'hd682;
	ans = 16'h7419;
	#20
	A = 16'h58a4;
	B = 16'h5b1e;
	ans = 16'h7821;
	#20
	A = 16'hdafa;
	B = 16'hda3c;
	ans = 16'h7970;
	#20
	A = 16'hd7af;
	B = 16'hd99b;
	ans = 16'h7562;
	#20
	A = 16'hd67f;
	B = 16'hdb47;
	ans = 16'h75e9;
	#20
	A = 16'hcade;
	B = 16'hd45e;
	ans = 16'h637f;
	#20
	A = 16'h53f1;
	B = 16'hd499;
	ans = 16'hec90;
	#20
	A = 16'h57fb;
	B = 16'hd46e;
	ans = 16'hf06b;
	#20
	A = 16'h5ba1;
	B = 16'h50f5;
	ans = 16'h70ba;
	#20
	A = 16'hd7fc;
	B = 16'h5780;
	ans = 16'hf37c;
	#20
	A = 16'hdacf;
	B = 16'h55bd;
	ans = 16'hf4e2;
	#20
	A = 16'hd8e6;
	B = 16'hdaaa;
	ans = 16'h7815;
	#20
	A = 16'h4a73;
	B = 16'h590d;
	ans = 16'h6812;
	#20
	A = 16'h5607;
	B = 16'h59c9;
	ans = 16'h745c;
	#20
	A = 16'hd4fa;
	B = 16'hd463;
	ans = 16'h6d75;
	#20
	A = 16'h58aa;
	B = 16'h5348;
	ans = 16'h703f;
	#20
	A = 16'hda95;
	B = 16'hd873;
	ans = 16'h7752;
	#20
	A = 16'h5861;
	B = 16'h5089;
	ans = 16'h6cf7;
	#20
	A = 16'h5b39;
	B = 16'h567c;
	ans = 16'h75db;
	#20
	A = 16'hdbd9;
	B = 16'hcd32;
	ans = 16'h6d19;
	#20
	A = 16'h589f;
	B = 16'hd5ec;
	ans = 16'hf2d7;
	#20
	A = 16'h5b6e;
	B = 16'hda83;
	ans = 16'hfa0c;
	#20
	A = 16'h57f2;
	B = 16'hdbb9;
	ans = 16'hf7ab;
	#20
	A = 16'hce36;
	B = 16'h5915;
	ans = 16'hebe4;
	#20
	A = 16'hda1e;
	B = 16'hdbe8;
	ans = 16'h7a0c;
	#20
	A = 16'hd9c2;
	B = 16'hd8b7;
	ans = 16'h76c9;
	#20
	A = 16'h5262;
	B = 16'h58d7;
	ans = 16'h6fb9;
	#20
	A = 16'hd045;
	B = 16'h5892;
	ans = 16'hece1;
	#20
	A = 16'h5aaa;
	B = 16'hd59c;
	ans = 16'hf4ac;
	#20
	A = 16'hcde1;
	B = 16'h5aab;
	ans = 16'hece6;
	#20
	A = 16'hd680;
	B = 16'h59c5;
	ans = 16'hf4b0;
	#20
	A = 16'h5491;
	B = 16'h4bbe;
	ans = 16'h646b;
	#20
	A = 16'hd310;
	B = 16'hd47c;
	ans = 16'h6beb;
	#20
	A = 16'hd545;
	B = 16'h525b;
	ans = 16'hec30;
	#20
	A = 16'h5465;
	B = 16'hd8fa;
	ans = 16'hf178;
	#20
	A = 16'hdb6e;
	B = 16'h55d9;
	ans = 16'hf56e;
	#20
	A = 16'hc821;
	B = 16'h59ea;
	ans = 16'he61b;
	#20
	A = 16'h5576;
	B = 16'hdaf0;
	ans = 16'hf4bc;
	#20
	A = 16'hdb9e;
	B = 16'h5487;
	ans = 16'hf450;
	#20
	A = 16'hd25b;
	B = 16'h597f;
	ans = 16'hf05e;
	#20
	A = 16'hd014;
	B = 16'hd98b;
	ans = 16'h6da7;
	#20
	A = 16'hd97a;
	B = 16'h5364;
	ans = 16'hf10f;
	#20
	A = 16'h509e;
	B = 16'hd464;
	ans = 16'he911;
	#20
	A = 16'hda59;
	B = 16'h561f;
	ans = 16'hf4db;
	#20
	A = 16'hd104;
	B = 16'h585a;
	ans = 16'hed75;
	#20
	A = 16'hda86;
	B = 16'h58f5;
	ans = 16'hf80b;
	#20
	A = 16'hc6c4;
	B = 16'h5994;
	ans = 16'he4b8;
	#20
	A = 16'hd920;
	B = 16'hd0b6;
	ans = 16'h6e09;
	#20
	A = 16'hda98;
	B = 16'hcd81;
	ans = 16'h6c89;
	#20
	A = 16'hda22;
	B = 16'hdb73;
	ans = 16'h79b6;
	#20
	A = 16'hd807;
	B = 16'hd7d9;
	ans = 16'h73e7;
	#20
	A = 16'hd982;
	B = 16'h5790;
	ans = 16'hf535;
	#20
	A = 16'hd073;
	B = 16'hd78e;
	ans = 16'h6c34;
	#20
	A = 16'h598a;
	B = 16'h5b0e;
	ans = 16'h78e2;
	#20
	A = 16'hdb23;
	B = 16'h5619;
	ans = 16'hf571;
	#20
	A = 16'hd576;
	B = 16'h4b3b;
	ans = 16'he4f0;
	#20
	A = 16'h540f;
	B = 16'h5776;
	ans = 16'h6f92;
	#20
	A = 16'h5b58;
	B = 16'hd393;
	ans = 16'hf2f4;
	#20
	A = 16'hcf66;
	B = 16'hdabd;
	ans = 16'h6e3b;
	#20
	A = 16'h4bdf;
	B = 16'h59d7;
	ans = 16'h69bf;
	#20
	A = 16'hd851;
	B = 16'hbc9e;
	ans = 16'h58fb;
	#20
	A = 16'h5916;
	B = 16'h591f;
	ans = 16'h7683;
	#20
	A = 16'h5790;
	B = 16'h5435;
	ans = 16'h6ff4;
	#20
	A = 16'h5a43;
	B = 16'h59ee;
	ans = 16'h78a4;
	#20
	A = 16'hd1fd;
	B = 16'h4f9b;
	ans = 16'he5b1;
	#20
	A = 16'h59d6;
	B = 16'hd682;
	ans = 16'hf4bf;
	#20
	A = 16'hd7da;
	B = 16'h5bce;
	ans = 16'hf7a9;
	#20
	A = 16'hd3a7;
	B = 16'hdafb;
	ans = 16'h72ad;
	#20
	A = 16'hd0b6;
	B = 16'hdbca;
	ans = 16'h7096;
	#20
	A = 16'h4cd5;
	B = 16'h565a;
	ans = 16'h67ac;
	#20
	A = 16'h5340;
	B = 16'hcb26;
	ans = 16'he27a;
	#20
	A = 16'hd5cf;
	B = 16'h56ec;
	ans = 16'hf107;
	#20
	A = 16'hd9bd;
	B = 16'hd7d1;
	ans = 16'h759b;
	#20
	A = 16'hda05;
	B = 16'hda71;
	ans = 16'h78d9;
	#20
	A = 16'hda38;
	B = 16'hd19b;
	ans = 16'h705b;
	#20
	A = 16'h4c6d;
	B = 16'hd94f;
	ans = 16'he9e0;
	#20
	A = 16'h5823;
	B = 16'h59b2;
	ans = 16'h75e4;
	#20
	A = 16'h59d1;
	B = 16'h4a6f;
	ans = 16'h68ad;
	#20
	A = 16'h577d;
	B = 16'h586c;
	ans = 16'h7424;
	#20
	A = 16'h543c;
	B = 16'hd470;
	ans = 16'hecb3;
	#20
	A = 16'hd4c1;
	B = 16'hd623;
	ans = 16'h6f4b;
	#20
	A = 16'h57ed;
	B = 16'hd231;
	ans = 16'hee22;
	#20
	A = 16'h551f;
	B = 16'hda38;
	ans = 16'hf3f6;
	#20
	A = 16'hdb7f;
	B = 16'hd4c0;
	ans = 16'h7473;
	#20
	A = 16'hdbb2;
	B = 16'h55bf;
	ans = 16'hf587;
	#20
	A = 16'h57c7;
	B = 16'hd72e;
	ans = 16'hf2fb;
	#20
	A = 16'hcf91;
	B = 16'h5508;
	ans = 16'he8c2;
	#20
	A = 16'h5649;
	B = 16'h5b02;
	ans = 16'h7581;
	#20
	A = 16'hdaf5;
	B = 16'hc805;
	ans = 16'h66fe;
	#20
	A = 16'hd74f;
	B = 16'hdb13;
	ans = 16'h7676;
	#20
	A = 16'hdb37;
	B = 16'hd542;
	ans = 16'h74be;
	#20
	A = 16'hd8b1;
	B = 16'hd5e0;
	ans = 16'h72e4;
	#20
	A = 16'hdab5;
	B = 16'h4bc9;
	ans = 16'hea87;
	#20
	A = 16'hdbec;
	B = 16'hda61;
	ans = 16'h7a51;
	#20
	A = 16'h576e;
	B = 16'h4cdd;
	ans = 16'h6884;
	#20
	A = 16'hdb97;
	B = 16'hdb0d;
	ans = 16'h7ab0;
	#20
	A = 16'h5a61;
	B = 16'hd75c;
	ans = 16'hf5de;
	#20
	A = 16'h58f9;
	B = 16'h5a3a;
	ans = 16'h77be;
	#20
	A = 16'h557c;
	B = 16'hd864;
	ans = 16'hf205;
	#20
	A = 16'hdbf6;
	B = 16'hda5e;
	ans = 16'h7a56;
	#20
	A = 16'h5817;
	B = 16'hdb90;
	ans = 16'hf7bb;
	#20
	A = 16'hccda;
	B = 16'h5585;
	ans = 16'he6b2;
	#20
	A = 16'h5934;
	B = 16'h51b7;
	ans = 16'h6f6f;
	#20
	A = 16'hd23c;
	B = 16'h5a22;
	ans = 16'hf0c7;
	#20
	A = 16'h5928;
	B = 16'h5873;
	ans = 16'h75bc;
	#20
	A = 16'h5931;
	B = 16'h5527;
	ans = 16'h72b0;
	#20
	A = 16'h55f9;
	B = 16'hd95e;
	ans = 16'hf402;
	#20
	A = 16'h5bbe;
	B = 16'h4d0a;
	ans = 16'h6ce0;
	#20
	A = 16'h5b64;
	B = 16'h561c;
	ans = 16'h75a5;
	#20
	A = 16'hda16;
	B = 16'h4c35;
	ans = 16'hea67;
	#20
	A = 16'hd5e5;
	B = 16'hda62;
	ans = 16'h74b4;
	#20
	A = 16'hd6eb;
	B = 16'h58fb;
	ans = 16'hf44f;
	#20
	A = 16'hc6db;
	B = 16'h53d5;
	ans = 16'hdeb6;
	#20
	A = 16'h59a3;
	B = 16'h5b38;
	ans = 16'h7916;
	#20
	A = 16'h56c8;
	B = 16'hda10;
	ans = 16'hf524;
	#20
	A = 16'h56f8;
	B = 16'hd2e4;
	ans = 16'hee01;
	#20
	A = 16'h5939;
	B = 16'hd58b;
	ans = 16'hf33d;
	#20
	A = 16'hdaa8;
	B = 16'hd40a;
	ans = 16'h72b9;
	#20
	A = 16'hd506;
	B = 16'hd96b;
	ans = 16'h72ce;
	#20
	A = 16'hd841;
	B = 16'h5b88;
	ans = 16'hf801;
	#20
	A = 16'h5407;
	B = 16'h5878;
	ans = 16'h7080;
	#20
	A = 16'hd85a;
	B = 16'hd96a;
	ans = 16'h75e4;
	#20
	A = 16'h596a;
	B = 16'h5424;
	ans = 16'h719b;
	#20
	A = 16'h552a;
	B = 16'hc6c9;
	ans = 16'he061;
	#20
	A = 16'hd4dc;
	B = 16'h5bcc;
	ans = 16'hf4bc;
	#20
	A = 16'h5be0;
	B = 16'hd046;
	ans = 16'hf035;
	#20
	A = 16'h5785;
	B = 16'hdb3e;
	ans = 16'hf6cf;
	#20
	A = 16'h5a35;
	B = 16'h52d8;
	ans = 16'h714f;
	#20
	A = 16'hcb93;
	B = 16'h5bec;
	ans = 16'heb80;
	#20
	A = 16'h54bf;
	B = 16'hd719;
	ans = 16'hf036;
	#20
	A = 16'h59de;
	B = 16'hd712;
	ans = 16'hf52f;
	#20
	A = 16'hd9f0;
	B = 16'h5765;
	ans = 16'hf57d;
	#20
	A = 16'hc992;
	B = 16'h57b6;
	ans = 16'he55e;
	#20
	A = 16'hdbb8;
	B = 16'h599f;
	ans = 16'hf96c;
	#20
	A = 16'h518a;
	B = 16'h58f7;
	ans = 16'h6ee0;
	#20
	A = 16'hda5a;
	B = 16'hd844;
	ans = 16'h76c6;
	#20
	A = 16'h58a9;
	B = 16'hd99a;
	ans = 16'hf687;
	#20
	A = 16'hd509;
	B = 16'h52dd;
	ans = 16'hec52;
	#20
	A = 16'hd491;
	B = 16'hd8a6;
	ans = 16'h714f;
	#20
	A = 16'hd4e2;
	B = 16'hd62a;
	ans = 16'h6f86;
	#20
	A = 16'hd4d7;
	B = 16'hd89d;
	ans = 16'h7195;
	#20
	A = 16'hdbad;
	B = 16'hdb92;
	ans = 16'h7b43;
	#20
	A = 16'h53b8;
	B = 16'h52e8;
	ans = 16'h6aaa;
	#20
	A = 16'hcf4e;
	B = 16'hd660;
	ans = 16'h69d2;
	#20
	A = 16'hd99c;
	B = 16'h5970;
	ans = 16'hf7a0;
	#20
	A = 16'h5621;
	B = 16'hd759;
	ans = 16'hf1a1;
	#20
	A = 16'h4ecb;
	B = 16'hd5f4;
	ans = 16'he90e;
	#20
	A = 16'h593d;
	B = 16'h578c;
	ans = 16'h74f1;
	#20
	A = 16'h543d;
	B = 16'h5653;
	ans = 16'h6eb3;
	#20
	A = 16'hd618;
	B = 16'hd829;
	ans = 16'h7256;
	#20
	A = 16'h4906;
	B = 16'h534c;
	ans = 16'h6095;
	#20
	A = 16'hd945;
	B = 16'h58b6;
	ans = 16'hf635;
	#20
	A = 16'h4b7c;
	B = 16'hd8ac;
	ans = 16'he85f;
	#20
	A = 16'hd77c;
	B = 16'hdb66;
	ans = 16'h76ec;
	#20
	A = 16'h5bee;
	B = 16'h558a;
	ans = 16'h757e;
	#20
	A = 16'h5ad2;
	B = 16'h5b2b;
	ans = 16'h7a1c;
	#20
	A = 16'hd9c9;
	B = 16'hd7ca;
	ans = 16'h75a2;
	#20
	A = 16'h46ed;
	B = 16'h524e;
	ans = 16'h5d75;
	#20
	A = 16'h36ef;
	B = 16'h4f9a;
	ans = 16'h4a97;
	#20
	A = 16'h56d4;
	B = 16'hd89f;
	ans = 16'hf3e3;
	#20
	A = 16'hda9b;
	B = 16'hda5e;
	ans = 16'h7942;
	#20
	A = 16'hcb7e;
	B = 16'hd088;
	ans = 16'h603e;
	#20
	A = 16'hcd2a;
	B = 16'hd7b6;
	ans = 16'h68fa;
	#20
	A = 16'h5bc8;
	B = 16'hd725;
	ans = 16'hf6f3;
	#20
	A = 16'h5648;
	B = 16'h4fca;
	ans = 16'h6a1e;
	#20
	A = 16'hd42b;
	B = 16'hda45;
	ans = 16'h7288;
	#20
	A = 16'h5942;
	B = 16'hd5bc;
	ans = 16'hf38a;
	#20
	A = 16'hcf09;
	B = 16'h595b;
	ans = 16'hecb6;
	#20
	A = 16'h509c;
	B = 16'h5858;
	ans = 16'h6d01;
	#20
	A = 16'h597d;
	B = 16'hda28;
	ans = 16'hf839;
	#20
	A = 16'hd949;
	B = 16'h57a4;
	ans = 16'hf50c;
	#20
	A = 16'h4d1b;
	B = 16'h5b9f;
	ans = 16'h6cdd;
	#20
	A = 16'h5baa;
	B = 16'h56ed;
	ans = 16'h76a3;
	#20
	A = 16'hcbd8;
	B = 16'h5b85;
	ans = 16'heb5f;
	#20
	A = 16'h47ed;
	B = 16'hd9b4;
	ans = 16'he5a6;
	#20
	A = 16'h50c2;
	B = 16'h5abd;
	ans = 16'h7002;
	#20
	A = 16'hd0f7;
	B = 16'hce7f;
	ans = 16'h6408;
	#20
	A = 16'hd6fa;
	B = 16'hd711;
	ans = 16'h722a;
	#20
	A = 16'hd5c1;
	B = 16'h593d;
	ans = 16'hf389;
	#20
	A = 16'h5384;
	B = 16'h5827;
	ans = 16'h6fcd;
	#20
	A = 16'h5b6f;
	B = 16'h5801;
	ans = 16'h7771;
	#20
	A = 16'h4fa5;
	B = 16'h5463;
	ans = 16'h6831;
	#20
	A = 16'h598e;
	B = 16'hd7da;
	ans = 16'hf574;
	#20
	A = 16'hcc7e;
	B = 16'h4df9;
	ans = 16'hdeb5;
	#20
	A = 16'hd5f7;
	B = 16'h56c9;
	ans = 16'hf10f;
	#20
	A = 16'h58f1;
	B = 16'hd921;
	ans = 16'hf656;
	#20
	A = 16'hdb8e;
	B = 16'hcaa8;
	ans = 16'h6a49;
	#20
	A = 16'h4eb3;
	B = 16'h5a00;
	ans = 16'h6d06;
	#20
	A = 16'h57dd;
	B = 16'hda25;
	ans = 16'hf60a;
	#20
	A = 16'h56b5;
	B = 16'hd146;
	ans = 16'hec6c;
	#20
	A = 16'h4037;
	B = 16'hda95;
	ans = 16'hdef0;
	#20
	A = 16'h59be;
	B = 16'h588d;
	ans = 16'h7688;
	#20
	A = 16'h4a18;
	B = 16'hd87d;
	ans = 16'he6d6;
	#20
	A = 16'hdb09;
	B = 16'h5a65;
	ans = 16'hf9a0;
	#20
	A = 16'h5904;
	B = 16'h57cb;
	ans = 16'h74e3;
	#20
	A = 16'hd203;
	B = 16'hd90b;
	ans = 16'h6f94;
	#20
	A = 16'hd93f;
	B = 16'h400a;
	ans = 16'hdd4c;
	#20
	A = 16'h54bc;
	B = 16'hd995;
	ans = 16'hf29b;
	#20
	A = 16'hdbe1;
	B = 16'hd45e;
	ans = 16'h744d;
	#20
	A = 16'hda65;
	B = 16'hd87e;
	ans = 16'h772e;
	#20
	A = 16'hd91c;
	B = 16'hdb8f;
	ans = 16'h78d4;
	#20
	A = 16'hd7d1;
	B = 16'hd8ff;
	ans = 16'h74e2;
	#20
	A = 16'hd420;
	B = 16'hc89c;
	ans = 16'h60c1;
	#20
	A = 16'hca5c;
	B = 16'h5915;
	ans = 16'he80a;
	#20
	A = 16'hd0ab;
	B = 16'h5918;
	ans = 16'hedf2;
	#20
	A = 16'hd43d;
	B = 16'h5a5c;
	ans = 16'hf2bd;
	#20
	A = 16'hd8d6;
	B = 16'h59d5;
	ans = 16'hf70d;
	#20
	A = 16'hd7eb;
	B = 16'h5456;
	ans = 16'hf04b;
	#20
	A = 16'hd8da;
	B = 16'h5946;
	ans = 16'hf665;
	#20
	A = 16'hd3af;
	B = 16'h55ef;
	ans = 16'hedb3;
	#20
	A = 16'h5b95;
	B = 16'hc973;
	ans = 16'he92a;
	#20
	A = 16'hcca6;
	B = 16'hdb9a;
	ans = 16'h6c6b;
	#20
	A = 16'hd82d;
	B = 16'hd97a;
	ans = 16'h75b8;
	#20
	A = 16'h56de;
	B = 16'hda9a;
	ans = 16'hf5ab;
	#20
	A = 16'hd9a9;
	B = 16'h4449;
	ans = 16'he210;
	#20
	A = 16'hd864;
	B = 16'h58d9;
	ans = 16'hf552;
	#20
	A = 16'hd948;
	B = 16'hda10;
	ans = 16'h7801;
	#20
	A = 16'h50cc;
	B = 16'h5b54;
	ans = 16'h7065;
	#20
	A = 16'h4da3;
	B = 16'h5b70;
	ans = 16'h6d3e;
	#20
	A = 16'hd500;
	B = 16'h5802;
	ans = 16'hf102;
	#20
	A = 16'hd938;
	B = 16'hd341;
	ans = 16'h70bb;
	#20
	A = 16'hd4d2;
	B = 16'h4ec1;
	ans = 16'he812;
	#20
	A = 16'h51e9;
	B = 16'h5449;
	ans = 16'h6a55;
	#20
	A = 16'h576d;
	B = 16'h5512;
	ans = 16'h70b5;
	#20
	A = 16'hd920;
	B = 16'h599a;
	ans = 16'hf72d;
	#20
	A = 16'hdb84;
	B = 16'h5ad8;
	ans = 16'hfa6e;
	#20
	A = 16'h41d1;
	B = 16'h59f1;
	ans = 16'h6052;
	#20
	A = 16'h4c53;
	B = 16'hda40;
	ans = 16'heac2;
	#20
	A = 16'hccec;
	B = 16'hbcf6;
	ans = 16'h4e1b;
	#20
	A = 16'hdbf3;
	B = 16'h5a14;
	ans = 16'hfa0a;
	#20
	A = 16'hd920;
	B = 16'h5b14;
	ans = 16'hf889;
	#20
	A = 16'hd8db;
	B = 16'h54a7;
	ans = 16'hf1a6;
	#20
	A = 16'hd7d3;
	B = 16'h4c26;
	ans = 16'he80f;
	#20
	A = 16'h5113;
	B = 16'h59e3;
	ans = 16'h6f78;
	#20
	A = 16'h4651;
	B = 16'hd95f;
	ans = 16'he43e;
	#20
	A = 16'h52aa;
	B = 16'hdad5;
	ans = 16'hf1b1;
	#20
	A = 16'hd829;
	B = 16'hd9f6;
	ans = 16'h7633;
	#20
	A = 16'hcfae;
	B = 16'hd9db;
	ans = 16'h6d9f;
	#20
	A = 16'h5722;
	B = 16'h4bcc;
	ans = 16'h66f4;
	#20
	A = 16'hd83b;
	B = 16'hd532;
	ans = 16'h717f;
	#20
	A = 16'hd8ef;
	B = 16'hcd47;
	ans = 16'h6a82;
	#20
	A = 16'h46d2;
	B = 16'hd9aa;
	ans = 16'he4d4;
	#20
	A = 16'hdbc4;
	B = 16'h47ee;
	ans = 16'he7b3;
	#20
	A = 16'hd83e;
	B = 16'h592b;
	ans = 16'hf57b;
	#20
	A = 16'h5bd1;
	B = 16'hc822;
	ans = 16'he80a;
	#20
	A = 16'h585a;
	B = 16'hd919;
	ans = 16'hf58c;
	#20
	A = 16'hda5e;
	B = 16'hdbb5;
	ans = 16'h7a22;
	#20
	A = 16'hd6d8;
	B = 16'h5350;
	ans = 16'hee41;
	#20
	A = 16'hd878;
	B = 16'h5873;
	ans = 16'hf4f8;
	#20
	A = 16'h4f50;
	B = 16'h5b9d;
	ans = 16'h6ef6;
	#20
	A = 16'hd96e;
	B = 16'hd5c8;
	ans = 16'h73d9;
	#20
	A = 16'h5899;
	B = 16'hd16d;
	ans = 16'hee3d;
	#20
	A = 16'hd226;
	B = 16'h543c;
	ans = 16'hea82;
	#20
	A = 16'hd172;
	B = 16'hd378;
	ans = 16'h6915;
	#20
	A = 16'h5859;
	B = 16'h59dd;
	ans = 16'h765f;
	#20
	A = 16'hda6e;
	B = 16'hd9de;
	ans = 16'h78b7;
	#20
	A = 16'h499f;
	B = 16'hd952;
	ans = 16'he77a;
	#20
	A = 16'hdae9;
	B = 16'hd730;
	ans = 16'h7635;
	#20
	A = 16'hd509;
	B = 16'h4a6b;
	ans = 16'he40a;
	#20
	A = 16'h552d;
	B = 16'h5acb;
	ans = 16'h7465;
	#20
	A = 16'h4ceb;
	B = 16'h59f3;
	ans = 16'h6b51;
	#20
	A = 16'hda9c;
	B = 16'hcdc3;
	ans = 16'h6cc3;
	#20
	A = 16'hdb1d;
	B = 16'h59ab;
	ans = 16'hf90a;
	#20
	A = 16'hd1a4;
	B = 16'hda66;
	ans = 16'h7083;
	#20
	A = 16'h5a10;
	B = 16'h54d7;
	ans = 16'h7356;
	#20
	A = 16'hd080;
	B = 16'hd6c1;
	ans = 16'h6b99;
	#20
	A = 16'hdbdf;
	B = 16'h56d7;
	ans = 16'hf6bb;
	#20
	A = 16'hd688;
	B = 16'h5b15;
	ans = 16'hf5c8;
	#20
	A = 16'hda72;
	B = 16'hc927;
	ans = 16'h6827;
	#20
	A = 16'h58df;
	B = 16'hdb6e;
	ans = 16'hf886;
	#20
	A = 16'hda6e;
	B = 16'hdbe8;
	ans = 16'h7a5b;
	#20
	A = 16'hd928;
	B = 16'h5946;
	ans = 16'hf6cc;
	#20
	A = 16'hd194;
	B = 16'h5baf;
	ans = 16'hf15c;
	#20
	A = 16'hda2e;
	B = 16'h4a78;
	ans = 16'he8ff;
	#20
	A = 16'h5969;
	B = 16'hd955;
	ans = 16'hf736;
	#20
	A = 16'hd8b0;
	B = 16'h5bba;
	ans = 16'hf887;
	#20
	A = 16'h58fb;
	B = 16'hda98;
	ans = 16'hf81b;
	#20
	A = 16'h52cc;
	B = 16'hdb31;
	ans = 16'hf21c;
	#20
	A = 16'hd832;
	B = 16'h4a58;
	ans = 16'he6a7;
	#20
	A = 16'h590f;
	B = 16'h5706;
	ans = 16'h7471;
	#20
	A = 16'h5942;
	B = 16'h5ab7;
	ans = 16'h786a;
	#20
	A = 16'hd91a;
	B = 16'h567c;
	ans = 16'hf423;
	#20
	A = 16'hd980;
	B = 16'h42a2;
	ans = 16'he08f;
	#20
	A = 16'hd989;
	B = 16'hdb40;
	ans = 16'h7904;
	#20
	A = 16'hd9ff;
	B = 16'h5ac4;
	ans = 16'hf912;
	#20
	A = 16'h56ca;
	B = 16'h543c;
	ans = 16'h6f30;
	#20
	A = 16'hd7b4;
	B = 16'hd08c;
	ans = 16'h6c61;
	#20
	A = 16'hd8eb;
	B = 16'h522f;
	ans = 16'hef9a;
	#20
	A = 16'hcd9c;
	B = 16'hdaf1;
	ans = 16'h6cde;
	#20
	A = 16'h5515;
	B = 16'h58ab;
	ans = 16'h71ee;
	#20
	A = 16'hd249;
	B = 16'h597a;
	ans = 16'hf04d;
	#20
	A = 16'h5908;
	B = 16'h565d;
	ans = 16'h7400;
	#20
	A = 16'hd9ef;
	B = 16'hdada;
	ans = 16'h7915;
	#20
	A = 16'h3960;
	B = 16'h5493;
	ans = 16'h5226;
	#20
	A = 16'hd678;
	B = 16'hdac1;
	ans = 16'h7576;
	#20
	A = 16'hda1b;
	B = 16'hcfb0;
	ans = 16'h6dde;
	#20
	A = 16'h5561;
	B = 16'h5aa4;
	ans = 16'h7477;
	#20
	A = 16'hd0c8;
	B = 16'hd1eb;
	ans = 16'h6713;
	#20
	A = 16'h5755;
	B = 16'hd9c8;
	ans = 16'hf54c;
	#20
	A = 16'hccf2;
	B = 16'hd09b;
	ans = 16'h61b2;
	#20
	A = 16'h5ad5;
	B = 16'h5381;
	ans = 16'h7269;
	#20
	A = 16'h5765;
	B = 16'h581e;
	ans = 16'h739c;
	#20
	A = 16'hdae7;
	B = 16'hd5e4;
	ans = 16'h7515;
	#20
	A = 16'hd140;
	B = 16'hda61;
	ans = 16'h7030;
	#20
	A = 16'hd84d;
	B = 16'h522a;
	ans = 16'heea1;
	#20
	A = 16'h5716;
	B = 16'h5acb;
	ans = 16'h7604;
	#20
	A = 16'h52c1;
	B = 16'hdab5;
	ans = 16'hf1aa;
	#20
	A = 16'hdbd8;
	B = 16'h592f;
	ans = 16'hf915;
	#20
	A = 16'h5810;
	B = 16'h598a;
	ans = 16'h75a0;
	#20
	A = 16'h5903;
	B = 16'h58b4;
	ans = 16'h75e5;
	#20
	A = 16'h5bf4;
	B = 16'hd231;
	ans = 16'hf228;
	#20
	A = 16'hd405;
	B = 16'h50a6;
	ans = 16'he8ac;
	#20
	A = 16'hdb36;
	B = 16'hda47;
	ans = 16'h79a8;
	#20
	A = 16'h5531;
	B = 16'hdb17;
	ans = 16'hf49a;
	#20
	A = 16'h5802;
	B = 16'hd9e0;
	ans = 16'hf5e3;
	#20
	A = 16'h561b;
	B = 16'hd8a5;
	ans = 16'hf317;
	#20
	A = 16'h57eb;
	B = 16'h5839;
	ans = 16'h742e;
	#20
	A = 16'h5491;
	B = 16'hd2d5;
	ans = 16'hebcd;
	#20
	A = 16'h5ac9;
	B = 16'h5a50;
	ans = 16'h795b;
	#20
	A = 16'h5bf5;
	B = 16'hca52;
	ans = 16'hea49;
	#20
	A = 16'h529c;
	B = 16'hd496;
	ans = 16'heb94;
	#20
	A = 16'h514b;
	B = 16'h5b9b;
	ans = 16'h7108;
	#20
	A = 16'hd8f3;
	B = 16'h53f3;
	ans = 16'hf0eb;
	#20
	A = 16'h5151;
	B = 16'h55aa;
	ans = 16'h6b87;
	#20
	A = 16'hd658;
	B = 16'hd8ff;
	ans = 16'h73ec;
	#20
	A = 16'hdba9;
	B = 16'h5908;
	ans = 16'hf8d1;
	#20
	A = 16'hda2b;
	B = 16'hdacf;
	ans = 16'h7940;
	#20
	A = 16'hd334;
	B = 16'hdb8d;
	ans = 16'h72cc;
	#20
	A = 16'hd73a;
	B = 16'h5814;
	ans = 16'hf35e;
	#20
	A = 16'h53f8;
	B = 16'hd11b;
	ans = 16'he916;
	#20
	A = 16'h52d4;
	B = 16'h5826;
	ans = 16'h6f15;
	#20
	A = 16'h50d5;
	B = 16'hd0c5;
	ans = 16'he5c3;
	#20
	A = 16'h57e9;
	B = 16'h52a9;
	ans = 16'h6e96;
	#20
	A = 16'h552d;
	B = 16'hd327;
	ans = 16'heca1;
	#20
	A = 16'hd53e;
	B = 16'h58bd;
	ans = 16'hf236;
	#20
	A = 16'h5784;
	B = 16'h5819;
	ans = 16'h73b3;
	#20
	A = 16'h5b38;
	B = 16'hd80f;
	ans = 16'hf753;
	#20
	A = 16'h5b23;
	B = 16'hd9f2;
	ans = 16'hf94e;
	#20
	A = 16'hd70c;
	B = 16'hd746;
	ans = 16'h7268;
	#20
	A = 16'hd846;
	B = 16'hd318;
	ans = 16'h6f94;
	#20
	A = 16'hda09;
	B = 16'hd721;
	ans = 16'h7561;
	#20
	A = 16'hd8ba;
	B = 16'hd99d;
	ans = 16'h76a2;
	#20
	A = 16'h5b11;
	B = 16'hd628;
	ans = 16'hf570;
	#20
	A = 16'hda17;
	B = 16'hd328;
	ans = 16'h7173;
	#20
	A = 16'hd094;
	B = 16'hcdbe;
	ans = 16'h6292;
	#20
	A = 16'hd8c7;
	B = 16'h5a43;
	ans = 16'hf77b;
	#20
	A = 16'hc855;
	B = 16'hdb7a;
	ans = 16'h680c;
	#20
	A = 16'hda29;
	B = 16'hdba3;
	ans = 16'h79e1;
	#20
	A = 16'hd701;
	B = 16'h4ec8;
	ans = 16'he9f0;
	#20
	A = 16'hdac9;
	B = 16'h5bc2;
	ans = 16'hfa94;
	#20
	A = 16'hd829;
	B = 16'h5b4f;
	ans = 16'hf79a;
	#20
	A = 16'h4c62;
	B = 16'h5330;
	ans = 16'h63e0;
	#20
	A = 16'h587f;
	B = 16'h5586;
	ans = 16'h7235;
	#20
	A = 16'hdb27;
	B = 16'hd952;
	ans = 16'h78c2;
	#20
	A = 16'h553e;
	B = 16'hd82e;
	ans = 16'hf17a;
	#20
	A = 16'hdbca;
	B = 16'hc05f;
	ans = 16'h6041;
	#20
	A = 16'hd4c1;
	B = 16'hdb35;
	ans = 16'h7448;
	#20
	A = 16'hd99b;
	B = 16'hcc94;
	ans = 16'h6a6a;
	#20
	A = 16'hd445;
	B = 16'hd7fa;
	ans = 16'h7042;
	#20
	A = 16'h55d9;
	B = 16'hc99c;
	ans = 16'he41a;
	#20
	A = 16'hd711;
	B = 16'hcd12;
	ans = 16'h687b;
	#20
	A = 16'h5abe;
	B = 16'h5570;
	ans = 16'h7495;
	#20
	A = 16'hd6b7;
	B = 16'h5848;
	ans = 16'hf330;
	#20
	A = 16'hdb0d;
	B = 16'hd9e8;
	ans = 16'h7935;
	#20
	A = 16'h5ad9;
	B = 16'h5646;
	ans = 16'h755f;
	#20
	A = 16'h5873;
	B = 16'h5abf;
	ans = 16'h7781;
	#20
	A = 16'hd71b;
	B = 16'h51f0;
	ans = 16'hed46;
	#20
	A = 16'hcd69;
	B = 16'hdadb;
	ans = 16'h6ca3;
	#20
	A = 16'h5a56;
	B = 16'h4a57;
	ans = 16'h6905;
	#20
	A = 16'h56b8;
	B = 16'hd5c7;
	ans = 16'hf0da;
	#20
	A = 16'hdae1;
	B = 16'h5444;
	ans = 16'hf356;
	#20
	A = 16'h4c56;
	B = 16'hd075;
	ans = 16'he0d5;
	#20
	A = 16'h580b;
	B = 16'h58e5;
	ans = 16'h74f2;
	#20
	A = 16'hcc34;
	B = 16'hd6ce;
	ans = 16'h6726;
	#20
	A = 16'h519d;
	B = 16'hd9c0;
	ans = 16'hf009;
	#20
	A = 16'h55a9;
	B = 16'h560e;
	ans = 16'h7049;
	#20
	A = 16'h5a06;
	B = 16'hd13d;
	ans = 16'hefe3;
	#20
	A = 16'hda0c;
	B = 16'hd831;
	ans = 16'h7656;
	#20
	A = 16'h578d;
	B = 16'hdb5d;
	ans = 16'hf6f3;
	#20
	A = 16'h5b69;
	B = 16'h5902;
	ans = 16'h78a3;
	#20
	A = 16'hdba9;
	B = 16'h555f;
	ans = 16'hf525;
	#20
	A = 16'h5a3b;
	B = 16'h557d;
	ans = 16'h7446;
	#20
	A = 16'hd44b;
	B = 16'hd44f;
	ans = 16'h6ca0;
	#20
	A = 16'h4cd7;
	B = 16'h5af7;
	ans = 16'h6c37;
	#20
	A = 16'hc2db;
	B = 16'hcf6b;
	ans = 16'h565b;
	#20
	A = 16'h52ba;
	B = 16'h5250;
	ans = 16'h694f;
	#20
	A = 16'h5894;
	B = 16'h5a52;
	ans = 16'h773c;
	#20
	A = 16'h5b0c;
	B = 16'hd7cb;
	ans = 16'hf6dd;
	#20
	A = 16'h5996;
	B = 16'h481b;
	ans = 16'h65bc;
	#20
	A = 16'h5766;
	B = 16'hd7e9;
	ans = 16'hf351;
	#20
	A = 16'hdb17;
	B = 16'h53e5;
	ans = 16'hf2ff;
	#20
	A = 16'h5b23;
	B = 16'hd5c6;
	ans = 16'hf527;
	#20
	A = 16'hbd9d;
	B = 16'h4c9b;
	ans = 16'hce77;
	#20
	A = 16'h5475;
	B = 16'hdb7e;
	ans = 16'hf42d;
	#20
	A = 16'hd017;
	B = 16'hd8e9;
	ans = 16'h6d05;
	#20
	A = 16'hd393;
	B = 16'hda22;
	ans = 16'h71ce;
	#20
	A = 16'hd8ee;
	B = 16'hd878;
	ans = 16'h7582;
	#20
	A = 16'h5828;
	B = 16'hdb0a;
	ans = 16'hf750;
	#20
	A = 16'h4de1;
	B = 16'hc733;
	ans = 16'hd94a;
	#20
	A = 16'hd5c7;
	B = 16'h5945;
	ans = 16'hf39c;
	#20
	A = 16'hd8e4;
	B = 16'hdbc2;
	ans = 16'h78be;
	#20
	A = 16'h551e;
	B = 16'h5974;
	ans = 16'h72fa;
	#20
	A = 16'h5ba2;
	B = 16'h5022;
	ans = 16'h6fe3;
	#20
	A = 16'hdb22;
	B = 16'h597b;
	ans = 16'hf8e3;
	#20
	A = 16'h5843;
	B = 16'hd7d4;
	ans = 16'hf42c;
	#20
	A = 16'hdade;
	B = 16'h5056;
	ans = 16'hef72;
	#20
	A = 16'hd344;
	B = 16'hd3d1;
	ans = 16'h6b19;
	#20
	A = 16'h5b93;
	B = 16'h58e6;
	ans = 16'h78a3;
	#20
	A = 16'hc455;
	B = 16'hd550;
	ans = 16'h5dc1;
	#20
	A = 16'h5992;
	B = 16'hd6ba;
	ans = 16'hf4af;
	#20
	A = 16'hd176;
	B = 16'hcd1e;
	ans = 16'h62fc;
	#20
	A = 16'hd838;
	B = 16'hd8af;
	ans = 16'h74f1;
	#20
	A = 16'h57a0;
	B = 16'hd037;
	ans = 16'hec04;
	#20
	A = 16'h5bd2;
	B = 16'hc93b;
	ans = 16'he91d;
	#20
	A = 16'hd363;
	B = 16'h5065;
	ans = 16'he80f;
	#20
	A = 16'hd712;
	B = 16'hce54;
	ans = 16'h6998;
	#20
	A = 16'hd405;
	B = 16'h59f5;
	ans = 16'hf1fc;
	#20
	A = 16'h5baa;
	B = 16'h56d3;
	ans = 16'h768a;
	#20
	A = 16'hda41;
	B = 16'h555a;
	ans = 16'hf42f;
	#20
	A = 16'h59bc;
	B = 16'hd147;
	ans = 16'hef91;
	#20
	A = 16'hd9ac;
	B = 16'hc2b9;
	ans = 16'h60c4;
	#20
	A = 16'hd950;
	B = 16'h50b2;
	ans = 16'hee3c;
	#20
	A = 16'h59d2;
	B = 16'h4d7b;
	ans = 16'h6bf9;
	#20
	A = 16'hcf46;
	B = 16'hcf9a;
	ans = 16'h62e9;
	#20
	A = 16'hdb7e;
	B = 16'hd885;
	ans = 16'h783c;
	#20
	A = 16'hdb85;
	B = 16'hcd28;
	ans = 16'h6cd9;
	#20
	A = 16'hdada;
	B = 16'h4a57;
	ans = 16'he96e;
	#20
	A = 16'hd34a;
	B = 16'hd8de;
	ans = 16'h706f;
	#20
	A = 16'h5afe;
	B = 16'h5b1d;
	ans = 16'h7a38;
	#20
	A = 16'h5932;
	B = 16'h534e;
	ans = 16'h70be;
	#20
	A = 16'h5a78;
	B = 16'h5b0e;
	ans = 16'h79b4;
	#20
	A = 16'h58cd;
	B = 16'hcde1;
	ans = 16'heb0e;
	#20
	A = 16'h58db;
	B = 16'hd381;
	ans = 16'hf08e;
	#20
	A = 16'h57b3;
	B = 16'hdb4a;
	ans = 16'hf704;
	#20
	A = 16'h5b97;
	B = 16'hd90c;
	ans = 16'hf8ca;
	#20
	A = 16'h542d;
	B = 16'hd4a4;
	ans = 16'hecd8;
	#20
	A = 16'h4e23;
	B = 16'h58fb;
	ans = 16'h6ba4;
	#20
	A = 16'h5845;
	B = 16'h474e;
	ans = 16'h63cc;
	#20
	A = 16'h4b8f;
	B = 16'hd80e;
	ans = 16'he7a9;
	#20
	A = 16'hd2d2;
	B = 16'h4909;
	ans = 16'he04b;
	#20
	A = 16'hd41c;
	B = 16'h5b01;
	ans = 16'hf332;
	#20
	A = 16'hda7c;
	B = 16'hdad1;
	ans = 16'h7986;
	#20
	A = 16'hda23;
	B = 16'h4876;
	ans = 16'he6d8;
	#20
	A = 16'h574d;
	B = 16'h5a58;
	ans = 16'h75ca;
	#20
	A = 16'h5659;
	B = 16'h5bda;
	ans = 16'h763b;
	#20
	A = 16'hd1fe;
	B = 16'hd8e0;
	ans = 16'h6f4e;
	#20
	A = 16'h538e;
	B = 16'h5a00;
	ans = 16'h71aa;
	#20
	A = 16'h5a9c;
	B = 16'h5921;
	ans = 16'h783d;
	#20
	A = 16'h548b;
	B = 16'hd027;
	ans = 16'he8b7;
	#20
	A = 16'h57e1;
	B = 16'h52bd;
	ans = 16'h6ea3;
	#20
	A = 16'hd8e2;
	B = 16'h5af1;
	ans = 16'hf83d;
	#20
	A = 16'hd8f4;
	B = 16'hd86a;
	ans = 16'h7577;
	#20
	A = 16'h4dc5;
	B = 16'hda29;
	ans = 16'hec71;
	#20
	A = 16'h54ad;
	B = 16'hdb99;
	ans = 16'hf471;
	#20
	A = 16'hd5d9;
	B = 16'hd9f0;
	ans = 16'h7457;
	#20
	A = 16'hd40e;
	B = 16'hd567;
	ans = 16'h6d7a;
	#20
	A = 16'hdb09;
	B = 16'h5ae6;
	ans = 16'hfa11;
	#20
	A = 16'hdac1;
	B = 16'hd720;
	ans = 16'h7604;
	#20
	A = 16'hd6b8;
	B = 16'h5a59;
	ans = 16'hf555;
	#20
	A = 16'h51ac;
	B = 16'h56a7;
	ans = 16'h6cb7;
	#20
	A = 16'h5b3a;
	B = 16'hdb99;
	ans = 16'hfadd;
	#20
	A = 16'hd90c;
	B = 16'hd69e;
	ans = 16'h742d;
	#20
	A = 16'hce97;
	B = 16'hd547;
	ans = 16'h6859;
	#20
	A = 16'h5995;
	B = 16'hd94c;
	ans = 16'hf764;
	#20
	A = 16'h512a;
	B = 16'h588f;
	ans = 16'h6de3;
	#20
	A = 16'h586a;
	B = 16'hd16f;
	ans = 16'hedff;
	#20
	A = 16'h57ed;
	B = 16'hd801;
	ans = 16'hf3ef;
	#20
	A = 16'h486e;
	B = 16'h5548;
	ans = 16'h61d9;
	#20
	A = 16'hdafc;
	B = 16'hda6b;
	ans = 16'h799a;
	#20
	A = 16'hd8ce;
	B = 16'hd568;
	ans = 16'h727e;
	#20
	A = 16'h40a8;
	B = 16'h454e;
	ans = 16'h4a2d;
	#20
	A = 16'h5ae2;
	B = 16'hd05e;
	ans = 16'hef84;
	#20
	A = 16'h59f0;
	B = 16'hcf4b;
	ans = 16'hed6a;
	#20
	A = 16'h5b81;
	B = 16'hd494;
	ans = 16'hf44b;
	#20
	A = 16'hcb4f;
	B = 16'hd590;
	ans = 16'h6515;
	#20
	A = 16'hd8b1;
	B = 16'hd828;
	ans = 16'h74e0;
	#20
	A = 16'hd5fb;
	B = 16'hdb39;
	ans = 16'h7566;
	#20
	A = 16'hdaa1;
	B = 16'h5ac2;
	ans = 16'hf99a;
	#20
	A = 16'h587a;
	B = 16'hd330;
	ans = 16'hf006;
	#20
	A = 16'h51eb;
	B = 16'hc9c8;
	ans = 16'he047;
	#20
	A = 16'hdb24;
	B = 16'hda68;
	ans = 16'h79b8;
	#20
	A = 16'h52ee;
	B = 16'hda0a;
	ans = 16'hf13b;
	#20
	A = 16'h5a44;
	B = 16'h57e1;
	ans = 16'h762c;
	#20
	A = 16'hd155;
	B = 16'hd286;
	ans = 16'h6859;
	#20
	A = 16'hd2ca;
	B = 16'hd920;
	ans = 16'h7059;
	#20
	A = 16'h5a0e;
	B = 16'hd92d;
	ans = 16'hf7d6;
	#20
	A = 16'h579c;
	B = 16'h5b55;
	ans = 16'h76f9;
	#20
	A = 16'h599b;
	B = 16'hdb01;
	ans = 16'hf8e8;
	#20
	A = 16'hd5d7;
	B = 16'hd8ee;
	ans = 16'h7332;
	#20
	A = 16'h5846;
	B = 16'h4db0;
	ans = 16'h6a14;
	#20
	A = 16'hd65b;
	B = 16'h58cb;
	ans = 16'hf39e;
	#20
	A = 16'hce36;
	B = 16'h4cb6;
	ans = 16'hdf51;
	#20
	A = 16'h552a;
	B = 16'hd6f1;
	ans = 16'hf07b;
	#20
	A = 16'h550a;
	B = 16'h5913;
	ans = 16'h7264;
	#20
	A = 16'hd96e;
	B = 16'h5768;
	ans = 16'hf507;
	#20
	A = 16'h558d;
	B = 16'h56b5;
	ans = 16'h70a7;
	#20
	A = 16'h4fa6;
	B = 16'hd5e5;
	ans = 16'he9a3;
	#20
	A = 16'h5a8d;
	B = 16'h5b58;
	ans = 16'h7a03;
	#20
	A = 16'hdacf;
	B = 16'hdbe4;
	ans = 16'h7ab7;
	#20
	A = 16'hd694;
	B = 16'hcddb;
	ans = 16'h68d1;
	#20
	A = 16'h5a1d;
	B = 16'hda63;
	ans = 16'hf8e1;
	#20
	A = 16'hd3e2;
	B = 16'hd5ca;
	ans = 16'h6db4;
	#20
	A = 16'hd404;
	B = 16'h57f1;
	ans = 16'heff9;
	#20
	A = 16'hd537;
	B = 16'h5a21;
	ans = 16'hf3fe;
	#20
	A = 16'h58fe;
	B = 16'hbd37;
	ans = 16'hda82;
	#20
	A = 16'hd9de;
	B = 16'h58dd;
	ans = 16'hf722;
	#20
	A = 16'hd66e;
	B = 16'hd8e6;
	ans = 16'h73e0;
	#20
	A = 16'hdb87;
	B = 16'hda29;
	ans = 16'h79cc;
	#20
	A = 16'hd896;
	B = 16'h58c3;
	ans = 16'hf576;
	#20
	A = 16'hd983;
	B = 16'h5813;
	ans = 16'hf59d;
	#20
	A = 16'hcaff;
	B = 16'h56ff;
	ans = 16'he61e;
	#20
	A = 16'hd2a6;
	B = 16'hd49c;
	ans = 16'h6ba9;
	#20
	A = 16'h5b62;
	B = 16'h5447;
	ans = 16'h73e5;
	#20
	A = 16'hdabc;
	B = 16'h5563;
	ans = 16'hf489;
	#20
	A = 16'hd624;
	B = 16'hd914;
	ans = 16'h73cc;
	#20
	A = 16'h59bb;
	B = 16'hc1f1;
	ans = 16'he042;
	#20
	A = 16'h5aaa;
	B = 16'hcf35;
	ans = 16'hee01;
	#20
	A = 16'h4acf;
	B = 16'hd425;
	ans = 16'he30e;
	#20
	A = 16'h5b1f;
	B = 16'hdb04;
	ans = 16'hfa3f;
	#20
	A = 16'hd4b7;
	B = 16'h58a9;
	ans = 16'hf17e;
	#20
	A = 16'h5275;
	B = 16'hda3e;
	ans = 16'hf10a;
	#20
	A = 16'hd63c;
	B = 16'hcb8a;
	ans = 16'h65e0;
	#20
	A = 16'h54e8;
	B = 16'hd8e2;
	ans = 16'hf1fd;
	#20
	A = 16'h570d;
	B = 16'hda6f;
	ans = 16'hf5ac;
	#20
	A = 16'h5be5;
	B = 16'hd2e4;
	ans = 16'hf2cd;
	#20
	A = 16'hdb32;
	B = 16'h5675;
	ans = 16'hf5cf;
	#20
	A = 16'hd9da;
	B = 16'h595c;
	ans = 16'hf7d7;
	#20
	A = 16'hd63b;
	B = 16'h4b29;
	ans = 16'he594;
	#20
	A = 16'h54cd;
	B = 16'hd6b5;
	ans = 16'hf006;
	#20
	A = 16'hb35d;
	B = 16'hd7fd;
	ans = 16'h4f5a;
	#20
	A = 16'h2d91;
	B = 16'hd5a1;
	ans = 16'hc7d5;
	#20
	A = 16'hd914;
	B = 16'h46ac;
	ans = 16'he43c;
	#20
	A = 16'hd44b;
	B = 16'h557d;
	ans = 16'hede4;
	#20
	A = 16'hccde;
	B = 16'h5a71;
	ans = 16'hebd6;
	#20
	A = 16'hdb81;
	B = 16'hcc09;
	ans = 16'h6b92;
	#20
	A = 16'h5a62;
	B = 16'h5120;
	ans = 16'h7017;
	#20
	A = 16'h5989;
	B = 16'hd912;
	ans = 16'hf704;
	#20
	A = 16'h5854;
	B = 16'h549d;
	ans = 16'h70fe;
	#20
	A = 16'hce55;
	B = 16'h57e9;
	ans = 16'hea43;
	#20
	A = 16'hd2a7;
	B = 16'h582e;
	ans = 16'heef4;
	#20
	A = 16'hc865;
	B = 16'h5a59;
	ans = 16'he6f9;
	#20
	A = 16'h4be3;
	B = 16'hd404;
	ans = 16'he3eb;
	#20
	A = 16'hdbb5;
	B = 16'h5ac1;
	ans = 16'hfa82;
	#20
	A = 16'hda84;
	B = 16'hd7f6;
	ans = 16'h767c;
	#20
	A = 16'hd55c;
	B = 16'h5bd0;
	ans = 16'hf53c;
	#20
	A = 16'h5554;
	B = 16'hd4b4;
	ans = 16'hee44;
	#20
	A = 16'hd893;
	B = 16'h5883;
	ans = 16'hf529;
	#20
	A = 16'hd846;
	B = 16'h59c7;
	ans = 16'hf62c;
	#20
	A = 16'h5498;
	B = 16'h5b66;
	ans = 16'h7440;
	#20
	A = 16'h5654;
	B = 16'hc527;
	ans = 16'he013;
	#20
	A = 16'hd5c5;
	B = 16'hdbc0;
	ans = 16'h7597;
	#20
	A = 16'hdbc2;
	B = 16'h5a3a;
	ans = 16'hfa0a;
	#20
	A = 16'hdaee;
	B = 16'hd8e8;
	ans = 16'h7840;
	#20
	A = 16'hd9ce;
	B = 16'h5845;
	ans = 16'hf632;
	#20
	A = 16'hd14e;
	B = 16'hdbf4;
	ans = 16'h7146;
	#20
	A = 16'hd2fc;
	B = 16'hd6ec;
	ans = 16'h6e0b;
	#20
	A = 16'hc0ff;
	B = 16'h5ba3;
	ans = 16'he0c5;
	#20
	A = 16'hd0a0;
	B = 16'h4f20;
	ans = 16'he41e;
	#20
	A = 16'hd852;
	B = 16'hd0bf;
	ans = 16'h6d20;
	#20
	A = 16'hd80f;
	B = 16'h5a82;
	ans = 16'hf69a;
	#20
	A = 16'hd34e;
	B = 16'h5a45;
	ans = 16'hf1ba;
	#20
	A = 16'h5170;
	B = 16'hda93;
	ans = 16'hf078;
	#20
	A = 16'h5ac2;
	B = 16'h54b2;
	ans = 16'h73ef;
	#20
	A = 16'h5be0;
	B = 16'hd883;
	ans = 16'hf871;
	#20
	A = 16'h5ac7;
	B = 16'h55e5;
	ans = 16'h74fe;
	#20
	A = 16'hd9c9;
	B = 16'h4e98;
	ans = 16'hecc5;
	#20
	A = 16'h58ff;
	B = 16'h5338;
	ans = 16'h7082;
	#20
	A = 16'hd0cd;
	B = 16'h580c;
	ans = 16'hecdb;
	#20
	A = 16'h539a;
	B = 16'h5413;
	ans = 16'h6bbe;
	#20
	A = 16'h5a81;
	B = 16'h58b1;
	ans = 16'h77a1;
	#20
	A = 16'hcd91;
	B = 16'h5a73;
	ans = 16'hec7d;
	#20
	A = 16'h5995;
	B = 16'hd8df;
	ans = 16'hf6cc;
	#20
	A = 16'h5a9c;
	B = 16'h560a;
	ans = 16'h74fd;
	#20
	A = 16'h5019;
	B = 16'hd906;
	ans = 16'hed25;
	#20
	A = 16'h5942;
	B = 16'hd6eb;
	ans = 16'hf48c;
	#20
	A = 16'hd7f7;
	B = 16'hdb17;
	ans = 16'h770f;
	#20
	A = 16'h5ae5;
	B = 16'h5bc9;
	ans = 16'h7ab6;
	#20
	A = 16'hd861;
	B = 16'h5771;
	ans = 16'hf413;
	#20
	A = 16'hd817;
	B = 16'hd2b0;
	ans = 16'h6ed6;
	#20
	A = 16'hd211;
	B = 16'h54ff;
	ans = 16'heb94;
	#20
	A = 16'h5b14;
	B = 16'hd64d;
	ans = 16'hf593;
	#20
	A = 16'h56e0;
	B = 16'h52a6;
	ans = 16'h6db7;
	#20
	A = 16'hd6e0;
	B = 16'h59f4;
	ans = 16'hf51e;
	#20
	A = 16'hd604;
	B = 16'hd48d;
	ans = 16'h6ed8;
	#20
	A = 16'h5442;
	B = 16'h4cf3;
	ans = 16'h6545;
	#20
	A = 16'hda04;
	B = 16'hd36b;
	ans = 16'h7194;
	#20
	A = 16'h5844;
	B = 16'h549c;
	ans = 16'h70ea;
	#20
	A = 16'h538b;
	B = 16'hdbb7;
	ans = 16'hf346;
	#20
	A = 16'h5b66;
	B = 16'h5892;
	ans = 16'h783a;
	#20
	A = 16'hd5d5;
	B = 16'hcc4f;
	ans = 16'h6648;
	#20
	A = 16'hd66f;
	B = 16'hda9f;
	ans = 16'h7553;
	#20
	A = 16'hd06f;
	B = 16'h2c9d;
	ans = 16'hc11d;
	#20
	A = 16'h59fd;
	B = 16'h4a2a;
	ans = 16'h689d;
	#20
	A = 16'h4e0f;
	B = 16'h5b0f;
	ans = 16'h6d58;
	#20
	A = 16'hd8a7;
	B = 16'h543b;
	ans = 16'hf0ec;
	#20
	A = 16'hd130;
	B = 16'h5adc;
	ans = 16'hf073;
	#20
	A = 16'hdbde;
	B = 16'hcc3e;
	ans = 16'h6c2c;
	#20
	A = 16'hd8f1;
	B = 16'h5bd9;
	ans = 16'hf8d9;
	#20
	A = 16'hdbb4;
	B = 16'h5107;
	ans = 16'hf0d7;
	#20
	A = 16'h50b5;
	B = 16'h5a27;
	ans = 16'h6f3d;
	#20
	A = 16'h4db9;
	B = 16'hc02b;
	ans = 16'hd1f7;
	#20
	A = 16'hd6c4;
	B = 16'hd9cd;
	ans = 16'h74e8;
	#20
	A = 16'hda5a;
	B = 16'h4f01;
	ans = 16'hed90;
	#20
	A = 16'hd340;
	B = 16'hd0ca;
	ans = 16'h6857;
	#20
	A = 16'h53cd;
	B = 16'h58ee;
	ans = 16'h70cf;
	#20
	A = 16'hd508;
	B = 16'hd8e0;
	ans = 16'h7222;
	#20
	A = 16'hda95;
	B = 16'h4005;
	ans = 16'hde9d;
	#20
	A = 16'hd61b;
	B = 16'h4eb7;
	ans = 16'he920;
	#20
	A = 16'h5be9;
	B = 16'hd38b;
	ans = 16'hf375;
	#20
	A = 16'hd014;
	B = 16'h56f4;
	ans = 16'heb17;
	#20
	A = 16'h546b;
	B = 16'hcc6f;
	ans = 16'he4e6;
	#20
	A = 16'h5704;
	B = 16'hd2ba;
	ans = 16'hede6;
	#20
	A = 16'h50a0;
	B = 16'hda89;
	ans = 16'hef8e;
	#20
	A = 16'hcfad;
	B = 16'hd4c9;
	ans = 16'h6897;
	#20
	A = 16'hdbe9;
	B = 16'hd66a;
	ans = 16'h7658;
	#20
	A = 16'hba0a;
	B = 16'hdb8a;
	ans = 16'h59b1;
	#20
	A = 16'hda9c;
	B = 16'hd6ca;
	ans = 16'h759c;
	#20
	A = 16'h5bb4;
	B = 16'h59aa;
	ans = 16'h7974;
	#20
	A = 16'hd899;
	B = 16'h5853;
	ans = 16'hf4f8;
	#20
	A = 16'hd57c;
	B = 16'h54d0;
	ans = 16'hee99;
	#20
	A = 16'h5991;
	B = 16'hd9f9;
	ans = 16'hf828;
	#20
	A = 16'hcfb9;
	B = 16'h58cf;
	ans = 16'heca4;
	#20
	A = 16'hd879;
	B = 16'h5a5b;
	ans = 16'hf71b;
	#20
	A = 16'hda36;
	B = 16'hd8f0;
	ans = 16'h77ab;
	#20
	A = 16'hdb2e;
	B = 16'hda9a;
	ans = 16'h79ed;
	#20
	A = 16'h5967;
	B = 16'h4e6f;
	ans = 16'h6c58;
	#20
	A = 16'h599c;
	B = 16'h580c;
	ans = 16'h75ad;
	#20
	A = 16'hd094;
	B = 16'hd93d;
	ans = 16'h6dff;
	#20
	A = 16'h518f;
	B = 16'hd836;
	ans = 16'hedda;
	#20
	A = 16'h529f;
	B = 16'h5be3;
	ans = 16'h7287;
	#20
	A = 16'hd5a3;
	B = 16'hd5b5;
	ans = 16'h7005;
	#20
	A = 16'h4de0;
	B = 16'h58e1;
	ans = 16'h6b2a;
	#20
	A = 16'hd2e4;
	B = 16'h5926;
	ans = 16'hf06f;
	#20
	A = 16'h5be0;
	B = 16'hd907;
	ans = 16'hf8f3;
	#20
	A = 16'h5a0f;
	B = 16'h5568;
	ans = 16'h7418;
	#20
	A = 16'hd5cd;
	B = 16'h5406;
	ans = 16'hedd6;
	#20
	A = 16'hd6da;
	B = 16'h50cd;
	ans = 16'hec1d;
	#20
	A = 16'h53f3;
	B = 16'hce97;
	ans = 16'he68c;
	#20
	A = 16'hd89a;
	B = 16'h58ae;
	ans = 16'hf562;
	#20
	A = 16'hd9bf;
	B = 16'h56f2;
	ans = 16'hf4fd;
	#20
	A = 16'hd97d;
	B = 16'hd65b;
	ans = 16'h745c;
	#20
	A = 16'hceff;
	B = 16'h5632;
	ans = 16'he96b;
	#20
	A = 16'hd0c8;
	B = 16'h5a3b;
	ans = 16'hef73;
	#20
	A = 16'h5845;
	B = 16'hd7e2;
	ans = 16'hf435;
	#20
	A = 16'hd948;
	B = 16'h5aef;
	ans = 16'hf894;
	#20
	A = 16'hdb4b;
	B = 16'h5aca;
	ans = 16'hfa30;
	#20
	A = 16'hce27;
	B = 16'hd903;
	ans = 16'h6bb5;
	#20
	A = 16'h5be7;
	B = 16'h5af4;
	ans = 16'h7ade;
	#20
	A = 16'h549f;
	B = 16'hd631;
	ans = 16'hef27;
	#20
	A = 16'h4f18;
	B = 16'hd406;
	ans = 16'he723;
	#20
	A = 16'h5bac;
	B = 16'hdb46;
	ans = 16'hfafa;
	#20
	A = 16'hd631;
	B = 16'h52b6;
	ans = 16'hed32;
	#20
	A = 16'h5530;
	B = 16'h58dc;
	ans = 16'h724d;
	#20
	A = 16'h5061;
	B = 16'h5187;
	ans = 16'h660d;
	#20
	A = 16'h55c3;
	B = 16'hd887;
	ans = 16'hf285;
	#20
	A = 16'h5083;
	B = 16'hd876;
	ans = 16'hed08;
	#20
	A = 16'hdb9a;
	B = 16'hd743;
	ans = 16'h76e6;
	#20
	A = 16'h53b9;
	B = 16'h5616;
	ans = 16'h6de0;
	#20
	A = 16'hd9a4;
	B = 16'h59b7;
	ans = 16'hf808;
	#20
	A = 16'hd874;
	B = 16'hdb9c;
	ans = 16'h783c;
	#20
	A = 16'hd9be;
	B = 16'h5ae7;
	ans = 16'hf8f4;
	#20
	A = 16'h5513;
	B = 16'hd112;
	ans = 16'hea6f;
	#20
	A = 16'h5386;
	B = 16'hd8df;
	ans = 16'hf095;
	#20
	A = 16'hd968;
	B = 16'h5994;
	ans = 16'hf78a;
	#20
	A = 16'hd8bd;
	B = 16'hdbf5;
	ans = 16'h78b6;
	#20
	A = 16'h59eb;
	B = 16'h5aad;
	ans = 16'h78f0;
	#20
	A = 16'hd85e;
	B = 16'hd393;
	ans = 16'h7022;
	#20
	A = 16'hd484;
	B = 16'h55d5;
	ans = 16'hee95;
	#20
	A = 16'hd898;
	B = 16'h4f97;
	ans = 16'hec5c;
	#20
	A = 16'h583e;
	B = 16'h59f1;
	ans = 16'h764d;
	#20
	A = 16'h528e;
	B = 16'hd1fe;
	ans = 16'he8e9;
	#20
	A = 16'h4d28;
	B = 16'h5979;
	ans = 16'h6b0e;
	#20
	A = 16'h50d1;
	B = 16'hdb63;
	ans = 16'hf072;
	#20
	A = 16'hc97c;
	B = 16'hd834;
	ans = 16'h65c3;
	#20
	A = 16'h56e0;
	B = 16'hdad2;
	ans = 16'hf5dc;
	#20
	A = 16'hd010;
	B = 16'hd0ef;
	ans = 16'h6503;
	#20
	A = 16'h5b94;
	B = 16'hd2ac;
	ans = 16'hf252;
	#20
	A = 16'h59cf;
	B = 16'hdb28;
	ans = 16'hf932;
	#20
	A = 16'h5bae;
	B = 16'hd0df;
	ans = 16'hf0ad;
	#20
	A = 16'h56e6;
	B = 16'hd16b;
	ans = 16'hecac;
	#20
	A = 16'hdae8;
	B = 16'hd898;
	ans = 16'h77ee;
	#20
	A = 16'hd94a;
	B = 16'h5886;
	ans = 16'hf5fb;
	#20
	A = 16'hd556;
	B = 16'h552a;
	ans = 16'heee4;
	#20
	A = 16'h584c;
	B = 16'hd379;
	ans = 16'hf003;
	#20
	A = 16'h5ad6;
	B = 16'h4d68;
	ans = 16'h6c9f;
	#20
	A = 16'h5898;
	B = 16'hd523;
	ans = 16'hf1e6;
	#20
	A = 16'hd843;
	B = 16'h5aa7;
	ans = 16'hf716;
	#20
	A = 16'h5aab;
	B = 16'hd821;
	ans = 16'hf6e2;
	#20
	A = 16'hd13c;
	B = 16'hd80a;
	ans = 16'h6d49;
	#20
	A = 16'h5715;
	B = 16'hd847;
	ans = 16'hf393;
	#20
	A = 16'hda40;
	B = 16'hd36f;
	ans = 16'h71cf;
	#20
	A = 16'h597d;
	B = 16'hd840;
	ans = 16'hf5d5;
	#20
	A = 16'hd5bc;
	B = 16'hda29;
	ans = 16'h746a;
	#20
	A = 16'h58c0;
	B = 16'h4208;
	ans = 16'h5f2a;
	#20
	A = 16'h4f39;
	B = 16'h5a37;
	ans = 16'h6d9c;
	#20
	A = 16'h568c;
	B = 16'h5b1c;
	ans = 16'h75d1;
	#20
	A = 16'hc65d;
	B = 16'h54de;
	ans = 16'hdfbe;
	#20
	A = 16'h596e;
	B = 16'h5b64;
	ans = 16'h7904;
	#20
	A = 16'hda7f;
	B = 16'hd2f3;
	ans = 16'h71a5;
	#20
	A = 16'hca50;
	B = 16'hd730;
	ans = 16'h65ac;
	#20
	A = 16'h5a68;
	B = 16'h4f87;
	ans = 16'h6e07;
	#20
	A = 16'h55b4;
	B = 16'hd6b9;
	ans = 16'hf0cb;
	#20
	A = 16'hda4d;
	B = 16'h527a;
	ans = 16'hf11a;
	#20
	A = 16'hdbcf;
	B = 16'h59c5;
	ans = 16'hf9a2;
	#20
	A = 16'hda25;
	B = 16'h4c14;
	ans = 16'hea44;
	#20
	A = 16'hd09c;
	B = 16'h59ac;
	ans = 16'hee89;
	#20
	A = 16'h5933;
	B = 16'h4ffe;
	ans = 16'h6d32;
	#20
	A = 16'hd0e6;
	B = 16'hc0bf;
	ans = 16'h55d0;
	#20
	A = 16'hcee2;
	B = 16'hda21;
	ans = 16'h6d46;
	#20
	A = 16'hd9e3;
	B = 16'hd8f2;
	ans = 16'h7747;
	#20
	A = 16'hdae7;
	B = 16'h59cf;
	ans = 16'hf903;
	#20
	A = 16'hdb6a;
	B = 16'hd7b8;
	ans = 16'h7727;
	#20
	A = 16'hd8cb;
	B = 16'hd299;
	ans = 16'h6fe8;
	#20
	A = 16'hd9f5;
	B = 16'h5bdb;
	ans = 16'hf9d9;
	#20
	A = 16'hd227;
	B = 16'h5995;
	ans = 16'hf04b;
	#20
	A = 16'h502d;
	B = 16'hcf81;
	ans = 16'he3d5;
	#20
	A = 16'hd910;
	B = 16'h5697;
	ans = 16'hf42c;
	#20
	A = 16'h5aa8;
	B = 16'hd7c2;
	ans = 16'hf674;
	#20
	A = 16'hd9f6;
	B = 16'h5aaa;
	ans = 16'hf8f7;
	#20
	A = 16'h538d;
	B = 16'h4e70;
	ans = 16'h6613;
	#20
	A = 16'hd88f;
	B = 16'hcfd7;
	ans = 16'h6c78;
	#20
	A = 16'hd521;
	B = 16'hcec8;
	ans = 16'h6859;
	#20
	A = 16'hd607;
	B = 16'hd234;
	ans = 16'h6cac;
	#20
	A = 16'h5986;
	B = 16'hd51a;
	ans = 16'hf30b;
	#20
	A = 16'h5439;
	B = 16'h5530;
	ans = 16'h6d7a;
	#20
	A = 16'h592b;
	B = 16'hdbf8;
	ans = 16'hf926;
	#20
	A = 16'h59fa;
	B = 16'hd8b6;
	ans = 16'hf70a;
	#20
	A = 16'h5ad5;
	B = 16'hd66c;
	ans = 16'hf57c;
	#20
	A = 16'hd0df;
	B = 16'hda60;
	ans = 16'h6fc3;
	#20
	A = 16'hdae5;
	B = 16'h59ff;
	ans = 16'hf92b;
	#20
	A = 16'hdaa6;
	B = 16'hdb7e;
	ans = 16'h7a3a;
	#20
	A = 16'h57bf;
	B = 16'hcf79;
	ans = 16'heb3c;
	#20
	A = 16'hca7c;
	B = 16'hd832;
	ans = 16'h66cd;
	#20
	A = 16'hd4ff;
	B = 16'hd989;
	ans = 16'h72ea;
	#20
	A = 16'h590f;
	B = 16'h5af6;
	ans = 16'h7867;
	#20
	A = 16'h52e4;
	B = 16'h56dc;
	ans = 16'h6de8;
	#20
	A = 16'hd8dd;
	B = 16'h5acd;
	ans = 16'hf822;
	#20
	A = 16'hdb01;
	B = 16'hd997;
	ans = 16'h78e5;
	#20
	A = 16'hcd9c;
	B = 16'h5b1e;
	ans = 16'hecfe;
	#20
	A = 16'hdaea;
	B = 16'hd4f6;
	ans = 16'h744a;
	#20
	A = 16'hd621;
	B = 16'hd6aa;
	ans = 16'h711b;
	#20
	A = 16'hda26;
	B = 16'hd406;
	ans = 16'h722f;
	#20
	A = 16'hd7b4;
	B = 16'h5820;
	ans = 16'hf3f2;
	#20
	A = 16'hd588;
	B = 16'hdba9;
	ans = 16'h754c;
	#20
	A = 16'h584f;
	B = 16'h5af1;
	ans = 16'h777a;
	#20
	A = 16'hd96d;
	B = 16'h53bf;
	ans = 16'hf141;
	#20
	A = 16'hd812;
	B = 16'hd738;
	ans = 16'h7358;
	#20
	A = 16'h5208;
	B = 16'h4dc3;
	ans = 16'h6458;
	#20
	A = 16'hd41a;
	B = 16'hd4ed;
	ans = 16'h6d0d;
	#20
	A = 16'h59b2;
	B = 16'hd52d;
	ans = 16'hf35f;
	#20
	A = 16'hdbb4;
	B = 16'hd9f3;
	ans = 16'h79ba;
	#20
	A = 16'h5296;
	B = 16'hd98b;
	ans = 16'hf090;
	#20
	A = 16'h555d;
	B = 16'hdbc8;
	ans = 16'hf537;
	#20
	A = 16'hd5d9;
	B = 16'hd86d;
	ans = 16'h7278;
	#20
	A = 16'h59ac;
	B = 16'hd55e;
	ans = 16'hf39c;
	#20
	A = 16'h4e2a;
	B = 16'hc4db;
	ans = 16'hd77b;
	#20
	A = 16'hc860;
	B = 16'h5bbc;
	ans = 16'he83b;
	#20
	A = 16'hd02f;
	B = 16'h4d37;
	ans = 16'he174;
	#20
	A = 16'h55dd;
	B = 16'h59f1;
	ans = 16'h745b;
	#20
	A = 16'hd98b;
	B = 16'h5548;
	ans = 16'hf352;
	#20
	A = 16'hd6dd;
	B = 16'hd015;
	ans = 16'h6b01;
	#20
	A = 16'h5854;
	B = 16'hda30;
	ans = 16'hf6b2;
	#20
	A = 16'hd856;
	B = 16'hd334;
	ans = 16'h6fcf;
	#20
	A = 16'h590c;
	B = 16'h55c2;
	ans = 16'h7344;
	#20
	A = 16'h5a7c;
	B = 16'h5a19;
	ans = 16'h78f1;
	#20
	A = 16'hd428;
	B = 16'hd5e7;
	ans = 16'h6e22;
	#20
	A = 16'hdbb0;
	B = 16'hdb7d;
	ans = 16'h7b32;
	#20
	A = 16'hd9fe;
	B = 16'h5152;
	ans = 16'heff8;
	#20
	A = 16'h5381;
	B = 16'h568d;
	ans = 16'h6e25;
	#20
	A = 16'hbf39;
	B = 16'hd7e3;
	ans = 16'h5b1f;
	#20
	A = 16'hd859;
	B = 16'h59ab;
	ans = 16'hf629;
	#20
	A = 16'hd67d;
	B = 16'hd92e;
	ans = 16'h7433;
	#20
	A = 16'h5841;
	B = 16'h5518;
	ans = 16'h716b;
	#20
	A = 16'hdaf4;
	B = 16'h532a;
	ans = 16'hf23a;
	#20
	A = 16'hd57c;
	B = 16'h59ea;
	ans = 16'hf40e;
	#20
	A = 16'h533d;
	B = 16'h5b0e;
	ans = 16'h7262;
	#20
	A = 16'hd646;
	B = 16'h599b;
	ans = 16'hf465;
	#20
	A = 16'hd3e3;
	B = 16'hdbeb;
	ans = 16'h73ce;
	#20
	A = 16'hd934;
	B = 16'hdbe9;
	ans = 16'h7925;
	#20
	A = 16'h3734;
	B = 16'hd0a4;
	ans = 16'hcc2e;
	#20
	A = 16'hd2ba;
	B = 16'h576e;
	ans = 16'hee3f;
	#20
	A = 16'hd90a;
	B = 16'hdb67;
	ans = 16'h78aa;
	#20
	A = 16'hd787;
	B = 16'h59dd;
	ans = 16'hf584;
	#20
	A = 16'h5940;
	B = 16'h59ca;
	ans = 16'h7799;
	#20
	A = 16'hd9e7;
	B = 16'h576e;
	ans = 16'hf57b;
	#20
	A = 16'hd2f8;
	B = 16'hcf88;
	ans = 16'h668f;
	#20
	A = 16'h5870;
	B = 16'h58a4;
	ans = 16'h7526;
	#20
	A = 16'hd0f7;
	B = 16'h59df;
	ans = 16'hef4a;
	#20
	A = 16'hd8fa;
	B = 16'h5853;
	ans = 16'hf561;
	#20
	A = 16'h54f0;
	B = 16'h5b33;
	ans = 16'h7471;
	#20
	A = 16'hd84c;
	B = 16'h4c4c;
	ans = 16'he89e;
	#20
	A = 16'h5925;
	B = 16'h59c8;
	ans = 16'h776f;
	#20
	A = 16'hd9d2;
	B = 16'h5885;
	ans = 16'hf694;
	#20
	A = 16'h50a4;
	B = 16'hda8c;
	ans = 16'hef98;
	#20
	A = 16'h591d;
	B = 16'hc5f5;
	ans = 16'he39d;
	#20
	A = 16'hdae5;
	B = 16'h5559;
	ans = 16'hf49c;
	#20
	A = 16'hc562;
	B = 16'hcc3f;
	ans = 16'h55b7;
	#20
	A = 16'h5964;
	B = 16'h48e6;
	ans = 16'h669a;
	#20
	A = 16'hd9b3;
	B = 16'hd87e;
	ans = 16'h7667;
	#20
	A = 16'hd6f0;
	B = 16'h549b;
	ans = 16'heffd;
	#20
	A = 16'h5a4a;
	B = 16'hd429;
	ans = 16'hf28a;
	#20
	A = 16'hcafd;
	B = 16'hd6e7;
	ans = 16'h6608;
	#20
	A = 16'hdb0e;
	B = 16'h52cd;
	ans = 16'hf1ff;
	#20
	A = 16'hd655;
	B = 16'h5b64;
	ans = 16'hf5da;
	#20
	A = 16'hcef3;
	B = 16'h5915;
	ans = 16'hec6a;
	#20
	A = 16'hd016;
	B = 16'hd592;
	ans = 16'h69b1;
	#20
	A = 16'hd48d;
	B = 16'h59c9;
	ans = 16'hf295;
	#20
	A = 16'h539b;
	B = 16'hdaec;
	ans = 16'hf295;
	#20
	A = 16'hd2d3;
	B = 16'h4b06;
	ans = 16'he1fe;
	#20
	A = 16'h5a2d;
	B = 16'hd223;
	ans = 16'hf0bd;
	#20
	A = 16'hd5cb;
	B = 16'h55e2;
	ans = 16'hf043;
	#20
	A = 16'h4e52;
	B = 16'hd315;
	ans = 16'he598;
	#20
	A = 16'h534b;
	B = 16'hdaf5;
	ans = 16'hf258;
	#20
	A = 16'h5405;
	B = 16'h5adb;
	ans = 16'h72e4;
	#20
	A = 16'h5bce;
	B = 16'h5b04;
	ans = 16'h7ad8;
	#20
	A = 16'hcf63;
	B = 16'hd8e9;
	ans = 16'h6c89;
	#20
	A = 16'hd990;
	B = 16'hd780;
	ans = 16'h7537;
	#20
	A = 16'h4e0e;
	B = 16'hd449;
	ans = 16'he67c;
	#20
	A = 16'hd184;
	B = 16'h5b27;
	ans = 16'hf0ee;
	#20
	A = 16'h596b;
	B = 16'h5712;
	ans = 16'h74ca;
	#20
	A = 16'hd6ff;
	B = 16'h5a7e;
	ans = 16'hf5ad;
	#20
	A = 16'h59b7;
	B = 16'h5aee;
	ans = 16'h78f3;
	#20
	A = 16'hd22f;
	B = 16'h5b6a;
	ans = 16'hf1bb;
	#20
	A = 16'hd85e;
	B = 16'h58ca;
	ans = 16'hf53b;
	#20
	A = 16'h549c;
	B = 16'hd8aa;
	ans = 16'hf160;
	#20
	A = 16'h54d5;
	B = 16'h5731;
	ans = 16'h7058;
	#20
	A = 16'h48bf;
	B = 16'h5989;
	ans = 16'h6691;
	#20
	A = 16'h4df3;
	B = 16'h54ce;
	ans = 16'h6725;
	#20
	A = 16'h5bcc;
	B = 16'h4aa4;
	ans = 16'h6a79;
	#20
	A = 16'hd953;
	B = 16'h5314;
	ans = 16'hf0b6;
	#20
	A = 16'hd864;
	B = 16'hd62d;
	ans = 16'h72c7;
	#20
	A = 16'h5b8a;
	B = 16'hcacd;
	ans = 16'hea69;
	#20
	A = 16'h59a4;
	B = 16'hda42;
	ans = 16'hf86a;
	#20
	A = 16'h49e5;
	B = 16'h490c;
	ans = 16'h5770;
	#20
	A = 16'hdb50;
	B = 16'h58e0;
	ans = 16'hf875;
	#20
	A = 16'h529e;
	B = 16'h59ad;
	ans = 16'h70b2;
	#20
	A = 16'hd5ea;
	B = 16'h5aab;
	ans = 16'hf4ee;
	#20
	A = 16'hd991;
	B = 16'h5172;
	ans = 16'hef94;
	#20
	A = 16'hd77d;
	B = 16'hdb1b;
	ans = 16'h76a7;
	#20
	A = 16'hda0a;
	B = 16'h5a21;
	ans = 16'hf8a0;
	#20
	A = 16'hdb05;
	B = 16'h5832;
	ans = 16'hf75d;
	#20
	A = 16'h5306;
	B = 16'h5bf0;
	ans = 16'h72f8;
	#20
	A = 16'h58d4;
	B = 16'hd870;
	ans = 16'hf55b;
	#20
	A = 16'hdac8;
	B = 16'hd49e;
	ans = 16'h73d4;
	#20
	A = 16'h5191;
	B = 16'h57c2;
	ans = 16'h6d66;
	#20
	A = 16'h4120;
	B = 16'h25d9;
	ans = 16'h2b7e;
	#20
	A = 16'hd93e;
	B = 16'h54ea;
	ans = 16'hf271;
	#20
	A = 16'h548a;
	B = 16'hdafb;
	ans = 16'hf3ec;
	#20
	A = 16'h5807;
	B = 16'hdb99;
	ans = 16'hf7a6;
	#20
	A = 16'h5763;
	B = 16'hd22c;
	ans = 16'hedb3;
	#20
	A = 16'hd25a;
	B = 16'hd9de;
	ans = 16'h70a9;
	#20
	A = 16'h59ee;
	B = 16'h5b2a;
	ans = 16'h794f;
	#20
	A = 16'hc99b;
	B = 16'hd95d;
	ans = 16'h6784;
	#20
	A = 16'h5a95;
	B = 16'h55a7;
	ans = 16'h74a7;
	#20
	A = 16'hda4f;
	B = 16'hdb77;
	ans = 16'h79e3;
	#20
	A = 16'hd7d0;
	B = 16'h53da;
	ans = 16'hefab;
	#20
	A = 16'hd8fd;
	B = 16'h580b;
	ans = 16'hf50b;
	#20
	A = 16'h55e7;
	B = 16'h5a02;
	ans = 16'h746f;
	#20
	A = 16'h5be4;
	B = 16'hd9c3;
	ans = 16'hf9af;
	#20
	A = 16'h59f4;
	B = 16'h513f;
	ans = 16'h6fcf;
	#20
	A = 16'h57ff;
	B = 16'hd6bd;
	ans = 16'hf2bc;
	#20
	A = 16'h5437;
	B = 16'hc816;
	ans = 16'he04e;
	#20
	A = 16'h57cb;
	B = 16'h5a9d;
	ans = 16'h7671;
	#20
	A = 16'h5109;
	B = 16'h566c;
	ans = 16'h6c0b;
	#20
	A = 16'hc8bb;
	B = 16'hd2b2;
	ans = 16'h5feb;
	#20
	A = 16'h5a53;
	B = 16'hd3dd;
	ans = 16'hf237;
	#20
	A = 16'h5a13;
	B = 16'h5a57;
	ans = 16'h78d0;
	#20
	A = 16'hda6f;
	B = 16'hd6dc;
	ans = 16'h7584;
	#20
	A = 16'h5722;
	B = 16'h5050;
	ans = 16'h6bb1;
	#20
	A = 16'h541c;
	B = 16'h56cb;
	ans = 16'h6efb;
	#20
	A = 16'hd9cc;
	B = 16'hdbbd;
	ans = 16'h799b;
	#20
	A = 16'hd837;
	B = 16'hd8f1;
	ans = 16'h7535;
	#20
	A = 16'h591f;
	B = 16'hd9a5;
	ans = 16'hf73a;
	#20
	A = 16'hbf8f;
	B = 16'hdbc6;
	ans = 16'h5f58;
	#20
	A = 16'hd678;
	B = 16'h4dac;
	ans = 16'he896;
	#20
	A = 16'hd64d;
	B = 16'hd523;
	ans = 16'h700c;
	#20
	A = 16'h51bc;
	B = 16'h5a77;
	ans = 16'h70a2;
	#20
	A = 16'h5227;
	B = 16'h555c;
	ans = 16'h6c1f;
	#20
	A = 16'hd885;
	B = 16'h54ef;
	ans = 16'hf193;
	#20
	A = 16'hd032;
	B = 16'h5309;
	ans = 16'he761;
	#20
	A = 16'h581f;
	B = 16'h5780;
	ans = 16'h73ba;
	#20
	A = 16'hda7c;
	B = 16'h53cd;
	ans = 16'hf253;
	#20
	A = 16'hda92;
	B = 16'h59ee;
	ans = 16'hf8df;
	#20
	A = 16'h5030;
	B = 16'h5926;
	ans = 16'h6d64;
	#20
	A = 16'hc506;
	B = 16'hd447;
	ans = 16'h5d5f;
	#20
	A = 16'h5992;
	B = 16'h57da;
	ans = 16'h7578;
	#20
	A = 16'h5ac2;
	B = 16'h53b5;
	ans = 16'h7283;
	#20
	A = 16'h55b0;
	B = 16'h5246;
	ans = 16'h6c76;
	#20
	A = 16'h5bc7;
	B = 16'h5511;
	ans = 16'h74ed;
	#20
	A = 16'hd7e6;
	B = 16'hd536;
	ans = 16'h7125;
	#20
	A = 16'hda60;
	B = 16'h507e;
	ans = 16'hef29;
	#20
	A = 16'h5972;
	B = 16'h5b8a;
	ans = 16'h7922;
	#20
	A = 16'hd08f;
	B = 16'hd7ef;
	ans = 16'h6c85;
	#20
	A = 16'h489f;
	B = 16'h5a73;
	ans = 16'h6773;
	#20
	A = 16'h592c;
	B = 16'hdb9e;
	ans = 16'hf8ed;
	#20
	A = 16'h468a;
	B = 16'h5b49;
	ans = 16'h65f4;
	#20
	A = 16'hd4f1;
	B = 16'hd264;
	ans = 16'h6be5;
	#20
	A = 16'hd6c5;
	B = 16'hd594;
	ans = 16'h70b8;
	#20
	A = 16'h51ee;
	B = 16'h59f8;
	ans = 16'h706d;
	#20
	A = 16'h565a;
	B = 16'hdbf5;
	ans = 16'hf651;
	#20
	A = 16'h5b44;
	B = 16'h578d;
	ans = 16'h76dc;
	#20
	A = 16'h5959;
	B = 16'hd6e3;
	ans = 16'hf49a;
	#20
	A = 16'hdb13;
	B = 16'hca4c;
	ans = 16'h6991;
	#20
	A = 16'hd959;
	B = 16'h5578;
	ans = 16'hf350;
	#20
	A = 16'h5b3e;
	B = 16'hd232;
	ans = 16'hf19c;
	#20
	A = 16'h5766;
	B = 16'h592c;
	ans = 16'h74c8;
	#20
	A = 16'hd508;
	B = 16'h5b54;
	ans = 16'hf49c;
	#20
	A = 16'hd895;
	B = 16'hda3c;
	ans = 16'h7724;
	#20
	A = 16'hd773;
	B = 16'hd65e;
	ans = 16'h71ee;
	#20
	A = 16'hdb57;
	B = 16'h5851;
	ans = 16'hf7ec;
	#20
	A = 16'hd6e0;
	B = 16'hd9f2;
	ans = 16'h751c;
	#20
	A = 16'h47ef;
	B = 16'h51b7;
	ans = 16'h5dab;
	#20
	A = 16'h58c1;
	B = 16'h4e3c;
	ans = 16'h6b69;
	#20
	A = 16'hd6a7;
	B = 16'hd9d3;
	ans = 16'h74d8;
	#20
	A = 16'h582e;
	B = 16'hd74e;
	ans = 16'hf3a2;
	#20
	A = 16'hbba6;
	B = 16'hd82a;
	ans = 16'h57f6;
	#20
	A = 16'h58dc;
	B = 16'hd7aa;
	ans = 16'hf4a8;
	#20
	A = 16'hd8d9;
	B = 16'hd66a;
	ans = 16'h73c6;
	#20
	A = 16'h51ab;
	B = 16'h57a4;
	ans = 16'h6d6a;
	#20
	A = 16'h50cd;
	B = 16'hdaf7;
	ans = 16'hf02e;
	#20
	A = 16'h583e;
	B = 16'hd2f0;
	ans = 16'hef5c;
	#20
	A = 16'h5ba4;
	B = 16'h583e;
	ans = 16'h780d;
	#20
	A = 16'hd314;
	B = 16'hd579;
	ans = 16'h6cd8;
	#20
	A = 16'h59a0;
	B = 16'hdbcb;
	ans = 16'hf97b;
	#20
	A = 16'hdb09;
	B = 16'h5150;
	ans = 16'hf0ac;
	#20
	A = 16'hd1f9;
	B = 16'h5b2c;
	ans = 16'hf15b;
	#20
	A = 16'hdac5;
	B = 16'hdaac;
	ans = 16'h79a5;
	#20
	A = 16'h59ba;
	B = 16'h55c6;
	ans = 16'h7422;
	#20
	A = 16'hd739;
	B = 16'hd987;
	ans = 16'h74fe;
	#20
	A = 16'h5363;
	B = 16'hca30;
	ans = 16'he1b7;
	#20
	A = 16'h577f;
	B = 16'h5ab6;
	ans = 16'h764a;
	#20
	A = 16'h5853;
	B = 16'hd8e4;
	ans = 16'hf549;
	#20
	A = 16'hd825;
	B = 16'hdac5;
	ans = 16'h7704;
	#20
	A = 16'h51ef;
	B = 16'hdb78;
	ans = 16'hf18a;
	#20
	A = 16'h52af;
	B = 16'hd90a;
	ans = 16'hf036;
	#20
	A = 16'h58d1;
	B = 16'h4f78;
	ans = 16'h6c7f;
	#20
	A = 16'h55af;
	B = 16'h5480;
	ans = 16'h6e65;
	#20
	A = 16'h50bb;
	B = 16'hd980;
	ans = 16'hee81;
	#20
	A = 16'hd9d7;
	B = 16'hdb38;
	ans = 16'h7945;
	#20
	A = 16'h52ea;
	B = 16'h5388;
	ans = 16'h6a82;
	#20
	A = 16'h5af1;
	B = 16'hd5e8;
	ans = 16'hf520;
	#20
	A = 16'hdaab;
	B = 16'h5aee;
	ans = 16'hf9c7;
	#20
	A = 16'h5816;
	B = 16'h52d7;
	ans = 16'h6efd;
	#20
	A = 16'hda20;
	B = 16'h556b;
	ans = 16'hf426;
	#20
	A = 16'h5b18;
	B = 16'hce53;
	ans = 16'hed9c;
	#20
	A = 16'hd490;
	B = 16'h59d1;
	ans = 16'hf2a2;
	#20
	A = 16'hd621;
	B = 16'hd7a4;
	ans = 16'h71db;
	#20
	A = 16'hd98a;
	B = 16'hd7dd;
	ans = 16'h7572;
	#20
	A = 16'h57c6;
	B = 16'h5419;
	ans = 16'h6ff7;
	#20
	A = 16'h4f17;
	B = 16'hdae8;
	ans = 16'hee1f;
	#20
	A = 16'hd9c6;
	B = 16'hd1f3;
	ans = 16'h704b;
	#20
	A = 16'hdb69;
	B = 16'hd017;
	ans = 16'h6f94;
	#20
	A = 16'hcbc4;
	B = 16'h51e8;
	ans = 16'he1bc;
	#20
	A = 16'h5028;
	B = 16'hdb49;
	ans = 16'hef92;
	#20
	A = 16'hd678;
	B = 16'h5a91;
	ans = 16'hf54f;
	#20
	A = 16'hdb49;
	B = 16'h5a5a;
	ans = 16'hf9c9;
	#20
	A = 16'hd8ac;
	B = 16'hd77d;
	ans = 16'h745f;
	#20
	A = 16'hc8c7;
	B = 16'hda97;
	ans = 16'h67df;
	#20
	A = 16'hd113;
	B = 16'h5ad4;
	ans = 16'hf055;
	#20
	A = 16'h5a44;
	B = 16'hd883;
	ans = 16'hf711;
	#20
	A = 16'h5b18;
	B = 16'hd2f3;
	ans = 16'hf229;
	#20
	A = 16'h5a35;
	B = 16'hda6e;
	ans = 16'hf8fd;
	#20
	A = 16'h5a99;
	B = 16'hd429;
	ans = 16'hf2dd;
	#20
	A = 16'h5aec;
	B = 16'hda67;
	ans = 16'hf98a;
	#20
	A = 16'hd0d5;
	B = 16'hd83d;
	ans = 16'h6d1f;
	#20
	A = 16'h596b;
	B = 16'hd4a9;
	ans = 16'hf250;
	#20
	A = 16'hd544;
	B = 16'h55a0;
	ans = 16'hef68;
	#20
	A = 16'hd0e3;
	B = 16'h4dcd;
	ans = 16'he316;
	#20
	A = 16'hd1b4;
	B = 16'h5a5a;
	ans = 16'hf087;
	#20
	A = 16'h5932;
	B = 16'hdb7c;
	ans = 16'hf8dc;
	#20
	A = 16'hd6e7;
	B = 16'h5bda;
	ans = 16'hf6c6;
	#20
	A = 16'h5bb0;
	B = 16'h55f3;
	ans = 16'h75b8;
	#20
	A = 16'h5773;
	B = 16'h58d7;
	ans = 16'h7482;
	#20
	A = 16'h5b69;
	B = 16'h43c9;
	ans = 16'h6336;
	#20
	A = 16'h5ad7;
	B = 16'h5316;
	ans = 16'h720f;
	#20
	A = 16'h5722;
	B = 16'hd48a;
	ans = 16'hf00c;
	#20
	A = 16'h55b2;
	B = 16'hd56c;
	ans = 16'hefb8;
	#20
	A = 16'hd663;
	B = 16'hd5aa;
	ans = 16'h7086;
	#20
	A = 16'h538d;
	B = 16'h55c3;
	ans = 16'h6d70;
	#20
	A = 16'h5922;
	B = 16'h594b;
	ans = 16'h76cb;
	#20
	A = 16'hd295;
	B = 16'hdaa7;
	ans = 16'h7179;
	#20
	A = 16'hd6fb;
	B = 16'hd202;
	ans = 16'h6d3e;
	#20
	A = 16'hda3f;
	B = 16'h5941;
	ans = 16'hf81a;
	#20
	A = 16'h5bb3;
	B = 16'hda21;
	ans = 16'hf9e6;
	#20
	A = 16'h5b8e;
	B = 16'hcf04;
	ans = 16'heea0;
	#20
	A = 16'hd9c4;
	B = 16'h5924;
	ans = 16'hf769;
	#20
	A = 16'h5a94;
	B = 16'hd9dd;
	ans = 16'hf8d2;
	#20
	A = 16'h54a2;
	B = 16'h5ad3;
	ans = 16'h73e7;
	#20
	A = 16'h53a4;
	B = 16'h53d0;
	ans = 16'h6b76;
	#20
	A = 16'h4f19;
	B = 16'hd203;
	ans = 16'he555;
	#20
	A = 16'hd872;
	B = 16'h58c6;
	ans = 16'hf54e;
	#20
	A = 16'h4a01;
	B = 16'hdaf8;
	ans = 16'he93b;
	#20
	A = 16'hda24;
	B = 16'hcfe4;
	ans = 16'h6e0f;
	#20
	A = 16'hd479;
	B = 16'hc9bc;
	ans = 16'h6269;
	#20
	A = 16'h52e2;
	B = 16'hd47a;
	ans = 16'hebb4;
	#20
	A = 16'h4c9b;
	B = 16'hd2db;
	ans = 16'he3e5;
	#20
	A = 16'h5647;
	B = 16'hdab8;
	ans = 16'hf546;
	#20
	A = 16'h54e5;
	B = 16'hd88a;
	ans = 16'hf18e;
	#20
	A = 16'hd8db;
	B = 16'hd72a;
	ans = 16'h7459;
	#20
	A = 16'h5697;
	B = 16'h4220;
	ans = 16'h5d0c;
	#20
	A = 16'hdb0a;
	B = 16'hda82;
	ans = 16'h79ba;
	#20
	A = 16'h5a32;
	B = 16'h59f2;
	ans = 16'h789b;
	#20
	A = 16'h53c0;
	B = 16'hd7cd;
	ans = 16'hef8f;
	#20
	A = 16'hd508;
	B = 16'h5a44;
	ans = 16'hf3e2;
	#20
	A = 16'h5a83;
	B = 16'h4811;
	ans = 16'h669f;
	#20
	A = 16'h5bd3;
	B = 16'h55e3;
	ans = 16'h75c2;
	#20
	A = 16'hdba9;
	B = 16'h58df;
	ans = 16'hf8aa;
	#20
	A = 16'h5723;
	B = 16'h55a6;
	ans = 16'h710a;
	#20
	A = 16'h58d6;
	B = 16'hd076;
	ans = 16'hed65;
	#20
	A = 16'hd9a0;
	B = 16'h5018;
	ans = 16'hedc2;
	#20
	A = 16'hdba6;
	B = 16'h4d64;
	ans = 16'hed27;
	#20
	A = 16'hc432;
	B = 16'hda35;
	ans = 16'h6283;
	#20
	A = 16'hda66;
	B = 16'h59a3;
	ans = 16'hf882;
	#20
	A = 16'h569d;
	B = 16'h59e5;
	ans = 16'h74df;
	#20
	A = 16'hd8c2;
	B = 16'hd800;
	ans = 16'h74c2;
	#20
	A = 16'hd8fd;
	B = 16'h590c;
	ans = 16'hf64b;
	#20
	A = 16'h5a30;
	B = 16'hd99b;
	ans = 16'hf856;
	#20
	A = 16'h58ce;
	B = 16'hd80a;
	ans = 16'hf4da;
	#20
	A = 16'hcc00;
	B = 16'h551a;
	ans = 16'he51a;
	#20
	A = 16'h5bed;
	B = 16'hda62;
	ans = 16'hfa53;
	#20
	A = 16'h5a19;
	B = 16'hda36;
	ans = 16'hf8bc;
	#20
	A = 16'h5731;
	B = 16'hd963;
	ans = 16'hf4d8;
	#20
	A = 16'hd5e0;
	B = 16'h58d5;
	ans = 16'hf319;
	#20
	A = 16'hd8bc;
	B = 16'h53bf;
	ans = 16'hf096;
	#20
	A = 16'h585d;
	B = 16'h5899;
	ans = 16'h7504;
	#20
	A = 16'hd569;
	B = 16'h5ae7;
	ans = 16'hf4ab;
	#20
	A = 16'hd1e8;
	B = 16'hd3ed;
	ans = 16'h69da;
	#20
	A = 16'h54d1;
	B = 16'hd341;
	ans = 16'hec5e;
	#20
	A = 16'hc29f;
	B = 16'h5982;
	ans = 16'he08f;
	#20
	A = 16'hd8cc;
	B = 16'h5783;
	ans = 16'hf481;
	#20
	A = 16'hd0cd;
	B = 16'h5a4c;
	ans = 16'hef8f;
	#20
	A = 16'h5924;
	B = 16'hd94c;
	ans = 16'hf6cf;
	#20
	A = 16'h59cb;
	B = 16'h584b;
	ans = 16'h7638;
	#20
	A = 16'hd531;
	B = 16'h5889;
	ans = 16'hf1e3;
	#20
	A = 16'hd352;
	B = 16'hd56d;
	ans = 16'h6cf7;
	#20
	A = 16'h5800;
	B = 16'hdb90;
	ans = 16'hf790;
	#20
	A = 16'hda75;
	B = 16'hd924;
	ans = 16'h7826;
	#20
	A = 16'h5701;
	B = 16'h4fcc;
	ans = 16'h6ad3;
	#20
	A = 16'h5b36;
	B = 16'hd8ea;
	ans = 16'hf86e;
	#20
	A = 16'hc4a1;
	B = 16'h59a0;
	ans = 16'he282;
	#20
	A = 16'hdac7;
	B = 16'h5173;
	ans = 16'hf09e;
	#20
	A = 16'hd5c0;
	B = 16'h5792;
	ans = 16'hf171;
	#20
	A = 16'h5729;
	B = 16'hd96f;
	ans = 16'hf4dd;
	#20
	A = 16'hd7a7;
	B = 16'h57ad;
	ans = 16'hf358;
	#20
	A = 16'hd7df;
	B = 16'h5678;
	ans = 16'hf25d;
	#20
	A = 16'hd654;
	B = 16'hd04a;
	ans = 16'h6ac9;
	#20
	A = 16'h5bbe;
	B = 16'h4998;
	ans = 16'h696a;
	#20
	A = 16'h5b36;
	B = 16'hcf1a;
	ans = 16'hee67;
	#20
	A = 16'h5b57;
	B = 16'h5b86;
	ans = 16'h7ae7;
	#20
	A = 16'hd950;
	B = 16'h5ba0;
	ans = 16'hf910;
	#20
	A = 16'h4df0;
	B = 16'hd76a;
	ans = 16'he981;
	#20
	A = 16'hd96b;
	B = 16'h3cb8;
	ans = 16'hda64;
	#20
	A = 16'hd84b;
	B = 16'hd3bc;
	ans = 16'h7027;
	#20
	A = 16'hda03;
	B = 16'h57f4;
	ans = 16'hf5fa;
	#20
	A = 16'h569e;
	B = 16'h58fb;
	ans = 16'h741f;
	#20
	A = 16'hda38;
	B = 16'h59c9;
	ans = 16'hf87f;
	#20
	A = 16'hdb1f;
	B = 16'h581e;
	ans = 16'hf754;
	#20
	A = 16'hd72e;
	B = 16'h57cc;
	ans = 16'hf2ff;
	#20
	A = 16'hcb5c;
	B = 16'h58f2;
	ans = 16'he88d;
	#20
	A = 16'h5069;
	B = 16'hd905;
	ans = 16'hed89;
	#20
	A = 16'hcdb7;
	B = 16'hd9f3;
	ans = 16'h6c40;
	#20
	A = 16'hd417;
	B = 16'h54ba;
	ans = 16'hecd5;
	#20
	A = 16'hda1b;
	B = 16'hd764;
	ans = 16'h75a4;
	#20
	A = 16'hd720;
	B = 16'hd5c4;
	ans = 16'h7123;
	#20
	A = 16'h4e66;
	B = 16'h5634;
	ans = 16'h68f6;
	#20
	A = 16'h59e1;
	B = 16'h59b6;
	ans = 16'h7832;
	#20
	A = 16'hda84;
	B = 16'hdba6;
	ans = 16'h7a3b;
	#20
	A = 16'h5841;
	B = 16'h5a28;
	ans = 16'h768c;
	#20
	A = 16'hd500;
	B = 16'hd342;
	ans = 16'h6c89;
	#20
	A = 16'hd7bf;
	B = 16'h580f;
	ans = 16'hf3dc;
	#20
	A = 16'hd942;
	B = 16'hdb13;
	ans = 16'h78a6;
	#20
	A = 16'hd5c7;
	B = 16'hda72;
	ans = 16'h74a8;
	#20
	A = 16'hce23;
	B = 16'h4f31;
	ans = 16'he184;
	#20
	A = 16'h43fe;
	B = 16'h5569;
	ans = 16'h5d68;
	#20
	A = 16'h5bb4;
	B = 16'h566d;
	ans = 16'h7630;
	#20
	A = 16'hd99c;
	B = 16'hd788;
	ans = 16'h7548;
	#20
	A = 16'hd611;
	B = 16'h5b26;
	ans = 16'hf56c;
	#20
	A = 16'h5ba8;
	B = 16'h5764;
	ans = 16'h7713;
	#20
	A = 16'h581d;
	B = 16'h55a9;
	ans = 16'h71d2;
	#20
	A = 16'hdb48;
	B = 16'hc2f2;
	ans = 16'h6252;
	#20
	A = 16'hd83c;
	B = 16'h5877;
	ans = 16'hf4ba;
	#20
	A = 16'hcfda;
	B = 16'hd0e8;
	ans = 16'h64d1;
	#20
	A = 16'h4c83;
	B = 16'hdafb;
	ans = 16'hebe0;
	#20
	A = 16'h5a37;
	B = 16'h5b90;
	ans = 16'h79e0;
	#20
	A = 16'hd970;
	B = 16'hd549;
	ans = 16'h732f;
	#20
	A = 16'h5888;
	B = 16'h547d;
	ans = 16'h7116;
	#20
	A = 16'hd2d5;
	B = 16'h5125;
	ans = 16'he865;
	#20
	A = 16'h57c0;
	B = 16'hd904;
	ans = 16'hf4dc;
	#20
	A = 16'hd66f;
	B = 16'hd5bd;
	ans = 16'h709d;
	#20
	A = 16'h5659;
	B = 16'h58c4;
	ans = 16'h7390;
	#20
	A = 16'hd0b1;
	B = 16'h5bd6;
	ans = 16'hf098;
	#20
	A = 16'hda98;
	B = 16'h59da;
	ans = 16'hf8d3;
	#20
	A = 16'h5b8a;
	B = 16'h5947;
	ans = 16'h78f9;
	#20
	A = 16'hdbc2;
	B = 16'hdac4;
	ans = 16'h7a90;
	#20
	A = 16'hd0db;
	B = 16'hd1ce;
	ans = 16'h670c;
	#20
	A = 16'h5aca;
	B = 16'h5bd2;
	ans = 16'h7aa3;
	#20
	A = 16'h5a2e;
	B = 16'h567b;
	ans = 16'h7502;
	#20
	A = 16'h5b07;
	B = 16'h5574;
	ans = 16'h74ca;
	#20
	A = 16'hc681;
	B = 16'h591a;
	ans = 16'he426;
	#20
	A = 16'h5912;
	B = 16'hd02d;
	ans = 16'hed4b;
	#20
	A = 16'hdbe7;
	B = 16'hda1c;
	ans = 16'h7a09;
	#20
	A = 16'h58bf;
	B = 16'h561c;
	ans = 16'h7340;
	#20
	A = 16'h59d0;
	B = 16'h5a36;
	ans = 16'h7883;
	#20
	A = 16'hd151;
	B = 16'h4e9c;
	ans = 16'he464;
	#20
	A = 16'hd644;
	B = 16'hd82a;
	ans = 16'h7286;
	#20
	A = 16'h548c;
	B = 16'h5793;
	ans = 16'h704e;
	#20
	A = 16'hd8ec;
	B = 16'hced4;
	ans = 16'h6c33;
	#20
	A = 16'h555f;
	B = 16'hd1c3;
	ans = 16'hebbd;
	#20
	A = 16'hd8a1;
	B = 16'h5371;
	ans = 16'hf04e;
	#20
	A = 16'hd9a5;
	B = 16'hdaaf;
	ans = 16'h78b7;
	#20
	A = 16'h5724;
	B = 16'hca07;
	ans = 16'he561;
	#20
	A = 16'h5a91;
	B = 16'hd3cb;
	ans = 16'hf265;
	#20
	A = 16'h5670;
	B = 16'h5842;
	ans = 16'h72da;
	#20
	A = 16'hd703;
	B = 16'h4d5d;
	ans = 16'he8b3;
	#20
	A = 16'h55c9;
	B = 16'h586b;
	ans = 16'h7264;
	#20
	A = 16'hd728;
	B = 16'hd685;
	ans = 16'h71d5;
	#20
	A = 16'h5447;
	B = 16'h58e1;
	ans = 16'h7138;
	#20
	A = 16'hc658;
	B = 16'hd975;
	ans = 16'h6454;
	#20
	A = 16'hd029;
	B = 16'h596b;
	ans = 16'heda3;
	#20
	A = 16'h5446;
	B = 16'hdb3e;
	ans = 16'hf3bd;
	#20
	A = 16'h575b;
	B = 16'hdb48;
	ans = 16'hf6b2;
	#20
	A = 16'hd140;
	B = 16'hd85d;
	ans = 16'h6dba;
	#20
	A = 16'hdb34;
	B = 16'h5870;
	ans = 16'hf7fe;
	#20
	A = 16'h5819;
	B = 16'h510f;
	ans = 16'h6d2f;
	#20
	A = 16'hd7af;
	B = 16'hd572;
	ans = 16'h713b;
	#20
	A = 16'h499e;
	B = 16'hd930;
	ans = 16'he749;
	#20
	A = 16'h595f;
	B = 16'h4ca4;
	ans = 16'h6a3b;
	#20
	A = 16'hd836;
	B = 16'hcf16;
	ans = 16'h6b76;
	#20
	A = 16'hd822;
	B = 16'h3ca0;
	ans = 16'hd8c7;
	#20
	A = 16'hd668;
	B = 16'h5975;
	ans = 16'hf45f;
	#20
	A = 16'h5b0d;
	B = 16'h55fd;
	ans = 16'h7547;
	#20
	A = 16'hd763;
	B = 16'hdb2c;
	ans = 16'h769f;
	#20
	A = 16'h5573;
	B = 16'hd6be;
	ans = 16'hf098;
	#20
	A = 16'hc6a3;
	B = 16'h579f;
	ans = 16'he253;
	#20
	A = 16'h5924;
	B = 16'hd85e;
	ans = 16'hf59d;
	#20
	A = 16'h5988;
	B = 16'h564f;
	ans = 16'h745d;
	#20
	A = 16'h476b;
	B = 16'h4fa1;
	ans = 16'h5b13;
	#20
	A = 16'h557f;
	B = 16'hdb93;
	ans = 16'hf534;
	#20
	A = 16'h51ab;
	B = 16'hd925;
	ans = 16'hef4a;
	#20
	A = 16'hd2c1;
	B = 16'h598a;
	ans = 16'hf0ad;
	#20
	A = 16'hda14;
	B = 16'h4e3e;
	ans = 16'hecbe;
	#20
	A = 16'h5022;
	B = 16'hd869;
	ans = 16'hec8e;
	#20
	A = 16'h5b39;
	B = 16'hd1e9;
	ans = 16'hf156;
	#20
	A = 16'h4d01;
	B = 16'hdaf4;
	ans = 16'hec59;
	#20
	A = 16'h586c;
	B = 16'h5aa9;
	ans = 16'h775d;
	#20
	A = 16'hdba3;
	B = 16'h5bc7;
	ans = 16'hfb6d;
	#20
	A = 16'h58b3;
	B = 16'h55e4;
	ans = 16'h72ec;
	#20
	A = 16'h5ba2;
	B = 16'hd381;
	ans = 16'hf329;
	#20
	A = 16'hdb4a;
	B = 16'h5a79;
	ans = 16'hf9e6;
	#20
	A = 16'h5951;
	B = 16'h5965;
	ans = 16'h772b;
	#20
	A = 16'hd845;
	B = 16'h59d8;
	ans = 16'hf63d;
	#20
	A = 16'hd18e;
	B = 16'hd52a;
	ans = 16'h6b2c;
	#20
	A = 16'hd98a;
	B = 16'h5a53;
	ans = 16'hf861;
	#20
	A = 16'hdb3b;
	B = 16'h5843;
	ans = 16'hf7b4;
	#20
	A = 16'hd813;
	B = 16'hd91a;
	ans = 16'h7532;
	#20
	A = 16'hd01b;
	B = 16'hd954;
	ans = 16'h6d78;
	#20
	A = 16'h5847;
	B = 16'h5826;
	ans = 16'h7470;
	#20
	A = 16'hd834;
	B = 16'hd1f1;
	ans = 16'h6e3e;
	#20
	A = 16'h5411;
	B = 16'h54a5;
	ans = 16'h6cb9;
	#20
	A = 16'h5aa9;
	B = 16'h59da;
	ans = 16'h78df;
	#20
	A = 16'h5822;
	B = 16'hd2c3;
	ans = 16'heefc;
	#20
	A = 16'h588d;
	B = 16'hd771;
	ans = 16'hf43c;
	#20
	A = 16'h42c8;
	B = 16'h549f;
	ans = 16'h5bd6;
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
