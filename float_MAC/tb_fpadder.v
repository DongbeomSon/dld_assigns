module tb_fp16MAC;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;
	reg [15:0] ans_reg;
	// Outputs
	reg [15:0] a,b,c,r;
	reg ans_m;
	wire  [15:0] acc, error;
	reg [15:0] ans_a;
	assign error = acc - r;

	// Instantiate the Unit Under Test (UUT)
	fp16MAC uut (
		.a(A), 
		.b(B), 
		.acc(acc), 
		.CLK(CLK), 
		.RESETn(RESETn)
	);

	initial begin
		// Initialize Inputs
	#50

	A = 16'hbc4e;
	B = 16'h3973;
	ans_a = 16'hb9dd;
	#20
	A = 16'h3c76;
	B = 16'h2ca7;
	ans_a = 16'hb937;
	#20
	A = 16'hbfbb;
	B = 16'h2dc9;
	ans_a = 16'hba9d;
	#20
	A = 16'hbea0;
	B = 16'hbf2a;
	ans_a = 16'h4048;
	#20
	A = 16'hbf6f;
	B = 16'h3c21;
	ans_a = 16'h3320;
	#20
	A = 16'hbfc0;
	B = 16'h3d43;
	ans_a = 16'hc0a7;
	#20
	A = 16'h3ff7;
	B = 16'hbc0b;
	ans_a = 16'hc456;
	#20
	A = 16'ha8e0;
	B = 16'h3232;
	ans_a = 16'hc458;
	#20
	A = 16'h3912;
	B = 16'h3d61;
	ans_a = 16'hc2fc;
	#20
	A = 16'h3e34;
	B = 16'h3db6;
	ans_a = 16'hbd1c;
	#20
	A = 16'hbdde;
	B = 16'hb9b8;
	ans_a = 16'hb350;
	#20
	A = 16'h3a06;
	B = 16'hbe89;
	ans_a = 16'hbdd6;
	#20
	A = 16'h3d02;
	B = 16'h3f54;
	ans_a = 16'h3aac;
	#20
	A = 16'hb8de;
	B = 16'h3d4c;
	ans_a = 16'h2740;
	#20
	A = 16'hb9c8;
	B = 16'h3b99;
	ans_a = 16'hb944;
	#20
	A = 16'h3d42;
	B = 16'h38da;
	ans_a = 16'h3074;
	#20
	A = 16'h3c48;
	B = 16'h39e0;
	ans_a = 16'h3b67;
	#20
	A = 16'h3ce6;
	B = 16'hbcff;
	ans_a = 16'hb8d5;
	#20
	A = 16'hb46e;
	B = 16'hbdd3;
	ans_a = 16'hb26e;
	#20
	A = 16'hb883;
	B = 16'hbf41;
	ans_a = 16'h3a92;
	#20
	A = 16'hbf12;
	B = 16'h3eb5;
	ans_a = 16'hc048;
	#20
	A = 16'hbebe;
	B = 16'h3947;
	ans_a = 16'hc282;
	#20
	A = 16'hbd7a;
	B = 16'h3f43;
	ans_a = 16'hc5be;
	#20
	A = 16'hbf04;
	B = 16'hb9cc;
	ans_a = 16'hc479;
	#20
	A = 16'h3a01;
	B = 16'h371b;
	ans_a = 16'hc424;
	#20
	A = 16'h3d79;
	B = 16'hba90;
	ans_a = 16'hc543;
	#20
	A = 16'hbf39;
	B = 16'hba10;
	ans_a = 16'hc3ca;
	#20
	A = 16'hbde6;
	B = 16'h3e49;
	ans_a = 16'hc636;
	#20
	A = 16'h3f44;
	B = 16'hbf04;
	ans_a = 16'hc8b3;
	#20
	A = 16'h3970;
	B = 16'hb856;
	ans_a = 16'hc8e2;
	#20
	A = 16'hbc46;
	B = 16'h9fa2;
	ans_a = 16'hc8e1;
	#20
	A = 16'hbf1d;
	B = 16'haad0;
	ans_a = 16'hc8d5;
	#20
	A = 16'hb9d9;
	B = 16'h3e0b;
	ans_a = 16'hc962;
	#20
	A = 16'h3622;
	B = 16'h3e72;
	ans_a = 16'hc913;
	#20
	A = 16'hbbd3;
	B = 16'h3e41;
	ans_a = 16'hc9d7;
	#20
	A = 16'hafe5;
	B = 16'hbe51;
	ans_a = 16'hc9be;
	#20
	A = 16'hbb7f;
	B = 16'h3b0b;
	ans_a = 16'hca28;
	#20
	A = 16'hbd44;
	B = 16'hbf3a;
	ans_a = 16'hc8f8;
	#20
	A = 16'hb732;
	B = 16'h3d12;
	ans_a = 16'hc941;
	#20
	A = 16'hbd4b;
	B = 16'hbf0b;
	ans_a = 16'hc817;
	#20
	A = 16'hba4c;
	B = 16'h3139;
	ans_a = 16'hc827;
	#20
	A = 16'h3956;
	B = 16'h3d12;
	ans_a = 16'hc776;
	#20
	A = 16'h2d57;
	B = 16'hbd6f;
	ans_a = 16'hc793;
	#20
	A = 16'h2fe1;
	B = 16'hbf9d;
	ans_a = 16'hc7cf;
	#20
	A = 16'h3f86;
	B = 16'h35ec;
	ans_a = 16'hc71d;
	#20
	A = 16'ha80f;
	B = 16'h3e2a;
	ans_a = 16'hc72a;
	#20
	A = 16'h3ecd;
	B = 16'h3c9e;
	ans_a = 16'hc534;
	#20
	A = 16'h3e42;
	B = 16'hb841;
	ans_a = 16'hc609;
	#20
	A = 16'h3e67;
	B = 16'h348c;
	ans_a = 16'hc595;
	#20
	A = 16'h273c;
	B = 16'h3be2;
	ans_a = 16'hc58e;
	#20
	A = 16'hbeed;
	B = 16'h3b19;
	ans_a = 16'hc717;
	#20
	A = 16'h3581;
	B = 16'h3f42;
	ans_a = 16'hc677;
	#20
	A = 16'h9a55;
	B = 16'h3993;
	ans_a = 16'hc678;
	#20
	A = 16'h3ce2;
	B = 16'h3ef3;
	ans_a = 16'hc459;
	#20
	A = 16'hbb87;
	B = 16'hb4c8;
	ans_a = 16'hc411;
	#20
	A = 16'hb959;
	B = 16'h3c0c;
	ans_a = 16'hc4be;
	#20
	A = 16'h39df;
	B = 16'h3885;
	ans_a = 16'hc454;
	#20
	A = 16'h3e56;
	B = 16'hbf2a;
	ans_a = 16'hc72a;
	#20
	A = 16'hbe00;
	B = 16'hb81f;
	ans_a = 16'hc664;
	#20
	A = 16'h3d52;
	B = 16'haae6;
	ans_a = 16'hc676;
	#20
	A = 16'hbba8;
	B = 16'hbc56;
	ans_a = 16'hc56c;
	#20
	A = 16'h3c4a;
	B = 16'hb89f;
	ans_a = 16'hc60a;
	#20
	A = 16'h3c03;
	B = 16'h3ce1;
	ans_a = 16'hc4d1;
	#20
	A = 16'hbfbc;
	B = 16'hbf20;
	ans_a = 16'hbd7e;
	#20
	A = 16'h3f72;
	B = 16'h3e6e;
	ans_a = 16'h3e7a;
	#20
	A = 16'hb8e6;
	B = 16'hbf9a;
	ans_a = 16'h4191;
	#20
	A = 16'hb494;
	B = 16'hba8e;
	ans_a = 16'h4209;
	#20
	A = 16'h3d96;
	B = 16'hba5d;
	ans_a = 16'h3fa1;
	#20
	A = 16'h3c21;
	B = 16'h3d11;
	ans_a = 16'h426e;
	#20
	A = 16'h3f92;
	B = 16'hc000;
	ans_a = 16'hb890;
	#20
	A = 16'hbe54;
	B = 16'hbcfb;
	ans_a = 16'h3d99;
	#20
	A = 16'h3a88;
	B = 16'hbd96;
	ans_a = 16'h3428;
	#20
	A = 16'h3bfc;
	B = 16'h3b5a;
	ans_a = 16'h3cb5;
	#20
	A = 16'h3ba9;
	B = 16'h3a96;
	ans_a = 16'h3fdc;
	#20
	A = 16'h3684;
	B = 16'h37e8;
	ans_a = 16'h4055;
	#20
	A = 16'h3fef;
	B = 16'h3de4;
	ans_a = 16'h4516;
	#20
	A = 16'hb96d;
	B = 16'hbb91;
	ans_a = 16'h45ba;
	#20
	A = 16'hbdf8;
	B = 16'hb13f;
	ans_a = 16'h45f9;
	#20
	A = 16'hbf08;
	B = 16'h3649;
	ans_a = 16'h4548;
	#20
	A = 16'hb779;
	B = 16'h3f25;
	ans_a = 16'h4472;
	#20
	A = 16'h36a3;
	B = 16'hbfe9;
	ans_a = 16'h4340;
	#20
	A = 16'hbe04;
	B = 16'hba1e;
	ans_a = 16'h44c6;
	#20
	A = 16'hb5d3;
	B = 16'hb836;
	ans_a = 16'h44f7;
	#20
	A = 16'hb794;
	B = 16'h38a9;
	ans_a = 16'h44b0;
	#20
	A = 16'hba6a;
	B = 16'h3dea;
	ans_a = 16'h4301;
	#20
	A = 16'hbb84;
	B = 16'h3eab;
	ans_a = 16'h3fbe;
	#20
	A = 16'h2894;
	B = 16'hba64;
	ans_a = 16'h3fa1;
	#20
	A = 16'h3c42;
	B = 16'hb1d4;
	ans_a = 16'h3eda;
	#20
	A = 16'hb60f;
	B = 16'h370a;
	ans_a = 16'h3e2f;
	#20
	A = 16'hbce6;
	B = 16'h3877;
	ans_a = 16'h3ae6;
	#20
	A = 16'h3d87;
	B = 16'h2e8e;
	ans_a = 16'h3c04;
	#20
	A = 16'h2907;
	B = 16'hbec1;
	ans_a = 16'h3b80;
	#20
	A = 16'h3ce3;
	B = 16'hbd23;
	ans_a = 16'hb90e;
	#20
	A = 16'hb909;
	B = 16'hbdac;
	ans_a = 16'h342c;
	#20
	A = 16'hbfe3;
	B = 16'h3ec9;
	ans_a = 16'hc22a;
	#20
	A = 16'h2e43;
	B = 16'h3d14;
	ans_a = 16'hc1ea;
	#20
	A = 16'hbf5a;
	B = 16'h3649;
	ans_a = 16'hc35c;
	#20
	A = 16'h3d42;
	B = 16'hbe57;
	ans_a = 16'hc5c4;
	#20
	A = 16'h3ff5;
	B = 16'h3569;
	ans_a = 16'hc518;
	#20
	A = 16'h3dd0;
	B = 16'hbaf1;
	ans_a = 16'hc65b;
	#20
	A = 16'hbf98;
	B = 16'hbf01;
	ans_a = 16'hc210;
	#20
	A = 16'hb6cc;
	B = 16'hb71b;
	ans_a = 16'hc1af;
	#20
	A = 16'h3e08;
	B = 16'hb300;
	ans_a = 16'hc258;
	#20
	A = 16'hba37;
	B = 16'hbec4;
	ans_a = 16'hbf6e;
	#20
	A = 16'h3173;
	B = 16'h3deb;
	ans_a = 16'hbe6c;
	#20
	A = 16'hb384;
	B = 16'h3bc5;
	ans_a = 16'hbf56;
	#20
	A = 16'hab0a;
	B = 16'hb8b3;
	ans_a = 16'hbf35;
	#20
	A = 16'hbdfd;
	B = 16'hba2f;
	ans_a = 16'hb928;
	#20
	A = 16'h3c96;
	B = 16'hbdd0;
	ans_a = 16'hc09f;
	#20
	A = 16'h3ad7;
	B = 16'hb81f;
	ans_a = 16'hc180;
	#20
	A = 16'h3d6d;
	B = 16'hb45d;
	ans_a = 16'hc23d;
	#20
	A = 16'h3fb5;
	B = 16'h3a36;
	ans_a = 16'hbe7e;
	#20
	A = 16'h3d85;
	B = 16'hb0c9;
	ans_a = 16'hbf51;
	#20
	A = 16'hbcec;
	B = 16'hbdc1;
	ans_a = 16'haba0;
	#20
	A = 16'hbd77;
	B = 16'hbd74;
	ans_a = 16'h3f36;
	#20
	A = 16'h3abb;
	B = 16'h30bc;
	ans_a = 16'h3fb5;
	#20
	A = 16'hb9d8;
	B = 16'h3d58;
	ans_a = 16'h3b9b;
	#20
	A = 16'h1158;
	B = 16'hacb9;
	ans_a = 16'h3b9b;
	#20
	A = 16'hbfc9;
	B = 16'h3eec;
	ans_a = 16'hc0d5;
	#20
	A = 16'hbe8f;
	B = 16'h3a12;
	ans_a = 16'hc352;
	#20
	A = 16'h38a5;
	B = 16'h3b1c;
	ans_a = 16'hc24a;
	#20
	A = 16'h3a01;
	B = 16'h3ba1;
	ans_a = 16'hc0dc;
	#20
	A = 16'h3f39;
	B = 16'h331c;
	ans_a = 16'hc00f;
	#20
	A = 16'h38dc;
	B = 16'hbce2;
	ans_a = 16'hc18b;
	#20
	A = 16'h3ebe;
	B = 16'h3f76;
	ans_a = 16'h35f8;
	#20
	A = 16'h3f59;
	B = 16'hb31e;
	ans_a = 16'ha888;
	#20
	A = 16'h3fbc;
	B = 16'h3dab;
	ans_a = 16'h4169;
	#20
	A = 16'h3844;
	B = 16'hbada;
	ans_a = 16'h407f;
	#20
	A = 16'h2931;
	B = 16'ha84a;
	ans_a = 16'h407e;
	#20
	A = 16'hb46e;
	B = 16'hbb5f;
	ans_a = 16'h4101;
	#20
	A = 16'hb1df;
	B = 16'hbd65;
	ans_a = 16'h4180;
	#20
	A = 16'h3ebf;
	B = 16'h3a36;
	ans_a = 16'h440f;
	#20
	A = 16'hb68a;
	B = 16'hb0d4;
	ans_a = 16'h441f;
	#20
	A = 16'hbaa6;
	B = 16'h2d52;
	ans_a = 16'h440d;
	#20
	A = 16'h3dbc;
	B = 16'hbdda;
	ans_a = 16'h3fd0;
	#20
	A = 16'hbf93;
	B = 16'hbdee;
	ans_a = 16'h44c2;
	#20
	A = 16'h3fe6;
	B = 16'h3a55;
	ans_a = 16'h4652;
	#20
	A = 16'hb96b;
	B = 16'h2ad5;
	ans_a = 16'h4649;
	#20
	A = 16'hbbd5;
	B = 16'hbec0;
	ans_a = 16'h47f0;
	#20
	A = 16'hbd30;
	B = 16'hbf4c;
	ans_a = 16'h4927;
	#20
	A = 16'h3cc3;
	B = 16'ha7a3;
	ans_a = 16'h4922;
	#20
	A = 16'hbd4c;
	B = 16'h38b2;
	ans_a = 16'h48be;
	#20
	A = 16'hb78b;
	B = 16'hbf60;
	ans_a = 16'h492d;
	#20
	A = 16'h3e8e;
	B = 16'hbd15;
	ans_a = 16'h4822;
	#20
	A = 16'hbca8;
	B = 16'hb8c2;
	ans_a = 16'h487b;
	#20
	A = 16'h3bb3;
	B = 16'hb618;
	ans_a = 16'h484c;
	#20
	A = 16'h3cfc;
	B = 16'hb934;
	ans_a = 16'h47c8;
	#20
	A = 16'hbdba;
	B = 16'h3830;
	ans_a = 16'h4708;
	#20
	A = 16'h2e43;
	B = 16'hba14;
	ans_a = 16'h46f5;
	#20
	A = 16'hbad9;
	B = 16'hbfb6;
	ans_a = 16'h484e;
	#20
	A = 16'h3fd3;
	B = 16'hba89;
	ans_a = 16'h4703;
	#20
	A = 16'hbec0;
	B = 16'h3659;
	ans_a = 16'h4658;
	#20
	A = 16'hbf20;
	B = 16'hbb35;
	ans_a = 16'h47f3;
	#20
	A = 16'h3e99;
	B = 16'hb8ad;
	ans_a = 16'h46fc;
	#20
	A = 16'hbbc2;
	B = 16'h3cfe;
	ans_a = 16'h45c6;
	#20
	A = 16'h3d3a;
	B = 16'h3dfb;
	ans_a = 16'h47ba;
	#20
	A = 16'hbd03;
	B = 16'h3c2b;
	ans_a = 16'h466c;
	#20
	A = 16'hbc68;
	B = 16'ha951;
	ans_a = 16'h4678;
	#20
	A = 16'h35da;
	B = 16'h3444;
	ans_a = 16'h4691;
	#20
	A = 16'h30c0;
	B = 16'hbaf9;
	ans_a = 16'h4670;
	#20
	A = 16'hb2cd;
	B = 16'hb84f;
	ans_a = 16'h468d;
	#20
	A = 16'h3a2e;
	B = 16'hbf96;
	ans_a = 16'h4516;
	#20
	A = 16'h3c64;
	B = 16'h31ef;
	ans_a = 16'h454a;
	#20
	A = 16'h21a5;
	B = 16'h3de5;
	ans_a = 16'h454e;
	#20
	A = 16'hbcb5;
	B = 16'h3dee;
	ans_a = 16'h431f;
	#20
	A = 16'hb40f;
	B = 16'h39b4;
	ans_a = 16'h42c2;
	#20
	A = 16'hbfc7;
	B = 16'h3b9e;
	ans_a = 16'h3e1c;
	#20
	A = 16'h3f98;
	B = 16'h3ec3;
	ans_a = 16'h44bc;
	#20
	A = 16'h36f6;
	B = 16'hbfa4;
	ans_a = 16'h43ce;
	#20
	A = 16'hbcfa;
	B = 16'h384d;
	ans_a = 16'h4278;
	#20
	A = 16'hb893;
	B = 16'hb953;
	ans_a = 16'h433b;
	#20
	A = 16'hbaef;
	B = 16'hb802;
	ans_a = 16'h440d;
	#20
	A = 16'hb508;
	B = 16'h3bea;
	ans_a = 16'h437b;
	#20
	A = 16'hb1cb;
	B = 16'hbdf4;
	ans_a = 16'h4402;
	#20
	A = 16'h3ca6;
	B = 16'h3f64;
	ans_a = 16'h4628;
	#20
	A = 16'h380e;
	B = 16'h3e38;
	ans_a = 16'h46f2;
	#20
	A = 16'hb66b;
	B = 16'h394d;
	ans_a = 16'h46ae;
	#20
	A = 16'hbd0d;
	B = 16'hb68d;
	ans_a = 16'h4732;
	#20
	A = 16'h3507;
	B = 16'h375b;
	ans_a = 16'h4757;
	#20
	A = 16'hbe07;
	B = 16'hbc1c;
	ans_a = 16'h4872;
	#20
	A = 16'hbe98;
	B = 16'hbfec;
	ans_a = 16'h4a14;
	#20
	A = 16'hbef9;
	B = 16'hb58f;
	ans_a = 16'h4a62;
	#20
	A = 16'hbc6e;
	B = 16'h329b;
	ans_a = 16'h4a45;
	#20
	A = 16'h3c75;
	B = 16'h3b74;
	ans_a = 16'h4aca;
	#20
	A = 16'h3bbe;
	B = 16'hbf48;
	ans_a = 16'h49e8;
	#20
	A = 16'hb90d;
	B = 16'h3d60;
	ans_a = 16'h497b;
	#20
	A = 16'h3d7b;
	B = 16'hb433;
	ans_a = 16'h494d;
	#20
	A = 16'h30f6;
	B = 16'hbbaf;
	ans_a = 16'h493a;
	#20
	A = 16'hb86e;
	B = 16'hbfa2;
	ans_a = 16'h49c1;
	#20
	A = 16'h3048;
	B = 16'h3db1;
	ans_a = 16'h49d9;
	#20
	A = 16'hbe40;
	B = 16'hbd25;
	ans_a = 16'h4ada;
	#20
	A = 16'h3f87;
	B = 16'hb8db;
	ans_a = 16'h4a48;
	#20
	A = 16'h3d81;
	B = 16'h3886;
	ans_a = 16'h4aac;
	#20
	A = 16'hbff0;
	B = 16'hb0b0;
	ans_a = 16'h4ad1;
	#20
	A = 16'h3348;
	B = 16'h3bd7;
	ans_a = 16'h4aee;
	#20
	A = 16'hb3d7;
	B = 16'hbac4;
	ans_a = 16'h4b09;
	#20
	A = 16'h3b8e;
	B = 16'hbf99;
	ans_a = 16'h4a23;
	#20
	A = 16'hbd8b;
	B = 16'hb888;
	ans_a = 16'h4a87;
	#20
	A = 16'h3b9b;
	B = 16'h3125;
	ans_a = 16'h4a9b;
	#20
	A = 16'h3f67;
	B = 16'hbeed;
	ans_a = 16'h4901;
	#20
	A = 16'hb0d8;
	B = 16'h3dec;
	ans_a = 16'h48e4;
	#20
	A = 16'hb713;
	B = 16'h395c;
	ans_a = 16'h48be;
	#20
	A = 16'h3d39;
	B = 16'h3b42;
	ans_a = 16'h4956;
	#20
	A = 16'h3d5d;
	B = 16'h3c1b;
	ans_a = 16'h4a06;
	#20
	A = 16'h3f65;
	B = 16'h307b;
	ans_a = 16'h4a27;
	#20
	A = 16'h3d45;
	B = 16'h35de;
	ans_a = 16'h4a65;
	#20
	A = 16'h3beb;
	B = 16'hbf1a;
	ans_a = 16'h4984;
	#20
	A = 16'h39e9;
	B = 16'h36fe;
	ans_a = 16'h49ad;
	#20
	A = 16'hbc14;
	B = 16'hbfaf;
	ans_a = 16'h4aa8;
	#20
	A = 16'h3e15;
	B = 16'h3edc;
	ans_a = 16'h4bf6;
	#20
	A = 16'hbd81;
	B = 16'h3d1c;
	ans_a = 16'h4b15;
	#20
	A = 16'h3d58;
	B = 16'h1a5d;
	ans_a = 16'h4b16;
	#20
	A = 16'h3e02;
	B = 16'hbc7b;
	ans_a = 16'h4a3f;
	#20
	A = 16'hbec3;
	B = 16'hbe1e;
	ans_a = 16'h4b8a;
	#20
	A = 16'hbf4c;
	B = 16'hba25;
	ans_a = 16'h4c1f;
	#20
	A = 16'hbda8;
	B = 16'h3f3c;
	ans_a = 16'h4af7;
	#20
	A = 16'hbf5c;
	B = 16'hbd45;
	ans_a = 16'h4c17;
	#20
	A = 16'h3db0;
	B = 16'h382a;
	ans_a = 16'h4c46;
	#20
	A = 16'h3a7c;
	B = 16'hbf7b;
	ans_a = 16'h4bca;
	#20
	A = 16'hbee2;
	B = 16'h3eb4;
	ans_a = 16'h4a59;
	#20
	A = 16'h3ffa;
	B = 16'hbedb;
	ans_a = 16'h48a4;
	#20
	A = 16'h3d36;
	B = 16'h3e56;
	ans_a = 16'h49ac;
	#20
	A = 16'hb392;
	B = 16'h3edd;
	ans_a = 16'h4978;
	#20
	A = 16'hbf83;
	B = 16'hb88c;
	ans_a = 16'h4a01;
	#20
	A = 16'h3d35;
	B = 16'h3d18;
	ans_a = 16'h4ad5;
	#20
	A = 16'hbf89;
	B = 16'hbf1d;
	ans_a = 16'h4c41;
	#20
	A = 16'h3931;
	B = 16'h3ae0;
	ans_a = 16'h4c65;
	#20
	A = 16'h3b75;
	B = 16'hbce6;
	ans_a = 16'h4c1c;
	#20
	A = 16'hbf5d;
	B = 16'hbe4c;
	ans_a = 16'h4cd6;
	#20
	A = 16'hbef3;
	B = 16'h3ce5;
	ans_a = 16'h4c4e;
	#20
	A = 16'h2ad1;
	B = 16'hb416;
	ans_a = 16'h4c4d;
	#20
	A = 16'hba79;
	B = 16'hb9d4;
	ans_a = 16'h4c73;
	#20
	A = 16'h3e25;
	B = 16'h3f24;
	ans_a = 16'h4d22;
	#20
	A = 16'hbeea;
	B = 16'hbb7a;
	ans_a = 16'h4d89;
	#20
	A = 16'h3bda;
	B = 16'hb9a6;
	ans_a = 16'h4d5d;
	#20
	A = 16'h392c;
	B = 16'h3cd8;
	ans_a = 16'h4d8f;
	#20
	A = 16'h3db1;
	B = 16'hb956;
	ans_a = 16'h4d52;
	#20
	A = 16'h3bb3;
	B = 16'hb800;
	ans_a = 16'h4d33;
	#20
	A = 16'h38e5;
	B = 16'hbc35;
	ans_a = 16'h4d0a;
	#20
	A = 16'hb07e;
	B = 16'hb889;
	ans_a = 16'h4d0f;
	#20
	A = 16'h2d54;
	B = 16'hbce8;
	ans_a = 16'h4d08;
	#20
	A = 16'hb83d;
	B = 16'h3f09;
	ans_a = 16'h4ccc;
	#20
	A = 16'hbf00;
	B = 16'hbfc0;
	ans_a = 16'h4da5;
	#20
	A = 16'hbde1;
	B = 16'h3dae;
	ans_a = 16'h4d20;
	#20
	A = 16'h3dcd;
	B = 16'hbd25;
	ans_a = 16'h4ca9;
	#20
	A = 16'hb48e;
	B = 16'hbe74;
	ans_a = 16'h4cc6;
	#20
	A = 16'h39b9;
	B = 16'hbf70;
	ans_a = 16'h4c71;
	#20
	A = 16'h3cde;
	B = 16'hbdb1;
	ans_a = 16'h4c02;
	#20
	A = 16'hb1f7;
	B = 16'hb82b;
	ans_a = 16'h4c08;
	#20
	A = 16'h3a44;
	B = 16'h3e07;
	ans_a = 16'h4c54;
	#20
	A = 16'h3458;
	B = 16'h3f0f;
	ans_a = 16'h4c73;
	#20
	A = 16'hb134;
	B = 16'hbd36;
	ans_a = 16'h4c81;
	#20
	A = 16'h36f5;
	B = 16'h35fc;
	ans_a = 16'h4c8b;
	#20
	A = 16'hbf0e;
	B = 16'h3836;
	ans_a = 16'h4c50;
	#20
	A = 16'hbe1c;
	B = 16'ha766;
	ans_a = 16'h4c53;
	#20
	A = 16'h3539;
	B = 16'h3b1c;
	ans_a = 16'h4c66;
	#20
	A = 16'h3163;
	B = 16'hb5ab;
	ans_a = 16'h4c62;
	#20
	A = 16'hbb90;
	B = 16'hb484;
	ans_a = 16'h4c73;
	#20
	A = 16'hbedc;
	B = 16'h360e;
	ans_a = 16'h4c49;
	#20
	A = 16'h3967;
	B = 16'h3dc2;
	ans_a = 16'h4c87;
	#20
	A = 16'hbd58;
	B = 16'hbe03;
	ans_a = 16'h4d08;
	#20
	A = 16'hbeb0;
	B = 16'hb9fd;
	ans_a = 16'h4d58;
	#20
	A = 16'h3d07;
	B = 16'h2a24;
	ans_a = 16'h4d5c;
	#20
	A = 16'hbcdd;
	B = 16'h3d3f;
	ans_a = 16'h4cf6;
	#20
	A = 16'h3dda;
	B = 16'hb3dd;
	ans_a = 16'h4cdf;
	#20
	A = 16'hbb92;
	B = 16'hbeb3;
	ans_a = 16'h4d44;
	#20
	A = 16'h36a9;
	B = 16'h3a2d;
	ans_a = 16'h4d59;
	#20
	A = 16'hbf3b;
	B = 16'hba15;
	ans_a = 16'h4db1;
	#20
	A = 16'hbf28;
	B = 16'h3971;
	ans_a = 16'h4d63;
	#20
	A = 16'h3155;
	B = 16'hb5f9;
	ans_a = 16'h4d5f;
	#20
	A = 16'hb924;
	B = 16'hbe6f;
	ans_a = 16'h4da1;
	#20
	A = 16'hbd8d;
	B = 16'h3c2c;
	ans_a = 16'h4d44;
	#20
	A = 16'haff2;
	B = 16'hbe23;
	ans_a = 16'h4d50;
	#20
	A = 16'h3e49;
	B = 16'hbdc5;
	ans_a = 16'h4cbf;
	#20
	A = 16'h3a4e;
	B = 16'h38cf;
	ans_a = 16'h4cdd;
	#20
	A = 16'h3a4f;
	B = 16'hbe90;
	ans_a = 16'h4c8a;
	#20
	A = 16'h2c75;
	B = 16'hbefb;
	ans_a = 16'h4c82;
	#20
	A = 16'h3ec7;
	B = 16'h39c4;
	ans_a = 16'h4cd0;
	#20
	A = 16'h3cc0;
	B = 16'hbbac;
	ans_a = 16'h4c87;
	#20
	A = 16'h39a3;
	B = 16'h3c62;
	ans_a = 16'h4cb8;
	#20
	A = 16'hb348;
	B = 16'hbd16;
	ans_a = 16'h4ccb;
	#20
	A = 16'hac9b;
	B = 16'h3db5;
	ans_a = 16'h4cc4;
	#20
	A = 16'hb44a;
	B = 16'hba3c;
	ans_a = 16'h4cd1;
	#20
	A = 16'h32ef;
	B = 16'h3fbe;
	ans_a = 16'h4cec;
	#20
	A = 16'h3637;
	B = 16'h38ca;
	ans_a = 16'h4cfb;
	#20
	A = 16'hb60f;
	B = 16'hbcd4;
	ans_a = 16'h4d18;
	#20
	A = 16'hbe94;
	B = 16'hbdaf;
	ans_a = 16'h4dae;
	#20
	A = 16'h2d9a;
	B = 16'h3da8;
	ans_a = 16'h4db6;
	#20
	A = 16'hba2a;
	B = 16'h36fe;
	ans_a = 16'h4da0;
	#20
	A = 16'hb61f;
	B = 16'h3835;
	ans_a = 16'h4d93;
	#20
	A = 16'h2917;
	B = 16'h3fb0;
	ans_a = 16'h4d98;
	#20
	A = 16'hbc6a;
	B = 16'hbb0c;
	ans_a = 16'h4dd6;
	#20
	A = 16'hbd35;
	B = 16'hbf15;
	ans_a = 16'h4e6a;
	#20
	A = 16'h3fc5;
	B = 16'hb829;
	ans_a = 16'h4e29;
	#20
	A = 16'h391e;
	B = 16'h3c56;
	ans_a = 16'h4e55;
	#20
	A = 16'h3fad;
	B = 16'h3802;
	ans_a = 16'h4e93;
	#20
	A = 16'hbf89;
	B = 16'hbd4d;
	ans_a = 16'h4f33;
	#20
	A = 16'hb5b9;
	B = 16'hb930;
	ans_a = 16'h4f42;
	#20
	A = 16'h3deb;
	B = 16'hb94e;
	ans_a = 16'h4f03;
	#20
	A = 16'h3d13;
	B = 16'h33ae;
	ans_a = 16'h4f16;
	#20
	A = 16'h3bf0;
	B = 16'h3ed4;
	ans_a = 16'h4f82;
	#20
	A = 16'hb61e;
	B = 16'hbec0;
	ans_a = 16'h4fab;
	#20
	A = 16'hbf8e;
	B = 16'h3d6f;
	ans_a = 16'h4f07;
	#20
	A = 16'hbec2;
	B = 16'hb7f5;
	ans_a = 16'h4f3d;
	#20
	A = 16'hbcc4;
	B = 16'h3cd6;
	ans_a = 16'h4ee1;
	#20
	A = 16'h3d2a;
	B = 16'hba40;
	ans_a = 16'h4ea0;
	#20
	A = 16'hbe36;
	B = 16'h2d96;
	ans_a = 16'h4e97;
	#20
	A = 16'hbc47;
	B = 16'hbd73;
	ans_a = 16'h4ef4;
	#20
	A = 16'hb87b;
	B = 16'h3d04;
	ans_a = 16'h4ec7;
	#20
	A = 16'hbe90;
	B = 16'h3f72;
	ans_a = 16'h4e04;
	#20
	A = 16'h3f66;
	B = 16'h3ffe;
	ans_a = 16'h4ef0;
	#20
	A = 16'hbd7a;
	B = 16'h3a20;
	ans_a = 16'h4ead;
	#20
	A = 16'hbe7a;
	B = 16'hb849;
	ans_a = 16'h4ee4;
	#20
	A = 16'h3fa6;
	B = 16'h3674;
	ans_a = 16'h4f15;
	#20
	A = 16'h318f;
	B = 16'h3eaf;
	ans_a = 16'h4f28;
	#20
	A = 16'hbd0e;
	B = 16'h39dd;
	ans_a = 16'h4eed;
	#20
	A = 16'hbd56;
	B = 16'h24ea;
	ans_a = 16'h4eeb;
	#20
	A = 16'h3853;
	B = 16'hb68d;
	ans_a = 16'h4edd;
	#20
	A = 16'h3e54;
	B = 16'hb5e8;
	ans_a = 16'h4eb8;
	#20
	A = 16'hb8b3;
	B = 16'hbdd7;
	ans_a = 16'h4eef;
	#20
	A = 16'hbf58;
	B = 16'h3950;
	ans_a = 16'h4ea1;
	#20
	A = 16'hb7f7;
	B = 16'h3e3f;
	ans_a = 16'h4e6f;
	#20
	A = 16'hbebd;
	B = 16'h3b65;
	ans_a = 16'h4e0b;
	#20
	A = 16'h129b;
	B = 16'h3ce6;
	ans_a = 16'h4e0b;
	#20
	A = 16'h3cb6;
	B = 16'hbfe7;
	ans_a = 16'h4d76;
	#20
	A = 16'h38d3;
	B = 16'h3f35;
	ans_a = 16'h4dbc;
	#20
	A = 16'hbe47;
	B = 16'hbe6d;
	ans_a = 16'h4e5d;
	#20
	A = 16'h3efe;
	B = 16'hbba3;
	ans_a = 16'h4df2;
	#20
	A = 16'h3a4c;
	B = 16'h3820;
	ans_a = 16'h4e0c;
	#20
	A = 16'hbe79;
	B = 16'hb1e4;
	ans_a = 16'h4e1f;
	#20
	A = 16'h3d8c;
	B = 16'hb562;
	ans_a = 16'h4e01;
	#20
	A = 16'h3efb;
	B = 16'hbd35;
	ans_a = 16'h4d70;
	#20
	A = 16'h3ca4;
	B = 16'hbe9a;
	ans_a = 16'h4cf5;
	#20
	A = 16'h3b1a;
	B = 16'hbf9a;
	ans_a = 16'h4c89;
	#20
	A = 16'hbad3;
	B = 16'hb494;
	ans_a = 16'h4c99;
	#20
	A = 16'h36f5;
	B = 16'h3431;
	ans_a = 16'h4ca0;
	#20
	A = 16'hafd9;
	B = 16'h3b3a;
	ans_a = 16'h4c99;
	#20
	A = 16'hbb50;
	B = 16'h3617;
	ans_a = 16'h4c83;
	#20
	A = 16'hbced;
	B = 16'h3e75;
	ans_a = 16'h4c04;
	#20
	A = 16'hb4b1;
	B = 16'h3819;
	ans_a = 16'h4bf5;
	#20
	A = 16'h2945;
	B = 16'hbc7f;
	ans_a = 16'h4bef;
	#20
	A = 16'h39b3;
	B = 16'h30f9;
	ans_a = 16'h4bfd;
	#20
	A = 16'hbf29;
	B = 16'hbc58;
	ans_a = 16'h4c7b;
	#20
	A = 16'hb096;
	B = 16'h3a51;
	ans_a = 16'h4c74;
	#20
	A = 16'hba9c;
	B = 16'h3a5d;
	ans_a = 16'h4c4a;
	#20
	A = 16'h3fcb;
	B = 16'hab6b;
	ans_a = 16'h4c43;
	#20
	A = 16'hb906;
	B = 16'h3047;
	ans_a = 16'h4c3e;
	#20
	A = 16'h3fd5;
	B = 16'h3d98;
	ans_a = 16'h4ced;
	#20
	A = 16'hbe90;
	B = 16'hb525;
	ans_a = 16'h4d0f;
	#20
	A = 16'hb2a2;
	B = 16'hbcbb;
	ans_a = 16'h4d1f;
	#20
	A = 16'hbbc7;
	B = 16'hb202;
	ans_a = 16'h4d2b;
	#20
	A = 16'h3c77;
	B = 16'hbb2a;
	ans_a = 16'h4ceb;
	#20
	A = 16'h3fe7;
	B = 16'h367a;
	ans_a = 16'h4d1e;
	#20
	A = 16'hb668;
	B = 16'hbd3a;
	ans_a = 16'h4d3f;
	#20
	A = 16'hbdf0;
	B = 16'hbebd;
	ans_a = 16'h4ddf;
	#20
	A = 16'hbe1c;
	B = 16'h3167;
	ans_a = 16'h4dce;
	#20
	A = 16'h3e47;
	B = 16'hb028;
	ans_a = 16'h4dc1;
	#20
	A = 16'h3cee;
	B = 16'h3d9c;
	ans_a = 16'h4e30;
	#20
	A = 16'h3f31;
	B = 16'hb89e;
	ans_a = 16'h4dee;
	#20
	A = 16'h3ec1;
	B = 16'h3e4d;
	ans_a = 16'h4e98;
	#20
	A = 16'hbb08;
	B = 16'hb843;
	ans_a = 16'h4eb6;
	#20
	A = 16'hbff7;
	B = 16'h2974;
	ans_a = 16'h4eb1;
	#20
	A = 16'h3fa6;
	B = 16'hb89f;
	ans_a = 16'h4e6a;
	#20
	A = 16'hb88b;
	B = 16'hbcd4;
	ans_a = 16'h4e96;
	#20
	A = 16'h36e7;
	B = 16'hbcbd;
	ans_a = 16'h4e75;
	#20
	A = 16'hbe85;
	B = 16'h36ad;
	ans_a = 16'h4e49;
	#20
	A = 16'hbeee;
	B = 16'h33ae;
	ans_a = 16'h4e2e;
	#20
	A = 16'hbffd;
	B = 16'hbaf1;
	ans_a = 16'h4e9d;
	#20
	A = 16'h3ebf;
	B = 16'hb7db;
	ans_a = 16'h4e68;
	#20
	A = 16'hb3c9;
	B = 16'h3fca;
	ans_a = 16'h4e4a;
	#20
	A = 16'h3f67;
	B = 16'h2185;
	ans_a = 16'h4e4b;
	#20
	A = 16'hb514;
	B = 16'h3f15;
	ans_a = 16'h4e27;
	#20
	A = 16'h35c5;
	B = 16'hbf56;
	ans_a = 16'h4dfd;
	#20
	A = 16'h32e4;
	B = 16'h3ea9;
	ans_a = 16'h4e14;
	#20
	A = 16'h3edc;
	B = 16'ha3c4;
	ans_a = 16'h4e12;
	#20
	A = 16'hbe66;
	B = 16'hbc37;
	ans_a = 16'h4e7e;
	#20
	A = 16'hbfae;
	B = 16'hbe91;
	ans_a = 16'h4f48;
	#20
	A = 16'hb2e8;
	B = 16'h3cc9;
	ans_a = 16'h4f37;
	#20
	A = 16'hbf70;
	B = 16'h33c8;
	ans_a = 16'h4f1a;
	#20
	A = 16'h3706;
	B = 16'h3846;
	ans_a = 16'h4f29;
	#20
	A = 16'h2423;
	B = 16'hb914;
	ans_a = 16'h4f28;
	#20
	A = 16'h3099;
	B = 16'h2edc;
	ans_a = 16'h4f29;
	#20
	A = 16'h35e1;
	B = 16'hbeda;
	ans_a = 16'h4f01;
	#20
	A = 16'h3c82;
	B = 16'h3ce5;
	ans_a = 16'h4f59;
	#20
	A = 16'hb9b9;
	B = 16'hbe3b;
	ans_a = 16'h4fa0;
	#20
	A = 16'h3454;
	B = 16'hb284;
	ans_a = 16'h4f9c;
	#20
	A = 16'h3447;
	B = 16'hb475;
	ans_a = 16'h4f97;
	#20
	A = 16'h3ea0;
	B = 16'h3cb9;
	ans_a = 16'h500a;
	#20
	A = 16'h3c67;
	B = 16'h3636;
	ans_a = 16'h5018;
	#20
	A = 16'hb8a7;
	B = 16'hb823;
	ans_a = 16'h5022;
	#20
	A = 16'hb6a2;
	B = 16'h3751;
	ans_a = 16'h501c;
	#20
	A = 16'h38f0;
	B = 16'ha5eb;
	ans_a = 16'h501c;
	#20
	A = 16'hb7aa;
	B = 16'hbf77;
	ans_a = 16'h5039;
	#20
	A = 16'hb847;
	B = 16'h3df7;
	ans_a = 16'h501f;
	#20
	A = 16'h3cbe;
	B = 16'h3fa7;
	ans_a = 16'h5068;
	#20
	A = 16'hb83c;
	B = 16'hbfc4;
	ans_a = 16'h5089;
	#20
	A = 16'hb0a7;
	B = 16'h3e38;
	ans_a = 16'h5082;
	#20
	A = 16'h3908;
	B = 16'hbe09;
	ans_a = 16'h5064;
	#20
	A = 16'hbd4f;
	B = 16'h3e60;
	ans_a = 16'h5020;
	#20
	A = 16'h37c5;
	B = 16'hb6da;
	ans_a = 16'h5019;
	#20
	A = 16'h3cb7;
	B = 16'hb882;
	ans_a = 16'h5004;
	#20
	A = 16'h3e55;
	B = 16'hbcf7;
	ans_a = 16'h4f8a;
	#20
	A = 16'hb8f1;
	B = 16'hbbef;
	ans_a = 16'h4fb1;
	#20
	A = 16'hb9e2;
	B = 16'h3d20;
	ans_a = 16'h4f75;
	#20
	A = 16'hbec7;
	B = 16'h3606;
	ans_a = 16'h4f4c;
	#20
	A = 16'hbbd1;
	B = 16'h3ff6;
	ans_a = 16'h4ed0;
	#20
	A = 16'hb4a5;
	B = 16'h30f0;
	ans_a = 16'h4ecd;
	#20
	A = 16'h3a2d;
	B = 16'h3bb9;
	ans_a = 16'h4efd;
	#20
	A = 16'hbe52;
	B = 16'h3d4e;
	ans_a = 16'h4e77;
	#20
	A = 16'h3f6d;
	B = 16'hbd2e;
	ans_a = 16'h4ddd;
	#20
	A = 16'h3307;
	B = 16'h3e4f;
	ans_a = 16'h4df3;
	#20
	A = 16'hb12e;
	B = 16'h300a;
	ans_a = 16'h4df2;
	#20
	A = 16'hb544;
	B = 16'hba6a;
	ans_a = 16'h4e03;
	#20
	A = 16'hbd90;
	B = 16'h3ea5;
	ans_a = 16'h4d6f;
	#20
	A = 16'hb4a1;
	B = 16'h2d50;
	ans_a = 16'h4d6d;
	#20
	A = 16'hbe28;
	B = 16'h1ffb;
	ans_a = 16'h4d6c;
	#20
	A = 16'h3e54;
	B = 16'h3eb2;
	ans_a = 16'h4e16;
	#20
	A = 16'h3076;
	B = 16'hbbf7;
	ans_a = 16'h4e0d;
	#20
	A = 16'h3809;
	B = 16'hbd4f;
	ans_a = 16'h4de2;
	#20
	A = 16'h3d2f;
	B = 16'h3234;
	ans_a = 16'h4df2;
	#20
	A = 16'hbce8;
	B = 16'hb9bd;
	ans_a = 16'h4e2a;
	#20
	A = 16'hb662;
	B = 16'h3dd5;
	ans_a = 16'h4e05;
	#20
	A = 16'hbec9;
	B = 16'h3c4b;
	ans_a = 16'h4d90;
	#20
	A = 16'h343a;
	B = 16'hb69e;
	ans_a = 16'h4d89;
	#20
	A = 16'hb8cf;
	B = 16'h3382;
	ans_a = 16'h4d80;
	#20
	A = 16'hbda1;
	B = 16'h29b0;
	ans_a = 16'h4d7c;
	#20
	A = 16'h3e64;
	B = 16'hb732;
	ans_a = 16'h4d4e;
	#20
	A = 16'h3dcc;
	B = 16'hb96c;
	ans_a = 16'h4d0f;
	#20
	A = 16'h3adc;
	B = 16'h3d46;
	ans_a = 16'h4d57;
	#20
	A = 16'h37ff;
	B = 16'h3d44;
	ans_a = 16'h4d81;
	#20
	A = 16'h3ec0;
	B = 16'hbcc3;
	ans_a = 16'h4d00;
	#20
	A = 16'hb296;
	B = 16'hbd68;
	ans_a = 16'h4d12;
	#20
	A = 16'hbbab;
	B = 16'h3f35;
	ans_a = 16'h4ca4;
	#20
	A = 16'haed0;
	B = 16'h3c87;
	ans_a = 16'h4c9c;
	#20
	A = 16'haca6;
	B = 16'hbfa0;
	ans_a = 16'h4ca5;
	#20
	A = 16'h28d7;
	B = 16'hbe94;
	ans_a = 16'h4ca1;
	#20
	A = 16'hbecd;
	B = 16'hb3b1;
	ans_a = 16'h4cbb;
	#20
	A = 16'hbfc2;
	B = 16'hbeb5;
	ans_a = 16'h4d8b;
	#20
	A = 16'h3f6f;
	B = 16'h3aa9;
	ans_a = 16'h4dee;
	#20
	A = 16'hb81e;
	B = 16'hbaba;
	ans_a = 16'h4e0a;
	#20
	A = 16'hbffb;
	B = 16'hbad7;
	ans_a = 16'h4e77;
	#20
	A = 16'h3e88;
	B = 16'hbd10;
	ans_a = 16'h4df3;
	#20
	A = 16'h3a95;
	B = 16'hb7fa;
	ans_a = 16'h4dd9;
	#20
	A = 16'hbf6b;
	B = 16'h3c44;
	ans_a = 16'h4d5a;
	#20
	A = 16'hbc8c;
	B = 16'h3be0;
	ans_a = 16'h4d12;
	#20
	A = 16'hbc9d;
	B = 16'h3108;
	ans_a = 16'h4d06;
	#20
	A = 16'h3fbe;
	B = 16'h3cde;
	ans_a = 16'h4d9d;
	#20
	A = 16'hbb8a;
	B = 16'hbe16;
	ans_a = 16'h4df9;
	#20
	A = 16'h39e7;
	B = 16'h3b60;
	ans_a = 16'h4e25;
	#20
	A = 16'h339a;
	B = 16'hbf22;
	ans_a = 16'h4e0a;
	#20
	A = 16'h3b87;
	B = 16'hb83c;
	ans_a = 16'h4dea;
	#20
	A = 16'hb098;
	B = 16'h3eaa;
	ans_a = 16'h4ddb;
	#20
	A = 16'h3fb7;
	B = 16'hbe96;
	ans_a = 16'h4d10;
	#20
	A = 16'h344d;
	B = 16'hb8c2;
	ans_a = 16'h4d06;
	#20
	A = 16'h3f8a;
	B = 16'hadd5;
	ans_a = 16'h4cfb;
	#20
	A = 16'h3e24;
	B = 16'h3baf;
	ans_a = 16'h4d59;
	#20
	A = 16'h2c5f;
	B = 16'hbd82;
	ans_a = 16'h4d53;
	#20
	A = 16'hbfef;
	B = 16'hbfb2;
	ans_a = 16'h4e47;
	#20
	A = 16'h339e;
	B = 16'h3e64;
	ans_a = 16'h4e5f;
	#20
	A = 16'h3c27;
	B = 16'hac68;
	ans_a = 16'h4e5a;
	#20
	A = 16'h3ee5;
	B = 16'h29b8;
	ans_a = 16'h4e5f;
	#20
	A = 16'hbc36;
	B = 16'hbc37;
	ans_a = 16'h4ea6;
	#20
	A = 16'h3a8f;
	B = 16'hbd3f;
	ans_a = 16'h4e61;
	#20
	A = 16'h3c54;
	B = 16'hb66e;
	ans_a = 16'h4e45;
	#20
	A = 16'h3a67;
	B = 16'hbc3e;
	ans_a = 16'h4e0f;
	#20
	A = 16'h3dfc;
	B = 16'h3976;
	ans_a = 16'h4e50;
	#20
	A = 16'hb702;
	B = 16'h3f0f;
	ans_a = 16'h4e1f;
	#20
	A = 16'hbf52;
	B = 16'hb4ca;
	ans_a = 16'h4e42;
	#20
	A = 16'hbf1e;
	B = 16'hbd41;
	ans_a = 16'h4ed8;
	#20
	A = 16'hbc16;
	B = 16'h3ea2;
	ans_a = 16'h4e6c;
	#20
	A = 16'hb377;
	B = 16'h3ffb;
	ans_a = 16'h4e4e;
	#20
	A = 16'hb407;
	B = 16'hbdc9;
	ans_a = 16'h4e65;
	#20
	A = 16'hbdf6;
	B = 16'hb9e1;
	ans_a = 16'h4eab;
	#20
	A = 16'h3a58;
	B = 16'h3c8d;
	ans_a = 16'h4ee5;
	#20
	A = 16'hb4be;
	B = 16'hbe68;
	ans_a = 16'h4f03;
	#20
	A = 16'hbd8f;
	B = 16'h3d0a;
	ans_a = 16'h4e93;
	#20
	A = 16'hbc1a;
	B = 16'hb869;
	ans_a = 16'h4eb7;
	#20
	A = 16'h3ddf;
	B = 16'hb8de;
	ans_a = 16'h4e7e;
	#20
	A = 16'hbc48;
	B = 16'hbb33;
	ans_a = 16'h4ebc;
	#20
	A = 16'h3c2b;
	B = 16'h3d12;
	ans_a = 16'h4f11;
	#20
	A = 16'hb84c;
	B = 16'h3eaf;
	ans_a = 16'h4ed8;
	#20
	A = 16'h3990;
	B = 16'hbf59;
	ans_a = 16'h4e86;
	#20
	A = 16'h3262;
	B = 16'h3e16;
	ans_a = 16'h4e99;
	#20
	A = 16'hba70;
	B = 16'hbdc5;
	ans_a = 16'h4ee3;
	#20
	A = 16'hb90b;
	B = 16'h37f3;
	ans_a = 16'h4ecf;
	#20
	A = 16'hb8d6;
	B = 16'h27c7;
	ans_a = 16'h4ece;
	#20
	A = 16'h3daa;
	B = 16'hb45b;
	ans_a = 16'h4eb5;
	#20
	A = 16'h3cbc;
	B = 16'h3bb9;
	ans_a = 16'h4efe;
	#20
	A = 16'h3c85;
	B = 16'haf8b;
	ans_a = 16'h4ef5;
	#20
	A = 16'hacd7;
	B = 16'h3918;
	ans_a = 16'h4ef2;
	#20
	A = 16'hb426;
	B = 16'haa39;
	ans_a = 16'h4ef3;
	#20
	A = 16'hbe28;
	B = 16'hb0f0;
	ans_a = 16'h4f02;
	#20
	A = 16'h3e59;
	B = 16'h37a6;
	ans_a = 16'h4f33;
	#20
	A = 16'hb17f;
	B = 16'hb240;
	ans_a = 16'h4f35;
	#20
	A = 16'hb650;
	B = 16'h3fe1;
	ans_a = 16'h4f03;
	#20
	A = 16'h3f09;
	B = 16'h3cae;
	ans_a = 16'h4f87;
	#20
	A = 16'hbd77;
	B = 16'h3fa6;
	ans_a = 16'h4ee0;
	#20
	A = 16'hac85;
	B = 16'h3c70;
	ans_a = 16'h4edb;
	#20
	A = 16'hb645;
	B = 16'h3559;
	ans_a = 16'h4ed3;
	#20
	A = 16'h23f5;
	B = 16'h3b59;
	ans_a = 16'h4ed4;
	#20
	A = 16'hbdfe;
	B = 16'hb620;
	ans_a = 16'h4ef9;
	#20
	A = 16'h393d;
	B = 16'h3d51;
	ans_a = 16'h4f31;
	#20
	A = 16'hbc48;
	B = 16'hbf53;
	ans_a = 16'h4fae;
	#20
	A = 16'hb8f4;
	B = 16'h3832;
	ans_a = 16'h4f99;
	#20
	A = 16'hbf96;
	B = 16'hbb26;
	ans_a = 16'h5003;
	#20
	A = 16'hbde0;
	B = 16'h3e38;
	ans_a = 16'h4f74;
	#20
	A = 16'hbc37;
	B = 16'h3e2f;
	ans_a = 16'h4f0c;
	#20
	A = 16'h39f1;
	B = 16'hb6e9;
	ans_a = 16'h4ef7;
	#20
	A = 16'h3d47;
	B = 16'hbff3;
	ans_a = 16'h4e4f;
	#20
	A = 16'hbfc0;
	B = 16'hba68;
	ans_a = 16'h4eb2;
	#20
	A = 16'h3c1a;
	B = 16'h3398;
	ans_a = 16'h4ec2;
	#20
	A = 16'h302c;
	B = 16'hb4d4;
	ans_a = 16'h4ebf;
	#20
	A = 16'h34db;
	B = 16'hacda;
	ans_a = 16'h4ebe;
	#20
	A = 16'h3cd3;
	B = 16'h34b2;
	ans_a = 16'h4ed5;
	#20
	A = 16'hbd01;
	B = 16'h3d83;
	ans_a = 16'h4e67;
	#20
	A = 16'h3f8d;
	B = 16'hbfa0;
	ans_a = 16'h4d81;
	#20
	A = 16'hba25;
	B = 16'hb7a0;
	ans_a = 16'h4d98;
	#20
	A = 16'h3f39;
	B = 16'h3e08;
	ans_a = 16'h4e46;
	#20
	A = 16'hba21;
	B = 16'hbfc3;
	ans_a = 16'h4ea5;
	#20
	A = 16'hb9a0;
	B = 16'h2c4d;
	ans_a = 16'h4ea2;
	#20
	A = 16'h3d17;
	B = 16'hacff;
	ans_a = 16'h4e9c;
	#20
	A = 16'hb55c;
	B = 16'hb63b;
	ans_a = 16'h4ea4;
	#20
	A = 16'h38f4;
	B = 16'h3d66;
	ans_a = 16'h4ed9;
	#20
	A = 16'h3306;
	B = 16'hbc23;
	ans_a = 16'h4eca;
	#20
	A = 16'hbf4c;
	B = 16'hbddb;
	ans_a = 16'h4f75;
	#20
	A = 16'h3c0c;
	B = 16'h3d45;
	ans_a = 16'h4fca;
	#20
	A = 16'hbbf6;
	B = 16'h3746;
	ans_a = 16'h4fad;
	#20
	A = 16'ha8a9;
	B = 16'h31cc;
	ans_a = 16'h4fad;
	#20
	A = 16'h3b30;
	B = 16'h352f;
	ans_a = 16'h4fc0;
	#20
	A = 16'hbf20;
	B = 16'hb405;
	ans_a = 16'h4fdd;
	#20
	A = 16'h3bee;
	B = 16'h2875;
	ans_a = 16'h4fdf;
	#20
	A = 16'h2eb5;
	B = 16'hbe71;
	ans_a = 16'h4fd4;
	#20
	A = 16'hb9c9;
	B = 16'h3a69;
	ans_a = 16'h4faf;
	#20
	A = 16'h3c96;
	B = 16'h3d3c;
	ans_a = 16'h5008;
	#20
	A = 16'hbd45;
	B = 16'hb233;
	ans_a = 16'h5010;
	#20
	A = 16'h3632;
	B = 16'hb1b9;
	ans_a = 16'h500e;
	#20
	A = 16'hbe1a;
	B = 16'hbf08;
	ans_a = 16'h5064;
	#20
	A = 16'h39e8;
	B = 16'h3748;
	ans_a = 16'h506f;
	#20
	A = 16'hb49a;
	B = 16'hb497;
	ans_a = 16'h5072;
	#20
	A = 16'h3a1d;
	B = 16'h39f4;
	ans_a = 16'h5084;
	#20
	A = 16'h3722;
	B = 16'hb804;
	ans_a = 16'h507d;
	#20
	A = 16'h3bc6;
	B = 16'hb83a;
	ans_a = 16'h506d;
	#20
	A = 16'h39ed;
	B = 16'h3786;
	ans_a = 16'h5078;
	#20
	A = 16'hbd78;
	B = 16'h3c3d;
	ans_a = 16'h504a;
	#20
	A = 16'hbfdd;
	B = 16'hbf06;
	ans_a = 16'h50b8;
	#20
	A = 16'hbe60;
	B = 16'hac3c;
	ans_a = 16'h50bb;
	#20
	A = 16'h3ced;
	B = 16'hbb39;
	ans_a = 16'h5097;
	#20
	A = 16'h3b3b;
	B = 16'h3865;
	ans_a = 16'h50a7;
	#20
	A = 16'h3cee;
	B = 16'h3cc9;
	ans_a = 16'h50d6;
	#20
	A = 16'hbce9;
	B = 16'hbede;
	ans_a = 16'h5119;
	#20
	A = 16'h3832;
	B = 16'hbdb6;
	ans_a = 16'h5101;
	#20
	A = 16'h3fd3;
	B = 16'hb499;
	ans_a = 16'h50ef;
	#20
	A = 16'hbd93;
	B = 16'h3071;
	ans_a = 16'h50e9;
	#20
	A = 16'hbdf4;
	B = 16'hbee8;
	ans_a = 16'h513b;
	#20
	A = 16'h3be0;
	B = 16'h3e58;
	ans_a = 16'h516d;
	#20
	A = 16'hbc74;
	B = 16'hbc17;
	ans_a = 16'h5191;
	#20
	A = 16'h39c4;
	B = 16'h30a3;
	ans_a = 16'h5194;
	#20
	A = 16'hbe45;
	B = 16'h3fe1;
	ans_a = 16'h5131;
	#20
	A = 16'h3eca;
	B = 16'h3c3c;
	ans_a = 16'h516a;
	#20
	A = 16'h3b69;
	B = 16'h3d97;
	ans_a = 16'h5193;
	#20
	A = 16'h3e14;
	B = 16'h3d88;
	ans_a = 16'h51d6;
	#20
	A = 16'h2cf6;
	B = 16'h3ca0;
	ans_a = 16'h51d9;
	#20
	A = 16'h3efe;
	B = 16'hbfd7;
	ans_a = 16'h516b;
	#20
	A = 16'h3ec6;
	B = 16'hbe3d;
	ans_a = 16'h5116;
	#20
	A = 16'h3f97;
	B = 16'h3c74;
	ans_a = 16'h515a;
	#20
	A = 16'hbce5;
	B = 16'hbe3d;
	ans_a = 16'h5197;
	#20
	A = 16'h361f;
	B = 16'hbda6;
	ans_a = 16'h5186;
	#20
	A = 16'h3bf3;
	B = 16'hbf61;
	ans_a = 16'h514b;
	#20
	A = 16'h38f9;
	B = 16'hbdc4;
	ans_a = 16'h512e;
	#20
	A = 16'hb49c;
	B = 16'hbbf6;
	ans_a = 16'h5137;
	#20
	A = 16'h3abc;
	B = 16'hb811;
	ans_a = 16'h5129;
	#20
	A = 16'h3c18;
	B = 16'hbd22;
	ans_a = 16'h50ff;
	#20
	A = 16'hb902;
	B = 16'hba4d;
	ans_a = 16'h510f;
	#20
	A = 16'h37b8;
	B = 16'hbf4f;
	ans_a = 16'h50f3;
	#20
	A = 16'hbd62;
	B = 16'h39a2;
	ans_a = 16'h50d5;
	#20
	A = 16'hb2c2;
	B = 16'hb857;
	ans_a = 16'h50d9;
	#20
	A = 16'hbeff;
	B = 16'h3f47;
	ans_a = 16'h5073;
	#20
	A = 16'hb533;
	B = 16'hb8f6;
	ans_a = 16'h5079;
	#20
	A = 16'h25b7;
	B = 16'h3e56;
	ans_a = 16'h507a;
	#20
	A = 16'hbd1e;
	B = 16'h3c34;
	ans_a = 16'h504f;
	#20
	A = 16'h3d9a;
	B = 16'hb8c7;
	ans_a = 16'h5034;
	#20
	A = 16'h3d36;
	B = 16'h3ed1;
	ans_a = 16'h507b;
	#20
	A = 16'h3f5a;
	B = 16'h373b;
	ans_a = 16'h5096;
	#20
	A = 16'hbfbd;
	B = 16'h3f28;
	ans_a = 16'h5027;
	#20
	A = 16'h3b96;
	B = 16'h34e0;
	ans_a = 16'h5030;
	#20
	A = 16'hbacf;
	B = 16'hbc55;
	ans_a = 16'h504e;
	#20
	A = 16'h3f40;
	B = 16'hbf89;
	ans_a = 16'h4fc2;
	#20
	A = 16'had11;
	B = 16'hb979;
	ans_a = 16'h4fc5;
	#20
	A = 16'h3de6;
	B = 16'h3f67;
	ans_a = 16'h503a;
	#20
	A = 16'h3ea1;
	B = 16'h3ef4;
	ans_a = 16'h5096;
	#20
	A = 16'h3c4d;
	B = 16'h3ca9;
	ans_a = 16'h50be;
	#20
	A = 16'h3954;
	B = 16'h3ef6;
	ans_a = 16'h50e3;
	#20
	A = 16'hb624;
	B = 16'hbdc6;
	ans_a = 16'h50f5;
	#20
	A = 16'h3b9b;
	B = 16'h3e55;
	ans_a = 16'h5125;
	#20
	A = 16'h3c90;
	B = 16'hbd3c;
	ans_a = 16'h50f5;
	#20
	A = 16'h30f1;
	B = 16'hbadf;
	ans_a = 16'h50f1;
	#20
	A = 16'hb968;
	B = 16'hbafe;
	ans_a = 16'h5104;
	#20
	A = 16'h30ea;
	B = 16'hbb1f;
	ans_a = 16'h5100;
	#20
	A = 16'h3fbe;
	B = 16'h3c6a;
	ans_a = 16'h5144;
	#20
	A = 16'h3d47;
	B = 16'h2ed8;
	ans_a = 16'h5149;
	#20
	A = 16'hb25a;
	B = 16'hb51a;
	ans_a = 16'h514b;
	#20
	A = 16'hbd48;
	B = 16'h3e30;
	ans_a = 16'h510a;
	#20
	A = 16'hbfd6;
	B = 16'hbb96;
	ans_a = 16'h5145;
	#20
	A = 16'h3ec1;
	B = 16'h39ff;
	ans_a = 16'h516e;
	#20
	A = 16'h2af1;
	B = 16'h3f5f;
	ans_a = 16'h5171;
	#20
	A = 16'hbf3c;
	B = 16'h3f70;
	ans_a = 16'h5105;
	#20
	A = 16'h3c08;
	B = 16'hb45e;
	ans_a = 16'h50fc;
	#20
	A = 16'hb764;
	B = 16'hb1be;
	ans_a = 16'h50ff;
	#20
	A = 16'hbfa6;
	B = 16'hb475;
	ans_a = 16'h5110;
	#20
	A = 16'h3bd5;
	B = 16'h3f47;
	ans_a = 16'h5149;
	#20
	A = 16'h3041;
	B = 16'hbcbe;
	ans_a = 16'h5144;
	#20
	A = 16'h3cc5;
	B = 16'hbb71;
	ans_a = 16'h5120;
	#20
	A = 16'hbf9d;
	B = 16'hbb98;
	ans_a = 16'h515a;
	#20
	A = 16'h3e75;
	B = 16'h3343;
	ans_a = 16'h5166;
	#20
	A = 16'h391b;
	B = 16'h3aff;
	ans_a = 16'h5178;
	#20
	A = 16'hbd7a;
	B = 16'h35f1;
	ans_a = 16'h5168;
	#20
	A = 16'h3ecb;
	B = 16'h341c;
	ans_a = 16'h5176;
	#20
	A = 16'h3c0c;
	B = 16'h3a25;
	ans_a = 16'h518f;
	#20
	A = 16'h3c82;
	B = 16'hbef2;
	ans_a = 16'h5150;
	#20
	A = 16'hbe0d;
	B = 16'hbbfd;
	ans_a = 16'h5180;
	#20
	A = 16'h3a76;
	B = 16'hb961;
	ans_a = 16'h516f;
	#20
	A = 16'hbf36;
	B = 16'h3c76;
	ans_a = 16'h512f;
	#20
	A = 16'h3aba;
	B = 16'ha655;
	ans_a = 16'h512e;
	#20
	A = 16'hb6a4;
	B = 16'hbd6b;
	ans_a = 16'h5140;
	#20
	A = 16'h3c39;
	B = 16'hbcaf;
	ans_a = 16'h5118;
	#20
	A = 16'h3d14;
	B = 16'h31cd;
	ans_a = 16'h511f;
	#20
	A = 16'h322e;
	B = 16'h3495;
	ans_a = 16'h5121;
	#20
	A = 16'hb0b2;
	B = 16'h2d8e;
	ans_a = 16'h5121;
	#20
	A = 16'hbd87;
	B = 16'h341d;
	ans_a = 16'h5116;
	#20
	A = 16'hb25d;
	B = 16'h3f1a;
	ans_a = 16'h510b;
	#20
	A = 16'hb6aa;
	B = 16'h3cdb;
	ans_a = 16'h50fb;
	#20
	A = 16'hb705;
	B = 16'h345b;
	ans_a = 16'h50f7;
	#20
	A = 16'h3d73;
	B = 16'hbb11;
	ans_a = 16'h50d0;
	#20
	A = 16'hb9e1;
	B = 16'h31a4;
	ans_a = 16'h50cc;
	#20
	A = 16'hb532;
	B = 16'h3e09;
	ans_a = 16'h50bc;
	#20
	A = 16'h283b;
	B = 16'h3c25;
	ans_a = 16'h50bd;
	#20
	A = 16'hbc8f;
	B = 16'hb12e;
	ans_a = 16'h50c3;
	#20
	A = 16'h3afb;
	B = 16'hbe5b;
	ans_a = 16'h5097;
	#20
	A = 16'hb94b;
	B = 16'hbcd2;
	ans_a = 16'h50b1;
	#20
	A = 16'h3a61;
	B = 16'h3319;
	ans_a = 16'h50b7;
	#20
	A = 16'hbffa;
	B = 16'h246a;
	ans_a = 16'h50b6;
	#20
	A = 16'hb914;
	B = 16'hbdd8;
	ans_a = 16'h50d4;
	#20
	A = 16'hbd56;
	B = 16'hbdd8;
	ans_a = 16'h5112;
	#20
	A = 16'hbeed;
	B = 16'h3925;
	ans_a = 16'h50ee;
	#20
	A = 16'h3c90;
	B = 16'h3cc7;
	ans_a = 16'h511a;
	#20
	A = 16'hb340;
	B = 16'hbc8f;
	ans_a = 16'h5122;
	#20
	A = 16'hbce1;
	B = 16'h37a6;
	ans_a = 16'h510f;
	#20
	A = 16'h3aa7;
	B = 16'h3d19;
	ans_a = 16'h5131;
	#20
	A = 16'hbd06;
	B = 16'hbf03;
	ans_a = 16'h5177;
	#20
	A = 16'hb99c;
	B = 16'h3bbf;
	ans_a = 16'h5161;
	#20
	A = 16'hbd52;
	B = 16'hb6a3;
	ans_a = 16'h5173;
	#20
	A = 16'hbe2f;
	B = 16'h3dad;
	ans_a = 16'h512d;
	#20
	A = 16'h39f6;
	B = 16'h3c5a;
	ans_a = 16'h5147;
	#20
	A = 16'h3f9a;
	B = 16'h3d32;
	ans_a = 16'h5196;
	#20
	A = 16'hbd1e;
	B = 16'h33d6;
	ans_a = 16'h518c;
	#20
	A = 16'h2ce1;
	B = 16'hbeb0;
	ans_a = 16'h5188;
	#20
	A = 16'hbe59;
	B = 16'h381b;
	ans_a = 16'h516e;
	#20
	A = 16'h318e;
	B = 16'hb08c;
	ans_a = 16'h516d;
	#20
	A = 16'hbd29;
	B = 16'h3e28;
	ans_a = 16'h512d;
	#20
	A = 16'h275d;
	B = 16'h3da3;
	ans_a = 16'h512e;
	#20
	A = 16'h2849;
	B = 16'h3fad;
	ans_a = 16'h5130;
	#20
	A = 16'hb80b;
	B = 16'h3334;
	ans_a = 16'h512c;
	#20
	A = 16'h3cd6;
	B = 16'hb9bf;
	ans_a = 16'h5110;
	#20
	A = 16'h3257;
	B = 16'hb417;
	ans_a = 16'h510e;
	#20
	A = 16'hb9c8;
	B = 16'ha3ea;
	ans_a = 16'h510e;
	#20
	A = 16'h3d4c;
	B = 16'h3f32;
	ans_a = 16'h515a;
	#20
	A = 16'h36da;
	B = 16'hbdb8;
	ans_a = 16'h5146;
	#20
	A = 16'h3e40;
	B = 16'hb208;
	ans_a = 16'h513d;
	#20
	A = 16'h3484;
	B = 16'h3e0a;
	ans_a = 16'h514b;
	#20
	A = 16'hb5c2;
	B = 16'h3f5c;
	ans_a = 16'h5136;
	#20
	A = 16'hbd89;
	B = 16'hbfcf;
	ans_a = 16'h518c;
	#20
	A = 16'h3c3e;
	B = 16'h3fad;
	ans_a = 16'h51cd;
	#20
	A = 16'h3978;
	B = 16'hbb89;
	ans_a = 16'h51b8;
	#20
	A = 16'hbd8d;
	B = 16'h3dbe;
	ans_a = 16'h5178;
	#20
	A = 16'hbfba;
	B = 16'h3966;
	ans_a = 16'h514e;
	#20
	A = 16'hbc77;
	B = 16'hb043;
	ans_a = 16'h5153;
	#20
	A = 16'hb552;
	B = 16'h33cd;
	ans_a = 16'h5150;
	#20
	A = 16'hbbb3;
	B = 16'h3c7c;
	ans_a = 16'h512d;
	#20
	A = 16'hb27e;
	B = 16'hb769;
	ans_a = 16'h5130;
	#20
	A = 16'hb3a3;
	B = 16'hba33;
	ans_a = 16'h5136;
	#20
	A = 16'h18cb;
	B = 16'hb6d9;
	ans_a = 16'h5136;
	#20
	A = 16'h9d60;
	B = 16'h3d85;
	ans_a = 16'h5136;
	#20
	A = 16'hbf29;
	B = 16'h36fd;
	ans_a = 16'h511d;
	#20
	A = 16'h361f;
	B = 16'h34c8;
	ans_a = 16'h5121;
	#20
	A = 16'h3db6;
	B = 16'hbc63;
	ans_a = 16'h50ef;
	#20
	A = 16'hb3b0;
	B = 16'h3cdc;
	ans_a = 16'h50e6;
	#20
	A = 16'hbeb7;
	B = 16'h3688;
	ans_a = 16'h50d0;
	#20
	A = 16'hb974;
	B = 16'h3f7d;
	ans_a = 16'h50a7;
	#20
	A = 16'hbef8;
	B = 16'h3c2f;
	ans_a = 16'h506d;
	#20
	A = 16'hbabb;
	B = 16'hbe5e;
	ans_a = 16'h5098;
	#20
	A = 16'hbce3;
	B = 16'h3abe;
	ans_a = 16'h5077;
	#20
	A = 16'hbc3c;
	B = 16'h2ce1;
	ans_a = 16'h5074;
	#20
	A = 16'h3f72;
	B = 16'hb34e;
	ans_a = 16'h5066;
	#20
	A = 16'hbf54;
	B = 16'hbba1;
	ans_a = 16'h509e;
	#20
	A = 16'h2dd1;
	B = 16'h36c2;
	ans_a = 16'h509f;
	#20
	A = 16'h316e;
	B = 16'hbd63;
	ans_a = 16'h5098;
	#20
	A = 16'h3ef3;
	B = 16'h3cf6;
	ans_a = 16'h50dd;
	#20
	A = 16'hb713;
	B = 16'h3d11;
	ans_a = 16'h50cb;
	#20
	A = 16'h3f1e;
	B = 16'hbed9;
	ans_a = 16'h506a;
	#20
	A = 16'h359d;
	B = 16'h3c31;
	ans_a = 16'h5076;
	#20
	A = 16'h3ea7;
	B = 16'hbb61;
	ans_a = 16'h5045;
	#20
	A = 16'h38c4;
	B = 16'hbf13;
	ans_a = 16'h5023;
	#20
	A = 16'h3f84;
	B = 16'hbf06;
	ans_a = 16'h4f73;
	#20
	A = 16'h3fcc;
	B = 16'hbf1e;
	ans_a = 16'h4e95;
	#20
	A = 16'hb339;
	B = 16'h37b4;
	ans_a = 16'h4e8e;
	#20
	A = 16'hbab0;
	B = 16'hb3b3;
	ans_a = 16'h4e9b;
	#20
	A = 16'hbe99;
	B = 16'h3ac9;
	ans_a = 16'h4e41;
	#20
	A = 16'hbfdf;
	B = 16'h34ad;
	ans_a = 16'h4e1c;
	#20
	A = 16'hbff6;
	B = 16'h3eee;
	ans_a = 16'h4d3f;
	#20
	A = 16'h3603;
	B = 16'h3e23;
	ans_a = 16'h4d64;
	#20
	A = 16'hbdc5;
	B = 16'hb8ec;
	ans_a = 16'h4d9d;
	#20
	A = 16'h3873;
	B = 16'h3eee;
	ans_a = 16'h4ddb;
	#20
	A = 16'hbbd4;
	B = 16'h3e57;
	ans_a = 16'h4d78;
	#20
	A = 16'hb48a;
	B = 16'h3caf;
	ans_a = 16'h4d63;
	#20
	A = 16'h3ca3;
	B = 16'h3fe9;
	ans_a = 16'h4df6;
	#20
	A = 16'h3f95;
	B = 16'h3d7d;
	ans_a = 16'h4e9c;
	#20
	A = 16'hbd38;
	B = 16'h3894;
	ans_a = 16'h4e6c;
	#20
	A = 16'h3c5e;
	B = 16'hba49;
	ans_a = 16'h4e35;
	#20
	A = 16'hbd2d;
	B = 16'hbab8;
	ans_a = 16'h4e7b;
	#20
	A = 16'hbdb9;
	B = 16'h3fd3;
	ans_a = 16'h4dc8;
	#20
	A = 16'h3f98;
	B = 16'hbfba;
	ans_a = 16'h4cdd;
	#20
	A = 16'h3e12;
	B = 16'h3fed;
	ans_a = 16'h4d9e;
	#20
	A = 16'h333a;
	B = 16'hb8ce;
	ans_a = 16'h4d95;
	#20
	A = 16'h3c6e;
	B = 16'h3fed;
	ans_a = 16'h4e21;
	#20
	A = 16'hba5d;
	B = 16'hbd24;
	ans_a = 16'h4e62;
	#20
	A = 16'h3ccd;
	B = 16'h3879;
	ans_a = 16'h4e8d;
	#20
	A = 16'h31fb;
	B = 16'h3b88;
	ans_a = 16'h4e98;
	#20
	A = 16'hbcd2;
	B = 16'hbd07;
	ans_a = 16'h4ef9;
	#20
	A = 16'h31d0;
	B = 16'hb8d8;
	ans_a = 16'h4ef2;
	#20
	A = 16'h3fcd;
	B = 16'hbc80;
	ans_a = 16'h4e66;
	#20
	A = 16'h3ace;
	B = 16'hbd85;
	ans_a = 16'h4e1b;
	#20
	A = 16'h3c8e;
	B = 16'h3c51;
	ans_a = 16'h4e6a;
	#20
	A = 16'hbd0b;
	B = 16'h2d72;
	ans_a = 16'h4e63;
	#20
	A = 16'hbd32;
	B = 16'h3a52;
	ans_a = 16'h4e21;
	#20
	A = 16'h3fe0;
	B = 16'h37c7;
	ans_a = 16'h4e5e;
	#20
	A = 16'h39e7;
	B = 16'h3584;
	ans_a = 16'h4e6e;
	#20
	A = 16'h3155;
	B = 16'hbee8;
	ans_a = 16'h4e5c;
	#20
	A = 16'h3d38;
	B = 16'h344a;
	ans_a = 16'h4e72;
	#20
	A = 16'h3e24;
	B = 16'h3b3c;
	ans_a = 16'h4ecb;
	#20
	A = 16'h3c2b;
	B = 16'hb5ff;
	ans_a = 16'h4eb2;
	#20
	A = 16'hb89f;
	B = 16'hb261;
	ans_a = 16'h4eb9;
	#20
	A = 16'ha94d;
	B = 16'h3826;
	ans_a = 16'h4eb8;
	#20
	A = 16'hbee5;
	B = 16'h3eaf;
	ans_a = 16'h4e00;
	#20
	A = 16'h3e2f;
	B = 16'hbd6e;
	ans_a = 16'h4d7a;
	#20
	A = 16'h3701;
	B = 16'h3b2a;
	ans_a = 16'h4d93;
	#20
	A = 16'h3ca7;
	B = 16'hb59b;
	ans_a = 16'h4d79;
	#20
	A = 16'hbe93;
	B = 16'hba37;
	ans_a = 16'h4dcb;
	#20
	A = 16'hba9f;
	B = 16'h3d07;
	ans_a = 16'h4d88;
	#20
	A = 16'h3dc0;
	B = 16'h3f4d;
	ans_a = 16'h4e30;
	#20
	A = 16'h3e61;
	B = 16'hbd2a;
	ans_a = 16'h4dac;
	#20
	A = 16'hba1f;
	B = 16'hbc87;
	ans_a = 16'h4de3;
	#20
	A = 16'hb445;
	B = 16'hbfe9;
	ans_a = 16'h4e05;
	#20
	A = 16'hbcd8;
	B = 16'hbc8a;
	ans_a = 16'h4e5d;
	#20
	A = 16'hbd84;
	B = 16'hbe39;
	ans_a = 16'h4ee6;
	#20
	A = 16'hbda9;
	B = 16'h3a9a;
	ans_a = 16'h4e9b;
	#20
	A = 16'hbf77;
	B = 16'hbcdd;
	ans_a = 16'h4f2c;
	#20
	A = 16'h3fec;
	B = 16'hbb9e;
	ans_a = 16'h4eb3;
	#20
	A = 16'hb445;
	B = 16'hbf8d;
	ans_a = 16'h4ed3;
	#20
	A = 16'h3de7;
	B = 16'h3f36;
	ans_a = 16'h4f7d;
	#20
	A = 16'h3901;
	B = 16'h3b73;
	ans_a = 16'h4fa2;
	#20
	A = 16'hb060;
	B = 16'haf17;
	ans_a = 16'h4fa3;
	#20
	A = 16'hb5bc;
	B = 16'hbf43;
	ans_a = 16'h4fcd;
	#20
	A = 16'hae37;
	B = 16'hbeb7;
	ans_a = 16'h4fd7;
	#20
	A = 16'h2458;
	B = 16'h3f0a;
	ans_a = 16'h4fd9;
	#20
	A = 16'hac3f;
	B = 16'hab3f;
	ans_a = 16'h4fd9;
	#20
	A = 16'h3c27;
	B = 16'h3d56;
	ans_a = 16'h5019;
	#20
	A = 16'h3b6a;
	B = 16'h372f;
	ans_a = 16'h5026;
	#20
	A = 16'h3ad0;
	B = 16'h3f63;
	ans_a = 16'h5058;
	#20
	A = 16'hbe94;
	B = 16'hb7e5;
	ans_a = 16'h5072;
	#20
	A = 16'h3989;
	B = 16'hb985;
	ans_a = 16'h5063;
	#20
	A = 16'h3f65;
	B = 16'h3861;
	ans_a = 16'h5083;
	#20
	A = 16'h3e8c;
	B = 16'h3f90;
	ans_a = 16'h50e6;
	#20
	A = 16'hb916;
	B = 16'hbc69;
	ans_a = 16'h50fc;
	#20
	A = 16'hbcc5;
	B = 16'hbe46;
	ans_a = 16'h5138;
	#20
	A = 16'hbc45;
	B = 16'h3bf9;
	ans_a = 16'h5116;
	#20
	A = 16'hbc6d;
	B = 16'hbdc4;
	ans_a = 16'h5149;
	#20
	A = 16'hbace;
	B = 16'hbc03;
	ans_a = 16'h5164;
	#20
	A = 16'h3809;
	B = 16'h3493;
	ans_a = 16'h5169;
	#20
	A = 16'h3d57;
	B = 16'hadb1;
	ans_a = 16'h5165;
	#20
	A = 16'h3504;
	B = 16'h3293;
	ans_a = 16'h5167;
	#20
	A = 16'hb2fe;
	B = 16'h3d01;
	ans_a = 16'h515e;
	#20
	A = 16'hbedb;
	B = 16'h3887;
	ans_a = 16'h513f;
	#20
	A = 16'hbe01;
	B = 16'hbd61;
	ans_a = 16'h5180;
	#20
	A = 16'h336b;
	B = 16'hb962;
	ans_a = 16'h517b;
	#20
	A = 16'hb340;
	B = 16'h3d7a;
	ans_a = 16'h5171;
	#20
	A = 16'hb126;
	B = 16'hb7ab;
	ans_a = 16'h5173;
	#20
	A = 16'h3a46;
	B = 16'hbef7;
	ans_a = 16'h5147;
	#20
	A = 16'hb22a;
	B = 16'h384c;
	ans_a = 16'h5144;
	#20
	A = 16'h35ad;
	B = 16'h2ff7;
	ans_a = 16'h5145;
	#20
	A = 16'hb965;
	B = 16'hb8e6;
	ans_a = 16'h5152;
	#20
	A = 16'hbd90;
	B = 16'hbc99;
	ans_a = 16'h5185;
	#20
	A = 16'hbc46;
	B = 16'h3859;
	ans_a = 16'h5172;
	#20
	A = 16'h374f;
	B = 16'h390e;
	ans_a = 16'h517b;
	#20
	A = 16'hbbd5;
	B = 16'h3f47;
	ans_a = 16'h5142;
	#20
	A = 16'hbc2a;
	B = 16'hbdb2;
	ans_a = 16'h5171;
	#20
	A = 16'hb561;
	B = 16'h3978;
	ans_a = 16'h516a;
	#20
	A = 16'hbe7f;
	B = 16'hbf8b;
	ans_a = 16'h51cc;
	#20
	A = 16'h38e8;
	B = 16'h3ef8;
	ans_a = 16'h51ee;
	#20
	A = 16'hb128;
	B = 16'hb7ac;
	ans_a = 16'h51f0;
	#20
	A = 16'hbf51;
	B = 16'hbd1a;
	ans_a = 16'h523b;
	#20
	A = 16'h3e59;
	B = 16'h3876;
	ans_a = 16'h5257;
	#20
	A = 16'hae8f;
	B = 16'h3817;
	ans_a = 16'h5255;
	#20
	A = 16'hbab0;
	B = 16'h3ac3;
	ans_a = 16'h523e;
	#20
	A = 16'h3d56;
	B = 16'h3a84;
	ans_a = 16'h5261;
	#20
	A = 16'h3c70;
	B = 16'hb7f1;
	ans_a = 16'h524f;
	#20
	A = 16'hbf36;
	B = 16'hbce8;
	ans_a = 16'h5296;
	#20
	A = 16'hbc30;
	B = 16'hbc7f;
	ans_a = 16'h52bc;
	#20
	A = 16'h3cc4;
	B = 16'h39cb;
	ans_a = 16'h52d8;
	#20
	A = 16'h3c41;
	B = 16'hb833;
	ans_a = 16'h52c6;
	#20
	A = 16'h3dd6;
	B = 16'h3ca8;
	ans_a = 16'h52fc;
	#20
	A = 16'h3f13;
	B = 16'h3abf;
	ans_a = 16'h532c;
	#20
	A = 16'h3b70;
	B = 16'h302f;
	ans_a = 16'h5330;
	#20
	A = 16'hbd4c;
	B = 16'hb7d6;
	ans_a = 16'h5345;
	#20
	A = 16'h382d;
	B = 16'h3e68;
	ans_a = 16'h5360;
	#20
	A = 16'h3f27;
	B = 16'h3d9b;
	ans_a = 16'h53b0;
	#20
	A = 16'hbc29;
	B = 16'h3f8e;
	ans_a = 16'h5371;
	#20
	A = 16'hbc3f;
	B = 16'h3f12;
	ans_a = 16'h5335;
	#20
	A = 16'h3fcf;
	B = 16'hbe32;
	ans_a = 16'h52d4;
	#20
	A = 16'h3e3d;
	B = 16'hb60d;
	ans_a = 16'h52c1;
	#20
	A = 16'hb8f4;
	B = 16'hb4c5;
	ans_a = 16'h52c7;
	#20
	A = 16'hbc1c;
	B = 16'h3e18;
	ans_a = 16'h5295;
	#20
	A = 16'hbc12;
	B = 16'h3e87;
	ans_a = 16'h5260;
	#20
	A = 16'h3976;
	B = 16'h3f4e;
	ans_a = 16'h5288;
	#20
	A = 16'hbd3a;
	B = 16'hb8a5;
	ans_a = 16'h52a0;
	#20
	A = 16'h3931;
	B = 16'hbbc1;
	ans_a = 16'h528c;
	#20
	A = 16'hb23f;
	B = 16'h36f3;
	ans_a = 16'h5289;
	#20
	A = 16'h3c7f;
	B = 16'hb6aa;
	ans_a = 16'h527a;
	#20
	A = 16'hbd5e;
	B = 16'haca3;
	ans_a = 16'h527d;
	#20
	A = 16'h3efb;
	B = 16'h3f58;
	ans_a = 16'h52e4;
	#20
	A = 16'hb29f;
	B = 16'h3607;
	ans_a = 16'h52e2;
	#20
	A = 16'h2304;
	B = 16'hbefd;
	ans_a = 16'h52e1;
	#20
	A = 16'h3e35;
	B = 16'hb4e8;
	ans_a = 16'h52d2;
	#20
	A = 16'hb8bc;
	B = 16'hb8fe;
	ans_a = 16'h52de;
	#20
	A = 16'hbd1b;
	B = 16'h3f71;
	ans_a = 16'h5292;
	#20
	A = 16'hba04;
	B = 16'hb986;
	ans_a = 16'h52a3;
	#20
	A = 16'hb63c;
	B = 16'h3c38;
	ans_a = 16'h5296;
	#20
	A = 16'hbd88;
	B = 16'hbe4d;
	ans_a = 16'h52dc;
	#20
	A = 16'h3960;
	B = 16'h39ec;
	ans_a = 16'h52ec;
	#20
	A = 16'hb12a;
	B = 16'h34f8;
	ans_a = 16'h52ea;
	#20
	A = 16'hbc5b;
	B = 16'h3ff7;
	ans_a = 16'h52a5;
	#20
	A = 16'h3908;
	B = 16'hbf51;
	ans_a = 16'h5280;
	#20
	A = 16'h3c40;
	B = 16'h3f4b;
	ans_a = 16'h52be;
	#20
	A = 16'hb58b;
	B = 16'h33e9;
	ans_a = 16'h52bb;
	#20
	A = 16'h3ddf;
	B = 16'h3ec7;
	ans_a = 16'h530b;
	#20
	A = 16'hc000;
	B = 16'hbc6a;
	ans_a = 16'h5352;
	#20
	A = 16'h3163;
	B = 16'h3c76;
	ans_a = 16'h5358;
	#20
	A = 16'h38a8;
	B = 16'hbefa;
	ans_a = 16'h5338;
	#20
	A = 16'hbd69;
	B = 16'h3cc3;
	ans_a = 16'h5304;
	#20
	A = 16'h3bef;
	B = 16'h3e8d;
	ans_a = 16'h5338;
	#20
	A = 16'hb417;
	B = 16'h3e10;
	ans_a = 16'h532c;
	#20
	A = 16'h3782;
	B = 16'hbc09;
	ans_a = 16'h531d;
	#20
	A = 16'h3d48;
	B = 16'h3dda;
	ans_a = 16'h535b;
	#20
	A = 16'h3e79;
	B = 16'h3c4d;
	ans_a = 16'h5393;
	#20
	A = 16'h3f50;
	B = 16'h3fbb;
	ans_a = 16'h5402;
	#20
	A = 16'hb49f;
	B = 16'hbc2b;
	ans_a = 16'h5407;
	#20
	A = 16'h3385;
	B = 16'h3fe8;
	ans_a = 16'h540e;
	#20
	A = 16'hba83;
	B = 16'h3fc5;
	ans_a = 16'h53e9;
	#20
	A = 16'h3a34;
	B = 16'h3f33;
	ans_a = 16'h540b;
	#20
	A = 16'h3f4f;
	B = 16'h3de0;
	ans_a = 16'h5436;
	#20
	A = 16'hb152;
	B = 16'h3b68;
	ans_a = 16'h5434;
	#20
	A = 16'hbd8a;
	B = 16'hb72f;
	ans_a = 16'h543e;
	#20
	A = 16'h329a;
	B = 16'h2d21;
	ans_a = 16'h543e;
	#20
	A = 16'hb9bb;
	B = 16'hbd13;
	ans_a = 16'h544d;
	#20
	A = 16'h3573;
	B = 16'hb4c1;
	ans_a = 16'h544b;
	#20
	A = 16'hb53d;
	B = 16'hbe60;
	ans_a = 16'h5453;
	#20
	A = 16'h3e6e;
	B = 16'h3d48;
	ans_a = 16'h5475;
	#20
	A = 16'haca5;
	B = 16'hb7d8;
	ans_a = 16'h5476;
	#20
	A = 16'h3936;
	B = 16'hb749;
	ans_a = 16'h5471;
	#20
	A = 16'haffb;
	B = 16'hafb2;
	ans_a = 16'h5471;
	#20
	A = 16'h3f58;
	B = 16'h3c25;
	ans_a = 16'h548f;
	#20
	A = 16'h3e60;
	B = 16'h35f2;
	ans_a = 16'h5498;
	#20
	A = 16'hb9d7;
	B = 16'h3ecc;
	ans_a = 16'h5484;
	#20
	A = 16'hbdeb;
	B = 16'h3f51;
	ans_a = 16'h5459;
	#20
	A = 16'h3de2;
	B = 16'h3f8d;
	ans_a = 16'h5485;
	#20
	A = 16'hbc5c;
	B = 16'h3fa1;
	ans_a = 16'h5464;
	#20
	A = 16'hbe7e;
	B = 16'h3f9f;
	ans_a = 16'h5433;
	#20
	A = 16'h3f7c;
	B = 16'h3b2b;
	ans_a = 16'h544e;
	#20
	A = 16'h3da4;
	B = 16'hb538;
	ans_a = 16'h5447;
	#20
	A = 16'h3ccf;
	B = 16'hbefc;
	ans_a = 16'h5425;
	#20
	A = 16'h3d97;
	B = 16'h32d7;
	ans_a = 16'h542a;
	#20
	A = 16'h9a62;
	B = 16'h3e6d;
	ans_a = 16'h542a;
	#20
	A = 16'hb5ab;
	B = 16'hbb5d;
	ans_a = 16'h542f;
	#20
	A = 16'hbff5;
	B = 16'h3ac4;
	ans_a = 16'h5414;
	#20
	A = 16'h2ec2;
	B = 16'hbe6a;
	ans_a = 16'h5411;
	#20
	A = 16'h3f8d;
	B = 16'h387a;
	ans_a = 16'h5422;
	#20
	A = 16'hbdfa;
	B = 16'hbd46;
	ans_a = 16'h5442;
	#20
	A = 16'hbcbf;
	B = 16'hbf6c;
	ans_a = 16'h5465;
	#20
	A = 16'h3ba1;
	B = 16'h329d;
	ans_a = 16'h5468;
	#20
	A = 16'h3c3b;
	B = 16'h3dc3;
	ans_a = 16'h5480;
	#20
	A = 16'hbca9;
	B = 16'h3b1d;
	ans_a = 16'h546f;
	#20
	A = 16'ha14a;
	B = 16'hb873;
	ans_a = 16'h546f;
	#20
	A = 16'h313b;
	B = 16'h3f8c;
	ans_a = 16'h5474;
	#20
	A = 16'h39a9;
	B = 16'h3c86;
	ans_a = 16'h5481;
	#20
	A = 16'hbdc9;
	B = 16'hac90;
	ans_a = 16'h5483;
	#20
	A = 16'hbd2f;
	B = 16'h2c9d;
	ans_a = 16'h5482;
	#20
	A = 16'hb484;
	B = 16'h3af9;
	ans_a = 16'h547e;
	#20
	A = 16'hbb29;
	B = 16'h3852;
	ans_a = 16'h5476;
	#20
	A = 16'hb83b;
	B = 16'hbf2e;
	ans_a = 16'h5485;
	#20
	A = 16'hbaf0;
	B = 16'h38a8;
	ans_a = 16'h547d;
	#20
	A = 16'h3fde;
	B = 16'h3af0;
	ans_a = 16'h5498;
	#20
	A = 16'hbcaa;
	B = 16'hb7a0;
	ans_a = 16'h54a1;
	#20
	A = 16'h3dfa;
	B = 16'h341e;
	ans_a = 16'h54a7;
	#20
	A = 16'hbc89;
	B = 16'hb480;
	ans_a = 16'h54ac;
	#20
	A = 16'ha687;
	B = 16'h2aad;
	ans_a = 16'h54ac;
	#20
	A = 16'h3c67;
	B = 16'h3c52;
	ans_a = 16'h54bf;
	#20
	A = 16'h3fca;
	B = 16'hbc70;
	ans_a = 16'h549c;
	#20
	A = 16'h3741;
	B = 16'hbcd1;
	ans_a = 16'h5493;
	#20
	A = 16'h3bfc;
	B = 16'h3c53;
	ans_a = 16'h54a4;
	#20
	A = 16'hbbc5;
	B = 16'hbc26;
	ans_a = 16'h54b4;
	#20
	A = 16'haeda;
	B = 16'h2cd1;
	ans_a = 16'h54b4;
	#20
	A = 16'hbbd7;
	B = 16'h3e9c;
	ans_a = 16'h549a;
	#20
	A = 16'h3f0a;
	B = 16'h3f20;
	ans_a = 16'h54cc;
	#20
	A = 16'hb9dd;
	B = 16'hbe86;
	ans_a = 16'h54df;
	#20
	A = 16'h3c08;
	B = 16'hbe45;
	ans_a = 16'h54c6;
	#20
	A = 16'hbe4f;
	B = 16'hb833;
	ans_a = 16'h54d3;
	#20
	A = 16'h3fad;
	B = 16'hbc09;
	ans_a = 16'h54b4;
	#20
	A = 16'h3917;
	B = 16'hb362;
	ans_a = 16'h54b2;
	#20
	A = 16'h3b42;
	B = 16'hbd8c;
	ans_a = 16'h549e;
	#20
	A = 16'hbec9;
	B = 16'hbf71;
	ans_a = 16'h54d0;
	#20
	A = 16'h3e62;
	B = 16'h33e2;
	ans_a = 16'h54d6;
	#20
	A = 16'h3dd6;
	B = 16'h3d06;
	ans_a = 16'h54f3;
	#20
	A = 16'hb8b0;
	B = 16'h3a4d;
	ans_a = 16'h54ec;
	#20
	A = 16'hb99f;
	B = 16'h3d0b;
	ans_a = 16'h54de;
	#20
	A = 16'hb7d5;
	B = 16'hbbd3;
	ans_a = 16'h54e6;
	#20
	A = 16'hb692;
	B = 16'hbe55;
	ans_a = 16'h54f0;
	#20
	A = 16'h3cad;
	B = 16'h3feb;
	ans_a = 16'h5515;
	#20
	A = 16'hbe66;
	B = 16'h37e9;
	ans_a = 16'h5508;
	#20
	A = 16'h36ff;
	B = 16'h3720;
	ans_a = 16'h550b;
	#20
	A = 16'hbdf0;
	B = 16'h3f3b;
	ans_a = 16'h54e0;
	#20
	A = 16'h3b95;
	B = 16'hbe08;
	ans_a = 16'h54c9;
	#20
	A = 16'h3aeb;
	B = 16'h3cf8;
	ans_a = 16'h54da;
	#20
	A = 16'hba40;
	B = 16'h39ae;
	ans_a = 16'h54d1;
	#20
	A = 16'hb809;
	B = 16'hba39;
	ans_a = 16'h54d7;
	#20
	A = 16'h3df6;
	B = 16'h3f52;
	ans_a = 16'h5503;
	#20
	A = 16'hbd83;
	B = 16'h3c3b;
	ans_a = 16'h54ec;
	#20
	A = 16'h388f;
	B = 16'h3e10;
	ans_a = 16'h54fa;
	#20
	A = 16'h3c96;
	B = 16'hbedc;
	ans_a = 16'h54db;
	#20
	A = 16'hb942;
	B = 16'hbde3;
	ans_a = 16'h54ea;
	#20
	A = 16'hbaca;
	B = 16'hb1f6;
	ans_a = 16'h54ed;
	#20
	A = 16'h3e2b;
	B = 16'hbd58;
	ans_a = 16'h54cc;
	#20
	A = 16'h3ef3;
	B = 16'hbc6c;
	ans_a = 16'h54ad;
	#20
	A = 16'h3b30;
	B = 16'h3f69;
	ans_a = 16'h54c8;
	#20
	A = 16'h28ff;
	B = 16'hb5d6;
	ans_a = 16'h54c8;
	#20
	A = 16'h3fa2;
	B = 16'hb19d;
	ans_a = 16'h54c3;
	#20
	A = 16'h3d0b;
	B = 16'h3f85;
	ans_a = 16'h54e9;
	#20
	A = 16'h3806;
	B = 16'haa27;
	ans_a = 16'h54e9;
	#20
	A = 16'h3c0c;
	B = 16'h3f45;
	ans_a = 16'h5506;
	#20
	A = 16'hbfc7;
	B = 16'hb81a;
	ans_a = 16'h5516;
	#20
	A = 16'h29db;
	B = 16'ha6fc;
	ans_a = 16'h5516;
	#20
	A = 16'hb4a9;
	B = 16'hb5ff;
	ans_a = 16'h5518;
	#20
	A = 16'hb88b;
	B = 16'hbbd5;
	ans_a = 16'h5521;
	#20
	A = 16'hbf1c;
	B = 16'h3f15;
	ans_a = 16'h54ef;
	#20
	A = 16'hb383;
	B = 16'hbc11;
	ans_a = 16'h54f3;
	#20
	A = 16'h37bc;
	B = 16'hbdc6;
	ans_a = 16'h54e8;
	#20
	A = 16'hbd57;
	B = 16'h3f81;
	ans_a = 16'h54c0;
	#20
	A = 16'h31f8;
	B = 16'hbdca;
	ans_a = 16'h54bc;
	#20
	A = 16'h2d09;
	B = 16'hbc67;
	ans_a = 16'h54bb;
	#20
	A = 16'hb7a4;
	B = 16'h382b;
	ans_a = 16'h54b7;
	#20
	A = 16'hb03c;
	B = 16'h344a;
	ans_a = 16'h54b6;
	#20
	A = 16'hbdcb;
	B = 16'hbd40;
	ans_a = 16'h54d4;
	#20
	A = 16'hbc9c;
	B = 16'hb833;
	ans_a = 16'h54de;
	#20
	A = 16'h321b;
	B = 16'hb8c7;
	ans_a = 16'h54dc;
	#20
	A = 16'h2f30;
	B = 16'h3082;
	ans_a = 16'h54dc;
	#20
	A = 16'hbc7b;
	B = 16'hbce0;
	ans_a = 16'h54f2;
	#20
	A = 16'h388b;
	B = 16'h3532;
	ans_a = 16'h54f5;
	#20
	A = 16'hbd30;
	B = 16'hbf84;
	ans_a = 16'h551c;
	#20
	A = 16'hbecd;
	B = 16'hbef5;
	ans_a = 16'h554b;
	#20
	A = 16'h3289;
	B = 16'h2f36;
	ans_a = 16'h554b;
	#20
	A = 16'hbc73;
	B = 16'hbf80;
	ans_a = 16'h556c;
	#20
	A = 16'hac53;
	B = 16'hbc16;
	ans_a = 16'h556d;
	#20
	A = 16'h3a1f;
	B = 16'h3841;
	ans_a = 16'h5574;
	#20
	A = 16'h3d08;
	B = 16'hb134;
	ans_a = 16'h5571;
	#20
	A = 16'hbe1a;
	B = 16'h3813;
	ans_a = 16'h5565;
	#20
	A = 16'hb887;
	B = 16'hb42d;
	ans_a = 16'h5567;
	#20
	A = 16'h35a1;
	B = 16'hbfa8;
	ans_a = 16'h555c;
	#20
	A = 16'hbed7;
	B = 16'h3ffb;
	ans_a = 16'h5525;
	#20
	A = 16'h23ca;
	B = 16'h3fc7;
	ans_a = 16'h5525;
	#20
	A = 16'hb5ac;
	B = 16'hbe7e;
	ans_a = 16'h552e;
	#20
	A = 16'h3f3b;
	B = 16'hb793;
	ans_a = 16'h5520;
	#20
	A = 16'hbd7d;
	B = 16'h3e8f;
	ans_a = 16'h54fc;
	#20
	A = 16'h3c04;
	B = 16'h37d5;
	ans_a = 16'h5504;
	#20
	A = 16'h3b1f;
	B = 16'haeaa;
	ans_a = 16'h5503;
	#20
	A = 16'h3e6f;
	B = 16'hbeaf;
	ans_a = 16'h54d8;
	#20
	A = 16'hb15e;
	B = 16'hbfa7;
	ans_a = 16'h54dd;
	#20
	A = 16'h3c93;
	B = 16'hbfa2;
	ans_a = 16'h54ba;
	#20
	A = 16'h3e16;
	B = 16'hb92e;
	ans_a = 16'h54aa;
	#20
	A = 16'h3a99;
	B = 16'h35d4;
	ans_a = 16'h54af;
	#20
	A = 16'haf93;
	B = 16'h3f9b;
	ans_a = 16'h54ab;
	#20
	A = 16'hbf2c;
	B = 16'hb48e;
	ans_a = 16'h54b3;
	#20
	A = 16'hb67e;
	B = 16'h3f27;
	ans_a = 16'h54a7;
	#20
	A = 16'hbdea;
	B = 16'h3c65;
	ans_a = 16'h548d;
	#20
	A = 16'hbf12;
	B = 16'hbcaa;
	ans_a = 16'h54ae;
	#20
	A = 16'hb62e;
	B = 16'h9860;
	ans_a = 16'h54ae;
	#20
	A = 16'hac80;
	B = 16'h3de9;
	ans_a = 16'h54ac;
	#20
	A = 16'haabb;
	B = 16'h3f08;
	ans_a = 16'h54ab;
	#20
	A = 16'h3ba5;
	B = 16'h3c6a;
	ans_a = 16'h54bc;
	#20
	A = 16'h3f5a;
	B = 16'h37b4;
	ans_a = 16'h54ca;
	#20
	A = 16'hbb40;
	B = 16'hb503;
	ans_a = 16'h54cf;
	#20
	A = 16'hba1f;
	B = 16'hbd9d;
	ans_a = 16'h54e0;
	#20
	A = 16'hbdb2;
	B = 16'h3fb8;
	ans_a = 16'h54b4;
	#20
	A = 16'hbaec;
	B = 16'had58;
	ans_a = 16'h54b5;
	#20
	A = 16'hbd83;
	B = 16'h3e1b;
	ans_a = 16'h5493;
	#20
	A = 16'h33b9;
	B = 16'h3d87;
	ans_a = 16'h5498;
	#20
	A = 16'hbdd8;
	B = 16'hbbf1;
	ans_a = 16'h54af;
	#20
	A = 16'hb923;
	B = 16'hbb3e;
	ans_a = 16'h54b8;
	#20
	A = 16'h3ffe;
	B = 16'hbe9c;
	ans_a = 16'h5483;
	#20
	A = 16'h3f89;
	B = 16'hb67d;
	ans_a = 16'h5477;
	#20
	A = 16'hbff7;
	B = 16'h3842;
	ans_a = 16'h5466;
	#20
	A = 16'h3be2;
	B = 16'h3c22;
	ans_a = 16'h5476;
	#20
	A = 16'hbd0f;
	B = 16'hb864;
	ans_a = 16'h5481;
	#20
	A = 16'hb404;
	B = 16'hbe3c;
	ans_a = 16'h5487;
	#20
	A = 16'h3ba3;
	B = 16'hbfb9;
	ans_a = 16'h546a;
	#20
	A = 16'hb785;
	B = 16'hbc00;
	ans_a = 16'h5472;
	#20
	A = 16'hbed8;
	B = 16'h38fb;
	ans_a = 16'h5461;
	#20
	A = 16'hb537;
	B = 16'hbf5a;
	ans_a = 16'h546b;
	#20
	A = 16'h39a5;
	B = 16'h3fa4;
	ans_a = 16'h5481;
	#20
	A = 16'h2fcd;
	B = 16'hbd79;
	ans_a = 16'h547e;
	#20
	A = 16'hb933;
	B = 16'hbe7c;
	ans_a = 16'h548f;
	#20
	A = 16'hbd9d;
	B = 16'hbb9a;
	ans_a = 16'h54a4;
	#20
	A = 16'h3c27;
	B = 16'hbdf9;
	ans_a = 16'h548b;
	#20
	A = 16'h272b;
	B = 16'hbe0c;
	ans_a = 16'h548a;
	#20
	A = 16'hb659;
	B = 16'hbe2e;
	ans_a = 16'h5494;
	#20
	A = 16'hbd23;
	B = 16'h3f48;
	ans_a = 16'h546f;
	#20
	A = 16'h3edb;
	B = 16'h388e;
	ans_a = 16'h547f;
	#20
	A = 16'hbb72;
	B = 16'h38a6;
	ans_a = 16'h5476;
	#20
	A = 16'h3819;
	B = 16'hb127;
	ans_a = 16'h5475;
	#20
	A = 16'hbff1;
	B = 16'h3eef;
	ans_a = 16'h543e;
	#20
	A = 16'hb641;
	B = 16'h3c96;
	ans_a = 16'h5437;
	#20
	A = 16'h3ec1;
	B = 16'h3ed3;
	ans_a = 16'h5465;
	#20
	A = 16'hbf37;
	B = 16'hbfc8;
	ans_a = 16'h549d;
	#20
	A = 16'h38ef;
	B = 16'hbe55;
	ans_a = 16'h548d;
	#20
	A = 16'hbce5;
	B = 16'hbf25;
	ans_a = 16'h54b0;
	#20
	A = 16'hbc62;
	B = 16'ha454;
	ans_a = 16'h54b0;
	#20
	A = 16'h3f6b;
	B = 16'hbfcd;
	ans_a = 16'h5476;
	#20
	A = 16'h3ec1;
	B = 16'h3c87;
	ans_a = 16'h5495;
	#20
	A = 16'hb838;
	B = 16'hb06b;
	ans_a = 16'h5496;
	#20
	A = 16'hbeed;
	B = 16'h3de9;
	ans_a = 16'h546d;
	#20
	A = 16'h3c13;
	B = 16'h381e;
	ans_a = 16'h5475;
	#20
	A = 16'h36c4;
	B = 16'h2562;
	ans_a = 16'h5475;
	#20
	A = 16'hb7a3;
	B = 16'hb0c7;
	ans_a = 16'h5476;
	#20
	A = 16'hbd8f;
	B = 16'h3c3d;
	ans_a = 16'h545e;
	#20
	A = 16'h3b05;
	B = 16'hbf23;
	ans_a = 16'h5445;
	#20
	A = 16'h3cac;
	B = 16'hb527;
	ans_a = 16'h543f;
	#20
	A = 16'h34f6;
	B = 16'hbfa0;
	ans_a = 16'h5436;
	#20
	A = 16'h3f3c;
	B = 16'h3f4c;
	ans_a = 16'h546b;
	#20
	A = 16'h3b00;
	B = 16'h3ad7;
	ans_a = 16'h5477;
	#20
	A = 16'h3fab;
	B = 16'hb9dc;
	ans_a = 16'h5461;
	#20
	A = 16'hbdd7;
	B = 16'h3e61;
	ans_a = 16'h543c;
	#20
	A = 16'hb868;
	B = 16'h3991;
	ans_a = 16'h5436;
	#20
	A = 16'hb8e4;
	B = 16'hbc7f;
	ans_a = 16'h5441;
	#20
	A = 16'hb87d;
	B = 16'h249d;
	ans_a = 16'h5441;
	#20
	A = 16'hbc59;
	B = 16'h3f5a;
	ans_a = 16'h5421;
	#20
	A = 16'hbfda;
	B = 16'h3eb5;
	ans_a = 16'h53d9;
	#20
	A = 16'h3afd;
	B = 16'hbf1e;
	ans_a = 16'h53a7;
	#20
	A = 16'hbf88;
	B = 16'hb75c;
	ans_a = 16'h53c3;
	#20
	A = 16'h3d4d;
	B = 16'h3417;
	ans_a = 16'h53ce;
	#20
	A = 16'h3cef;
	B = 16'hbf6f;
	ans_a = 16'h5385;
	#20
	A = 16'h3780;
	B = 16'h3d78;
	ans_a = 16'h539a;
	#20
	A = 16'hb840;
	B = 16'h3d6e;
	ans_a = 16'h5383;
	#20
	A = 16'h3ead;
	B = 16'h3a6a;
	ans_a = 16'h53ae;
	#20
	A = 16'h3f6b;
	B = 16'h3db3;
	ans_a = 16'h5401;
	#20
	A = 16'hbf3d;
	B = 16'hb3ad;
	ans_a = 16'h5408;
	#20
	A = 16'h3e07;
	B = 16'h3f72;
	ans_a = 16'h5435;
	#20
	A = 16'h29f4;
	B = 16'h3f9c;
	ans_a = 16'h5436;
	#20
	A = 16'h3d8a;
	B = 16'ha7cc;
	ans_a = 16'h5435;
	#20
	A = 16'hb46a;
	B = 16'h3c6e;
	ans_a = 16'h5430;
	#20
	A = 16'hbbf1;
	B = 16'h3cdb;
	ans_a = 16'h541d;
	#20
	A = 16'h3ddf;
	B = 16'hbda8;
	ans_a = 16'h53f8;
	#20
	A = 16'hbccb;
	B = 16'hbd0d;
	ans_a = 16'h5414;
	#20
	A = 16'h9885;
	B = 16'hbb8c;
	ans_a = 16'h5414;
	#20
	A = 16'h3e5f;
	B = 16'h3c36;
	ans_a = 16'h542f;
	#20
	A = 16'h3f54;
	B = 16'hbd75;
	ans_a = 16'h5407;
	#20
	A = 16'h3c2c;
	B = 16'h3cf4;
	ans_a = 16'h541c;
	#20
	A = 16'h3eb8;
	B = 16'h3bfe;
	ans_a = 16'h5437;
	#20
	A = 16'h3d7d;
	B = 16'h369d;
	ans_a = 16'h5440;
	#20
	A = 16'haa0f;
	B = 16'hbca2;
	ans_a = 16'h5441;
	#20
	A = 16'h3b13;
	B = 16'hae62;
	ans_a = 16'h5440;
	#20
	A = 16'h3b60;
	B = 16'hbccf;
	ans_a = 16'h542e;
	#20
	A = 16'h3c69;
	B = 16'h3c73;
	ans_a = 16'h5442;
	#20
	A = 16'h9d31;
	B = 16'h3dbb;
	ans_a = 16'h5442;
	#20
	A = 16'h3e64;
	B = 16'hb681;
	ans_a = 16'h5438;
	#20
	A = 16'h3abf;
	B = 16'hb925;
	ans_a = 16'h542f;
	#20
	A = 16'h3c72;
	B = 16'h3f01;
	ans_a = 16'h544e;
	#20
	A = 16'hbeca;
	B = 16'h38ee;
	ans_a = 16'h543d;
	#20
	A = 16'hbfaa;
	B = 16'h3f49;
	ans_a = 16'h5405;
	#20
	A = 16'hba83;
	B = 16'h3eb1;
	ans_a = 16'h53de;
	#20
	A = 16'hbc32;
	B = 16'h37ae;
	ans_a = 16'h53ce;
	#20
	A = 16'hbc34;
	B = 16'hb5fb;
	ans_a = 16'h53db;
	#20
	A = 16'h2f9c;
	B = 16'hb86a;
	ans_a = 16'h53d9;
	#20
	A = 16'h3f62;
	B = 16'h3cf2;
	ans_a = 16'h5411;
	#20
	A = 16'hbec5;
	B = 16'hbc2b;
	ans_a = 16'h542d;
	#20
	A = 16'h39bd;
	B = 16'h3de6;
	ans_a = 16'h543e;
	#20
	A = 16'hb632;
	B = 16'hbe3e;
	ans_a = 16'h5448;
	#20
	A = 16'h387f;
	B = 16'hbccd;
	ans_a = 16'h543d;
	#20
	A = 16'h3e3a;
	B = 16'hbdce;
	ans_a = 16'h5419;
	#20
	A = 16'hbe10;
	B = 16'had4b;
	ans_a = 16'h541b;
	#20
	A = 16'hbe4d;
	B = 16'hbcbb;
	ans_a = 16'h5439;
	#20
	A = 16'hbe74;
	B = 16'h3d3d;
	ans_a = 16'h5417;
	#20
	A = 16'h3eb9;
	B = 16'h3e17;
	ans_a = 16'h5440;
	#20
	A = 16'h2eca;
	B = 16'hbf7d;
	ans_a = 16'h543d;
	#20
	A = 16'hba98;
	B = 16'h3e28;
	ans_a = 16'h5429;
	#20
	A = 16'hbdb6;
	B = 16'hbcc9;
	ans_a = 16'h5444;
	#20
	A = 16'hae2d;
	B = 16'hab7a;
	ans_a = 16'h5444;
	#20
	A = 16'hb496;
	B = 16'hbf68;
	ans_a = 16'h544c;
	#20
	A = 16'hbd3d;
	B = 16'hbef0;
	ans_a = 16'h5470;
	#20
	A = 16'hbc7e;
	B = 16'h3e10;
	ans_a = 16'h5455;
	#20
	A = 16'h3e2f;
	B = 16'h3b66;
	ans_a = 16'h546c;
	#20
	A = 16'hb6a5;
	B = 16'h36bb;
	ans_a = 16'h5469;
	#20
	A = 16'hbafc;
	B = 16'hb69f;
	ans_a = 16'h546f;
	#20
	A = 16'hbd80;
	B = 16'h3890;
	ans_a = 16'h5462;
	#20
	A = 16'hbf44;
	B = 16'hbd7e;
	ans_a = 16'h548a;
	#20
	A = 16'hbc7f;
	B = 16'hbfd4;
	ans_a = 16'h54ad;
	#20
	A = 16'h3e53;
	B = 16'hb62e;
	ans_a = 16'h54a3;
	#20
	A = 16'hb4d1;
	B = 16'hbb94;
	ans_a = 16'h54a8;
	#20
	A = 16'hbc9c;
	B = 16'h3430;
	ans_a = 16'h54a3;
	#20
	A = 16'hbfa6;
	B = 16'h3488;
	ans_a = 16'h549a;
	#20
	A = 16'h3621;
	B = 16'hb4ee;
	ans_a = 16'h5498;
	#20
	A = 16'h3c84;
	B = 16'h3f28;
	ans_a = 16'h54b8;
	#20
	A = 16'h39ca;
	B = 16'h36de;
	ans_a = 16'h54bd;
	#20
	A = 16'h35f9;
	B = 16'hba20;
	ans_a = 16'h54b8;
	#20
	A = 16'hb970;
	B = 16'hbd85;
	ans_a = 16'h54c7;
	#20
	A = 16'h2c0b;
	B = 16'hb14f;
	ans_a = 16'h54c7;
	#20
	A = 16'h38c2;
	B = 16'h3c67;
	ans_a = 16'h54d1;
	#20
	A = 16'h3f3c;
	B = 16'h3a03;
	ans_a = 16'h54e7;
	#20
	A = 16'h38cd;
	B = 16'h3587;
	ans_a = 16'h54ea;
	#20
	A = 16'hbf58;
	B = 16'h3fbb;
	ans_a = 16'h54b1;
	#20
	A = 16'hbc54;
	B = 16'h396e;
	ans_a = 16'h54a5;
	#20
	A = 16'hb79e;
	B = 16'h3cff;
	ans_a = 16'h549b;
	#20
	A = 16'hbf22;
	B = 16'h37af;
	ans_a = 16'h548d;
	#20
	A = 16'h3a9c;
	B = 16'hbf1e;
	ans_a = 16'h5475;
	#20
	A = 16'h3d78;
	B = 16'h2b48;
	ans_a = 16'h5476;
	#20
	A = 16'h39c2;
	B = 16'hba05;
	ans_a = 16'h546d;
	#20
	A = 16'hb25f;
	B = 16'hb87a;
	ans_a = 16'h546f;
	#20
	A = 16'hb60d;
	B = 16'hb813;
	ans_a = 16'h5472;
	#20
	A = 16'hbe6d;
	B = 16'h2e20;
	ans_a = 16'h5470;
	#20
	A = 16'h91c6;
	B = 16'hbfc0;
	ans_a = 16'h5470;
	#20
	A = 16'h37fd;
	B = 16'h375a;
	ans_a = 16'h5474;
	#20
	A = 16'h3f59;
	B = 16'h3ecc;
	ans_a = 16'h54a6;
	#20
	A = 16'hb98b;
	B = 16'h3d60;
	ans_a = 16'h5497;
	#20
	A = 16'hbe7d;
	B = 16'h38bf;
	ans_a = 16'h5488;
	#20
	A = 16'h313d;
	B = 16'h3da9;
	ans_a = 16'h548c;
	#20
	A = 16'hb19c;
	B = 16'h3ff9;
	ans_a = 16'h5486;
	#20
	A = 16'hbfb4;
	B = 16'h3058;
	ans_a = 16'h5482;
	#20
	A = 16'h3fac;
	B = 16'h3a67;
	ans_a = 16'h549b;
	#20
	A = 16'haca1;
	B = 16'h3c2b;
	ans_a = 16'h549a;
	#20
	A = 16'hac26;
	B = 16'h3eb4;
	ans_a = 16'h5498;
	#20
	A = 16'hbdf2;
	B = 16'h3e61;
	ans_a = 16'h5472;
	#20
	A = 16'h3107;
	B = 16'h3b90;
	ans_a = 16'h5474;
	#20
	A = 16'hbb86;
	B = 16'hb869;
	ans_a = 16'h547c;
	#20
	A = 16'hbdcb;
	B = 16'hbd19;
	ans_a = 16'h549a;
	#20
	A = 16'h3a1d;
	B = 16'hbafe;
	ans_a = 16'h548f;
	#20
	A = 16'hb92b;
	B = 16'hb7ff;
	ans_a = 16'h5494;
	#20
	A = 16'hb9c1;
	B = 16'h3ba5;
	ans_a = 16'h5489;
	#20
	A = 16'h3d33;
	B = 16'hba99;
	ans_a = 16'h5478;
	#20
	A = 16'h3fef;
	B = 16'h3f38;
	ans_a = 16'h54b1;
	#20
	A = 16'h3f6b;
	B = 16'hbcd8;
	ans_a = 16'h548d;
	#20
	A = 16'hb91f;
	B = 16'h3c04;
	ans_a = 16'h5483;
	#20
	A = 16'h3b34;
	B = 16'hb952;
	ans_a = 16'h5479;
	#20
	A = 16'h3a4d;
	B = 16'h2913;
	ans_a = 16'h5479;
	#20
	A = 16'ha8f2;
	B = 16'hbc0a;
	ans_a = 16'h547a;
	#20
	A = 16'h38ab;
	B = 16'h39cf;
	ans_a = 16'h5481;
	#20
	A = 16'h36ab;
	B = 16'h3aca;
	ans_a = 16'h5487;
	#20
	A = 16'hac8f;
	B = 16'hbc47;
	ans_a = 16'h5488;
	#20
	A = 16'haa3a;
	B = 16'hb834;
	ans_a = 16'h5488;
	#20
	A = 16'h3e6e;
	B = 16'h350e;
	ans_a = 16'h5490;
	#20
	A = 16'hb10d;
	B = 16'hb813;
	ans_a = 16'h5491;
	#20
	A = 16'hb5a4;
	B = 16'h2fc8;
	ans_a = 16'h5490;
	#20
	A = 16'h39af;
	B = 16'hbc37;
	ans_a = 16'h5484;
	#20
	A = 16'hb73a;
	B = 16'hbca1;
	ans_a = 16'h548c;
	#20
	A = 16'h3c89;
	B = 16'hb381;
	ans_a = 16'h5488;
	#20
	A = 16'h318a;
	B = 16'h3c21;
	ans_a = 16'h548b;
	#20
	A = 16'hbfeb;
	B = 16'h3c4b;
	ans_a = 16'h5469;
	#20
	A = 16'h3c8e;
	B = 16'h354d;
	ans_a = 16'h546f;
	#20
	A = 16'h3e3b;
	B = 16'hbbfb;
	ans_a = 16'h5456;
	#20
	A = 16'hbfd8;
	B = 16'h3de0;
	ans_a = 16'h5428;
	#20
	A = 16'hbf4f;
	B = 16'h3b55;
	ans_a = 16'h540d;
	#20
	A = 16'hb274;
	B = 16'hbd30;
	ans_a = 16'h5411;
	#20
	A = 16'h3a62;
	B = 16'h3d6f;
	ans_a = 16'h5422;
	#20
	A = 16'h3f04;
	B = 16'hbe72;
	ans_a = 16'h53ea;
	#20
	A = 16'hbcdc;
	B = 16'hbd7f;
	ans_a = 16'h5410;
	#20
	A = 16'h24de;
	B = 16'h3d97;
	ans_a = 16'h5410;
	#20
	A = 16'hbcf6;
	B = 16'h3c1d;
	ans_a = 16'h53f7;
	#20
	A = 16'h3ec2;
	B = 16'hbabc;
	ans_a = 16'h53ca;
	#20
	A = 16'h3cca;
	B = 16'h3d41;
	ans_a = 16'h53fc;
	#20
	A = 16'hb793;
	B = 16'ha004;
	ans_a = 16'h53fc;
	#20
	A = 16'h3da7;
	B = 16'hb32b;
	ans_a = 16'h53f2;
	#20
	A = 16'h2eed;
	B = 16'hbd15;
	ans_a = 16'h53ee;
	#20
	A = 16'h3e23;
	B = 16'h3eda;
	ans_a = 16'h5421;
	#20
	A = 16'h2fb6;
	B = 16'h396a;
	ans_a = 16'h5422;
	#20
	A = 16'hb6a0;
	B = 16'h3d36;
	ans_a = 16'h5419;
	#20
	A = 16'h3c67;
	B = 16'h3e1b;
	ans_a = 16'h5434;
	#20
	A = 16'h3fea;
	B = 16'h3a4f;
	ans_a = 16'h544d;
	#20
	A = 16'hbd40;
	B = 16'h3815;
	ans_a = 16'h5442;
	#20
	A = 16'h2d9e;
	B = 16'hbc8f;
	ans_a = 16'h5440;
	#20
	A = 16'h3997;
	B = 16'hbd92;
	ans_a = 16'h5430;
	#20
	A = 16'hbe26;
	B = 16'h3cd1;
	ans_a = 16'h5412;
	#20
	A = 16'ha09c;
	B = 16'hb8cd;
	ans_a = 16'h5412;
	#20
	A = 16'h389d;
	B = 16'hb2fb;
	ans_a = 16'h5410;
	#20
	A = 16'hb462;
	B = 16'h31ea;
	ans_a = 16'h540f;
	#20
	A = 16'hbe5b;
	B = 16'hba1a;
	ans_a = 16'h5422;
	#20
	A = 16'hba68;
	B = 16'hb6b1;
	ans_a = 16'h5427;
	#20
	A = 16'hbc88;
	B = 16'hbaa6;
	ans_a = 16'h5436;
	#20
	A = 16'hbe3b;
	B = 16'h3b62;
	ans_a = 16'h541f;
	#20
	A = 16'h3a81;
	B = 16'hb927;
	ans_a = 16'h5417;
	#20
	A = 16'h3d0d;
	B = 16'h3ef4;
	ans_a = 16'h543a;
	#20
	A = 16'h3a24;
	B = 16'hb9a2;
	ans_a = 16'h5431;
	#20
	A = 16'hbe49;
	B = 16'hb71f;
	ans_a = 16'h543c;
	#20
	A = 16'h3f9c;
	B = 16'h3b21;
	ans_a = 16'h5457;
	#20
	A = 16'h3c2f;
	B = 16'h3b3e;
	ans_a = 16'h5466;
	#20
	A = 16'hb21f;
	B = 16'hbc70;
	ans_a = 16'h5469;
	#20
	A = 16'h3f56;
	B = 16'h2b82;
	ans_a = 16'h546b;
	#20
	A = 16'h4000;
	B = 16'hb7d7;
	ans_a = 16'h545b;
	#20
	A = 16'hb1e2;
	B = 16'h355b;
	ans_a = 16'h545a;
	#20
	A = 16'hb76e;
	B = 16'h3592;
	ans_a = 16'h5457;
	#20
	A = 16'h3dbb;
	B = 16'hb803;
	ans_a = 16'h544c;
	#20
	A = 16'hbd4a;
	B = 16'hbc2d;
	ans_a = 16'h5462;
	#20
	A = 16'hbd2e;
	B = 16'hbe75;
	ans_a = 16'h5483;
	#20
	A = 16'h3dbc;
	B = 16'hba49;
	ans_a = 16'h5471;
	#20
	A = 16'h3e53;
	B = 16'hbd76;
	ans_a = 16'h544e;
	#20
	A = 16'h2bf5;
	B = 16'h3535;
	ans_a = 16'h544e;
	#20
	A = 16'ha8ee;
	B = 16'hb235;
	ans_a = 16'h544e;
	#20
	A = 16'hb44e;
	B = 16'hab95;
	ans_a = 16'h544e;
	#20
	A = 16'h39e4;
	B = 16'h3d4a;
	ans_a = 16'h545e;
	#20
	A = 16'hbe4c;
	B = 16'hb8b9;
	ans_a = 16'h546d;
	#20
	A = 16'h3756;
	B = 16'hbde1;
	ans_a = 16'h5462;
	#20
	A = 16'h3ac0;
	B = 16'h3ca3;
	ans_a = 16'h5472;
	#20
	A = 16'hbfae;
	B = 16'h368a;
	ans_a = 16'h5465;
	#20
	A = 16'h357f;
	B = 16'hb9c5;
	ans_a = 16'h5461;
	#20
	A = 16'hbb91;
	B = 16'hbe85;
	ans_a = 16'h547a;
	#20
	A = 16'hb935;
	B = 16'h3eba;
	ans_a = 16'h5468;
	#20
	A = 16'hb197;
	B = 16'hbfe1;
	ans_a = 16'h546e;
	#20
	A = 16'h35de;
	B = 16'hb847;
	ans_a = 16'h546b;
	#20
	A = 16'h343b;
	B = 16'hbd31;
	ans_a = 16'h5466;
	#20
	A = 16'hbed1;
	B = 16'hbea3;
	ans_a = 16'h5493;
	#20
	A = 16'hb9dc;
	B = 16'hb981;
	ans_a = 16'h549b;
	#20
	A = 16'hbc9f;
	B = 16'h2c1c;
	ans_a = 16'h549a;
	#20
	A = 16'ha64b;
	B = 16'hb388;
	ans_a = 16'h549a;
	#20
	A = 16'h3fd5;
	B = 16'hbfc3;
	ans_a = 16'h545d;
	#20
	A = 16'h39d0;
	B = 16'hb7c6;
	ans_a = 16'h5457;
	#20
	A = 16'h3ed4;
	B = 16'hbf1a;
	ans_a = 16'h5426;
	#20
	A = 16'hb823;
	B = 16'hb7b2;
	ans_a = 16'h542a;
	#20
	A = 16'h3f23;
	B = 16'had80;
	ans_a = 16'h5428;
	#20
	A = 16'h3ceb;
	B = 16'h3bef;
	ans_a = 16'h543c;
	#20
	A = 16'h3a31;
	B = 16'hb034;
	ans_a = 16'h543a;
	#20
	A = 16'h3f9d;
	B = 16'hbe3f;
	ans_a = 16'h540a;
	#20
	A = 16'h3999;
	B = 16'h3df2;
	ans_a = 16'h541b;
	#20
	A = 16'h3ba1;
	B = 16'haaea;
	ans_a = 16'h541a;
	#20
	A = 16'hbe7b;
	B = 16'h3c2e;
	ans_a = 16'h53fe;
	#20
	A = 16'h3d40;
	B = 16'h312f;
	ans_a = 16'h5402;
	#20
	A = 16'h3ce7;
	B = 16'h3d0d;
	ans_a = 16'h541b;
	#20
	A = 16'h232f;
	B = 16'h34d5;
	ans_a = 16'h541b;
	#20
	A = 16'hb805;
	B = 16'h3b12;
	ans_a = 16'h5414;
	#20
	A = 16'hbead;
	B = 16'hbd42;
	ans_a = 16'h5437;
	#20
	A = 16'h3f90;
	B = 16'hbc1f;
	ans_a = 16'h5418;
	#20
	A = 16'h3fdb;
	B = 16'hbd9a;
	ans_a = 16'h53d8;
	#20
	A = 16'hbee8;
	B = 16'hbf1f;
	ans_a = 16'h541d;
	#20
	A = 16'h3a7a;
	B = 16'hbfff;
	ans_a = 16'h5403;
	#20
	A = 16'hb9c3;
	B = 16'hb449;
	ans_a = 16'h5406;
	#20
	A = 16'hbabf;
	B = 16'hbf89;
	ans_a = 16'h541f;
	#20
	A = 16'hb340;
	B = 16'hbca6;
	ans_a = 16'h5423;
	#20
	A = 16'h3b0f;
	B = 16'h3b2b;
	ans_a = 16'h5430;
	#20
	A = 16'h34b2;
	B = 16'h3f83;
	ans_a = 16'h5439;
	#20
	A = 16'hba7c;
	B = 16'h38af;
	ans_a = 16'h5431;
	#20
	A = 16'ha391;
	B = 16'h257d;
	ans_a = 16'h5431;
	#20
	A = 16'hbe47;
	B = 16'hbdaa;
	ans_a = 16'h5455;
	#20
	A = 16'h3d2f;
	B = 16'h383a;
	ans_a = 16'h5460;
	#20
	A = 16'hbe60;
	B = 16'hbe12;
	ans_a = 16'h5487;
	#20
	A = 16'hb951;
	B = 16'h3b08;
	ans_a = 16'h547e;
	#20
	A = 16'hb882;
	B = 16'h3f34;
	ans_a = 16'h546e;
	#20
	A = 16'h380e;
	B = 16'hbd6f;
	ans_a = 16'h5463;
	#20
	A = 16'h37e4;
	B = 16'ha975;
	ans_a = 16'h5463;
	#20
	A = 16'h3b9f;
	B = 16'hbd41;
	ans_a = 16'h544f;
	#20
	A = 16'hbff1;
	B = 16'hb9b4;
	ans_a = 16'h5466;
	#20
	A = 16'h3f2e;
	B = 16'h3cde;
	ans_a = 16'h5489;
	#20
	A = 16'haf89;
	B = 16'hb79d;
	ans_a = 16'h548a;
	#20
	A = 16'h3df6;
	B = 16'h39d6;
	ans_a = 16'h549b;
	#20
	A = 16'hba82;
	B = 16'h3e69;
	ans_a = 16'h5486;
	#20
	A = 16'hbede;
	B = 16'hbc14;
	ans_a = 16'h54a2;
	#20
	A = 16'h3f94;
	B = 16'h3fa2;
	ans_a = 16'h54dc;
	#20
	A = 16'h3837;
	B = 16'hbc73;
	ans_a = 16'h54d3;
	#20
	A = 16'hb72f;
	B = 16'hb662;
	ans_a = 16'h54d6;
	#20
	A = 16'h3aa2;
	B = 16'hbdef;
	ans_a = 16'h54c2;
	#20
	A = 16'hae52;
	B = 16'hbc61;
	ans_a = 16'h54c4;
	#20
	A = 16'h3cd9;
	B = 16'h3c61;
	ans_a = 16'h54d9;
	#20
	A = 16'h3c1a;
	B = 16'hbc1e;
	ans_a = 16'h54c8;
	#20
	A = 16'hbe15;
	B = 16'hbdd6;
	ans_a = 16'h54ec;
	#20
	A = 16'h3d7d;
	B = 16'hbfb0;
	ans_a = 16'h54c2;
	#20
	A = 16'h3b1e;
	B = 16'h26bc;
	ans_a = 16'h54c2;
	#20
	A = 16'hbfe0;
	B = 16'h3b68;
	ans_a = 16'h54a5;
	#20
	A = 16'hb843;
	B = 16'h3757;
	ans_a = 16'h54a1;
	#20
	A = 16'h31e5;
	B = 16'h3e7b;
	ans_a = 16'h54a6;
	#20
	A = 16'hae2c;
	B = 16'hb0ee;
	ans_a = 16'h54a6;
	#20
	A = 16'h3e99;
	B = 16'hb39b;
	ans_a = 16'h54a0;
	#20
	A = 16'hb624;
	B = 16'haca2;
	ans_a = 16'h54a0;
	#20
	A = 16'h3c4d;
	B = 16'h2d84;
	ans_a = 16'h54a1;
	#20
	A = 16'h3991;
	B = 16'h2c9a;
	ans_a = 16'h54a2;
	#20
	A = 16'hb891;
	B = 16'h344b;
	ans_a = 16'h54a0;
	#20
	A = 16'hbeef;
	B = 16'hbdf7;
	ans_a = 16'h54c9;
	#20
	A = 16'hbed5;
	B = 16'h3771;
	ans_a = 16'h54bc;
	#20
	A = 16'h3362;
	B = 16'h3d50;
	ans_a = 16'h54c1;
	#20
	A = 16'hbc87;
	B = 16'hb990;
	ans_a = 16'h54ce;
	#20
	A = 16'hb9f4;
	B = 16'h3627;
	ans_a = 16'h54c9;
	#20
	A = 16'hbc5a;
	B = 16'h3c1a;
	ans_a = 16'h54b7;
	#20
	A = 16'h3c59;
	B = 16'h33d2;
	ans_a = 16'h54bb;
	#20
	A = 16'hbca3;
	B = 16'hb9ad;
	ans_a = 16'h54c8;
	#20
	A = 16'hbdde;
	B = 16'hb4bf;
	ans_a = 16'h54cf;
	#20
	A = 16'hb896;
	B = 16'hbefb;
	ans_a = 16'h54df;
	#20
	A = 16'hba1d;
	B = 16'hb357;
	ans_a = 16'h54e2;
	#20
	A = 16'hbd42;
	B = 16'hb6d9;
	ans_a = 16'h54eb;
	#20
	A = 16'h3d85;
	B = 16'hbd26;
	ans_a = 16'h54cf;
	#20
	A = 16'hb96e;
	B = 16'hb6eb;
	ans_a = 16'h54d4;
	#20
	A = 16'h35fe;
	B = 16'h3d68;
	ans_a = 16'h54dc;
	#20
	A = 16'hbf29;
	B = 16'hb49a;
	ans_a = 16'h54e4;
	#20
	A = 16'hae35;
	B = 16'hbea9;
	ans_a = 16'h54e7;
	#20
	A = 16'h3e27;
	B = 16'hbe47;
	ans_a = 16'h54c0;
	#20
	A = 16'h3dfd;
	B = 16'hbebb;
	ans_a = 16'h5498;
	#20
	A = 16'h3e2b;
	B = 16'ha656;
	ans_a = 16'h5497;
	#20
	A = 16'hbf02;
	B = 16'h3de2;
	ans_a = 16'h546e;
	#20
	A = 16'h3d24;
	B = 16'h30b2;
	ans_a = 16'h5471;
	#20
	A = 16'hbdd1;
	B = 16'hb809;
	ans_a = 16'h547d;
	#20
	A = 16'h3f18;
	B = 16'hb9a9;
	ans_a = 16'h5469;
	#20
	A = 16'h2d51;
	B = 16'h3544;
	ans_a = 16'h5469;
	#20
	A = 16'hbdf6;
	B = 16'h3e96;
	ans_a = 16'h5442;
	#20
	A = 16'hbc67;
	B = 16'h39d1;
	ans_a = 16'h5435;
	#20
	A = 16'hbd67;
	B = 16'hbba3;
	ans_a = 16'h544a;
	#20
	A = 16'h3f8d;
	B = 16'h3e88;
	ans_a = 16'h547b;
	#20
	A = 16'h3705;
	B = 16'hbc92;
	ans_a = 16'h5473;
	#20
	A = 16'h3af2;
	B = 16'hbe83;
	ans_a = 16'h545c;
	#20
	A = 16'h36b8;
	B = 16'hba60;
	ans_a = 16'h5457;
	#20
	A = 16'hb822;
	B = 16'hbec7;
	ans_a = 16'h5465;
	#20
	A = 16'hb0fb;
	B = 16'h3a49;
	ans_a = 16'h5463;
	#20
	A = 16'h3cb5;
	B = 16'h37b7;
	ans_a = 16'h546c;
	#20
	A = 16'hbf93;
	B = 16'h37f4;
	ans_a = 16'h545d;
	#20
	A = 16'hb991;
	B = 16'hb86e;
	ans_a = 16'h5463;
	#20
	A = 16'h2f8b;
	B = 16'hbf41;
	ans_a = 16'h5460;
	#20
	A = 16'hb92e;
	B = 16'h364a;
	ans_a = 16'h545c;
	#20
	A = 16'h3ef7;
	B = 16'h3e05;
	ans_a = 16'h5486;
	#20
	A = 16'hbe56;
	B = 16'h3c75;
	ans_a = 16'h546a;
	#20
	A = 16'h35c0;
	B = 16'h3073;
	ans_a = 16'h546b;
	#20
	A = 16'h3025;
	B = 16'h3fbf;
	ans_a = 16'h546f;
	#20
	A = 16'h2b1b;
	B = 16'hbdd8;
	ans_a = 16'h546e;
	#20
	A = 16'h3c1d;
	B = 16'hba99;
	ans_a = 16'h5460;
	#20
	A = 16'h3557;
	B = 16'h3756;
	ans_a = 16'h5462;
	#20
	A = 16'hbb81;
	B = 16'hb58a;
	ans_a = 16'h5467;
	#20
	A = 16'h3c55;
	B = 16'h330a;
	ans_a = 16'h546b;
	#20
	A = 16'hbb29;
	B = 16'h39a1;
	ans_a = 16'h5461;
	#20
	A = 16'h3c26;
	B = 16'hbc68;
	ans_a = 16'h544f;
	#20
	A = 16'hbf81;
	B = 16'h3ebe;
	ans_a = 16'h541c;
	#20
	A = 16'h3e26;
	B = 16'h3463;
	ans_a = 16'h5423;
	#20
	A = 16'hbf45;
	B = 16'h3053;
	ans_a = 16'h541f;
	#20
	A = 16'h2158;
	B = 16'hbfae;
	ans_a = 16'h541f;
	#20
	A = 16'h3f19;
	B = 16'h3e31;
	ans_a = 16'h544b;
	#20
	A = 16'hba25;
	B = 16'h38f9;
	ans_a = 16'h5443;
	#20
	A = 16'h3c82;
	B = 16'h3a02;
	ans_a = 16'h5451;
	#20
	A = 16'h3404;
	B = 16'hb8bc;
	ans_a = 16'h544f;
	#20
	A = 16'hbd02;
	B = 16'h3dc2;
	ans_a = 16'h5432;
	#20
	A = 16'h3363;
	B = 16'hbf15;
	ans_a = 16'h542b;
	#20
	A = 16'hbbeb;
	B = 16'h3fbe;
	ans_a = 16'h540c;
	#20
	A = 16'h39b6;
	B = 16'h3ee7;
	ans_a = 16'h5420;
	#20
	A = 16'ha68f;
	B = 16'h3f80;
	ans_a = 16'h541f;
	#20
	A = 16'h392b;
	B = 16'h3fa2;
	ans_a = 16'h5433;
	#20
	A = 16'hbf5a;
	B = 16'h3d96;
	ans_a = 16'h540a;
	#20
	A = 16'h3d00;
	B = 16'hb81f;
	ans_a = 16'h53ff;
	#20
	A = 16'hbd98;
	B = 16'h3df3;
	ans_a = 16'h53bc;
	#20
	A = 16'h395b;
	B = 16'h3aec;
	ans_a = 16'h53cf;
	#20
	A = 16'h3838;
	B = 16'h34f9;
	ans_a = 16'h53d4;
	#20
	A = 16'h351b;
	B = 16'hbdb9;
	ans_a = 16'h53c5;
	#20
	A = 16'h3490;
	B = 16'h2dbb;
	ans_a = 16'h53c6;
	#20
	A = 16'h3425;
	B = 16'h3c9d;
	ans_a = 16'h53d0;
	#20
	A = 16'h3855;
	B = 16'hbded;
	ans_a = 16'h53b6;
	#20
	A = 16'h3744;
	B = 16'hbb2d;
	ans_a = 16'h53a9;
	#20
	A = 16'hbcb4;
	B = 16'h3dea;
	ans_a = 16'h5371;
	#20
	A = 16'h39db;
	B = 16'h33c0;
	ans_a = 16'h5377;
	#20
	A = 16'h3af8;
	B = 16'h3fb2;
	ans_a = 16'h53ad;
	#20
	A = 16'h357c;
	B = 16'hbf12;
	ans_a = 16'h539a;
	#20
	A = 16'hbfb8;
	B = 16'h2264;
	ans_a = 16'h5399;
	#20
	A = 16'hbe53;
	B = 16'ha504;
	ans_a = 16'h539a;
	#20
	A = 16'hbb85;
	B = 16'h3e78;
	ans_a = 16'h5369;
	#20
	A = 16'h3a8c;
	B = 16'hbde8;
	ans_a = 16'h5342;
	#20
	A = 16'hb7c1;
	B = 16'h3b39;
	ans_a = 16'h5334;
	#20
	A = 16'h37d0;
	B = 16'h38e5;
	ans_a = 16'h533e;
	#20
	A = 16'h3d7d;
	B = 16'hbeb2;
	ans_a = 16'h52f4;
	#20
	A = 16'h3b8a;
	B = 16'hbfd4;
	ans_a = 16'h52b9;
	#20
	A = 16'h36ce;
	B = 16'h3d2b;
	ans_a = 16'h52cb;
	#20
	A = 16'hb76a;
	B = 16'h2df1;
	ans_a = 16'h52ca;
	#20
	A = 16'hb7ec;
	B = 16'h3f46;
	ans_a = 16'h52ad;
	#20
	A = 16'h367a;
	B = 16'h3df4;
	ans_a = 16'h52c0;
	#20
	A = 16'h3907;
	B = 16'hb955;
	ans_a = 16'h52b3;
	#20
	A = 16'hbcab;
	B = 16'hbf06;
	ans_a = 16'h52f5;
	#20
	A = 16'hbf71;
	B = 16'h3f2e;
	ans_a = 16'h528a;
	#20
	A = 16'h338f;
	B = 16'h3a0d;
	ans_a = 16'h5290;
	#20
	A = 16'hbf18;
	B = 16'h3c8c;
	ans_a = 16'h5250;
	#20
	A = 16'hb2a6;
	B = 16'h3736;
	ans_a = 16'h524d;
	#20
	A = 16'h3a0e;
	B = 16'h3bdb;
	ans_a = 16'h5265;
	#20
	A = 16'h2ce7;
	B = 16'hbdf0;
	ans_a = 16'h5261;
	#20
	A = 16'h30e7;
	B = 16'hbf02;
	ans_a = 16'h5258;
	#20
	A = 16'h3ba1;
	B = 16'h3dca;
	ans_a = 16'h5284;
	#20
	A = 16'hb8d7;
	B = 16'hb814;
	ans_a = 16'h528e;
	#20
	A = 16'h3d26;
	B = 16'h3d79;
	ans_a = 16'h52c6;
	#20
	A = 16'hbdab;
	B = 16'h3d56;
	ans_a = 16'h528a;
	#20
	A = 16'h3f8e;
	B = 16'hb90a;
	ans_a = 16'h5264;
	#20
	A = 16'h3a34;
	B = 16'hbeb9;
	ans_a = 16'h523a;
	#20
	A = 16'hb995;
	B = 16'hb99b;
	ans_a = 16'h524a;
	#20
	A = 16'hbd5b;
	B = 16'h3edd;
	ans_a = 16'h5200;
	#20
	A = 16'hb267;
	B = 16'hb136;
	ans_a = 16'h5201;
	#20
	A = 16'hbc37;
	B = 16'h3d1b;
	ans_a = 16'h51d6;
	#20
	A = 16'h3ae7;
	B = 16'hb91e;
	ans_a = 16'h51c4;
	#20
	A = 16'h3ed7;
	B = 16'hb967;
	ans_a = 16'h519f;
	#20
	A = 16'h3b18;
	B = 16'h3868;
	ans_a = 16'h51af;
	#20
	A = 16'h3eca;
	B = 16'hbaa7;
	ans_a = 16'h5182;
	#20
	A = 16'h3c20;
	B = 16'h3ca7;
	ans_a = 16'h51a8;
	#20
	A = 16'h3a85;
	B = 16'h39af;
	ans_a = 16'h51bb;
	#20
	A = 16'hbd17;
	B = 16'h3e96;
	ans_a = 16'h5178;
	#20
	A = 16'hbced;
	B = 16'hb912;
	ans_a = 16'h5191;
	#20
	A = 16'hbfbb;
	B = 16'h3c7a;
	ans_a = 16'h514c;
	#20
	A = 16'h3c6c;
	B = 16'hbfe7;
	ans_a = 16'h5106;
	#20
	A = 16'hbe99;
	B = 16'hb6e4;
	ans_a = 16'h511d;
	#20
	A = 16'h3cc1;
	B = 16'hbec6;
	ans_a = 16'h50dd;
	#20
	A = 16'hb9f0;
	B = 16'h38d9;
	ans_a = 16'h50cf;
	#20
	A = 16'hbdcf;
	B = 16'hbf9e;
	ans_a = 16'h5128;
	#20
	A = 16'h3fd0;
	B = 16'h3b91;
	ans_a = 16'h5163;
	#20
	A = 16'hbda1;
	B = 16'hb89b;
	ans_a = 16'h517d;
	#20
	A = 16'h302d;
	B = 16'hbac7;
	ans_a = 16'h5179;
	#20
	A = 16'h3e2b;
	B = 16'hbd2f;
	ans_a = 16'h5139;
	#20
	A = 16'hb82c;
	B = 16'hae2a;
	ans_a = 16'h513b;
	#20
	A = 16'hbf27;
	B = 16'hbfdf;
	ans_a = 16'h51ac;
	#20
	A = 16'h3dca;
	B = 16'h366c;
	ans_a = 16'h51bf;
	#20
	A = 16'h3ebc;
	B = 16'hbfc1;
	ans_a = 16'h5157;
	#20
	A = 16'h2c15;
	B = 16'h3810;
	ans_a = 16'h5158;
	#20
	A = 16'hb8a0;
	B = 16'hbd5a;
	ans_a = 16'h5171;
	#20
	A = 16'hb9e9;
	B = 16'hbbbb;
	ans_a = 16'h5188;
	#20
	A = 16'hb938;
	B = 16'h2c52;
	ans_a = 16'h5187;
	#20
	A = 16'h3f42;
	B = 16'hb2b6;
	ans_a = 16'h517b;
	#20
	A = 16'hbbe9;
	B = 16'h3cb1;
	ans_a = 16'h5156;
	#20
	A = 16'hbea3;
	B = 16'h3eae;
	ans_a = 16'h50fd;
	#20
	A = 16'ha655;
	B = 16'hbdd7;
	ans_a = 16'h50fe;
	#20
	A = 16'h39a2;
	B = 16'hbb6f;
	ans_a = 16'h50e9;
	#20
	A = 16'hbd93;
	B = 16'hb662;
	ans_a = 16'h50fb;
	#20
	A = 16'hbde8;
	B = 16'hb8a1;
	ans_a = 16'h5116;
	#20
	A = 16'h3d02;
	B = 16'h3f1d;
	ans_a = 16'h515d;
	#20
	A = 16'haea0;
	B = 16'hbd8c;
	ans_a = 16'h5162;
	#20
	A = 16'h3e36;
	B = 16'h3677;
	ans_a = 16'h5176;
	#20
	A = 16'hbf3c;
	B = 16'hbc27;
	ans_a = 16'h51b2;
	#20
	A = 16'hbe69;
	B = 16'hb53f;
	ans_a = 16'h51c3;
	#20
	A = 16'h3da1;
	B = 16'hbdb2;
	ans_a = 16'h5183;
	#20
	A = 16'hbec4;
	B = 16'h3f8a;
	ans_a = 16'h511d;
	#20
	A = 16'hbcd9;
	B = 16'hafc3;
	ans_a = 16'h5122;
	#20
	A = 16'hbf78;
	B = 16'h3856;
	ans_a = 16'h5102;
	#20
	A = 16'hbd8b;
	B = 16'h3d99;
	ans_a = 16'h50c4;
	#20
	A = 16'h3f03;
	B = 16'h3e17;
	ans_a = 16'h5119;
	#20
	A = 16'hbdf4;
	B = 16'h35a8;
	ans_a = 16'h5108;
	#20
	A = 16'hbf2f;
	B = 16'hb717;
	ans_a = 16'h5121;
	#20
	A = 16'hab25;
	B = 16'h3ddc;
	ans_a = 16'h511e;
	#20
	A = 16'h3c1a;
	B = 16'hbccc;
	ans_a = 16'h50f7;
	#20
	A = 16'h3a20;
	B = 16'h342b;
	ans_a = 16'h50fd;
	#20
	A = 16'hbc3e;
	B = 16'h2b46;
	ans_a = 16'h50fb;
	#20
	A = 16'h3f14;
	B = 16'hbe00;
	ans_a = 16'h50a6;
	#20
	A = 16'hbc82;
	B = 16'h2445;
	ans_a = 16'h50a5;
	#20
	A = 16'hb691;
	B = 16'hb1b3;
	ans_a = 16'h50a7;
	#20
	A = 16'hb463;
	B = 16'h3e33;
	ans_a = 16'h5099;
	#20
	A = 16'h3baf;
	B = 16'h3e62;
	ans_a = 16'h50ca;
	#20
	A = 16'hb90c;
	B = 16'h3984;
	ans_a = 16'h50bc;
	#20
	A = 16'hbcd8;
	B = 16'hbc03;
	ans_a = 16'h50e3;
	#20
	A = 16'h3402;
	B = 16'h3508;
	ans_a = 16'h50e6;
	#20
	A = 16'hb5c4;
	B = 16'h3fd7;
	ans_a = 16'h50cf;
	#20
	A = 16'hbe00;
	B = 16'hbed8;
	ans_a = 16'h5121;
	#20
	A = 16'h3f4e;
	B = 16'hbe58;
	ans_a = 16'h50c4;
	#20
	A = 16'h3c9a;
	B = 16'h3c62;
	ans_a = 16'h50ec;
	#20
	A = 16'hbeaf;
	B = 16'h3888;
	ans_a = 16'h50ce;
	#20
	A = 16'h3a90;
	B = 16'hbbb7;
	ans_a = 16'h50b5;
	#20
	A = 16'hb8df;
	B = 16'h3f30;
	ans_a = 16'h5092;
	#20
	A = 16'h3b90;
	B = 16'h3d0c;
	ans_a = 16'h50b8;
	#20
	A = 16'hbcf0;
	B = 16'hb2af;
	ans_a = 16'h50c0;
	#20
	A = 16'hb666;
	B = 16'hb711;
	ans_a = 16'h50c6;
	#20
	A = 16'hbccb;
	B = 16'hbd8a;
	ans_a = 16'h50fb;
	#20
	A = 16'h3f18;
	B = 16'h36b2;
	ans_a = 16'h5113;
	#20
	A = 16'hb90e;
	B = 16'h3c31;
	ans_a = 16'h50fe;
	#20
	A = 16'hbe86;
	B = 16'hb75a;
	ans_a = 16'h5116;
	#20
	A = 16'h3e5c;
	B = 16'hbe07;
	ans_a = 16'h50c9;
	#20
	A = 16'h3405;
	B = 16'hbf3b;
	ans_a = 16'h50ba;
	#20
	A = 16'hbd79;
	B = 16'hb6bc;
	ans_a = 16'h50cc;
	#20
	A = 16'hbf18;
	B = 16'hbef9;
	ans_a = 16'h512f;
	#20
	A = 16'hbf7f;
	B = 16'hbaa2;
	ans_a = 16'h5161;
	#20
	A = 16'hbf44;
	B = 16'h3d37;
	ans_a = 16'h5115;
	#20
	A = 16'h39c1;
	B = 16'h3aed;
	ans_a = 16'h5129;
	#20
	A = 16'hbc75;
	B = 16'haa1d;
	ans_a = 16'h512b;
	#20
	A = 16'h3b33;
	B = 16'h2a17;
	ans_a = 16'h512c;
	#20
	A = 16'h3e92;
	B = 16'h3f58;
	ans_a = 16'h518c;
	#20
	A = 16'h3486;
	B = 16'h3ee3;
	ans_a = 16'h519c;
	#20
	A = 16'hadeb;
	B = 16'hbf21;
	ans_a = 16'h51a1;
	#20
	A = 16'h3821;
	B = 16'h2e86;
	ans_a = 16'h51a3;
	#20
	A = 16'h3c06;
	B = 16'h3deb;
	ans_a = 16'h51d3;
	#20
	A = 16'h3bec;
	B = 16'h38d8;
	ans_a = 16'h51e6;
	#20
	A = 16'h3f7a;
	B = 16'h38be;
	ans_a = 16'h5209;
	#20
	A = 16'h35c0;
	B = 16'hbd1e;
	ans_a = 16'h51fa;
	#20
	A = 16'h3ab0;
	B = 16'hbd7b;
	ans_a = 16'h51d5;
	#20
	A = 16'h3640;
	B = 16'h3e9a;
	ans_a = 16'h51ea;
	#20
	A = 16'h39c8;
	B = 16'hb55c;
	ans_a = 16'h51e2;
	#20
	A = 16'hbf90;
	B = 16'hbcc2;
	ans_a = 16'h522a;
	#20
	A = 16'h3bca;
	B = 16'hb081;
	ans_a = 16'h5226;
	#20
	A = 16'h349d;
	B = 16'h3aba;
	ans_a = 16'h522e;
	#20
	A = 16'h3580;
	B = 16'h3e1a;
	ans_a = 16'h523f;
	#20
	A = 16'hbc61;
	B = 16'h38f0;
	ans_a = 16'h5229;
	#20
	A = 16'h1750;
	B = 16'hbc1a;
	ans_a = 16'h5229;
	#20
	A = 16'hbcdc;
	B = 16'hb881;
	ans_a = 16'h523f;
	#20
	A = 16'h3fe4;
	B = 16'h2dab;
	ans_a = 16'h5245;
	#20
	A = 16'h37fa;
	B = 16'h3c9b;
	ans_a = 16'h5257;
	#20
	A = 16'h3a92;
	B = 16'h3999;
	ans_a = 16'h5269;
	#20
	A = 16'hbaf2;
	B = 16'hbd6c;
	ans_a = 16'h528f;
	#20
	A = 16'hbe94;
	B = 16'hbbc3;
	ans_a = 16'h52c2;
	#20
	A = 16'hbf57;
	B = 16'hbfcb;
	ans_a = 16'h5334;
	#20
	A = 16'hbae1;
	B = 16'hbfae;
	ans_a = 16'h5369;
	#20
	A = 16'hbf7e;
	B = 16'hbcd8;
	ans_a = 16'h53b2;
	#20
	A = 16'h3b08;
	B = 16'h3c71;
	ans_a = 16'h53d1;
	#20
	A = 16'hb417;
	B = 16'hb7c4;
	ans_a = 16'h53d5;
	#20
	A = 16'hbdbe;
	B = 16'h3b4d;
	ans_a = 16'h53ab;
	#20
	A = 16'h3740;
	B = 16'hbca0;
	ans_a = 16'h539a;
	#20
	A = 16'h3c4f;
	B = 16'hbadb;
	ans_a = 16'h537c;
	#20
	A = 16'hbe06;
	B = 16'h3f76;
	ans_a = 16'h5322;
	#20
	A = 16'hbc4d;
	B = 16'hbb54;
	ans_a = 16'h5342;
	#20
	A = 16'h3c37;
	B = 16'hbe01;
	ans_a = 16'h530f;
	#20
	A = 16'hb3e4;
	B = 16'h3e34;
	ans_a = 16'h5303;
	#20
	A = 16'h34ad;
	B = 16'h3b8b;
	ans_a = 16'h530c;
	#20
	A = 16'hb6d0;
	B = 16'h398b;
	ans_a = 16'h5303;
	#20
	A = 16'hbfe7;
	B = 16'h2e9c;
	ans_a = 16'h52fc;
	#20
	A = 16'h3f0e;
	B = 16'hbdd6;
	ans_a = 16'h52aa;
	#20
	A = 16'h35d9;
	B = 16'hbd2c;
	ans_a = 16'h529b;
	#20
	A = 16'h3e81;
	B = 16'h3448;
	ans_a = 16'h52a9;
	#20
	A = 16'hb84e;
	B = 16'hb412;
	ans_a = 16'h52ad;
	#20
	A = 16'h3cb8;
	B = 16'hbeca;
	ans_a = 16'h526d;
	#20
	A = 16'h3e6c;
	B = 16'h3a35;
	ans_a = 16'h5295;
	#20
	A = 16'h38a5;
	B = 16'h3f3c;
	ans_a = 16'h52b7;
	#20
	A = 16'h3f45;
	B = 16'hb80e;
	ans_a = 16'h529a;
	#20
	A = 16'hbba8;
	B = 16'h3f5b;
	ans_a = 16'h5262;
	#20
	A = 16'hb722;
	B = 16'hbce3;
	ans_a = 16'h5273;
	#20
	A = 16'h3597;
	B = 16'h3beb;
	ans_a = 16'h527e;
	#20
	A = 16'hbdfb;
	B = 16'h3d4e;
	ans_a = 16'h523f;
	#20
	A = 16'hbd4b;
	B = 16'h32d0;
	ans_a = 16'h5236;
	#20
	A = 16'h35cb;
	B = 16'hbd69;
	ans_a = 16'h5226;
	#20
	A = 16'hb9a6;
	B = 16'h3822;
	ans_a = 16'h521a;
	#20
	A = 16'h3d66;
	B = 16'h3468;
	ans_a = 16'h5226;
	#20
	A = 16'h3ce2;
	B = 16'h3ea2;
	ans_a = 16'h5267;
	#20
	A = 16'hb6fe;
	B = 16'hbf58;
	ans_a = 16'h5281;
	#20
	A = 16'hbe0a;
	B = 16'hb88f;
	ans_a = 16'h529d;
	#20
	A = 16'hbd0a;
	B = 16'h3b67;
	ans_a = 16'h5278;
	#20
	A = 16'hbd0c;
	B = 16'h3c33;
	ans_a = 16'h524e;
	#20
	A = 16'hb111;
	B = 16'hbc86;
	ans_a = 16'h5254;
	#20
	A = 16'hbe5c;
	B = 16'hb450;
	ans_a = 16'h5262;
	#20
	A = 16'hbc4e;
	B = 16'hb563;
	ans_a = 16'h526e;
	#20
	A = 16'h1fc6;
	B = 16'h2bc8;
	ans_a = 16'h526e;
	#20
	A = 16'hbe5a;
	B = 16'hb51c;
	ans_a = 16'h527e;
	#20
	A = 16'h3d9d;
	B = 16'h2574;
	ans_a = 16'h527f;
	#20
	A = 16'h3d5e;
	B = 16'h3c30;
	ans_a = 16'h52ac;
	#20
	A = 16'h3e66;
	B = 16'hbeac;
	ans_a = 16'h5257;
	#20
	A = 16'hb945;
	B = 16'hbd33;
	ans_a = 16'h5272;
	#20
	A = 16'h3525;
	B = 16'h3b58;
	ans_a = 16'h527b;
	#20
	A = 16'h39a8;
	B = 16'hb0c4;
	ans_a = 16'h5278;
	#20
	A = 16'hbf19;
	B = 16'h2cfa;
	ans_a = 16'h5274;
	#20
	A = 16'hb9a0;
	B = 16'h3a05;
	ans_a = 16'h5263;
	#20
	A = 16'hbc58;
	B = 16'h380c;
	ans_a = 16'h5251;
	#20
	A = 16'hbd27;
	B = 16'hbd34;
	ans_a = 16'h5287;
	#20
	A = 16'hbe56;
	B = 16'hbc06;
	ans_a = 16'h52ba;
	#20
	A = 16'hbcaf;
	B = 16'hb710;
	ans_a = 16'h52cb;
	#20
	A = 16'hb92b;
	B = 16'h3f92;
	ans_a = 16'h52a4;
	#20
	A = 16'hbc2e;
	B = 16'h3b6e;
	ans_a = 16'h5285;
	#20
	A = 16'hbfba;
	B = 16'hb5c3;
	ans_a = 16'h529b;
	#20
	A = 16'hbf1e;
	B = 16'hbc20;
	ans_a = 16'h52d6;
	#20
	A = 16'hb9e8;
	B = 16'h3e43;
	ans_a = 16'h52b1;
	#20
	A = 16'h3da6;
	B = 16'h3a27;
	ans_a = 16'h52d4;
	#20
	A = 16'hacf5;
	B = 16'h3af0;
	ans_a = 16'h52d2;
	#20
	A = 16'h3fe9;
	B = 16'hbc3f;
	ans_a = 16'h528f;
	#20
	A = 16'hbecd;
	B = 16'h3816;
	ans_a = 16'h5273;
	#20
	A = 16'h3fd0;
	B = 16'h3e83;
	ans_a = 16'h52d9;
	#20
	A = 16'hb016;
	B = 16'hb962;
	ans_a = 16'h52dc;
	#20
	A = 16'h3e16;
	B = 16'h3029;
	ans_a = 16'h52e2;
	#20
	A = 16'h1319;
	B = 16'hbd66;
	ans_a = 16'h52e2;
	#20
	A = 16'h3e45;
	B = 16'h38fc;
	ans_a = 16'h5301;
	#20
	A = 16'h36b4;
	B = 16'hbed5;
	ans_a = 16'h52ea;
	#20
	A = 16'h3d65;
	B = 16'haf0e;
	ans_a = 16'h52e5;
	#20
	A = 16'hb9c7;
	B = 16'h3d5b;
	ans_a = 16'h52c6;
	#20
	A = 16'h3e91;
	B = 16'h3cc6;
	ans_a = 16'h5305;
	#20
	A = 16'ha6c1;
	B = 16'ha143;
	ans_a = 16'h5305;
	#20
	A = 16'hbf1e;
	B = 16'h3dbc;
	ans_a = 16'h52b3;
	#20
	A = 16'h3df2;
	B = 16'hbc11;
	ans_a = 16'h5283;
	#20
	A = 16'h3e7a;
	B = 16'ha7c1;
	ans_a = 16'h5281;
	#20
	A = 16'hbf92;
	B = 16'hbfc6;
	ans_a = 16'h52f7;
	#20
	A = 16'h36c8;
	B = 16'hbea6;
	ans_a = 16'h52e0;
	#20
	A = 16'hbfd3;
	B = 16'hbfb7;
	ans_a = 16'h5359;
	#20
	A = 16'hba70;
	B = 16'hb96e;
	ans_a = 16'h536a;
	#20
	A = 16'h312f;
	B = 16'h3b2b;
	ans_a = 16'h536f;
	#20
	A = 16'h32a3;
	B = 16'hbef2;
	ans_a = 16'h5363;
	#20
	A = 16'hb568;
	B = 16'hbaa5;
	ans_a = 16'h536c;
	#20
	A = 16'h3cb4;
	B = 16'h30db;
	ans_a = 16'h5372;
	#20
	A = 16'hb835;
	B = 16'h3b3f;
	ans_a = 16'h5363;
	#20
	A = 16'h3def;
	B = 16'h3ef8;
	ans_a = 16'h53b6;
	#20
	A = 16'hbc6f;
	B = 16'hbb28;
	ans_a = 16'h53d6;
	#20
	A = 16'hb64b;
	B = 16'h359f;
	ans_a = 16'h53d2;
	#20
	A = 16'h3b30;
	B = 16'h34cd;
	ans_a = 16'h53db;
	#20
	A = 16'hbe92;
	B = 16'h3a4b;
	ans_a = 16'h53b2;
	#20
	A = 16'hbc27;
	B = 16'hb528;
	ans_a = 16'h53bd;
	#20
	A = 16'hb278;
	B = 16'hbb60;
	ans_a = 16'h53c3;
	#20
	A = 16'h3716;
	B = 16'hbe7e;
	ans_a = 16'h53ac;
	#20
	A = 16'hbff8;
	B = 16'h3ebc;
	ans_a = 16'h5341;
	#20
	A = 16'h3b88;
	B = 16'hb856;
	ans_a = 16'h5331;
	#20
	A = 16'h39ee;
	B = 16'h3e77;
	ans_a = 16'h5357;
	#20
	A = 16'h3f8d;
	B = 16'h3d89;
	ans_a = 16'h53ab;
	#20
	A = 16'hbb53;
	B = 16'hb8e6;
	ans_a = 16'h53bd;
	#20
	A = 16'hb6ad;
	B = 16'hbd12;
	ans_a = 16'h53ce;
	#20
	A = 16'h3fa1;
	B = 16'hbde3;
	ans_a = 16'h5374;
	#20
	A = 16'hbd41;
	B = 16'ha927;
	ans_a = 16'h5376;
	#20
	A = 16'h3b7b;
	B = 16'h3ded;
	ans_a = 16'h53a2;
	#20
	A = 16'h3896;
	B = 16'hbfa7;
	ans_a = 16'h537f;
	#20
	A = 16'hb416;
	B = 16'h3e0c;
	ans_a = 16'h5373;
	#20
	A = 16'hbea7;
	B = 16'hb71f;
	ans_a = 16'h538b;
	#20
	A = 16'h39c9;
	B = 16'h3eba;
	ans_a = 16'h53b2;
	#20
	A = 16'hbc13;
	B = 16'h3d65;
	ans_a = 16'h5386;
	#20
	A = 16'h3fc6;
	B = 16'hbe35;
	ans_a = 16'h5326;
	#20
	A = 16'h3e72;
	B = 16'h3900;
	ans_a = 16'h5346;
	#20
	A = 16'h3d8b;
	B = 16'hb3b3;
	ans_a = 16'h533b;
	#20
	A = 16'h2f78;
	B = 16'hb944;
	ans_a = 16'h5339;
	#20
	A = 16'hbc2b;
	B = 16'h34b2;
	ans_a = 16'h532f;
	#20
	A = 16'h3f15;
	B = 16'h3a1f;
	ans_a = 16'h535a;
	#20
	A = 16'h3fc9;
	B = 16'hbf63;
	ans_a = 16'h52e7;
	#20
	A = 16'h3795;
	B = 16'habc7;
	ans_a = 16'h52e6;
	#20
	A = 16'hbe58;
	B = 16'h368c;
	ans_a = 16'h52d1;
	#20
	A = 16'hbd6f;
	B = 16'hb893;
	ans_a = 16'h52ea;
	#20
	A = 16'h3c5c;
	B = 16'hba86;
	ans_a = 16'h52ce;
	#20
	A = 16'hb608;
	B = 16'h3df4;
	ans_a = 16'h52bc;
	#20
	A = 16'h31ab;
	B = 16'hb85e;
	ans_a = 16'h52b9;
	#20
	A = 16'h3db1;
	B = 16'hbef5;
	ans_a = 16'h526a;
	#20
	A = 16'hbce4;
	B = 16'h369c;
	ans_a = 16'h525a;
	#20
	A = 16'hbe37;
	B = 16'hb507;
	ans_a = 16'h526a;
	#20
	A = 16'h3438;
	B = 16'hbf83;
	ans_a = 16'h525a;
	#20
	A = 16'hbe45;
	B = 16'h36f3;
	ans_a = 16'h5244;
	#20
	A = 16'h3a76;
	B = 16'h3822;
	ans_a = 16'h5251;
	#20
	A = 16'h3930;
	B = 16'hb59a;
	ans_a = 16'h524a;
	#20
	A = 16'hbfda;
	B = 16'hba7c;
	ans_a = 16'h527d;
	#20
	A = 16'h38b6;
	B = 16'hb76f;
	ans_a = 16'h5274;
	#20
	A = 16'hb805;
	B = 16'h3cd4;
	ans_a = 16'h5261;
	#20
	A = 16'hbef8;
	B = 16'h385c;
	ans_a = 16'h5243;
	#20
	A = 16'hb42b;
	B = 16'hb7d0;
	ans_a = 16'h5247;
	#20
	A = 16'had43;
	B = 16'h366b;
	ans_a = 16'h5246;
	#20
	A = 16'h3f01;
	B = 16'h3235;
	ans_a = 16'h5251;
	#20
	A = 16'hb814;
	B = 16'hbad6;
	ans_a = 16'h525f;
	#20
	A = 16'hbe45;
	B = 16'h3e55;
	ans_a = 16'h5210;
	#20
	A = 16'h3d98;
	B = 16'h3c7d;
	ans_a = 16'h5242;
	#20
	A = 16'hb88d;
	B = 16'hadee;
	ans_a = 16'h5244;
	#20
	A = 16'hae87;
	B = 16'h3fdd;
	ans_a = 16'h523e;
	#20
	A = 16'hbebe;
	B = 16'hb992;
	ans_a = 16'h5264;
	#20
	A = 16'hb320;
	B = 16'hbd61;
	ans_a = 16'h526e;
	#20
	A = 16'hbdf6;
	B = 16'hb647;
	ans_a = 16'h5281;
	#20
	A = 16'h3dff;
	B = 16'h3c86;
	ans_a = 16'h52b7;
	#20
	A = 16'hbd34;
	B = 16'hbe53;
	ans_a = 16'h52f9;
	#20
	A = 16'hbf3e;
	B = 16'hbd23;
	ans_a = 16'h5343;
	#20
	A = 16'hbf3e;
	B = 16'ha12e;
	ans_a = 16'h5344;
	#20
	A = 16'h3e3e;
	B = 16'hb5d1;
	ans_a = 16'h5332;
	#20
	A = 16'hb49e;
	B = 16'hb47e;
	ans_a = 16'h5335;
	#20
	A = 16'h3d42;
	B = 16'hbc06;
	ans_a = 16'h530b;
	#20
	A = 16'hbd80;
	B = 16'h3e59;
	ans_a = 16'h52c5;
	#20
	A = 16'hbd54;
	B = 16'hbd4c;
	ans_a = 16'h52fd;
	#20
	A = 16'h3fbe;
	B = 16'hba30;
	ans_a = 16'h52cd;
	#20
	A = 16'h3f50;
	B = 16'hb5d0;
	ans_a = 16'h52b8;
	#20
	A = 16'h3ce2;
	B = 16'h3bde;
	ans_a = 16'h52de;
	#20
	A = 16'hbd97;
	B = 16'h3d0c;
	ans_a = 16'h52a6;
	#20
	A = 16'hb6b5;
	B = 16'h2474;
	ans_a = 16'h52a6;
	#20
	A = 16'hbc6e;
	B = 16'h3860;
	ans_a = 16'h5293;
	#20
	A = 16'hbd5d;
	B = 16'h384d;
	ans_a = 16'h527c;
	#20
	A = 16'hbd1e;
	B = 16'h3902;
	ans_a = 16'h5262;
	#20
	A = 16'h3c0a;
	B = 16'h3c06;
	ans_a = 16'h5282;
	#20
	A = 16'hb630;
	B = 16'hbcc6;
	ans_a = 16'h5291;
	#20
	A = 16'hbea7;
	B = 16'hbd8b;
	ans_a = 16'h52db;
	#20
	A = 16'h3e2c;
	B = 16'hbed0;
	ans_a = 16'h5287;
	#20
	A = 16'h3cad;
	B = 16'hb579;
	ans_a = 16'h527a;
	#20
	A = 16'h3fb3;
	B = 16'hb8e1;
	ans_a = 16'h5254;
	#20
	A = 16'h3452;
	B = 16'hba8f;
	ans_a = 16'h524d;
	#20
	A = 16'had82;
	B = 16'hb9a1;
	ans_a = 16'h524f;
	#20
	A = 16'h3c3d;
	B = 16'hbdd9;
	ans_a = 16'h521d;
	#20
	A = 16'h3eca;
	B = 16'hab51;
	ans_a = 16'h521a;
	#20
	A = 16'hb476;
	B = 16'hbd79;
	ans_a = 16'h5226;
	#20
	A = 16'h3ca0;
	B = 16'h3aa2;
	ans_a = 16'h5245;
	#20
	A = 16'h393c;
	B = 16'h3b25;
	ans_a = 16'h5258;
	#20
	A = 16'hb83b;
	B = 16'h3859;
	ans_a = 16'h524f;
	#20
	A = 16'h3fb3;
	B = 16'hbc5d;
	ans_a = 16'h520c;
	#20
	A = 16'hbd88;
	B = 16'h381b;
	ans_a = 16'h51f5;
	#20
	A = 16'hb97a;
	B = 16'hb193;
	ans_a = 16'h51f9;
	#20
	A = 16'h3621;
	B = 16'hb454;
	ans_a = 16'h51f6;
	#20
	A = 16'h3882;
	B = 16'hb8cc;
	ans_a = 16'h51eb;
	#20
	A = 16'hbdef;
	B = 16'h3da6;
	ans_a = 16'h51a8;
	#20
	A = 16'hbbfd;
	B = 16'hbd7b;
	ans_a = 16'h51d4;
	#20
	A = 16'hae57;
	B = 16'hbfd8;
	ans_a = 16'h51da;
	#20
	A = 16'h3712;
	B = 16'hbed8;
	ans_a = 16'h51c2;
	#20
	A = 16'h38c4;
	B = 16'h3d58;
	ans_a = 16'h51db;
	#20
	A = 16'hb386;
	B = 16'hbfdf;
	ans_a = 16'h51ea;
	#20
	A = 16'hbdb5;
	B = 16'hb00a;
	ans_a = 16'h51f0;
	#20
	A = 16'h3c44;
	B = 16'h3237;
	ans_a = 16'h51f7;
	#20
	A = 16'hb16d;
	B = 16'hbc2d;
	ans_a = 16'h51fd;
	#20
	A = 16'hbd9d;
	B = 16'h3f43;
	ans_a = 16'h51ac;
	#20
	A = 16'h3f78;
	B = 16'h382f;
	ans_a = 16'h51cb;
	#20
	A = 16'hbec7;
	B = 16'h3540;
	ans_a = 16'h51b9;
	#20
	A = 16'hb5bb;
	B = 16'h12b6;
	ans_a = 16'h51b9;
	#20
	A = 16'hbf21;
	B = 16'h3d1c;
	ans_a = 16'h5170;
	#20
	A = 16'hb1bf;
	B = 16'hbd01;
	ans_a = 16'h5177;
	#20
	A = 16'hb303;
	B = 16'h3d20;
	ans_a = 16'h516e;
	#20
	A = 16'h3854;
	B = 16'hb20c;
	ans_a = 16'h516b;
	#20
	A = 16'hb863;
	B = 16'hb8ab;
	ans_a = 16'h5175;
	#20
	A = 16'h3f53;
	B = 16'h3972;
	ans_a = 16'h519d;
	#20
	A = 16'h3784;
	B = 16'hb5e2;
	ans_a = 16'h5197;
	#20
	A = 16'h327c;
	B = 16'hbaf9;
	ans_a = 16'h5191;
	#20
	A = 16'h3605;
	B = 16'h2d73;
	ans_a = 16'h5192;
	#20
	A = 16'h3c81;
	B = 16'hbda5;
	ans_a = 16'h515f;
	#20
	A = 16'hbc51;
	B = 16'hb9e1;
	ans_a = 16'h5178;
	#20
	A = 16'hbd90;
	B = 16'h3c7b;
	ans_a = 16'h5146;
	#20
	A = 16'h3d2b;
	B = 16'h3c31;
	ans_a = 16'h5171;
	#20
	A = 16'h3dba;
	B = 16'hbdfa;
	ans_a = 16'h512d;
	#20
	A = 16'h36c6;
	B = 16'hbfd9;
	ans_a = 16'h5112;
	#20
	A = 16'hbd88;
	B = 16'haabe;
	ans_a = 16'h5114;
	#20
	A = 16'h3c3b;
	B = 16'hbea7;
	ans_a = 16'h50dc;
	#20
	A = 16'hb44f;
	B = 16'h3fdc;
	ans_a = 16'h50cb;
	#20
	A = 16'hbd18;
	B = 16'hbf1e;
	ans_a = 16'h5114;
	#20
	A = 16'hbe5c;
	B = 16'h3c7e;
	ans_a = 16'h50db;
	#20
	A = 16'hbe09;
	B = 16'h3575;
	ans_a = 16'h50cb;
	#20
	A = 16'h3db1;
	B = 16'hba13;
	ans_a = 16'h50a8;
	#20
	A = 16'h3d17;
	B = 16'h176a;
	ans_a = 16'h50a8;
	#20
	A = 16'h3c83;
	B = 16'h3dff;
	ans_a = 16'h50de;
	#20
	A = 16'h39d2;
	B = 16'h329d;
	ans_a = 16'h50e3;
	#20
	A = 16'h2927;
	B = 16'h3cc7;
	ans_a = 16'h50e5;
	#20
	A = 16'hb92a;
	B = 16'h3013;
	ans_a = 16'h50e2;
	#20
	A = 16'hb139;
	B = 16'h3214;
	ans_a = 16'h50e1;
	#20
	A = 16'h393e;
	B = 16'h37e9;
	ans_a = 16'h50eb;
	#20
	A = 16'h3e09;
	B = 16'h3d1d;
	ans_a = 16'h5129;
	#20
	A = 16'hbf91;
	B = 16'h3f12;
	ans_a = 16'h50be;
	#20
	A = 16'h2efb;
	B = 16'hbd35;
	ans_a = 16'h50b9;
	#20
	A = 16'haf83;
	B = 16'h3f88;
	ans_a = 16'h50b2;
	#20
	A = 16'hb943;
	B = 16'hb4ae;
	ans_a = 16'h50b8;
	#20
	A = 16'hbde4;
	B = 16'h3f11;
	ans_a = 16'h5065;
	#20
	A = 16'hbde5;
	B = 16'hb41f;
	ans_a = 16'h5071;
	#20
	A = 16'h388f;
	B = 16'hbe73;
	ans_a = 16'h5054;
	#20
	A = 16'hbd9d;
	B = 16'hbe73;
	ans_a = 16'h509c;
	#20
	A = 16'hb72b;
	B = 16'hbdcc;
	ans_a = 16'h50b1;
	#20
	A = 16'h3a06;
	B = 16'h3c67;
	ans_a = 16'h50cc;
	#20
	A = 16'hbd27;
	B = 16'hbc45;
	ans_a = 16'h50f8;
	#20
	A = 16'hb827;
	B = 16'ha734;
	ans_a = 16'h50f8;
	#20
	A = 16'hbbee;
	B = 16'h3e2c;
	ans_a = 16'h50c7;
	#20
	A = 16'hbb99;
	B = 16'hb880;
	ans_a = 16'h50d8;
	#20
	A = 16'h3964;
	B = 16'hbc82;
	ans_a = 16'h50c0;
	#20
	A = 16'h3c88;
	B = 16'h3e90;
	ans_a = 16'h50fb;
	#20
	A = 16'h3b43;
	B = 16'hbf59;
	ans_a = 16'h50c6;
	#20
	A = 16'h3421;
	B = 16'hb90a;
	ans_a = 16'h50c1;
	#20
	A = 16'h37e0;
	B = 16'hbac2;
	ans_a = 16'h50b4;
	#20
	A = 16'h3f6e;
	B = 16'hbfa1;
	ans_a = 16'h5043;
	#20
	A = 16'hb440;
	B = 16'h3548;
	ans_a = 16'h5040;
	#20
	A = 16'hbbae;
	B = 16'h37d0;
	ans_a = 16'h5031;
	#20
	A = 16'hbe91;
	B = 16'hae57;
	ans_a = 16'h5036;
	#20
	A = 16'h3d45;
	B = 16'hbdc5;
	ans_a = 16'h4ff2;
	#20
	A = 16'h2f3c;
	B = 16'hbaea;
	ans_a = 16'h4fec;
	#20
	A = 16'h3a92;
	B = 16'hbcc7;
	ans_a = 16'h4fad;
	#20
	A = 16'h3eaa;
	B = 16'h3991;
	ans_a = 16'h4ff7;
	#20
	A = 16'h314a;
	B = 16'h3a1f;
	ans_a = 16'h4fff;
	#20
	A = 16'h3a8f;
	B = 16'h3b34;
	ans_a = 16'h5017;
	#20
	A = 16'hbc2a;
	B = 16'hb7a1;
	ans_a = 16'h5027;
	#20
	A = 16'h3b8a;
	B = 16'hb405;
	ans_a = 16'h501f;
	#20
	A = 16'h3bc5;
	B = 16'hbd3b;
	ans_a = 16'h4fed;
	#20
	A = 16'hb4f5;
	B = 16'h3e41;
	ans_a = 16'h4fce;
	#20
	A = 16'h33f5;
	B = 16'hba37;
	ans_a = 16'h4fc2;
	#20
	A = 16'h3ed6;
	B = 16'hbdbd;
	ans_a = 16'h4f25;
	#20
	A = 16'hbb5c;
	B = 16'h3f96;
	ans_a = 16'h4eb5;
	#20
	A = 16'hbb77;
	B = 16'hbecd;
	ans_a = 16'h4f1b;
	#20
	A = 16'h3924;
	B = 16'h391a;
	ans_a = 16'h4f35;
	#20
	A = 16'hb9f6;
	B = 16'hbee3;
	ans_a = 16'h4f87;
	#20
	A = 16'h3a04;
	B = 16'h3fcd;
	ans_a = 16'h4fe5;
	#20
	A = 16'hb5b4;
	B = 16'h3db8;
	ans_a = 16'h4fc4;
	#20
	A = 16'h31ef;
	B = 16'h3572;
	ans_a = 16'h4fc8;
	#20
	A = 16'hbc13;
	B = 16'hbc42;
	ans_a = 16'h5007;
	#20
	A = 16'hbab7;
	B = 16'h3c40;
	ans_a = 16'h4fd5;
	#20
	A = 16'hbf81;
	B = 16'hbfbc;
	ans_a = 16'h505f;
	#20
	A = 16'h3f58;
	B = 16'hb893;
	ans_a = 16'h503d;
	#20
	A = 16'hacbe;
	B = 16'hbd13;
	ans_a = 16'h5040;
	#20
	A = 16'h3f4c;
	B = 16'h350f;
	ans_a = 16'h5052;
	#20
	A = 16'h3f8c;
	B = 16'hbd54;
	ans_a = 16'h5002;
	#20
	A = 16'h3a86;
	B = 16'hb8be;
	ans_a = 16'h4fe5;
	#20
	A = 16'h3d82;
	B = 16'hbe90;
	ans_a = 16'h4f54;
	#20
	A = 16'hbf8d;
	B = 16'h3a8f;
	ans_a = 16'h4ef1;
	#20
	A = 16'h3cfd;
	B = 16'hba34;
	ans_a = 16'h4eb3;
	#20
	A = 16'h3af1;
	B = 16'hb3a8;
	ans_a = 16'h4ea6;
	#20
	A = 16'h3f04;
	B = 16'hba20;
	ans_a = 16'h4e50;
	#20
	A = 16'hb241;
	B = 16'h361e;
	ans_a = 16'h4e4b;
	#20
	A = 16'h3e37;
	B = 16'hadbb;
	ans_a = 16'h4e42;
	#20
	A = 16'h33ad;
	B = 16'h3de4;
	ans_a = 16'h4e59;
	#20
	A = 16'h381a;
	B = 16'hbc3f;
	ans_a = 16'h4e36;
	#20
	A = 16'hb8e8;
	B = 16'hbfe8;
	ans_a = 16'h4e84;
	#20
	A = 16'had3d;
	B = 16'hb9ed;
	ans_a = 16'h4e88;
	#20
	A = 16'hbc29;
	B = 16'hb9b8;
	ans_a = 16'h4eb8;
	#20
	A = 16'hb46a;
	B = 16'hbd25;
	ans_a = 16'h4ecf;
	#20
	A = 16'h3035;
	B = 16'h2062;
	ans_a = 16'h4ecf;
	#20
	A = 16'h3517;
	B = 16'hbabb;
	ans_a = 16'h4ebe;
	#20
	A = 16'ha4ae;
	B = 16'h3f30;
	ans_a = 16'h4ebc;
	#20
	A = 16'hb44e;
	B = 16'hba2b;
	ans_a = 16'h4ec9;
	#20
	A = 16'h3faa;
	B = 16'h2f16;
	ans_a = 16'h4ed7;
	#20
	A = 16'hb8fe;
	B = 16'h38cd;
	ans_a = 16'h4ebf;
	#20
	A = 16'hbd09;
	B = 16'h3b9b;
	ans_a = 16'h4e72;
	#20
	A = 16'h34bb;
	B = 16'hb905;
	ans_a = 16'h4e66;
	#20
	A = 16'h3c40;
	B = 16'hbab2;
	ans_a = 16'h4e2d;
	#20
	A = 16'hb861;
	B = 16'h35c5;
	ans_a = 16'h4e20;
	#20
	A = 16'hbd5e;
	B = 16'h3dbe;
	ans_a = 16'h4da5;
	#20
	A = 16'hbf0e;
	B = 16'h314e;
	ans_a = 16'h4d92;
	#20
	A = 16'hbf98;
	B = 16'h3bfd;
	ans_a = 16'h4d19;
	#20
	A = 16'h3d38;
	B = 16'h37ae;
	ans_a = 16'h4d41;
	#20
	A = 16'h3287;
	B = 16'hbf8e;
	ans_a = 16'h4d28;
	#20
	A = 16'hb7bf;
	B = 16'h3e0f;
	ans_a = 16'h4cf9;
	#20
	A = 16'h3e41;
	B = 16'hbed9;
	ans_a = 16'h4c4e;
	#20
	A = 16'hbee0;
	B = 16'hb7a2;
	ans_a = 16'h4c82;
	#20
	A = 16'hbd16;
	B = 16'hbefb;
	ans_a = 16'h4d10;
	#20
	A = 16'hbd1a;
	B = 16'hbdb0;
	ans_a = 16'h4d84;
	#20
	A = 16'hbc03;
	B = 16'h2a79;
	ans_a = 16'h4d81;
	#20
	A = 16'h3d56;
	B = 16'hbe00;
	ans_a = 16'h4d01;
	#20
	A = 16'hb161;
	B = 16'h3dd6;
	ans_a = 16'h4cf1;
	#20
	A = 16'hbcb6;
	B = 16'hbffa;
	ans_a = 16'h4d87;
	#20
	A = 16'h3e66;
	B = 16'h31b6;
	ans_a = 16'h4d99;
	#20
	A = 16'haedf;
	B = 16'h3fe0;
	ans_a = 16'h4d8b;
	#20
	A = 16'hbf8e;
	B = 16'h2c97;
	ans_a = 16'h4d82;
	#20
	A = 16'h3d03;
	B = 16'h3f41;
	ans_a = 16'h4e13;
	#20
	A = 16'hbcd7;
	B = 16'h373f;
	ans_a = 16'h4df0;
	#20
	A = 16'h3192;
	B = 16'hbff1;
	ans_a = 16'h4dda;
	#20
	A = 16'h3833;
	B = 16'hb644;
	ans_a = 16'h4dcd;
	#20
	A = 16'hbed9;
	B = 16'hbd0b;
	ans_a = 16'h4e57;
	#20
	A = 16'h39f9;
	B = 16'ha230;
	ans_a = 16'h4e56;
	#20
	A = 16'h3f8c;
	B = 16'h3878;
	ans_a = 16'h4e99;
	#20
	A = 16'hbf8c;
	B = 16'h3c26;
	ans_a = 16'h4e1c;
	#20
	A = 16'hb199;
	B = 16'hbeca;
	ans_a = 16'h4e2f;
	#20
	A = 16'hb8fa;
	B = 16'hbc9c;
	ans_a = 16'h4e5d;
	#20
	A = 16'hb99b;
	B = 16'h3e4e;
	ans_a = 16'h4e16;
	#20
	A = 16'hbf4e;
	B = 16'h3c08;
	ans_a = 16'h4da0;
	#20
	A = 16'hbde3;
	B = 16'h39b7;
	ans_a = 16'h4d5d;
	#20
	A = 16'h278a;
	B = 16'hbc32;
	ans_a = 16'h4d5b;
	#20
	A = 16'hbdef;
	B = 16'hbcaa;
	ans_a = 16'h4dca;
	#20
	A = 16'hb569;
	B = 16'h39b9;
	ans_a = 16'h4dbb;
	#20
	A = 16'hb75c;
	B = 16'hbea0;
	ans_a = 16'h4dec;
	#20
	A = 16'hbce4;
	B = 16'h3761;
	ans_a = 16'h4dc8;
	#20
	A = 16'h3fbe;
	B = 16'h3a54;
	ans_a = 16'h4e2a;
	#20
	A = 16'hbf90;
	B = 16'hba28;
	ans_a = 16'h4e87;
	#20
	A = 16'hbf51;
	B = 16'hbd77;
	ans_a = 16'h4f27;
	#20
	A = 16'h3a54;
	B = 16'h3ea4;
	ans_a = 16'h4f7b;
	#20
	A = 16'hbec9;
	B = 16'h3456;
	ans_a = 16'h4f5e;
	#20
	A = 16'hbf3b;
	B = 16'hbc08;
	ans_a = 16'h4fd3;
	#20
	A = 16'h2c40;
	B = 16'h3020;
	ans_a = 16'h4fd4;
	#20
	A = 16'h3960;
	B = 16'h3dcb;
	ans_a = 16'h5009;
	#20
	A = 16'haed3;
	B = 16'hbdb3;
	ans_a = 16'h500e;
	#20
	A = 16'h3f45;
	B = 16'h3f8a;
	ans_a = 16'h507c;
	#20
	A = 16'h3d44;
	B = 16'h3cb7;
	ans_a = 16'h50ae;
	#20
	A = 16'h3f87;
	B = 16'hbf14;
	ans_a = 16'h5043;
	#20
	A = 16'h3ebc;
	B = 16'h364c;
	ans_a = 16'h5058;
	#20
	A = 16'h3f28;
	B = 16'hb714;
	ans_a = 16'h503f;
	#20
	A = 16'h3ce7;
	B = 16'habe7;
	ans_a = 16'h503d;
	#20
	A = 16'h3a25;
	B = 16'hb847;
	ans_a = 16'h5030;
	#20
	A = 16'h3716;
	B = 16'hbc4d;
	ans_a = 16'h5021;
	#20
	A = 16'hbf78;
	B = 16'hbbd5;
	ans_a = 16'h505c;
	#20
	A = 16'hb5d4;
	B = 16'hbfe5;
	ans_a = 16'h5073;
	#20
	A = 16'hbc87;
	B = 16'h3d07;
	ans_a = 16'h5045;
	#20
	A = 16'h36b8;
	B = 16'hb8d7;
	ans_a = 16'h503d;
	#20
	A = 16'h3dff;
	B = 16'h38fb;
	ans_a = 16'h505b;
	#20
	A = 16'hb932;
	B = 16'h3e7d;
	ans_a = 16'h5039;
	#20
	A = 16'h3fc1;
	B = 16'hb988;
	ans_a = 16'h500e;
	#20
	A = 16'ha186;
	B = 16'hbb34;
	ans_a = 16'h500e;
	#20
	A = 16'h3eda;
	B = 16'h3b49;
	ans_a = 16'h5040;
	#20
	A = 16'h3b3d;
	B = 16'hbeed;
	ans_a = 16'h500e;
	#20
	A = 16'hb97e;
	B = 16'h3d83;
	ans_a = 16'h4fdf;
	#20
	A = 16'hbe1f;
	B = 16'hbf94;
	ans_a = 16'h504c;
	#20
	A = 16'h3828;
	B = 16'h3d30;
	ans_a = 16'h5062;
	#20
	A = 16'hba6b;
	B = 16'h3b53;
	ans_a = 16'h504a;
	#20
	A = 16'hbfbe;
	B = 16'h36de;
	ans_a = 16'h502f;
	#20
	A = 16'hbe15;
	B = 16'hb741;
	ans_a = 16'h5045;
	#20
	A = 16'hbf0f;
	B = 16'h39d0;
	ans_a = 16'h501c;
	#20
	A = 16'hbe4a;
	B = 16'hb4e2;
	ans_a = 16'h502b;
	#20
	A = 16'hb534;
	B = 16'hb516;
	ans_a = 16'h502e;
	#20
	A = 16'hb6b7;
	B = 16'h3c4f;
	ans_a = 16'h5020;
	#20
	A = 16'h3d47;
	B = 16'h2dad;
	ans_a = 16'h5024;
	#20
	A = 16'h3b78;
	B = 16'h3d8e;
	ans_a = 16'h504e;
	#20
	A = 16'h3cc3;
	B = 16'h3e2e;
	ans_a = 16'h5089;
	#20
	A = 16'hac48;
	B = 16'h3da7;
	ans_a = 16'h5086;
	#20
	A = 16'h3ad8;
	B = 16'hbd36;
	ans_a = 16'h5062;
	#20
	A = 16'h3d5e;
	B = 16'hbdd4;
	ans_a = 16'h5023;
	#20
	A = 16'h3efd;
	B = 16'hbc19;
	ans_a = 16'h4fd3;
	#20
	A = 16'h3b62;
	B = 16'h38c1;
	ans_a = 16'h4ff6;
	#20
	A = 16'hb455;
	B = 16'hbe71;
	ans_a = 16'h5009;
	#20
	A = 16'h3d4a;
	B = 16'hbf5e;
	ans_a = 16'h4f76;
	#20
	A = 16'h33cb;
	B = 16'hba32;
	ans_a = 16'h4f6a;
	#20
	A = 16'habee;
	B = 16'hb1b1;
	ans_a = 16'h4f6b;
	#20
	A = 16'h38c5;
	B = 16'h3c84;
	ans_a = 16'h4f96;
	#20
	A = 16'hbec5;
	B = 16'hbfce;
	ans_a = 16'h5035;
	#20
	A = 16'hbf18;
	B = 16'h3f26;
	ans_a = 16'h4f9f;
	#20
	A = 16'hbcf1;
	B = 16'hbf9a;
	ans_a = 16'h501b;
	#20
	A = 16'hbd89;
	B = 16'hbdfe;
	ans_a = 16'h505d;
	#20
	A = 16'h33ea;
	B = 16'h3cac;
	ans_a = 16'h5066;
	#20
	A = 16'hbbe4;
	B = 16'h3e25;
	ans_a = 16'h5036;
	#20
	A = 16'h3d55;
	B = 16'hbe5c;
	ans_a = 16'h4fe4;
	#20
	A = 16'hb26d;
	B = 16'h3cf4;
	ans_a = 16'h4fd4;
	#20
	A = 16'h3ed8;
	B = 16'hbf51;
	ans_a = 16'h4f0c;
	#20
	A = 16'hb925;
	B = 16'hbf41;
	ans_a = 16'h4f57;
	#20
	A = 16'hb55e;
	B = 16'hbafa;
	ans_a = 16'h4f6a;
	#20
	A = 16'h3c12;
	B = 16'hbf14;
	ans_a = 16'h4ef7;
	#20
	A = 16'hbfe9;
	B = 16'hbd98;
	ans_a = 16'h4fa8;
	#20
	A = 16'hbe1a;
	B = 16'h3b16;
	ans_a = 16'h4f52;
	#20
	A = 16'h3def;
	B = 16'h3da5;
	ans_a = 16'h4fd8;
	#20
	A = 16'h3f60;
	B = 16'h3cbe;
	ans_a = 16'h5032;
	#20
	A = 16'hb9aa;
	B = 16'h3d90;
	ans_a = 16'h5012;
	#20
	A = 16'h2d53;
	B = 16'h3c4a;
	ans_a = 16'h5015;
	#20
	A = 16'h37f2;
	B = 16'hbd65;
	ans_a = 16'h4fff;
	#20
	A = 16'hbb0e;
	B = 16'h3108;
	ans_a = 16'h4ff6;
	#20
	A = 16'hb97d;
	B = 16'hb6db;
	ans_a = 16'h5004;
	#20
	A = 16'h380d;
	B = 16'h3557;
	ans_a = 16'h5009;
	#20
	A = 16'hbe47;
	B = 16'hbe14;
	ans_a = 16'h5055;
	#20
	A = 16'h3936;
	B = 16'hbeb1;
	ans_a = 16'h5032;
	#20
	A = 16'h3d60;
	B = 16'hb93d;
	ans_a = 16'h5016;
	#20
	A = 16'hb891;
	B = 16'h3796;
	ans_a = 16'h500d;
	#20
	A = 16'hbc29;
	B = 16'hb53a;
	ans_a = 16'h5018;
	#20
	A = 16'hab45;
	B = 16'h3518;
	ans_a = 16'h5017;
	#20
	A = 16'h3a39;
	B = 16'h3fe9;
	ans_a = 16'h5048;
	#20
	A = 16'h356c;
	B = 16'h3e87;
	ans_a = 16'h505a;
	#20
	A = 16'hb70c;
	B = 16'hb609;
	ans_a = 16'h505f;
	#20
	A = 16'hb439;
	B = 16'hb05f;
	ans_a = 16'h5060;
	#20
	A = 16'h3ba5;
	B = 16'h9399;
	ans_a = 16'h5060;
	#20
	A = 16'h3f31;
	B = 16'hb2c2;
	ans_a = 16'h5054;
	#20
	A = 16'h3b51;
	B = 16'h3c55;
	ans_a = 16'h5074;
	#20
	A = 16'hbe36;
	B = 16'hb8e1;
	ans_a = 16'h5092;
	#20
	A = 16'h3a64;
	B = 16'h390b;
	ans_a = 16'h50a2;
	#20
	A = 16'hbb44;
	B = 16'h3c24;
	ans_a = 16'h5084;
	#20
	A = 16'h3fc0;
	B = 16'hb5f1;
	ans_a = 16'h506d;
	#20
	A = 16'hbed1;
	B = 16'ha4a3;
	ans_a = 16'h506e;
	#20
	A = 16'h3dba;
	B = 16'h3eb6;
	ans_a = 16'h50bb;
	#20
	A = 16'h3c8c;
	B = 16'hbe07;
	ans_a = 16'h5084;
	#20
	A = 16'h3e12;
	B = 16'hb917;
	ans_a = 16'h5065;
	#20
	A = 16'h29b7;
	B = 16'h349b;
	ans_a = 16'h5065;
	#20
	A = 16'hbff4;
	B = 16'hb8ea;
	ans_a = 16'h508c;
	#20
	A = 16'h2b80;
	B = 16'hb8aa;
	ans_a = 16'h508b;
	#20
	A = 16'h388d;
	B = 16'h3598;
	ans_a = 16'h5091;
	#20
	A = 16'hbc15;
	B = 16'h3bba;
	ans_a = 16'h5071;
	#20
	A = 16'hbe4b;
	B = 16'hbe31;
	ans_a = 16'h50bf;
	#20
	A = 16'h3b75;
	B = 16'hbff8;
	ans_a = 16'h5084;
	#20
	A = 16'hb8b1;
	B = 16'h2a49;
	ans_a = 16'h5083;
	#20
	A = 16'hbf47;
	B = 16'hbf90;
	ans_a = 16'h50f1;
	#20
	A = 16'h2f91;
	B = 16'h3f84;
	ans_a = 16'h50f8;
	#20
	A = 16'hb99f;
	B = 16'hb9cd;
	ans_a = 16'h5108;
	#20
	A = 16'hb7e7;
	B = 16'hb3a5;
	ans_a = 16'h510c;
	#20
	A = 16'hbeee;
	B = 16'hb89d;
	ans_a = 16'h512c;
	#20
	A = 16'hbc8f;
	B = 16'hb938;
	ans_a = 16'h5144;
	#20
	A = 16'h3876;
	B = 16'h3ef4;
	ans_a = 16'h5163;
	#20
	A = 16'h3476;
	B = 16'hbd6f;
	ans_a = 16'h5157;
	#20
	A = 16'hbf2a;
	B = 16'ha9c7;
	ans_a = 16'h515a;
	#20
	A = 16'hbda0;
	B = 16'h3981;
	ans_a = 16'h513b;
	#20
	A = 16'had61;
	B = 16'h34d8;
	ans_a = 16'h513a;
	#20
	A = 16'h382c;
	B = 16'hb20e;
	ans_a = 16'h5137;
	#20
	A = 16'h3f8e;
	B = 16'hb6a7;
	ans_a = 16'h511e;
	#20
	A = 16'h36e1;
	B = 16'hb94f;
	ans_a = 16'h5115;
	#20
	A = 16'hb96d;
	B = 16'h3f95;
	ans_a = 16'h50ec;
	#20
	A = 16'h3c82;
	B = 16'hb5ff;
	ans_a = 16'h50de;
	#20
	A = 16'h3ceb;
	B = 16'hbac9;
	ans_a = 16'h50bd;
	#20
	A = 16'hbeac;
	B = 16'hb8fa;
	ans_a = 16'h50de;
	#20
	A = 16'h3d36;
	B = 16'hbc57;
	ans_a = 16'h50b1;
	#20
	A = 16'h3dd6;
	B = 16'h3d58;
	ans_a = 16'h50ef;
	#20
	A = 16'hb1ef;
	B = 16'h3f60;
	ans_a = 16'h50e4;
	#20
	A = 16'h3dcb;
	B = 16'hbabf;
	ans_a = 16'h50bd;
	#20
	A = 16'hbb7c;
	B = 16'h3bbf;
	ans_a = 16'h50a0;
	#20
	A = 16'h3eba;
	B = 16'h3f5d;
	ans_a = 16'h5103;
	#20
	A = 16'hb968;
	B = 16'hb8b5;
	ans_a = 16'h5110;
	#20
	A = 16'h3beb;
	B = 16'h32e5;
	ans_a = 16'h5117;
	#20
	A = 16'h3e59;
	B = 16'hbc94;
	ans_a = 16'h50dd;
	#20
	A = 16'h3ead;
	B = 16'h3dec;
	ans_a = 16'h512c;
	#20
	A = 16'h3d7e;
	B = 16'h395d;
	ans_a = 16'h5149;
	#20
	A = 16'h3d83;
	B = 16'hba8d;
	ans_a = 16'h5125;
	#20
	A = 16'h3cb3;
	B = 16'h3d3e;
	ans_a = 16'h5156;
	#20
	A = 16'hbfa3;
	B = 16'h37fa;
	ans_a = 16'h5138;
	#20
	A = 16'hbd3f;
	B = 16'hbe84;
	ans_a = 16'h517c;
	#20
	A = 16'h3f7c;
	B = 16'h3831;
	ans_a = 16'h519b;
	#20
	A = 16'hb574;
	B = 16'h3eca;
	ans_a = 16'h5188;
	#20
	A = 16'hbef6;
	B = 16'h37a3;
	ans_a = 16'h516d;
	#20
	A = 16'hbe55;
	B = 16'h3d49;
	ans_a = 16'h512a;
	#20
	A = 16'hb445;
	B = 16'h2d6e;
	ans_a = 16'h5129;
	#20
	A = 16'hbdcd;
	B = 16'hbd45;
	ans_a = 16'h5166;
	#20
	A = 16'h3628;
	B = 16'h3544;
	ans_a = 16'h516a;
	#20
	A = 16'h2ebf;
	B = 16'h31df;
	ans_a = 16'h516b;
	#20
	A = 16'h3f2c;
	B = 16'hbe9d;
	ans_a = 16'h510c;
	#20
	A = 16'hbeaf;
	B = 16'h38cf;
	ans_a = 16'h50ec;
	#20
	A = 16'hbc6e;
	B = 16'hbd5a;
	ans_a = 16'h511b;
	#20
	A = 16'hbbe7;
	B = 16'haa16;
	ans_a = 16'h511d;
	#20
	A = 16'h3c5b;
	B = 16'h3758;
	ans_a = 16'h512d;
	#20
	A = 16'h3856;
	B = 16'hbafd;
	ans_a = 16'h511e;
	#20
	A = 16'h333b;
	B = 16'hb97d;
	ans_a = 16'h5119;
	#20
	A = 16'h3091;
	B = 16'h3fb7;
	ans_a = 16'h5122;
	#20
	A = 16'hbf1e;
	B = 16'h3bf3;
	ans_a = 16'h50e9;
	#20
	A = 16'hbb6d;
	B = 16'h3839;
	ans_a = 16'h50d9;
	#20
	A = 16'h3f7a;
	B = 16'had46;
	ans_a = 16'h50d4;
	#20
	A = 16'hba17;
	B = 16'hbe56;
	ans_a = 16'h50fb;
	#20
	A = 16'hba82;
	B = 16'hbeb8;
	ans_a = 16'h5127;
	#20
	A = 16'hbd98;
	B = 16'hbdc5;
	ans_a = 16'h5168;
	#20
	A = 16'hbea3;
	B = 16'haae4;
	ans_a = 16'h516b;
	#20
	A = 16'hbc18;
	B = 16'h3d80;
	ans_a = 16'h513e;
	#20
	A = 16'h3642;
	B = 16'h3d70;
	ans_a = 16'h514f;
	#20
	A = 16'h34f3;
	B = 16'hbf88;
	ans_a = 16'h513c;
	#20
	A = 16'h3e84;
	B = 16'hbe84;
	ans_a = 16'h50e7;
	#20
	A = 16'h37b8;
	B = 16'hb8a7;
	ans_a = 16'h50de;
	#20
	A = 16'h3b93;
	B = 16'hbb2d;
	ans_a = 16'h50c3;
	#20
	A = 16'hbb30;
	B = 16'h3fa0;
	ans_a = 16'h508c;
	#20
	A = 16'h3545;
	B = 16'h3e0c;
	ans_a = 16'h509c;
	#20
	A = 16'hb4d7;
	B = 16'hb86b;
	ans_a = 16'h50a1;
	#20
	A = 16'hbe98;
	B = 16'h34f2;
	ans_a = 16'h5091;
	#20
	A = 16'h3b3e;
	B = 16'hbd8d;
	ans_a = 16'h5069;
	#20
	A = 16'h3af1;
	B = 16'hb56c;
	ans_a = 16'h5060;
	#20
	A = 16'h3a38;
	B = 16'hbe39;
	ans_a = 16'h5039;
	#20
	A = 16'hbf6b;
	B = 16'hb56f;
	ans_a = 16'h504d;
	#20
	A = 16'hb944;
	B = 16'h350f;
	ans_a = 16'h5046;
	#20
	A = 16'h3db5;
	B = 16'hbc49;
	ans_a = 16'h5015;
	#20
	A = 16'h3cc5;
	B = 16'h3a6f;
	ans_a = 16'h5034;
	#20
	A = 16'hba8f;
	B = 16'hbe53;
	ans_a = 16'h505d;
	#20
	A = 16'hbcd4;
	B = 16'hbc30;
	ans_a = 16'h5085;
	#20
	A = 16'h3947;
	B = 16'hbcd8;
	ans_a = 16'h506b;
	#20
	A = 16'h3db2;
	B = 16'hbde0;
	ans_a = 16'h5028;
	#20
	A = 16'h3893;
	B = 16'hbc13;
	ans_a = 16'h5015;
	#20
	A = 16'h38e4;
	B = 16'hb328;
	ans_a = 16'h5011;
	#20
	A = 16'hb632;
	B = 16'h3fc3;
	ans_a = 16'h4ff2;
	#20
	A = 16'hbf8c;
	B = 16'h368b;
	ans_a = 16'h4fc1;
	#20
	A = 16'hb9a7;
	B = 16'hba41;
	ans_a = 16'h4fe4;
	#20
	A = 16'h3e8c;
	B = 16'hbd26;
	ans_a = 16'h4f5d;
	#20
	A = 16'hb53e;
	B = 16'hbf3a;
	ans_a = 16'h4f83;
	#20
	A = 16'h3d75;
	B = 16'hb5b3;
	ans_a = 16'h4f64;
	#20
	A = 16'h3f73;
	B = 16'hbd0f;
	ans_a = 16'h4ecd;
	#20
	A = 16'hbe9a;
	B = 16'h3def;
	ans_a = 16'h4e30;
	#20
	A = 16'hb681;
	B = 16'h3fe9;
	ans_a = 16'h4dfd;
	#20
	A = 16'hbd80;
	B = 16'h30df;
	ans_a = 16'h4df0;
	#20
	A = 16'had62;
	B = 16'hbc30;
	ans_a = 16'h4df6;
	#20
	A = 16'h328b;
	B = 16'h32f1;
	ans_a = 16'h4df9;
	#20
	A = 16'h3c35;
	B = 16'hb99c;
	ans_a = 16'h4dca;
	#20
	A = 16'hbdd7;
	B = 16'hba22;
	ans_a = 16'h4e12;
	#20
	A = 16'hbed6;
	B = 16'hb9d8;
	ans_a = 16'h4e62;
	#20
	A = 16'h3977;
	B = 16'hbd52;
	ans_a = 16'h4e28;
	#20
	A = 16'hbc70;
	B = 16'hb43b;
	ans_a = 16'h4e3b;
	#20
	A = 16'h37c1;
	B = 16'h3c33;
	ans_a = 16'h4e5c;
	#20
	A = 16'hbff4;
	B = 16'h3872;
	ans_a = 16'h4e15;
	#20
	A = 16'h3e98;
	B = 16'h308e;
	ans_a = 16'h4e24;
	#20
	A = 16'h3db0;
	B = 16'hbfe1;
	ans_a = 16'h4d71;
	#20
	A = 16'h3c61;
	B = 16'hb943;
	ans_a = 16'h4d43;
	#20
	A = 16'h3572;
	B = 16'hbd19;
	ans_a = 16'h4d27;
	#20
	A = 16'hb552;
	B = 16'hb9aa;
	ans_a = 16'h4d36;
	#20
	A = 16'h23cb;
	B = 16'h2aef;
	ans_a = 16'h4d36;
	#20
	A = 16'hb57c;
	B = 16'h3ea7;
	ans_a = 16'h4d12;
	#20
	A = 16'h3bd4;
	B = 16'hb014;
	ans_a = 16'h4d0a;
	#20
	A = 16'hbf65;
	B = 16'hbe36;
	ans_a = 16'h4dc2;
	#20
	A = 16'hb44a;
	B = 16'h3d52;
	ans_a = 16'h4dab;
	#20
	A = 16'hbd6b;
	B = 16'h3e4b;
	ans_a = 16'h4d23;
	#20
	A = 16'hb796;
	B = 16'hbfc3;
	ans_a = 16'h4d5e;
	#20
	A = 16'h39b9;
	B = 16'hb97b;
	ans_a = 16'h4d3f;
	#20
	A = 16'h38c4;
	B = 16'hbe28;
	ans_a = 16'h4d04;
	#20
	A = 16'hbf84;
	B = 16'h398d;
	ans_a = 16'h4cb1;
	#20
	A = 16'hbc4e;
	B = 16'h3cd7;
	ans_a = 16'h4c5e;
	#20
	A = 16'hbef0;
	B = 16'hb454;
	ans_a = 16'h4c7c;
	#20
	A = 16'hb5b0;
	B = 16'h3c72;
	ans_a = 16'h4c63;
	#20
	A = 16'hbbe9;
	B = 16'h3f35;
	ans_a = 16'h4be2;
	#20
	A = 16'h3c10;
	B = 16'h3bad;
	ans_a = 16'h4c2f;
	#20
	A = 16'h3ec9;
	B = 16'hb93e;
	ans_a = 16'h4bd0;
	#20
	A = 16'h3705;
	B = 16'hbff6;
	ans_a = 16'h4b60;
	#20
	A = 16'hb5b7;
	B = 16'h3cbc;
	ans_a = 16'h4b2a;
	#20
	A = 16'h3ebb;
	B = 16'h35d6;
	ans_a = 16'h4b79;
	#20
	A = 16'h39fc;
	B = 16'hb8a5;
	ans_a = 16'h4b41;
	#20
	A = 16'h3d20;
	B = 16'h3e43;
	ans_a = 16'h4c21;
	#20
	A = 16'hb88f;
	B = 16'hb873;
	ans_a = 16'h4c35;
	#20
	A = 16'h3633;
	B = 16'h3c17;
	ans_a = 16'h4c4e;
	#20
	A = 16'h3ff2;
	B = 16'h393e;
	ans_a = 16'h4ca1;
	#20
	A = 16'h3a65;
	B = 16'hbef3;
	ans_a = 16'h4c48;
	#20
	A = 16'h3ca7;
	B = 16'hbbe1;
	ans_a = 16'h4bfd;
	#20
	A = 16'hb549;
	B = 16'hbcc2;
	ans_a = 16'h4c18;
	#20
	A = 16'h39fe;
	B = 16'h3a7c;
	ans_a = 16'h4c3f;
	#20
	A = 16'h3ce0;
	B = 16'h3ef8;
	ans_a = 16'h4cc7;
	#20
	A = 16'hbeaf;
	B = 16'h3ed5;
	ans_a = 16'h4c10;
	#20
	A = 16'hbc5b;
	B = 16'hbf5e;
	ans_a = 16'h4c90;
	#20
	A = 16'h3f33;
	B = 16'hbf65;
	ans_a = 16'h4b76;
	#20
	A = 16'hbf53;
	B = 16'h3f5e;
	ans_a = 16'h49c6;
	#20
	A = 16'hb6f5;
	B = 16'hb652;
	ans_a = 16'h49dc;
	#20
	A = 16'hbca6;
	B = 16'hbc47;
	ans_a = 16'h4a7b;
	#20
	A = 16'hbdd0;
	B = 16'hbed4;
	ans_a = 16'h4bb8;
	#20
	A = 16'h3567;
	B = 16'h3c5b;
	ans_a = 16'h4be7;
	#20
	A = 16'h3abc;
	B = 16'hb72d;
	ans_a = 16'h4bb7;
	#20
	A = 16'hba5b;
	B = 16'hbe0a;
	ans_a = 16'h4c28;
	#20
	A = 16'hb63e;
	B = 16'h3a84;
	ans_a = 16'h4c14;
	#20
	A = 16'hbe42;
	B = 16'hb9db;
	ans_a = 16'h4c5d;
	#20
	A = 16'h3fe3;
	B = 16'hb87d;
	ans_a = 16'h4c16;
	#20
	A = 16'h385d;
	B = 16'h2c0f;
	ans_a = 16'h4c18;
	#20
	A = 16'h39f9;
	B = 16'hac1a;
	ans_a = 16'h4c15;
	#20
	A = 16'hb480;
	B = 16'hbd62;
	ans_a = 16'h4c2d;
	#20
	A = 16'hbbe8;
	B = 16'h3fef;
	ans_a = 16'h4b5f;
	#20
	A = 16'h3f36;
	B = 16'h3214;
	ans_a = 16'h4b8b;
	#20
	A = 16'h2820;
	B = 16'hbd42;
	ans_a = 16'h4b86;
	#20
	A = 16'h397e;
	B = 16'hbb6c;
	ans_a = 16'h4b34;
	#20
	A = 16'hb5fa;
	B = 16'h3c30;
	ans_a = 16'h4b02;
	#20
	A = 16'h37be;
	B = 16'haa66;
	ans_a = 16'h4aff;
	#20
	A = 16'hbd57;
	B = 16'h3e94;
	ans_a = 16'h49e6;
	#20
	A = 16'h3d5e;
	B = 16'hbde7;
	ans_a = 16'h48e9;
	#20
	A = 16'h3ff3;
	B = 16'h2fc3;
	ans_a = 16'h4908;
	#20
	A = 16'h338b;
	B = 16'h3d49;
	ans_a = 16'h4930;
	#20
	A = 16'h3ca4;
	B = 16'h34df;
	ans_a = 16'h495d;
	#20
	A = 16'h3e56;
	B = 16'hbf21;
	ans_a = 16'h47e8;
	#20
	A = 16'h3ed3;
	B = 16'h3b60;
	ans_a = 16'h48bd;
	#20
	A = 16'hb5c1;
	B = 16'h3ca1;
	ans_a = 16'h4888;
	#20
	A = 16'h285b;
	B = 16'hbc5b;
	ans_a = 16'h4883;
	#20
	A = 16'hbfd9;
	B = 16'hbecb;
	ans_a = 16'h4a2e;
	#20
	A = 16'hbdb3;
	B = 16'h3c84;
	ans_a = 16'h4960;
	#20
	A = 16'h3d74;
	B = 16'hbbe1;
	ans_a = 16'h48b4;
	#20
	A = 16'hbd2d;
	B = 16'hb84d;
	ans_a = 16'h490d;
	#20
	A = 16'h3578;
	B = 16'h3a2c;
	ans_a = 16'h492f;
	#20
	A = 16'h3cb3;
	B = 16'h3810;
	ans_a = 16'h497b;
	#20
	A = 16'hbffa;
	B = 16'hbb3a;
	ans_a = 16'h4a62;
	#20
	A = 16'hbf35;
	B = 16'h2c95;
	ans_a = 16'h4a51;
	#20
	A = 16'h3ed1;
	B = 16'h3bf9;
	ans_a = 16'h4b2a;
	#20
	A = 16'h3d3b;
	B = 16'h3e6c;
	ans_a = 16'h4c1b;
	#20
	A = 16'hb6d8;
	B = 16'hbae3;
	ans_a = 16'h4c33;
	#20
	A = 16'h3d33;
	B = 16'hbe02;
	ans_a = 16'h4b6c;
	#20
	A = 16'h3ddc;
	B = 16'hbb16;
	ans_a = 16'h4ac6;
	#20
	A = 16'hbddf;
	B = 16'hba7c;
	ans_a = 16'h4b5e;
	#20
	A = 16'hb8b1;
	B = 16'h3e2c;
	ans_a = 16'h4aea;
	#20
	A = 16'h359a;
	B = 16'hb4dd;
	ans_a = 16'h4adc;
	#20
	A = 16'hbfcb;
	B = 16'hbbbd;
	ans_a = 16'h4bcd;
	#20
	A = 16'h3f28;
	B = 16'hba1b;
	ans_a = 16'h4b1e;
	#20
	A = 16'h3d59;
	B = 16'h3a1c;
	ans_a = 16'h4ba1;
	#20
	A = 16'h3e6c;
	B = 16'h3e65;
	ans_a = 16'h4c75;
	#20
	A = 16'hbda6;
	B = 16'h39b1;
	ans_a = 16'h4c35;
	#20
	A = 16'hbe4d;
	B = 16'h38ec;
	ans_a = 16'h4bee;
	#20
	A = 16'h3af0;
	B = 16'ha891;
	ans_a = 16'h4bea;
	#20
	A = 16'h3cc2;
	B = 16'hbf51;
	ans_a = 16'h4ad4;
	#20
	A = 16'hbc45;
	B = 16'h3d22;
	ans_a = 16'h4a25;
	#20
	A = 16'hbcfd;
	B = 16'h398d;
	ans_a = 16'h49b6;
	#20
	A = 16'h38f2;
	B = 16'h3dd1;
	ans_a = 16'h4a29;
	#20
	A = 16'h3b22;
	B = 16'h3ae4;
	ans_a = 16'h4a8b;
	#20
	A = 16'hbfd8;
	B = 16'h3f5d;
	ans_a = 16'h48bd;
	#20
	A = 16'h31f3;
	B = 16'hbeaf;
	ans_a = 16'h4895;
	#20
	A = 16'hbc25;
	B = 16'hbd39;
	ans_a = 16'h4942;
	#20
	A = 16'h38d3;
	B = 16'h3ed4;
	ans_a = 16'h49c6;
	#20
	A = 16'hbf1e;
	B = 16'h3e30;
	ans_a = 16'h4866;
	#20
	A = 16'hbb96;
	B = 16'h3e15;
	ans_a = 16'h475b;
	#20
	A = 16'h3ff8;
	B = 16'h3e73;
	ans_a = 16'h4949;
	#20
	A = 16'h3d90;
	B = 16'hbd90;
	ans_a = 16'h4852;
	#20
	A = 16'hbfc9;
	B = 16'hbdb7;
	ans_a = 16'h49b6;
	#20
	A = 16'hb03f;
	B = 16'hbe39;
	ans_a = 16'h49d0;
	#20
	A = 16'h3d92;
	B = 16'h3ecd;
	ans_a = 16'h4aff;
	#20
	A = 16'hbf6c;
	B = 16'hb25e;
	ans_a = 16'h4b2e;
	#20
	A = 16'hb7b6;
	B = 16'hb4ca;
	ans_a = 16'h4b40;
	#20
	A = 16'h3e98;
	B = 16'h3f85;
	ans_a = 16'h4c66;
	#20
	A = 16'h31e3;
	B = 16'h3e3c;
	ans_a = 16'h4c78;
	#20
	A = 16'hbc48;
	B = 16'hbf12;
	ans_a = 16'h4cf1;
	#20
	A = 16'h356c;
	B = 16'hbdaf;
	ans_a = 16'h4cd2;
	#20
	A = 16'hbcb3;
	B = 16'h3ddf;
	ans_a = 16'h4c64;
	#20
	A = 16'hb8c5;
	B = 16'h3993;
	ans_a = 16'h4c49;
	#20
	A = 16'hb53a;
	B = 16'hbfa8;
	ans_a = 16'h4c71;
	#20
	A = 16'h3b91;
	B = 16'hbf63;
	ans_a = 16'h4c01;
	#20
	A = 16'h3f11;
	B = 16'hbf12;
	ans_a = 16'h4a72;
	#20
	A = 16'h3648;
	B = 16'hbf8b;
	ans_a = 16'h4a13;
	#20
	A = 16'hbdd9;
	B = 16'h3a21;
	ans_a = 16'h4984;
	#20
	A = 16'h3d6a;
	B = 16'h3785;
	ans_a = 16'h49d5;
	#20
	A = 16'h3a24;
	B = 16'h3d31;
	ans_a = 16'h4a54;
	#20
	A = 16'hb906;
	B = 16'h31cd;
	ans_a = 16'h4a45;
	#20
	A = 16'h3405;
	B = 16'h392f;
	ans_a = 16'h4a5a;
	#20
	A = 16'hb31a;
	B = 16'h3ed0;
	ans_a = 16'h4a2a;
	#20
	A = 16'hbc51;
	B = 16'ha883;
	ans_a = 16'h4a2f;
	#20
	A = 16'h3be1;
	B = 16'h3fe6;
	ans_a = 16'h4b28;
	#20
	A = 16'h3822;
	B = 16'hbdc6;
	ans_a = 16'h4ac9;
	#20
	A = 16'h2e4e;
	B = 16'hbe54;
	ans_a = 16'h4ab5;
	#20
	A = 16'hbdfd;
	B = 16'h3df2;
	ans_a = 16'h4998;
	#20
	A = 16'h3d4e;
	B = 16'hba0c;
	ans_a = 16'h4918;
	#20
	A = 16'h3df6;
	B = 16'hbc67;
	ans_a = 16'h4846;
	#20
	A = 16'h3be4;
	B = 16'h3297;
	ans_a = 16'h4860;
	#20
	A = 16'h3cd7;
	B = 16'h215a;
	ans_a = 16'h4862;
	#20
	A = 16'hbc3d;
	B = 16'h36b7;
	ans_a = 16'h4829;
	#20
	A = 16'h3cd7;
	B = 16'h3e2c;
	ans_a = 16'h4918;
	#20
	A = 16'hbb72;
	B = 16'hb70a;
	ans_a = 16'h494c;
	#20
	A = 16'h3f82;
	B = 16'hbfb9;
	ans_a = 16'h46f8;
	#20
	A = 16'hbb97;
	B = 16'h3c39;
	ans_a = 16'h45f8;
	#20
	A = 16'hb156;
	B = 16'hbd2b;
	ans_a = 16'h462f;
	#20
	A = 16'h3bf5;
	B = 16'hbd68;
	ans_a = 16'h44d7;
	#20
	A = 16'hbbc1;
	B = 16'h37bc;
	ans_a = 16'h445f;
	#20
	A = 16'hb53a;
	B = 16'h3a96;
	ans_a = 16'h441a;
	#20
	A = 16'hb5c8;
	B = 16'hbfce;
	ans_a = 16'h44ce;
	#20
	A = 16'h3825;
	B = 16'h3c4a;
	ans_a = 16'h455c;
	#20
	A = 16'ha395;
	B = 16'h3c5d;
	ans_a = 16'h4558;
	#20
	A = 16'ha8a1;
	B = 16'hb41c;
	ans_a = 16'h455a;
	#20
	A = 16'h3a83;
	B = 16'hbdff;
	ans_a = 16'h4422;
	#20
	A = 16'hb3bf;
	B = 16'h3dad;
	ans_a = 16'h4394;
	#20
	A = 16'h3b6a;
	B = 16'hbd88;
	ans_a = 16'h4104;
	#20
	A = 16'hac63;
	B = 16'hbc48;
	ans_a = 16'h412a;
	#20
	A = 16'h3542;
	B = 16'hbeb7;
	ans_a = 16'h4010;
	#20
	A = 16'h3f60;
	B = 16'hbde0;
	ans_a = 16'hb968;
	#20
	A = 16'h3e4b;
	B = 16'h3c04;
	ans_a = 16'h3b3a;
	#20
	A = 16'hbc75;
	B = 16'hbfbc;
	ans_a = 16'h421e;
	#20
	A = 16'hb6cd;
	B = 16'h3d57;
	ans_a = 16'h40fc;
	#20
	A = 16'h3d40;
	B = 16'hbcbd;
	ans_a = 16'h3b80;
	#20
	A = 16'hbf9e;
	B = 16'h3b22;
	ans_a = 16'hba16;
	#20
	A = 16'hb91b;
	B = 16'hbd29;
	ans_a = 16'h2c00;
	#20
	A = 16'hbdf9;
	B = 16'hbf6a;
	ans_a = 16'h41a9;
	#20
	A = 16'h3a0a;
	B = 16'h3bd9;
	ans_a = 16'h4324;
	#20
	A = 16'hbcf3;
	B = 16'h3d5c;
	ans_a = 16'h3fa6;
	#20
	A = 16'hbd99;
	B = 16'hac15;
	ans_a = 16'h4001;
	#20
	A = 16'h3a4e;
	B = 16'hbcb4;
	ans_a = 16'h3c4d;
	#20
	A = 16'h3e4c;
	B = 16'hbdfb;
	ans_a = 16'hbd1d;
	#20
	A = 16'h3ff2;
	B = 16'hbd5b;
	ans_a = 16'hc3e0;
	#20
	A = 16'hbd24;
	B = 16'hb192;
	ans_a = 16'hc36d;
	#20
	A = 16'h3c12;
	B = 16'h3c55;
	ans_a = 16'hc139;
	#20
	A = 16'h3f1d;
	B = 16'hbf08;
	ans_a = 16'hc5bc;
	#20
	A = 16'h3f8b;
	B = 16'h3ea7;
	ans_a = 16'hc132;
	#20
	A = 16'h3852;
	B = 16'hb7a4;
	ans_a = 16'hc1b6;
	#20
	A = 16'h3afd;
	B = 16'hbf58;
	ans_a = 16'hc476;
	#20
	A = 16'h3d33;
	B = 16'h347b;
	ans_a = 16'hc419;
	#20
	A = 16'hbc32;
	B = 16'h3c29;
	ans_a = 16'hc530;
	#20
	A = 16'hbbd7;
	B = 16'hb7a0;
	ans_a = 16'hc4b8;
	#20
	A = 16'hbfa5;
	B = 16'hba06;
	ans_a = 16'hc290;
	#20
	A = 16'hb8be;
	B = 16'h3d23;
	ans_a = 16'hc40b;
	#20
	A = 16'hbe02;
	B = 16'hbc0a;
	ans_a = 16'hc10e;
	#20
	A = 16'hb970;
	B = 16'hb933;
	ans_a = 16'hc02c;
	#20
	A = 16'hbe52;
	B = 16'hba8a;
	ans_a = 16'hba5a;
	#20
	A = 16'hbd54;
	B = 16'hbe69;
	ans_a = 16'h3d5d;
	#20
	A = 16'h35fd;
	B = 16'h333c;
	ans_a = 16'h3db4;
	#20
	A = 16'hbd77;
	B = 16'hb9ff;
	ans_a = 16'h40e6;
	#20
	A = 16'h3bb6;
	B = 16'hb926;
	ans_a = 16'h3f51;
	#20
	A = 16'h3726;
	B = 16'h30f5;
	ans_a = 16'h3f98;
	#20
	A = 16'hb97b;
	B = 16'h3bf0;
	ans_a = 16'h3ce0;
	#20
	A = 16'h3d54;
	B = 16'h3f3d;
	ans_a = 16'h4342;
	#20
	A = 16'hbc3f;
	B = 16'h3936;
	ans_a = 16'h41e0;
	#20
	A = 16'h3c9d;
	B = 16'h3ace;
	ans_a = 16'h43d6;
	#20
	A = 16'h3b6d;
	B = 16'hbb33;
	ans_a = 16'h422a;
	#20
	A = 16'h3f46;
	B = 16'h3c2e;
	ans_a = 16'h44fc;
	#20
	A = 16'hb84f;
	B = 16'h3bc8;
	ans_a = 16'h4476;
	#20
	A = 16'hbb6f;
	B = 16'hbc16;
	ans_a = 16'h4569;
	#20
	A = 16'hb7f5;
	B = 16'h361d;
	ans_a = 16'h4538;
	#20
	A = 16'hba0e;
	B = 16'hbf5e;
	ans_a = 16'h469d;
	#20
	A = 16'h3812;
	B = 16'h3f01;
	ans_a = 16'h4781;
	#20
	A = 16'hbd36;
	B = 16'hb935;
	ans_a = 16'h482d;
	#20
	A = 16'h3d45;
	B = 16'hb629;
	ans_a = 16'h47d8;
	#20
	A = 16'hbedc;
	B = 16'hbdf9;
	ans_a = 16'h4934;
	#20
	A = 16'hb605;
	B = 16'hb468;
	ans_a = 16'h4941;
	#20
	A = 16'h3ffc;
	B = 16'h3c27;
	ans_a = 16'h4a4a;
	#20
	A = 16'h3ffd;
	B = 16'h3893;
	ans_a = 16'h4adc;
	#20
	A = 16'hb848;
	B = 16'hba37;
	ans_a = 16'h4b11;
	#20
	A = 16'hb7dc;
	B = 16'h3b33;
	ans_a = 16'h4ad8;
	#20
	A = 16'hb981;
	B = 16'h3a2b;
	ans_a = 16'h4a94;
	#20
	A = 16'h3552;
	B = 16'hbe20;
	ans_a = 16'h4a53;
	#20
	A = 16'haf62;
	B = 16'hb100;
	ans_a = 16'h4a55;
	#20
	A = 16'h3f9d;
	B = 16'hbec9;
	ans_a = 16'h48b8;
	#20
	A = 16'h3ffe;
	B = 16'hb8ce;
	ans_a = 16'h481e;
	#20
	A = 16'hbd46;
	B = 16'hbe33;
	ans_a = 16'h4924;
	#20
	A = 16'h3f50;
	B = 16'h3c06;
	ans_a = 16'h4a0f;
	#20
	A = 16'hba27;
	B = 16'h2923;
	ans_a = 16'h4a0b;
	#20
	A = 16'h3d37;
	B = 16'h3d42;
	ans_a = 16'h4ae6;
	#20
	A = 16'hbfa0;
	B = 16'hb179;
	ans_a = 16'h4b10;
	#20
	A = 16'h3861;
	B = 16'h3ce6;
	ans_a = 16'h4b66;
	#20
	A = 16'h34b4;
	B = 16'h3d1a;
	ans_a = 16'h4b96;
	#20
	A = 16'hbcfd;
	B = 16'hbd4d;
	ans_a = 16'h4c35;
	#20
	A = 16'h3d9c;
	B = 16'hb949;
	ans_a = 16'h4bf3;
	#20
	A = 16'hbd86;
	B = 16'h2a05;
	ans_a = 16'h4beb;
	#20
	A = 16'h3f36;
	B = 16'hbdd7;
	ans_a = 16'h4a9a;
	#20
	A = 16'hb896;
	B = 16'h3eb4;
	ans_a = 16'h4a1f;
	#20
	A = 16'h3d60;
	B = 16'h3e52;
	ans_a = 16'h4b2f;
	#20
	A = 16'h3e73;
	B = 16'h2e08;
	ans_a = 16'h4b42;
	#20
	A = 16'hbd02;
	B = 16'h34d6;
	ans_a = 16'h4b12;
	#20
	A = 16'hbcb4;
	B = 16'hb3c4;
	ans_a = 16'h4b37;
	#20
	A = 16'hbd83;
	B = 16'h3ace;
	ans_a = 16'h4aa1;
	#20
	A = 16'h304e;
	B = 16'hbd17;
	ans_a = 16'h4a8b;
	#20
	A = 16'h3c6d;
	B = 16'hbc32;
	ans_a = 16'h49f6;
	#20
	A = 16'hacb4;
	B = 16'h3497;
	ans_a = 16'h49f3;
	#20
	A = 16'h3401;
	B = 16'h3f09;
	ans_a = 16'h4a2b;
	#20
	A = 16'h3dab;
	B = 16'h3a2d;
	ans_a = 16'h4ab7;
	#20
	A = 16'h3223;
	B = 16'h3d0f;
	ans_a = 16'h4ad6;
	#20
	A = 16'hb5e9;
	B = 16'hbfad;
	ans_a = 16'h4b31;
	#20
	A = 16'h39e0;
	B = 16'hbe10;
	ans_a = 16'h4aa2;
	#20
	A = 16'h3ba3;
	B = 16'hb764;
	ans_a = 16'h4a6a;
	#20
	A = 16'hbb5c;
	B = 16'hb97c;
	ans_a = 16'h4abb;
	#20
	A = 16'hb98f;
	B = 16'had10;
	ans_a = 16'h4ac2;
	#20
	A = 16'hae15;
	B = 16'hb97f;
	ans_a = 16'h4aca;
	#20
	A = 16'h3880;
	B = 16'h3c9b;
	ans_a = 16'h4b1d;
	#20
	A = 16'h3f8e;
	B = 16'hb913;
	ans_a = 16'h4a84;
	#20
	A = 16'ha9af;
	B = 16'h3157;
	ans_a = 16'h4a83;
	#20
	A = 16'h3f54;
	B = 16'hbed4;
	ans_a = 16'h48f3;
	#20
	A = 16'hbe8f;
	B = 16'h3966;
	ans_a = 16'h4865;
	#20
	A = 16'hbfb3;
	B = 16'h3fa4;
	ans_a = 16'h451d;
	#20
	A = 16'h3b4e;
	B = 16'hbb9d;
	ans_a = 16'h443e;
	#20
	A = 16'h3470;
	B = 16'hb90a;
	ans_a = 16'h4411;
	#20
	A = 16'h3ada;
	B = 16'hb83e;
	ans_a = 16'h433a;
	#20
	A = 16'hbeaf;
	B = 16'hbf56;
	ans_a = 16'h46ae;
	#20
	A = 16'h3b93;
	B = 16'hbcf4;
	ans_a = 16'h4582;
	#20
	A = 16'hbe4c;
	B = 16'hbb14;
	ans_a = 16'h46e6;
	#20
	A = 16'h373e;
	B = 16'h3a1b;
	ans_a = 16'h473e;
	#20
	A = 16'h2cb6;
	B = 16'hbbff;
	ans_a = 16'h472b;
	#20
	A = 16'hba81;
	B = 16'hbde1;
	ans_a = 16'h482e;
	#20
	A = 16'h36f7;
	B = 16'h3f14;
	ans_a = 16'h4891;
	#20
	A = 16'hbca2;
	B = 16'hb962;
	ans_a = 16'h48f5;
	#20
	A = 16'h3ed4;
	B = 16'hb4a3;
	ans_a = 16'h48b6;
	#20
	A = 16'hb901;
	B = 16'hb8cb;
	ans_a = 16'h48e6;
	#20
	A = 16'h26d4;
	B = 16'h3c58;
	ans_a = 16'h48ea;
	#20
	A = 16'hbdf9;
	B = 16'hbd53;
	ans_a = 16'h49e8;
	#20
	A = 16'hbf9f;
	B = 16'h3bcf;
	ans_a = 16'h48fa;
	#20
	A = 16'hbb7d;
	B = 16'h3c69;
	ans_a = 16'h4876;
	#20
	A = 16'h3c28;
	B = 16'hb0bb;
	ans_a = 16'h4862;
	#20
	A = 16'h3382;
	B = 16'h3f3d;
	ans_a = 16'h4898;
	#20
	A = 16'h3e08;
	B = 16'h3fa8;
	ans_a = 16'h4a0a;
	#20
	A = 16'hb093;
	B = 16'hbdad;
	ans_a = 16'h4a24;
	#20
	A = 16'h3f1c;
	B = 16'h3fc5;
	ans_a = 16'h4bde;
	#20
	A = 16'hbc0d;
	B = 16'h3ee5;
	ans_a = 16'h4aff;
	#20
	A = 16'h3cd8;
	B = 16'hbda2;
	ans_a = 16'h4a25;
	#20
	A = 16'h2563;
	B = 16'h3d90;
	ans_a = 16'h4a29;
	#20
	A = 16'hb5b0;
	B = 16'h3729;
	ans_a = 16'h4a15;
	#20
	A = 16'hb25e;
	B = 16'h3cf9;
	ans_a = 16'h49f5;
	#20
	A = 16'had05;
	B = 16'hba3d;
	ans_a = 16'h49fd;
	#20
	A = 16'hba5d;
	B = 16'h30bf;
	ans_a = 16'h49ee;
	#20
	A = 16'h3cd9;
	B = 16'h34eb;
	ans_a = 16'h4a1e;
	#20
	A = 16'h31e1;
	B = 16'hb4d4;
	ans_a = 16'h4a17;
	#20
	A = 16'h38fa;
	B = 16'hbbc9;
	ans_a = 16'h49ca;
	#20
	A = 16'h2d3d;
	B = 16'h3dd3;
	ans_a = 16'h49d9;
	#20
	A = 16'hbf80;
	B = 16'h3f85;
	ans_a = 16'h4816;
	#20
	A = 16'h3bb4;
	B = 16'h25f8;
	ans_a = 16'h4819;
	#20
	A = 16'h3cae;
	B = 16'hb4a0;
	ans_a = 16'h47db;
	#20
	A = 16'h3aee;
	B = 16'h378f;
	ans_a = 16'h4822;
	#20
	A = 16'h2e58;
	B = 16'hb156;
	ans_a = 16'h4820;
	#20
	A = 16'h33c7;
	B = 16'h3dc1;
	ans_a = 16'h484d;
	#20
	A = 16'h3fb1;
	B = 16'hbd49;
	ans_a = 16'h4610;
	#20
	A = 16'h3a7e;
	B = 16'h3aa7;
	ans_a = 16'h46bd;
	#20
	A = 16'h3fed;
	B = 16'h3f9d;
	ans_a = 16'h4941;
	#20
	A = 16'hbcf9;
	B = 16'hb725;
	ans_a = 16'h4988;
	#20
	A = 16'hb5f5;
	B = 16'hbbcc;
	ans_a = 16'h49b6;
	#20
	A = 16'hbc8f;
	B = 16'hb482;
	ans_a = 16'h49df;
	#20
	A = 16'h3db5;
	B = 16'h382a;
	ans_a = 16'h4a3e;
	#20
	A = 16'h39c3;
	B = 16'hbcb8;
	ans_a = 16'h49d1;
	#20
	A = 16'hbe4d;
	B = 16'hb37b;
	ans_a = 16'h4a00;
	#20
	A = 16'hbbe4;
	B = 16'h3c84;
	ans_a = 16'h4972;
	#20
	A = 16'h34af;
	B = 16'h3dd3;
	ans_a = 16'h49a9;
	#20
	A = 16'h3e45;
	B = 16'hbde9;
	ans_a = 16'h4880;
	#20
	A = 16'h3ac7;
	B = 16'hb377;
	ans_a = 16'h4867;
	#20
	A = 16'h2974;
	B = 16'h3aeb;
	ans_a = 16'h486c;
	#20
	A = 16'hbdec;
	B = 16'h3f40;
	ans_a = 16'h4629;
	#20
	A = 16'h3e47;
	B = 16'hbcc8;
	ans_a = 16'h4449;
	#20
	A = 16'haf09;
	B = 16'hbcb1;
	ans_a = 16'h446a;
	#20
	A = 16'hbe13;
	B = 16'hbd22;
	ans_a = 16'h465d;
	#20
	A = 16'h3da5;
	B = 16'hbc67;
	ans_a = 16'h44d0;
	#20
	A = 16'h3e31;
	B = 16'h1ab1;
	ans_a = 16'h44d1;
	#20
	A = 16'haccc;
	B = 16'h3fc7;
	ans_a = 16'h44ac;
	#20
	A = 16'h2f1a;
	B = 16'hb298;
	ans_a = 16'h44a6;
	#20
	A = 16'h3d68;
	B = 16'hb6e3;
	ans_a = 16'h4411;
	#20
	A = 16'h3cb7;
	B = 16'hbe4f;
	ans_a = 16'h406a;
	#20
	A = 16'hb4d9;
	B = 16'h34b8;
	ans_a = 16'h403c;
	#20
	A = 16'h382e;
	B = 16'h3aca;
	ans_a = 16'h411f;
	#20
	A = 16'h3aee;
	B = 16'hbd4c;
	ans_a = 16'h3da7;
	#20
	A = 16'h3a88;
	B = 16'h3bc0;
	ans_a = 16'h4068;
	#20
	A = 16'h3ceb;
	B = 16'hb5ff;
	ans_a = 16'h3ef8;
	#20
	A = 16'hbc7a;
	B = 16'hbc25;
	ans_a = 16'h41ce;
	#20
	A = 16'h32e1;
	B = 16'hb712;
	ans_a = 16'h419d;
	#20
	A = 16'h3726;
	B = 16'hbd25;
	ans_a = 16'h4077;
	#20
	A = 16'h3925;
	B = 16'h3f00;
	ans_a = 16'h42b7;
	#20
	A = 16'h38e7;
	B = 16'h3e01;
	ans_a = 16'h4447;
	#20
	A = 16'hb30f;
	B = 16'h388f;
	ans_a = 16'h4427;
	#20
	A = 16'h3977;
	B = 16'h3daf;
	ans_a = 16'h4520;
	#20
	A = 16'h30cc;
	B = 16'hbdcd;
	ans_a = 16'h44e8;
	#20
	A = 16'hb6be;
	B = 16'hbbce;
	ans_a = 16'h4551;
	#20
	A = 16'h3ca8;
	B = 16'hb6a5;
	ans_a = 16'h44d5;
	#20
	A = 16'hbaa8;
	B = 16'h3896;
	ans_a = 16'h445b;
	#20
	A = 16'hbd3b;
	B = 16'hb4c5;
	ans_a = 16'h44bf;
	#20
	A = 16'h3f18;
	B = 16'hbf05;
	ans_a = 16'h3e8a;
	#20
	A = 16'hbfd1;
	B = 16'h3cbd;
	ans_a = 16'hb970;
	#20
	A = 16'hbca9;
	B = 16'ha68b;
	ans_a = 16'hb933;
	#20
	A = 16'h3ff2;
	B = 16'h3195;
	ans_a = 16'hb4db;
	#20
	A = 16'hbd38;
	B = 16'ha1dd;
	ans_a = 16'hb49e;
	#20
	A = 16'hbfbc;
	B = 16'hbcad;
	ans_a = 16'h3fe2;
	#20
	A = 16'hb9fd;
	B = 16'hb895;
	ans_a = 16'h40cc;
	#20
	A = 16'hbe1c;
	B = 16'h3bb9;
	ans_a = 16'h3b64;
	#20
	A = 16'h3735;
	B = 16'hbc00;
	ans_a = 16'h3793;
	#20
	A = 16'h3c2b;
	B = 16'h3c06;
	ans_a = 16'h3e16;
	#20
	A = 16'hb47b;
	B = 16'hbb35;
	ans_a = 16'h3f18;
	#20
	A = 16'hbab8;
	B = 16'hbc08;
	ans_a = 16'h413d;
	#20
	A = 16'h3cde;
	B = 16'hb67d;
	ans_a = 16'h4040;
	#20
	A = 16'h35d0;
	B = 16'h3c9c;
	ans_a = 16'h4116;
	#20
	A = 16'hbcd1;
	B = 16'h3d6e;
	ans_a = 16'h3b44;
	#20
	A = 16'hbe96;
	B = 16'hb5b1;
	ans_a = 16'h3dfa;
	#20
	A = 16'hb8de;
	B = 16'h3ca3;
	ans_a = 16'h3a50;
	#20
	A = 16'hbe5b;
	B = 16'h3015;
	ans_a = 16'h38b1;
	#20
	A = 16'hbe01;
	B = 16'h3cf6;
	ans_a = 16'hbd1a;
	#20
	A = 16'h3f0c;
	B = 16'hbf4f;
	ans_a = 16'hc47e;
	#20
	A = 16'h3ef7;
	B = 16'h3cc6;
	ans_a = 16'hc0d4;
	#20
	A = 16'hb73d;
	B = 16'h3c1e;
	ans_a = 16'hc1c2;
	#20
	A = 16'hbd97;
	B = 16'h3e9b;
	ans_a = 16'hc530;
	#20
	A = 16'haf92;
	B = 16'hb9d0;
	ans_a = 16'hc51a;
	#20
	A = 16'hbcfa;
	B = 16'h383a;
	ans_a = 16'hc5c2;
	#20
	A = 16'h3c8f;
	B = 16'hb9d1;
	ans_a = 16'hc696;
	#20
	A = 16'h3dac;
	B = 16'hb656;
	ans_a = 16'hc726;
	#20
	A = 16'h39c3;
	B = 16'hbb6a;
	ans_a = 16'hc7d1;
	#20
	A = 16'h3556;
	B = 16'h35e9;
	ans_a = 16'hc7b1;
	#20
	A = 16'h3fc6;
	B = 16'h38aa;
	ans_a = 16'hc68f;
	#20
	A = 16'h31ce;
	B = 16'h3bc7;
	ans_a = 16'hc662;
	#20
	A = 16'hb3b1;
	B = 16'hbbc8;
	ans_a = 16'hc626;
	#20
	A = 16'h3d0c;
	B = 16'hbee2;
	ans_a = 16'hc829;
	#20
	A = 16'hb9ad;
	B = 16'hb51f;
	ans_a = 16'hc80c;
	#20
	A = 16'h3aa0;
	B = 16'hbee5;
	ans_a = 16'hc8c3;
	#20
	A = 16'h3b2a;
	B = 16'h35ad;
	ans_a = 16'hc89a;
	#20
	A = 16'h3cda;
	B = 16'h3d37;
	ans_a = 16'hc79f;
	#20
	A = 16'hb7d4;
	B = 16'h3a1b;
	ans_a = 16'hc7ff;
	#20
	A = 16'hbc02;
	B = 16'h3ad3;
	ans_a = 16'hc86d;
	#20
	A = 16'h36eb;
	B = 16'hbf39;
	ans_a = 16'hc8d1;
	#20
	A = 16'h3adc;
	B = 16'h3854;
	ans_a = 16'hc896;
	#20
	A = 16'hbd94;
	B = 16'h3d31;
	ans_a = 16'hc97e;
	#20
	A = 16'hb222;
	B = 16'hbfad;
	ans_a = 16'hc94f;
	#20
	A = 16'hbe49;
	B = 16'hbfce;
	ans_a = 16'hc78d;
	#20
	A = 16'h3b73;
	B = 16'h3eae;
	ans_a = 16'hc5ff;
	#20
	A = 16'hb809;
	B = 16'h3185;
	ans_a = 16'hc615;
	#20
	A = 16'hbd98;
	B = 16'h1e3e;
	ans_a = 16'hc617;
	#20
	A = 16'h3d71;
	B = 16'hbecc;
	ans_a = 16'hc834;
	#20
	A = 16'hb859;
	B = 16'h3ee7;
	ans_a = 16'hc8ac;
	#20
	A = 16'h3bd3;
	B = 16'h2f5c;
	ans_a = 16'hc89e;
	#20
	A = 16'hbea6;
	B = 16'hb52f;
	ans_a = 16'hc859;
	#20
	A = 16'h3e84;
	B = 16'h3d93;
	ans_a = 16'hc66d;
	#20
	A = 16'h3f67;
	B = 16'h3ebc;
	ans_a = 16'hc29f;
	#20
	A = 16'h33e3;
	B = 16'h3c58;
	ans_a = 16'hc216;
	#20
	A = 16'hb98f;
	B = 16'h35a9;
	ans_a = 16'hc294;
	#20
	A = 16'h3e7a;
	B = 16'hb82a;
	ans_a = 16'hc422;
	#20
	A = 16'h3cf4;
	B = 16'h3c77;
	ans_a = 16'hc180;
	#20
	A = 16'hbf32;
	B = 16'hbda1;
	ans_a = 16'hb300;
	#20
	A = 16'h3b1a;
	B = 16'h3fba;
	ans_a = 16'h3dfc;
	#20
	A = 16'h3f7d;
	B = 16'hb01d;
	ans_a = 16'h3d06;
	#20
	A = 16'hb506;
	B = 16'hbdca;
	ans_a = 16'h3ed7;
	#20
	A = 16'hb6fb;
	B = 16'h3d7f;
	ans_a = 16'h3c71;
	#20
	A = 16'h2c0a;
	B = 16'hbaca;
	ans_a = 16'h3c3a;
	#20
	A = 16'h3be7;
	B = 16'h320e;
	ans_a = 16'h3cf9;
	#20
	A = 16'hbfe3;
	B = 16'h3a2c;
	ans_a = 16'hb474;
	#20
	A = 16'hbe9f;
	B = 16'h3d0e;
	ans_a = 16'hc0be;
	#20
	A = 16'h370f;
	B = 16'h3e62;
	ans_a = 16'hbeab;
	#20
	A = 16'had8c;
	B = 16'ha640;
	ans_a = 16'hbea9;
	#20
	A = 16'hbefc;
	B = 16'h2fac;
	ans_a = 16'hbf7f;
	#20
	A = 16'h353e;
	B = 16'h3616;
	ans_a = 16'hbeff;
	#20
	A = 16'ha4d6;
	B = 16'hbfb6;
	ans_a = 16'hbeda;
	#20
	A = 16'h3e36;
	B = 16'h3e50;
	ans_a = 16'h39e8;
	#20
	A = 16'h3d94;
	B = 16'hbfb5;
	ans_a = 16'hbfcc;
	#20
	A = 16'h3fb5;
	B = 16'h3e4e;
	ans_a = 16'h3c5a;
	#20
	A = 16'h31ee;
	B = 16'hbfee;
	ans_a = 16'h39c4;
	#20
	A = 16'hbaa2;
	B = 16'h314c;
	ans_a = 16'h38ab;
	#20
	A = 16'hbcc6;
	B = 16'h3a2f;
	ans_a = 16'hb56c;
	#20
	A = 16'h3d10;
	B = 16'h3eb3;
	ans_a = 16'h3f1f;
	#20
	A = 16'hbe15;
	B = 16'hb93b;
	ans_a = 16'h418c;
	#20
	A = 16'hbfdd;
	B = 16'hbcbd;
	ans_a = 16'h451a;
	#20
	A = 16'hbc6c;
	B = 16'h3db7;
	ans_a = 16'h430c;
	#20
	A = 16'hbc7e;
	B = 16'hb95a;
	ans_a = 16'h4446;
	#20
	A = 16'h3bbb;
	B = 16'h3e1a;
	ans_a = 16'h45bf;
	#20
	A = 16'h3c9a;
	B = 16'hbf31;
	ans_a = 16'h435b;
	#20
	A = 16'h39c9;
	B = 16'h3ebe;
	ans_a = 16'h44e6;
	#20
	A = 16'h3455;
	B = 16'h3f46;
	ans_a = 16'h4564;
	#20
	A = 16'h385c;
	B = 16'h3e8d;
	ans_a = 16'h4648;
	#20
	A = 16'hb0d7;
	B = 16'hbd0f;
	ans_a = 16'h4679;
	#20
	A = 16'hbf9f;
	B = 16'h31bc;
	ans_a = 16'h4622;
	#20
	A = 16'h3eb5;
	B = 16'h3a70;
	ans_a = 16'h477c;
	#20
	A = 16'h3661;
	B = 16'h38a1;
	ans_a = 16'h47b7;
	#20
	A = 16'hbd4c;
	B = 16'hbca9;
	ans_a = 16'h48a1;
	#20
	A = 16'hbcf2;
	B = 16'hba60;
	ans_a = 16'h491f;
	#20
	A = 16'h3c66;
	B = 16'hb8eb;
	ans_a = 16'h48c8;
	#20
	A = 16'hbf97;
	B = 16'hb90c;
	ans_a = 16'h4961;
	#20
	A = 16'hbc1a;
	B = 16'hbda8;
	ans_a = 16'h4a1b;
	#20
	A = 16'h3be5;
	B = 16'hb2c2;
	ans_a = 16'h4a00;
	#20
	A = 16'h3458;
	B = 16'h3fa3;
	ans_a = 16'h4a42;
	#20
	A = 16'hbc15;
	B = 16'h3b33;
	ans_a = 16'h49cc;
	#20
	A = 16'hbd6d;
	B = 16'h9ab5;
	ans_a = 16'h49cd;
	#20
	A = 16'h3f9b;
	B = 16'h3dbf;
	ans_a = 16'h4b2a;
	#20
	A = 16'hbc94;
	B = 16'h2b41;
	ans_a = 16'h4b22;
	#20
	A = 16'hbe39;
	B = 16'hbc06;
	ans_a = 16'h4bea;
	#20
	A = 16'h3a03;
	B = 16'hb752;
	ans_a = 16'h4bbe;
	#20
	A = 16'h38b7;
	B = 16'h3e0c;
	ans_a = 16'h4c18;
	#20
	A = 16'hbc88;
	B = 16'h383c;
	ans_a = 16'h4be3;
	#20
	A = 16'h3aeb;
	B = 16'h30e4;
	ans_a = 16'h4bf4;
	#20
	A = 16'h2fe6;
	B = 16'h3e76;
	ans_a = 16'h4c07;
	#20
	A = 16'hbea7;
	B = 16'h3eee;
	ans_a = 16'h4a9d;
	#20
	A = 16'h39db;
	B = 16'h3f55;
	ans_a = 16'h4b49;
	#20
	A = 16'h3fe7;
	B = 16'h3d76;
	ans_a = 16'h4c51;
	#20
	A = 16'hbd8f;
	B = 16'hbc19;
	ans_a = 16'h4cac;
	#20
	A = 16'h3001;
	B = 16'h3c63;
	ans_a = 16'h4cb5;
	#20
	A = 16'h3dc6;
	B = 16'h3ab1;
	ans_a = 16'h4d02;
	#20
	A = 16'h3f5b;
	B = 16'hbcc8;
	ans_a = 16'h4c75;
	#20
	A = 16'hbbd1;
	B = 16'h3f46;
	ans_a = 16'h4c03;
	#20
	A = 16'hbdb4;
	B = 16'h3175;
	ans_a = 16'h4be7;
	#20
	A = 16'hbc65;
	B = 16'h3488;
	ans_a = 16'h4bbf;
	#20
	A = 16'hbce0;
	B = 16'h3e0a;
	ans_a = 16'h4ad4;
	#20
	A = 16'h3d00;
	B = 16'hbdce;
	ans_a = 16'h49ec;
	#20
	A = 16'h3d86;
	B = 16'hb934;
	ans_a = 16'h4979;
	#20
	A = 16'h396c;
	B = 16'hbba4;
	ans_a = 16'h4926;
	#20
	A = 16'h3960;
	B = 16'h37c2;
	ans_a = 16'h4950;
	#20
	A = 16'h3075;
	B = 16'h3569;
	ans_a = 16'h4956;
	#20
	A = 16'hafee;
	B = 16'hba74;
	ans_a = 16'h4963;
	#20
	A = 16'h33b9;
	B = 16'hbed7;
	ans_a = 16'h492e;
	#20
	A = 16'h3e49;
	B = 16'hbf77;
	ans_a = 16'h476e;
	#20
	A = 16'h3ecb;
	B = 16'h3aad;
	ans_a = 16'h486c;
	#20
	A = 16'hbf6c;
	B = 16'hbd70;
	ans_a = 16'h49af;
	#20
	A = 16'hbc52;
	B = 16'h32a8;
	ans_a = 16'h4992;
	#20
	A = 16'hbfe7;
	B = 16'hb91b;
	ans_a = 16'h4a33;
	#20
	A = 16'h3e3f;
	B = 16'h3c6b;
	ans_a = 16'h4b10;
	#20
	A = 16'hbe61;
	B = 16'h3e9e;
	ans_a = 16'h49be;
	#20
	A = 16'h3dc8;
	B = 16'h38df;
	ans_a = 16'h4a2f;
	#20
	A = 16'hbe81;
	B = 16'hbe47;
	ans_a = 16'h4b76;
	#20
	A = 16'hbf4a;
	B = 16'h3a3b;
	ans_a = 16'h4ac0;
	#20
	A = 16'h374b;
	B = 16'hbda1;
	ans_a = 16'h4a6e;
	#20
	A = 16'hb6a2;
	B = 16'hb052;
	ans_a = 16'h4a75;
	#20
	A = 16'h3853;
	B = 16'hbcff;
	ans_a = 16'h4a1f;
	#20
	A = 16'h3c39;
	B = 16'h3fbf;
	ans_a = 16'h4b25;
	#20
	A = 16'hbd18;
	B = 16'ha46d;
	ans_a = 16'h4b28;
	#20
	A = 16'h3705;
	B = 16'hb604;
	ans_a = 16'h4b13;
	#20
	A = 16'hbcc9;
	B = 16'hbdcf;
	ans_a = 16'h4bf1;
	#20
	A = 16'hbe15;
	B = 16'h3f99;
	ans_a = 16'h4a7f;
	#20
	A = 16'hbdda;
	B = 16'h33e5;
	ans_a = 16'h4a51;
	#20
	A = 16'hbea2;
	B = 16'h3e13;
	ans_a = 16'h490f;
	#20
	A = 16'hbc4a;
	B = 16'h3a61;
	ans_a = 16'h48a2;
	#20
	A = 16'hbd9a;
	B = 16'hbe9f;
	ans_a = 16'h49cb;
	#20
	A = 16'h3a40;
	B = 16'h3506;
	ans_a = 16'h49ea;
	#20
	A = 16'h3acb;
	B = 16'hbe87;
	ans_a = 16'h4939;
	#20
	A = 16'hbaf8;
	B = 16'h3a07;
	ans_a = 16'h48e5;
	#20
	A = 16'h3e34;
	B = 16'h3c7a;
	ans_a = 16'h49c3;
	#20
	A = 16'hba99;
	B = 16'h3de4;
	ans_a = 16'h4928;
	#20
	A = 16'h3eca;
	B = 16'hbbc2;
	ans_a = 16'h4855;
	#20
	A = 16'h3f76;
	B = 16'hbcf8;
	ans_a = 16'h4659;
	#20
	A = 16'hbdcb;
	B = 16'h3cfd;
	ans_a = 16'h448b;
	#20
	A = 16'hbf5f;
	B = 16'hbdbc;
	ans_a = 16'h4730;
	#20
	A = 16'h3f98;
	B = 16'h3e59;
	ans_a = 16'h491a;
	#20
	A = 16'hbd80;
	B = 16'h3f4a;
	ans_a = 16'h47b2;
	#20
	A = 16'hbc16;
	B = 16'h3f03;
	ans_a = 16'h45e8;
	#20
	A = 16'h3f33;
	B = 16'h31f6;
	ans_a = 16'h463e;
	#20
	A = 16'hbed6;
	B = 16'h3f63;
	ans_a = 16'h422c;
	#20
	A = 16'h3e4f;
	B = 16'h3a8d;
	ans_a = 16'h4460;
	#20
	A = 16'h3328;
	B = 16'h3c7e;
	ans_a = 16'h44a0;
	#20
	A = 16'hbd2b;
	B = 16'hbec3;
	ans_a = 16'h46cf;
	#20
	A = 16'h3d5f;
	B = 16'h3e43;
	ans_a = 16'h4874;
	#20
	A = 16'h3fc2;
	B = 16'hbd2e;
	ans_a = 16'h4665;
	#20
	A = 16'h3f48;
	B = 16'hbcc7;
	ans_a = 16'h4438;
	#20
	A = 16'h3d56;
	B = 16'h3edb;
	ans_a = 16'h4682;
	#20
	A = 16'h3fff;
	B = 16'hbe55;
	ans_a = 16'h42b0;
	#20
	A = 16'hbdca;
	B = 16'hadcd;
	ans_a = 16'h42f3;
	#20
	A = 16'hbdce;
	B = 16'hbf9e;
	ans_a = 16'h463d;
	#20
	A = 16'hbf7d;
	B = 16'hbcc9;
	ans_a = 16'h483d;
	#20
	A = 16'hbfe9;
	B = 16'h3d4b;
	ans_a = 16'h45dc;
	#20
	A = 16'h3df8;
	B = 16'h3d2c;
	ans_a = 16'h47ca;
	#20
	A = 16'h3d64;
	B = 16'hbfc0;
	ans_a = 16'h452e;
	#20
	A = 16'h3d0f;
	B = 16'hbe44;
	ans_a = 16'h4266;
	#20
	A = 16'h3f28;
	B = 16'hb9f5;
	ans_a = 16'h3f78;
	#20
	A = 16'hbbcf;
	B = 16'hbb86;
	ans_a = 16'h4192;
	#20
	A = 16'h3671;
	B = 16'hbd2b;
	ans_a = 16'h4088;
	#20
	A = 16'hb785;
	B = 16'h3760;
	ans_a = 16'h4019;
	#20
	A = 16'h3dda;
	B = 16'hbfd8;
	ans_a = 16'hba90;
	#20
	A = 16'hbc82;
	B = 16'h3727;
	ans_a = 16'hbd4c;
	#20
	A = 16'h3d4b;
	B = 16'h31bb;
	ans_a = 16'hbc59;
	#20
	A = 16'h3892;
	B = 16'h3cb5;
	ans_a = 16'hb6a2;
	#20
	A = 16'had60;
	B = 16'h3c35;
	ans_a = 16'hb806;
	#20
	A = 16'h38d6;
	B = 16'hbc2d;
	ans_a = 16'hbc89;
	#20
	A = 16'hbd47;
	B = 16'h3df3;
	ans_a = 16'hc231;
	#20
	A = 16'hbb89;
	B = 16'hbc93;
	ans_a = 16'hc00a;
	#20
	A = 16'hb53f;
	B = 16'h3e07;
	ans_a = 16'hc107;
	#20
	A = 16'h3cff;
	B = 16'hbdf8;
	ans_a = 16'hc461;
	#20
	A = 16'hbd95;
	B = 16'hb5cc;
	ans_a = 16'hc3bf;
	#20
	A = 16'h3d7c;
	B = 16'h2ebd;
	ans_a = 16'hc375;
	#20
	A = 16'hbdf2;
	B = 16'h3fc0;
	ans_a = 16'hc69c;
	#20
	A = 16'hb847;
	B = 16'hbe68;
	ans_a = 16'hc5c1;
	#20
	A = 16'hb503;
	B = 16'h3bad;
	ans_a = 16'hc60e;
	#20
	A = 16'h3c5e;
	B = 16'h31fa;
	ans_a = 16'hc5da;
	#20
	A = 16'hbe10;
	B = 16'h355b;
	ans_a = 16'hc65c;
	#20
	A = 16'h38b0;
	B = 16'hba68;
	ans_a = 16'hc6d4;
	#20
	A = 16'h312e;
	B = 16'hb829;
	ans_a = 16'hc6ea;
	#20
	A = 16'h3e8b;
	B = 16'hbcff;
	ans_a = 16'hc87a;
	#20
	A = 16'h309f;
	B = 16'h3ea3;
	ans_a = 16'hc85b;
	#20
	A = 16'h3dda;
	B = 16'h3c2d;
	ans_a = 16'hc72f;
	#20
	A = 16'h3e96;
	B = 16'hbfe7;
	ans_a = 16'hc938;
	#20
	A = 16'hbdff;
	B = 16'hb561;
	ans_a = 16'hc8f8;
	#20
	A = 16'hba67;
	B = 16'h26e4;
	ans_a = 16'hc8fb;
	#20
	A = 16'h2ff6;
	B = 16'hb101;
	ans_a = 16'hc8fd;
	#20
	A = 16'ha905;
	B = 16'h3c6e;
	ans_a = 16'hc903;
	#20
	A = 16'hbffa;
	B = 16'h3707;
	ans_a = 16'hc973;
	#20
	A = 16'h397d;
	B = 16'h3f2b;
	ans_a = 16'hc8d6;
	#20
	A = 16'h3ed1;
	B = 16'hb373;
	ans_a = 16'hc909;
	#20
	A = 16'h34cd;
	B = 16'h3df4;
	ans_a = 16'hc8d0;
	#20
	A = 16'hb107;
	B = 16'h3c66;
	ans_a = 16'hc8e6;
	#20
	A = 16'h32ce;
	B = 16'hbd64;
	ans_a = 16'hc90b;
	#20
	A = 16'hbaca;
	B = 16'hbe46;
	ans_a = 16'hc861;
	#20
	A = 16'h3fc8;
	B = 16'hbdca;
	ans_a = 16'hc9c9;
	#20
	A = 16'h3fff;
	B = 16'hbd52;
	ans_a = 16'hcb1d;
	#20
	A = 16'hbb6f;
	B = 16'hb681;
	ans_a = 16'hcaed;
	#20
	A = 16'h30c2;
	B = 16'h3e5c;
	ans_a = 16'hcacf;
	#20
	A = 16'hb4fe;
	B = 16'h3b0b;
	ans_a = 16'hcaf2;
	#20
	A = 16'h3d48;
	B = 16'hb9fd;
	ans_a = 16'hcb70;
	#20
	A = 16'hba80;
	B = 16'h346b;
	ans_a = 16'hcb8d;
	#20
	A = 16'h39fc;
	B = 16'h3d95;
	ans_a = 16'hcb07;
	#20
	A = 16'hb71f;
	B = 16'hbbe3;
	ans_a = 16'hcacf;
	#20
	A = 16'h3e0d;
	B = 16'hbfee;
	ans_a = 16'hcc27;
	#20
	A = 16'hbec0;
	B = 16'h3e0b;
	ans_a = 16'hccca;
	#20
	A = 16'h3de7;
	B = 16'hbb91;
	ans_a = 16'hcd23;
	#20
	A = 16'h3b77;
	B = 16'h3f09;
	ans_a = 16'hccba;
	#20
	A = 16'h36a9;
	B = 16'hbeee;
	ans_a = 16'hcce8;
	#20
	A = 16'hbe97;
	B = 16'h3ee8;
	ans_a = 16'hcd9e;
	#20
	A = 16'h3da7;
	B = 16'h38f2;
	ans_a = 16'hcd66;
	#20
	A = 16'ha6d9;
	B = 16'hb409;
	ans_a = 16'hcd66;
	#20
	A = 16'hb911;
	B = 16'h3d4f;
	ans_a = 16'hcd9c;
	#20
	A = 16'haf29;
	B = 16'hbc5c;
	ans_a = 16'hcd94;
	#20
	A = 16'h369c;
	B = 16'hbccf;
	ans_a = 16'hcdb4;
	#20
	A = 16'h3eea;
	B = 16'h3f9d;
	ans_a = 16'hcce2;
	#20
	A = 16'h396f;
	B = 16'hb74a;
	ans_a = 16'hccf6;
	#20
	A = 16'hb408;
	B = 16'hbe5e;
	ans_a = 16'hccdc;
	#20
	A = 16'hbd52;
	B = 16'h3fa3;
	ans_a = 16'hcd7e;
	#20
	A = 16'h3eca;
	B = 16'hbd92;
	ans_a = 16'hce15;
	#20
	A = 16'h33f5;
	B = 16'hb1fa;
	ans_a = 16'hce18;
	#20
	A = 16'h3a0c;
	B = 16'hb972;
	ans_a = 16'hce39;
	#20
	A = 16'h377d;
	B = 16'h3b41;
	ans_a = 16'hce1e;
	#20
	A = 16'hb23e;
	B = 16'hbe68;
	ans_a = 16'hce0a;
	#20
	A = 16'hbf77;
	B = 16'hbbcd;
	ans_a = 16'hcd96;
	#20
	A = 16'hbc9c;
	B = 16'hbec3;
	ans_a = 16'hcd19;
	#20
	A = 16'hbe10;
	B = 16'h375b;
	ans_a = 16'hcd46;
	#20
	A = 16'h3d73;
	B = 16'h3c28;
	ans_a = 16'hcceb;
	#20
	A = 16'hbc95;
	B = 16'hbdfd;
	ans_a = 16'hcc7d;
	#20
	A = 16'h39eb;
	B = 16'ha47f;
	ans_a = 16'hcc7e;
	#20
	A = 16'h37ca;
	B = 16'h360e;
	ans_a = 16'hcc72;
	#20
	A = 16'hbe40;
	B = 16'h3d5f;
	ans_a = 16'hccf8;
	#20
	A = 16'hb547;
	B = 16'hbb8e;
	ans_a = 16'hcce4;
	#20
	A = 16'h34fb;
	B = 16'hbac5;
	ans_a = 16'hccf5;
	#20
	A = 16'h3c6d;
	B = 16'hbff1;
	ans_a = 16'hcd82;
	#20
	A = 16'hb86a;
	B = 16'h35c2;
	ans_a = 16'hcd8f;
	#20
	A = 16'hb822;
	B = 16'hadd5;
	ans_a = 16'hcd8c;
	#20
	A = 16'h2a50;
	B = 16'hbe53;
	ans_a = 16'hcd91;
	#20
	A = 16'h3b84;
	B = 16'h3755;
	ans_a = 16'hcd75;
	#20
	A = 16'h3ea9;
	B = 16'h34e3;
	ans_a = 16'hcd54;
	#20
	A = 16'h3c70;
	B = 16'h38a7;
	ans_a = 16'hcd2b;
	#20
	A = 16'hba7d;
	B = 16'h391b;
	ans_a = 16'hcd4c;
	#20
	A = 16'hbec5;
	B = 16'h3923;
	ans_a = 16'hcd92;
	#20
	A = 16'h3864;
	B = 16'hb559;
	ans_a = 16'hcd9e;
	#20
	A = 16'h3c4e;
	B = 16'hb937;
	ans_a = 16'hcdcb;
	#20
	A = 16'h39fb;
	B = 16'hbdf9;
	ans_a = 16'hce12;
	#20
	A = 16'h3d03;
	B = 16'hbee8;
	ans_a = 16'hce9c;
	#20
	A = 16'h3815;
	B = 16'h3f7d;
	ans_a = 16'hce5f;
	#20
	A = 16'hbd9d;
	B = 16'h3b8d;
	ans_a = 16'hceb4;
	#20
	A = 16'h3a93;
	B = 16'h309f;
	ans_a = 16'hceac;
	#20
	A = 16'h3a38;
	B = 16'h359a;
	ans_a = 16'hce9b;
	#20
	A = 16'hb18a;
	B = 16'h30eb;
	ans_a = 16'hce9d;
	#20
	A = 16'hb14b;
	B = 16'h3e90;
	ans_a = 16'hceae;
	#20
	A = 16'hbe42;
	B = 16'haa66;
	ans_a = 16'hcea9;
	#20
	A = 16'h33c8;
	B = 16'hbe60;
	ans_a = 16'hcec2;
	#20
	A = 16'hbf93;
	B = 16'hb70c;
	ans_a = 16'hce8d;
	#20
	A = 16'hbd04;
	B = 16'hbe8e;
	ans_a = 16'hce0a;
	#20
	A = 16'hb4d9;
	B = 16'h3d87;
	ans_a = 16'hce25;
	#20
	A = 16'hbf32;
	B = 16'h3b9c;
	ans_a = 16'hce92;
	#20
	A = 16'hbc22;
	B = 16'hbd98;
	ans_a = 16'hce36;
	#20
	A = 16'hbcac;
	B = 16'h3c5a;
	ans_a = 16'hce87;
	#20
	A = 16'hbfae;
	B = 16'hb51e;
	ans_a = 16'hce60;
	#20
	A = 16'h3f8d;
	B = 16'hbd43;
	ans_a = 16'hceff;
	#20
	A = 16'h3e7a;
	B = 16'h3f18;
	ans_a = 16'hce47;
	#20
	A = 16'hbc63;
	B = 16'h3f29;
	ans_a = 16'hcec5;
	#20
	A = 16'h3ec5;
	B = 16'hba16;
	ans_a = 16'hcf17;
	#20
	A = 16'h3d57;
	B = 16'h3428;
	ans_a = 16'hcf01;
	#20
	A = 16'h3eb9;
	B = 16'hbddd;
	ans_a = 16'hcf9f;
	#20
	A = 16'hbbd1;
	B = 16'hb1b4;
	ans_a = 16'hcf94;
	#20
	A = 16'h3c0d;
	B = 16'h3e16;
	ans_a = 16'hcf31;
	#20
	A = 16'h3d0d;
	B = 16'hb7e3;
	ans_a = 16'hcf59;
	#20
	A = 16'hbd06;
	B = 16'h307d;
	ans_a = 16'hcf64;
	#20
	A = 16'h3602;
	B = 16'h3fb1;
	ans_a = 16'hcf36;
	#20
	A = 16'hbcd8;
	B = 16'hb6a8;
	ans_a = 16'hcf16;
	#20
	A = 16'hb57c;
	B = 16'haa73;
	ans_a = 16'hcf15;
	#20
	A = 16'hbfc1;
	B = 16'h292a;
	ans_a = 16'hcf1a;
	#20
	A = 16'hbfc6;
	B = 16'hbcf6;
	ans_a = 16'hce80;
	#20
	A = 16'h31b2;
	B = 16'h334d;
	ans_a = 16'hce7d;
	#20
	A = 16'ha4d2;
	B = 16'hb4f9;
	ans_a = 16'hce7d;
	#20
	A = 16'hbe5b;
	B = 16'hbe0d;
	ans_a = 16'hcde3;
	#20
	A = 16'hb72f;
	B = 16'hbe08;
	ans_a = 16'hcdb8;
	#20
	A = 16'h3c6d;
	B = 16'h3b6a;
	ans_a = 16'hcd76;
	#20
	A = 16'hbd4d;
	B = 16'hbc29;
	ans_a = 16'hcd1e;
	#20
	A = 16'hba4c;
	B = 16'hb10a;
	ans_a = 16'hcd16;
	#20
	A = 16'h3f18;
	B = 16'hb4a9;
	ans_a = 16'hcd37;
	#20
	A = 16'h3c7e;
	B = 16'hbddb;
	ans_a = 16'hcda0;
	#20
	A = 16'hbcaa;
	B = 16'h3e24;
	ans_a = 16'hce13;
	#20
	A = 16'hb16e;
	B = 16'hba30;
	ans_a = 16'hce0b;
	#20
	A = 16'h3f0d;
	B = 16'hbbea;
	ans_a = 16'hce7b;
	#20
	A = 16'hb550;
	B = 16'hbfec;
	ans_a = 16'hce51;
	#20
	A = 16'hb246;
	B = 16'hb182;
	ans_a = 16'hce4f;
	#20
	A = 16'h3ac7;
	B = 16'hb923;
	ans_a = 16'hce72;
	#20
	A = 16'h39cd;
	B = 16'hbc28;
	ans_a = 16'hcea2;
	#20
	A = 16'h2fe0;
	B = 16'h3adf;
	ans_a = 16'hce9b;
	#20
	A = 16'h3fc7;
	B = 16'h3a57;
	ans_a = 16'hce38;
	#20
	A = 16'h385f;
	B = 16'hbe62;
	ans_a = 16'hce70;
	#20
	A = 16'hb97f;
	B = 16'h3a00;
	ans_a = 16'hce91;
	#20
	A = 16'h3ef2;
	B = 16'h3f01;
	ans_a = 16'hcdce;
	#20
	A = 16'h3c64;
	B = 16'h3bee;
	ans_a = 16'hcd88;
	#20
	A = 16'hb403;
	B = 16'h14b8;
	ans_a = 16'hcd88;
	#20
	A = 16'h3bd6;
	B = 16'h3b1a;
	ans_a = 16'hcd50;
	#20
	A = 16'hbcb3;
	B = 16'h3bfe;
	ans_a = 16'hcd9b;
	#20
	A = 16'h2bc0;
	B = 16'hbb12;
	ans_a = 16'hcd9e;
	#20
	A = 16'hb84c;
	B = 16'hb682;
	ans_a = 16'hcd90;
	#20
	A = 16'hbfc0;
	B = 16'hb89f;
	ans_a = 16'hcd48;
	#20
	A = 16'h3fc0;
	B = 16'hb6de;
	ans_a = 16'hcd7d;
	#20
	A = 16'hbccf;
	B = 16'h2e09;
	ans_a = 16'hcd84;
	#20
	A = 16'h3e48;
	B = 16'hbe7f;
	ans_a = 16'hce27;
	#20
	A = 16'hbfb6;
	B = 16'h3be9;
	ans_a = 16'hcea1;
	#20
	A = 16'h3fb1;
	B = 16'h3ca3;
	ans_a = 16'hce12;
	#20
	A = 16'hbb61;
	B = 16'hbe2b;
	ans_a = 16'hcdb7;
	#20
	A = 16'h3b98;
	B = 16'h3a72;
	ans_a = 16'hcd86;
	#20
	A = 16'hb8a4;
	B = 16'hb413;
	ans_a = 16'hcd7d;
	#20
	A = 16'h3e45;
	B = 16'h3f83;
	ans_a = 16'hccc1;
	#20
	A = 16'h3bb2;
	B = 16'hb817;
	ans_a = 16'hcce0;
	#20
	A = 16'ha952;
	B = 16'hb85b;
	ans_a = 16'hccdf;
	#20
	A = 16'h3efb;
	B = 16'h3e8e;
	ans_a = 16'hcc28;
	#20
	A = 16'hbc12;
	B = 16'h3670;
	ans_a = 16'hcc42;
	#20
	A = 16'hacf2;
	B = 16'hbd7e;
	ans_a = 16'hcc3b;
	#20
	A = 16'h387d;
	B = 16'hbfc1;
	ans_a = 16'hcc81;
	#20
	A = 16'hbab8;
	B = 16'h3a4c;
	ans_a = 16'hccab;
	#20
	A = 16'hb92c;
	B = 16'hb976;
	ans_a = 16'hcc8f;
	#20
	A = 16'hb555;
	B = 16'h3c6d;
	ans_a = 16'hcca7;
	#20
	A = 16'h3b7c;
	B = 16'h3f50;
	ans_a = 16'hcc3a;
	#20
	A = 16'hbd67;
	B = 16'h3cd2;
	ans_a = 16'hcca2;
	#20
	A = 16'hbced;
	B = 16'h3fbe;
	ans_a = 16'hcd3a;
	#20
	A = 16'hb569;
	B = 16'haaf3;
	ans_a = 16'hcd39;
	#20
	A = 16'h3caf;
	B = 16'hb89d;
	ans_a = 16'hcd64;
	#20
	A = 16'hbcd1;
	B = 16'hb3cb;
	ans_a = 16'hcd51;
	#20
	A = 16'h4000;
	B = 16'h3e55;
	ans_a = 16'hcc86;
	#20
	A = 16'hb714;
	B = 16'hb349;
	ans_a = 16'hcc80;
	#20
	A = 16'h3dc0;
	B = 16'hbba4;
	ans_a = 16'hccd8;
	#20
	A = 16'h39c4;
	B = 16'h388b;
	ans_a = 16'hccbe;
	#20
	A = 16'hb33b;
	B = 16'h3c9a;
	ans_a = 16'hcccf;
	#20
	A = 16'h34c2;
	B = 16'hbfb6;
	ans_a = 16'hccf4;
	#20
	A = 16'hb885;
	B = 16'hbf52;
	ans_a = 16'hccb2;
	#20
	A = 16'h35aa;
	B = 16'h3e04;
	ans_a = 16'hcc90;
	#20
	A = 16'hbd59;
	B = 16'h3a2c;
	ans_a = 16'hccd2;
	#20
	A = 16'h3f4e;
	B = 16'hbf5d;
	ans_a = 16'hcda9;
	#20
	A = 16'ha12f;
	B = 16'hbf73;
	ans_a = 16'hcda8;
	#20
	A = 16'h3a1d;
	B = 16'h3928;
	ans_a = 16'hcd88;
	#20
	A = 16'hbf0c;
	B = 16'hbd77;
	ans_a = 16'hccee;
	#20
	A = 16'hba1a;
	B = 16'hba27;
	ans_a = 16'hccc8;
	#20
	A = 16'hb9bc;
	B = 16'hbcca;
	ans_a = 16'hcc91;
	#20
	A = 16'hba93;
	B = 16'hbf9b;
	ans_a = 16'hcc2d;
	#20
	A = 16'h3f25;
	B = 16'hbf1d;
	ans_a = 16'hccf8;
	#20
	A = 16'h3fae;
	B = 16'h3c3a;
	ans_a = 16'hcc76;
	#20
	A = 16'h3efb;
	B = 16'h38e5;
	ans_a = 16'hcc32;
	#20
	A = 16'hab4a;
	B = 16'h9dd8;
	ans_a = 16'hcc32;
	#20
	A = 16'h3d7e;
	B = 16'h30f2;
	ans_a = 16'hcc24;
	#20
	A = 16'h3c6d;
	B = 16'h3f27;
	ans_a = 16'hcb4b;
	#20
	A = 16'h352f;
	B = 16'hb50a;
	ans_a = 16'hcb58;
	#20
	A = 16'h3c41;
	B = 16'h36ea;
	ans_a = 16'hcb1d;
	#20
	A = 16'h3e46;
	B = 16'h3080;
	ans_a = 16'hcb01;
	#20
	A = 16'h3e5c;
	B = 16'hbcd1;
	ans_a = 16'hcbf6;
	#20
	A = 16'h3d52;
	B = 16'h3bfb;
	ans_a = 16'hcb4c;
	#20
	A = 16'hb69b;
	B = 16'h3bcb;
	ans_a = 16'hcb7f;
	#20
	A = 16'hbed5;
	B = 16'hbaab;
	ans_a = 16'hcac9;
	#20
	A = 16'h3d62;
	B = 16'hb629;
	ans_a = 16'hcb0b;
	#20
	A = 16'hbc94;
	B = 16'hbff6;
	ans_a = 16'hc9e8;
	#20
	A = 16'h38ba;
	B = 16'h3e7a;
	ans_a = 16'hc96e;
	#20
	A = 16'h3db1;
	B = 16'h3c8d;
	ans_a = 16'hc89f;
	#20
	A = 16'h3d39;
	B = 16'hbf23;
	ans_a = 16'hc9c9;
	#20
	A = 16'h3a57;
	B = 16'hbb9e;
	ans_a = 16'hca2a;
	#20
	A = 16'hb71e;
	B = 16'h37da;
	ans_a = 16'hca46;
	#20
	A = 16'hac79;
	B = 16'h347a;
	ans_a = 16'hca49;
	#20
	A = 16'hbaf0;
	B = 16'h3abf;
	ans_a = 16'hcaa7;
	#20
	A = 16'hbd59;
	B = 16'hbd75;
	ans_a = 16'hc9be;
	#20
	A = 16'hbc97;
	B = 16'h3d39;
	ans_a = 16'hca7e;
	#20
	A = 16'hb3a1;
	B = 16'hbe1a;
	ans_a = 16'hca4f;
	#20
	A = 16'hbd41;
	B = 16'h3fca;
	ans_a = 16'hcb96;
	#20
	A = 16'h350c;
	B = 16'h392a;
	ans_a = 16'hcb7c;
	#20
	A = 16'hbac2;
	B = 16'h3b09;
	ans_a = 16'hcbdb;
	#20
	A = 16'h3d2c;
	B = 16'hb38d;
	ans_a = 16'hcc01;
	#20
	A = 16'hbc72;
	B = 16'hbe14;
	ans_a = 16'hcb2a;
	#20
	A = 16'h3cec;
	B = 16'hb10e;
	ans_a = 16'hcb43;
	#20
	A = 16'hb9d5;
	B = 16'h3cb1;
	ans_a = 16'hcbb0;
	#20
	A = 16'h3ed2;
	B = 16'h3c66;
	ans_a = 16'hcac0;
	#20
	A = 16'hb2d6;
	B = 16'h2ca7;
	ans_a = 16'hcac2;
	#20
	A = 16'h38c6;
	B = 16'hb710;
	ans_a = 16'hcae4;
	#20
	A = 16'hbd03;
	B = 16'h3cc1;
	ans_a = 16'hcba3;
	#20
	A = 16'h3f9c;
	B = 16'h3e7b;
	ans_a = 16'hca18;
	#20
	A = 16'h346a;
	B = 16'h3099;
	ans_a = 16'hca13;
	#20
	A = 16'hbf95;
	B = 16'had2a;
	ans_a = 16'hc9ff;
	#20
	A = 16'h3c6b;
	B = 16'hb08c;
	ans_a = 16'hca13;
	#20
	A = 16'hb8a0;
	B = 16'h350f;
	ans_a = 16'hca2a;
	#20
	A = 16'h3d1e;
	B = 16'hbe88;
	ans_a = 16'hcb35;
	#20
	A = 16'hbf8d;
	B = 16'h3d51;
	ans_a = 16'hcc3b;
	#20
	A = 16'h304c;
	B = 16'hb6e3;
	ans_a = 16'hcc3f;
	#20
	A = 16'h3d50;
	B = 16'hbcfc;
	ans_a = 16'hcca9;
	#20
	A = 16'h3e35;
	B = 16'h3e68;
	ans_a = 16'hcc0a;
	#20
	A = 16'hbb30;
	B = 16'h37ef;
	ans_a = 16'hcc27;
	#20
	A = 16'hb458;
	B = 16'h3d21;
	ans_a = 16'hcc3d;
	#20
	A = 16'hbe14;
	B = 16'h3c3b;
	ans_a = 16'hcca4;
	#20
	A = 16'hbe69;
	B = 16'hbaab;
	ans_a = 16'hcc4e;
	#20
	A = 16'h363d;
	B = 16'h3a48;
	ans_a = 16'hcc3a;
	#20
	A = 16'h3e85;
	B = 16'ha389;
	ans_a = 16'hcc3c;
	#20
	A = 16'hbdca;
	B = 16'hbded;
	ans_a = 16'hcb66;
	#20
	A = 16'h3630;
	B = 16'h3c31;
	ans_a = 16'hcb32;
	#20
	A = 16'h3fab;
	B = 16'hbe54;
	ans_a = 16'hcc5b;
	#20
	A = 16'hbeb7;
	B = 16'h3e9d;
	ans_a = 16'hcd0d;
	#20
	A = 16'h3f43;
	B = 16'h3c40;
	ans_a = 16'hcc92;
	#20
	A = 16'hb849;
	B = 16'hb928;
	ans_a = 16'hcc7c;
	#20
	A = 16'h3e6e;
	B = 16'h3afb;
	ans_a = 16'hcc22;
	#20
	A = 16'hbd72;
	B = 16'hbb75;
	ans_a = 16'hcba2;
	#20
	A = 16'hb9d1;
	B = 16'h3ed3;
	ans_a = 16'hcc20;
	#20
	A = 16'hbb11;
	B = 16'h3a5d;
	ans_a = 16'hcc4d;
	#20
	A = 16'h3c4b;
	B = 16'h3e71;
	ans_a = 16'hcbbd;
	#20
	A = 16'h30a7;
	B = 16'hb77d;
	ans_a = 16'hcbc6;
	#20
	A = 16'hba2f;
	B = 16'h3c14;
	ans_a = 16'hcc15;
	#20
	A = 16'hbfd3;
	B = 16'hbb46;
	ans_a = 16'hcb46;
	#20
	A = 16'hbc2b;
	B = 16'hbcd3;
	ans_a = 16'hcaa5;
	#20
	A = 16'hbfba;
	B = 16'h3ae8;
	ans_a = 16'hcb7a;
	#20
	A = 16'h97e5;
	B = 16'h3a54;
	ans_a = 16'hcb7a;
	#20
	A = 16'h392a;
	B = 16'h3951;
	ans_a = 16'hcb43;
	#20
	A = 16'h357b;
	B = 16'h38c0;
	ans_a = 16'hcb29;
	#20
	A = 16'hbfeb;
	B = 16'hbe1b;
	ans_a = 16'hc9a6;
	#20
	A = 16'hbe35;
	B = 16'hbe73;
	ans_a = 16'hc866;
	#20
	A = 16'hb4dd;
	B = 16'hba30;
	ans_a = 16'hc848;
	#20
	A = 16'h3577;
	B = 16'hb5fe;
	ans_a = 16'hc858;
	#20
	A = 16'hbeb1;
	B = 16'h3a65;
	ans_a = 16'hc903;
	#20
	A = 16'hb69d;
	B = 16'h3d6e;
	ans_a = 16'hc94b;
	#20
	A = 16'h3c29;
	B = 16'h3db9;
	ans_a = 16'hc88c;
	#20
	A = 16'hbca7;
	B = 16'hb456;
	ans_a = 16'hc864;
	#20
	A = 16'h3d52;
	B = 16'h3fde;
	ans_a = 16'hc62a;
	#20
	A = 16'h3d93;
	B = 16'h3977;
	ans_a = 16'hc536;
	#20
	A = 16'h38aa;
	B = 16'hb10d;
	ans_a = 16'hc54e;
	#20
	A = 16'hbf95;
	B = 16'h3ce0;
	ans_a = 16'hc79e;
	#20
	A = 16'hb8f2;
	B = 16'h3c48;
	ans_a = 16'hc824;
	#20
	A = 16'h3da3;
	B = 16'h3fab;
	ans_a = 16'hc594;
	#20
	A = 16'hbd37;
	B = 16'h3d5f;
	ans_a = 16'hc754;
	#20
	A = 16'hb81d;
	B = 16'hbf78;
	ans_a = 16'hc65e;
	#20
	A = 16'hb8f5;
	B = 16'had46;
	ans_a = 16'hc651;
	#20
	A = 16'hb70d;
	B = 16'h37ce;
	ans_a = 16'hc688;
	#20
	A = 16'h32dc;
	B = 16'h3844;
	ans_a = 16'hc66b;
	#20
	A = 16'h3dd9;
	B = 16'hbd03;
	ans_a = 16'hc820;
	#20
	A = 16'h3095;
	B = 16'ha80a;
	ans_a = 16'hc821;
	#20
	A = 16'h3cf3;
	B = 16'hb82e;
	ans_a = 16'hc874;
	#20
	A = 16'hbee3;
	B = 16'h3d6b;
	ans_a = 16'hc99e;
	#20
	A = 16'h3d56;
	B = 16'hb6c4;
	ans_a = 16'hc9e6;
	#20
	A = 16'h3d93;
	B = 16'hbd5f;
	ans_a = 16'hcad6;
	#20
	A = 16'h3521;
	B = 16'h3d72;
	ans_a = 16'hca9e;
	#20
	A = 16'hbd32;
	B = 16'hbcda;
	ans_a = 16'hc9d4;
	#20
	A = 16'hbad7;
	B = 16'hbd8b;
	ans_a = 16'hc93c;
	#20
	A = 16'h3ed4;
	B = 16'h3e66;
	ans_a = 16'hc7bd;
	#20
	A = 16'hba90;
	B = 16'hbe89;
	ans_a = 16'hc666;
	#20
	A = 16'hbf7d;
	B = 16'h3c17;
	ans_a = 16'hc828;
	#20
	A = 16'hbd36;
	B = 16'hb910;
	ans_a = 16'hc77d;
	#20
	A = 16'hb581;
	B = 16'h34b6;
	ans_a = 16'hc797;
	#20
	A = 16'hbce1;
	B = 16'hba3f;
	ans_a = 16'hc6a3;
	#20
	A = 16'hbc46;
	B = 16'hbc76;
	ans_a = 16'hc572;
	#20
	A = 16'hb33f;
	B = 16'h3579;
	ans_a = 16'hc586;
	#20
	A = 16'hb8fd;
	B = 16'h3845;
	ans_a = 16'hc5db;
	#20
	A = 16'h3c39;
	B = 16'hbf16;
	ans_a = 16'hc7ba;
	#20
	A = 16'h358c;
	B = 16'hbf21;
	ans_a = 16'hc82c;
	#20
	A = 16'hb671;
	B = 16'h397f;
	ans_a = 16'hc84f;
	#20
	A = 16'hb91d;
	B = 16'hb324;
	ans_a = 16'hc83d;
	#20
	A = 16'hba4b;
	B = 16'h3982;
	ans_a = 16'hc882;
	#20
	A = 16'hbd0c;
	B = 16'hbe86;
	ans_a = 16'hc6f5;
	#20
	A = 16'hb83a;
	B = 16'hb0ff;
	ans_a = 16'hc6e0;
	#20
	A = 16'hbf5d;
	B = 16'hbf03;
	ans_a = 16'hc34c;
	#20
	A = 16'hb8c1;
	B = 16'hbdb1;
	ans_a = 16'hc19b;
	#20
	A = 16'hbede;
	B = 16'h357a;
	ans_a = 16'hc2c8;
	#20
	A = 16'hbe2e;
	B = 16'h39be;
	ans_a = 16'hc480;
	#20
	A = 16'hbba3;
	B = 16'h3241;
	ans_a = 16'hc4b0;
	#20
	A = 16'hb9aa;
	B = 16'hb939;
	ans_a = 16'hc43a;
	#20
	A = 16'hba9b;
	B = 16'hbd28;
	ans_a = 16'hc253;
	#20
	A = 16'hb51c;
	B = 16'hbab2;
	ans_a = 16'hc1ca;
	#20
	A = 16'h3cf0;
	B = 16'hb485;
	ans_a = 16'hc27c;
	#20
	A = 16'hbbd8;
	B = 16'hbe3b;
	ans_a = 16'hbedc;
	#20
	A = 16'haca2;
	B = 16'hbd1e;
	ans_a = 16'hbe7d;
	#20
	A = 16'h38a1;
	B = 16'h3e34;
	ans_a = 16'hb9cc;
	#20
	A = 16'hbf26;
	B = 16'hbbae;
	ans_a = 16'h3bee;
	#20
	A = 16'h3845;
	B = 16'h3c83;
	ans_a = 16'h3e60;
	#20
	A = 16'hb8bd;
	B = 16'hbdfb;
	ans_a = 16'h40f6;
	#20
	A = 16'h3829;
	B = 16'hbd2e;
	ans_a = 16'h3f3a;
	#20
	A = 16'hbf9f;
	B = 16'h3cad;
	ans_a = 16'hb6b8;
	#20
	A = 16'h3ee9;
	B = 16'h3c4e;
	ans_a = 16'h3dc2;
	#20
	A = 16'h3ce2;
	B = 16'h3dd1;
	ans_a = 16'h426e;
	#20
	A = 16'h9c4e;
	B = 16'hba4d;
	ans_a = 16'h4270;
	#20
	A = 16'h358b;
	B = 16'hbcaa;
	ans_a = 16'h41a1;
	#20
	A = 16'hb8cd;
	B = 16'h3805;
	ans_a = 16'h4107;
	#20
	A = 16'hbf46;
	B = 16'hbdc4;
	ans_a = 16'h4522;
	#20
	A = 16'hbf58;
	B = 16'hbde5;
	ans_a = 16'h47d6;
	#20
	A = 16'h3da1;
	B = 16'hb8c0;
	ans_a = 16'h4700;
	#20
	A = 16'hbfa8;
	B = 16'h3ee4;
	ans_a = 16'h4368;
	#20
	A = 16'hb416;
	B = 16'h3739;
	ans_a = 16'h432d;
	#20
	A = 16'h3f88;
	B = 16'hbd80;
	ans_a = 16'h3bfc;
	#20
	A = 16'hbecc;
	B = 16'hbefd;
	ans_a = 16'h43ef;
	#20
	A = 16'hb3df;
	B = 16'hbcdd;
	ans_a = 16'h4444;
	#20
	A = 16'hbcad;
	B = 16'hbca1;
	ans_a = 16'h459e;
	#20
	A = 16'hb5f0;
	B = 16'h39cf;
	ans_a = 16'h4559;
	#20
	A = 16'h34ed;
	B = 16'h3d3f;
	ans_a = 16'h45c0;
	#20
	A = 16'h3eda;
	B = 16'hb438;
	ans_a = 16'h454c;
	#20
	A = 16'h3b95;
	B = 16'hb8bf;
	ans_a = 16'h44bc;
	#20
	A = 16'h3e0e;
	B = 16'hbd4b;
	ans_a = 16'h4176;
	#20
	A = 16'h3c5e;
	B = 16'hbf12;
	ans_a = 16'h3a68;
	#20
	A = 16'hbcc4;
	B = 16'hbd08;
	ans_a = 16'h409a;
	#20
	A = 16'hbdc4;
	B = 16'h3c2e;
	ans_a = 16'h3a5c;
	#20
	A = 16'h3228;
	B = 16'hb49e;
	ans_a = 16'h39ea;
	#20
	A = 16'h3359;
	B = 16'hbc9d;
	ans_a = 16'h3797;
	#20
	A = 16'h3062;
	B = 16'hba13;
	ans_a = 16'h35ed;
	#20
	A = 16'h37e7;
	B = 16'hbd0c;
	ans_a = 16'hb40b;
	#20
	A = 16'hb9ff;
	B = 16'hbf8f;
	ans_a = 16'h3ca7;
	#20
	A = 16'hb881;
	B = 16'h396d;
	ans_a = 16'h3a40;
	#20
	A = 16'h3d76;
	B = 16'h3ae9;
	ans_a = 16'h3fd8;
	#20
	A = 16'h3d00;
	B = 16'h3c88;
	ans_a = 16'h42c1;
	#20
	A = 16'h34ae;
	B = 16'hbd1c;
	ans_a = 16'h4202;
	#20
	A = 16'h3b1f;
	B = 16'hb91f;
	ans_a = 16'h40de;
	#20
	A = 16'h3b1e;
	B = 16'hb338;
	ans_a = 16'h4077;
	#20
	A = 16'h3f6d;
	B = 16'h3db3;
	ans_a = 16'h44e0;
	#20
	A = 16'h3d2c;
	B = 16'hb9a7;
	ans_a = 16'h43ec;
	#20
	A = 16'h2957;
	B = 16'h3cf3;
	ans_a = 16'h4403;
	#20
	A = 16'hbc57;
	B = 16'hbc12;
	ans_a = 16'h451e;
	#20
	A = 16'hbc2e;
	B = 16'haee7;
	ans_a = 16'h453b;
	#20
	A = 16'h3e8f;
	B = 16'hb8e0;
	ans_a = 16'h443b;
	#20
	A = 16'hbd95;
	B = 16'hbcfa;
	ans_a = 16'h45f8;
	#20
	A = 16'h39e3;
	B = 16'hbaf0;
	ans_a = 16'h4555;
	#20
	A = 16'hb932;
	B = 16'hb947;
	ans_a = 16'h45c3;
	#20
	A = 16'hbbcd;
	B = 16'h390d;
	ans_a = 16'h4525;
	#20
	A = 16'h2c0a;
	B = 16'h3c27;
	ans_a = 16'h4536;
	#20
	A = 16'h2a50;
	B = 16'hb85b;
	ans_a = 16'h452f;
	#20
	A = 16'h3cf3;
	B = 16'h3b8f;
	ans_a = 16'h465a;
	#20
	A = 16'hbd45;
	B = 16'h370b;
	ans_a = 16'h45c6;
	#20
	A = 16'h246f;
	B = 16'h3ce6;
	ans_a = 16'h45cb;
	#20
	A = 16'hbc45;
	B = 16'hba97;
	ans_a = 16'h46ac;
	#20
	A = 16'hb84c;
	B = 16'h3f89;
	ans_a = 16'h45a9;
	#20
	A = 16'h2410;
	B = 16'hba6c;
	ans_a = 16'h45a6;
	#20
	A = 16'h3bee;
	B = 16'hbeae;
	ans_a = 16'h43fc;
	#20
	A = 16'h2d33;
	B = 16'ha51a;
	ans_a = 16'h43fb;
	#20
	A = 16'hc000;
	B = 16'hbde5;
	ans_a = 16'h46f0;
	#20
	A = 16'h3879;
	B = 16'hbc90;
	ans_a = 16'h464d;
	#20
	A = 16'h3a6a;
	B = 16'h3e90;
	ans_a = 16'h479e;
	#20
	A = 16'h342c;
	B = 16'h3e7c;
	ans_a = 16'h4805;
	#20
	A = 16'hbc0d;
	B = 16'h3eda;
	ans_a = 16'h464e;
	#20
	A = 16'hbc0d;
	B = 16'h3c42;
	ans_a = 16'h453a;
	#20
	A = 16'hb0f3;
	B = 16'h3d92;
	ans_a = 16'h4503;
	#20
	A = 16'h3828;
	B = 16'h3a7c;
	ans_a = 16'h456f;
	#20
	A = 16'h357d;
	B = 16'h3caf;
	ans_a = 16'h45d6;
	#20
	A = 16'hbe84;
	B = 16'h2db6;
	ans_a = 16'h45b1;
	#20
	A = 16'hbba6;
	B = 16'hbe94;
	ans_a = 16'h4744;
	#20
	A = 16'hbbc5;
	B = 16'hbcd6;
	ans_a = 16'h4838;
	#20
	A = 16'h377a;
	B = 16'hbf87;
	ans_a = 16'h478f;
	#20
	A = 16'h2dc9;
	B = 16'hbab1;
	ans_a = 16'h477c;
	#20
	A = 16'h3b06;
	B = 16'hbddf;
	ans_a = 16'h4632;
	#20
	A = 16'h3d48;
	B = 16'h3815;
	ans_a = 16'h46de;
	#20
	A = 16'h3eb1;
	B = 16'hbde9;
	ans_a = 16'h4465;
	#20
	A = 16'h3b0f;
	B = 16'h3c42;
	ans_a = 16'h4555;
	#20
	A = 16'hbb6f;
	B = 16'hbd1a;
	ans_a = 16'h4684;
	#20
	A = 16'hbf30;
	B = 16'hb874;
	ans_a = 16'h4784;
	#20
	A = 16'h3ab9;
	B = 16'hb00e;
	ans_a = 16'h4769;
	#20
	A = 16'hbd36;
	B = 16'hb4ca;
	ans_a = 16'h47cd;
	#20
	A = 16'h3f5f;
	B = 16'h36f5;
	ans_a = 16'h484d;
	#20
	A = 16'hbab9;
	B = 16'h3de7;
	ans_a = 16'h475c;
	#20
	A = 16'hbbb4;
	B = 16'hbbb5;
	ans_a = 16'h4825;
	#20
	A = 16'h3bf2;
	B = 16'h3d1c;
	ans_a = 16'h48c7;
	#20
	A = 16'h2bbe;
	B = 16'hb9a3;
	ans_a = 16'h48c2;
	#20
	A = 16'h3d0e;
	B = 16'h3f5d;
	ans_a = 16'h49ec;
	#20
	A = 16'h3a07;
	B = 16'hbdb4;
	ans_a = 16'h4962;
	#20
	A = 16'h3c24;
	B = 16'hba3c;
	ans_a = 16'h48fb;
	#20
	A = 16'hbd19;
	B = 16'hbf29;
	ans_a = 16'h4a1f;
	#20
	A = 16'h3c9c;
	B = 16'h3fe0;
	ans_a = 16'h4b42;
	#20
	A = 16'h3941;
	B = 16'h354f;
	ans_a = 16'h4b5e;
	#20
	A = 16'hb547;
	B = 16'hbc2b;
	ans_a = 16'h4b8a;
	#20
	A = 16'h3fe2;
	B = 16'h3f4e;
	ans_a = 16'h4cab;
	#20
	A = 16'hbffd;
	B = 16'hb8f1;
	ans_a = 16'h4cfa;
	#20
	A = 16'hb4c4;
	B = 16'h3e42;
	ans_a = 16'h4cdc;
	#20
	A = 16'hbfd2;
	B = 16'h3608;
	ans_a = 16'h4cad;
	#20
	A = 16'h3f55;
	B = 16'h3f81;
	ans_a = 16'h4d89;
	#20
	A = 16'h3a9a;
	B = 16'hbd4c;
	ans_a = 16'h4d43;
	#20
	A = 16'h3c7d;
	B = 16'hbda4;
	ans_a = 16'h4cde;
	#20
	A = 16'hb8fa;
	B = 16'hbb73;
	ans_a = 16'h4d03;
	#20
	A = 16'hbf12;
	B = 16'h1e8e;
	ans_a = 16'h4d02;
	#20
	A = 16'h3ff0;
	B = 16'hbac7;
	ans_a = 16'h4c96;
	#20
	A = 16'hbabe;
	B = 16'h36e0;
	ans_a = 16'h4c7f;
	#20
	A = 16'hb99f;
	B = 16'h33c1;
	ans_a = 16'h4c74;
	#20
	A = 16'h3bd5;
	B = 16'h3966;
	ans_a = 16'h4c9e;
	#20
	A = 16'had0d;
	B = 16'h37a7;
	ans_a = 16'h4c9c;
	#20
	A = 16'h3efe;
	B = 16'h3f91;
	ans_a = 16'h4d70;
	#20
	A = 16'hbc39;
	B = 16'hbcb2;
	ans_a = 16'h4dbf;
	#20
	A = 16'h38d3;
	B = 16'h3c02;
	ans_a = 16'h4de6;
	#20
	A = 16'hbf43;
	B = 16'h387b;
	ans_a = 16'h4da5;
	#20
	A = 16'h3d7c;
	B = 16'h3a37;
	ans_a = 16'h4de9;
	#20
	A = 16'hbebb;
	B = 16'hbe93;
	ans_a = 16'h4e9a;
	#20
	A = 16'h3fa7;
	B = 16'hbb08;
	ans_a = 16'h4e2e;
	#20
	A = 16'h3db1;
	B = 16'hbee2;
	ans_a = 16'h4d91;
	#20
	A = 16'h3cc6;
	B = 16'hbad1;
	ans_a = 16'h4d50;
	#20
	A = 16'hbf10;
	B = 16'h3a99;
	ans_a = 16'h4cf3;
	#20
	A = 16'hbcb6;
	B = 16'h3f5a;
	ans_a = 16'h4c68;
	#20
	A = 16'ha805;
	B = 16'hbd27;
	ans_a = 16'h4c6b;
	#20
	A = 16'hb992;
	B = 16'hbe71;
	ans_a = 16'h4cb3;
	#20
	A = 16'h3e47;
	B = 16'hbe45;
	ans_a = 16'h4c16;
	#20
	A = 16'h3b38;
	B = 16'h33be;
	ans_a = 16'h4c24;
	#20
	A = 16'hbf81;
	B = 16'hbb1e;
	ans_a = 16'h4c8f;
	#20
	A = 16'h32c5;
	B = 16'hbc78;
	ans_a = 16'h4c80;
	#20
	A = 16'h3c06;
	B = 16'hbf82;
	ans_a = 16'h4c07;
	#20
	A = 16'hbd82;
	B = 16'hbbcf;
	ans_a = 16'h4c5d;
	#20
	A = 16'hbaa9;
	B = 16'hb025;
	ans_a = 16'h4c64;
	#20
	A = 16'h3c9a;
	B = 16'hb2ae;
	ans_a = 16'h4c55;
	#20
	A = 16'h2f57;
	B = 16'hb9df;
	ans_a = 16'h4c50;
	#20
	A = 16'h3ff0;
	B = 16'hbb0c;
	ans_a = 16'h4bc0;
	#20
	A = 16'h3f57;
	B = 16'h3b3b;
	ans_a = 16'h4c4a;
	#20
	A = 16'h3916;
	B = 16'hb8c0;
	ans_a = 16'h4c32;
	#20
	A = 16'h2c8f;
	B = 16'h384c;
	ans_a = 16'h4c34;
	#20
	A = 16'h382b;
	B = 16'hbcc4;
	ans_a = 16'h4c0c;
	#20
	A = 16'hbda8;
	B = 16'h3fd7;
	ans_a = 16'h4ab5;
	#20
	A = 16'h3ae3;
	B = 16'hbc76;
	ans_a = 16'h4a3a;
	#20
	A = 16'h3f4e;
	B = 16'h3e3c;
	ans_a = 16'h4ba6;
	#20
	A = 16'h3c5a;
	B = 16'hb9ce;
	ans_a = 16'h4b41;
	#20
	A = 16'h3c5e;
	B = 16'h3126;
	ans_a = 16'h4b57;
	#20
	A = 16'h35a2;
	B = 16'hbefa;
	ans_a = 16'h4b08;
	#20
	A = 16'h3d47;
	B = 16'h3796;
	ans_a = 16'h4b58;
	#20
	A = 16'h3a5c;
	B = 16'hbfce;
	ans_a = 16'h4a92;
	#20
	A = 16'h3d87;
	B = 16'hbbeb;
	ans_a = 16'h49e3;
	#20
	A = 16'hbd83;
	B = 16'h3783;
	ans_a = 16'h4990;
	#20
	A = 16'hb889;
	B = 16'hba81;
	ans_a = 16'h49cb;
	#20
	A = 16'h35e2;
	B = 16'h3e61;
	ans_a = 16'h4a16;
	#20
	A = 16'h3e54;
	B = 16'h3cbb;
	ans_a = 16'h4b06;
	#20
	A = 16'h3f59;
	B = 16'h3b97;
	ans_a = 16'h4be5;
	#20
	A = 16'h35f3;
	B = 16'hb832;
	ans_a = 16'h4bcc;
	#20
	A = 16'h3fac;
	B = 16'hbeb0;
	ans_a = 16'h4a32;
	#20
	A = 16'hb2ab;
	B = 16'hbbe7;
	ans_a = 16'h4a4c;
	#20
	A = 16'h3c5f;
	B = 16'hbc5f;
	ans_a = 16'h49b3;
	#20
	A = 16'h3686;
	B = 16'h3d0c;
	ans_a = 16'h49f5;
	#20
	A = 16'hbe80;
	B = 16'h3f8b;
	ans_a = 16'h486d;
	#20
	A = 16'hbc78;
	B = 16'h3508;
	ans_a = 16'h4840;
	#20
	A = 16'h2ff9;
	B = 16'h3a22;
	ans_a = 16'h484c;
	#20
	A = 16'h3c03;
	B = 16'hb493;
	ans_a = 16'h4827;
	#20
	A = 16'h3fa8;
	B = 16'hbdff;
	ans_a = 16'h4570;
	#20
	A = 16'h3ee9;
	B = 16'h35b4;
	ans_a = 16'h460e;
	#20
	A = 16'h3cfe;
	B = 16'h346f;
	ans_a = 16'h4667;
	#20
	A = 16'hb077;
	B = 16'h3a23;
	ans_a = 16'h464c;
	#20
	A = 16'h3a70;
	B = 16'h3e40;
	ans_a = 16'h478e;
	#20
	A = 16'hb53e;
	B = 16'h30f1;
	ans_a = 16'h4781;
	#20
	A = 16'h3ff2;
	B = 16'hbd8e;
	ans_a = 16'h44bf;
	#20
	A = 16'hbd7a;
	B = 16'h333f;
	ans_a = 16'h4470;
	#20
	A = 16'hb7ee;
	B = 16'h3ce8;
	ans_a = 16'h43a9;
	#20
	A = 16'hbca1;
	B = 16'h3db7;
	ans_a = 16'h405a;
	#20
	A = 16'h38e1;
	B = 16'hbfc1;
	ans_a = 16'h3bf2;
	#20
	A = 16'hb487;
	B = 16'hb1c8;
	ans_a = 16'h3c2d;
	#20
	A = 16'h3537;
	B = 16'h39e9;
	ans_a = 16'h3d24;
	#20
	A = 16'h3dc9;
	B = 16'h3c23;
	ans_a = 16'h4190;
	#20
	A = 16'hb471;
	B = 16'hbc04;
	ans_a = 16'h421f;
	#20
	A = 16'h3cd5;
	B = 16'hbdd9;
	ans_a = 16'h3d2e;
	#20
	A = 16'hb494;
	B = 16'h3170;
	ans_a = 16'h3cfc;
	#20
	A = 16'h3f83;
	B = 16'h2ef9;
	ans_a = 16'h3dce;
	#20
	A = 16'h36c6;
	B = 16'h3a42;
	ans_a = 16'h3f21;
	#20
	A = 16'h3d20;
	B = 16'h380b;
	ans_a = 16'h40dc;
	#20
	A = 16'h326a;
	B = 16'h3c66;
	ans_a = 16'h414d;
	#20
	A = 16'h3299;
	B = 16'hbb40;
	ans_a = 16'h40ed;
	#20
	A = 16'h3f36;
	B = 16'hbb53;
	ans_a = 16'h3a80;
	#20
	A = 16'h3d7d;
	B = 16'hbec2;
	ans_a = 16'hbe06;
	#20
	A = 16'hbd30;
	B = 16'hbe8c;
	ans_a = 16'h38f0;
	#20
	A = 16'hbc07;
	B = 16'h342e;
	ans_a = 16'h35ab;
	#20
	A = 16'hbbec;
	B = 16'h3c12;
	ans_a = 16'hb93a;
	#20
	A = 16'h31b8;
	B = 16'hb603;
	ans_a = 16'hb9c4;
	#20
	A = 16'hbf09;
	B = 16'h3000;
	ans_a = 16'hbb86;
	#20
	A = 16'h3ae9;
	B = 16'hbedb;
	ans_a = 16'hc0d8;
	#20
	A = 16'hbfd4;
	B = 16'h38f7;
	ans_a = 16'hc346;
	#20
	A = 16'h3bc6;
	B = 16'hbb49;
	ans_a = 16'hc486;
	#20
	A = 16'h3da6;
	B = 16'h3912;
	ans_a = 16'hc342;
	#20
	A = 16'h3584;
	B = 16'hbed4;
	ans_a = 16'hc438;
	#20
	A = 16'h3e77;
	B = 16'h35f9;
	ans_a = 16'hc33b;
	#20
	A = 16'h3ef8;
	B = 16'h386d;
	ans_a = 16'hc14e;
	#20
	A = 16'hbb26;
	B = 16'hbd21;
	ans_a = 16'hbe07;
	#20
	A = 16'h3fbb;
	B = 16'h3e08;
	ans_a = 16'h3da1;
	#20
	A = 16'hb373;
	B = 16'hbc32;
	ans_a = 16'h3e9b;
	#20
	A = 16'hbe29;
	B = 16'hbee6;
	ans_a = 16'h444f;
	#20
	A = 16'h2e0b;
	B = 16'hb1a0;
	ans_a = 16'h444b;
	#20
	A = 16'hb236;
	B = 16'h38eb;
	ans_a = 16'h442c;
	#20
	A = 16'h274e;
	B = 16'h3bf3;
	ans_a = 16'h4433;
	#20
	A = 16'h3d62;
	B = 16'hb6dc;
	ans_a = 16'h433e;
	#20
	A = 16'hbeb5;
	B = 16'hbe64;
	ans_a = 16'h464d;
	#20
	A = 16'hba36;
	B = 16'h388a;
	ans_a = 16'h45dc;
	#20
	A = 16'hbc09;
	B = 16'h3c23;
	ans_a = 16'h44d1;
	#20
	A = 16'h39e1;
	B = 16'hacc6;
	ans_a = 16'h44c3;
	#20
	A = 16'h3c94;
	B = 16'hba16;
	ans_a = 16'h43c8;
	#20
	A = 16'h3ddb;
	B = 16'h3f22;
	ans_a = 16'h4680;
	#20
	A = 16'hba52;
	B = 16'hba94;
	ans_a = 16'h4726;
	#20
	A = 16'h3b18;
	B = 16'h33d8;
	ans_a = 16'h475e;
	#20
	A = 16'h3bc9;
	B = 16'h3d17;
	ans_a = 16'h484e;
	#20
	A = 16'h3387;
	B = 16'hb520;
	ans_a = 16'h4844;
	#20
	A = 16'hbd7d;
	B = 16'h2884;
	ans_a = 16'h483e;
	#20
	A = 16'h3d05;
	B = 16'hbc36;
	ans_a = 16'h472a;
	#20
	A = 16'hb57e;
	B = 16'h3264;
	ans_a = 16'h4718;
	#20
	A = 16'hb2d0;
	B = 16'hbf04;
	ans_a = 16'h4778;
	#20
	A = 16'h2eec;
	B = 16'hb174;
	ans_a = 16'h4773;
	#20
	A = 16'hbc3a;
	B = 16'hb289;
	ans_a = 16'h47aa;
	#20
	A = 16'hb3c0;
	B = 16'h3de6;
	ans_a = 16'h474f;
	#20
	A = 16'hb184;
	B = 16'h3f4a;
	ans_a = 16'h46ff;
	#20
	A = 16'h383d;
	B = 16'hbe6b;
	ans_a = 16'h4625;
	#20
	A = 16'hb84c;
	B = 16'h3824;
	ans_a = 16'h45de;
	#20
	A = 16'h3428;
	B = 16'hb208;
	ans_a = 16'h45d1;
	#20
	A = 16'hb861;
	B = 16'hbf51;
	ans_a = 16'h46d1;
	#20
	A = 16'hbb4f;
	B = 16'hbf67;
	ans_a = 16'h4841;
	#20
	A = 16'hbfc1;
	B = 16'hbc96;
	ans_a = 16'h495e;
	#20
	A = 16'hbc14;
	B = 16'h35e7;
	ans_a = 16'h492e;
	#20
	A = 16'h3d3c;
	B = 16'h3e4f;
	ans_a = 16'h4a36;
	#20
	A = 16'h3a92;
	B = 16'h3910;
	ans_a = 16'h4a78;
	#20
	A = 16'h390c;
	B = 16'h3d1d;
	ans_a = 16'h4adf;
	#20
	A = 16'h3e5e;
	B = 16'hbb1a;
	ans_a = 16'h4a2a;
	#20
	A = 16'h3d4a;
	B = 16'hbd3e;
	ans_a = 16'h494c;
	#20
	A = 16'hbf9f;
	B = 16'hb2ba;
	ans_a = 16'h497f;
	#20
	A = 16'hb95e;
	B = 16'hbece;
	ans_a = 16'h4a11;
	#20
	A = 16'hb9fb;
	B = 16'h3850;
	ans_a = 16'h49dd;
	#20
	A = 16'h3bed;
	B = 16'h392f;
	ans_a = 16'h4a2f;
	#20
	A = 16'hbe55;
	B = 16'h3ce3;
	ans_a = 16'h4938;
	#20
	A = 16'h3814;
	B = 16'hbf3d;
	ans_a = 16'h48c2;
	#20
	A = 16'hbf96;
	B = 16'hb410;
	ans_a = 16'h4900;
	#20
	A = 16'hb397;
	B = 16'hbfed;
	ans_a = 16'h493c;
	#20
	A = 16'h2e8a;
	B = 16'hbcfd;
	ans_a = 16'h492c;
	#20
	A = 16'hb0a0;
	B = 16'hb9ed;
	ans_a = 16'h493a;
	#20
	A = 16'h25f0;
	B = 16'hb944;
	ans_a = 16'h4938;
	#20
	A = 16'h3118;
	B = 16'hbcef;
	ans_a = 16'h491f;
	#20
	A = 16'h3d1b;
	B = 16'hbd9b;
	ans_a = 16'h483a;
	#20
	A = 16'hbbe4;
	B = 16'hbee5;
	ans_a = 16'h4914;
	#20
	A = 16'hb190;
	B = 16'h1eca;
	ans_a = 16'h4914;
	#20
	A = 16'h3e31;
	B = 16'hba83;
	ans_a = 16'h4873;
	#20
	A = 16'hbd9a;
	B = 16'hb8e6;
	ans_a = 16'h48e1;
	#20
	A = 16'h3eb2;
	B = 16'h3ef0;
	ans_a = 16'h4a54;
	#20
	A = 16'h3c6d;
	B = 16'h3fd1;
	ans_a = 16'h4b69;
	#20
	A = 16'h3dd3;
	B = 16'ha68a;
	ans_a = 16'h4b64;
	#20
	A = 16'hbb03;
	B = 16'h3e75;
	ans_a = 16'h4aaf;
	#20
	A = 16'h301e;
	B = 16'hba00;
	ans_a = 16'h4aa3;
	#20
	A = 16'hbfa2;
	B = 16'h34a1;
	ans_a = 16'h4a5c;
	#20
	A = 16'hb674;
	B = 16'h3fd8;
	ans_a = 16'h49f7;
	#20
	A = 16'h2fb9;
	B = 16'hbf75;
	ans_a = 16'h49da;
	#20
	A = 16'h3292;
	B = 16'ha061;
	ans_a = 16'h49da;
	#20
	A = 16'hb84f;
	B = 16'hb953;
	ans_a = 16'h4a08;
	#20
	A = 16'hbe63;
	B = 16'h3c75;
	ans_a = 16'h4924;
	#20
	A = 16'hb908;
	B = 16'h3eea;
	ans_a = 16'h4899;
	#20
	A = 16'h3922;
	B = 16'h3098;
	ans_a = 16'h48a5;
	#20
	A = 16'h3cc1;
	B = 16'h3b41;
	ans_a = 16'h492f;
	#20
	A = 16'h33bb;
	B = 16'h3c39;
	ans_a = 16'h4950;
	#20
	A = 16'hbccc;
	B = 16'hb187;
	ans_a = 16'h496b;
	#20
	A = 16'h347c;
	B = 16'haad9;
	ans_a = 16'h4969;
	#20
	A = 16'hbf10;
	B = 16'hb0b9;
	ans_a = 16'h498a;
	#20
	A = 16'hbe4a;
	B = 16'h3812;
	ans_a = 16'h4924;
	#20
	A = 16'h3d25;
	B = 16'hbcbf;
	ans_a = 16'h4861;
	#20
	A = 16'h30e0;
	B = 16'h359d;
	ans_a = 16'h4868;
	#20
	A = 16'h3cd9;
	B = 16'hb92a;
	ans_a = 16'h4804;
	#20
	A = 16'h33f1;
	B = 16'h391e;
	ans_a = 16'h4818;
	#20
	A = 16'hbfb5;
	B = 16'hbb29;
	ans_a = 16'h48f5;
	#20
	A = 16'hbfc7;
	B = 16'h37c8;
	ans_a = 16'h487c;
	#20
	A = 16'hbcb0;
	B = 16'h3f12;
	ans_a = 16'h46e6;
	#20
	A = 16'h2e76;
	B = 16'h3db1;
	ans_a = 16'h470b;
	#20
	A = 16'h3dc9;
	B = 16'hb711;
	ans_a = 16'h4668;
	#20
	A = 16'hbef9;
	B = 16'hb757;
	ans_a = 16'h4735;
	#20
	A = 16'hb7dd;
	B = 16'hbdbc;
	ans_a = 16'h47e9;
	#20
	A = 16'hbdaa;
	B = 16'h3e96;
	ans_a = 16'h4594;
	#20
	A = 16'h39f4;
	B = 16'h3add;
	ans_a = 16'h4637;
	#20
	A = 16'hbe65;
	B = 16'hbcc9;
	ans_a = 16'h4810;
	#20
	A = 16'hbe51;
	B = 16'h3c05;
	ans_a = 16'h468a;
	#20
	A = 16'h3197;
	B = 16'h3d04;
	ans_a = 16'h46c2;
	#20
	A = 16'ha6a1;
	B = 16'h3dac;
	ans_a = 16'h46b9;
	#20
	A = 16'hb9d3;
	B = 16'hbfc0;
	ans_a = 16'h4811;
	#20
	A = 16'h3ca4;
	B = 16'h38c8;
	ans_a = 16'h486a;
	#20
	A = 16'h3d73;
	B = 16'hbc51;
	ans_a = 16'h475c;
	#20
	A = 16'h3e67;
	B = 16'hbc60;
	ans_a = 16'h459c;
	#20
	A = 16'h3b25;
	B = 16'h3dcb;
	ans_a = 16'h46e7;
	#20
	A = 16'hbaff;
	B = 16'hbe83;
	ans_a = 16'h482a;
	#20
	A = 16'hb52e;
	B = 16'h3ea7;
	ans_a = 16'h47ca;
	#20
	A = 16'h3d7a;
	B = 16'hb017;
	ans_a = 16'h479d;
	#20
	A = 16'hbc85;
	B = 16'hbca7;
	ans_a = 16'h4877;
	#20
	A = 16'h3f34;
	B = 16'hb94f;
	ans_a = 16'h47bc;
	#20
	A = 16'h3dca;
	B = 16'hba8c;
	ans_a = 16'h468d;
	#20
	A = 16'h3e82;
	B = 16'h34c5;
	ans_a = 16'h4709;
	#20
	A = 16'h3eb3;
	B = 16'h9975;
	ans_a = 16'h4708;
	#20
	A = 16'h3da4;
	B = 16'h3fdc;
	ans_a = 16'h48e7;
	#20
	A = 16'hbe23;
	B = 16'h3d21;
	ans_a = 16'h47d6;
	#20
	A = 16'h3f07;
	B = 16'h397e;
	ans_a = 16'h4885;
	#20
	A = 16'hbf19;
	B = 16'hba4e;
	ans_a = 16'h4938;
	#20
	A = 16'h39e5;
	B = 16'hbefd;
	ans_a = 16'h4893;
	#20
	A = 16'hba7d;
	B = 16'h2c37;
	ans_a = 16'h488c;
	#20
	A = 16'hbec2;
	B = 16'hbc86;
	ans_a = 16'h4980;
	#20
	A = 16'hb525;
	B = 16'hbc57;
	ans_a = 16'h49ad;
	#20
	A = 16'hb892;
	B = 16'h3b7e;
	ans_a = 16'h4968;
	#20
	A = 16'hbe57;
	B = 16'hb422;
	ans_a = 16'h499c;
	#20
	A = 16'h3b6e;
	B = 16'hbe3a;
	ans_a = 16'h48e3;
	#20
	A = 16'hb503;
	B = 16'h3ea0;
	ans_a = 16'h48a1;
	#20
	A = 16'hb5a6;
	B = 16'h3ad9;
	ans_a = 16'h487a;
	#20
	A = 16'hbca0;
	B = 16'h3872;
	ans_a = 16'h4828;
	#20
	A = 16'h3d61;
	B = 16'h351a;
	ans_a = 16'h485f;
	#20
	A = 16'h3850;
	B = 16'hba27;
	ans_a = 16'h482a;
	#20
	A = 16'h3cd0;
	B = 16'h38bb;
	ans_a = 16'h4885;
	#20
	A = 16'hb625;
	B = 16'hbd23;
	ans_a = 16'h48c4;
	#20
	A = 16'hb29a;
	B = 16'hbcde;
	ans_a = 16'h48e4;
	#20
	A = 16'h3e67;
	B = 16'hb58e;
	ans_a = 16'h489d;
	#20
	A = 16'h39d1;
	B = 16'hbcd1;
	ans_a = 16'h482d;
	#20
	A = 16'h3c92;
	B = 16'hbef7;
	ans_a = 16'h465d;
	#20
	A = 16'hbdeb;
	B = 16'h3167;
	ans_a = 16'h461d;
	#20
	A = 16'h3b13;
	B = 16'h3ced;
	ans_a = 16'h4734;
	#20
	A = 16'h3a64;
	B = 16'hbd39;
	ans_a = 16'h4629;
	#20
	A = 16'h370f;
	B = 16'h3890;
	ans_a = 16'h4669;
	#20
	A = 16'hbaf9;
	B = 16'h3286;
	ans_a = 16'h463c;
	#20
	A = 16'hbdcb;
	B = 16'hbefb;
	ans_a = 16'h4862;
	#20
	A = 16'hbfae;
	B = 16'hae2e;
	ans_a = 16'h487a;
	#20
	A = 16'hb952;
	B = 16'hbcd3;
	ans_a = 16'h48e1;
	#20
	A = 16'h3c78;
	B = 16'hb7cd;
	ans_a = 16'h489b;
	#20
	A = 16'hbfcf;
	B = 16'hbaba;
	ans_a = 16'h496d;
	#20
	A = 16'hbd6a;
	B = 16'h3e26;
	ans_a = 16'h4863;
	#20
	A = 16'hab23;
	B = 16'h3f6a;
	ans_a = 16'h4856;
	#20
	A = 16'ha31e;
	B = 16'hb874;
	ans_a = 16'h4857;
	#20
	A = 16'h3909;
	B = 16'hbd45;
	ans_a = 16'h47da;
	#20
	A = 16'hbcb0;
	B = 16'hb5f9;
	ans_a = 16'h4825;
	#20
	A = 16'h2d74;
	B = 16'hbab8;
	ans_a = 16'h481c;
	#20
	A = 16'hbde5;
	B = 16'h2d36;
	ans_a = 16'h480d;
	#20
	A = 16'h35b2;
	B = 16'h3d08;
	ans_a = 16'h4846;
	#20
	A = 16'h337b;
	B = 16'h3e70;
	ans_a = 16'h4876;
	#20
	A = 16'h3b7a;
	B = 16'h3dec;
	ans_a = 16'h4927;
	#20
	A = 16'hb80e;
	B = 16'h3f09;
	ans_a = 16'h48b5;
	#20
	A = 16'hb7b5;
	B = 16'h3381;
	ans_a = 16'h48a7;
	#20
	A = 16'h391b;
	B = 16'h342c;
	ans_a = 16'h48bc;
	#20
	A = 16'hb986;
	B = 16'h3a1c;
	ans_a = 16'h4878;
	#20
	A = 16'hb851;
	B = 16'hbc39;
	ans_a = 16'h48c1;
	#20
	A = 16'h3b5a;
	B = 16'hba24;
	ans_a = 16'h4867;
	#20
	A = 16'hb9e5;
	B = 16'h3eb3;
	ans_a = 16'h4792;
	#20
	A = 16'ha64b;
	B = 16'hb1dc;
	ans_a = 16'h4793;
	#20
	A = 16'h31a1;
	B = 16'hb46d;
	ans_a = 16'h4787;
	#20
	A = 16'h38d3;
	B = 16'h35ce;
	ans_a = 16'h47bf;
	#20
	A = 16'hb949;
	B = 16'hbf01;
	ans_a = 16'h4874;
	#20
	A = 16'hbdc6;
	B = 16'h3605;
	ans_a = 16'h482e;
	#20
	A = 16'h2c0f;
	B = 16'hbfed;
	ans_a = 16'h481e;
	#20
	A = 16'hb000;
	B = 16'h3d9e;
	ans_a = 16'h4808;
	#20
	A = 16'h3cb4;
	B = 16'h3d1b;
	ans_a = 16'h48c8;
	#20
	A = 16'hbc76;
	B = 16'h3aac;
	ans_a = 16'h4851;
	#20
	A = 16'h3ca9;
	B = 16'h3d37;
	ans_a = 16'h4913;
	#20
	A = 16'h3c6e;
	B = 16'hb5bc;
	ans_a = 16'h48e0;
	#20
	A = 16'hbfad;
	B = 16'hac24;
	ans_a = 16'h48f0;
	#20
	A = 16'h3860;
	B = 16'hbffe;
	ans_a = 16'h4864;
	#20
	A = 16'h3e7e;
	B = 16'hbf83;
	ans_a = 16'h45bc;
	#20
	A = 16'h3451;
	B = 16'hbab7;
	ans_a = 16'h4582;
	#20
	A = 16'hb243;
	B = 16'hb4bd;
	ans_a = 16'h4591;
	#20
	A = 16'hb873;
	B = 16'hbebf;
	ans_a = 16'h4681;
	#20
	A = 16'hb2b8;
	B = 16'hba5c;
	ans_a = 16'h46ac;
	#20
	A = 16'hbb4a;
	B = 16'hbd6f;
	ans_a = 16'h47e9;
	#20
	A = 16'h362b;
	B = 16'hb6f1;
	ans_a = 16'h47be;
	#20
	A = 16'hbf38;
	B = 16'hbe72;
	ans_a = 16'h4953;
	#20
	A = 16'h3e16;
	B = 16'hbb71;
	ans_a = 16'h489e;
	#20
	A = 16'hb975;
	B = 16'h3968;
	ans_a = 16'h4863;
	#20
	A = 16'hb440;
	B = 16'h3262;
	ans_a = 16'h485c;
	#20
	A = 16'h2c5b;
	B = 16'h3d85;
	ans_a = 16'h4868;
	#20
	A = 16'h3e27;
	B = 16'h3d86;
	ans_a = 16'h4978;
	#20
	A = 16'hbdd6;
	B = 16'hb01d;
	ans_a = 16'h4990;
	#20
	A = 16'h3d86;
	B = 16'hbed7;
	ans_a = 16'h4862;
	#20
	A = 16'hbd77;
	B = 16'hbde4;
	ans_a = 16'h4964;
	#20
	A = 16'h3f23;
	B = 16'h3f98;
	ans_a = 16'h4b16;
	#20
	A = 16'hbdfc;
	B = 16'hbfe1;
	ans_a = 16'h4c48;
	#20
	A = 16'hbcab;
	B = 16'hbd11;
	ans_a = 16'h4ca7;
	#20
	A = 16'hb965;
	B = 16'h3866;
	ans_a = 16'h4c8f;
	#20
	A = 16'h3b38;
	B = 16'hbffb;
	ans_a = 16'h4c1c;
	#20
	A = 16'hbe6d;
	B = 16'hb9bd;
	ans_a = 16'h4c66;
	#20
	A = 16'h3ddb;
	B = 16'hb325;
	ans_a = 16'h4c51;
	#20
	A = 16'hbe0d;
	B = 16'h3801;
	ans_a = 16'h4c21;
	#20
	A = 16'h3f2f;
	B = 16'hbe75;
	ans_a = 16'h4acf;
	#20
	A = 16'hb30d;
	B = 16'h3941;
	ans_a = 16'h4abc;
	#20
	A = 16'hb920;
	B = 16'hb9d7;
	ans_a = 16'h4af8;
	#20
	A = 16'h3515;
	B = 16'hacbc;
	ans_a = 16'h4af5;
	#20
	A = 16'h3b32;
	B = 16'h3bf3;
	ans_a = 16'h4b67;
	#20
	A = 16'h36f9;
	B = 16'hbfb4;
	ans_a = 16'h4afc;
	#20
	A = 16'h327b;
	B = 16'h3d24;
	ans_a = 16'h4b1d;
	#20
	A = 16'hbc06;
	B = 16'ha5cb;
	ans_a = 16'h4b20;
	#20
	A = 16'hbdfe;
	B = 16'h354f;
	ans_a = 16'h4ae0;
	#20
	A = 16'h359e;
	B = 16'h35da;
	ans_a = 16'h4af0;
	#20
	A = 16'ha804;
	B = 16'h3b71;
	ans_a = 16'h4aec;
	#20
	A = 16'h3ac5;
	B = 16'hbd4a;
	ans_a = 16'h4a5d;
	#20
	A = 16'hbadf;
	B = 16'h3cef;
	ans_a = 16'h49d5;
	#20
	A = 16'hb92b;
	B = 16'h3eb2;
	ans_a = 16'h494b;
	#20
	A = 16'hbed5;
	B = 16'hbf65;
	ans_a = 16'h4adf;
	#20
	A = 16'hbda8;
	B = 16'hacbf;
	ans_a = 16'h4aec;
	#20
	A = 16'hb8d8;
	B = 16'hb634;
	ans_a = 16'h4b0a;
	#20
	A = 16'h3fa3;
	B = 16'h3f4c;
	ans_a = 16'h4c64;
	#20
	A = 16'h2ce1;
	B = 16'h3a5f;
	ans_a = 16'h4c68;
	#20
	A = 16'h3ea2;
	B = 16'hbb94;
	ans_a = 16'h4c04;
	#20
	A = 16'h34a3;
	B = 16'h3f37;
	ans_a = 16'h4c25;
	#20
	A = 16'hb8de;
	B = 16'h392b;
	ans_a = 16'h4c0c;
	#20
	A = 16'h3f22;
	B = 16'hbf97;
	ans_a = 16'h4a67;
	#20
	A = 16'hbea4;
	B = 16'h3f82;
	ans_a = 16'h48d8;
	#20
	A = 16'h3c37;
	B = 16'hbc52;
	ans_a = 16'h4846;
	#20
	A = 16'h37a5;
	B = 16'hb0a3;
	ans_a = 16'h483d;
	#20
	A = 16'hbf86;
	B = 16'hbb65;
	ans_a = 16'h491c;
	#20
	A = 16'h3db6;
	B = 16'h3b48;
	ans_a = 16'h49c2;
	#20
	A = 16'h3dc8;
	B = 16'hba60;
	ans_a = 16'h492f;
	#20
	A = 16'hbbe0;
	B = 16'h3517;
	ans_a = 16'h4907;
	#20
	A = 16'h2e85;
	B = 16'h3c2e;
	ans_a = 16'h4915;
	#20
	A = 16'h382c;
	B = 16'h3824;
	ans_a = 16'h4938;
	#20
	A = 16'hbf81;
	B = 16'hba1c;
	ans_a = 16'h49ef;
	#20
	A = 16'hbfbf;
	B = 16'hb920;
	ans_a = 16'h4a8e;
	#20
	A = 16'h3792;
	B = 16'h3e74;
	ans_a = 16'h4af0;
	#20
	A = 16'h371b;
	B = 16'hba67;
	ans_a = 16'h4ac2;
	#20
	A = 16'hbf74;
	B = 16'hbf63;
	ans_a = 16'h4c3d;
	#20
	A = 16'haba2;
	B = 16'hb62b;
	ans_a = 16'h4c3e;
	#20
	A = 16'h3749;
	B = 16'hba0e;
	ans_a = 16'h4c28;
	#20
	A = 16'hbdc2;
	B = 16'hbdef;
	ans_a = 16'h4cb1;
	#20
	A = 16'hbf4b;
	B = 16'h3796;
	ans_a = 16'h4c7a;
	#20
	A = 16'hbc5b;
	B = 16'hb616;
	ans_a = 16'h4c94;
	#20
	A = 16'h3c65;
	B = 16'hbd64;
	ans_a = 16'h4c35;
	#20
	A = 16'h3783;
	B = 16'h3dfc;
	ans_a = 16'h4c62;
	#20
	A = 16'h3c2a;
	B = 16'h3a10;
	ans_a = 16'h4c94;
	#20
	A = 16'h3e7a;
	B = 16'hbf62;
	ans_a = 16'h4baa;
	#20
	A = 16'h3cf9;
	B = 16'h367e;
	ans_a = 16'h4beb;
	#20
	A = 16'h2f01;
	B = 16'h3b5a;
	ans_a = 16'h4bf8;
	#20
	A = 16'hb9fa;
	B = 16'h3c04;
	ans_a = 16'h4b98;
	#20
	A = 16'h3d37;
	B = 16'h2d11;
	ans_a = 16'h4ba5;
	#20
	A = 16'hbaec;
	B = 16'hbd7a;
	ans_a = 16'h4c1e;
	#20
	A = 16'hbfb7;
	B = 16'hbcdb;
	ans_a = 16'h4cb4;
	#20
	A = 16'h3819;
	B = 16'hbe16;
	ans_a = 16'h4c82;
	#20
	A = 16'h3c31;
	B = 16'hb59e;
	ans_a = 16'h4c6a;
	#20
	A = 16'hb919;
	B = 16'hbc30;
	ans_a = 16'h4c95;
	#20
	A = 16'h3d1c;
	B = 16'hbbaa;
	ans_a = 16'h4c47;
	#20
	A = 16'h3a38;
	B = 16'haff0;
	ans_a = 16'h4c41;
	#20
	A = 16'hb84c;
	B = 16'h3da9;
	ans_a = 16'h4c10;
	#20
	A = 16'hbd31;
	B = 16'h3f7f;
	ans_a = 16'h4ae9;
	#20
	A = 16'h3995;
	B = 16'h3a75;
	ans_a = 16'h4b31;
	#20
	A = 16'h3da6;
	B = 16'h3de4;
	ans_a = 16'h4c1e;
	#20
	A = 16'h3176;
	B = 16'hbca4;
	ans_a = 16'h4c11;
	#20
	A = 16'h3ea8;
	B = 16'hbfec;
	ans_a = 16'h4a7c;
	#20
	A = 16'hbf7d;
	B = 16'hb98c;
	ans_a = 16'h4b22;
	#20
	A = 16'hb486;
	B = 16'hb76e;
	ans_a = 16'h4b33;
	#20
	A = 16'h387a;
	B = 16'hbf44;
	ans_a = 16'h4ab1;
	#20
	A = 16'hbf60;
	B = 16'h3c4a;
	ans_a = 16'h49b4;
	#20
	A = 16'h3df3;
	B = 16'hbec0;
	ans_a = 16'h4873;
	#20
	A = 16'h3a2e;
	B = 16'h3abe;
	ans_a = 16'h48c6;
	#20
	A = 16'hbb26;
	B = 16'hbf28;
	ans_a = 16'h4993;
	#20
	A = 16'hbe3a;
	B = 16'hb9c7;
	ans_a = 16'h4a23;
	#20
	A = 16'hb51e;
	B = 16'hb8bb;
	ans_a = 16'h4a3b;
	#20
	A = 16'haf66;
	B = 16'hbe85;
	ans_a = 16'h4a53;
	#20
	A = 16'haf74;
	B = 16'h35fa;
	ans_a = 16'h4a4d;
	#20
	A = 16'h3f10;
	B = 16'hb9fb;
	ans_a = 16'h49a4;
	#20
	A = 16'hbcb0;
	B = 16'hbfc2;
	ans_a = 16'h4ac7;
	#20
	A = 16'h3af1;
	B = 16'hb4f7;
	ans_a = 16'h4aa5;
	#20
	A = 16'h37e8;
	B = 16'h3f86;
	ans_a = 16'h4b1c;
	#20
	A = 16'h3f51;
	B = 16'h348a;
	ans_a = 16'h4b5e;
	#20
	A = 16'ha8e9;
	B = 16'hbd28;
	ans_a = 16'h4b64;
	#20
	A = 16'h3a56;
	B = 16'hbc86;
	ans_a = 16'h4af1;
	#20
	A = 16'h3e38;
	B = 16'hbe3d;
	ans_a = 16'h49bb;
	#20
	A = 16'h38dd;
	B = 16'hbbe6;
	ans_a = 16'h496e;
	#20
	A = 16'hb12a;
	B = 16'h34c7;
	ans_a = 16'h4968;
	#20
	A = 16'hbc19;
	B = 16'h3ec6;
	ans_a = 16'h488a;
	#20
	A = 16'hb828;
	B = 16'hb8d6;
	ans_a = 16'h48b2;
	#20
	A = 16'h39c6;
	B = 16'h3f0a;
	ans_a = 16'h4954;
	#20
	A = 16'h3c14;
	B = 16'hbaf0;
	ans_a = 16'h48e3;
	#20
	A = 16'h391f;
	B = 16'hbf7b;
	ans_a = 16'h484a;
	#20
	A = 16'hb59c;
	B = 16'hbe1d;
	ans_a = 16'h488f;
	#20
	A = 16'h3ed1;
	B = 16'h381f;
	ans_a = 16'h48ff;
	#20
	A = 16'h3e94;
	B = 16'h3c2c;
	ans_a = 16'h49da;
	#20
	A = 16'hbcf1;
	B = 16'h3d74;
	ans_a = 16'h4902;
	#20
	A = 16'hb407;
	B = 16'hbeae;
	ans_a = 16'h4938;
	#20
	A = 16'hbe4f;
	B = 16'hb6da;
	ans_a = 16'h498e;
	#20
	A = 16'h3835;
	B = 16'h3cb1;
	ans_a = 16'h49dd;
	#20
	A = 16'hbfdf;
	B = 16'h3b8d;
	ans_a = 16'h48ef;
	#20
	A = 16'hbfa8;
	B = 16'h3ecb;
	ans_a = 16'h469e;
	#20
	A = 16'hb927;
	B = 16'h355e;
	ans_a = 16'h4667;
	#20
	A = 16'hb449;
	B = 16'hb207;
	ans_a = 16'h4674;
	#20
	A = 16'hbfd9;
	B = 16'hbee1;
	ans_a = 16'h48ea;
	#20
	A = 16'hb40b;
	B = 16'hb5ab;
	ans_a = 16'h48f5;
	#20
	A = 16'hba82;
	B = 16'hbe87;
	ans_a = 16'h499f;
	#20
	A = 16'h3d57;
	B = 16'hbfdc;
	ans_a = 16'h484f;
	#20
	A = 16'h3da4;
	B = 16'hbd79;
	ans_a = 16'h46b0;
	#20
	A = 16'hb633;
	B = 16'h3df7;
	ans_a = 16'h461c;
	#20
	A = 16'h38da;
	B = 16'h3ed7;
	ans_a = 16'h4726;
	#20
	A = 16'hbe34;
	B = 16'hb419;
	ans_a = 16'h478c;
	#20
	A = 16'hb3a8;
	B = 16'hb494;
	ans_a = 16'h479e;
	#20
	A = 16'hb9f7;
	B = 16'h3bdd;
	ans_a = 16'h46e2;
	#20
	A = 16'h3bb5;
	B = 16'h34c4;
	ans_a = 16'h472b;
	#20
	A = 16'h3f7b;
	B = 16'h3cb1;
	ans_a = 16'h48ae;
	#20
	A = 16'hbcd0;
	B = 16'hb60e;
	ans_a = 16'h48e8;
	#20
	A = 16'hbdee;
	B = 16'hbe25;
	ans_a = 16'h4a0c;
	#20
	A = 16'hbdfa;
	B = 16'hbd92;
	ans_a = 16'h4b16;
	#20
	A = 16'h3286;
	B = 16'h3a56;
	ans_a = 16'h4b2b;
	#20
	A = 16'hbda3;
	B = 16'hbda5;
	ans_a = 16'h4c15;
	#20
	A = 16'hbc73;
	B = 16'hbe25;
	ans_a = 16'h4c82;
	#20
	A = 16'h3232;
	B = 16'h3ef8;
	ans_a = 16'h4c98;
	#20
	A = 16'hb7be;
	B = 16'hbe21;
	ans_a = 16'h4cc7;
	#20
	A = 16'h319a;
	B = 16'hbcce;
	ans_a = 16'h4cba;
	#20
	A = 16'hbe07;
	B = 16'h2e32;
	ans_a = 16'h4cb1;
	#20
	A = 16'hbdcf;
	B = 16'hbdba;
	ans_a = 16'h4d36;
	#20
	A = 16'h3ea2;
	B = 16'h3e8f;
	ans_a = 16'h4de4;
	#20
	A = 16'hbd92;
	B = 16'h3f1a;
	ans_a = 16'h4d46;
	#20
	A = 16'hbe66;
	B = 16'hb981;
	ans_a = 16'h4d8c;
	#20
	A = 16'hbd59;
	B = 16'h39da;
	ans_a = 16'h4d4d;
	#20
	A = 16'hbc3a;
	B = 16'hbb64;
	ans_a = 16'h4d8b;
	#20
	A = 16'hb75a;
	B = 16'hbc69;
	ans_a = 16'h4dab;
	#20
	A = 16'hbce4;
	B = 16'hbe53;
	ans_a = 16'h4e27;
	#20
	A = 16'hbdf7;
	B = 16'h3495;
	ans_a = 16'h4e0c;
	#20
	A = 16'h3e57;
	B = 16'h2a3e;
	ans_a = 16'h4e11;
	#20
	A = 16'h38e4;
	B = 16'h3097;
	ans_a = 16'h4e17;
	#20
	A = 16'h3c3f;
	B = 16'hba10;
	ans_a = 16'h4de4;
	#20
	A = 16'hbabd;
	B = 16'h3ce4;
	ans_a = 16'h4da2;
	#20
	A = 16'hbc83;
	B = 16'h3efd;
	ans_a = 16'h4d24;
	#20
	A = 16'hbe76;
	B = 16'hb64d;
	ans_a = 16'h4d4d;
	#20
	A = 16'h3b8b;
	B = 16'h3e8a;
	ans_a = 16'h4db0;
	#20
	A = 16'hbd68;
	B = 16'hb806;
	ans_a = 16'h4ddc;
	#20
	A = 16'h3f05;
	B = 16'hbce3;
	ans_a = 16'h4d53;
	#20
	A = 16'hb195;
	B = 16'h3cd0;
	ans_a = 16'h4d46;
	#20
	A = 16'hba2c;
	B = 16'h2e1d;
	ans_a = 16'h4d41;
	#20
	A = 16'h2960;
	B = 16'h35c4;
	ans_a = 16'h4d42;
	#20
	A = 16'h3b94;
	B = 16'hb5fa;
	ans_a = 16'h4d2b;
	#20
	A = 16'hbd7a;
	B = 16'h3467;
	ans_a = 16'h4d13;
	#20
	A = 16'hbc43;
	B = 16'h3c9d;
	ans_a = 16'h4cc4;
	#20
	A = 16'h3f79;
	B = 16'hbb74;
	ans_a = 16'h4c55;
	#20
	A = 16'h3da5;
	B = 16'h3e8b;
	ans_a = 16'h4ce9;
	#20
	A = 16'hbce5;
	B = 16'hbf67;
	ans_a = 16'h4d7a;
	#20
	A = 16'h391b;
	B = 16'h2d69;
	ans_a = 16'h4d7d;
	#20
	A = 16'hbfcb;
	B = 16'hbcbb;
	ans_a = 16'h4e10;
	#20
	A = 16'hbd1b;
	B = 16'hb4d6;
	ans_a = 16'h4e29;
	#20
	A = 16'hb21e;
	B = 16'hb8e5;
	ans_a = 16'h4e30;
	#20
	A = 16'h3d50;
	B = 16'hbfa1;
	ans_a = 16'h4d8e;
	#20
	A = 16'h3c25;
	B = 16'hbd17;
	ans_a = 16'h4d3a;
	#20
	A = 16'hb525;
	B = 16'hbf06;
	ans_a = 16'h4d5e;
	#20
	A = 16'hbede;
	B = 16'h3eb9;
	ans_a = 16'h4ca5;
	#20
	A = 16'h3d73;
	B = 16'h2fc9;
	ans_a = 16'h4cb0;
	#20
	A = 16'hb5c8;
	B = 16'hbcf0;
	ans_a = 16'h4ccd;
	#20
	A = 16'hb269;
	B = 16'hbc83;
	ans_a = 16'h4cdb;
	#20
	A = 16'h3f13;
	B = 16'h3e99;
	ans_a = 16'h4d96;
	#20
	A = 16'h3d49;
	B = 16'h3685;
	ans_a = 16'h4db8;
	#20
	A = 16'h3b96;
	B = 16'h3c9f;
	ans_a = 16'h4dfe;
	#20
	A = 16'h3a41;
	B = 16'h3e70;
	ans_a = 16'h4e4e;
	#20
	A = 16'h313a;
	B = 16'h3e58;
	ans_a = 16'h4e5f;
	#20
	A = 16'h3da9;
	B = 16'hb39f;
	ans_a = 16'h4e49;
	#20
	A = 16'h3b1d;
	B = 16'h3d98;
	ans_a = 16'h4e99;
	#20
	A = 16'hbc96;
	B = 16'h3f07;
	ans_a = 16'h4e18;
	#20
	A = 16'h3bae;
	B = 16'hbf45;
	ans_a = 16'h4da8;
	#20
	A = 16'hbe46;
	B = 16'h391d;
	ans_a = 16'h4d68;
	#20
	A = 16'h3c38;
	B = 16'hbd45;
	ans_a = 16'h4d0f;
	#20
	A = 16'h3c86;
	B = 16'h3309;
	ans_a = 16'h4d1f;
	#20
	A = 16'hbc3b;
	B = 16'h3c80;
	ans_a = 16'h4cd3;
	#20
	A = 16'hbe1d;
	B = 16'h3e51;
	ans_a = 16'h4c38;
	#20
	A = 16'hbdb7;
	B = 16'hbd6c;
	ans_a = 16'h4cb4;
	#20
	A = 16'h3f28;
	B = 16'h3bd7;
	ans_a = 16'h4d24;
	#20
	A = 16'hbb16;
	B = 16'h3c8f;
	ans_a = 16'h4ce3;
	#20
	A = 16'hb8f3;
	B = 16'h20df;
	ans_a = 16'h4ce3;
	#20
	A = 16'h3d48;
	B = 16'h3dc5;
	ans_a = 16'h4d5d;
	#20
	A = 16'h35b8;
	B = 16'h3d16;
	ans_a = 16'h4d7a;
	#20
	A = 16'h36b4;
	B = 16'hb0ba;
	ans_a = 16'h4d76;
	#20
	A = 16'h3885;
	B = 16'hb016;
	ans_a = 16'h4d71;
	#20
	A = 16'hbbfe;
	B = 16'h38b9;
	ans_a = 16'h4d4b;
	#20
	A = 16'hbd79;
	B = 16'h3dff;
	ans_a = 16'h4cc8;
	#20
	A = 16'h2a88;
	B = 16'hb40f;
	ans_a = 16'h4cc7;
	#20
	A = 16'h3bbc;
	B = 16'hbdbe;
	ans_a = 16'h4c6e;
	#20
	A = 16'h369a;
	B = 16'hbad6;
	ans_a = 16'h4c57;
	#20
	A = 16'hb0e9;
	B = 16'hb528;
	ans_a = 16'h4c5a;
	#20
	A = 16'hbac3;
	B = 16'h3c1f;
	ans_a = 16'h4c22;
	#20
	A = 16'h3cfa;
	B = 16'h3de2;
	ans_a = 16'h4c97;
	#20
	A = 16'h3e27;
	B = 16'h3dc2;
	ans_a = 16'h4d25;
	#20
	A = 16'hbfd3;
	B = 16'hb6fd;
	ans_a = 16'h4d5c;
	#20
	A = 16'hbe7e;
	B = 16'h3eae;
	ans_a = 16'h4cae;
	#20
	A = 16'hbf9d;
	B = 16'hbf7c;
	ans_a = 16'h4d92;
	#20
	A = 16'h3af1;
	B = 16'h3cd8;
	ans_a = 16'h4dd5;
	#20
	A = 16'had13;
	B = 16'h3c11;
	ans_a = 16'h4dd0;
	#20
	A = 16'hbfce;
	B = 16'hbc72;
	ans_a = 16'h4e5b;
	#20
	A = 16'hb1a3;
	B = 16'hbc61;
	ans_a = 16'h4e67;
	#20
	A = 16'hbc36;
	B = 16'h3b62;
	ans_a = 16'h4e29;
	#20
	A = 16'hb223;
	B = 16'h2e65;
	ans_a = 16'h4e28;
	#20
	A = 16'h3e15;
	B = 16'hb046;
	ans_a = 16'h4e1b;
	#20
	A = 16'h3d76;
	B = 16'hbe63;
	ans_a = 16'h4d90;
	#20
	A = 16'h3b49;
	B = 16'hbe07;
	ans_a = 16'h4d38;
	#20
	A = 16'h3d17;
	B = 16'h3b87;
	ans_a = 16'h4d85;
	#20
	A = 16'h3c84;
	B = 16'hbea4;
	ans_a = 16'h4d0d;
	#20
	A = 16'hb1f1;
	B = 16'h3669;
	ans_a = 16'h4d08;
	#20
	A = 16'h3c74;
	B = 16'h3c7c;
	ans_a = 16'h4d58;
	#20
	A = 16'hbd4e;
	B = 16'h3ec9;
	ans_a = 16'h4cc8;
	#20
	A = 16'hbcf7;
	B = 16'h3895;
	ans_a = 16'h4c9a;
	#20
	A = 16'hbc0d;
	B = 16'hb99e;
	ans_a = 16'h4cc8;
	#20
	A = 16'h3822;
	B = 16'h3f60;
	ans_a = 16'h4d05;
	#20
	A = 16'hbdea;
	B = 16'h3ad7;
	ans_a = 16'h4cb4;
	#20
	A = 16'h3803;
	B = 16'h2953;
	ans_a = 16'h4cb5;
	#20
	A = 16'h3613;
	B = 16'hb820;
	ans_a = 16'h4ca8;
	#20
	A = 16'h3ee0;
	B = 16'hb974;
	ans_a = 16'h4c5d;
	#20
	A = 16'hbade;
	B = 16'hbd04;
	ans_a = 16'h4ca2;
	#20
	A = 16'h344b;
	B = 16'h3d63;
	ans_a = 16'h4cb9;
	#20
	A = 16'hbe70;
	B = 16'h3a6a;
	ans_a = 16'h4c66;
	#20
	A = 16'hb9ea;
	B = 16'haded;
	ans_a = 16'h4c6a;
	#20
	A = 16'hb631;
	B = 16'h398a;
	ans_a = 16'h4c59;
	#20
	A = 16'hb8c9;
	B = 16'h9e0b;
	ans_a = 16'h4c59;
	#20
	A = 16'h3e1e;
	B = 16'hb9f1;
	ans_a = 16'h4c10;
	#20
	A = 16'hbd8f;
	B = 16'h3a15;
	ans_a = 16'h4b99;
	#20
	A = 16'hbbea;
	B = 16'hb1e9;
	ans_a = 16'h4bb0;
	#20
	A = 16'h3c64;
	B = 16'h3cab;
	ans_a = 16'h4c2a;
	#20
	A = 16'hbd43;
	B = 16'h3bfd;
	ans_a = 16'h4bac;
	#20
	A = 16'hbca2;
	B = 16'hb8b7;
	ans_a = 16'h4c02;
	#20
	A = 16'h3c68;
	B = 16'hbbc8;
	ans_a = 16'h4b7b;
	#20
	A = 16'h3cbf;
	B = 16'h3bc6;
	ans_a = 16'h4c07;
	#20
	A = 16'h3840;
	B = 16'h3d9c;
	ans_a = 16'h4c37;
	#20
	A = 16'hb7b6;
	B = 16'h3c55;
	ans_a = 16'h4c16;
	#20
	A = 16'h3db1;
	B = 16'hbf87;
	ans_a = 16'h4ad5;
	#20
	A = 16'hbe14;
	B = 16'h29ac;
	ans_a = 16'h4acc;
	#20
	A = 16'hbf7e;
	B = 16'hbd0f;
	ans_a = 16'h4bfb;
	#20
	A = 16'h3be2;
	B = 16'h38fa;
	ans_a = 16'h4c25;
	#20
	A = 16'haf06;
	B = 16'h32a7;
	ans_a = 16'h4c24;
	#20
	A = 16'hb4a9;
	B = 16'hb1ab;
	ans_a = 16'h4c27;
	#20
	A = 16'h3ccc;
	B = 16'h3cc2;
	ans_a = 16'h4c82;
	#20
	A = 16'hbc62;
	B = 16'h3b6d;
	ans_a = 16'h4c41;
	#20
	A = 16'h3580;
	B = 16'h3c7e;
	ans_a = 16'h4c5a;
	#20
	A = 16'h3699;
	B = 16'h2c09;
	ans_a = 16'h4c5c;
	#20
	A = 16'h386a;
	B = 16'h36a3;
	ans_a = 16'h4c6b;
	#20
	A = 16'hbdee;
	B = 16'hb96d;
	ans_a = 16'h4cab;
	#20
	A = 16'h3c85;
	B = 16'h3e6a;
	ans_a = 16'h4d1f;
	#20
	A = 16'hb8bd;
	B = 16'hb9ca;
	ans_a = 16'h4d3a;
	#20
	A = 16'h30da;
	B = 16'h340c;
	ans_a = 16'h4d3c;
	#20
	A = 16'h3626;
	B = 16'hba4b;
	ans_a = 16'h4d29;
	#20
	A = 16'h302a;
	B = 16'h3010;
	ans_a = 16'h4d2a;
	#20
	A = 16'hb9c0;
	B = 16'h1897;
	ans_a = 16'h4d2a;
	#20
	A = 16'hbeda;
	B = 16'hbefb;
	ans_a = 16'h4de9;
	#20
	A = 16'h3c57;
	B = 16'hbf82;
	ans_a = 16'h4d67;
	#20
	A = 16'hbf38;
	B = 16'hbef4;
	ans_a = 16'h4e30;
	#20
	A = 16'h3864;
	B = 16'h3f71;
	ans_a = 16'h4e71;
	#20
	A = 16'hb9a4;
	B = 16'hbe1d;
	ans_a = 16'h4eb6;
	#20
	A = 16'hbdb0;
	B = 16'h2c3a;
	ans_a = 16'h4eb0;
	#20
	A = 16'h281a;
	B = 16'hbea7;
	ans_a = 16'h4ead;
	#20
	A = 16'h37cb;
	B = 16'hbdcc;
	ans_a = 16'h4e80;
	#20
	A = 16'hbf98;
	B = 16'h3a04;
	ans_a = 16'h4e25;
	#20
	A = 16'h3d75;
	B = 16'hb754;
	ans_a = 16'h4dfd;
	#20
	A = 16'hb5fe;
	B = 16'hbe7b;
	ans_a = 16'h4e24;
	#20
	A = 16'hbb48;
	B = 16'hbd54;
	ans_a = 16'h4e72;
	#20
	A = 16'h3852;
	B = 16'hbd8f;
	ans_a = 16'h4e42;
	#20
	A = 16'hbb5b;
	B = 16'h2dc8;
	ans_a = 16'h4e3d;
	#20
	A = 16'hb993;
	B = 16'h3827;
	ans_a = 16'h4e26;
	#20
	A = 16'hbb80;
	B = 16'h3e20;
	ans_a = 16'h4dca;
	#20
	A = 16'hab68;
	B = 16'hb801;
	ans_a = 16'h4dcc;
	#20
	A = 16'hbaca;
	B = 16'h20e4;
	ans_a = 16'h4dcb;
	#20
	A = 16'hbdc3;
	B = 16'h3695;
	ans_a = 16'h4da5;
	#20
	A = 16'hbf46;
	B = 16'h3fb0;
	ans_a = 16'h4cc5;
	#20
	A = 16'hb5ee;
	B = 16'had06;
	ans_a = 16'h4cc7;
	#20
	A = 16'h279c;
	B = 16'hbddb;
	ans_a = 16'h4cc4;
	#20
	A = 16'hb577;
	B = 16'h3478;
	ans_a = 16'h4cbe;
	#20
	A = 16'h3f87;
	B = 16'hb921;
	ans_a = 16'h4c71;
	#20
	A = 16'h3e07;
	B = 16'h393e;
	ans_a = 16'h4cb0;
	#20
	A = 16'hb92d;
	B = 16'hbcec;
	ans_a = 16'h4ce3;
	#20
	A = 16'hbc9f;
	B = 16'hbbc7;
	ans_a = 16'h4d2b;
	#20
	A = 16'hb5b6;
	B = 16'haf7a;
	ans_a = 16'h4d2e;
	#20
	A = 16'hba03;
	B = 16'h3d99;
	ans_a = 16'h4ceb;
	#20
	A = 16'h2c4e;
	B = 16'h3fc8;
	ans_a = 16'h4cf3;
	#20
	A = 16'hb876;
	B = 16'hbe5c;
	ans_a = 16'h4d2c;
	#20
	A = 16'hbb93;
	B = 16'h2e04;
	ans_a = 16'h4d26;
	#20
	A = 16'h3651;
	B = 16'ha93f;
	ans_a = 16'h4d25;
	#20
	A = 16'h3b0e;
	B = 16'hbca5;
	ans_a = 16'h4ce3;
	#20
	A = 16'h3d3f;
	B = 16'h2ffe;
	ans_a = 16'h4ced;
	#20
	A = 16'h3c9d;
	B = 16'had54;
	ans_a = 16'h4ce7;
	#20
	A = 16'h3e37;
	B = 16'hbf4b;
	ans_a = 16'h4c32;
	#20
	A = 16'h357a;
	B = 16'h39de;
	ans_a = 16'h4c42;
	#20
	A = 16'had29;
	B = 16'hac4f;
	ans_a = 16'h4c42;
	#20
	A = 16'h3ebd;
	B = 16'h3b44;
	ans_a = 16'h4ca4;
	#20
	A = 16'h3b68;
	B = 16'h3f3d;
	ans_a = 16'h4d0f;
	#20
	A = 16'h386b;
	B = 16'h3ccc;
	ans_a = 16'h4d39;
	#20
	A = 16'h2088;
	B = 16'hb74c;
	ans_a = 16'h4d39;
	#20
	A = 16'hbd4c;
	B = 16'hbc49;
	ans_a = 16'h4d94;
	#20
	A = 16'h3c5e;
	B = 16'hbf24;
	ans_a = 16'h4d17;
	#20
	A = 16'hbacf;
	B = 16'h37d6;
	ans_a = 16'h4cfc;
	#20
	A = 16'h35d7;
	B = 16'h3ed0;
	ans_a = 16'h4d24;
	#20
	A = 16'hbac4;
	B = 16'h3af6;
	ans_a = 16'h4cf5;
	#20
	A = 16'hb82f;
	B = 16'hb663;
	ans_a = 16'h4d02;
	#20
	A = 16'h3d52;
	B = 16'h3f3c;
	ans_a = 16'h4d9c;
	#20
	A = 16'hac2f;
	B = 16'hb984;
	ans_a = 16'h4d9f;
	#20
	A = 16'h3c19;
	B = 16'hbd2e;
	ans_a = 16'h4d4a;
	#20
	A = 16'h3744;
	B = 16'hbada;
	ans_a = 16'h4d31;
	#20
	A = 16'h3c7e;
	B = 16'hbe9a;
	ans_a = 16'h4cba;
	#20
	A = 16'hbcf2;
	B = 16'hbb89;
	ans_a = 16'h4d04;
	#20
	A = 16'ha650;
	B = 16'h3101;
	ans_a = 16'h4d04;
	#20
	A = 16'hbf00;
	B = 16'h3e2f;
	ans_a = 16'h4c57;
	#20
	A = 16'h3d30;
	B = 16'hbfd0;
	ans_a = 16'h4b6a;
	#20
	A = 16'h3f6c;
	B = 16'h3c0f;
	ans_a = 16'h4c2e;
	#20
	A = 16'h3dcc;
	B = 16'hacde;
	ans_a = 16'h4c27;
	#20
	A = 16'h3956;
	B = 16'hb548;
	ans_a = 16'h4c19;
	#20
	A = 16'hbfeb;
	B = 16'hbf42;
	ans_a = 16'h4cff;
	#20
	A = 16'hb1ba;
	B = 16'hbd58;
	ans_a = 16'h4d0e;
	#20
	A = 16'h3f73;
	B = 16'hb1be;
	ans_a = 16'h4cf9;
	#20
	A = 16'h3c92;
	B = 16'hbcca;
	ans_a = 16'h4ca1;
	#20
	A = 16'hbf47;
	B = 16'h3c0e;
	ans_a = 16'h4c2b;
	#20
	A = 16'h3b9b;
	B = 16'h3e2b;
	ans_a = 16'h4c89;
	#20
	A = 16'ha648;
	B = 16'h3c62;
	ans_a = 16'h4c87;
	#20
	A = 16'hbad0;
	B = 16'h3e18;
	ans_a = 16'h4c34;
	#20
	A = 16'hb995;
	B = 16'h3ebf;
	ans_a = 16'h4bd1;
	#20
	A = 16'h3c17;
	B = 16'hb605;
	ans_a = 16'h4ba0;
	#20
	A = 16'hb62d;
	B = 16'hb83a;
	ans_a = 16'h4bba;
	#20
	A = 16'hb9e1;
	B = 16'h3a87;
	ans_a = 16'h4b6d;
	#20
	A = 16'h383f;
	B = 16'h3cc6;
	ans_a = 16'h4bbe;
	#20
	A = 16'hbec9;
	B = 16'h3faa;
	ans_a = 16'h4a1e;
	#20
	A = 16'hb88c;
	B = 16'h3300;
	ans_a = 16'h4a0e;
	#20
	A = 16'h3350;
	B = 16'h3f2c;
	ans_a = 16'h4a42;
	#20
	A = 16'hbde8;
	B = 16'hbe4d;
	ans_a = 16'h4b6c;
	#20
	A = 16'hb961;
	B = 16'hbeb7;
	ans_a = 16'h4bfc;
	#20
	A = 16'hbee6;
	B = 16'h3cb3;
	ans_a = 16'h4af9;
	#20
	A = 16'h3c6b;
	B = 16'hbbf3;
	ans_a = 16'h4a6c;
	#20
	A = 16'h3ac6;
	B = 16'hbb8d;
	ans_a = 16'h4a06;
	#20
	A = 16'h3f07;
	B = 16'hbb7e;
	ans_a = 16'h4933;
	#20
	A = 16'h2a74;
	B = 16'hbf42;
	ans_a = 16'h4927;
	#20
	A = 16'h3c1a;
	B = 16'hbadb;
	ans_a = 16'h48b6;
	#20
	A = 16'hb9db;
	B = 16'h3445;
	ans_a = 16'h489d;
	#20
	A = 16'h3903;
	B = 16'hb919;
	ans_a = 16'h486a;
	#20
	A = 16'ha6d4;
	B = 16'hb88b;
	ans_a = 16'h486c;
	#20
	A = 16'hbffa;
	B = 16'h3772;
	ans_a = 16'h47ea;
	#20
	A = 16'hbf6e;
	B = 16'hbbf3;
	ans_a = 16'h48e1;
	#20
	A = 16'hb71e;
	B = 16'h3f59;
	ans_a = 16'h4878;
	#20
	A = 16'h33c3;
	B = 16'h2879;
	ans_a = 16'h4879;
	#20
	A = 16'hbce7;
	B = 16'h3e07;
	ans_a = 16'h4719;
	#20
	A = 16'hbf18;
	B = 16'h3d9d;
	ans_a = 16'h449c;
	#20
	A = 16'haed3;
	B = 16'h389e;
	ans_a = 16'h448c;
	#20
	A = 16'h3c35;
	B = 16'hbcd9;
	ans_a = 16'h428c;
	#20
	A = 16'h3c60;
	B = 16'hb8c1;
	ans_a = 16'h413f;
	#20
	A = 16'hb855;
	B = 16'hbd47;
	ans_a = 16'h42ad;
	#20
	A = 16'h3e30;
	B = 16'h393c;
	ans_a = 16'h445a;
	#20
	A = 16'hb4f3;
	B = 16'hbe09;
	ans_a = 16'h44d2;
	#20
	A = 16'h3f16;
	B = 16'hb421;
	ans_a = 16'h445d;
	#20
	A = 16'h38b1;
	B = 16'h3c1f;
	ans_a = 16'h44f8;
	#20
	A = 16'h3a71;
	B = 16'h3f4b;
	ans_a = 16'h4670;
	#20
	A = 16'hbcfb;
	B = 16'h3f05;
	ans_a = 16'h4440;
	#20
	A = 16'h3e0c;
	B = 16'h3f55;
	ans_a = 16'h4706;
	#20
	A = 16'hbc92;
	B = 16'hbbe4;
	ans_a = 16'h4813;
	#20
	A = 16'hbd78;
	B = 16'hbf38;
	ans_a = 16'h494f;
	#20
	A = 16'h3715;
	B = 16'h3ca0;
	ans_a = 16'h4990;
	#20
	A = 16'h3735;
	B = 16'hbdc9;
	ans_a = 16'h493d;
	#20
	A = 16'hb97f;
	B = 16'hbdbd;
	ans_a = 16'h49bb;
	#20
	A = 16'h3b09;
	B = 16'h3a06;
	ans_a = 16'h4a10;
	#20
	A = 16'h3f30;
	B = 16'h3c5b;
	ans_a = 16'h4b0a;
	#20
	A = 16'h2d7a;
	B = 16'hbd41;
	ans_a = 16'h4afc;
	#20
	A = 16'hbeb0;
	B = 16'hb627;
	ans_a = 16'h4b4e;
	#20
	A = 16'h3f8d;
	B = 16'hbb4e;
	ans_a = 16'h4a71;
	#20
	A = 16'hb37a;
	B = 16'h3e04;
	ans_a = 16'h4a44;
	#20
	A = 16'hb407;
	B = 16'hb4b0;
	ans_a = 16'h4a4d;
	#20
	A = 16'h39e6;
	B = 16'h2cd3;
	ans_a = 16'h4a54;
	#20
	A = 16'h3ce6;
	B = 16'hbdf1;
	ans_a = 16'h496b;
	#20
	A = 16'h395f;
	B = 16'hbcc9;
	ans_a = 16'h4904;
	#20
	A = 16'hbf58;
	B = 16'h3de2;
	ans_a = 16'h4755;
	#20
	A = 16'h366d;
	B = 16'hba43;
	ans_a = 16'h4704;
	#20
	A = 16'h3606;
	B = 16'h3f7d;
	ans_a = 16'h47b8;
	#20
	A = 16'hb4ed;
	B = 16'hbc43;
	ans_a = 16'h4806;
	#20
	A = 16'hbda0;
	B = 16'hbf16;
	ans_a = 16'h4945;
	#20
	A = 16'h3c25;
	B = 16'hbebb;
	ans_a = 16'h4866;
	#20
	A = 16'h3bde;
	B = 16'h3f79;
	ans_a = 16'h4951;
	#20
	A = 16'h3c2a;
	B = 16'hb2f0;
	ans_a = 16'h4934;
	#20
	A = 16'hbd86;
	B = 16'h31c4;
	ans_a = 16'h4914;
	#20
	A = 16'hbc5a;
	B = 16'hbf58;
	ans_a = 16'h4a14;
	#20
	A = 16'h3b17;
	B = 16'h3e7e;
	ans_a = 16'h4acc;
	#20
	A = 16'h3f25;
	B = 16'h2c4c;
	ans_a = 16'h4adb;
	#20
	A = 16'h3835;
	B = 16'h3644;
	ans_a = 16'h4af5;
	#20
	A = 16'hbc10;
	B = 16'hb970;
	ans_a = 16'h4b4d;
	#20
	A = 16'hb93c;
	B = 16'h3e08;
	ans_a = 16'h4acf;
	#20
	A = 16'h3aed;
	B = 16'h3ac1;
	ans_a = 16'h4b2d;
	#20
	A = 16'h32ba;
	B = 16'hb97a;
	ans_a = 16'h4b1b;
	#20
	A = 16'h356f;
	B = 16'hb8a1;
	ans_a = 16'h4b02;
	#20
	A = 16'hb7b8;
	B = 16'h3766;
	ans_a = 16'h4ae5;
	#20
	A = 16'hbe32;
	B = 16'hb385;
	ans_a = 16'h4b14;
	#20
	A = 16'h3bbd;
	B = 16'haa4d;
	ans_a = 16'h4b0e;
	#20
	A = 16'hbcd4;
	B = 16'hbe26;
	ans_a = 16'h4bfc;
	#20
	A = 16'h3eac;
	B = 16'hb154;
	ans_a = 16'h4bd8;
	#20
	A = 16'h3d92;
	B = 16'hbeab;
	ans_a = 16'h4aaf;
	#20
	A = 16'hbda6;
	B = 16'h3a6c;
	ans_a = 16'h4a1e;
	#20
	A = 16'h3a01;
	B = 16'hbc79;
	ans_a = 16'h49b3;
	#20
	A = 16'hae54;
	B = 16'h3d82;
	ans_a = 16'h49a2;
	#20
	A = 16'h3a0a;
	B = 16'hbf07;
	ans_a = 16'h48f8;
	#20
	A = 16'h3e15;
	B = 16'hb853;
	ans_a = 16'h488f;
	#20
	A = 16'hbb4a;
	B = 16'hbfe0;
	ans_a = 16'h4975;
	#20
	A = 16'hbae3;
	B = 16'hbf04;
	ans_a = 16'h4a36;
	#20
	A = 16'h3b11;
	B = 16'h3c33;
	ans_a = 16'h4aad;
	#20
	A = 16'h3f85;
	B = 16'h3a47;
	ans_a = 16'h4b6a;
	#20
	A = 16'hb8ed;
	B = 16'hb9be;
	ans_a = 16'h4ba3;
	#20
	A = 16'hb375;
	B = 16'haf83;
	ans_a = 16'h4ba6;
	#20
	A = 16'hbdbc;
	B = 16'h3a82;
	ans_a = 16'h4b11;
	#20
	A = 16'hbe27;
	B = 16'hbd2f;
	ans_a = 16'h4c08;
	#20
	A = 16'hb731;
	B = 16'h36d8;
	ans_a = 16'h4bf7;
	#20
	A = 16'h38c4;
	B = 16'hbc86;
	ans_a = 16'h4ba1;
	#20
	A = 16'hbaa3;
	B = 16'hb5ef;
	ans_a = 16'h4bc8;
	#20
	A = 16'hbe9a;
	B = 16'h3c00;
	ans_a = 16'h4af5;
	#20
	A = 16'h3c9c;
	B = 16'hbdac;
	ans_a = 16'h4a24;
	#20
	A = 16'h3d8f;
	B = 16'h3ee1;
	ans_a = 16'h4b56;
	#20
	A = 16'h3c0b;
	B = 16'hbcb2;
	ans_a = 16'h4abe;
	#20
	A = 16'h3f71;
	B = 16'hbf91;
	ans_a = 16'h48fc;
	#20
	A = 16'h9449;
	B = 16'h38b7;
	ans_a = 16'h48fc;
	#20
	A = 16'ha934;
	B = 16'h3f28;
	ans_a = 16'h48f3;
	#20
	A = 16'h3c56;
	B = 16'hbdf4;
	ans_a = 16'h4824;
	#20
	A = 16'h3f46;
	B = 16'hb994;
	ans_a = 16'h4704;
	#20
	A = 16'hbbce;
	B = 16'h268c;
	ans_a = 16'h46fe;
	#20
	A = 16'h3b35;
	B = 16'h3b36;
	ans_a = 16'h47ce;
	#20
	A = 16'hbe5f;
	B = 16'h3901;
	ans_a = 16'h46cf;
	#20
	A = 16'h3c01;
	B = 16'hbbea;
	ans_a = 16'h45d2;
	#20
	A = 16'hbe91;
	B = 16'h3f44;
	ans_a = 16'h41ad;
	#20
	A = 16'hbcda;
	B = 16'h3947;
	ans_a = 16'h4013;
	#20
	A = 16'h2c8a;
	B = 16'h9dae;
	ans_a = 16'h4013;
	#20
	A = 16'h3802;
	B = 16'hb8ad;
	ans_a = 16'h3efa;
	#20
	A = 16'hbfba;
	B = 16'h3eee;
	ans_a = 16'hbe68;
	#20
	A = 16'h3ea4;
	B = 16'hbd94;
	ans_a = 16'hc3d5;
	#20
	A = 16'hb942;
	B = 16'h3c7c;
	ans_a = 16'hc4a7;
	#20
	A = 16'h3b78;
	B = 16'h3c5a;
	ans_a = 16'hc346;
	#20
	A = 16'h3839;
	B = 16'h347f;
	ans_a = 16'hc2fa;
	#20
	A = 16'hb9ca;
	B = 16'h34d8;
	ans_a = 16'hc36a;
	#20
	A = 16'h3a1a;
	B = 16'hb08b;
	ans_a = 16'hc3a1;
	#20
	A = 16'h3f85;
	B = 16'hbf60;
	ans_a = 16'hc748;
	#20
	A = 16'hbd8c;
	B = 16'hbc9c;
	ans_a = 16'hc5af;
	#20
	A = 16'hbcf4;
	B = 16'hb947;
	ans_a = 16'hc4de;
	#20
	A = 16'hbf08;
	B = 16'h9810;
	ans_a = 16'hc4dd;
	#20
	A = 16'hb5ae;
	B = 16'h397a;
	ans_a = 16'hc51b;
	#20
	A = 16'h3657;
	B = 16'hb83c;
	ans_a = 16'hc551;
	#20
	A = 16'hbf28;
	B = 16'h376a;
	ans_a = 16'hc625;
	#20
	A = 16'hb344;
	B = 16'hbbd6;
	ans_a = 16'hc5ec;
	#20
	A = 16'h3dfe;
	B = 16'hbfc7;
	ans_a = 16'hc86b;
	#20
	A = 16'hbf07;
	B = 16'h3cf7;
	ans_a = 16'hc982;
	#20
	A = 16'hbd2a;
	B = 16'hbd4c;
	ans_a = 16'hc8a7;
	#20
	A = 16'h3f95;
	B = 16'hbea6;
	ans_a = 16'hca3a;
	#20
	A = 16'h3c14;
	B = 16'h3fa7;
	ans_a = 16'hc940;
	#20
	A = 16'hbd5e;
	B = 16'h28f6;
	ans_a = 16'hc947;
	#20
	A = 16'h39cb;
	B = 16'hbf8e;
	ans_a = 16'hc9f6;
	#20
	A = 16'hbc78;
	B = 16'hb611;
	ans_a = 16'hc9c0;
	#20
	A = 16'hbcb3;
	B = 16'hbe87;
	ans_a = 16'hc8cb;
	#20
	A = 16'hbee2;
	B = 16'h3ee8;
	ans_a = 16'hca47;
	#20
	A = 16'h3735;
	B = 16'hbd7b;
	ans_a = 16'hca96;
	#20
	A = 16'hbeec;
	B = 16'h3e74;
	ans_a = 16'hcbfb;
	#20
	A = 16'h3145;
	B = 16'h3ccb;
	ans_a = 16'hcbe2;
	#20
	A = 16'h398c;
	B = 16'h3e7f;
	ans_a = 16'hcb52;
	#20
	A = 16'h31b5;
	B = 16'h3ba8;
	ans_a = 16'hcb3c;
	#20
	A = 16'hbffc;
	B = 16'h3d15;
	ans_a = 16'hcc40;
	#20
	A = 16'hb49c;
	B = 16'h3f2d;
	ans_a = 16'hcc61;
	#20
	A = 16'h3b08;
	B = 16'hb7d4;
	ans_a = 16'hcc7d;
	#20
	A = 16'h3fba;
	B = 16'hbe53;
	ans_a = 16'hcd40;
	#20
	A = 16'hbe7e;
	B = 16'hb5fe;
	ans_a = 16'hcd19;
	#20
	A = 16'h3d62;
	B = 16'h3b3c;
	ans_a = 16'hcccb;
	#20
	A = 16'haee7;
	B = 16'h3a9e;
	ans_a = 16'hccd1;
	#20
	A = 16'h3b9a;
	B = 16'hbae7;
	ans_a = 16'hcd05;
	#20
	A = 16'h382b;
	B = 16'h3f09;
	ans_a = 16'hccca;
	#20
	A = 16'h3295;
	B = 16'h380e;
	ans_a = 16'hccc3;
	#20
	A = 16'hb32c;
	B = 16'hbb65;
	ans_a = 16'hccb6;
	#20
	A = 16'h3ee1;
	B = 16'h3dce;
	ans_a = 16'hcc16;
	#20
	A = 16'h21e4;
	B = 16'ha446;
	ans_a = 16'hcc16;
	#20
	A = 16'h96f7;
	B = 16'h3cec;
	ans_a = 16'hcc16;
	#20
	A = 16'hbceb;
	B = 16'h395e;
	ans_a = 16'hcc4b;
	#20
	A = 16'hbd35;
	B = 16'h3ff6;
	ans_a = 16'hccf1;
	#20
	A = 16'h3e42;
	B = 16'hb992;
	ans_a = 16'hcd37;
	#20
	A = 16'h3f8b;
	B = 16'h3c79;
	ans_a = 16'hccb0;
	#20
	A = 16'hb5ea;
	B = 16'hbdfe;
	ans_a = 16'hcc8d;
	#20
	A = 16'h3b72;
	B = 16'hbdfe;
	ans_a = 16'hcce6;
	#20
	A = 16'h3e0f;
	B = 16'hbc1d;
	ans_a = 16'hcd4a;
	#20
	A = 16'hb77a;
	B = 16'h3fd6;
	ans_a = 16'hcd85;
	#20
	A = 16'h37c3;
	B = 16'hb819;
	ans_a = 16'hcd95;
	#20
	A = 16'h3e70;
	B = 16'h3d15;
	ans_a = 16'hcd12;
	#20
	A = 16'h3f26;
	B = 16'h3813;
	ans_a = 16'hccd8;
	#20
	A = 16'h3c40;
	B = 16'h3f0a;
	ans_a = 16'hcc60;
	#20
	A = 16'h3287;
	B = 16'hbb72;
	ans_a = 16'hcc6c;
	#20
	A = 16'hbc89;
	B = 16'hbed2;
	ans_a = 16'hcbe0;
	#20
	A = 16'h3c6b;
	B = 16'h3c2f;
	ans_a = 16'hcb4c;
	#20
	A = 16'hb985;
	B = 16'hbe14;
	ans_a = 16'hcac6;
	#20
	A = 16'h3f90;
	B = 16'hbefe;
	ans_a = 16'hcc36;
	#20
	A = 16'hbe41;
	B = 16'h36a2;
	ans_a = 16'hcc5f;
	#20
	A = 16'h3f94;
	B = 16'hbdac;
	ans_a = 16'hcd0b;
	#20
	A = 16'h3a08;
	B = 16'h3410;
	ans_a = 16'hccff;
	#20
	A = 16'hb976;
	B = 16'h39c4;
	ans_a = 16'hcd1e;
	#20
	A = 16'h3287;
	B = 16'hab23;
	ans_a = 16'hcd1f;
	#20
	A = 16'hbe42;
	B = 16'hba9a;
	ans_a = 16'hcccc;
	#20
	A = 16'h3b00;
	B = 16'hb398;
	ans_a = 16'hccd9;
	#20
	A = 16'h2f38;
	B = 16'hbeaa;
	ans_a = 16'hcce5;
	#20
	A = 16'h37b0;
	B = 16'hb67f;
	ans_a = 16'hccf1;
	#20
	A = 16'hb8db;
	B = 16'h3c4b;
	ans_a = 16'hcd1b;
	#20
	A = 16'h35e3;
	B = 16'hb4e4;
	ans_a = 16'hcd22;
	#20
	A = 16'h3c63;
	B = 16'hbba4;
	ans_a = 16'hcd65;
	#20
	A = 16'hbdae;
	B = 16'h37b1;
	ans_a = 16'hcd91;
	#20
	A = 16'hb736;
	B = 16'hbbf4;
	ans_a = 16'hcd74;
	#20
	A = 16'h3849;
	B = 16'hbf77;
	ans_a = 16'hcdb4;
	#20
	A = 16'h31d6;
	B = 16'hbf6e;
	ans_a = 16'hcdca;
	#20
	A = 16'h3fd0;
	B = 16'h3bf1;
	ans_a = 16'hcd4e;
	#20
	A = 16'h39ea;
	B = 16'hbd23;
	ans_a = 16'hcd8b;
	#20
	A = 16'hbebd;
	B = 16'hbda9;
	ans_a = 16'hccf2;
	#20
	A = 16'h3cc5;
	B = 16'h3e0a;
	ans_a = 16'hcc7f;
	#20
	A = 16'hb56d;
	B = 16'h3831;
	ans_a = 16'hcc8a;
	#20
	A = 16'h3742;
	B = 16'hbefe;
	ans_a = 16'hccbd;
	#20
	A = 16'hbe6a;
	B = 16'ha6d1;
	ans_a = 16'hccba;
	#20
	A = 16'h3823;
	B = 16'h39a4;
	ans_a = 16'hcca3;
	#20
	A = 16'hbe76;
	B = 16'hbfbe;
	ans_a = 16'hcbb6;
	#20
	A = 16'h3443;
	B = 16'hac7d;
	ans_a = 16'hcbb8;
	#20
	A = 16'hbfd1;
	B = 16'h3f60;
	ans_a = 16'hccc3;
	#20
	A = 16'hb618;
	B = 16'h397b;
	ans_a = 16'hccd4;
	#20
	A = 16'h3d76;
	B = 16'h3f3f;
	ans_a = 16'hcc36;
	#20
	A = 16'h39a2;
	B = 16'hae47;
	ans_a = 16'hcc3a;
	#20
	A = 16'hb4b9;
	B = 16'h3e69;
	ans_a = 16'hcc58;
	#20
	A = 16'hbca9;
	B = 16'h3fc5;
	ans_a = 16'hcce9;
	#20
	A = 16'h38e9;
	B = 16'h38ad;
	ans_a = 16'hccd2;
	#20
	A = 16'hbd10;
	B = 16'hb581;
	ans_a = 16'hccb6;
	#20
	A = 16'ha774;
	B = 16'hbc6e;
	ans_a = 16'hccb4;
	#20
	A = 16'h3d2e;
	B = 16'h3ba8;
	ans_a = 16'hcc65;
	#20
	A = 16'hbf35;
	B = 16'h33fc;
	ans_a = 16'hcc82;
	#20
	A = 16'hbb43;
	B = 16'h39d2;
	ans_a = 16'hccac;
	#20
	A = 16'hb075;
	B = 16'hb5ee;
	ans_a = 16'hcca9;
	#20
	A = 16'hbebe;
	B = 16'hbe78;
	ans_a = 16'hcbf5;
	#20
	A = 16'hbcb0;
	B = 16'hb333;
	ans_a = 16'hcbd3;
	#20
	A = 16'hbca3;
	B = 16'h3b21;
	ans_a = 16'hcc2c;
	#20
	A = 16'hbd84;
	B = 16'h3bec;
	ans_a = 16'hcc83;
	#20
	A = 16'h3cbe;
	B = 16'h3d22;
	ans_a = 16'hcc22;
	#20
	A = 16'h390d;
	B = 16'hba99;
	ans_a = 16'hcc43;
	#20
	A = 16'h3e2d;
	B = 16'h383c;
	ans_a = 16'hcc0f;
	#20
	A = 16'h39bd;
	B = 16'hbb17;
	ans_a = 16'hcc38;
	#20
	A = 16'h3ef0;
	B = 16'hbb2b;
	ans_a = 16'hcc9b;
	#20
	A = 16'h37bc;
	B = 16'hbc4f;
	ans_a = 16'hccbc;
	#20
	A = 16'h2473;
	B = 16'h3977;
	ans_a = 16'hccbb;
	#20
	A = 16'h38b7;
	B = 16'hbc8f;
	ans_a = 16'hcce6;
	#20
	A = 16'h36f4;
	B = 16'hbc63;
	ans_a = 16'hcd04;
	#20
	A = 16'hbf32;
	B = 16'hb9b0;
	ans_a = 16'hccb2;
	#20
	A = 16'hbcdb;
	B = 16'hbc61;
	ans_a = 16'hcc5d;
	#20
	A = 16'hbcb0;
	B = 16'h3818;
	ans_a = 16'hcc83;
	#20
	A = 16'h3f13;
	B = 16'h3409;
	ans_a = 16'hcc66;
	#20
	A = 16'hbca8;
	B = 16'hbbb3;
	ans_a = 16'hcc1e;
	#20
	A = 16'hbda6;
	B = 16'hb82a;
	ans_a = 16'hcbde;
	#20
	A = 16'h3ae6;
	B = 16'h3974;
	ans_a = 16'hcb93;
	#20
	A = 16'hb99d;
	B = 16'h3f41;
	ans_a = 16'hcc1b;
	#20
	A = 16'h3fec;
	B = 16'hbbca;
	ans_a = 16'hcc96;
	#20
	A = 16'hbb1c;
	B = 16'hbd3d;
	ans_a = 16'hcc4c;
	#20
	A = 16'hadf0;
	B = 16'h3f04;
	ans_a = 16'hcc56;
	#20
	A = 16'h3f0e;
	B = 16'hbcfc;
	ans_a = 16'hcce3;
	#20
	A = 16'h3e06;
	B = 16'h3fca;
	ans_a = 16'hcc27;
	#20
	A = 16'h3dc6;
	B = 16'hb2bb;
	ans_a = 16'hcc3a;
	#20
	A = 16'h345e;
	B = 16'h3f76;
	ans_a = 16'hcc19;
	#20
	A = 16'h3e16;
	B = 16'hbd8c;
	ans_a = 16'hcca0;
	#20
	A = 16'hb909;
	B = 16'h37a5;
	ans_a = 16'hccb3;
	#20
	A = 16'hb4a0;
	B = 16'hbed7;
	ans_a = 16'hcc93;
	#20
	A = 16'h3cbc;
	B = 16'h3c4b;
	ans_a = 16'hcc42;
	#20
	A = 16'h3d26;
	B = 16'h253e;
	ans_a = 16'hcc40;
	#20
	A = 16'h3ec4;
	B = 16'h3f5e;
	ans_a = 16'hcaf1;
	#20
	A = 16'hbeaf;
	B = 16'hbf43;
	ans_a = 16'hc96d;
	#20
	A = 16'h35ab;
	B = 16'h3ff5;
	ans_a = 16'hc913;
	#20
	A = 16'h3a6c;
	B = 16'hbecb;
	ans_a = 16'hc9c2;
	#20
	A = 16'h2d6e;
	B = 16'h39db;
	ans_a = 16'hc9ba;
	#20
	A = 16'hb58f;
	B = 16'hb666;
	ans_a = 16'hc9a8;
	#20
	A = 16'h3e94;
	B = 16'hbf7b;
	ans_a = 16'hcb32;
	#20
	A = 16'hbd2e;
	B = 16'h3754;
	ans_a = 16'hcb7e;
	#20
	A = 16'hbc20;
	B = 16'hbc54;
	ans_a = 16'hcaef;
	#20
	A = 16'h3a94;
	B = 16'hb72b;
	ans_a = 16'hcb1e;
	#20
	A = 16'h3972;
	B = 16'h3e9e;
	ans_a = 16'hca8e;
	#20
	A = 16'ha28c;
	B = 16'h3e73;
	ans_a = 16'hca91;
	#20
	A = 16'h3ee5;
	B = 16'h3e86;
	ans_a = 16'hc929;
	#20
	A = 16'h3d6f;
	B = 16'hbe79;
	ans_a = 16'hca42;
	#20
	A = 16'h322b;
	B = 16'hb4ba;
	ans_a = 16'hca49;
	#20
	A = 16'h3d3d;
	B = 16'h3e3d;
	ans_a = 16'hc944;
	#20
	A = 16'hb90c;
	B = 16'hacc4;
	ans_a = 16'hc93e;
	#20
	A = 16'h3912;
	B = 16'h31fe;
	ans_a = 16'hc92f;
	#20
	A = 16'h3dde;
	B = 16'h3e37;
	ans_a = 16'hc80b;
	#20
	A = 16'hbfd3;
	B = 16'h3f4e;
	ans_a = 16'hc9d4;
	#20
	A = 16'h3d72;
	B = 16'hbc35;
	ans_a = 16'hca8b;
	#20
	A = 16'h3f11;
	B = 16'hbd0e;
	ans_a = 16'hcba9;
	#20
	A = 16'hbd71;
	B = 16'h29b2;
	ans_a = 16'hcbb1;
	#20
	A = 16'hbf54;
	B = 16'h3ce5;
	ans_a = 16'hcc68;
	#20
	A = 16'h3c92;
	B = 16'h3b5d;
	ans_a = 16'hcc25;
	#20
	A = 16'h357d;
	B = 16'h3801;
	ans_a = 16'hcc1a;
	#20
	A = 16'hb856;
	B = 16'hbeb1;
	ans_a = 16'hcbc0;
	#20
	A = 16'h3d72;
	B = 16'hbfdb;
	ans_a = 16'hcc8b;
	#20
	A = 16'hb1dd;
	B = 16'h3e3c;
	ans_a = 16'hcc9d;
	#20
	A = 16'hb2d5;
	B = 16'h3d24;
	ans_a = 16'hccaf;
	#20
	A = 16'hbcc4;
	B = 16'hbdff;
	ans_a = 16'hcc3d;
	#20
	A = 16'h3fb0;
	B = 16'hbfc4;
	ans_a = 16'hcd2c;
	#20
	A = 16'h2e5c;
	B = 16'h2768;
	ans_a = 16'hcd2c;
	#20
	A = 16'hbcc2;
	B = 16'h3ba5;
	ans_a = 16'hcd75;
	#20
	A = 16'h3e2c;
	B = 16'h32db;
	ans_a = 16'hcd60;
	#20
	A = 16'h2506;
	B = 16'h3798;
	ans_a = 16'hcd5f;
	#20
	A = 16'hbb7b;
	B = 16'hbb56;
	ans_a = 16'hcd28;
	#20
	A = 16'h381f;
	B = 16'h3981;
	ans_a = 16'hcd11;
	#20
	A = 16'h3a3e;
	B = 16'hb7e3;
	ans_a = 16'hcd2a;
	#20
	A = 16'h2eba;
	B = 16'hb16d;
	ans_a = 16'hcd2b;
	#20
	A = 16'hbd80;
	B = 16'hbd66;
	ans_a = 16'hccb4;
	#20
	A = 16'h363e;
	B = 16'hbf36;
	ans_a = 16'hcce1;
	#20
	A = 16'hb871;
	B = 16'hb3bb;
	ans_a = 16'hccd8;
	#20
	A = 16'h3e2e;
	B = 16'hbe71;
	ans_a = 16'hcd77;
	#20
	A = 16'h3acd;
	B = 16'h31ab;
	ans_a = 16'hcd6d;
	#20
	A = 16'hbc91;
	B = 16'hb6b3;
	ans_a = 16'hcd4e;
	#20
	A = 16'h3df1;
	B = 16'hb531;
	ans_a = 16'hcd6d;
	#20
	A = 16'h3b31;
	B = 16'h3d0b;
	ans_a = 16'hcd24;
	#20
	A = 16'hbe1c;
	B = 16'h2973;
	ans_a = 16'hcd28;
	#20
	A = 16'h3fa7;
	B = 16'h3f86;
	ans_a = 16'hcc42;
	#20
	A = 16'h3a78;
	B = 16'hb5f7;
	ans_a = 16'hcc55;
	#20
	A = 16'h305a;
	B = 16'hbc1b;
	ans_a = 16'hcc5e;
	#20
	A = 16'h3b9c;
	B = 16'h3a1d;
	ans_a = 16'hcc2f;
	#20
	A = 16'h3832;
	B = 16'h3ce9;
	ans_a = 16'hcc06;
	#20
	A = 16'h3eeb;
	B = 16'h3cd5;
	ans_a = 16'hcb00;
	#20
	A = 16'h3ec1;
	B = 16'hb95d;
	ans_a = 16'hcb91;
	#20
	A = 16'h3caf;
	B = 16'h3626;
	ans_a = 16'hcb57;
	#20
	A = 16'hbb21;
	B = 16'hb597;
	ans_a = 16'hcb2f;
	#20
	A = 16'h372e;
	B = 16'h3f5f;
	ans_a = 16'hcac5;
	#20
	A = 16'hbc3d;
	B = 16'h3cb3;
	ans_a = 16'hcb64;
	#20
	A = 16'hbff6;
	B = 16'h3c4a;
	ans_a = 16'hcc3b;
	#20
	A = 16'hae3d;
	B = 16'h3ea2;
	ans_a = 16'hcc45;
	#20
	A = 16'hbe3f;
	B = 16'hb9cd;
	ans_a = 16'hcbf9;
	#20
	A = 16'hbcef;
	B = 16'h3b93;
	ans_a = 16'hcc47;
	#20
	A = 16'h316e;
	B = 16'hbf9d;
	ans_a = 16'hcc5c;
	#20
	A = 16'hb1f5;
	B = 16'h3cd5;
	ans_a = 16'hcc6a;
	#20
	A = 16'hbd5a;
	B = 16'h3ff7;
	ans_a = 16'hcd14;
	#20
	A = 16'hbf22;
	B = 16'h3983;
	ans_a = 16'hcd63;
	#20
	A = 16'h3991;
	B = 16'h3aea;
	ans_a = 16'hcd3c;
	#20
	A = 16'hbb1c;
	B = 16'hb97c;
	ans_a = 16'hcd15;
	#20
	A = 16'hbf2c;
	B = 16'hbefc;
	ans_a = 16'hcc4d;
	#20
	A = 16'hbde8;
	B = 16'h3e84;
	ans_a = 16'hcce7;
	#20
	A = 16'h38a5;
	B = 16'hbfe6;
	ans_a = 16'hcd30;
	#20
	A = 16'hb83b;
	B = 16'h3625;
	ans_a = 16'hcd3d;
	#20
	A = 16'h381e;
	B = 16'h32c1;
	ans_a = 16'hcd36;
	#20
	A = 16'h3f48;
	B = 16'hbc3e;
	ans_a = 16'hcdb2;
	#20
	A = 16'hbe7d;
	B = 16'h3a94;
	ans_a = 16'hce07;
	#20
	A = 16'hb1e8;
	B = 16'h3971;
	ans_a = 16'hce0f;
	#20
	A = 16'hbd1b;
	B = 16'h3e51;
	ans_a = 16'hce90;
	#20
	A = 16'h3e89;
	B = 16'h3b7d;
	ans_a = 16'hce2e;
	#20
	A = 16'h3596;
	B = 16'hb55c;
	ans_a = 16'hce35;
	#20
	A = 16'h3053;
	B = 16'hbcc5;
	ans_a = 16'hce3f;
	#20
	A = 16'h395d;
	B = 16'hbc4c;
	ans_a = 16'hce6d;
	#20
	A = 16'hbe74;
	B = 16'hb178;
	ans_a = 16'hce5b;
	#20
	A = 16'h3ce2;
	B = 16'h3f57;
	ans_a = 16'hcdcc;
	#20
	A = 16'hb844;
	B = 16'hbeb7;
	ans_a = 16'hcd93;
	#20
	A = 16'h38d0;
	B = 16'hbd46;
	ans_a = 16'hcdc6;
	#20
	A = 16'hb8b2;
	B = 16'hb875;
	ans_a = 16'hcdb1;
	#20
	A = 16'h3634;
	B = 16'hbf7a;
	ans_a = 16'hcddf;
	#20
	A = 16'hb46b;
	B = 16'hb918;
	ans_a = 16'hcdd4;
	#20
	A = 16'h3ccc;
	B = 16'hb364;
	ans_a = 16'hcde6;
	#20
	A = 16'hb412;
	B = 16'h3d1a;
	ans_a = 16'hcdfb;
	#20
	A = 16'hbfbd;
	B = 16'h3d0e;
	ans_a = 16'hce98;
	#20
	A = 16'hbd8e;
	B = 16'h3c18;
	ans_a = 16'hcef3;
	#20
	A = 16'hbc52;
	B = 16'hab85;
	ans_a = 16'hceef;
	#20
	A = 16'h39bf;
	B = 16'h345e;
	ans_a = 16'hcee2;
	#20
	A = 16'hbd1b;
	B = 16'hb7b4;
	ans_a = 16'hcebb;
	#20
	A = 16'h3d17;
	B = 16'h3352;
	ans_a = 16'hcea8;
	#20
	A = 16'hb787;
	B = 16'h3c12;
	ans_a = 16'hcec7;
	#20
	A = 16'h352f;
	B = 16'hbb35;
	ans_a = 16'hceda;
	#20
	A = 16'h3a33;
	B = 16'h3aaa;
	ans_a = 16'hceb1;
	#20
	A = 16'h3acb;
	B = 16'hbece;
	ans_a = 16'hcf0d;
	#20
	A = 16'h3c47;
	B = 16'h3b30;
	ans_a = 16'hced0;
	#20
	A = 16'h3ce5;
	B = 16'hbe35;
	ans_a = 16'hcf4a;
	#20
	A = 16'hbfc1;
	B = 16'hbec2;
	ans_a = 16'hce78;
	#20
	A = 16'h3a81;
	B = 16'h31e0;
	ans_a = 16'hce6e;
	#20
	A = 16'h3e66;
	B = 16'h391a;
	ans_a = 16'hce2d;
	#20
	A = 16'h3a7d;
	B = 16'hb68d;
	ans_a = 16'hce42;
	#20
	A = 16'hb5e4;
	B = 16'h3c87;
	ans_a = 16'hce5d;
	#20
	A = 16'hb806;
	B = 16'h39ce;
	ans_a = 16'hce74;
	#20
	A = 16'hbd6d;
	B = 16'hbe74;
	ans_a = 16'hcde8;
	#20
	A = 16'hbcf3;
	B = 16'h38a5;
	ans_a = 16'hce16;
	#20
	A = 16'hb9ef;
	B = 16'hbefe;
	ans_a = 16'hcdc3;
	#20
	A = 16'h3cfe;
	B = 16'h3ef9;
	ans_a = 16'hcd38;
	#20
	A = 16'h3da7;
	B = 16'hbdf2;
	ans_a = 16'hcdbe;
	#20
	A = 16'hb494;
	B = 16'h3e9e;
	ans_a = 16'hcddc;
	#20
	A = 16'h3fe6;
	B = 16'hbcfe;
	ans_a = 16'hce7a;
	#20
	A = 16'hb4b7;
	B = 16'hbf88;
	ans_a = 16'hce56;
	#20
	A = 16'hb2f5;
	B = 16'hb57a;
	ans_a = 16'hce51;
	#20
	A = 16'hb188;
	B = 16'hbe42;
	ans_a = 16'hce40;
	#20
	A = 16'h3f97;
	B = 16'hbc70;
	ans_a = 16'hcec7;
	#20
	A = 16'h3e28;
	B = 16'hb955;
	ans_a = 16'hcf09;
	#20
	A = 16'h36f1;
	B = 16'h3ef9;
	ans_a = 16'hced9;
	#20
	A = 16'hbd76;
	B = 16'h37cb;
	ans_a = 16'hcf04;
	#20
	A = 16'hbcf4;
	B = 16'h3c37;
	ans_a = 16'hcf58;
	#20
	A = 16'h3805;
	B = 16'h3901;
	ans_a = 16'hcf44;
	#20
	A = 16'h3ba5;
	B = 16'h3e90;
	ans_a = 16'hcee0;
	#20
	A = 16'h3f82;
	B = 16'h3354;
	ans_a = 16'hcec4;
	#20
	A = 16'hbc90;
	B = 16'h3ed4;
	ans_a = 16'hcf41;
	#20
	A = 16'h3fe3;
	B = 16'hbf4d;
	ans_a = 16'hd014;
	#20
	A = 16'hbbb7;
	B = 16'hbcf5;
	ans_a = 16'hcfdc;
	#20
	A = 16'h39ea;
	B = 16'hbed1;
	ans_a = 16'hd016;
	#20
	A = 16'h38b6;
	B = 16'ha923;
	ans_a = 16'hd017;
	#20
	A = 16'h3eee;
	B = 16'hba61;
	ans_a = 16'hd043;
	#20
	A = 16'h36c6;
	B = 16'hbf72;
	ans_a = 16'hd05c;
	#20
	A = 16'hbcdf;
	B = 16'h39e4;
	ans_a = 16'hd079;
	#20
	A = 16'hbefc;
	B = 16'h29e9;
	ans_a = 16'hd07c;
	#20
	A = 16'hbdf3;
	B = 16'h3507;
	ans_a = 16'hd08b;
	#20
	A = 16'h370b;
	B = 16'hbc05;
	ans_a = 16'hd099;
	#20
	A = 16'h3cfb;
	B = 16'h2834;
	ans_a = 16'hd098;
	#20
	A = 16'hbc2b;
	B = 16'h389a;
	ans_a = 16'hd0ab;
	#20
	A = 16'h3fa6;
	B = 16'h9f11;
	ans_a = 16'hd0ab;
	#20
	A = 16'hbdd8;
	B = 16'h3a98;
	ans_a = 16'hd0d2;
	#20
	A = 16'h3a3f;
	B = 16'hb9ec;
	ans_a = 16'hd0e4;
	#20
	A = 16'h3ea8;
	B = 16'h3894;
	ans_a = 16'hd0c6;
	#20
	A = 16'h35e7;
	B = 16'hbf58;
	ans_a = 16'hd0dc;
	#20
	A = 16'hbf97;
	B = 16'h34af;
	ans_a = 16'hd0ee;
	#20
	A = 16'had0f;
	B = 16'hbf5f;
	ans_a = 16'hd0e9;
	#20
	A = 16'hb6dd;
	B = 16'hbb74;
	ans_a = 16'hd0dc;
	#20
	A = 16'h3876;
	B = 16'hbb25;
	ans_a = 16'hd0ec;
	#20
	A = 16'hbf72;
	B = 16'h3a50;
	ans_a = 16'hd11b;
	#20
	A = 16'hbd2a;
	B = 16'hb82b;
	ans_a = 16'hd105;
	#20
	A = 16'hba10;
	B = 16'hbcf5;
	ans_a = 16'hd0e7;
	#20
	A = 16'h3f82;
	B = 16'h3ff9;
	ans_a = 16'hd06f;
	#20
	A = 16'hb967;
	B = 16'hbdbc;
	ans_a = 16'hd050;
	#20
	A = 16'h3bfe;
	B = 16'h392a;
	ans_a = 16'hd03b;
	#20
	A = 16'h3d67;
	B = 16'hbe87;
	ans_a = 16'hd082;
	#20
	A = 16'hba78;
	B = 16'hbc35;
	ans_a = 16'hd067;
	#20
	A = 16'hb224;
	B = 16'hbe96;
	ans_a = 16'hd05d;
	#20
	A = 16'h3a68;
	B = 16'h3895;
	ans_a = 16'hd04e;
	#20
	A = 16'hbd2c;
	B = 16'hbee2;
	ans_a = 16'hd007;
	#20
	A = 16'h3d3a;
	B = 16'hac72;
	ans_a = 16'hd00a;
	#20
	A = 16'hbaa0;
	B = 16'h3d7c;
	ans_a = 16'hd02e;
	#20
	A = 16'hbc5d;
	B = 16'hb81b;
	ans_a = 16'hd01c;
	#20
	A = 16'hbfc7;
	B = 16'hbbfb;
	ans_a = 16'hcfbc;
	#20
	A = 16'hbff8;
	B = 16'h349d;
	ans_a = 16'hcfe1;
	#20
	A = 16'hbe8e;
	B = 16'hbd2b;
	ans_a = 16'hcf5a;
	#20
	A = 16'h3fcd;
	B = 16'h3bee;
	ans_a = 16'hcede;
	#20
	A = 16'h3dd3;
	B = 16'h3e44;
	ans_a = 16'hce4c;
	#20
	A = 16'h3afd;
	B = 16'hbc4d;
	ans_a = 16'hce88;
	#20
	A = 16'h3edf;
	B = 16'hb347;
	ans_a = 16'hcea1;
	#20
	A = 16'h3cec;
	B = 16'h38b3;
	ans_a = 16'hce73;
	#20
	A = 16'h338b;
	B = 16'hbed4;
	ans_a = 16'hce8d;
	#20
	A = 16'hbdb3;
	B = 16'h39d4;
	ans_a = 16'hcecf;
	#20
	A = 16'hb6b9;
	B = 16'hbfb2;
	ans_a = 16'hce9b;
	#20
	A = 16'h374b;
	B = 16'hb7a6;
	ans_a = 16'hcea9;
	#20
	A = 16'hbf65;
	B = 16'hb579;
	ans_a = 16'hce81;
	#20
	A = 16'h3fb8;
	B = 16'h3a3c;
	ans_a = 16'hce21;
	#20
	A = 16'hb6ae;
	B = 16'h3ec4;
	ans_a = 16'hce4e;
	#20
	A = 16'h3b38;
	B = 16'h3dc4;
	ans_a = 16'hcdfb;
	#20
	A = 16'h3a67;
	B = 16'hbbad;
	ans_a = 16'hce2c;
	#20
	A = 16'hbf7c;
	B = 16'hbe1f;
	ans_a = 16'hcd75;
	#20
	A = 16'hb91f;
	B = 16'hb2a3;
	ans_a = 16'hcd6c;
	#20
	A = 16'hba71;
	B = 16'h3c46;
	ans_a = 16'hcda3;
	#20
	A = 16'h3922;
	B = 16'hbbbf;
	ans_a = 16'hcdcb;
	#20
	A = 16'h33d4;
	B = 16'h3e93;
	ans_a = 16'hcdb1;
	#20
	A = 16'hbdf8;
	B = 16'h3abd;
	ans_a = 16'hce01;
	#20
	A = 16'hbbe9;
	B = 16'h3f07;
	ans_a = 16'hce70;
	#20
	A = 16'h3e01;
	B = 16'hbed0;
	ans_a = 16'hcf14;
	#20
	A = 16'h3614;
	B = 16'hbcfd;
	ans_a = 16'hcf32;
	#20
	A = 16'hbbd1;
	B = 16'h38e0;
	ans_a = 16'hcf58;
	#20
	A = 16'hbb6d;
	B = 16'h3850;
	ans_a = 16'hcf78;
	#20
	A = 16'hbdcb;
	B = 16'hbb0d;
	ans_a = 16'hcf26;
	#20
	A = 16'hbfec;
	B = 16'hb142;
	ans_a = 16'hcf11;
	#20
	A = 16'hb64a;
	B = 16'h3d3d;
	ans_a = 16'hcf32;
	#20
	A = 16'h3c94;
	B = 16'hba79;
	ans_a = 16'hcf6d;
	#20
	A = 16'h3d5f;
	B = 16'hbd39;
	ans_a = 16'hcfdd;
	#20
	A = 16'h35e3;
	B = 16'hbeb3;
	ans_a = 16'hd002;
	#20
	A = 16'hbe09;
	B = 16'h371a;
	ans_a = 16'hd017;
	#20
	A = 16'h3f4d;
	B = 16'hb928;
	ans_a = 16'hd03d;
	#20
	A = 16'h3167;
	B = 16'h3d54;
	ans_a = 16'hd036;
	#20
	A = 16'h3c54;
	B = 16'hb681;
	ans_a = 16'hd044;
	#20
	A = 16'h3c8e;
	B = 16'hb835;
	ans_a = 16'hd057;
	#20
	A = 16'h3ecc;
	B = 16'hbe52;
	ans_a = 16'hd0ad;
	#20
	A = 16'hbf48;
	B = 16'hac04;
	ans_a = 16'hd0a9;
	#20
	A = 16'hbdf8;
	B = 16'hba1a;
	ans_a = 16'hd085;
	#20
	A = 16'hba73;
	B = 16'h3e30;
	ans_a = 16'hd0ad;
	#20
	A = 16'h395b;
	B = 16'h3e97;
	ans_a = 16'hd08a;
	#20
	A = 16'hb43f;
	B = 16'hbdf5;
	ans_a = 16'hd07d;
	#20
	A = 16'hb4f4;
	B = 16'h3780;
	ans_a = 16'hd082;
	#20
	A = 16'h325f;
	B = 16'hbec9;
	ans_a = 16'hd08d;
	#20
	A = 16'h3e15;
	B = 16'hbc6c;
	ans_a = 16'hd0c3;
	#20
	A = 16'h35ff;
	B = 16'h3a72;
	ans_a = 16'hd0b9;
	#20
	A = 16'h3da3;
	B = 16'h3c40;
	ans_a = 16'hd089;
	#20
	A = 16'hb353;
	B = 16'h34e1;
	ans_a = 16'hd08b;
	#20
	A = 16'h3f7c;
	B = 16'h3e7e;
	ans_a = 16'hd02a;
	#20
	A = 16'hbd9b;
	B = 16'hbeab;
	ans_a = 16'hcfbe;
	#20
	A = 16'h3be0;
	B = 16'h3fe3;
	ans_a = 16'hcf42;
	#20
	A = 16'hbb1a;
	B = 16'h3c0f;
	ans_a = 16'hcf7c;
	#20
	A = 16'hb803;
	B = 16'hbef2;
	ans_a = 16'hcf44;
	#20
	A = 16'hbf96;
	B = 16'h3d87;
	ans_a = 16'hcfec;
	#20
	A = 16'h38b3;
	B = 16'hbdfb;
	ans_a = 16'hd012;
	#20
	A = 16'hbb5c;
	B = 16'h34b5;
	ans_a = 16'hd01b;
	#20
	A = 16'h3e66;
	B = 16'h2f04;
	ans_a = 16'hd015;
	#20
	A = 16'hbecb;
	B = 16'hbf2d;
	ans_a = 16'hcf67;
	#20
	A = 16'h3e6b;
	B = 16'h3534;
	ans_a = 16'hcf46;
	#20
	A = 16'hbeac;
	B = 16'h3e9b;
	ans_a = 16'hcff6;
	#20
	A = 16'h32d8;
	B = 16'hb8c2;
	ans_a = 16'hcffe;
	#20
	A = 16'hbf5a;
	B = 16'hb95a;
	ans_a = 16'hcfaf;
	#20
	A = 16'h3726;
	B = 16'h39b2;
	ans_a = 16'hcf9b;
	#20
	A = 16'hb5bf;
	B = 16'h3db6;
	ans_a = 16'hcfbc;
	#20
	A = 16'h35a6;
	B = 16'hbd16;
	ans_a = 16'hcfd9;
	#20
	A = 16'hb7b4;
	B = 16'hbf96;
	ans_a = 16'hcf9f;
	#20
	A = 16'h3a06;
	B = 16'hab8b;
	ans_a = 16'hcfa2;
	#20
	A = 16'h34c9;
	B = 16'h3ba7;
	ans_a = 16'hcf90;
	#20
	A = 16'hb4bf;
	B = 16'hb420;
	ans_a = 16'hcf8b;
	#20
	A = 16'h3d5f;
	B = 16'hb524;
	ans_a = 16'hcfa7;
	#20
	A = 16'hbfd8;
	B = 16'h3c36;
	ans_a = 16'hd016;
	#20
	A = 16'h3e8b;
	B = 16'h385b;
	ans_a = 16'hcff3;
	#20
	A = 16'h3395;
	B = 16'h3194;
	ans_a = 16'hcff0;
	#20
	A = 16'h3c75;
	B = 16'hb6f9;
	ans_a = 16'hd008;
	#20
	A = 16'h3ed2;
	B = 16'h3962;
	ans_a = 16'hcfc7;
	#20
	A = 16'h2f53;
	B = 16'h3da5;
	ans_a = 16'hcfbd;
	#20
	A = 16'h389e;
	B = 16'h3828;
	ans_a = 16'hcfaa;
	#20
	A = 16'h3cd4;
	B = 16'hb63d;
	ans_a = 16'hcfc8;
	#20
	A = 16'h3eae;
	B = 16'hb7fa;
	ans_a = 16'hcffd;
	#20
	A = 16'h3970;
	B = 16'h3451;
	ans_a = 16'hcff1;
	#20
	A = 16'h37ae;
	B = 16'h393b;
	ans_a = 16'hcfdd;
	#20
	A = 16'had43;
	B = 16'h3d73;
	ans_a = 16'hcfe4;
	#20
	A = 16'hb14d;
	B = 16'hbe97;
	ans_a = 16'hcfd3;
	#20
	A = 16'h3beb;
	B = 16'ha83f;
	ans_a = 16'hcfd5;
	#20
	A = 16'hbf9b;
	B = 16'h39c3;
	ans_a = 16'hd016;
	#20
	A = 16'h3cd2;
	B = 16'hb53f;
	ans_a = 16'hd023;
	#20
	A = 16'h3c72;
	B = 16'h3b68;
	ans_a = 16'hd002;
	#20
	A = 16'h3ca1;
	B = 16'hbd3b;
	ans_a = 16'hd032;
	#20
	A = 16'hbe89;
	B = 16'hbfeb;
	ans_a = 16'hcf95;
	#20
	A = 16'hbe53;
	B = 16'hbd44;
	ans_a = 16'hcf10;
	#20
	A = 16'hb53c;
	B = 16'h3835;
	ans_a = 16'hcf1b;
	#20
	A = 16'hbaf9;
	B = 16'hbbbc;
	ans_a = 16'hcee5;
	#20
	A = 16'h2c91;
	B = 16'hbf8d;
	ans_a = 16'hceee;
	#20
	A = 16'hac43;
	B = 16'hb8b9;
	ans_a = 16'hceeb;
	#20
	A = 16'hb824;
	B = 16'hb451;
	ans_a = 16'hcee2;
	#20
	A = 16'hbb22;
	B = 16'hb4b6;
	ans_a = 16'hced1;
	#20
	A = 16'hbc47;
	B = 16'h3acf;
	ans_a = 16'hcf0b;
	#20
	A = 16'h3962;
	B = 16'h3ece;
	ans_a = 16'hcec2;
	#20
	A = 16'h3cea;
	B = 16'hbdd9;
	ans_a = 16'hcf35;
	#20
	A = 16'h3d18;
	B = 16'hbc40;
	ans_a = 16'hcf8c;
	#20
	A = 16'hbefc;
	B = 16'hbe82;
	ans_a = 16'hced6;
	#20
	A = 16'h3d09;
	B = 16'h3646;
	ans_a = 16'hceb6;
	#20
	A = 16'h39eb;
	B = 16'h37cf;
	ans_a = 16'hce9f;
	#20
	A = 16'hbd49;
	B = 16'hb544;
	ans_a = 16'hce83;
	#20
	A = 16'hbd77;
	B = 16'h3c90;
	ans_a = 16'hcee7;
	#20
	A = 16'h358a;
	B = 16'h3d98;
	ans_a = 16'hcec8;
	#20
	A = 16'h3f99;
	B = 16'hbe57;
	ans_a = 16'hcf89;
	#20
	A = 16'h3c3c;
	B = 16'hbd1d;
	ans_a = 16'hcfe0;
	#20
	A = 16'hbed0;
	B = 16'h34e6;
	ans_a = 16'hd001;
	#20
	A = 16'hbc3c;
	B = 16'hb878;
	ans_a = 16'hcfdc;
	#20
	A = 16'hb875;
	B = 16'hbcb8;
	ans_a = 16'hcfb2;
	#20
	A = 16'hbcbd;
	B = 16'h38f4;
	ans_a = 16'hcfe1;
	#20
	A = 16'h3a84;
	B = 16'ha65c;
	ans_a = 16'hcfe2;
	#20
	A = 16'h3e38;
	B = 16'hbbf2;
	ans_a = 16'hd022;
	#20
	A = 16'h36d9;
	B = 16'h3b2a;
	ans_a = 16'hd016;
	#20
	A = 16'hbda0;
	B = 16'hbec3;
	ans_a = 16'hcf94;
	#20
	A = 16'hb4df;
	B = 16'h3994;
	ans_a = 16'hcfa2;
	#20
	A = 16'hbf79;
	B = 16'hbd32;
	ans_a = 16'hcf07;
	#20
	A = 16'h375f;
	B = 16'h2cde;
	ans_a = 16'hcf05;
	#20
	A = 16'hbeca;
	B = 16'h3f27;
	ans_a = 16'hcfc7;
	#20
	A = 16'haf01;
	B = 16'hbcd0;
	ans_a = 16'hcfbf;
	#20
	A = 16'hb512;
	B = 16'hbba2;
	ans_a = 16'hcfac;
	#20
	A = 16'hbf91;
	B = 16'h34ae;
	ans_a = 16'hcfcf;
	#20
	A = 16'h3ffc;
	B = 16'h3cc6;
	ans_a = 16'hcf36;
	#20
	A = 16'hbcdd;
	B = 16'h3d6f;
	ans_a = 16'hcfa0;
	#20
	A = 16'h39e5;
	B = 16'h34ec;
	ans_a = 16'hcf91;
	#20
	A = 16'hbb3b;
	B = 16'hbfd2;
	ans_a = 16'hcf20;
	#20
	A = 16'hb60f;
	B = 16'h383b;
	ans_a = 16'hcf2d;
	#20
	A = 16'h3f67;
	B = 16'h3fbd;
	ans_a = 16'hce48;
	#20
	A = 16'hbd5a;
	B = 16'hb3d8;
	ans_a = 16'hce33;
	#20
	A = 16'hb806;
	B = 16'hbe00;
	ans_a = 16'hce03;
	#20
	A = 16'hbcd3;
	B = 16'h3b65;
	ans_a = 16'hce4a;
	#20
	A = 16'h39f7;
	B = 16'hb635;
	ans_a = 16'hce5d;
	#20
	A = 16'hbdba;
	B = 16'h386f;
	ans_a = 16'hce90;
	#20
	A = 16'h39d9;
	B = 16'hb581;
	ans_a = 16'hcea0;
	#20
	A = 16'hbd19;
	B = 16'hba54;
	ans_a = 16'hce60;
	#20
	A = 16'h3870;
	B = 16'h3a20;
	ans_a = 16'hce45;
	#20
	A = 16'h2bb1;
	B = 16'h3e6f;
	ans_a = 16'hce3f;
	#20
	A = 16'hbde4;
	B = 16'h3f24;
	ans_a = 16'hcee7;
	#20
	A = 16'h36d4;
	B = 16'hbc9e;
	ans_a = 16'hcf07;
	#20
	A = 16'hbd97;
	B = 16'h3c2f;
	ans_a = 16'hcf65;
	#20
	A = 16'hbe53;
	B = 16'hbc30;
	ans_a = 16'hcefb;
	#20
	A = 16'hb452;
	B = 16'hb98d;
	ans_a = 16'hceef;
	#20
	A = 16'h3a8d;
	B = 16'hbc71;
	ans_a = 16'hcf29;
	#20
	A = 16'hbcd3;
	B = 16'hb69b;
	ans_a = 16'hcf09;
	#20
	A = 16'h3a9c;
	B = 16'h373b;
	ans_a = 16'hcef1;
	#20
	A = 16'hbe36;
	B = 16'hb843;
	ans_a = 16'hcebc;
	#20
	A = 16'hbcbd;
	B = 16'h3fdc;
	ans_a = 16'hcf51;
	#20
	A = 16'h3965;
	B = 16'h3c44;
	ans_a = 16'hcf23;
	#20
	A = 16'hb2b4;
	B = 16'h3fb8;
	ans_a = 16'hcf3d;
	#20
	A = 16'hbbe7;
	B = 16'hbc49;
	ans_a = 16'hcef9;
	#20
	A = 16'h3fce;
	B = 16'h3d79;
	ans_a = 16'hce4e;
	#20
	A = 16'hba85;
	B = 16'hb6ef;
	ans_a = 16'hce37;
	#20
	A = 16'hbd90;
	B = 16'h3c92;
	ans_a = 16'hce9d;
	#20
	A = 16'h3d89;
	B = 16'hb776;
	ans_a = 16'hcec6;
	#20
	A = 16'hbc6b;
	B = 16'hbe99;
	ans_a = 16'hce51;
	#20
	A = 16'h3cdd;
	B = 16'h3d80;
	ans_a = 16'hcde6;
	#20
	A = 16'h35df;
	B = 16'hb910;
	ans_a = 16'hcdf5;
	#20
	A = 16'h3f9e;
	B = 16'h3a04;
	ans_a = 16'hcd99;
	#20
	A = 16'h3b10;
	B = 16'h3dc2;
	ans_a = 16'hcd48;
	#20
	A = 16'hb805;
	B = 16'h386b;
	ans_a = 16'hcd5a;
	#20
	A = 16'h392d;
	B = 16'hbc6e;
	ans_a = 16'hcd88;
	#20
	A = 16'h3e40;
	B = 16'h3776;
	ans_a = 16'hcd59;
	#20
	A = 16'h3de1;
	B = 16'hbf0a;
	ans_a = 16'hcdfe;
	#20
	A = 16'h3f1b;
	B = 16'hbf6e;
	ans_a = 16'hced1;
	#20
	A = 16'hb592;
	B = 16'hbcb0;
	ans_a = 16'hceb7;
	#20
	A = 16'hb915;
	B = 16'h3ce7;
	ans_a = 16'hcee9;
	#20
	A = 16'h342a;
	B = 16'h3a32;
	ans_a = 16'hcedc;
	#20
	A = 16'h3aab;
	B = 16'hbd16;
	ans_a = 16'hcf20;
	#20
	A = 16'hbf0b;
	B = 16'hbd67;
	ans_a = 16'hce88;
	#20
	A = 16'h3d1b;
	B = 16'h3e82;
	ans_a = 16'hce03;
	#20
	A = 16'h3fb0;
	B = 16'h3afd;
	ans_a = 16'hcd98;
	#20
	A = 16'h3a27;
	B = 16'hb334;
	ans_a = 16'hcda3;
	#20
	A = 16'hba12;
	B = 16'hbf56;
	ans_a = 16'hcd4a;
	#20
	A = 16'hbeae;
	B = 16'hbc39;
	ans_a = 16'hccd9;
	#20
	A = 16'hbca6;
	B = 16'hbc3f;
	ans_a = 16'hcc8a;
	#20
	A = 16'h3e76;
	B = 16'hb843;
	ans_a = 16'hccc1;
	#20
	A = 16'h3b81;
	B = 16'hbdc6;
	ans_a = 16'hcd18;
	#20
	A = 16'h26e0;
	B = 16'hbed9;
	ans_a = 16'hcd1b;
	#20
	A = 16'hb9cc;
	B = 16'hbe68;
	ans_a = 16'hccd1;
	#20
	A = 16'h3805;
	B = 16'h3e97;
	ans_a = 16'hcc9c;
	#20
	A = 16'h3f4e;
	B = 16'h3fd0;
	ans_a = 16'hcb70;
	#20
	A = 16'hbc8f;
	B = 16'h3d21;
	ans_a = 16'hcc16;
	#20
	A = 16'h3d3a;
	B = 16'hb842;
	ans_a = 16'hcc42;
	#20
	A = 16'h37ba;
	B = 16'h387e;
	ans_a = 16'hcc31;
	#20
	A = 16'h3d60;
	B = 16'h3ce6;
	ans_a = 16'hcb8f;
	#20
	A = 16'h3bfc;
	B = 16'hbde4;
	ans_a = 16'hcc26;
	#20
	A = 16'h3509;
	B = 16'h3d2c;
	ans_a = 16'hcc0c;
	#20
	A = 16'h2c47;
	B = 16'h39ba;
	ans_a = 16'hcc09;
	#20
	A = 16'haeb6;
	B = 16'h3178;
	ans_a = 16'hcc0a;
	#20
	A = 16'hba78;
	B = 16'h3ba3;
	ans_a = 16'hcc3b;
	#20
	A = 16'h3872;
	B = 16'h3b90;
	ans_a = 16'hcc19;
	#20
	A = 16'h3d84;
	B = 16'h3e8f;
	ans_a = 16'hcb10;
	#20
	A = 16'hbc64;
	B = 16'h3e99;
	ans_a = 16'hcbf8;
	#20
	A = 16'hbff2;
	B = 16'hb86b;
	ans_a = 16'hcb6c;
	#20
	A = 16'h3384;
	B = 16'hb20f;
	ans_a = 16'hcb72;
	#20
	A = 16'hb4ae;
	B = 16'h971d;
	ans_a = 16'hcb72;
	#20
	A = 16'h3cef;
	B = 16'hac44;
	ans_a = 16'hcb7d;
	#20
	A = 16'hbedb;
	B = 16'h3c50;
	ans_a = 16'hcc35;
	#20
	A = 16'hbe19;
	B = 16'h37cf;
	ans_a = 16'hcc65;
	#20
	A = 16'hbd27;
	B = 16'h3f57;
	ans_a = 16'hccfc;
	#20
	A = 16'hb8fd;
	B = 16'h3f4f;
	ans_a = 16'hcd45;
	#20
	A = 16'hba84;
	B = 16'h3ab6;
	ans_a = 16'hcd71;
	#20
	A = 16'hbfa4;
	B = 16'hbff7;
	ans_a = 16'hcc7e;
	#20
	A = 16'hb00b;
	B = 16'h3b53;
	ans_a = 16'hcc85;
	#20
	A = 16'h2e74;
	B = 16'hb14e;
	ans_a = 16'hcc86;
	#20
	A = 16'h39c3;
	B = 16'hadcd;
	ans_a = 16'hcc8a;
	#20
	A = 16'h3d31;
	B = 16'hbc1b;
	ans_a = 16'hccdf;
	#20
	A = 16'h3847;
	B = 16'hb528;
	ans_a = 16'hccea;
	#20
	A = 16'hbde4;
	B = 16'hbe5a;
	ans_a = 16'hcc54;
	#20
	A = 16'h3624;
	B = 16'h338d;
	ans_a = 16'hcc4e;
	#20
	A = 16'hbabe;
	B = 16'h3cc0;
	ans_a = 16'hcc8e;
	#20
	A = 16'hbfcf;
	B = 16'h3d22;
	ans_a = 16'hcd2e;
	#20
	A = 16'h3a08;
	B = 16'hb6db;
	ans_a = 16'hcd43;
	#20
	A = 16'h3c8e;
	B = 16'hbc50;
	ans_a = 16'hcd92;
	#20
	A = 16'hbf6b;
	B = 16'h3ee9;
	ans_a = 16'hce5f;
	#20
	A = 16'hbdd7;
	B = 16'hbd7b;
	ans_a = 16'hcddf;
	#20
	A = 16'h3495;
	B = 16'h3edf;
	ans_a = 16'hcdc0;
	#20
	A = 16'hbcfd;
	B = 16'h24cd;
	ans_a = 16'hcdc1;
	#20
	A = 16'h36a4;
	B = 16'hbceb;
	ans_a = 16'hcde2;
	#20
	A = 16'h3739;
	B = 16'hbcec;
	ans_a = 16'hce06;
	#20
	A = 16'hbfd6;
	B = 16'h3ad4;
	ans_a = 16'hce71;
	#20
	A = 16'hb916;
	B = 16'h3e1f;
	ans_a = 16'hceaf;
	#20
	A = 16'h3e28;
	B = 16'h3f03;
	ans_a = 16'hce02;
	#20
	A = 16'h389c;
	B = 16'hbe6f;
	ans_a = 16'hce3d;
	#20
	A = 16'h3fc4;
	B = 16'h3a14;
	ans_a = 16'hcddf;
	#20
	A = 16'hb484;
	B = 16'hbf93;
	ans_a = 16'hcdbd;
	#20
	A = 16'h3cdf;
	B = 16'hbbd4;
	ans_a = 16'hce09;
	#20
	A = 16'h3f91;
	B = 16'hbfd0;
	ans_a = 16'hcef6;
	#20
	A = 16'ha5fe;
	B = 16'hbc9e;
	ans_a = 16'hcef4;
	#20
	A = 16'hbc5b;
	B = 16'h3e7f;
	ans_a = 16'hcf65;
	#20
	A = 16'h3cee;
	B = 16'hbaa6;
	ans_a = 16'hcfa7;
	#20
	A = 16'hbd66;
	B = 16'hbeb3;
	ans_a = 16'hcf16;
	#20
	A = 16'hbd87;
	B = 16'hbb7e;
	ans_a = 16'hcec3;
	#20
	A = 16'h383c;
	B = 16'hbc86;
	ans_a = 16'hcee9;
	#20
	A = 16'h3e82;
	B = 16'h3fcc;
	ans_a = 16'hce1e;
	#20
	A = 16'h3426;
	B = 16'hbe07;
	ans_a = 16'hce37;
	#20
	A = 16'hbe18;
	B = 16'hb836;
	ans_a = 16'hce04;
	#20
	A = 16'hbd26;
	B = 16'h3736;
	ans_a = 16'hce29;
	#20
	A = 16'h227e;
	B = 16'h3b65;
	ans_a = 16'hce28;
	#20
	A = 16'h3cb5;
	B = 16'haf5d;
	ans_a = 16'hce31;
	#20
	A = 16'h3b13;
	B = 16'h363d;
	ans_a = 16'hce1b;
	#20
	A = 16'h3d38;
	B = 16'hbd1c;
	ans_a = 16'hce86;
	#20
	A = 16'h3c79;
	B = 16'h349d;
	ans_a = 16'hce71;
	#20
	A = 16'h3d1b;
	B = 16'h3fc0;
	ans_a = 16'hcdd3;
	#20
	A = 16'hbc9f;
	B = 16'h358e;
	ans_a = 16'hcded;
	#20
	A = 16'h3da4;
	B = 16'hbdd7;
	ans_a = 16'hce71;
	#20
	A = 16'hbf20;
	B = 16'hbded;
	ans_a = 16'hcdc8;
	#20
	A = 16'hb451;
	B = 16'h36f9;
	ans_a = 16'hcdd0;
	#20
	A = 16'hb810;
	B = 16'hbc8b;
	ans_a = 16'hcdab;
	#20
	A = 16'hbe70;
	B = 16'ha11f;
	ans_a = 16'hcdaa;
	#20
	A = 16'h3d47;
	B = 16'hb738;
	ans_a = 16'hcdd0;
	#20
	A = 16'h394e;
	B = 16'hb856;
	ans_a = 16'hcde7;
	#20
	A = 16'hb8b1;
	B = 16'hb83d;
	ans_a = 16'hcdd3;
	#20
	A = 16'h3ec8;
	B = 16'h3a71;
	ans_a = 16'hcd7c;
	#20
	A = 16'hb941;
	B = 16'h3ef1;
	ans_a = 16'hcdc5;
	#20
	A = 16'hbfab;
	B = 16'hb9a7;
	ans_a = 16'hcd6e;
	#20
	A = 16'h3d37;
	B = 16'hba5d;
	ans_a = 16'hcdb0;
	#20
	A = 16'hbd55;
	B = 16'h3c85;
	ans_a = 16'hce10;
	#20
	A = 16'h2f88;
	B = 16'hbc93;
	ans_a = 16'hce19;
	#20
	A = 16'hbc2e;
	B = 16'h3db6;
	ans_a = 16'hce78;
	#20
	A = 16'h3e56;
	B = 16'hba6d;
	ans_a = 16'hcec9;
	#20
	A = 16'hb719;
	B = 16'hb9af;
	ans_a = 16'hceb5;
	#20
	A = 16'hbc70;
	B = 16'h377b;
	ans_a = 16'hced6;
	#20
	A = 16'h39dc;
	B = 16'hbcb1;
	ans_a = 16'hcf0d;
	#20
	A = 16'h3664;
	B = 16'hbf8c;
	ans_a = 16'hcf3d;
	#20
	A = 16'hbca1;
	B = 16'h3cc2;
	ans_a = 16'hcf95;
	#20
	A = 16'h38ba;
	B = 16'hbb4b;
	ans_a = 16'hcfb7;
	#20
	A = 16'h3b73;
	B = 16'hbf97;
	ans_a = 16'hd014;
	#20
	A = 16'hbc8e;
	B = 16'hbe3a;
	ans_a = 16'hcfb7;
	#20
	A = 16'h3599;
	B = 16'hbeb0;
	ans_a = 16'hcfdc;
	#20
	A = 16'h3cbc;
	B = 16'hbff3;
	ans_a = 16'hd039;
	#20
	A = 16'hbac2;
	B = 16'h3cfd;
	ans_a = 16'hd05b;
	#20
	A = 16'hbe9c;
	B = 16'h3e2d;
	ans_a = 16'hd0ad;
	#20
	A = 16'hb911;
	B = 16'hb60b;
	ans_a = 16'hd0a5;
	#20
	A = 16'hba8f;
	B = 16'hba45;
	ans_a = 16'hd090;
	#20
	A = 16'h3fd1;
	B = 16'hbfe0;
	ans_a = 16'hd10b;
	#20
	A = 16'hbcaa;
	B = 16'hb9ed;
	ans_a = 16'hd0ef;
	#20
	A = 16'h3abe;
	B = 16'h3c2a;
	ans_a = 16'hd0d3;
	#20
	A = 16'hbe65;
	B = 16'h3c20;
	ans_a = 16'hd108;
	#20
	A = 16'hbfdb;
	B = 16'had8b;
	ans_a = 16'hd103;
	#20
	A = 16'h3244;
	B = 16'hbd2a;
	ans_a = 16'hd10b;
	#20
	A = 16'h3e55;
	B = 16'hbbc0;
	ans_a = 16'hd13c;
	#20
	A = 16'hbde1;
	B = 16'hbdc8;
	ans_a = 16'hd0f8;
	#20
	A = 16'h37d8;
	B = 16'hbb68;
	ans_a = 16'hd107;
	#20
	A = 16'hb58e;
	B = 16'h3ecc;
	ans_a = 16'hd11a;
	#20
	A = 16'hb9a3;
	B = 16'hbe01;
	ans_a = 16'hd0f8;
	#20
	A = 16'hbec3;
	B = 16'h3b10;
	ans_a = 16'hd128;
	#20
	A = 16'h3f01;
	B = 16'hbd53;
	ans_a = 16'hd173;
	#20
	A = 16'h2f61;
	B = 16'h3faf;
	ans_a = 16'hd16c;
	#20
	A = 16'hbd9a;
	B = 16'h3f58;
	ans_a = 16'hd1be;
	#20
	A = 16'h3503;
	B = 16'h3f60;
	ans_a = 16'hd1ac;
	#20
	A = 16'hb4f6;
	B = 16'h2ee2;
	ans_a = 16'hd1ad;
	#20
	A = 16'hb889;
	B = 16'h3132;
	ans_a = 16'hd1b0;
	#20
	A = 16'h3a4a;
	B = 16'h353b;
	ans_a = 16'hd1a8;
	#20
	A = 16'h38cc;
	B = 16'hbe3f;
	ans_a = 16'hd1c6;
	#20
	A = 16'hbbc6;
	B = 16'h3549;
	ans_a = 16'hd1d0;
	#20
	A = 16'hb81a;
	B = 16'hb7ad;
	ans_a = 16'hd1c8;
	#20
	A = 16'hba0c;
	B = 16'hbc95;
	ans_a = 16'hd1ac;
	#20
	A = 16'hbe61;
	B = 16'h3ac0;
	ans_a = 16'hd1d7;
	#20
	A = 16'h389a;
	B = 16'hbd09;
	ans_a = 16'hd1ee;
	#20
	A = 16'h3fb0;
	B = 16'hbf87;
	ans_a = 16'hd262;
	#20
	A = 16'h3c05;
	B = 16'h3d43;
	ans_a = 16'hd238;
	#20
	A = 16'h39eb;
	B = 16'hbd15;
	ans_a = 16'hd256;
	#20
	A = 16'h3f48;
	B = 16'h3bd7;
	ans_a = 16'hd21d;
	#20
	A = 16'h3c96;
	B = 16'h36da;
	ans_a = 16'hd20d;
	#20
	A = 16'h31b0;
	B = 16'h278b;
	ans_a = 16'hd20d;
	#20
	A = 16'h3631;
	B = 16'h3d95;
	ans_a = 16'hd1fc;
	#20
	A = 16'h3f60;
	B = 16'h3c1a;
	ans_a = 16'hd1c0;
	#20
	A = 16'hb7a6;
	B = 16'hb447;
	ans_a = 16'hd1bc;
	#20
	A = 16'h3c03;
	B = 16'h2788;
	ans_a = 16'hd1bb;
	#20
	A = 16'h3b6a;
	B = 16'hb85b;
	ans_a = 16'hd1cb;
	#20
	A = 16'h39c0;
	B = 16'hbea8;
	ans_a = 16'hd1f1;
	#20
	A = 16'h37d9;
	B = 16'h3f14;
	ans_a = 16'hd1d5;
	#20
	A = 16'hb42e;
	B = 16'h3b9d;
	ans_a = 16'hd1dd;
	#20
	A = 16'haf6c;
	B = 16'hbc81;
	ans_a = 16'hd1d9;
	#20
	A = 16'hb8c6;
	B = 16'hb53e;
	ans_a = 16'hd1d3;
	#20
	A = 16'hbd8b;
	B = 16'hbe2f;
	ans_a = 16'hd18e;
	#20
	A = 16'hb4c8;
	B = 16'haced;
	ans_a = 16'hd18d;
	#20
	A = 16'h3a50;
	B = 16'hb95b;
	ans_a = 16'hd19e;
	#20
	A = 16'hb81c;
	B = 16'hbfed;
	ans_a = 16'hd17d;
	#20
	A = 16'hbf96;
	B = 16'h3564;
	ans_a = 16'hd191;
	#20
	A = 16'h3f42;
	B = 16'hb8aa;
	ans_a = 16'hd1b3;
	#20
	A = 16'hb8bd;
	B = 16'h368d;
	ans_a = 16'hd1bb;
	#20
	A = 16'hbf40;
	B = 16'h3c48;
	ans_a = 16'hd1f9;
	#20
	A = 16'hbe05;
	B = 16'hb997;
	ans_a = 16'hd1d7;
	#20
	A = 16'hbea6;
	B = 16'h374d;
	ans_a = 16'hd1ef;
	#20
	A = 16'hbe39;
	B = 16'hbe92;
	ans_a = 16'hd19d;
	#20
	A = 16'hbbbd;
	B = 16'hbb6a;
	ans_a = 16'hd180;
	#20
	A = 16'h3fd2;
	B = 16'h3d36;
	ans_a = 16'hd12e;
	#20
	A = 16'h3ea5;
	B = 16'h3d7f;
	ans_a = 16'hd0e5;
	#20
	A = 16'hbdbc;
	B = 16'h3e5a;
	ans_a = 16'hd12e;
	#20
	A = 16'hbec6;
	B = 16'hbb6d;
	ans_a = 16'hd0fc;
	#20
	A = 16'hbe8e;
	B = 16'hb731;
	ans_a = 16'hd0e4;
	#20
	A = 16'had7e;
	B = 16'h3a47;
	ans_a = 16'hd0e6;
	#20
	A = 16'hbe23;
	B = 16'hbf61;
	ans_a = 16'hd08b;
	#20
	A = 16'ha52c;
	B = 16'hbe84;
	ans_a = 16'hd08a;
	#20
	A = 16'hbf90;
	B = 16'hbfb1;
	ans_a = 16'hd016;
	#20
	A = 16'hbd49;
	B = 16'h38f1;
	ans_a = 16'hd030;
	#20
	A = 16'h3b31;
	B = 16'h36d4;
	ans_a = 16'hd024;
	#20
	A = 16'hbe8f;
	B = 16'h37c3;
	ans_a = 16'hd03d;
	#20
	A = 16'h3c4c;
	B = 16'ha38e;
	ans_a = 16'hd03e;
	#20
	A = 16'hba96;
	B = 16'hb6c3;
	ans_a = 16'hd033;
	#20
	A = 16'h36a3;
	B = 16'h3fe1;
	ans_a = 16'hd019;
	#20
	A = 16'hbdeb;
	B = 16'h367b;
	ans_a = 16'hd02c;
	#20
	A = 16'h34f1;
	B = 16'h3aaf;
	ans_a = 16'hd024;
	#20
	A = 16'h38b0;
	B = 16'h2e09;
	ans_a = 16'hd022;
	#20
	A = 16'hb828;
	B = 16'hbcb4;
	ans_a = 16'hd00e;
	#20
	A = 16'h3dd0;
	B = 16'hb705;
	ans_a = 16'hd022;
	#20
	A = 16'hbf44;
	B = 16'h3f4d;
	ans_a = 16'hd08c;
	#20
	A = 16'h359d;
	B = 16'hb021;
	ans_a = 16'hd08d;
	#20
	A = 16'h3854;
	B = 16'hb6fb;
	ans_a = 16'hd095;
	#20
	A = 16'h3ca0;
	B = 16'h3e94;
	ans_a = 16'hd058;
	#20
	A = 16'h3ebd;
	B = 16'h3ee4;
	ans_a = 16'hcff6;
	#20
	A = 16'hb9b0;
	B = 16'hbfa3;
	ans_a = 16'hcf9f;
	#20
	A = 16'hadc2;
	B = 16'hb563;
	ans_a = 16'hcf9d;
	#20
	A = 16'hb6c2;
	B = 16'hbf2c;
	ans_a = 16'hcf6d;
	#20
	A = 16'h3e56;
	B = 16'hbb37;
	ans_a = 16'hcfc8;
	#20
	A = 16'hb5f3;
	B = 16'hb9d1;
	ans_a = 16'hcfb7;
	#20
	A = 16'h3fc5;
	B = 16'h3518;
	ans_a = 16'hcf8f;
	#20
	A = 16'hbd66;
	B = 16'hbc0d;
	ans_a = 16'hcf38;
	#20
	A = 16'h3c17;
	B = 16'hbbdc;
	ans_a = 16'hcf78;
	#20
	A = 16'h3d16;
	B = 16'h3e51;
	ans_a = 16'hcef8;
	#20
	A = 16'hbd3b;
	B = 16'h376f;
	ans_a = 16'hcf1f;
	#20
	A = 16'h3d47;
	B = 16'hb855;
	ans_a = 16'hcf4d;
	#20
	A = 16'h3a5a;
	B = 16'hbe9c;
	ans_a = 16'hcfa1;
	#20
	A = 16'h3e92;
	B = 16'hb839;
	ans_a = 16'hcfd8;
	#20
	A = 16'h39d8;
	B = 16'h388c;
	ans_a = 16'hcfbd;
	#20
	A = 16'h3d2b;
	B = 16'h3a76;
	ans_a = 16'hcf7a;
	#20
	A = 16'h3f22;
	B = 16'hbc2d;
	ans_a = 16'hcff1;
	#20
	A = 16'h339e;
	B = 16'hbba7;
	ans_a = 16'hd000;
	#20
	A = 16'ha0ed;
	B = 16'hbd18;
	ans_a = 16'hcfff;
	#20
	A = 16'hbd02;
	B = 16'hb8c9;
	ans_a = 16'hcfcf;
	#20
	A = 16'h3cd9;
	B = 16'hb35a;
	ans_a = 16'hcfe1;
	#20
	A = 16'h1c09;
	B = 16'hb8f5;
	ans_a = 16'hcfe1;
	#20
	A = 16'hbdfb;
	B = 16'h3cb8;
	ans_a = 16'hd029;
	#20
	A = 16'h33b1;
	B = 16'hb778;
	ans_a = 16'hd02d;
	#20
	A = 16'h3ee1;
	B = 16'hbc50;
	ans_a = 16'hd068;
	#20
	A = 16'h3f3d;
	B = 16'hbd4e;
	ans_a = 16'hd0b5;
	#20
	A = 16'h3d2d;
	B = 16'h3c7b;
	ans_a = 16'hd087;
	#20
	A = 16'haf21;
	B = 16'h3871;
	ans_a = 16'hd089;
	#20
	A = 16'hbe2d;
	B = 16'h3ea5;
	ans_a = 16'hd0db;
	#20
	A = 16'hb913;
	B = 16'h3e96;
	ans_a = 16'hd0fc;
	#20
	A = 16'h38b1;
	B = 16'hbc98;
	ans_a = 16'hd112;
	#20
	A = 16'ha99a;
	B = 16'hba83;
	ans_a = 16'hd111;
	#20
	A = 16'hb8bb;
	B = 16'hb522;
	ans_a = 16'hd10b;
	#20
	A = 16'hb80c;
	B = 16'h2d36;
	ans_a = 16'hd10c;
	#20
	A = 16'h3237;
	B = 16'hbb88;
	ans_a = 16'hd112;
	#20
	A = 16'hbe32;
	B = 16'hbc34;
	ans_a = 16'hd0de;
	#20
	A = 16'h3769;
	B = 16'h3c75;
	ans_a = 16'hd0cd;
	#20
	A = 16'h32fa;
	B = 16'ha85a;
	ans_a = 16'hd0cd;
	#20
	A = 16'hbc65;
	B = 16'h387a;
	ans_a = 16'hd0e1;
	#20
	A = 16'h3ef1;
	B = 16'h3f03;
	ans_a = 16'hd080;
	#20
	A = 16'h3d3f;
	B = 16'h35a5;
	ans_a = 16'hd071;
	#20
	A = 16'h3e7e;
	B = 16'h3d4a;
	ans_a = 16'hd02c;
	#20
	A = 16'hbeeb;
	B = 16'h3ec4;
	ans_a = 16'hd08a;
	#20
	A = 16'hbf1c;
	B = 16'h382b;
	ans_a = 16'hd0a8;
	#20
	A = 16'hb76e;
	B = 16'hbedb;
	ans_a = 16'hd08f;
	#20
	A = 16'hbd7f;
	B = 16'h3a0e;
	ans_a = 16'hd0b0;
	#20
	A = 16'h3b11;
	B = 16'ha919;
	ans_a = 16'hd0b1;
	#20
	A = 16'h3cb1;
	B = 16'h3fdd;
	ans_a = 16'hd067;
	#20
	A = 16'hbff0;
	B = 16'h2640;
	ans_a = 16'hd069;
	#20
	A = 16'hbe5d;
	B = 16'hbc4d;
	ans_a = 16'hd032;
	#20
	A = 16'hbb5d;
	B = 16'h3e31;
	ans_a = 16'hd060;
	#20
	A = 16'h2cb4;
	B = 16'h366c;
	ans_a = 16'hd05f;
	#20
	A = 16'h3d6c;
	B = 16'hb455;
	ans_a = 16'hd06b;
	#20
	A = 16'h39b8;
	B = 16'h3e35;
	ans_a = 16'hd048;
	#20
	A = 16'h3c00;
	B = 16'hbede;
	ans_a = 16'hd07f;
	#20
	A = 16'hbcbf;
	B = 16'hbc73;
	ans_a = 16'hd055;
	#20
	A = 16'hb84e;
	B = 16'h371c;
	ans_a = 16'hd05d;
	#20
	A = 16'h3c1d;
	B = 16'h34c0;
	ans_a = 16'hd053;
	#20
	A = 16'h3dcb;
	B = 16'hbaa5;
	ans_a = 16'hd07a;
	#20
	A = 16'h3916;
	B = 16'h3b5f;
	ans_a = 16'hd067;
	#20
	A = 16'hbd11;
	B = 16'h3be7;
	ans_a = 16'hd08f;
	#20
	A = 16'h2f8c;
	B = 16'h3add;
	ans_a = 16'hd08c;
	#20
	A = 16'hbc78;
	B = 16'hb0ab;
	ans_a = 16'hd087;
	#20
	A = 16'hb130;
	B = 16'hb825;
	ans_a = 16'hd084;
	#20
	A = 16'hb9a3;
	B = 16'h399b;
	ans_a = 16'hd094;
	#20
	A = 16'hbb18;
	B = 16'h3719;
	ans_a = 16'hd0a1;
	#20
	A = 16'hb997;
	B = 16'hbb15;
	ans_a = 16'hd08d;
	#20
	A = 16'hb519;
	B = 16'hb05b;
	ans_a = 16'hd08c;
	#20
	A = 16'h3716;
	B = 16'h39da;
	ans_a = 16'hd082;
	#20
	A = 16'hbfd2;
	B = 16'hbd9b;
	ans_a = 16'hd02a;
	#20
	A = 16'hb21f;
	B = 16'h39b6;
	ans_a = 16'hd02e;
	#20
	A = 16'h3ebc;
	B = 16'hbe43;
	ans_a = 16'hd082;
	#20
	A = 16'ha7de;
	B = 16'h2d5e;
	ans_a = 16'hd082;
	#20
	A = 16'hacac;
	B = 16'h39ef;
	ans_a = 16'hd084;
	#20
	A = 16'h3257;
	B = 16'hbc36;
	ans_a = 16'hd08b;
	#20
	A = 16'h2c66;
	B = 16'hb4b2;
	ans_a = 16'hd08c;
	#20
	A = 16'hbc7c;
	B = 16'hb9d3;
	ans_a = 16'hd072;
	#20
	A = 16'h3e9d;
	B = 16'h3d31;
	ans_a = 16'hd02d;
	#20
	A = 16'hbac5;
	B = 16'hb88d;
	ans_a = 16'hd01e;
	#20
	A = 16'h3c9b;
	B = 16'h3dee;
	ans_a = 16'hcfcf;
	#20
	A = 16'hbd8a;
	B = 16'hac7d;
	ans_a = 16'hcfc9;
	#20
	A = 16'hbdfd;
	B = 16'h3ad2;
	ans_a = 16'hd00d;
	#20
	A = 16'h3e0f;
	B = 16'hb80d;
	ans_a = 16'hd026;
	#20
	A = 16'h38d4;
	B = 16'h3406;
	ans_a = 16'hd021;
	#20
	A = 16'hb2da;
	B = 16'h3e6d;
	ans_a = 16'hd02c;
	#20
	A = 16'hbb7c;
	B = 16'h3968;
	ans_a = 16'hd040;
	#20
	A = 16'h3c88;
	B = 16'hb8d6;
	ans_a = 16'hd056;
	#20
	A = 16'h3dd3;
	B = 16'h3cc8;
	ans_a = 16'hd01e;
	#20
	A = 16'h3c27;
	B = 16'hbeb8;
	ans_a = 16'hd056;
	#20
	A = 16'h2c76;
	B = 16'h3879;
	ans_a = 16'hd055;
	#20
	A = 16'h3f9b;
	B = 16'hbe04;
	ans_a = 16'hd0b0;
	#20
	A = 16'h3e31;
	B = 16'hbe52;
	ans_a = 16'hd0fe;
	#20
	A = 16'hb146;
	B = 16'hbda8;
	ans_a = 16'hd0f7;
	#20
	A = 16'ha820;
	B = 16'h36a8;
	ans_a = 16'hd0f7;
	#20
	A = 16'h3487;
	B = 16'hbbec;
	ans_a = 16'hd100;
	#20
	A = 16'h3cb1;
	B = 16'h33d9;
	ans_a = 16'hd0f7;
	#20
	A = 16'hbf51;
	B = 16'h39ee;
	ans_a = 16'hd122;
	#20
	A = 16'hb23e;
	B = 16'h3e39;
	ans_a = 16'hd12c;
	#20
	A = 16'hb8f3;
	B = 16'h3cd6;
	ans_a = 16'hd144;
	#20
	A = 16'hbc73;
	B = 16'hb495;
	ans_a = 16'hd13a;
	#20
	A = 16'hb878;
	B = 16'hb98b;
	ans_a = 16'hd12e;
	#20
	A = 16'hb87e;
	B = 16'h3619;
	ans_a = 16'hd135;
	#20
	A = 16'h3bf3;
	B = 16'h3603;
	ans_a = 16'hd129;
	#20
	A = 16'hbffb;
	B = 16'h3d1f;
	ans_a = 16'hd17b;
	#20
	A = 16'hbe8a;
	B = 16'h3825;
	ans_a = 16'hd196;
	#20
	A = 16'hbbf4;
	B = 16'hbc0b;
	ans_a = 16'hd176;
	#20
	A = 16'h35aa;
	B = 16'hbcbb;
	ans_a = 16'hd183;
	#20
	A = 16'h34e2;
	B = 16'h285e;
	ans_a = 16'hd183;
	#20
	A = 16'h39f4;
	B = 16'h39b8;
	ans_a = 16'hd172;
	#20
	A = 16'hbae3;
	B = 16'h364d;
	ans_a = 16'hd17d;
	#20
	A = 16'hbf13;
	B = 16'hbbfa;
	ans_a = 16'hd145;
	#20
	A = 16'haa07;
	B = 16'h3d88;
	ans_a = 16'hd147;
	#20
	A = 16'hbedc;
	B = 16'hbf46;
	ans_a = 16'hd0e3;
	#20
	A = 16'hb8d5;
	B = 16'h35ed;
	ans_a = 16'hd0ea;
	#20
	A = 16'h3da5;
	B = 16'h3a88;
	ans_a = 16'hd0c5;
	#20
	A = 16'hbf33;
	B = 16'hb549;
	ans_a = 16'hd0b2;
	#20
	A = 16'h4000;
	B = 16'h3ea4;
	ans_a = 16'hd048;
	#20
	A = 16'h3d84;
	B = 16'h3597;
	ans_a = 16'hd039;
	#20
	A = 16'hb96b;
	B = 16'h3f1c;
	ans_a = 16'hd060;
	#20
	A = 16'h3599;
	B = 16'hb9f8;
	ans_a = 16'hd068;
	#20
	A = 16'hb439;
	B = 16'h38b5;
	ans_a = 16'hd06d;
	#20
	A = 16'h3d09;
	B = 16'h3f79;
	ans_a = 16'hd022;
	#20
	A = 16'h3710;
	B = 16'h3d4a;
	ans_a = 16'hd00f;
	#20
	A = 16'h3f4c;
	B = 16'h34cd;
	ans_a = 16'hcffb;
	#20
	A = 16'h3235;
	B = 16'hae24;
	ans_a = 16'hcffc;
	#20
	A = 16'h3fc5;
	B = 16'hb877;
	ans_a = 16'hd021;
	#20
	A = 16'hba8d;
	B = 16'hb458;
	ans_a = 16'hd01a;
	#20
	A = 16'hb959;
	B = 16'hb90b;
	ans_a = 16'hd00d;
	#20
	A = 16'hbaf5;
	B = 16'h3cc2;
	ans_a = 16'hd02e;
	#20
	A = 16'h3dfc;
	B = 16'h2ead;
	ans_a = 16'hd029;
	#20
	A = 16'h3747;
	B = 16'hbebc;
	ans_a = 16'hd042;
	#20
	A = 16'h347d;
	B = 16'h3b8d;
	ans_a = 16'hd03a;
	#20
	A = 16'hbbc3;
	B = 16'h3c8b;
	ans_a = 16'hd05d;
	#20
	A = 16'hb960;
	B = 16'h3cee;
	ans_a = 16'hd078;
	#20
	A = 16'h3cdb;
	B = 16'h3ef9;
	ans_a = 16'hd034;
	#20
	A = 16'hbbc8;
	B = 16'h3ea6;
	ans_a = 16'hd068;
	#20
	A = 16'hbd16;
	B = 16'hb8a8;
	ans_a = 16'hd050;
	#20
	A = 16'hbfa6;
	B = 16'h3f2d;
	ans_a = 16'hd0be;
	#20
	A = 16'h3eac;
	B = 16'hb4d6;
	ans_a = 16'hd0ce;
	#20
	A = 16'hbaa8;
	B = 16'hbcfc;
	ans_a = 16'hd0ad;
	#20
	A = 16'h3f10;
	B = 16'h30d6;
	ans_a = 16'hd0a4;
	#20
	A = 16'hbd21;
	B = 16'h380a;
	ans_a = 16'hd0b9;
	#20
	A = 16'h3d19;
	B = 16'h32d8;
	ans_a = 16'hd0b0;
	#20
	A = 16'hbf0d;
	B = 16'h3d11;
	ans_a = 16'hd0f7;
	#20
	A = 16'h3dbf;
	B = 16'h3d40;
	ans_a = 16'hd0bb;
	#20
	A = 16'h3b87;
	B = 16'hbc73;
	ans_a = 16'hd0dc;
	#20
	A = 16'h2fc5;
	B = 16'h392f;
	ans_a = 16'hd0d9;
	#20
	A = 16'h3a00;
	B = 16'hb0dc;
	ans_a = 16'hd0dd;
	#20
	A = 16'h3e7d;
	B = 16'hbecb;
	ans_a = 16'hd135;
	#20
	A = 16'hbb93;
	B = 16'h38c2;
	ans_a = 16'hd147;
	#20
	A = 16'h36de;
	B = 16'h3c6f;
	ans_a = 16'hd138;
	#20
	A = 16'h3bc9;
	B = 16'hbdd3;
	ans_a = 16'hd165;
	#20
	A = 16'hbe53;
	B = 16'hbb05;
	ans_a = 16'hd139;
	#20
	A = 16'hb8a7;
	B = 16'hb97e;
	ans_a = 16'hd12c;
	#20
	A = 16'hbf24;
	B = 16'hbc49;
	ans_a = 16'hd0ef;
	#20
	A = 16'hbcde;
	B = 16'h3c78;
	ans_a = 16'hd11a;
	#20
	A = 16'hbfdb;
	B = 16'hbc33;
	ans_a = 16'hd0d8;
	#20
	A = 16'hbd90;
	B = 16'h3f93;
	ans_a = 16'hd12c;
	#20
	A = 16'hbc0a;
	B = 16'h3bcd;
	ans_a = 16'hd14c;
	#20
	A = 16'hb802;
	B = 16'hbdd6;
	ans_a = 16'hd135;
	#20
	A = 16'hbe0c;
	B = 16'h3044;
	ans_a = 16'hd13b;
	#20
	A = 16'haf91;
	B = 16'h3b32;
	ans_a = 16'hd13e;
	#20
	A = 16'h3e42;
	B = 16'h3b48;
	ans_a = 16'hd110;
	#20
	A = 16'h3847;
	B = 16'hb255;
	ans_a = 16'hd113;
	#20
	A = 16'hbd14;
	B = 16'hb72c;
	ans_a = 16'hd101;
	#20
	A = 16'h32ad;
	B = 16'hbab4;
	ans_a = 16'hd107;
	#20
	A = 16'hb2ce;
	B = 16'h3bcb;
	ans_a = 16'hd10e;
	#20
	A = 16'h3739;
	B = 16'h3cbd;
	ans_a = 16'hd0fd;
	#20
	A = 16'h3e54;
	B = 16'h3fc2;
	ans_a = 16'hd09b;
	#20
	A = 16'h335d;
	B = 16'hbed3;
	ans_a = 16'hd0a8;
	#20
	A = 16'h3d7b;
	B = 16'h3f74;
	ans_a = 16'hd056;
	#20
	A = 16'h3d68;
	B = 16'h3f41;
	ans_a = 16'hd008;
	#20
	A = 16'h3d6e;
	B = 16'hb0d9;
	ans_a = 16'hd00f;
	#20
	A = 16'h2d32;
	B = 16'h3626;
	ans_a = 16'hd00e;
	#20
	A = 16'hb44f;
	B = 16'hbdb1;
	ans_a = 16'hd002;
	#20
	A = 16'h3998;
	B = 16'h3e5b;
	ans_a = 16'hcfbd;
	#20
	A = 16'hb930;
	B = 16'h3772;
	ans_a = 16'hcfd0;
	#20
	A = 16'hbaa9;
	B = 16'hb7e0;
	ans_a = 16'hcfb6;
	#20
	A = 16'hbc28;
	B = 16'hbb87;
	ans_a = 16'hcf77;
	#20
	A = 16'hb499;
	B = 16'hbd78;
	ans_a = 16'hcf5e;
	#20
	A = 16'h3e7a;
	B = 16'hbccf;
	ans_a = 16'hcfdb;
	#20
	A = 16'hbbe9;
	B = 16'h3f8f;
	ans_a = 16'hd029;
	#20
	A = 16'h3d3c;
	B = 16'hbdcf;
	ans_a = 16'hd066;
	#20
	A = 16'ha45d;
	B = 16'hbb58;
	ans_a = 16'hd065;
	#20
	A = 16'hbf0b;
	B = 16'h3d23;
	ans_a = 16'hd0ad;
	#20
	A = 16'hbece;
	B = 16'h2c36;
	ans_a = 16'hd0b1;
	#20
	A = 16'h947f;
	B = 16'hb0e2;
	ans_a = 16'hd0b1;
	#20
	A = 16'haa4c;
	B = 16'h3ee6;
	ans_a = 16'hd0b4;
	#20
	A = 16'hbe1c;
	B = 16'h3c12;
	ans_a = 16'hd0e6;
	#20
	A = 16'hbc51;
	B = 16'hb46f;
	ans_a = 16'hd0dc;
	#20
	A = 16'h25a1;
	B = 16'hbe3a;
	ans_a = 16'hd0dd;
	#20
	A = 16'h2684;
	B = 16'hb989;
	ans_a = 16'hd0de;
	#20
	A = 16'h3af2;
	B = 16'hb9a0;
	ans_a = 16'hd0f2;
	#20
	A = 16'h3812;
	B = 16'hb887;
	ans_a = 16'hd0fb;
	#20
	A = 16'hb9a7;
	B = 16'h3d59;
	ans_a = 16'hd119;
	#20
	A = 16'h30ad;
	B = 16'h316c;
	ans_a = 16'hd118;
	#20
	A = 16'h37d4;
	B = 16'h3316;
	ans_a = 16'hd115;
	#20
	A = 16'hbd8c;
	B = 16'hbdf3;
	ans_a = 16'hd0d3;
	#20
	A = 16'hbd80;
	B = 16'h3d49;
	ans_a = 16'hd10d;
	#20
	A = 16'hbd5b;
	B = 16'hbd23;
	ans_a = 16'hd0d6;
	#20
	A = 16'hb54c;
	B = 16'h38cc;
	ans_a = 16'hd0dc;
	#20
	A = 16'h3f5e;
	B = 16'h32f0;
	ans_a = 16'hd0cf;
	#20
	A = 16'h389c;
	B = 16'h3f62;
	ans_a = 16'hd0ad;
	#20
	A = 16'h350e;
	B = 16'h3e09;
	ans_a = 16'hd09e;
	#20
	A = 16'h3740;
	B = 16'h3045;
	ans_a = 16'hd09c;
	#20
	A = 16'h3a11;
	B = 16'hbbcc;
	ans_a = 16'hd0b4;
	#20
	A = 16'hbe99;
	B = 16'h3f75;
	ans_a = 16'hd116;
	#20
	A = 16'h3155;
	B = 16'h399d;
	ans_a = 16'hd112;
	#20
	A = 16'hbfe8;
	B = 16'hbc3b;
	ans_a = 16'hd0cf;
	#20
	A = 16'hb9ad;
	B = 16'h3e4d;
	ans_a = 16'hd0f3;
	#20
	A = 16'h2f6a;
	B = 16'hbef9;
	ans_a = 16'hd0f9;
	#20
	A = 16'h3a4a;
	B = 16'hbcde;
	ans_a = 16'hd118;
	#20
	A = 16'h3ec3;
	B = 16'h3de8;
	ans_a = 16'hd0c8;
	#20
	A = 16'h39db;
	B = 16'hb7fc;
	ans_a = 16'hd0d4;
	#20
	A = 16'hb914;
	B = 16'hbd22;
	ans_a = 16'hd0ba;
	#20
	A = 16'hbad0;
	B = 16'h3c54;
	ans_a = 16'hd0d7;
	#20
	A = 16'hbe23;
	B = 16'hbb7e;
	ans_a = 16'hd0a9;
	#20
	A = 16'hb726;
	B = 16'h3e74;
	ans_a = 16'hd0c0;
	#20
	A = 16'hb7d9;
	B = 16'h3d35;
	ans_a = 16'hd0d4;
	#20
	A = 16'h3afe;
	B = 16'hbec5;
	ans_a = 16'hd103;
	#20
	A = 16'h3e3c;
	B = 16'h3ec9;
	ans_a = 16'hd0ae;
	#20
	A = 16'hbf27;
	B = 16'hb10c;
	ans_a = 16'hd0a5;
	#20
	A = 16'h3378;
	B = 16'hbc4d;
	ans_a = 16'hd0ad;
	#20
	A = 16'h3cc4;
	B = 16'hbc68;
	ans_a = 16'hd0d7;
	#20
	A = 16'h38a7;
	B = 16'h3999;
	ans_a = 16'hd0ca;
	#20
	A = 16'h3cb9;
	B = 16'hbc00;
	ans_a = 16'hd0f0;
	#20
	A = 16'hb771;
	B = 16'hbe9b;
	ans_a = 16'hd0d7;
	#20
	A = 16'h3c18;
	B = 16'hbe51;
	ans_a = 16'hd10b;
	#20
	A = 16'h3b6d;
	B = 16'h3ba7;
	ans_a = 16'hd0ef;
	#20
	A = 16'hbb0f;
	B = 16'h3cc7;
	ans_a = 16'hd111;
	#20
	A = 16'hb571;
	B = 16'h35e1;
	ans_a = 16'hd115;
	#20
	A = 16'h3a80;
	B = 16'hb8c0;
	ans_a = 16'hd124;
	#20
	A = 16'hbff6;
	B = 16'hbc9e;
	ans_a = 16'hd0da;
	#20
	A = 16'hbffd;
	B = 16'hbde4;
	ans_a = 16'hd07c;
	#20
	A = 16'hb85d;
	B = 16'h3209;
	ans_a = 16'hd07f;
	#20
	A = 16'hb4fe;
	B = 16'h3e64;
	ans_a = 16'hd08f;
	#20
	A = 16'hbb4d;
	B = 16'hb0ea;
	ans_a = 16'hd08b;
	#20
	A = 16'hbf0c;
	B = 16'h38c3;
	ans_a = 16'hd0ad;
	#20
	A = 16'h3746;
	B = 16'hbfe9;
	ans_a = 16'hd0ca;
	#20
	A = 16'ha491;
	B = 16'hbff7;
	ans_a = 16'hd0c9;
	#20
	A = 16'h36a4;
	B = 16'h3ce7;
	ans_a = 16'hd0b9;
	#20
	A = 16'hb841;
	B = 16'h3c96;
	ans_a = 16'hd0cd;
	#20
	A = 16'hbdab;
	B = 16'h3d03;
	ans_a = 16'hd106;
	#20
	A = 16'hbe32;
	B = 16'h3f87;
	ans_a = 16'hd163;
	#20
	A = 16'h39ee;
	B = 16'hbb6d;
	ans_a = 16'hd179;
	#20
	A = 16'h3cbd;
	B = 16'hba8d;
	ans_a = 16'hd198;
	#20
	A = 16'h3ec6;
	B = 16'h34c2;
	ans_a = 16'hd188;
	#20
	A = 16'h3d1a;
	B = 16'h36ec;
	ans_a = 16'hd176;
	#20
	A = 16'hbdc1;
	B = 16'h351d;
	ans_a = 16'hd185;
	#20
	A = 16'hba52;
	B = 16'hb81a;
	ans_a = 16'hd178;
	#20
	A = 16'h3fbd;
	B = 16'hbc81;
	ans_a = 16'hd1be;
	#20
	A = 16'h3c17;
	B = 16'h2c0a;
	ans_a = 16'hd1bc;
	#20
	A = 16'h392c;
	B = 16'hbac2;
	ans_a = 16'hd1cd;
	#20
	A = 16'hb83b;
	B = 16'hb45f;
	ans_a = 16'hd1c8;
	#20
	A = 16'hb751;
	B = 16'hbf91;
	ans_a = 16'hd1ac;
	#20
	A = 16'hbdda;
	B = 16'hbcae;
	ans_a = 16'hd175;
	#20
	A = 16'h3dd7;
	B = 16'h2cec;
	ans_a = 16'hd171;
	#20
	A = 16'hbc35;
	B = 16'hadac;
	ans_a = 16'hd16e;
	#20
	A = 16'hbe82;
	B = 16'hbf4f;
	ans_a = 16'hd10f;
	#20
	A = 16'h3c49;
	B = 16'hb6c3;
	ans_a = 16'hd11d;
	#20
	A = 16'hbb57;
	B = 16'hb7af;
	ans_a = 16'hd10f;
	#20
	A = 16'hb0f9;
	B = 16'h3ed8;
	ans_a = 16'hd118;
	#20
	A = 16'hbd70;
	B = 16'hb8ce;
	ans_a = 16'hd0fe;
	#20
	A = 16'h3c6d;
	B = 16'h3f0a;
	ans_a = 16'hd0c0;
	#20
	A = 16'hbefd;
	B = 16'h3fcc;
	ans_a = 16'hd12d;
	#20
	A = 16'h3785;
	B = 16'hbf47;
	ans_a = 16'hd148;
	#20
	A = 16'hbef6;
	B = 16'h2a5a;
	ans_a = 16'hd14b;
	#20
	A = 16'h35d9;
	B = 16'ha3bd;
	ans_a = 16'hd14b;
	#20
	A = 16'h3a00;
	B = 16'h20b9;
	ans_a = 16'hd14b;
	#20
	A = 16'hbd57;
	B = 16'h39c8;
	ans_a = 16'hd16a;
	#20
	A = 16'h2e35;
	B = 16'h3923;
	ans_a = 16'hd168;
	#20
	A = 16'h34a4;
	B = 16'h3ecd;
	ans_a = 16'hd158;
	#20
	A = 16'h3fc0;
	B = 16'h39f1;
	ans_a = 16'hd12a;
	#20
	A = 16'hba72;
	B = 16'hbab1;
	ans_a = 16'hd114;
	#20
	A = 16'hba05;
	B = 16'h3c93;
	ans_a = 16'hd130;
	#20
	A = 16'hbbc3;
	B = 16'hbf79;
	ans_a = 16'hd0f6;
	#20
	A = 16'h386c;
	B = 16'hbca5;
	ans_a = 16'hd10b;
	#20
	A = 16'hba41;
	B = 16'h3fbf;
	ans_a = 16'hd13b;
	#20
	A = 16'h325c;
	B = 16'h31fd;
	ans_a = 16'hd13a;
	#20
	A = 16'hb89e;
	B = 16'hbd6d;
	ans_a = 16'hd121;
	#20
	A = 16'h34da;
	B = 16'h2c68;
	ans_a = 16'hd120;
	#20
	A = 16'h3ddf;
	B = 16'h3d28;
	ans_a = 16'hd0e3;
	#20
	A = 16'hb538;
	B = 16'h33ab;
	ans_a = 16'hd0e6;
	#20
	A = 16'h3da8;
	B = 16'hbec3;
	ans_a = 16'hd132;
	#20
	A = 16'h365b;
	B = 16'hbf54;
	ans_a = 16'hd149;
	#20
	A = 16'h3953;
	B = 16'h3f4b;
	ans_a = 16'hd122;
	#20
	A = 16'hb97f;
	B = 16'hbacb;
	ans_a = 16'hd10f;
	#20
	A = 16'h251e;
	B = 16'h3bc0;
	ans_a = 16'hd10e;
	#20
	A = 16'hbe88;
	B = 16'h3717;
	ans_a = 16'hd125;
	#20
	A = 16'hbc4b;
	B = 16'hb91f;
	ans_a = 16'hd10f;
	#20
	A = 16'h38e5;
	B = 16'hbf3e;
	ans_a = 16'hd132;
	#20
	A = 16'h32ca;
	B = 16'h383c;
	ans_a = 16'hd12e;
	#20
	A = 16'h3c05;
	B = 16'h3fb6;
	ans_a = 16'hd0f0;
	#20
	A = 16'hb867;
	B = 16'hb69f;
	ans_a = 16'hd0e9;
	#20
	A = 16'hbee3;
	B = 16'h3a91;
	ans_a = 16'hd116;
	#20
	A = 16'hb195;
	B = 16'hbdea;
	ans_a = 16'hd10e;
	#20
	A = 16'hadb1;
	B = 16'h3d54;
	ans_a = 16'hd112;
	#20
	A = 16'h361c;
	B = 16'hbca4;
	ans_a = 16'hd120;
	#20
	A = 16'h3ca1;
	B = 16'h3dad;
	ans_a = 16'hd0eb;
	#20
	A = 16'h3d14;
	B = 16'h3816;
	ans_a = 16'hd0d6;
	#20
	A = 16'h38d5;
	B = 16'h3ddf;
	ans_a = 16'hd0ba;
	#20
	A = 16'hbc5c;
	B = 16'h3045;
	ans_a = 16'hd0bf;
	#20
	A = 16'h3dca;
	B = 16'hbf68;
	ans_a = 16'hd115;
	#20
	A = 16'haf9b;
	B = 16'h394b;
	ans_a = 16'hd118;
	#20
	A = 16'hb8f7;
	B = 16'hb0f1;
	ans_a = 16'hd115;
	#20
	A = 16'h3ff1;
	B = 16'h365d;
	ans_a = 16'hd0fc;
	#20
	A = 16'h373a;
	B = 16'h3d60;
	ans_a = 16'hd0e9;
	#20
	A = 16'h9cdf;
	B = 16'hbb0b;
	ans_a = 16'hd0e9;
	#20
	A = 16'habac;
	B = 16'hbfbb;
	ans_a = 16'hd0e5;
	#20
	A = 16'hb4ec;
	B = 16'h3f3d;
	ans_a = 16'hd0f7;
	#20
	A = 16'h3950;
	B = 16'h389f;
	ans_a = 16'hd0eb;
	#20
	A = 16'hbf4f;
	B = 16'hbdc0;
	ans_a = 16'hd097;
	#20
	A = 16'h2e2c;
	B = 16'hbc0e;
	ans_a = 16'hd09a;
	#20
	A = 16'h3e67;
	B = 16'h3f08;
	ans_a = 16'hd040;
	#20
	A = 16'h3d8f;
	B = 16'h3979;
	ans_a = 16'hd022;
	#20
	A = 16'hb828;
	B = 16'h3636;
	ans_a = 16'hd028;
	#20
	A = 16'h24ea;
	B = 16'h34fb;
	ans_a = 16'hd028;
	#20
	A = 16'hbd7b;
	B = 16'h3f92;
	ans_a = 16'hd07b;
	#20
	A = 16'h397d;
	B = 16'h3739;
	ans_a = 16'hd071;
	#20
	A = 16'hba22;
	B = 16'h3e27;
	ans_a = 16'hd097;
	#20
	A = 16'hb4f8;
	B = 16'hbc5f;
	ans_a = 16'hd08c;
	#20
	A = 16'h3fdd;
	B = 16'h3e72;
	ans_a = 16'hd027;
	#20
	A = 16'hbf76;
	B = 16'h3151;
	ans_a = 16'hd031;
	#20
	A = 16'h3cb4;
	B = 16'hbd0a;
	ans_a = 16'hd060;
	#20
	A = 16'h39e1;
	B = 16'h3a81;
	ans_a = 16'hd04d;
	#20
	A = 16'ha2af;
	B = 16'hbea0;
	ans_a = 16'hd04c;
	#20
	A = 16'hbf1d;
	B = 16'hba59;
	ans_a = 16'hd01f;
	#20
	A = 16'h3637;
	B = 16'h36ac;
	ans_a = 16'hd01a;
	#20
	A = 16'hb8b1;
	B = 16'hb788;
	ans_a = 16'hd011;
	#20
	A = 16'h3e2a;
	B = 16'h3d12;
	ans_a = 16'hcfa5;
	#20
	A = 16'h3409;
	B = 16'h3e12;
	ans_a = 16'hcf8c;
	#20
	A = 16'hbbf3;
	B = 16'h3f09;
	ans_a = 16'hcffc;
	#20
	A = 16'hb0a3;
	B = 16'h3709;
	ans_a = 16'hd000;
	#20
	A = 16'h3c6c;
	B = 16'h3029;
	ans_a = 16'hcff7;
	#20
	A = 16'h3fe8;
	B = 16'hb716;
	ans_a = 16'hd018;
	#20
	A = 16'h35ae;
	B = 16'h3528;
	ans_a = 16'hd014;
	#20
	A = 16'hbaa6;
	B = 16'hb4da;
	ans_a = 16'hd00c;
	#20
	A = 16'hb618;
	B = 16'hb425;
	ans_a = 16'hd009;
	#20
	A = 16'h3613;
	B = 16'hbe33;
	ans_a = 16'hd01c;
	#20
	A = 16'hbfea;
	B = 16'hbe8b;
	ans_a = 16'hcf69;
	#20
	A = 16'hbc6a;
	B = 16'h3cd8;
	ans_a = 16'hcfbe;
	#20
	A = 16'hbe67;
	B = 16'hbe44;
	ans_a = 16'hcf1e;
	#20
	A = 16'h28ee;
	B = 16'h37a0;
	ans_a = 16'hcf1d;
	#20
	A = 16'hb558;
	B = 16'hb50c;
	ans_a = 16'hcf16;
	#20
	A = 16'hbb88;
	B = 16'h3da8;
	ans_a = 16'hcf6b;
	#20
	A = 16'hbbbc;
	B = 16'hb3f5;
	ans_a = 16'hcf5c;
	#20
	A = 16'hb30c;
	B = 16'hbf4d;
	ans_a = 16'hcf42;
	#20
	A = 16'h3fce;
	B = 16'hbb7c;
	ans_a = 16'hcfb7;
	#20
	A = 16'hb92c;
	B = 16'hb5ed;
	ans_a = 16'hcfa8;
	#20
	A = 16'hb84f;
	B = 16'h3f46;
	ans_a = 16'hcfe7;
	#20
	A = 16'h39bd;
	B = 16'h3ed4;
	ans_a = 16'hcf99;
	#20
	A = 16'h39a2;
	B = 16'h3f3e;
	ans_a = 16'hcf47;
	#20
	A = 16'h3f39;
	B = 16'hb58f;
	ans_a = 16'hcf6f;
	#20
	A = 16'h36b5;
	B = 16'h347a;
	ans_a = 16'hcf67;
	#20
	A = 16'hb4fd;
	B = 16'h35cc;
	ans_a = 16'hcf6e;
	#20
	A = 16'h3339;
	B = 16'h2fcb;
	ans_a = 16'hcf6c;
	#20
	A = 16'hbc05;
	B = 16'hb48e;
	ans_a = 16'hcf5a;
	#20
	A = 16'hbd5a;
	B = 16'hbf50;
	ans_a = 16'hcebe;
	#20
	A = 16'hbcf0;
	B = 16'h3cfd;
	ans_a = 16'hcf20;
	#20
	A = 16'h3ceb;
	B = 16'hbaf3;
	ans_a = 16'hcf64;
	#20
	A = 16'hbadd;
	B = 16'h33bf;
	ans_a = 16'hcf71;
	#20
	A = 16'h3aec;
	B = 16'h3419;
	ans_a = 16'hcf63;
	#20
	A = 16'hbbcf;
	B = 16'h3cb8;
	ans_a = 16'hcfad;
	#20
	A = 16'hb8a2;
	B = 16'h3f5f;
	ans_a = 16'hcff1;
	#20
	A = 16'h3f1c;
	B = 16'hbd84;
	ans_a = 16'hd047;
	#20
	A = 16'h3fa5;
	B = 16'hb38a;
	ans_a = 16'hd055;
	#20
	A = 16'hbce2;
	B = 16'hbc6c;
	ans_a = 16'hd02a;
	#20
	A = 16'h3f56;
	B = 16'h3ed8;
	ans_a = 16'hcf8b;
	#20
	A = 16'hbe5d;
	B = 16'hbc09;
	ans_a = 16'hcf24;
	#20
	A = 16'hb42a;
	B = 16'h3c11;
	ans_a = 16'hcf35;
	#20
	A = 16'h308c;
	B = 16'h3846;
	ans_a = 16'hcf30;
	#20
	A = 16'h3ce8;
	B = 16'h3485;
	ans_a = 16'hcf1a;
	#20
	A = 16'h3df3;
	B = 16'hb93e;
	ans_a = 16'hcf58;
	#20
	A = 16'h2c2d;
	B = 16'hbea3;
	ans_a = 16'hcf5f;
	#20
	A = 16'h38ff;
	B = 16'h20c3;
	ans_a = 16'hcf5f;
	#20
	A = 16'hbaaa;
	B = 16'h3f3f;
	ans_a = 16'hcfc0;
	#20
	A = 16'h375f;
	B = 16'h3540;
	ans_a = 16'hcfb6;
	#20
	A = 16'h3dac;
	B = 16'h39da;
	ans_a = 16'hcf74;
	#20
	A = 16'hac13;
	B = 16'hb78b;
	ans_a = 16'hcf72;
	#20
	A = 16'h3e63;
	B = 16'hb664;
	ans_a = 16'hcf9b;
	#20
	A = 16'h3ebc;
	B = 16'h2f21;
	ans_a = 16'hcf8f;
	#20
	A = 16'hb912;
	B = 16'h28e8;
	ans_a = 16'hcf91;
	#20
	A = 16'h18b5;
	B = 16'hb606;
	ans_a = 16'hcf91;
	#20
	A = 16'h3f4a;
	B = 16'h392f;
	ans_a = 16'hcf45;
	#20
	A = 16'h3d84;
	B = 16'h3c7f;
	ans_a = 16'hcee2;
	#20
	A = 16'h2d2f;
	B = 16'hbb63;
	ans_a = 16'hcee7;
	#20
	A = 16'h3f21;
	B = 16'h3278;
	ans_a = 16'hced0;
	#20
	A = 16'hb93d;
	B = 16'h3cc0;
	ans_a = 16'hcf02;
	#20
	A = 16'h3ce8;
	B = 16'h3c24;
	ans_a = 16'hceb1;
	#20
	A = 16'h3d8a;
	B = 16'hbca0;
	ans_a = 16'hcf18;
	#20
	A = 16'h3a11;
	B = 16'h3871;
	ans_a = 16'hcefd;
	#20
	A = 16'hb156;
	B = 16'hbef0;
	ans_a = 16'hceea;
	#20
	A = 16'h3cd8;
	B = 16'hbb75;
	ans_a = 16'hcf32;
	#20
	A = 16'hb0c3;
	B = 16'hb739;
	ans_a = 16'hcf2e;
	#20
	A = 16'hbe73;
	B = 16'hb10d;
	ans_a = 16'hcf1e;
	#20
	A = 16'h3303;
	B = 16'hb57c;
	ans_a = 16'hcf23;
	#20
	A = 16'h3f8c;
	B = 16'hbc3a;
	ans_a = 16'hcfa3;
	#20
	A = 16'h2f2e;
	B = 16'h3af3;
	ans_a = 16'hcf9d;
	#20
	A = 16'hbd8a;
	B = 16'hbce5;
	ans_a = 16'hcf31;
	#20
	A = 16'hbf5d;
	B = 16'h2c8f;
	ans_a = 16'hcf39;
	#20
	A = 16'hbe4b;
	B = 16'hb8d9;
	ans_a = 16'hcefc;
	#20
	A = 16'h3f48;
	B = 16'h3c47;
	ans_a = 16'hce7f;
	#20
	A = 16'hbeb1;
	B = 16'hbb0b;
	ans_a = 16'hce21;
	#20
	A = 16'hbc49;
	B = 16'h3941;
	ans_a = 16'hce4e;
	#20
	A = 16'hb830;
	B = 16'h3d3e;
	ans_a = 16'hce7a;
	#20
	A = 16'h3951;
	B = 16'hbdbb;
	ans_a = 16'hceb7;
	#20
	A = 16'hbff2;
	B = 16'h3c6a;
	ans_a = 16'hcf43;
	#20
	A = 16'hb84a;
	B = 16'hb51b;
	ans_a = 16'hcf38;
	#20
	A = 16'hbd24;
	B = 16'hb69f;
	ans_a = 16'hcf16;
	#20
	A = 16'hb430;
	B = 16'h3013;
	ans_a = 16'hcf18;
	#20
	A = 16'h34aa;
	B = 16'hbaef;
	ans_a = 16'hcf28;
	#20
	A = 16'h3c02;
	B = 16'h378e;
	ans_a = 16'hcf0a;
	#20
	A = 16'h2b06;
	B = 16'h398d;
	ans_a = 16'hcf08;
	#20
	A = 16'h3f28;
	B = 16'hba0c;
	ans_a = 16'hcf5f;
	#20
	A = 16'h37be;
	B = 16'hbc61;
	ans_a = 16'hcf81;
	#20
	A = 16'h3c18;
	B = 16'hb30e;
	ans_a = 16'hcf8f;
	#20
	A = 16'h3f94;
	B = 16'h3e19;
	ans_a = 16'hced6;
	#20
	A = 16'h3dbb;
	B = 16'h3c7b;
	ans_a = 16'hce6f;
	#20
	A = 16'hbc6d;
	B = 16'hb92a;
	ans_a = 16'hce41;
	#20
	A = 16'h3777;
	B = 16'h3c12;
	ans_a = 16'hce23;
	#20
	A = 16'hb962;
	B = 16'h3f97;
	ans_a = 16'hce75;
	#20
	A = 16'hbdc6;
	B = 16'h3601;
	ans_a = 16'hce98;
	#20
	A = 16'hb08b;
	B = 16'hbb77;
	ans_a = 16'hce90;
	#20
	A = 16'h3621;
	B = 16'h34fb;
	ans_a = 16'hce88;
	#20
	A = 16'h3fd3;
	B = 16'h394d;
	ans_a = 16'hce35;
	#20
	A = 16'h3c00;
	B = 16'h3d45;
	ans_a = 16'hcde1;
	#20
	A = 16'h3de7;
	B = 16'h3858;
	ans_a = 16'hcdae;
	#20
	A = 16'h3880;
	B = 16'hbf93;
	ans_a = 16'hcdf2;
	#20
	A = 16'h3b34;
	B = 16'h3f4f;
	ans_a = 16'hcd89;
	#20
	A = 16'h3e07;
	B = 16'hb63b;
	ans_a = 16'hcdaf;
	#20
	A = 16'hbc0a;
	B = 16'h3d5b;
	ans_a = 16'hce06;
	#20
	A = 16'hbb22;
	B = 16'h3f23;
	ans_a = 16'hce6c;
	#20
	A = 16'hb18b;
	B = 16'h3acd;
	ans_a = 16'hce75;
	#20
	A = 16'h3d5d;
	B = 16'hbc3e;
	ans_a = 16'hced0;
	#20
	A = 16'h3d85;
	B = 16'hbe54;
	ans_a = 16'hcf5c;
	#20
	A = 16'hb48a;
	B = 16'hbf96;
	ans_a = 16'hcf3a;
	#20
	A = 16'hbfcd;
	B = 16'hbc4a;
	ans_a = 16'hceb4;
	#20
	A = 16'hbf58;
	B = 16'hbc31;
	ans_a = 16'hce39;
	#20
	A = 16'hbbee;
	B = 16'hbc29;
	ans_a = 16'hcdf7;
	#20
	A = 16'h323a;
	B = 16'h3c8e;
	ans_a = 16'hcde9;
	#20
	A = 16'hb780;
	B = 16'h3dc4;
	ans_a = 16'hce14;
	#20
	A = 16'h3f3d;
	B = 16'hbd50;
	ans_a = 16'hceae;
	#20
	A = 16'h351d;
	B = 16'hbd93;
	ans_a = 16'hceca;
	#20
	A = 16'h3692;
	B = 16'habc7;
	ans_a = 16'hcecc;
	#20
	A = 16'hb9da;
	B = 16'h3e2c;
	ans_a = 16'hcf14;
	#20
	A = 16'h3642;
	B = 16'hbf0f;
	ans_a = 16'hcf40;
	#20
	A = 16'hb34f;
	B = 16'h3f70;
	ans_a = 16'hcf5b;
	#20
	A = 16'hb639;
	B = 16'hb8e2;
	ans_a = 16'hcf4c;
	#20
	A = 16'hb7bd;
	B = 16'h33e2;
	ans_a = 16'hcf54;
	#20
	A = 16'hb79e;
	B = 16'h3b63;
	ans_a = 16'hcf70;
	#20
	A = 16'hb90c;
	B = 16'hba23;
	ans_a = 16'hcf51;
	#20
	A = 16'h2dcd;
	B = 16'h3c24;
	ans_a = 16'hcf4b;
	#20
	A = 16'h3ce6;
	B = 16'h3c9c;
	ans_a = 16'hcef1;
	#20
	A = 16'h3c34;
	B = 16'hb8b8;
	ans_a = 16'hcf19;
	#20
	A = 16'h3d3a;
	B = 16'hb263;
	ans_a = 16'hcf2a;
	#20
	A = 16'hae01;
	B = 16'hb984;
	ans_a = 16'hcf26;
	#20
	A = 16'h3a92;
	B = 16'h3d4a;
	ans_a = 16'hcee0;
	#20
	A = 16'hbd79;
	B = 16'hbdc9;
	ans_a = 16'hce61;
	#20
	A = 16'h3d75;
	B = 16'hbae8;
	ans_a = 16'hceac;
	#20
	A = 16'h3a70;
	B = 16'hbd8f;
	ans_a = 16'hcef4;
	#20
	A = 16'h3cf4;
	B = 16'h3ef0;
	ans_a = 16'hce6a;
	#20
	A = 16'hbcb6;
	B = 16'hb5cc;
	ans_a = 16'hce4f;
	#20
	A = 16'hb8bf;
	B = 16'h3b66;
	ans_a = 16'hce72;
	#20
	A = 16'h3b10;
	B = 16'hbea1;
	ans_a = 16'hced0;
	#20
	A = 16'hbf06;
	B = 16'h3c2e;
	ans_a = 16'hcf45;
	#20
	A = 16'hbfea;
	B = 16'h3f7e;
	ans_a = 16'hd019;
	#20
	A = 16'hbe00;
	B = 16'h3f11;
	ans_a = 16'hd06e;
	#20
	A = 16'hb43c;
	B = 16'hba6c;
	ans_a = 16'hd067;
	#20
	A = 16'h3cb6;
	B = 16'hba93;
	ans_a = 16'hd086;
	#20
	A = 16'h3454;
	B = 16'hbd8e;
	ans_a = 16'hd092;
	#20
	A = 16'hbee6;
	B = 16'hbca7;
	ans_a = 16'hd052;
	#20
	A = 16'h3e5b;
	B = 16'hb433;
	ans_a = 16'hd05f;
	#20
	A = 16'hbb86;
	B = 16'h33ae;
	ans_a = 16'hd066;
	#20
	A = 16'h353c;
	B = 16'h3690;
	ans_a = 16'hd062;
	#20
	A = 16'h3abb;
	B = 16'h37d1;
	ans_a = 16'hd055;
	#20
	A = 16'h3e80;
	B = 16'h3956;
	ans_a = 16'hd032;
	#20
	A = 16'hb45c;
	B = 16'hbc44;
	ans_a = 16'hd029;
	#20
	A = 16'hae25;
	B = 16'hbe37;
	ans_a = 16'hd024;
	#20
	A = 16'h34fc;
	B = 16'h3c23;
	ans_a = 16'hd01a;
	#20
	A = 16'hb6d6;
	B = 16'hbb3b;
	ans_a = 16'hd00e;
	#20
	A = 16'h3aaa;
	B = 16'hbc3b;
	ans_a = 16'hd02a;
	#20
	A = 16'hbf2b;
	B = 16'h39ab;
	ans_a = 16'hd053;
	#20
	A = 16'hbf7a;
	B = 16'h38c0;
	ans_a = 16'hd076;
	#20
	A = 16'h3524;
	B = 16'h32aa;
	ans_a = 16'hd074;
	#20
	A = 16'hbeb5;
	B = 16'hbf9a;
	ans_a = 16'hd00e;
	#20
	A = 16'hbb7e;
	B = 16'hbd7f;
	ans_a = 16'hcfca;
	#20
	A = 16'h3de3;
	B = 16'hbf4f;
	ans_a = 16'hd03b;
	#20
	A = 16'hbd4c;
	B = 16'hbeb4;
	ans_a = 16'hcfe8;
	#20
	A = 16'hbb01;
	B = 16'hbc96;
	ans_a = 16'hcfa8;
	#20
	A = 16'h391b;
	B = 16'h3cf7;
	ans_a = 16'hcf75;
	#20
	A = 16'hbd87;
	B = 16'h3f0c;
	ans_a = 16'hd008;
	#20
	A = 16'h2d3c;
	B = 16'h298b;
	ans_a = 16'hd008;
	#20
	A = 16'h3ca5;
	B = 16'h3da5;
	ans_a = 16'hcfa7;
	#20
	A = 16'hbbff;
	B = 16'h3ea8;
	ans_a = 16'hd009;
	#20
	A = 16'hb803;
	B = 16'h3fba;
	ans_a = 16'hd028;
	#20
	A = 16'hb631;
	B = 16'h3912;
	ans_a = 16'hd030;
	#20
	A = 16'h3d73;
	B = 16'ha9d4;
	ans_a = 16'hd032;
	#20
	A = 16'hbadc;
	B = 16'hbaba;
	ans_a = 16'hd01b;
	#20
	A = 16'hb40b;
	B = 16'hbd51;
	ans_a = 16'hd010;
	#20
	A = 16'h38ee;
	B = 16'h3a7c;
	ans_a = 16'hd000;
	#20
	A = 16'hb4b3;
	B = 16'h3562;
	ans_a = 16'hd003;
	#20
	A = 16'hb491;
	B = 16'hbed1;
	ans_a = 16'hcfe7;
	#20
	A = 16'hb530;
	B = 16'h3fcf;
	ans_a = 16'hd008;
	#20
	A = 16'h3d59;
	B = 16'h3759;
	ans_a = 16'hcfe9;
	#20
	A = 16'h3e77;
	B = 16'hb788;
	ans_a = 16'hd00d;
	#20
	A = 16'hbc04;
	B = 16'hb7f3;
	ans_a = 16'hcffa;
	#20
	A = 16'hbee8;
	B = 16'hbd62;
	ans_a = 16'hcf65;
	#20
	A = 16'h3ccd;
	B = 16'hbea8;
	ans_a = 16'hcfe5;
	#20
	A = 16'h25ba;
	B = 16'h3da9;
	ans_a = 16'hcfe3;
	#20
	A = 16'hb9e8;
	B = 16'h3f24;
	ans_a = 16'hd01c;
	#20
	A = 16'h3c29;
	B = 16'hb395;
	ans_a = 16'hd024;
	#20
	A = 16'hbcd7;
	B = 16'hbafb;
	ans_a = 16'hd002;
	#20
	A = 16'h3f8b;
	B = 16'hbd6d;
	ans_a = 16'hd054;
	#20
	A = 16'hbe54;
	B = 16'hbd7f;
	ans_a = 16'hd00e;
	#20
	A = 16'h3c71;
	B = 16'hbf8f;
	ans_a = 16'hd051;
	#20
	A = 16'h3d0f;
	B = 16'hbc18;
	ans_a = 16'hd07a;
	#20
	A = 16'hbc2a;
	B = 16'h396c;
	ans_a = 16'hd091;
	#20
	A = 16'hac76;
	B = 16'h3bc0;
	ans_a = 16'hd093;
	#20
	A = 16'h3ba3;
	B = 16'h3f8e;
	ans_a = 16'hd059;
	#20
	A = 16'h3e58;
	B = 16'h3cd5;
	ans_a = 16'hd01c;
	#20
	A = 16'h3f6e;
	B = 16'hbcd7;
	ans_a = 16'hd064;
	#20
	A = 16'h3c37;
	B = 16'hbf59;
	ans_a = 16'hd0a2;
	#20
	A = 16'h3bba;
	B = 16'hbfcf;
	ans_a = 16'hd0de;
	#20
	A = 16'h3b24;
	B = 16'h3f87;
	ans_a = 16'hd0a8;
	#20
	A = 16'h3c07;
	B = 16'hab82;
	ans_a = 16'hd0aa;
	#20
	A = 16'h3afe;
	B = 16'hb551;
	ans_a = 16'hd0b3;
	#20
	A = 16'hbe03;
	B = 16'h3aa6;
	ans_a = 16'hd0db;
	#20
	A = 16'h3dc5;
	B = 16'hbce7;
	ans_a = 16'hd114;
	#20
	A = 16'h3711;
	B = 16'h3d69;
	ans_a = 16'hd101;
	#20
	A = 16'hbee4;
	B = 16'hbcd3;
	ans_a = 16'hd0be;
	#20
	A = 16'hb7b9;
	B = 16'hb943;
	ans_a = 16'hd0b4;
	#20
	A = 16'h3cb1;
	B = 16'h3c09;
	ans_a = 16'hd08e;
	#20
	A = 16'h3a50;
	B = 16'h3c7c;
	ans_a = 16'hd072;
	#20
	A = 16'h3c34;
	B = 16'h3cfb;
	ans_a = 16'hd048;
	#20
	A = 16'hbc15;
	B = 16'hbdee;
	ans_a = 16'hd018;
	#20
	A = 16'h310e;
	B = 16'hbb12;
	ans_a = 16'hd01c;
	#20
	A = 16'h3ea3;
	B = 16'hadfe;
	ans_a = 16'hd021;
	#20
	A = 16'h3c34;
	B = 16'hbf6f;
	ans_a = 16'hd060;
	#20
	A = 16'h3ebd;
	B = 16'hbcb1;
	ans_a = 16'hd09f;
	#20
	A = 16'hbdb8;
	B = 16'hbdba;
	ans_a = 16'hd05e;
	#20
	A = 16'h3951;
	B = 16'h297d;
	ans_a = 16'hd05d;
	#20
	A = 16'h38f7;
	B = 16'hbfce;
	ans_a = 16'hd084;
	#20
	A = 16'hbcd2;
	B = 16'h3f1d;
	ans_a = 16'hd0c9;
	#20
	A = 16'hbe8e;
	B = 16'hbb60;
	ans_a = 16'hd099;
	#20
	A = 16'h3e59;
	B = 16'hbf58;
	ans_a = 16'hd0f6;
	#20
	A = 16'h3bba;
	B = 16'hbab5;
	ans_a = 16'hd110;
	#20
	A = 16'hbc8f;
	B = 16'h341a;
	ans_a = 16'hd119;
	#20
	A = 16'h3d7a;
	B = 16'h3f60;
	ans_a = 16'hd0c8;
	#20
	A = 16'hb907;
	B = 16'h3c1a;
	ans_a = 16'hd0dd;
	#20
	A = 16'h3c84;
	B = 16'h3e47;
	ans_a = 16'hd0a4;
	#20
	A = 16'hb439;
	B = 16'h3ed1;
	ans_a = 16'hd0b2;
	#20
	A = 16'hba7f;
	B = 16'h3f85;
	ans_a = 16'hd0e3;
	#20
	A = 16'hb8c3;
	B = 16'h3a08;
	ans_a = 16'hd0f1;
	#20
	A = 16'h3dfe;
	B = 16'h34f0;
	ans_a = 16'hd0e2;
	#20
	A = 16'hbe83;
	B = 16'hb5d9;
	ans_a = 16'hd0cf;
	#20
	A = 16'hbdd0;
	B = 16'h3635;
	ans_a = 16'hd0e1;
	#20
	A = 16'hbd44;
	B = 16'hba52;
	ans_a = 16'hd0c0;
	#20
	A = 16'hb56a;
	B = 16'hbf6c;
	ans_a = 16'hd0ac;
	#20
	A = 16'hba91;
	B = 16'h3d46;
	ans_a = 16'hd0cf;
	#20
	A = 16'h3bea;
	B = 16'hba6f;
	ans_a = 16'hd0e8;
	#20
	A = 16'h398d;
	B = 16'h3cc0;
	ans_a = 16'hd0ce;
	#20
	A = 16'hb757;
	B = 16'hb964;
	ans_a = 16'hd0c4;
	#20
	A = 16'h3523;
	B = 16'h3cd6;
	ans_a = 16'hd0b8;
	#20
	A = 16'h3eb7;
	B = 16'h3cc5;
	ans_a = 16'hd078;
	#20
	A = 16'h3597;
	B = 16'h35cb;
	ans_a = 16'hd074;
	#20
	A = 16'h3e54;
	B = 16'hbcc6;
	ans_a = 16'hd0b0;
	#20
	A = 16'h3b23;
	B = 16'hb586;
	ans_a = 16'hd0ba;
	#20
	A = 16'hba4b;
	B = 16'hbe1c;
	ans_a = 16'hd094;
	#20
	A = 16'hb935;
	B = 16'hb7f2;
	ans_a = 16'hd08a;
	#20
	A = 16'h35ec;
	B = 16'haf53;
	ans_a = 16'hd08b;
	#20
	A = 16'h3ead;
	B = 16'h3e8c;
	ans_a = 16'hd034;
	#20
	A = 16'hb932;
	B = 16'h3e90;
	ans_a = 16'hd056;
	#20
	A = 16'h38e0;
	B = 16'h3894;
	ans_a = 16'hd04b;
	#20
	A = 16'hbb62;
	B = 16'hb8fd;
	ans_a = 16'hd039;
	#20
	A = 16'h3c7b;
	B = 16'hbe07;
	ans_a = 16'hd06f;
	#20
	A = 16'h3f49;
	B = 16'hbea4;
	ans_a = 16'hd0d0;
	#20
	A = 16'h3bc1;
	B = 16'hba54;
	ans_a = 16'hd0e9;
	#20
	A = 16'hbecc;
	B = 16'h31d9;
	ans_a = 16'hd0f3;
	#20
	A = 16'hb77e;
	B = 16'hbf02;
	ans_a = 16'hd0d9;
	#20
	A = 16'h3ffc;
	B = 16'hbeb3;
	ans_a = 16'hd144;
	#20
	A = 16'h2657;
	B = 16'h3af2;
	ans_a = 16'hd143;
	#20
	A = 16'hbe65;
	B = 16'hb113;
	ans_a = 16'hd13b;
	#20
	A = 16'hb523;
	B = 16'hbadf;
	ans_a = 16'hd132;
	#20
	A = 16'hbc45;
	B = 16'hb995;
	ans_a = 16'hd11a;
	#20
	A = 16'h3c4e;
	B = 16'hbb67;
	ans_a = 16'hd13a;
	#20
	A = 16'hbb34;
	B = 16'h3e84;
	ans_a = 16'hd169;
	#20
	A = 16'hb964;
	B = 16'hb9e3;
	ans_a = 16'hd159;
	#20
	A = 16'hbc7e;
	B = 16'h2cd0;
	ans_a = 16'hd15c;
	#20
	A = 16'hbe9a;
	B = 16'hbf24;
	ans_a = 16'hd0fe;
	#20
	A = 16'h3ae4;
	B = 16'hb200;
	ans_a = 16'hd103;
	#20
	A = 16'hbdb1;
	B = 16'hb8d2;
	ans_a = 16'hd0e8;
	#20
	A = 16'hb845;
	B = 16'hbdf2;
	ans_a = 16'hd0cf;
	#20
	A = 16'h3d7f;
	B = 16'hbcd2;
	ans_a = 16'hd104;
	#20
	A = 16'h38c4;
	B = 16'h3f7a;
	ans_a = 16'hd0e0;
	#20
	A = 16'hb964;
	B = 16'h399c;
	ans_a = 16'hd0ef;
	#20
	A = 16'hb953;
	B = 16'h360f;
	ans_a = 16'hd0f7;
	#20
	A = 16'h3737;
	B = 16'h32a0;
	ans_a = 16'hd0f4;
	#20
	A = 16'hbee3;
	B = 16'h3931;
	ans_a = 16'hd118;
	#20
	A = 16'h3c57;
	B = 16'h3b01;
	ans_a = 16'hd0fa;
	#20
	A = 16'h2a93;
	B = 16'hbefd;
	ans_a = 16'hd0fd;
	#20
	A = 16'hbe61;
	B = 16'h3b68;
	ans_a = 16'hd12c;
	#20
	A = 16'hbe9e;
	B = 16'h3cbc;
	ans_a = 16'hd16b;
	#20
	A = 16'hb919;
	B = 16'h38e6;
	ans_a = 16'hd177;
	#20
	A = 16'hb7e8;
	B = 16'h2e3d;
	ans_a = 16'hd179;
	#20
	A = 16'h3850;
	B = 16'hbd9b;
	ans_a = 16'hd191;
	#20
	A = 16'h2e90;
	B = 16'ha52b;
	ans_a = 16'hd191;
	#20
	A = 16'h3df1;
	B = 16'h3aa0;
	ans_a = 16'hd16a;
	#20
	A = 16'hba69;
	B = 16'hb820;
	ans_a = 16'hd15d;
	#20
	A = 16'hbab3;
	B = 16'h3de7;
	ans_a = 16'hd185;
	#20
	A = 16'h33c2;
	B = 16'h3ce2;
	ans_a = 16'hd17c;
	#20
	A = 16'hbf36;
	B = 16'hbc08;
	ans_a = 16'hd142;
	#20
	A = 16'h30ba;
	B = 16'h3bdc;
	ans_a = 16'hd13d;
	#20
	A = 16'h3e7d;
	B = 16'hbdea;
	ans_a = 16'hd18a;
	#20
	A = 16'h3ad0;
	B = 16'hbc4f;
	ans_a = 16'hd1a7;
	#20
	A = 16'h2262;
	B = 16'h3cde;
	ans_a = 16'hd1a7;
	#20
	A = 16'hbeb9;
	B = 16'h3cd1;
	ans_a = 16'hd1e8;
	#20
	A = 16'hbe4b;
	B = 16'h3b04;
	ans_a = 16'hd214;
	#20
	A = 16'h3e56;
	B = 16'h36dc;
	ans_a = 16'hd1fe;
	#20
	A = 16'hbe6d;
	B = 16'h3e25;
	ans_a = 16'hd24d;
	#20
	A = 16'hb6bb;
	B = 16'hb83e;
	ans_a = 16'hd246;
	#20
	A = 16'h3f80;
	B = 16'hbecd;
	ans_a = 16'hd2ac;
	#20
	A = 16'hbd33;
	B = 16'h37c9;
	ans_a = 16'hd2c0;
	#20
	A = 16'hb47f;
	B = 16'h3e45;
	ans_a = 16'hd2ce;
	#20
	A = 16'hbd3d;
	B = 16'hbe18;
	ans_a = 16'hd28e;
	#20
	A = 16'hbe7c;
	B = 16'h3393;
	ans_a = 16'hd29a;
	#20
	A = 16'h3e0a;
	B = 16'h3d24;
	ans_a = 16'hd25c;
	#20
	A = 16'hbbf9;
	B = 16'h32ea;
	ans_a = 16'hd263;
	#20
	A = 16'h39a2;
	B = 16'h3f58;
	ans_a = 16'hd23a;
	#20
	A = 16'ha862;
	B = 16'hbd05;
	ans_a = 16'hd239;
	#20
	A = 16'hbf3e;
	B = 16'h3dec;
	ans_a = 16'hd28f;
	#20
	A = 16'hbd9e;
	B = 16'hb348;
	ans_a = 16'hd285;
	#20
	A = 16'hbdd5;
	B = 16'h3a5f;
	ans_a = 16'hd2aa;
	#20
	A = 16'hbead;
	B = 16'h3fbd;
	ans_a = 16'hd311;
	#20
	A = 16'hbd90;
	B = 16'h3670;
	ans_a = 16'hd323;
	#20
	A = 16'h3368;
	B = 16'hbbfe;
	ans_a = 16'hd32a;
	#20
	A = 16'hafe5;
	B = 16'h36db;
	ans_a = 16'hd32c;
	#20
	A = 16'hbcc6;
	B = 16'hbd0d;
	ans_a = 16'hd2fc;
	#20
	A = 16'h3d20;
	B = 16'h3dec;
	ans_a = 16'hd2bf;
	#20
	A = 16'h3ca8;
	B = 16'hbba0;
	ans_a = 16'hd2e2;
	#20
	A = 16'h3d0b;
	B = 16'hbced;
	ans_a = 16'hd314;
	#20
	A = 16'h3cab;
	B = 16'h2ac2;
	ans_a = 16'hd312;
	#20
	A = 16'h3ee2;
	B = 16'h3c29;
	ans_a = 16'hd2d9;
	#20
	A = 16'hbc56;
	B = 16'h345f;
	ans_a = 16'hd2e2;
	#20
	A = 16'h3e3b;
	B = 16'h3f8d;
	ans_a = 16'hd284;
	#20
	A = 16'hbf4b;
	B = 16'h34c4;
	ans_a = 16'hd295;
	#20
	A = 16'hb536;
	B = 16'hb6b2;
	ans_a = 16'hd291;
	#20
	A = 16'h37b3;
	B = 16'hb95e;
	ans_a = 16'hd29b;
	#20
	A = 16'h3d0f;
	B = 16'h3e82;
	ans_a = 16'hd259;
	#20
	A = 16'hbbc8;
	B = 16'h3d81;
	ans_a = 16'hd284;
	#20
	A = 16'haa54;
	B = 16'hb3b1;
	ans_a = 16'hd284;
	#20
	A = 16'hbc8c;
	B = 16'h3600;
	ans_a = 16'hd292;
	#20
	A = 16'hbd14;
	B = 16'h33c9;
	ans_a = 16'hd29c;
	#20
	A = 16'h3dbb;
	B = 16'hbea1;
	ans_a = 16'hd2e8;
	#20
	A = 16'hafcb;
	B = 16'h3cd4;
	ans_a = 16'hd2ed;
	#20
	A = 16'h3fec;
	B = 16'h319a;
	ans_a = 16'hd2e2;
	#20
	A = 16'hb9bf;
	B = 16'h3a4b;
	ans_a = 16'hd2f4;
	#20
	A = 16'h3d4e;
	B = 16'h369b;
	ans_a = 16'hd2e2;
	#20
	A = 16'hbe51;
	B = 16'h3e23;
	ans_a = 16'hd330;
	#20
	A = 16'h3517;
	B = 16'hbec2;
	ans_a = 16'hd341;
	#20
	A = 16'hbcde;
	B = 16'hb96f;
	ans_a = 16'hd327;
	#20
	A = 16'h3d04;
	B = 16'hbfe9;
	ans_a = 16'hd376;
	#20
	A = 16'hbb92;
	B = 16'h3c1d;
	ans_a = 16'hd395;
	#20
	A = 16'h2cf1;
	B = 16'hb67d;
	ans_a = 16'hd396;
	#20
	A = 16'h36b4;
	B = 16'hbbe6;
	ans_a = 16'hd3a3;
	#20
	A = 16'hbfd5;
	B = 16'hbc31;
	ans_a = 16'hd361;
	#20
	A = 16'h3b45;
	B = 16'h3409;
	ans_a = 16'hd35a;
	#20
	A = 16'hb8a9;
	B = 16'h3beb;
	ans_a = 16'hd36c;
	#20
	A = 16'h3ee9;
	B = 16'hbe8f;
	ans_a = 16'hd3c7;
	#20
	A = 16'h3c2b;
	B = 16'h3ff4;
	ans_a = 16'hd385;
	#20
	A = 16'hbdea;
	B = 16'hbedd;
	ans_a = 16'hd334;
	#20
	A = 16'hbcb1;
	B = 16'hbfa7;
	ans_a = 16'hd2ec;
	#20
	A = 16'hbcd1;
	B = 16'h3e90;
	ans_a = 16'hd32b;
	#20
	A = 16'hb4ad;
	B = 16'hb550;
	ans_a = 16'hd328;
	#20
	A = 16'hbf32;
	B = 16'h3c65;
	ans_a = 16'hd367;
	#20
	A = 16'hb410;
	B = 16'h3f00;
	ans_a = 16'hd375;
	#20
	A = 16'hbe07;
	B = 16'hbcbf;
	ans_a = 16'hd33c;
	#20
	A = 16'hbad4;
	B = 16'hbc68;
	ans_a = 16'hd31e;
	#20
	A = 16'h3833;
	B = 16'h3d55;
	ans_a = 16'hd308;
	#20
	A = 16'h3969;
	B = 16'hb992;
	ans_a = 16'hd317;
	#20
	A = 16'h37b5;
	B = 16'hb786;
	ans_a = 16'hd31e;
	#20
	A = 16'hb39b;
	B = 16'hbdf3;
	ans_a = 16'hd313;
	#20
	A = 16'hbea5;
	B = 16'h3e97;
	ans_a = 16'hd36b;
	#20
	A = 16'hb815;
	B = 16'h3a25;
	ans_a = 16'hd378;
	#20
	A = 16'had1e;
	B = 16'haef1;
	ans_a = 16'hd378;
	#20
	A = 16'h3f5d;
	B = 16'hbdb7;
	ans_a = 16'hd3cc;
	#20
	A = 16'hbda5;
	B = 16'hbeb7;
	ans_a = 16'hd380;
	#20
	A = 16'h3f5d;
	B = 16'h3df5;
	ans_a = 16'hd328;
	#20
	A = 16'h3dc3;
	B = 16'hba2c;
	ans_a = 16'hd34c;
	#20
	A = 16'h3942;
	B = 16'h3c84;
	ans_a = 16'hd334;
	#20
	A = 16'hacad;
	B = 16'hb811;
	ans_a = 16'hd333;
	#20
	A = 16'h334f;
	B = 16'h3592;
	ans_a = 16'hd330;
	#20
	A = 16'hbe6a;
	B = 16'h3b86;
	ans_a = 16'hd360;
	#20
	A = 16'hbed6;
	B = 16'hbb18;
	ans_a = 16'hd330;
	#20
	A = 16'h3fec;
	B = 16'hbf01;
	ans_a = 16'hd39f;
	#20
	A = 16'h375d;
	B = 16'h3f3d;
	ans_a = 16'hd384;
	#20
	A = 16'h3e76;
	B = 16'hbfb8;
	ans_a = 16'hd3e8;
	#20
	A = 16'hb854;
	B = 16'hb7ff;
	ans_a = 16'hd3df;
	#20
	A = 16'h3073;
	B = 16'hbe3c;
	ans_a = 16'hd3e6;
	#20
	A = 16'h3bbb;
	B = 16'h3a0a;
	ans_a = 16'hd3cf;
	#20
	A = 16'h3d2d;
	B = 16'hbbd0;
	ans_a = 16'hd3f7;
	#20
	A = 16'haa18;
	B = 16'h3b42;
	ans_a = 16'hd3f8;
	#20
	A = 16'h3e93;
	B = 16'h3b85;
	ans_a = 16'hd3c7;
	#20
	A = 16'h3583;
	B = 16'hbf4e;
	ans_a = 16'hd3db;
	#20
	A = 16'h3c93;
	B = 16'h3930;
	ans_a = 16'hd3c3;
	#20
	A = 16'hbeff;
	B = 16'h35df;
	ans_a = 16'hd3d8;
	#20
	A = 16'h3796;
	B = 16'hbb11;
	ans_a = 16'hd3e5;
	#20
	A = 16'hbf5f;
	B = 16'h3ff3;
	ans_a = 16'hd42d;
	#20
	A = 16'h3f8c;
	B = 16'hbee9;
	ans_a = 16'hd461;
	#20
	A = 16'hbedb;
	B = 16'hb07c;
	ans_a = 16'hd45d;
	#20
	A = 16'hbd0e;
	B = 16'h3fce;
	ans_a = 16'hd484;
	#20
	A = 16'h3e12;
	B = 16'hbf88;
	ans_a = 16'hd4b2;
	#20
	A = 16'h3131;
	B = 16'h2a30;
	ans_a = 16'hd4b2;
	#20
	A = 16'hbef0;
	B = 16'h3693;
	ans_a = 16'hd4bd;
	#20
	A = 16'h3ba9;
	B = 16'h3d09;
	ans_a = 16'hd4aa;
	#20
	A = 16'ha975;
	B = 16'h3780;
	ans_a = 16'hd4aa;
	#20
	A = 16'h2cb6;
	B = 16'hbcdd;
	ans_a = 16'hd4ab;
	#20
	A = 16'h39ce;
	B = 16'h3960;
	ans_a = 16'hd4a3;
	#20
	A = 16'hba98;
	B = 16'h3825;
	ans_a = 16'hd4aa;
	#20
	A = 16'h3ee3;
	B = 16'hb960;
	ans_a = 16'hd4bd;
	#20
	A = 16'h3f75;
	B = 16'h3fba;
	ans_a = 16'hd483;
	#20
	A = 16'hb5ba;
	B = 16'hbb94;
	ans_a = 16'hd47e;
	#20
	A = 16'h3d72;
	B = 16'hb577;
	ans_a = 16'hd485;
	#20
	A = 16'h37dc;
	B = 16'h3613;
	ans_a = 16'hd482;
	#20
	A = 16'hbd5c;
	B = 16'hbf54;
	ans_a = 16'hd45b;
	#20
	A = 16'h3e3a;
	B = 16'hbaf7;
	ans_a = 16'hd471;
	#20
	A = 16'h3960;
	B = 16'hbe9c;
	ans_a = 16'hd483;
	#20
	A = 16'hbcc6;
	B = 16'hbee9;
	ans_a = 16'hd462;
	#20
	A = 16'hb0c6;
	B = 16'h39e5;
	ans_a = 16'hd464;
	#20
	A = 16'h3cf3;
	B = 16'hbfb4;
	ans_a = 16'hd48a;
	#20
	A = 16'hbb79;
	B = 16'h32c1;
	ans_a = 16'hd48d;
	#20
	A = 16'h3e76;
	B = 16'hbef0;
	ans_a = 16'hd4ba;
	#20
	A = 16'hbd54;
	B = 16'h3e32;
	ans_a = 16'hd4db;
	#20
	A = 16'hb612;
	B = 16'h3828;
	ans_a = 16'hd4de;
	#20
	A = 16'h38b1;
	B = 16'hbdf8;
	ans_a = 16'hd4ec;
	#20
	A = 16'h3dc4;
	B = 16'h3a2e;
	ans_a = 16'hd4da;
	#20
	A = 16'hbf65;
	B = 16'h3cd9;
	ans_a = 16'hd4fe;
	#20
	A = 16'h3f19;
	B = 16'hb9d9;
	ans_a = 16'hd513;
	#20
	A = 16'hbd8a;
	B = 16'h3879;
	ans_a = 16'hd51f;
	#20
	A = 16'h3952;
	B = 16'hbd21;
	ans_a = 16'hd52d;
	#20
	A = 16'h3e1a;
	B = 16'h3e3b;
	ans_a = 16'hd507;
	#20
	A = 16'h38c2;
	B = 16'hb0d6;
	ans_a = 16'hd508;
	#20
	A = 16'hbf47;
	B = 16'hb6bc;
	ans_a = 16'hd4fc;
	#20
	A = 16'hbc53;
	B = 16'h3efa;
	ans_a = 16'hd51a;
	#20
	A = 16'h3a3e;
	B = 16'ha901;
	ans_a = 16'hd51a;
	#20
	A = 16'h3d0a;
	B = 16'hbc65;
	ans_a = 16'hd530;
	#20
	A = 16'h3e1b;
	B = 16'h3f68;
	ans_a = 16'hd503;
	#20
	A = 16'h3b49;
	B = 16'h3e73;
	ans_a = 16'hd4ec;
	#20
	A = 16'hb030;
	B = 16'h285a;
	ans_a = 16'hd4ec;
	#20
	A = 16'hbe5b;
	B = 16'h3822;
	ans_a = 16'hd4f9;
	#20
	A = 16'h1c55;
	B = 16'hbb74;
	ans_a = 16'hd4f9;
	#20
	A = 16'hbd6b;
	B = 16'h3d04;
	ans_a = 16'hd514;
	#20
	A = 16'hbcd5;
	B = 16'hbe14;
	ans_a = 16'hd4f7;
	#20
	A = 16'hbd4b;
	B = 16'hb47d;
	ans_a = 16'hd4f1;
	#20
	A = 16'h3a77;
	B = 16'hbdf3;
	ans_a = 16'hd504;
	#20
	A = 16'h3f63;
	B = 16'h3c28;
	ans_a = 16'hd4e5;
	#20
	A = 16'h3ae5;
	B = 16'h3ab3;
	ans_a = 16'hd4d9;
	#20
	A = 16'h3f8f;
	B = 16'h398e;
	ans_a = 16'hd4c4;
	#20
	A = 16'h3c82;
	B = 16'h3b0e;
	ans_a = 16'hd4b4;
	#20
	A = 16'hbdf7;
	B = 16'hbcce;
	ans_a = 16'hd497;
	#20
	A = 16'hbcf6;
	B = 16'h2360;
	ans_a = 16'hd497;
	#20
	A = 16'h3cee;
	B = 16'h3af0;
	ans_a = 16'hd486;
	#20
	A = 16'h3cd2;
	B = 16'hbd69;
	ans_a = 16'hd4a0;
	#20
	A = 16'h3930;
	B = 16'h3cba;
	ans_a = 16'hd494;
	#20
	A = 16'h3517;
	B = 16'h265e;
	ans_a = 16'hd494;
	#20
	A = 16'h3c6a;
	B = 16'hb399;
	ans_a = 16'hd498;
	#20
	A = 16'h3c62;
	B = 16'h3019;
	ans_a = 16'hd496;
	#20
	A = 16'hb6c2;
	B = 16'hbfdf;
	ans_a = 16'hd489;
	#20
	A = 16'hbefd;
	B = 16'h38a9;
	ans_a = 16'hd499;
	#20
	A = 16'hbe70;
	B = 16'hb7bb;
	ans_a = 16'hd48d;
	#20
	A = 16'h3f7e;
	B = 16'h2e3a;
	ans_a = 16'hd48a;
	#20
	A = 16'h34dd;
	B = 16'h3f80;
	ans_a = 16'hd481;
	#20
	A = 16'hbddc;
	B = 16'hbf66;
	ans_a = 16'hd456;
	#20
	A = 16'h3d54;
	B = 16'h3e0c;
	ans_a = 16'hd436;
	#20
	A = 16'h3aaf;
	B = 16'hb56f;
	ans_a = 16'hd43b;
	#20
	A = 16'h3c80;
	B = 16'hb287;
	ans_a = 16'hd43f;
	#20
	A = 16'h3fb9;
	B = 16'hacb5;
	ans_a = 16'hd441;
	#20
	A = 16'hbbf4;
	B = 16'h3496;
	ans_a = 16'hd446;
	#20
	A = 16'hbc0b;
	B = 16'h39e5;
	ans_a = 16'hd452;
	#20
	A = 16'hb338;
	B = 16'hbd03;
	ans_a = 16'hd44d;
	#20
	A = 16'hbc62;
	B = 16'h3d37;
	ans_a = 16'hd464;
	#20
	A = 16'h3f38;
	B = 16'h3ac6;
	ans_a = 16'hd44c;
	#20
	A = 16'hbf2b;
	B = 16'hae1c;
	ans_a = 16'hd449;
	#20
	A = 16'h2d16;
	B = 16'h3ba2;
	ans_a = 16'hd448;
	#20
	A = 16'hb8d9;
	B = 16'h3e53;
	ans_a = 16'hd457;
	#20
	A = 16'h3ca3;
	B = 16'hbbf4;
	ans_a = 16'hd469;
	#20
	A = 16'h38d6;
	B = 16'h33c9;
	ans_a = 16'hd467;
	#20
	A = 16'hbc89;
	B = 16'haa8c;
	ans_a = 16'hd466;
	#20
	A = 16'h2622;
	B = 16'hba09;
	ans_a = 16'hd466;
	#20
	A = 16'h3dc7;
	B = 16'h3ee0;
	ans_a = 16'hd43e;
	#20
	A = 16'hbdbb;
	B = 16'hb936;
	ans_a = 16'hd42f;
	#20
	A = 16'hbaa3;
	B = 16'hb2d8;
	ans_a = 16'hd42c;
	#20
	A = 16'hbf37;
	B = 16'h3df1;
	ans_a = 16'hd457;
	#20
	A = 16'hafb8;
	B = 16'hb695;
	ans_a = 16'hd456;
	#20
	A = 16'h3e1b;
	B = 16'h38f1;
	ans_a = 16'hd447;
	#20
	A = 16'h3d0d;
	B = 16'hb8bc;
	ans_a = 16'hd453;
	#20
	A = 16'hae3c;
	B = 16'hbf84;
	ans_a = 16'hd450;
	#20
	A = 16'h3eb6;
	B = 16'h3722;
	ans_a = 16'hd444;
	#20
	A = 16'hbba3;
	B = 16'hbdde;
	ans_a = 16'hd42e;
	#20
	A = 16'hbd96;
	B = 16'h3f1b;
	ans_a = 16'hd456;
	#20
	A = 16'hbfc9;
	B = 16'hbf0e;
	ans_a = 16'hd41f;
	#20
	A = 16'h3e05;
	B = 16'h3c75;
	ans_a = 16'hd404;
	#20
	A = 16'hba8a;
	B = 16'hbad6;
	ans_a = 16'hd3f2;
	#20
	A = 16'h3bac;
	B = 16'h3c62;
	ans_a = 16'hd3d0;
	#20
	A = 16'h3ece;
	B = 16'h39cf;
	ans_a = 16'hd3a8;
	#20
	A = 16'hbcbc;
	B = 16'hb142;
	ans_a = 16'hd3a2;
	#20
	A = 16'hb5cc;
	B = 16'hbb0f;
	ans_a = 16'hd398;
	#20
	A = 16'h3f70;
	B = 16'h311e;
	ans_a = 16'hd38e;
	#20
	A = 16'h3d40;
	B = 16'h2719;
	ans_a = 16'hd38d;
	#20
	A = 16'hbe09;
	B = 16'hbce8;
	ans_a = 16'hd352;
	#20
	A = 16'hbc16;
	B = 16'h3d8e;
	ans_a = 16'hd37f;
	#20
	A = 16'hbd3a;
	B = 16'hb958;
	ans_a = 16'hd363;
	#20
	A = 16'h3dee;
	B = 16'hb7cc;
	ans_a = 16'hd37a;
	#20
	A = 16'hbc88;
	B = 16'hae24;
	ans_a = 16'hd377;
	#20
	A = 16'hbe33;
	B = 16'h3564;
	ans_a = 16'hd388;
	#20
	A = 16'h3f06;
	B = 16'hb3e5;
	ans_a = 16'hd396;
	#20
	A = 16'h3e49;
	B = 16'h3e31;
	ans_a = 16'hd348;
	#20
	A = 16'hbc34;
	B = 16'hb830;
	ans_a = 16'hd336;
	#20
	A = 16'h3e23;
	B = 16'hbe43;
	ans_a = 16'hd383;
	#20
	A = 16'h3d3f;
	B = 16'h3ed3;
	ans_a = 16'hd33b;
	#20
	A = 16'h3e89;
	B = 16'ha83c;
	ans_a = 16'hd33d;
	#20
	A = 16'hbea1;
	B = 16'h3f6e;
	ans_a = 16'hd3a0;
	#20
	A = 16'hb983;
	B = 16'haec7;
	ans_a = 16'hd39e;
	#20
	A = 16'hbed2;
	B = 16'hbf39;
	ans_a = 16'hd33c;
	#20
	A = 16'hbfd9;
	B = 16'h3d98;
	ans_a = 16'hd394;
	#20
	A = 16'h3798;
	B = 16'hbcb4;
	ans_a = 16'hd3a6;
	#20
	A = 16'h3ffe;
	B = 16'h3c2e;
	ans_a = 16'hd363;
	#20
	A = 16'h3ee1;
	B = 16'hbdc2;
	ans_a = 16'hd3b2;
	#20
	A = 16'hbda6;
	B = 16'hb4e2;
	ans_a = 16'hd3a4;
	#20
	A = 16'hbd18;
	B = 16'hb82a;
	ans_a = 16'hd38f;
	#20
	A = 16'h380a;
	B = 16'hb9e5;
	ans_a = 16'hd39b;
	#20
	A = 16'hbf26;
	B = 16'h3ac0;
	ans_a = 16'hd3cb;
	#20
	A = 16'h3b32;
	B = 16'hbf0c;
	ans_a = 16'hd3fe;
	#20
	A = 16'hbe9b;
	B = 16'hbebd;
	ans_a = 16'hd3a5;
	#20
	A = 16'hbd21;
	B = 16'h30e6;
	ans_a = 16'hd3ab;
	#20
	A = 16'hbdfc;
	B = 16'h3a1a;
	ans_a = 16'hd3d0;
	#20
	A = 16'h2e45;
	B = 16'hbdd5;
	ans_a = 16'hd3d5;
	#20
	A = 16'hbf99;
	B = 16'h37a8;
	ans_a = 16'hd3f2;
	#20
	A = 16'h384b;
	B = 16'hb0b5;
	ans_a = 16'hd3f5;
	#20
	A = 16'h3764;
	B = 16'hbd05;
	ans_a = 16'hd404;
	#20
	A = 16'hbd50;
	B = 16'h3f9d;
	ans_a = 16'hd42c;
	#20
	A = 16'h298c;
	B = 16'hb4ee;
	ans_a = 16'hd42c;
	#20
	A = 16'h328b;
	B = 16'h3c23;
	ans_a = 16'hd429;
	#20
	A = 16'h3c8b;
	B = 16'h3c95;
	ans_a = 16'hd414;
	#20
	A = 16'h3cf1;
	B = 16'h3d67;
	ans_a = 16'hd3f3;
	#20
	A = 16'h2f5f;
	B = 16'h3fec;
	ans_a = 16'hd3ec;
	#20
	A = 16'hbb9e;
	B = 16'h2d6d;
	ans_a = 16'hd3ef;
	#20
	A = 16'h3e6c;
	B = 16'h3d98;
	ans_a = 16'hd3a7;
	#20
	A = 16'hba54;
	B = 16'h340d;
	ans_a = 16'hd3ad;
	#20
	A = 16'hb645;
	B = 16'hb5f5;
	ans_a = 16'hd3a8;
	#20
	A = 16'hbfe1;
	B = 16'hbe96;
	ans_a = 16'hd340;
	#20
	A = 16'hb7f4;
	B = 16'hbdd1;
	ans_a = 16'hd329;
	#20
	A = 16'h3905;
	B = 16'hb761;
	ans_a = 16'hd332;
	#20
	A = 16'h3eba;
	B = 16'h3fec;
	ans_a = 16'hd2c7;
	#20
	A = 16'hb96b;
	B = 16'hbbf4;
	ans_a = 16'hd2b1;
	#20
	A = 16'h3e31;
	B = 16'h2c62;
	ans_a = 16'hd2ae;
	#20
	A = 16'hb8c1;
	B = 16'hb83a;
	ans_a = 16'hd2a4;
	#20
	A = 16'h3d25;
	B = 16'h3769;
	ans_a = 16'hd291;
	#20
	A = 16'hbdad;
	B = 16'hbfe2;
	ans_a = 16'hd238;
	#20
	A = 16'hbf5a;
	B = 16'hb07e;
	ans_a = 16'hd230;
	#20
	A = 16'hbf3d;
	B = 16'h3aab;
	ans_a = 16'hd260;
	#20
	A = 16'h3fcc;
	B = 16'h30ce;
	ans_a = 16'hd257;
	#20
	A = 16'hb335;
	B = 16'hb8b7;
	ans_a = 16'hd253;
	#20
	A = 16'h3e0a;
	B = 16'hbd8f;
	ans_a = 16'hd296;
	#20
	A = 16'hb5a4;
	B = 16'hbcc0;
	ans_a = 16'hd289;
	#20
	A = 16'hbb9c;
	B = 16'h3f21;
	ans_a = 16'hd2bf;
	#20
	A = 16'h3bcd;
	B = 16'hb89b;
	ans_a = 16'hd2d1;
	#20
	A = 16'hb2cf;
	B = 16'hbe44;
	ans_a = 16'hd2c6;
	#20
	A = 16'hbbbc;
	B = 16'hbd00;
	ans_a = 16'hd29f;
	#20
	A = 16'h3727;
	B = 16'hbe04;
	ans_a = 16'hd2b5;
	#20
	A = 16'h3b76;
	B = 16'hbee9;
	ans_a = 16'hd2e9;
	#20
	A = 16'hb41d;
	B = 16'hb013;
	ans_a = 16'hd2e8;
	#20
	A = 16'hb6fb;
	B = 16'h3d2f;
	ans_a = 16'hd2fa;
	#20
	A = 16'hbc95;
	B = 16'hbe5b;
	ans_a = 16'hd2c0;
	#20
	A = 16'h37d7;
	B = 16'hbe08;
	ans_a = 16'hd2d8;
	#20
	A = 16'hb9a7;
	B = 16'h3122;
	ans_a = 16'hd2dc;
	#20
	A = 16'h3e9c;
	B = 16'h3e75;
	ans_a = 16'hd287;
	#20
	A = 16'h3cf7;
	B = 16'h3e1d;
	ans_a = 16'hd24a;
	#20
	A = 16'hbf8a;
	B = 16'hbb06;
	ans_a = 16'hd215;
	#20
	A = 16'hbdaa;
	B = 16'hb714;
	ans_a = 16'hd201;
	#20
	A = 16'h34da;
	B = 16'hba20;
	ans_a = 16'hd208;
	#20
	A = 16'h306a;
	B = 16'hbec6;
	ans_a = 16'hd20f;
	#20
	A = 16'hbce0;
	B = 16'hb4b8;
	ans_a = 16'hd204;
	#20
	A = 16'h3d6d;
	B = 16'hbcc7;
	ans_a = 16'hd238;
	#20
	A = 16'h377c;
	B = 16'hb039;
	ans_a = 16'hd23a;
	#20
	A = 16'h324b;
	B = 16'hb42b;
	ans_a = 16'hd23c;
	#20
	A = 16'h366a;
	B = 16'hbc6f;
	ans_a = 16'hd24a;
	#20
	A = 16'h1493;
	B = 16'h3f6f;
	ans_a = 16'hd24a;
	#20
	A = 16'h38bc;
	B = 16'hbcb4;
	ans_a = 16'hd260;
	#20
	A = 16'h3d0a;
	B = 16'hbaac;
	ans_a = 16'hd282;
	#20
	A = 16'hbe31;
	B = 16'h2096;
	ans_a = 16'hd282;
	#20
	A = 16'h3fd1;
	B = 16'h3eb7;
	ans_a = 16'hd219;
	#20
	A = 16'h3ddb;
	B = 16'hbd37;
	ans_a = 16'hd256;
	#20
	A = 16'hbf93;
	B = 16'hbe54;
	ans_a = 16'hd1f6;
	#20
	A = 16'hbf1c;
	B = 16'h3bfd;
	ans_a = 16'hd22f;
	#20
	A = 16'hb94a;
	B = 16'hbd88;
	ans_a = 16'hd212;
	#20
	A = 16'h3dde;
	B = 16'hb598;
	ans_a = 16'hd222;
	#20
	A = 16'h387b;
	B = 16'hba89;
	ans_a = 16'hd231;
	#20
	A = 16'hbc4b;
	B = 16'hbe86;
	ans_a = 16'hd1f9;
	#20
	A = 16'hbfc3;
	B = 16'hbc38;
	ans_a = 16'hd1b8;
	#20
	A = 16'hbdf4;
	B = 16'h3ea6;
	ans_a = 16'hd207;
	#20
	A = 16'h3876;
	B = 16'hbc8d;
	ans_a = 16'hd21b;
	#20
	A = 16'hbdc2;
	B = 16'h3dcd;
	ans_a = 16'hd25e;
	#20
	A = 16'h346e;
	B = 16'hb7b1;
	ans_a = 16'hd262;
	#20
	A = 16'hb677;
	B = 16'hbfb9;
	ans_a = 16'hd249;
	#20
	A = 16'hbf24;
	B = 16'hbb1d;
	ans_a = 16'hd216;
	#20
	A = 16'hba26;
	B = 16'hbd9d;
	ans_a = 16'hd1f4;
	#20
	A = 16'hbc26;
	B = 16'h3c0e;
	ans_a = 16'hd216;
	#20
	A = 16'h3bd4;
	B = 16'h3d84;
	ans_a = 16'hd1eb;
	#20
	A = 16'hbf7e;
	B = 16'h3c05;
	ans_a = 16'hd227;
	#20
	A = 16'h3929;
	B = 16'hb5ba;
	ans_a = 16'hd22e;
	#20
	A = 16'haade;
	B = 16'h3e56;
	ans_a = 16'hd231;
	#20
	A = 16'hb92d;
	B = 16'h3de9;
	ans_a = 16'hd250;
	#20
	A = 16'hba99;
	B = 16'hbf4e;
	ans_a = 16'hd220;
	#20
	A = 16'h3f60;
	B = 16'h3cda;
	ans_a = 16'hd1d8;
	#20
	A = 16'hb480;
	B = 16'h3c75;
	ans_a = 16'hd1e2;
	#20
	A = 16'hb26e;
	B = 16'hbcce;
	ans_a = 16'hd1da;
	#20
	A = 16'h3eb4;
	B = 16'h3b82;
	ans_a = 16'hd1a8;
	#20
	A = 16'h3d60;
	B = 16'h39af;
	ans_a = 16'hd189;
	#20
	A = 16'h3fd8;
	B = 16'h3d18;
	ans_a = 16'hd139;
	#20
	A = 16'hafcb;
	B = 16'hbc6a;
	ans_a = 16'hd135;
	#20
	A = 16'hb4b2;
	B = 16'ha320;
	ans_a = 16'hd135;
	#20
	A = 16'h3ca0;
	B = 16'hbdfe;
	ans_a = 16'hd16c;
	#20
	A = 16'h3f89;
	B = 16'hba84;
	ans_a = 16'hd19d;
	#20
	A = 16'hb67a;
	B = 16'h2847;
	ans_a = 16'hd19d;
	#20
	A = 16'hbba0;
	B = 16'hba7a;
	ans_a = 16'hd184;
	#20
	A = 16'h3d89;
	B = 16'h3bff;
	ans_a = 16'hd158;
	#20
	A = 16'hbe77;
	B = 16'h3660;
	ans_a = 16'hd16d;
	#20
	A = 16'h3749;
	B = 16'h3700;
	ans_a = 16'hd167;
	#20
	A = 16'h2b44;
	B = 16'hb02a;
	ans_a = 16'hd167;
	#20
	A = 16'hbeb7;
	B = 16'h36b6;
	ans_a = 16'hd17e;
	#20
	A = 16'hbe28;
	B = 16'h3b6b;
	ans_a = 16'hd1ac;
	#20
	A = 16'hb829;
	B = 16'h3e7a;
	ans_a = 16'hd1c7;
	#20
	A = 16'h2c2e;
	B = 16'h3c42;
	ans_a = 16'hd1c5;
	#20
	A = 16'h39ea;
	B = 16'hbf32;
	ans_a = 16'hd1f0;
	#20
	A = 16'h3710;
	B = 16'h39b8;
	ans_a = 16'hd1e6;
	#20
	A = 16'h3ff2;
	B = 16'h3baa;
	ans_a = 16'hd1a9;
	#20
	A = 16'h3460;
	B = 16'hbdf4;
	ans_a = 16'hd1b6;
	#20
	A = 16'ha9f3;
	B = 16'h356c;
	ans_a = 16'hd1b7;
	#20
	A = 16'hb709;
	B = 16'h3ebc;
	ans_a = 16'hd1cf;
	#20
	A = 16'hbfc6;
	B = 16'hbb52;
	ans_a = 16'hd196;
	#20
	A = 16'hae49;
	B = 16'hbd92;
	ans_a = 16'hd192;
	#20
	A = 16'h3f53;
	B = 16'h2d25;
	ans_a = 16'hd18d;
	#20
	A = 16'hbf58;
	B = 16'h3730;
	ans_a = 16'hd1a7;
	#20
	A = 16'hbe83;
	B = 16'hb4d4;
	ans_a = 16'hd197;
	#20
	A = 16'hbd84;
	B = 16'h3bb5;
	ans_a = 16'hd1c2;
	#20
	A = 16'h3f01;
	B = 16'hba28;
	ans_a = 16'hd1ed;
	#20
	A = 16'h3d19;
	B = 16'hb92b;
	ans_a = 16'hd207;
	#20
	A = 16'hbc3a;
	B = 16'hbd00;
	ans_a = 16'hd1dd;
	#20
	A = 16'hba9e;
	B = 16'hb962;
	ans_a = 16'hd1cb;
	#20
	A = 16'h33c7;
	B = 16'h3fbe;
	ans_a = 16'hd1bc;
	#20
	A = 16'hb142;
	B = 16'hbb69;
	ans_a = 16'hd1b7;
	#20
	A = 16'h379e;
	B = 16'h299c;
	ans_a = 16'hd1b6;
	#20
	A = 16'h3def;
	B = 16'hbeb6;
	ans_a = 16'hd206;
	#20
	A = 16'hbc73;
	B = 16'h3ef0;
	ans_a = 16'hd244;
	#20
	A = 16'h2674;
	B = 16'h3f92;
	ans_a = 16'hd242;
	#20
	A = 16'hbe38;
	B = 16'hb87c;
	ans_a = 16'hd226;
	#20
	A = 16'h3383;
	B = 16'h3bd3;
	ans_a = 16'hd21f;
	#20
	A = 16'h2c1d;
	B = 16'ha8af;
	ans_a = 16'hd21f;
	#20
	A = 16'hb85a;
	B = 16'hbaf9;
	ans_a = 16'hd210;
	#20
	A = 16'h31a1;
	B = 16'h29ee;
	ans_a = 16'hd210;
	#20
	A = 16'h3cd7;
	B = 16'h3e1e;
	ans_a = 16'hd1d5;
	#20
	A = 16'hb1da;
	B = 16'hbfd0;
	ans_a = 16'hd1ca;
	#20
	A = 16'h3c4b;
	B = 16'h3376;
	ans_a = 16'hd1c2;
	#20
	A = 16'hb430;
	B = 16'h3d38;
	ans_a = 16'hd1cd;
	#20
	A = 16'h3809;
	B = 16'h3588;
	ans_a = 16'hd1c7;
	#20
	A = 16'h3406;
	B = 16'hb9dc;
	ans_a = 16'hd1cd;
	#20
	A = 16'h3f5f;
	B = 16'h382c;
	ans_a = 16'hd1ae;
	#20
	A = 16'h3fa4;
	B = 16'h201c;
	ans_a = 16'hd1ae;
	#20
	A = 16'hb801;
	B = 16'h3af0;
	ans_a = 16'hd1bc;
	#20
	A = 16'h3ab1;
	B = 16'hbbc8;
	ans_a = 16'hd1d6;
	#20
	A = 16'h3d93;
	B = 16'h3eff;
	ans_a = 16'hd188;
	#20
	A = 16'hb8b0;
	B = 16'hb411;
	ans_a = 16'hd183;
	#20
	A = 16'hbe9f;
	B = 16'h3888;
	ans_a = 16'hd1a1;
	#20
	A = 16'hb2a7;
	B = 16'h3e8b;
	ans_a = 16'hd1ac;
	#20
	A = 16'h3f2f;
	B = 16'hac11;
	ans_a = 16'hd1b0;
	#20
	A = 16'hab33;
	B = 16'h3dea;
	ans_a = 16'hd1b3;
	#20
	A = 16'hbaef;
	B = 16'h3dd1;
	ans_a = 16'hd1db;
	#20
	A = 16'hbd1a;
	B = 16'h3f69;
	ans_a = 16'hd227;
	#20
	A = 16'h3e81;
	B = 16'h3ab5;
	ans_a = 16'hd1fb;
	#20
	A = 16'h3fa2;
	B = 16'hbb08;
	ans_a = 16'hd231;
	#20
	A = 16'ha9e3;
	B = 16'h3a10;
	ans_a = 16'hd232;
	#20
	A = 16'hb59a;
	B = 16'hbc56;
	ans_a = 16'hd226;
	#20
	A = 16'hbdae;
	B = 16'hbe5a;
	ans_a = 16'hd1de;
	#20
	A = 16'h3999;
	B = 16'h3de7;
	ans_a = 16'hd1bd;
	#20
	A = 16'h39a8;
	B = 16'h3f2c;
	ans_a = 16'hd194;
	#20
	A = 16'hbbf2;
	B = 16'hbd02;
	ans_a = 16'hd16c;
	#20
	A = 16'hbe66;
	B = 16'hbb57;
	ans_a = 16'hd13d;
	#20
	A = 16'ha7b7;
	B = 16'hbc64;
	ans_a = 16'hd13c;
	#20
	A = 16'h3129;
	B = 16'hb986;
	ans_a = 16'hd140;
	#20
	A = 16'hbc1f;
	B = 16'h3205;
	ans_a = 16'hd146;
	#20
	A = 16'hb79e;
	B = 16'h3ecf;
	ans_a = 16'hd160;
	#20
	A = 16'h3d45;
	B = 16'hbb36;
	ans_a = 16'hd186;
	#20
	A = 16'h3efb;
	B = 16'hbb6b;
	ans_a = 16'hd1ba;
	#20
	A = 16'h3cef;
	B = 16'h2e09;
	ans_a = 16'hd1b6;
	#20
	A = 16'hba3a;
	B = 16'hbec2;
	ans_a = 16'hd18c;
	#20
	A = 16'h3caa;
	B = 16'hbe69;
	ans_a = 16'hd1c8;
	#20
	A = 16'h3a68;
	B = 16'h2c75;
	ans_a = 16'hd1c6;
	#20
	A = 16'h314d;
	B = 16'h3f93;
	ans_a = 16'hd1bc;
	#20
	A = 16'hb18f;
	B = 16'hbab7;
	ans_a = 16'hd1b7;
	#20
	A = 16'hbee1;
	B = 16'hbcaa;
	ans_a = 16'hd177;
	#20
	A = 16'hbf61;
	B = 16'h3e99;
	ans_a = 16'hd1d8;
	#20
	A = 16'hb9ec;
	B = 16'hbda5;
	ans_a = 16'hd1b7;
	#20
	A = 16'h3ca7;
	B = 16'h3a83;
	ans_a = 16'hd199;
	#20
	A = 16'hbe4b;
	B = 16'hbec0;
	ans_a = 16'hd144;
	#20
	A = 16'hbf5b;
	B = 16'ha426;
	ans_a = 16'hd143;
	#20
	A = 16'h3b27;
	B = 16'hbe9b;
	ans_a = 16'hd172;
	#20
	A = 16'h3de5;
	B = 16'hbfa1;
	ans_a = 16'hd1cc;
	#20
	A = 16'h3afa;
	B = 16'hbd71;
	ans_a = 16'hd1f2;
	#20
	A = 16'h3c40;
	B = 16'h3d71;
	ans_a = 16'hd1c4;
	#20
	A = 16'h3cef;
	B = 16'h35b8;
	ans_a = 16'hd1b6;
	#20
	A = 16'hbc9b;
	B = 16'h3c96;
	ans_a = 16'hd1e0;
	#20
	A = 16'h356a;
	B = 16'h3847;
	ans_a = 16'hd1da;
	#20
	A = 16'h3d34;
	B = 16'hb9d1;
	ans_a = 16'hd1f8;
	#20
	A = 16'h3eaa;
	B = 16'h3b30;
	ans_a = 16'hd1c8;
	#20
	A = 16'ha45e;
	B = 16'h385a;
	ans_a = 16'hd1c8;
	#20
	A = 16'hbded;
	B = 16'h3e8c;
	ans_a = 16'hd216;
	#20
	A = 16'h3edd;
	B = 16'hb1dd;
	ans_a = 16'hd220;
	#20
	A = 16'h3fe2;
	B = 16'h3f26;
	ans_a = 16'hd1af;
	#20
	A = 16'hb96c;
	B = 16'h3879;
	ans_a = 16'hd1bb;
	#20
	A = 16'h3eb2;
	B = 16'hbc23;
	ans_a = 16'hd1f2;
	#20
	A = 16'hbf8f;
	B = 16'hbcfe;
	ans_a = 16'hd1a7;
	#20
	A = 16'hbc4b;
	B = 16'hbe06;
	ans_a = 16'hd173;
	#20
	A = 16'hb50f;
	B = 16'hbd5d;
	ans_a = 16'hd165;
	#20
	A = 16'hbc50;
	B = 16'hbfed;
	ans_a = 16'hd121;
	#20
	A = 16'h3c71;
	B = 16'h3c97;
	ans_a = 16'hd0f8;
	#20
	A = 16'h3389;
	B = 16'h3a60;
	ans_a = 16'hd0f2;
	#20
	A = 16'hb057;
	B = 16'hbb4d;
	ans_a = 16'hd0ee;
	#20
	A = 16'hbcd0;
	B = 16'hbeac;
	ans_a = 16'hd0ae;
	#20
	A = 16'h38d8;
	B = 16'h3a46;
	ans_a = 16'hd09f;
	#20
	A = 16'hbb9c;
	B = 16'h3b8a;
	ans_a = 16'hd0bc;
	#20
	A = 16'hbb37;
	B = 16'hbd96;
	ans_a = 16'hd094;
	#20
	A = 16'h3dc2;
	B = 16'h3f79;
	ans_a = 16'hd03e;
	#20
	A = 16'hb9a3;
	B = 16'h3b18;
	ans_a = 16'hd052;
	#20
	A = 16'ha937;
	B = 16'h392e;
	ans_a = 16'hd053;
	#20
	A = 16'h3b23;
	B = 16'hafbc;
	ans_a = 16'hd056;
	#20
	A = 16'h3755;
	B = 16'hbb1c;
	ans_a = 16'hd063;
	#20
	A = 16'hbf42;
	B = 16'h3d3c;
	ans_a = 16'hd0af;
	#20
	A = 16'hb8c0;
	B = 16'h3977;
	ans_a = 16'hd0bc;
	#20
	A = 16'hbff5;
	B = 16'hbd49;
	ans_a = 16'hd068;
	#20
	A = 16'h3425;
	B = 16'h3c04;
	ans_a = 16'hd060;
	#20
	A = 16'h3d04;
	B = 16'hbed4;
	ans_a = 16'hd0a4;
	#20
	A = 16'hba00;
	B = 16'hb0e2;
	ans_a = 16'hd0a0;
	#20
	A = 16'h3d6b;
	B = 16'h3950;
	ans_a = 16'hd083;
	#20
	A = 16'hbea4;
	B = 16'h3d39;
	ans_a = 16'hd0c8;
	#20
	A = 16'hbe85;
	B = 16'h3c8d;
	ans_a = 16'hd103;
	#20
	A = 16'hbe4a;
	B = 16'had87;
	ans_a = 16'hd0ff;
	#20
	A = 16'hbb66;
	B = 16'hbf3b;
	ans_a = 16'hd0ca;
	#20
	A = 16'h386b;
	B = 16'h3af8;
	ans_a = 16'hd0bb;
	#20
	A = 16'hacb7;
	B = 16'h351d;
	ans_a = 16'hd0bc;
	#20
	A = 16'hbd73;
	B = 16'hb437;
	ans_a = 16'hd0b1;
	#20
	A = 16'h3712;
	B = 16'h3898;
	ans_a = 16'hd0a9;
	#20
	A = 16'hbd95;
	B = 16'h300c;
	ans_a = 16'hd0af;
	#20
	A = 16'h3cdf;
	B = 16'hbfd7;
	ans_a = 16'hd0fb;
	#20
	A = 16'hbcf8;
	B = 16'hbf62;
	ans_a = 16'hd0b2;
	#20
	A = 16'h3ea4;
	B = 16'hb064;
	ans_a = 16'hd0b9;
	#20
	A = 16'h3f5c;
	B = 16'h3f3b;
	ans_a = 16'hd04f;
	#20
	A = 16'hacc1;
	B = 16'hb41c;
	ans_a = 16'hd04e;
	#20
	A = 16'hbf6f;
	B = 16'hbf8d;
	ans_a = 16'hcfbc;
	#20
	A = 16'h3bb7;
	B = 16'h3fa0;
	ans_a = 16'hcf46;
	#20
	A = 16'hbd51;
	B = 16'hbd3d;
	ans_a = 16'hced7;
	#20
	A = 16'h3da6;
	B = 16'h3d01;
	ans_a = 16'hce66;
	#20
	A = 16'h3eae;
	B = 16'h3e32;
	ans_a = 16'hcdc0;
	#20
	A = 16'h3c12;
	B = 16'hbcd5;
	ans_a = 16'hce0f;
	#20
	A = 16'hb2de;
	B = 16'h39f6;
	ans_a = 16'hce19;
	#20
	A = 16'h3861;
	B = 16'h3ffb;
	ans_a = 16'hcdd3;
	#20
	A = 16'h38e2;
	B = 16'h369d;
	ans_a = 16'hcdc3;
	#20
	A = 16'h3e51;
	B = 16'ha002;
	ans_a = 16'hcdc4;
	#20
	A = 16'hbc62;
	B = 16'hb89a;
	ans_a = 16'hcd9c;
	#20
	A = 16'hb855;
	B = 16'hae2c;
	ans_a = 16'hcd99;
	#20
	A = 16'hb083;
	B = 16'ha598;
	ans_a = 16'hcd99;
	#20
	A = 16'hbb66;
	B = 16'hbec4;
	ans_a = 16'hcd35;
	#20
	A = 16'h3c10;
	B = 16'h367d;
	ans_a = 16'hcd1b;
	#20
	A = 16'h3919;
	B = 16'hbdc5;
	ans_a = 16'hcd56;
	#20
	A = 16'hb563;
	B = 16'hbc3b;
	ans_a = 16'hcd3f;
	#20
	A = 16'hbcd3;
	B = 16'hb9d3;
	ans_a = 16'hcd07;
	#20
	A = 16'hbde6;
	B = 16'h3235;
	ans_a = 16'hcd19;
	#20
	A = 16'hb635;
	B = 16'h3f5d;
	ans_a = 16'hcd47;
	#20
	A = 16'hbe83;
	B = 16'hbef4;
	ans_a = 16'hcc92;
	#20
	A = 16'hb8d8;
	B = 16'hbe4f;
	ans_a = 16'hcc55;
	#20
	A = 16'hbc89;
	B = 16'hbc43;
	ans_a = 16'hcc08;
	#20
	A = 16'hbf0b;
	B = 16'h3511;
	ans_a = 16'hcc2c;
	#20
	A = 16'h2ee4;
	B = 16'hbf11;
	ans_a = 16'hcc38;
	#20
	A = 16'h29ef;
	B = 16'h3e59;
	ans_a = 16'hcc33;
	#20
	A = 16'h3901;
	B = 16'hb9a6;
	ans_a = 16'hcc4f;
	#20
	A = 16'hacd0;
	B = 16'ha9d9;
	ans_a = 16'hcc4f;
	#20
	A = 16'hbc66;
	B = 16'hbcb7;
	ans_a = 16'hcbf8;
	#20
	A = 16'hba92;
	B = 16'h3740;
	ans_a = 16'hcc14;
	#20
	A = 16'hbffe;
	B = 16'h3e29;
	ans_a = 16'hccd9;
	#20
	A = 16'h2e11;
	B = 16'h3318;
	ans_a = 16'hccd8;
	#20
	A = 16'h34e1;
	B = 16'hbdf7;
	ans_a = 16'hccf5;
	#20
	A = 16'hbf96;
	B = 16'hba58;
	ans_a = 16'hcc95;
	#20
	A = 16'h3d4d;
	B = 16'hb4e7;
	ans_a = 16'hccaf;
	#20
	A = 16'hb82b;
	B = 16'h3f43;
	ans_a = 16'hccec;
	#20
	A = 16'h352d;
	B = 16'h3c26;
	ans_a = 16'hccd7;
	#20
	A = 16'h3d7a;
	B = 16'hbc16;
	ans_a = 16'hcd30;
	#20
	A = 16'hb32a;
	B = 16'h362a;
	ans_a = 16'hcd36;
	#20
	A = 16'h38f2;
	B = 16'hbe13;
	ans_a = 16'hcd72;
	#20
	A = 16'hba3d;
	B = 16'h3e35;
	ans_a = 16'hcdbf;
	#20
	A = 16'h3d72;
	B = 16'h3ef9;
	ans_a = 16'hcd27;
	#20
	A = 16'h39cd;
	B = 16'hba5f;
	ans_a = 16'hcd4c;
	#20
	A = 16'h25d6;
	B = 16'hbc56;
	ans_a = 16'hcd4e;
	#20
	A = 16'hb0d8;
	B = 16'h3ce6;
	ans_a = 16'hcd5a;
	#20
	A = 16'h3c0c;
	B = 16'h3d0a;
	ans_a = 16'hcd08;
	#20
	A = 16'h3f7e;
	B = 16'hafd1;
	ans_a = 16'hcd17;
	#20
	A = 16'hbd70;
	B = 16'hbfd3;
	ans_a = 16'hcc6d;
	#20
	A = 16'hba84;
	B = 16'h3c28;
	ans_a = 16'hcca3;
	#20
	A = 16'hb903;
	B = 16'hbe1e;
	ans_a = 16'hcc66;
	#20
	A = 16'h3df4;
	B = 16'hbf77;
	ans_a = 16'hcd18;
	#20
	A = 16'h34b3;
	B = 16'hba1e;
	ans_a = 16'hcd26;
	#20
	A = 16'hba92;
	B = 16'h32a9;
	ans_a = 16'hcd31;
	#20
	A = 16'hbdeb;
	B = 16'hbf83;
	ans_a = 16'hcc7f;
	#20
	A = 16'hb8d6;
	B = 16'hba8b;
	ans_a = 16'hcc5f;
	#20
	A = 16'hb4cd;
	B = 16'h3f1d;
	ans_a = 16'hcc81;
	#20
	A = 16'h316b;
	B = 16'h3123;
	ans_a = 16'hcc7f;
	#20
	A = 16'hbc51;
	B = 16'h3fa4;
	ans_a = 16'hcd03;
	#20
	A = 16'h3c10;
	B = 16'hbf49;
	ans_a = 16'hcd79;
	#20
	A = 16'hb99f;
	B = 16'h3b19;
	ans_a = 16'hcda1;
	#20
	A = 16'hb930;
	B = 16'h3b4a;
	ans_a = 16'hcdc7;
	#20
	A = 16'hb4f1;
	B = 16'h3821;
	ans_a = 16'hcdd1;
	#20
	A = 16'hbfe4;
	B = 16'hbe5c;
	ans_a = 16'hcd08;
	#20
	A = 16'hbf01;
	B = 16'hbfb9;
	ans_a = 16'hcc30;
	#20
	A = 16'h3cc4;
	B = 16'hbefc;
	ans_a = 16'hccb5;
	#20
	A = 16'h3925;
	B = 16'hbc29;
	ans_a = 16'hcce0;
	#20
	A = 16'h3c22;
	B = 16'hb5a2;
	ans_a = 16'hccf7;
	#20
	A = 16'h3649;
	B = 16'hbc70;
	ans_a = 16'hcd13;
	#20
	A = 16'h30b5;
	B = 16'h3dd1;
	ans_a = 16'hcd05;
	#20
	A = 16'hbf5c;
	B = 16'hbad5;
	ans_a = 16'hcca0;
	#20
	A = 16'h3210;
	B = 16'h3f7e;
	ans_a = 16'hcc89;
	#20
	A = 16'hb285;
	B = 16'h3736;
	ans_a = 16'hcc8f;
	#20
	A = 16'h3d98;
	B = 16'h3377;
	ans_a = 16'hcc7a;
	#20
	A = 16'h3dcc;
	B = 16'hb478;
	ans_a = 16'hcc94;
	#20
	A = 16'hbec8;
	B = 16'h3c9b;
	ans_a = 16'hcd11;
	#20
	A = 16'hb281;
	B = 16'hbf68;
	ans_a = 16'hccf9;
	#20
	A = 16'hbfcd;
	B = 16'h3d29;
	ans_a = 16'hcd9a;
	#20
	A = 16'hb133;
	B = 16'h358a;
	ans_a = 16'hcd9e;
	#20
	A = 16'h3cf3;
	B = 16'hbbfa;
	ans_a = 16'hcded;
	#20
	A = 16'h3c41;
	B = 16'hb8d3;
	ans_a = 16'hce16;
	#20
	A = 16'hb677;
	B = 16'h3cfd;
	ans_a = 16'hce36;
	#20
	A = 16'h394d;
	B = 16'h3f3f;
	ans_a = 16'hcde9;
	#20
	A = 16'hb786;
	B = 16'hbf14;
	ans_a = 16'hcdb4;
	#20
	A = 16'hbc7e;
	B = 16'h3e4b;
	ans_a = 16'hce25;
	#20
	A = 16'h367f;
	B = 16'h3db9;
	ans_a = 16'hce00;
	#20
	A = 16'h3391;
	B = 16'hbc35;
	ans_a = 16'hce10;
	#20
	A = 16'hbd76;
	B = 16'h3e43;
	ans_a = 16'hce99;
	#20
	A = 16'h3606;
	B = 16'hbeb6;
	ans_a = 16'hcec1;
	#20
	A = 16'h39c9;
	B = 16'h3e3c;
	ans_a = 16'hce79;
	#20
	A = 16'h3aa0;
	B = 16'hb955;
	ans_a = 16'hce9c;
	#20
	A = 16'hb69b;
	B = 16'h3d93;
	ans_a = 16'hcec1;
	#20
	A = 16'hbfe5;
	B = 16'h3b71;
	ans_a = 16'hcf36;
	#20
	A = 16'hba8b;
	B = 16'h2982;
	ans_a = 16'hcf38;
	#20
	A = 16'h3c4d;
	B = 16'h3f1a;
	ans_a = 16'hcebe;
	#20
	A = 16'hb837;
	B = 16'h3a92;
	ans_a = 16'hceda;
	#20
	A = 16'h37bc;
	B = 16'hb9b6;
	ans_a = 16'hcef0;
	#20
	A = 16'h3eda;
	B = 16'h3b27;
	ans_a = 16'hce8e;
	#20
	A = 16'hbdb8;
	B = 16'h3895;
	ans_a = 16'hcec2;
	#20
	A = 16'hb78c;
	B = 16'hbbf7;
	ans_a = 16'hcea4;
	#20
	A = 16'h34ef;
	B = 16'hb761;
	ans_a = 16'hcead;
	#20
	A = 16'hbcbf;
	B = 16'h3d96;
	ans_a = 16'hcf17;
	#20
	A = 16'h3d49;
	B = 16'h3fcf;
	ans_a = 16'hce72;
	#20
	A = 16'h3a58;
	B = 16'h3e64;
	ans_a = 16'hce21;
	#20
	A = 16'hbf60;
	B = 16'h3c14;
	ans_a = 16'hce99;
	#20
	A = 16'h392d;
	B = 16'hbcdb;
	ans_a = 16'hcecb;
	#20
	A = 16'h3eb1;
	B = 16'hbeab;
	ans_a = 16'hcf7e;
	#20
	A = 16'hbdae;
	B = 16'haf6e;
	ans_a = 16'hcf73;
	#20
	A = 16'hb7aa;
	B = 16'hbea0;
	ans_a = 16'hcf40;
	#20
	A = 16'h3e9d;
	B = 16'h3fc8;
	ans_a = 16'hce72;
	#20
	A = 16'h3748;
	B = 16'h2e52;
	ans_a = 16'hce6f;
	#20
	A = 16'h3c32;
	B = 16'h3e36;
	ans_a = 16'hce07;
	#20
	A = 16'hbeb4;
	B = 16'hbc95;
	ans_a = 16'hcd8c;
	#20
	A = 16'hbed3;
	B = 16'h363c;
	ans_a = 16'hcdb7;
	#20
	A = 16'h3e3f;
	B = 16'h3652;
	ans_a = 16'hcd90;
	#20
	A = 16'hb9db;
	B = 16'h3b4e;
	ans_a = 16'hcdbb;
	#20
	A = 16'h3a0a;
	B = 16'h3d17;
	ans_a = 16'hcd7e;
	#20
	A = 16'hbd80;
	B = 16'h3f27;
	ans_a = 16'hce1b;
	#20
	A = 16'h3c6a;
	B = 16'hbcfd;
	ans_a = 16'hce73;
	#20
	A = 16'hbdd3;
	B = 16'h3c2c;
	ans_a = 16'hced4;
	#20
	A = 16'hb3c3;
	B = 16'hba52;
	ans_a = 16'hcec8;
	#20
	A = 16'hba9d;
	B = 16'h3e89;
	ans_a = 16'hcf1e;
	#20
	A = 16'h3128;
	B = 16'hb9c1;
	ans_a = 16'hcf25;
	#20
	A = 16'hbe71;
	B = 16'h31d2;
	ans_a = 16'hcf38;
	#20
	A = 16'hbd2f;
	B = 16'hbf80;
	ans_a = 16'hce9c;
	#20
	A = 16'h252b;
	B = 16'h3d7f;
	ans_a = 16'hce9a;
	#20
	A = 16'h3e47;
	B = 16'h3ec6;
	ans_a = 16'hcdf0;
	#20
	A = 16'hbc7e;
	B = 16'h3cf4;
	ans_a = 16'hce49;
	#20
	A = 16'hbdd7;
	B = 16'hbe5a;
	ans_a = 16'hcdb5;
	#20
	A = 16'h258e;
	B = 16'hb8e3;
	ans_a = 16'hcdb6;
	#20
	A = 16'h36a2;
	B = 16'hbd51;
	ans_a = 16'hcdd9;
	#20
	A = 16'hbcf9;
	B = 16'hb8ef;
	ans_a = 16'hcda8;
	#20
	A = 16'h3dae;
	B = 16'hbbfd;
	ans_a = 16'hce03;
	#20
	A = 16'hb94d;
	B = 16'h3ce3;
	ans_a = 16'hce37;
	#20
	A = 16'h3987;
	B = 16'hbfb7;
	ans_a = 16'hce8c;
	#20
	A = 16'h3d95;
	B = 16'h3cab;
	ans_a = 16'hce24;
	#20
	A = 16'h39f9;
	B = 16'hbc99;
	ans_a = 16'hce5b;
	#20
	A = 16'h3d2f;
	B = 16'hbc72;
	ans_a = 16'hceb7;
	#20
	A = 16'hb49d;
	B = 16'hb7c7;
	ans_a = 16'hceae;
	#20
	A = 16'hbd74;
	B = 16'hbf76;
	ans_a = 16'hce0b;
	#20
	A = 16'hbfbb;
	B = 16'hb729;
	ans_a = 16'hcdd4;
	#20
	A = 16'h36c6;
	B = 16'hbf4d;
	ans_a = 16'hce05;
	#20
	A = 16'h2f19;
	B = 16'hb766;
	ans_a = 16'hce08;
	#20
	A = 16'h350f;
	B = 16'hb5d9;
	ans_a = 16'hce0f;
	#20
	A = 16'hbd41;
	B = 16'h398c;
	ans_a = 16'hce49;
	#20
	A = 16'h2f33;
	B = 16'hbafe;
	ans_a = 16'hce4f;
	#20
	A = 16'h39b5;
	B = 16'h3885;
	ans_a = 16'hce35;
	#20
	A = 16'hb526;
	B = 16'h3fee;
	ans_a = 16'hce5e;
	#20
	A = 16'ha5c4;
	B = 16'hbaaa;
	ans_a = 16'hce5d;
	#20
	A = 16'hbd47;
	B = 16'hbca9;
	ans_a = 16'hcdfb;
	#20
	A = 16'hbd54;
	B = 16'hbc4b;
	ans_a = 16'hcda0;
	#20
	A = 16'hbcfd;
	B = 16'hb961;
	ans_a = 16'hcd6a;
	#20
	A = 16'hbce3;
	B = 16'h3c4e;
	ans_a = 16'hcdbe;
	#20
	A = 16'hbee8;
	B = 16'hb36e;
	ans_a = 16'hcda4;
	#20
	A = 16'hbc27;
	B = 16'h2bef;
	ans_a = 16'hcda8;
	#20
	A = 16'hbe69;
	B = 16'h2b31;
	ans_a = 16'hcdae;
	#20
	A = 16'h3bb0;
	B = 16'hbcdd;
	ans_a = 16'hcdf9;
	#20
	A = 16'hbe93;
	B = 16'h39d2;
	ans_a = 16'hce46;
	#20
	A = 16'h395f;
	B = 16'hbea9;
	ans_a = 16'hce8e;
	#20
	A = 16'h3d0e;
	B = 16'h3a93;
	ans_a = 16'hce4c;
	#20
	A = 16'hbd69;
	B = 16'h2e79;
	ans_a = 16'hce55;
	#20
	A = 16'hbec4;
	B = 16'hb489;
	ans_a = 16'hce36;
	#20
	A = 16'hbe9c;
	B = 16'hbbf6;
	ans_a = 16'hcdcd;
	#20
	A = 16'h2efe;
	B = 16'hbd1c;
	ans_a = 16'hcdd6;
	#20
	A = 16'h3f36;
	B = 16'h3f98;
	ans_a = 16'hccfb;
	#20
	A = 16'hbcfe;
	B = 16'h3d97;
	ans_a = 16'hcd6b;
	#20
	A = 16'hbf0d;
	B = 16'h3777;
	ans_a = 16'hcda0;
	#20
	A = 16'h3f9b;
	B = 16'h3f95;
	ans_a = 16'hccb9;
	#20
	A = 16'hbf94;
	B = 16'hbccf;
	ans_a = 16'hcc27;
	#20
	A = 16'hbf0a;
	B = 16'h394e;
	ans_a = 16'hcc72;
	#20
	A = 16'hbb45;
	B = 16'h3ebf;
	ans_a = 16'hccd4;
	#20
	A = 16'hbc2a;
	B = 16'hb67c;
	ans_a = 16'hccb9;
	#20
	A = 16'hbd4d;
	B = 16'h3ef8;
	ans_a = 16'hcd4d;
	#20
	A = 16'h3a7e;
	B = 16'h3e8c;
	ans_a = 16'hccf8;
	#20
	A = 16'h2392;
	B = 16'h3ab2;
	ans_a = 16'hccf7;
	#20
	A = 16'hbdf9;
	B = 16'h35b4;
	ans_a = 16'hcd19;
	#20
	A = 16'hb4dd;
	B = 16'h3b86;
	ans_a = 16'hcd2b;
	#20
	A = 16'hbd81;
	B = 16'h3fe9;
	ans_a = 16'hcdd9;
	#20
	A = 16'hb0a9;
	B = 16'h3dcb;
	ans_a = 16'hcde6;
	#20
	A = 16'h3fb2;
	B = 16'h38e7;
	ans_a = 16'hcd9b;
	#20
	A = 16'hb53d;
	B = 16'hb610;
	ans_a = 16'hcd93;
	#20
	A = 16'h3222;
	B = 16'h30e7;
	ans_a = 16'hcd91;
	#20
	A = 16'h3a7d;
	B = 16'hbed7;
	ans_a = 16'hcdea;
	#20
	A = 16'hbb5c;
	B = 16'hb4ab;
	ans_a = 16'hcdd9;
	#20
	A = 16'h3ba1;
	B = 16'hbc06;
	ans_a = 16'hce16;
	#20
	A = 16'h3539;
	B = 16'h3f43;
	ans_a = 16'hcdf0;
	#20
	A = 16'hbf2f;
	B = 16'h3660;
	ans_a = 16'hce1e;
	#20
	A = 16'hb068;
	B = 16'h35b6;
	ans_a = 16'hce21;
	#20
	A = 16'hbde6;
	B = 16'hb681;
	ans_a = 16'hcdfb;
	#20
	A = 16'h3fbd;
	B = 16'hbf6c;
	ans_a = 16'hcee1;
	#20
	A = 16'h3a3a;
	B = 16'h35fe;
	ans_a = 16'hcece;
	#20
	A = 16'haf13;
	B = 16'hbff6;
	ans_a = 16'hcec0;
	#20
	A = 16'hbfe0;
	B = 16'hbf44;
	ans_a = 16'hcddb;
	#20
	A = 16'h3b05;
	B = 16'hbbb9;
	ans_a = 16'hce11;
	#20
	A = 16'hbc32;
	B = 16'h3cf1;
	ans_a = 16'hce64;
	#20
	A = 16'h3d99;
	B = 16'hbce8;
	ans_a = 16'hced2;
	#20
	A = 16'h3604;
	B = 16'hb4c6;
	ans_a = 16'hced9;
	#20
	A = 16'h3fb9;
	B = 16'hbf20;
	ans_a = 16'hcfb5;
	#20
	A = 16'hbea2;
	B = 16'hbfde;
	ans_a = 16'hcee4;
	#20
	A = 16'hbd94;
	B = 16'hbea6;
	ans_a = 16'hce50;
	#20
	A = 16'h327d;
	B = 16'hb555;
	ans_a = 16'hce54;
	#20
	A = 16'hbf6b;
	B = 16'hb9b7;
	ans_a = 16'hcdff;
	#20
	A = 16'h3f71;
	B = 16'hbf03;
	ans_a = 16'hced0;
	#20
	A = 16'h38b8;
	B = 16'hbf08;
	ans_a = 16'hcf12;
	#20
	A = 16'h3cbe;
	B = 16'hbb88;
	ans_a = 16'hcf59;
	#20
	A = 16'hb911;
	B = 16'hb5ca;
	ans_a = 16'hcf4a;
	#20
	A = 16'hbc61;
	B = 16'h35be;
	ans_a = 16'hcf63;
	#20
	A = 16'h303d;
	B = 16'hbd12;
	ans_a = 16'hcf6e;
	#20
	A = 16'hbe41;
	B = 16'hbede;
	ans_a = 16'hcec2;
	#20
	A = 16'h39a9;
	B = 16'hbb57;
	ans_a = 16'hceec;
	#20
	A = 16'h2f2d;
	B = 16'hbefd;
	ans_a = 16'hcef9;
	#20
	A = 16'h35fb;
	B = 16'hbaee;
	ans_a = 16'hcf0e;
	#20
	A = 16'hbb96;
	B = 16'h3f01;
	ans_a = 16'hcf78;
	#20
	A = 16'h293b;
	B = 16'hbdfd;
	ans_a = 16'hcf7c;
	#20
	A = 16'hbac3;
	B = 16'h3f31;
	ans_a = 16'hcfdd;
	#20
	A = 16'hbec9;
	B = 16'hb823;
	ans_a = 16'hcfa5;
	#20
	A = 16'h3668;
	B = 16'hb9b1;
	ans_a = 16'hcfb7;
	#20
	A = 16'hbd64;
	B = 16'h345b;
	ans_a = 16'hcfce;
	#20
	A = 16'h3323;
	B = 16'habde;
	ans_a = 16'hcfcf;
	#20
	A = 16'hbebe;
	B = 16'h3cf5;
	ans_a = 16'hd02a;
	#20
	A = 16'h3e4d;
	B = 16'h3b5b;
	ans_a = 16'hcff7;
	#20
	A = 16'h3988;
	B = 16'hb66c;
	ans_a = 16'hd004;
	#20
	A = 16'hb68f;
	B = 16'h37c9;
	ans_a = 16'hd00a;
	#20
	A = 16'h3e1b;
	B = 16'hb0de;
	ans_a = 16'hd011;
	#20
	A = 16'hbcbd;
	B = 16'hba4c;
	ans_a = 16'hcfe6;
	#20
	A = 16'h3d0e;
	B = 16'hbbbd;
	ans_a = 16'hd01a;
	#20
	A = 16'h3cd2;
	B = 16'h3063;
	ans_a = 16'hd015;
	#20
	A = 16'h3d9a;
	B = 16'hb9a2;
	ans_a = 16'hd035;
	#20
	A = 16'hb6ae;
	B = 16'h3a0f;
	ans_a = 16'hd03f;
	#20
	A = 16'hb02c;
	B = 16'h3ae5;
	ans_a = 16'hd043;
	#20
	A = 16'h3c91;
	B = 16'h3c2a;
	ans_a = 16'hd01d;
	#20
	A = 16'haee3;
	B = 16'h3caf;
	ans_a = 16'hd021;
	#20
	A = 16'h38c8;
	B = 16'h3842;
	ans_a = 16'hd017;
	#20
	A = 16'hbafb;
	B = 16'h3e88;
	ans_a = 16'hd045;
	#20
	A = 16'h3c47;
	B = 16'h3f70;
	ans_a = 16'hd005;
	#20
	A = 16'h3ddf;
	B = 16'h3855;
	ans_a = 16'hcfd7;
	#20
	A = 16'hb574;
	B = 16'h3c26;
	ans_a = 16'hcfee;
	#20
	A = 16'h3fd1;
	B = 16'h35c7;
	ans_a = 16'hcfc1;
	#20
	A = 16'h3efe;
	B = 16'hb7b4;
	ans_a = 16'hcff7;
	#20
	A = 16'h36fa;
	B = 16'hbe03;
	ans_a = 16'hd010;
	#20
	A = 16'h39b2;
	B = 16'h3fd0;
	ans_a = 16'hcfc7;
	#20
	A = 16'h3faf;
	B = 16'h398e;
	ans_a = 16'hcf72;
	#20
	A = 16'h3567;
	B = 16'hb1b5;
	ans_a = 16'hcf76;
	#20
	A = 16'h39c4;
	B = 16'hbdf8;
	ans_a = 16'hcfbb;
	#20
	A = 16'h3d96;
	B = 16'h3cb9;
	ans_a = 16'hcf52;
	#20
	A = 16'h3de6;
	B = 16'h3461;
	ans_a = 16'hcf38;
	#20
	A = 16'hbfa3;
	B = 16'hbb7c;
	ans_a = 16'hcec6;
	#20
	A = 16'h38c3;
	B = 16'h3d72;
	ans_a = 16'hce92;
	#20
	A = 16'hbc46;
	B = 16'h3df5;
	ans_a = 16'hcef8;
	#20
	A = 16'h2e2e;
	B = 16'h3a1a;
	ans_a = 16'hcef3;
	#20
	A = 16'hb09e;
	B = 16'h3e25;
	ans_a = 16'hcf01;
	#20
	A = 16'h3b3a;
	B = 16'h3f86;
	ans_a = 16'hce94;
	#20
	A = 16'h3f8c;
	B = 16'hb0c7;
	ans_a = 16'hcea6;
	#20
	A = 16'h396b;
	B = 16'h2a25;
	ans_a = 16'hcea4;
	#20
	A = 16'hbd60;
	B = 16'h2858;
	ans_a = 16'hcea7;
	#20
	A = 16'h3c58;
	B = 16'hba5a;
	ans_a = 16'hcede;
	#20
	A = 16'h396a;
	B = 16'hbdcc;
	ans_a = 16'hcf1d;
	#20
	A = 16'h3818;
	B = 16'hb617;
	ans_a = 16'hcf29;
	#20
	A = 16'hbed0;
	B = 16'hbf26;
	ans_a = 16'hce66;
	#20
	A = 16'hbcf1;
	B = 16'hbb8d;
	ans_a = 16'hce1b;
	#20
	A = 16'hbc74;
	B = 16'hb8f9;
	ans_a = 16'hcdef;
	#20
	A = 16'hbffc;
	B = 16'h3cc9;
	ans_a = 16'hce88;
	#20
	A = 16'hbd87;
	B = 16'h3fe9;
	ans_a = 16'hcf37;
	#20
	A = 16'h3c4f;
	B = 16'h3d53;
	ans_a = 16'hcedb;
	#20
	A = 16'hbe67;
	B = 16'h3e40;
	ans_a = 16'hcf7b;
	#20
	A = 16'h3f6f;
	B = 16'h3c4b;
	ans_a = 16'hcefb;
	#20
	A = 16'h3f4c;
	B = 16'hbe93;
	ans_a = 16'hcfbb;
	#20
	A = 16'hbfc5;
	B = 16'hbd2e;
	ans_a = 16'hcf1a;
	#20
	A = 16'h3a42;
	B = 16'h1b68;
	ans_a = 16'hcf1a;
	#20
	A = 16'hbcb8;
	B = 16'hbfef;
	ans_a = 16'hce84;
	#20
	A = 16'h3964;
	B = 16'hb8a6;
	ans_a = 16'hce9d;
	#20
	A = 16'h35e9;
	B = 16'hbedc;
	ans_a = 16'hcec6;
	#20
	A = 16'h3e0f;
	B = 16'hbd30;
	ans_a = 16'hcf44;
	#20
	A = 16'hba3c;
	B = 16'hbd62;
	ans_a = 16'hcf01;
	#20
	A = 16'h3f3a;
	B = 16'hb5ee;
	ans_a = 16'hcf2c;
	#20
	A = 16'h3743;
	B = 16'h396b;
	ans_a = 16'hcf18;
	#20
	A = 16'hbd57;
	B = 16'hbc20;
	ans_a = 16'hcec0;
	#20
	A = 16'h3c5f;
	B = 16'hb2c0;
	ans_a = 16'hcecf;
	#20
	A = 16'h3e55;
	B = 16'hbcc5;
	ans_a = 16'hcf48;
	#20
	A = 16'hbdee;
	B = 16'h3823;
	ans_a = 16'hcf79;
	#20
	A = 16'hbbbb;
	B = 16'hbf2d;
	ans_a = 16'hcf0a;
	#20
	A = 16'hbd47;
	B = 16'hbdc6;
	ans_a = 16'hce90;
	#20
	A = 16'h3a2a;
	B = 16'h2998;
	ans_a = 16'hce8e;
	#20
	A = 16'h207e;
	B = 16'h31da;
	ans_a = 16'hce8e;
	#20
	A = 16'h3e15;
	B = 16'h3c0b;
	ans_a = 16'hce2c;
	#20
	A = 16'h3eb9;
	B = 16'h3626;
	ans_a = 16'hce03;
	#20
	A = 16'hbda4;
	B = 16'h3a37;
	ans_a = 16'hce49;
	#20
	A = 16'hb07d;
	B = 16'hbf14;
	ans_a = 16'hce39;
	#20
	A = 16'hbc84;
	B = 16'hbd92;
	ans_a = 16'hcdd4;
	#20
	A = 16'h3d92;
	B = 16'h3a45;
	ans_a = 16'hcd8e;
	#20
	A = 16'h35e3;
	B = 16'hb786;
	ans_a = 16'hcd99;
	#20
	A = 16'hb8f9;
	B = 16'h30ef;
	ans_a = 16'hcd9f;
	#20
	A = 16'h2f61;
	B = 16'h3ec9;
	ans_a = 16'hcd92;
	#20
	A = 16'hbf8b;
	B = 16'hbd0d;
	ans_a = 16'hccfa;
	#20
	A = 16'h3f60;
	B = 16'h3fed;
	ans_a = 16'hcc10;
	#20
	A = 16'h3f8b;
	B = 16'hbd70;
	ans_a = 16'hccb4;
	#20
	A = 16'hbf11;
	B = 16'h3c29;
	ans_a = 16'hcd2a;
	#20
	A = 16'hbd9b;
	B = 16'h3b30;
	ans_a = 16'hcd7b;
	#20
	A = 16'hb660;
	B = 16'hbe97;
	ans_a = 16'hcd51;
	#20
	A = 16'hbff7;
	B = 16'hbc61;
	ans_a = 16'hccc6;
	#20
	A = 16'hbbad;
	B = 16'hbdf1;
	ans_a = 16'hcc6b;
	#20
	A = 16'h31a9;
	B = 16'h2c2d;
	ans_a = 16'hcc6a;
	#20
	A = 16'h3a6f;
	B = 16'hbf6a;
	ans_a = 16'hccc9;
	#20
	A = 16'hb876;
	B = 16'hb9f1;
	ans_a = 16'hccae;
	#20
	A = 16'h3f3f;
	B = 16'hb471;
	ans_a = 16'hccce;
	#20
	A = 16'h3b6a;
	B = 16'h3ee4;
	ans_a = 16'hcc68;
	#20
	A = 16'h3d59;
	B = 16'h3c07;
	ans_a = 16'hcc12;
	#20
	A = 16'hb4ef;
	B = 16'hbfb3;
	ans_a = 16'hcbd8;
	#20
	A = 16'hbd22;
	B = 16'hbab4;
	ans_a = 16'hcb4e;
	#20
	A = 16'hb2ce;
	B = 16'hbd98;
	ans_a = 16'hcb28;
	#20
	A = 16'hace2;
	B = 16'hb55d;
	ans_a = 16'hcb25;
	#20
	A = 16'hb368;
	B = 16'h39a6;
	ans_a = 16'hcb3a;
	#20
	A = 16'hb176;
	B = 16'h3c14;
	ans_a = 16'hcb50;
	#20
	A = 16'hbad4;
	B = 16'hbef0;
	ans_a = 16'hca92;
	#20
	A = 16'h355b;
	B = 16'h3e39;
	ans_a = 16'hca4f;
	#20
	A = 16'h3a94;
	B = 16'hb784;
	ans_a = 16'hca80;
	#20
	A = 16'hbc4d;
	B = 16'h3144;
	ans_a = 16'hca97;
	#20
	A = 16'hbbbe;
	B = 16'hbfe6;
	ans_a = 16'hc9a2;
	#20
	A = 16'hb894;
	B = 16'hb88d;
	ans_a = 16'hc978;
	#20
	A = 16'hbed5;
	B = 16'hbf47;
	ans_a = 16'hc7d4;
	#20
	A = 16'h354a;
	B = 16'h3cf7;
	ans_a = 16'hc76b;
	#20
	A = 16'hbd03;
	B = 16'hb96f;
	ans_a = 16'hc691;
	#20
	A = 16'hbe5b;
	B = 16'h3eeb;
	ans_a = 16'hc8a8;
	#20
	A = 16'h3d43;
	B = 16'hbf89;
	ans_a = 16'hc9e5;
	#20
	A = 16'hbf6b;
	B = 16'hbd3d;
	ans_a = 16'hc8ae;
	#20
	A = 16'h3474;
	B = 16'h3d93;
	ans_a = 16'hc87c;
	#20
	A = 16'h3669;
	B = 16'h3eba;
	ans_a = 16'hc826;
	#20
	A = 16'hb76a;
	B = 16'h3e09;
	ans_a = 16'hc880;
	#20
	A = 16'h3d8c;
	B = 16'h3bb1;
	ans_a = 16'hc7ab;
	#20
	A = 16'hbbff;
	B = 16'hbe15;
	ans_a = 16'hc626;
	#20
	A = 16'h386e;
	B = 16'hb127;
	ans_a = 16'hc63d;
	#20
	A = 16'h3468;
	B = 16'h31b9;
	ans_a = 16'hc630;
	#20
	A = 16'h3f34;
	B = 16'h3a92;
	ans_a = 16'hc4b6;
	#20
	A = 16'hbd2e;
	B = 16'h360a;
	ans_a = 16'hc533;
	#20
	A = 16'hbecb;
	B = 16'h36d8;
	ans_a = 16'hc5ed;
	#20
	A = 16'hbcac;
	B = 16'h3f87;
	ans_a = 16'hc810;
	#20
	A = 16'h3ebc;
	B = 16'h3792;
	ans_a = 16'hc754;
	#20
	A = 16'h2d04;
	B = 16'hbed3;
	ans_a = 16'hc776;
	#20
	A = 16'hb920;
	B = 16'hb85c;
	ans_a = 16'hc71d;
	#20
	A = 16'hbfd2;
	B = 16'hb8c1;
	ans_a = 16'hc5f4;
	#20
	A = 16'hb448;
	B = 16'hbf6f;
	ans_a = 16'hc575;
	#20
	A = 16'h3e2b;
	B = 16'hbed8;
	ans_a = 16'hc80c;
	#20
	A = 16'hb1e1;
	B = 16'hbce1;
	ans_a = 16'hc7df;
	#20
	A = 16'hb3c6;
	B = 16'h3a0e;
	ans_a = 16'hc807;
	#20
	A = 16'h3ec6;
	B = 16'hbd9b;
	ans_a = 16'hc937;
	#20
	A = 16'hb2f1;
	B = 16'hbc7d;
	ans_a = 16'hc918;
	#20
	A = 16'hbc60;
	B = 16'h397a;
	ans_a = 16'hc978;
	#20
	A = 16'hb96a;
	B = 16'h3889;
	ans_a = 16'hc9a9;
	#20
	A = 16'h3cae;
	B = 16'hbf59;
	ans_a = 16'hcabc;
	#20
	A = 16'h3e6f;
	B = 16'h305b;
	ans_a = 16'hcaa0;
	#20
	A = 16'h3dbe;
	B = 16'hb9c5;
	ans_a = 16'hcb24;
	#20
	A = 16'h3d44;
	B = 16'hbdb3;
	ans_a = 16'hcc0a;
	#20
	A = 16'hba57;
	B = 16'h3371;
	ans_a = 16'hcc16;
	#20
	A = 16'h2e1d;
	B = 16'h3d56;
	ans_a = 16'hcc0e;
	#20
	A = 16'hb9b1;
	B = 16'hbecf;
	ans_a = 16'hcb81;
	#20
	A = 16'hba88;
	B = 16'h3c8c;
	ans_a = 16'hcbf8;
	#20
	A = 16'h3fed;
	B = 16'h3ca0;
	ans_a = 16'hcad3;
	#20
	A = 16'h3f36;
	B = 16'h342c;
	ans_a = 16'hca97;
	#20
	A = 16'h3c7e;
	B = 16'hb832;
	ans_a = 16'hcae2;
	#20
	A = 16'hbf42;
	B = 16'h29a8;
	ans_a = 16'hcaec;
	#20
	A = 16'h3d93;
	B = 16'hbf0d;
	ans_a = 16'hcc13;
	#20
	A = 16'haefa;
	B = 16'hb859;
	ans_a = 16'hcc0f;
	#20
	A = 16'h3836;
	B = 16'h2e67;
	ans_a = 16'hcc0c;
	#20
	A = 16'h34d0;
	B = 16'h33db;
	ans_a = 16'hcc07;
	#20
	A = 16'hb5d0;
	B = 16'h3fed;
	ans_a = 16'hcc35;
	#20
	A = 16'hada8;
	B = 16'hb516;
	ans_a = 16'hcc33;
	#20
	A = 16'h264b;
	B = 16'hb96f;
	ans_a = 16'hcc34;
	#20
	A = 16'hbd14;
	B = 16'hb4d2;
	ans_a = 16'hcc1c;
	#20
	A = 16'h3d8e;
	B = 16'hbb4e;
	ans_a = 16'hcc6d;
	#20
	A = 16'h3b7e;
	B = 16'hb0bf;
	ans_a = 16'hcc76;
	#20
	A = 16'hbd1f;
	B = 16'h3e9e;
	ans_a = 16'hccfe;
	#20
	A = 16'hb3ce;
	B = 16'hbf12;
	ans_a = 16'hcce2;
	#20
	A = 16'hb727;
	B = 16'hb87d;
	ans_a = 16'hccd2;
	#20
	A = 16'hb917;
	B = 16'hbdf3;
	ans_a = 16'hcc95;
	#20
	A = 16'h3c9c;
	B = 16'hb899;
	ans_a = 16'hccbf;
	#20
	A = 16'h3877;
	B = 16'h2598;
	ans_a = 16'hccbe;
	#20
	A = 16'hbecb;
	B = 16'h3cca;
	ans_a = 16'hcd40;
	#20
	A = 16'hbf5c;
	B = 16'hb7bc;
	ans_a = 16'hcd07;
	#20
	A = 16'h3df8;
	B = 16'h3e07;
	ans_a = 16'hcc77;
	#20
	A = 16'h38a1;
	B = 16'hbdd5;
	ans_a = 16'hccad;
	#20
	A = 16'h3d07;
	B = 16'hbbdd;
	ans_a = 16'hccfc;
	#20
	A = 16'hbfdc;
	B = 16'h3425;
	ans_a = 16'hcd1d;
	#20
	A = 16'h3a58;
	B = 16'hbec2;
	ans_a = 16'hcd73;
	#20
	A = 16'hbde6;
	B = 16'h3f8e;
	ans_a = 16'hce25;
	#20
	A = 16'hbe07;
	B = 16'hba98;
	ans_a = 16'hcdd6;
	#20
	A = 16'h3b34;
	B = 16'h3e5c;
	ans_a = 16'hcd7a;
	#20
	A = 16'hb922;
	B = 16'hbf77;
	ans_a = 16'hcd2d;
	#20
	A = 16'hbe72;
	B = 16'haed2;
	ans_a = 16'hcd22;
	#20
	A = 16'h3f74;
	B = 16'h3b16;
	ans_a = 16'hccb8;
	#20
	A = 16'hbbab;
	B = 16'h3d84;
	ans_a = 16'hcd0d;
	#20
	A = 16'hba92;
	B = 16'h3cb4;
	ans_a = 16'hcd4b;
	#20
	A = 16'h3617;
	B = 16'h38a2;
	ans_a = 16'hcd3d;
	#20
	A = 16'hb91d;
	B = 16'hbe7a;
	ans_a = 16'hccfb;
	#20
	A = 16'h3f9f;
	B = 16'h3f61;
	ans_a = 16'hcc1a;
	#20
	A = 16'hb6e1;
	B = 16'h3f78;
	ans_a = 16'hcc4d;
	#20
	A = 16'hb915;
	B = 16'hba77;
	ans_a = 16'hcc2c;
	#20
	A = 16'h2d54;
	B = 16'h3f17;
	ans_a = 16'hcc23;
	#20
	A = 16'h3c48;
	B = 16'hb22d;
	ans_a = 16'hcc30;
	#20
	A = 16'hbf42;
	B = 16'hba07;
	ans_a = 16'hcbb1;
	#20
	A = 16'h38da;
	B = 16'h36c1;
	ans_a = 16'hcb90;
	#20
	A = 16'h2558;
	B = 16'h3b19;
	ans_a = 16'hcb8e;
	#20
	A = 16'h3840;
	B = 16'h3ceb;
	ans_a = 16'hcb3a;
	#20
	A = 16'h3e0e;
	B = 16'h3344;
	ans_a = 16'hcb0e;
	#20
	A = 16'hb2f9;
	B = 16'h3811;
	ans_a = 16'hcb1c;
	#20
	A = 16'h3803;
	B = 16'h34a9;
	ans_a = 16'hcb09;
	#20
	A = 16'h3f44;
	B = 16'h3aa9;
	ans_a = 16'hca48;
	#20
	A = 16'h3dd7;
	B = 16'hba24;
	ans_a = 16'hcad8;
	#20
	A = 16'h36c7;
	B = 16'h3dec;
	ans_a = 16'hca88;
	#20
	A = 16'h3f3a;
	B = 16'h36c5;
	ans_a = 16'hca26;
	#20
	A = 16'hb425;
	B = 16'h377d;
	ans_a = 16'hca36;
	#20
	A = 16'h2bdd;
	B = 16'h3eb1;
	ans_a = 16'hca29;
	#20
	A = 16'h3d7e;
	B = 16'hb7d8;
	ans_a = 16'hca7f;
	#20
	A = 16'h384e;
	B = 16'h35b8;
	ans_a = 16'hca66;
	#20
	A = 16'hb260;
	B = 16'hbd5a;
	ans_a = 16'hca44;
	#20
	A = 16'hbcbb;
	B = 16'h3920;
	ans_a = 16'hcaa5;
	#20
	A = 16'h39b6;
	B = 16'hb830;
	ans_a = 16'hcad5;
	#20
	A = 16'hbb30;
	B = 16'h31f5;
	ans_a = 16'hcaea;
	#20
	A = 16'h3858;
	B = 16'hbe5b;
	ans_a = 16'hcb58;
	#20
	A = 16'hbfc3;
	B = 16'hbc91;
	ans_a = 16'hca3c;
	#20
	A = 16'h3e6e;
	B = 16'h3c0a;
	ans_a = 16'hc96c;
	#20
	A = 16'hbf5c;
	B = 16'h3cd6;
	ans_a = 16'hca89;
	#20
	A = 16'hb46f;
	B = 16'haecb;
	ans_a = 16'hca85;
	#20
	A = 16'hbb14;
	B = 16'h3c9e;
	ans_a = 16'hcb08;
	#20
	A = 16'h3e6e;
	B = 16'h34a9;
	ans_a = 16'hcacc;
	#20
	A = 16'hb9e4;
	B = 16'hbf63;
	ans_a = 16'hca1e;
	#20
	A = 16'hb963;
	B = 16'h3c4a;
	ans_a = 16'hca7a;
	#20
	A = 16'h373f;
	B = 16'hbf0d;
	ans_a = 16'hcae0;
	#20
	A = 16'h3ab9;
	B = 16'hb89a;
	ans_a = 16'hcb1e;
	#20
	A = 16'h3e82;
	B = 16'h2dec;
	ans_a = 16'hcb0b;
	#20
	A = 16'h3965;
	B = 16'hb881;
	ans_a = 16'hcb3c;
	#20
	A = 16'hb4bb;
	B = 16'h3085;
	ans_a = 16'hcb41;
	#20
	A = 16'h1d02;
	B = 16'hbfd4;
	ans_a = 16'hcb42;
	#20
	A = 16'h3c42;
	B = 16'h3691;
	ans_a = 16'hcb0a;
	#20
	A = 16'hbc0a;
	B = 16'hbd22;
	ans_a = 16'hca64;
	#20
	A = 16'h3991;
	B = 16'h3612;
	ans_a = 16'hca42;
	#20
	A = 16'hbdc2;
	B = 16'h387c;
	ans_a = 16'hcaa9;
	#20
	A = 16'hbb24;
	B = 16'hb8c1;
	ans_a = 16'hca65;
	#20
	A = 16'h3bce;
	B = 16'h308a;
	ans_a = 16'hca53;
	#20
	A = 16'hb52b;
	B = 16'h3672;
	ans_a = 16'hca64;
	#20
	A = 16'h38d4;
	B = 16'hb483;
	ans_a = 16'hca7a;
	#20
	A = 16'hbfed;
	B = 16'hbf4d;
	ans_a = 16'hc8ab;
	#20
	A = 16'h3e3f;
	B = 16'hbd16;
	ans_a = 16'hc9a9;
	#20
	A = 16'hb7c7;
	B = 16'hbf16;
	ans_a = 16'hc93b;
	#20
	A = 16'hb97f;
	B = 16'h3488;
	ans_a = 16'hc954;
	#20
	A = 16'hbac0;
	B = 16'h38c9;
	ans_a = 16'hc995;
	#20
	A = 16'h3c16;
	B = 16'hb624;
	ans_a = 16'hc9c7;
	#20
	A = 16'h336d;
	B = 16'hb8f7;
	ans_a = 16'hc9d9;
	#20
	A = 16'h3d5e;
	B = 16'hb6e0;
	ans_a = 16'hca23;
	#20
	A = 16'hb71e;
	B = 16'hbe1e;
	ans_a = 16'hc9cc;
	#20
	A = 16'h3807;
	B = 16'hbd64;
	ans_a = 16'hca23;
	#20
	A = 16'hbcdb;
	B = 16'h3d0b;
	ans_a = 16'hcae7;
	#20
	A = 16'h2f01;
	B = 16'h340d;
	ans_a = 16'hcae3;
	#20
	A = 16'hbb2e;
	B = 16'hbddb;
	ans_a = 16'hca3b;
	#20
	A = 16'h3f00;
	B = 16'h3e03;
	ans_a = 16'hc8ea;
	#20
	A = 16'h3bdd;
	B = 16'h3cc4;
	ans_a = 16'hc854;
	#20
	A = 16'h3088;
	B = 16'hbefe;
	ans_a = 16'hc874;
	#20
	A = 16'h3bdd;
	B = 16'h3f98;
	ans_a = 16'hc70a;
	#20
	A = 16'h3f2a;
	B = 16'h3863;
	ans_a = 16'hc60f;
	#20
	A = 16'h3105;
	B = 16'hbe92;
	ans_a = 16'hc651;
	#20
	A = 16'h3cfa;
	B = 16'h3d9c;
	ans_a = 16'hc492;
	#20
	A = 16'h3d70;
	B = 16'hbc53;
	ans_a = 16'hc60a;
	#20
	A = 16'h3eba;
	B = 16'hb53d;
	ans_a = 16'hc697;
	#20
	A = 16'h3b66;
	B = 16'h3cb6;
	ans_a = 16'hc580;
	#20
	A = 16'h3ef8;
	B = 16'h3a1e;
	ans_a = 16'hc42b;
	#20
	A = 16'h3d40;
	B = 16'ha1d0;
	ans_a = 16'hc42f;
	#20
	A = 16'hbabc;
	B = 16'h3df7;
	ans_a = 16'hc570;
	#20
	A = 16'hbef6;
	B = 16'h3b49;
	ans_a = 16'hc706;
	#20
	A = 16'h3e59;
	B = 16'hb6e4;
	ans_a = 16'hc7b5;
	#20
	A = 16'h3e77;
	B = 16'h3c25;
	ans_a = 16'hc608;
	#20
	A = 16'hb11c;
	B = 16'hbd4c;
	ans_a = 16'hc5d2;
	#20
	A = 16'h3be9;
	B = 16'h380b;
	ans_a = 16'hc552;
	#20
	A = 16'hb800;
	B = 16'h3c48;
	ans_a = 16'hc5db;
	#20
	A = 16'hbfbd;
	B = 16'hb94e;
	ans_a = 16'hc492;
	#20
	A = 16'hbff7;
	B = 16'hba06;
	ans_a = 16'hc224;
	#20
	A = 16'hbe31;
	B = 16'hbef3;
	ans_a = 16'hb618;
	#20
	A = 16'h3ff1;
	B = 16'h396f;
	ans_a = 16'h3bbe;
	#20
	A = 16'h3545;
	B = 16'hbffd;
	ans_a = 16'h34f6;
	#20
	A = 16'h3e03;
	B = 16'h3d0b;
	ans_a = 16'h4069;
	#20
	A = 16'hbb19;
	B = 16'hb56d;
	ans_a = 16'h4103;
	#20
	A = 16'hbf8f;
	B = 16'h3a57;
	ans_a = 16'h3c09;
	#20
	A = 16'hbe66;
	B = 16'hba63;
	ans_a = 16'h4092;
	#20
	A = 16'h3e18;
	B = 16'h297f;
	ans_a = 16'h40b4;
	#20
	A = 16'hb48a;
	B = 16'h3c82;
	ans_a = 16'h4010;
	#20
	A = 16'hbf19;
	B = 16'h26e5;
	ans_a = 16'h3fef;
	#20
	A = 16'h38f8;
	B = 16'hbddd;
	ans_a = 16'h3c4a;
	#20
	A = 16'hbb62;
	B = 16'h3c5f;
	ans_a = 16'h2c10;
	#20
	A = 16'h39b5;
	B = 16'hb8a8;
	ans_a = 16'hb5a1;
	#20
	A = 16'h3fd8;
	B = 16'h3b08;
	ans_a = 16'h3d7d;
	#20
	A = 16'hbcf8;
	B = 16'hb1ac;
	ans_a = 16'h3e5e;
	#20
	A = 16'h39a9;
	B = 16'hb1fc;
	ans_a = 16'h3dd6;
	#20
	A = 16'hbc48;
	B = 16'h3aeb;
	ans_a = 16'h3844;
	#20
	A = 16'h3c82;
	B = 16'h38d2;
	ans_a = 16'h3cda;
	#20
	A = 16'hbe83;
	B = 16'h3e97;
	ans_a = 16'hbde0;
	#20
	A = 16'hbcc5;
	B = 16'hbf51;
	ans_a = 16'h39b4;
	#20
	A = 16'haf00;
	B = 16'h3c1c;
	ans_a = 16'h38ce;
	#20
	A = 16'h3802;
	B = 16'hbfd7;
	ans_a = 16'hb61a;
	#20
	A = 16'h3b12;
	B = 16'h395c;
	ans_a = 16'h32c0;
	#20
	A = 16'hbd87;
	B = 16'hbfa4;
	ans_a = 16'h41b3;
	#20
	A = 16'h3b37;
	B = 16'hb31d;
	ans_a = 16'h414c;
	#20
	A = 16'h3c6b;
	B = 16'hbe3e;
	ans_a = 16'h3b66;
	#20
	A = 16'h3ff9;
	B = 16'h397a;
	ans_a = 16'h4094;
	#20
	A = 16'h3cff;
	B = 16'hbb1c;
	ans_a = 16'h3cb7;
	#20
	A = 16'hbee7;
	B = 16'hbeda;
	ans_a = 16'h4422;
	#20
	A = 16'h3d83;
	B = 16'h3f97;
	ans_a = 16'h46c0;
	#20
	A = 16'hbbd0;
	B = 16'h39f6;
	ans_a = 16'h4606;
	#20
	A = 16'hbe4f;
	B = 16'hb5b9;
	ans_a = 16'h4696;
	#20
	A = 16'h38cd;
	B = 16'h33b7;
	ans_a = 16'h46bb;
	#20
	A = 16'h3a4a;
	B = 16'hb80e;
	ans_a = 16'h4655;
	#20
	A = 16'hbdd3;
	B = 16'h39f3;
	ans_a = 16'h4540;
	#20
	A = 16'haf60;
	B = 16'h3fdd;
	ans_a = 16'h4506;
	#20
	A = 16'h392c;
	B = 16'h33e8;
	ans_a = 16'h452f;
	#20
	A = 16'hbcc4;
	B = 16'h38dc;
	ans_a = 16'h4476;
	#20
	A = 16'h2a8a;
	B = 16'h3f0e;
	ans_a = 16'h448d;
	#20
	A = 16'h3eeb;
	B = 16'hb899;
	ans_a = 16'h431d;
	#20
	A = 16'hbd47;
	B = 16'hbc6b;
	ans_a = 16'h4504;
	#20
	A = 16'hbed5;
	B = 16'hbc48;
	ans_a = 16'h46d8;
	#20
	A = 16'h3da3;
	B = 16'h3dd7;
	ans_a = 16'h4873;
	#20
	A = 16'hb41e;
	B = 16'h3b9f;
	ans_a = 16'h4854;
	#20
	A = 16'h361c;
	B = 16'h3dac;
	ans_a = 16'h4899;
	#20
	A = 16'h3d7c;
	B = 16'hb20d;
	ans_a = 16'h4878;
	#20
	A = 16'hb539;
	B = 16'hb081;
	ans_a = 16'h487e;
	#20
	A = 16'hb05b;
	B = 16'h3603;
	ans_a = 16'h4877;
	#20
	A = 16'h3efe;
	B = 16'hb117;
	ans_a = 16'h4853;
	#20
	A = 16'h358c;
	B = 16'h3c88;
	ans_a = 16'h4885;
	#20
	A = 16'hb496;
	B = 16'hbc6f;
	ans_a = 16'h48ae;
	#20
	A = 16'hbcac;
	B = 16'h385f;
	ans_a = 16'h485c;
	#20
	A = 16'hbd4e;
	B = 16'h2d58;
	ans_a = 16'h484e;
	#20
	A = 16'h2cdc;
	B = 16'h3a6e;
	ans_a = 16'h4856;
	#20
	A = 16'haef2;
	B = 16'h3e99;
	ans_a = 16'h483f;
	#20
	A = 16'hbd4f;
	B = 16'h3e35;
	ans_a = 16'h466f;
	#20
	A = 16'hbd08;
	B = 16'hbcdb;
	ans_a = 16'h47f6;
	#20
	A = 16'h3c03;
	B = 16'h3dea;
	ans_a = 16'h48b9;
	#20
	A = 16'h3f67;
	B = 16'h3733;
	ans_a = 16'h4924;
	#20
	A = 16'hb810;
	B = 16'hbc56;
	ans_a = 16'h496a;
	#20
	A = 16'hb36c;
	B = 16'hbbee;
	ans_a = 16'h4987;
	#20
	A = 16'h3a9a;
	B = 16'hbf47;
	ans_a = 16'h48c7;
	#20
	A = 16'hb8c6;
	B = 16'h3ca3;
	ans_a = 16'h486e;
	#20
	A = 16'h3f11;
	B = 16'h3892;
	ans_a = 16'h48ef;
	#20
	A = 16'h3169;
	B = 16'hbb1f;
	ans_a = 16'h48dc;
	#20
	A = 16'hb369;
	B = 16'hbf59;
	ans_a = 16'h4912;
	#20
	A = 16'h2edc;
	B = 16'hb276;
	ans_a = 16'h490f;
	#20
	A = 16'h35a1;
	B = 16'hb9e8;
	ans_a = 16'h48ee;
	#20
	A = 16'h3e45;
	B = 16'h3d7c;
	ans_a = 16'h4a01;
	#20
	A = 16'hb62f;
	B = 16'hb995;
	ans_a = 16'h4a24;
	#20
	A = 16'h3582;
	B = 16'hbd13;
	ans_a = 16'h49ec;
	#20
	A = 16'h38b9;
	B = 16'hac23;
	ans_a = 16'h49e7;
	#20
	A = 16'h393f;
	B = 16'h3fc5;
	ans_a = 16'h4a8a;
	#20
	A = 16'hb712;
	B = 16'hbd62;
	ans_a = 16'h4ad6;
	#20
	A = 16'h3df5;
	B = 16'hbc59;
	ans_a = 16'h4a07;
	#20
	A = 16'hbe35;
	B = 16'h3bf5;
	ans_a = 16'h4942;
	#20
	A = 16'h3361;
	B = 16'h3c79;
	ans_a = 16'h4963;
	#20
	A = 16'h3fc8;
	B = 16'hb8ba;
	ans_a = 16'h48d0;
	#20
	A = 16'h3f55;
	B = 16'hb8a5;
	ans_a = 16'h4848;
	#20
	A = 16'h26e9;
	B = 16'hacfc;
	ans_a = 16'h4848;
	#20
	A = 16'h3cc3;
	B = 16'h3b1d;
	ans_a = 16'h48d0;
	#20
	A = 16'hbae9;
	B = 16'h2c0a;
	ans_a = 16'h48c9;
	#20
	A = 16'hbe95;
	B = 16'hbee3;
	ans_a = 16'h4a34;
	#20
	A = 16'hb5d7;
	B = 16'hb246;
	ans_a = 16'h4a3d;
	#20
	A = 16'hb646;
	B = 16'h3dfe;
	ans_a = 16'h49f2;
	#20
	A = 16'h315f;
	B = 16'h38fe;
	ans_a = 16'h49ff;
	#20
	A = 16'h2b77;
	B = 16'hb877;
	ans_a = 16'h49fb;
	#20
	A = 16'hbc3d;
	B = 16'h3377;
	ans_a = 16'h49db;
	#20
	A = 16'h3ff3;
	B = 16'h2c86;
	ans_a = 16'h49ed;
	#20
	A = 16'hba03;
	B = 16'hb6f1;
	ans_a = 16'h4a17;
	#20
	A = 16'h35a1;
	B = 16'h3ef2;
	ans_a = 16'h4a65;
	#20
	A = 16'hbf73;
	B = 16'h37e6;
	ans_a = 16'h49ef;
	#20
	A = 16'h3b51;
	B = 16'h3b07;
	ans_a = 16'h4a56;
	#20
	A = 16'hbf08;
	B = 16'hbae0;
	ans_a = 16'h4b17;
	#20
	A = 16'h3cd1;
	B = 16'h3cc9;
	ans_a = 16'h4bcf;
	#20
	A = 16'hbf21;
	B = 16'h30b7;
	ans_a = 16'h4bad;
	#20
	A = 16'h3733;
	B = 16'hbdcf;
	ans_a = 16'h4b59;
	#20
	A = 16'hb540;
	B = 16'h3e39;
	ans_a = 16'h4b18;
	#20
	A = 16'hbd89;
	B = 16'h3f1f;
	ans_a = 16'h49dd;
	#20
	A = 16'h3503;
	B = 16'h3e3b;
	ans_a = 16'h4a1b;
	#20
	A = 16'h3c7c;
	B = 16'h3944;
	ans_a = 16'h4a79;
	#20
	A = 16'h3eb1;
	B = 16'h3ec9;
	ans_a = 16'h4be4;
	#20
	A = 16'hb464;
	B = 16'h3d4c;
	ans_a = 16'h4bb6;
	#20
	A = 16'hbfae;
	B = 16'hbe1c;
	ans_a = 16'h4c97;
	#20
	A = 16'hbd14;
	B = 16'h3ed5;
	ans_a = 16'h4c0c;
	#20
	A = 16'h3a23;
	B = 16'h3e6a;
	ans_a = 16'h4c5b;
	#20
	A = 16'hb5fd;
	B = 16'h3b50;
	ans_a = 16'h4c45;
	#20
	A = 16'hbe98;
	B = 16'hbf6d;
	ans_a = 16'h4d09;
	#20
	A = 16'h30ed;
	B = 16'h3a74;
	ans_a = 16'h4d11;
	#20
	A = 16'h3edc;
	B = 16'hbe1c;
	ans_a = 16'h4c69;
	#20
	A = 16'h3f83;
	B = 16'h3d02;
	ans_a = 16'h4d00;
	#20
	A = 16'hbdfd;
	B = 16'h34ae;
	ans_a = 16'h4ce4;
	#20
	A = 16'h33eb;
	B = 16'h387d;
	ans_a = 16'h4ced;
	#20
	A = 16'hba1c;
	B = 16'hba2c;
	ans_a = 16'h4d13;
	#20
	A = 16'hbc29;
	B = 16'h3a83;
	ans_a = 16'h4cdd;
	#20
	A = 16'hb88c;
	B = 16'h3423;
	ans_a = 16'h4cd4;
	#20
	A = 16'hb660;
	B = 16'h3053;
	ans_a = 16'h4cd1;
	#20
	A = 16'hb419;
	B = 16'h3fb0;
	ans_a = 16'h4cb2;
	#20
	A = 16'h2fa0;
	B = 16'hbf0a;
	ans_a = 16'h4ca5;
	#20
	A = 16'h334e;
	B = 16'h34ba;
	ans_a = 16'h4ca9;
	#20
	A = 16'hba1b;
	B = 16'h3c6c;
	ans_a = 16'h4c73;
	#20
	A = 16'hbc3b;
	B = 16'hb969;
	ans_a = 16'h4ca1;
	#20
	A = 16'h345a;
	B = 16'hbe9d;
	ans_a = 16'h4c84;
	#20
	A = 16'hbed5;
	B = 16'hb87f;
	ans_a = 16'h4cc1;
	#20
	A = 16'h3f8d;
	B = 16'h3f55;
	ans_a = 16'h4d9e;
	#20
	A = 16'hbb47;
	B = 16'h3776;
	ans_a = 16'h4d83;
	#20
	A = 16'h3958;
	B = 16'h3f41;
	ans_a = 16'h4dd0;
	#20
	A = 16'h3ce7;
	B = 16'hbaf7;
	ans_a = 16'h4d8c;
	#20
	A = 16'h3f09;
	B = 16'hb090;
	ans_a = 16'h4d7c;
	#20
	A = 16'hb943;
	B = 16'h3f3e;
	ans_a = 16'h4d30;
	#20
	A = 16'h3e78;
	B = 16'hb941;
	ans_a = 16'h4cec;
	#20
	A = 16'hb9d9;
	B = 16'h3c65;
	ans_a = 16'h4cb9;
	#20
	A = 16'hb263;
	B = 16'h31bc;
	ans_a = 16'h4cb7;
	#20
	A = 16'hba7c;
	B = 16'h3992;
	ans_a = 16'h4c93;
	#20
	A = 16'hb6da;
	B = 16'hbfb2;
	ans_a = 16'h4cc8;
	#20
	A = 16'h9f8a;
	B = 16'h3be0;
	ans_a = 16'h4cc8;
	#20
	A = 16'h3ed0;
	B = 16'h29eb;
	ans_a = 16'h4ccd;
	#20
	A = 16'h3c2e;
	B = 16'h3c28;
	ans_a = 16'h4d12;
	#20
	A = 16'hbe25;
	B = 16'hbaed;
	ans_a = 16'h4d67;
	#20
	A = 16'hbf32;
	B = 16'hbb02;
	ans_a = 16'h4dcc;
	#20
	A = 16'hbf0d;
	B = 16'hbfaf;
	ans_a = 16'h4ea5;
	#20
	A = 16'hbd43;
	B = 16'hbc10;
	ans_a = 16'h4efa;
	#20
	A = 16'hbffb;
	B = 16'hbff2;
	ans_a = 16'h4ff8;
	#20
	A = 16'h3c2a;
	B = 16'h3ba7;
	ans_a = 16'h501c;
	#20
	A = 16'hbaba;
	B = 16'hbf0d;
	ans_a = 16'h504b;
	#20
	A = 16'h3895;
	B = 16'hbf3e;
	ans_a = 16'h502a;
	#20
	A = 16'hbc03;
	B = 16'hbf0a;
	ans_a = 16'h5062;
	#20
	A = 16'hbf12;
	B = 16'hb1fe;
	ans_a = 16'h506d;
	#20
	A = 16'h3c80;
	B = 16'hb309;
	ans_a = 16'h5065;
	#20
	A = 16'h3850;
	B = 16'h3ecc;
	ans_a = 16'h5082;
	#20
	A = 16'h33d8;
	B = 16'h305e;
	ans_a = 16'h5083;
	#20
	A = 16'h3f6c;
	B = 16'hbaaa;
	ans_a = 16'h5052;
	#20
	A = 16'hbe89;
	B = 16'h3ee6;
	ans_a = 16'h4ff0;
	#20
	A = 16'h3aac;
	B = 16'h399c;
	ans_a = 16'h500b;
	#20
	A = 16'hbfd2;
	B = 16'h3df8;
	ans_a = 16'h4f5b;
	#20
	A = 16'hb029;
	B = 16'hb8fb;
	ans_a = 16'h4f60;
	#20
	A = 16'h3e99;
	B = 16'hbfbc;
	ans_a = 16'h4e94;
	#20
	A = 16'h3dc5;
	B = 16'h3cf4;
	ans_a = 16'h4f06;
	#20
	A = 16'h3fc7;
	B = 16'h3db7;
	ans_a = 16'h4fb8;
	#20
	A = 16'hbcb2;
	B = 16'h3b13;
	ans_a = 16'h4f76;
	#20
	A = 16'hb4c2;
	B = 16'h3f05;
	ans_a = 16'h4f55;
	#20
	A = 16'h3cbc;
	B = 16'h3716;
	ans_a = 16'h4f77;
	#20
	A = 16'h3c97;
	B = 16'hbdea;
	ans_a = 16'h4f0a;
	#20
	A = 16'hb9ab;
	B = 16'h37ab;
	ans_a = 16'h4ef4;
	#20
	A = 16'hbc51;
	B = 16'h37de;
	ans_a = 16'h4ed2;
	#20
	A = 16'h3f18;
	B = 16'h33a2;
	ans_a = 16'h4eed;
	#20
	A = 16'hbc2b;
	B = 16'h2576;
	ans_a = 16'h4eec;
	#20
	A = 16'hafb0;
	B = 16'hbe98;
	ans_a = 16'h4ef9;
	#20
	A = 16'hb661;
	B = 16'hbf3b;
	ans_a = 16'h4f27;
	#20
	A = 16'hbe20;
	B = 16'hba5f;
	ans_a = 16'h4f75;
	#20
	A = 16'hbd1e;
	B = 16'h3d72;
	ans_a = 16'h4f06;
	#20
	A = 16'h3734;
	B = 16'hb269;
	ans_a = 16'h4f00;
	#20
	A = 16'hbb82;
	B = 16'h3e6a;
	ans_a = 16'h4ea0;
	#20
	A = 16'h3f2f;
	B = 16'h3c5f;
	ans_a = 16'h4f1e;
	#20
	A = 16'hbce2;
	B = 16'h3733;
	ans_a = 16'h4efb;
	#20
	A = 16'hbd3b;
	B = 16'hbd46;
	ans_a = 16'h4f69;
	#20
	A = 16'h2b92;
	B = 16'hbad9;
	ans_a = 16'h4f66;
	#20
	A = 16'hbc42;
	B = 16'h3daa;
	ans_a = 16'h4f06;
	#20
	A = 16'h3a51;
	B = 16'h38c8;
	ans_a = 16'h4f24;
	#20
	A = 16'hba72;
	B = 16'h34c9;
	ans_a = 16'h4f15;
	#20
	A = 16'hb23d;
	B = 16'hbec0;
	ans_a = 16'h4f2a;
	#20
	A = 16'hbeff;
	B = 16'hbe74;
	ans_a = 16'h4fdf;
	#20
	A = 16'hb2c7;
	B = 16'h3c80;
	ans_a = 16'h4fd0;
	#20
	A = 16'hbc29;
	B = 16'hb182;
	ans_a = 16'h4fdb;
	#20
	A = 16'hb00d;
	B = 16'hbb93;
	ans_a = 16'h4fe3;
	#20
	A = 16'h3b66;
	B = 16'hbf60;
	ans_a = 16'h4f76;
	#20
	A = 16'h3e80;
	B = 16'h3150;
	ans_a = 16'h4f87;
	#20
	A = 16'h3c2b;
	B = 16'hbc25;
	ans_a = 16'h4f42;
	#20
	A = 16'h3c1e;
	B = 16'h397e;
	ans_a = 16'h4f6f;
	#20
	A = 16'h2cd0;
	B = 16'hba48;
	ans_a = 16'h4f6b;
	#20
	A = 16'h3ec3;
	B = 16'hb835;
	ans_a = 16'h4f32;
	#20
	A = 16'h3c53;
	B = 16'h3908;
	ans_a = 16'h4f5e;
	#20
	A = 16'hb9c2;
	B = 16'hbc95;
	ans_a = 16'h4f93;
	#20
	A = 16'h3e27;
	B = 16'hbd53;
	ans_a = 16'h4f10;
	#20
	A = 16'had9b;
	B = 16'h3c3f;
	ans_a = 16'h4f0a;
	#20
	A = 16'hbfc3;
	B = 16'hbcec;
	ans_a = 16'h4fa3;
	#20
	A = 16'h3f47;
	B = 16'h3e78;
	ans_a = 16'h5030;
	#20
	A = 16'ha454;
	B = 16'hbd7d;
	ans_a = 16'h5031;
	#20
	A = 16'hae3f;
	B = 16'hbce7;
	ans_a = 16'h5035;
	#20
	A = 16'h3a06;
	B = 16'hbb38;
	ans_a = 16'h501f;
	#20
	A = 16'hb3f4;
	B = 16'hb892;
	ans_a = 16'h5024;
	#20
	A = 16'h2c1c;
	B = 16'ha67e;
	ans_a = 16'h5024;
	#20
	A = 16'h2f36;
	B = 16'hbee4;
	ans_a = 16'h501e;
	#20
	A = 16'hb86a;
	B = 16'hbf1f;
	ans_a = 16'h503d;
	#20
	A = 16'hb52d;
	B = 16'h3c47;
	ans_a = 16'h5032;
	#20
	A = 16'hb65a;
	B = 16'hb9ac;
	ans_a = 16'h503b;
	#20
	A = 16'hbb02;
	B = 16'hb4af;
	ans_a = 16'h5043;
	#20
	A = 16'h30b1;
	B = 16'h31b7;
	ans_a = 16'h5044;
	#20
	A = 16'hbf5c;
	B = 16'hb849;
	ans_a = 16'h5064;
	#20
	A = 16'h3436;
	B = 16'hb8c6;
	ans_a = 16'h505f;
	#20
	A = 16'hbf19;
	B = 16'h3ceb;
	ans_a = 16'h5019;
	#20
	A = 16'h3e2c;
	B = 16'hbbab;
	ans_a = 16'h4fd3;
	#20
	A = 16'hbb6b;
	B = 16'h3d66;
	ans_a = 16'h4f83;
	#20
	A = 16'h3b23;
	B = 16'h3fc5;
	ans_a = 16'h4ff2;
	#20
	A = 16'h36b3;
	B = 16'h31e4;
	ans_a = 16'h4ff7;
	#20
	A = 16'h3e30;
	B = 16'hbce2;
	ans_a = 16'h4f7e;
	#20
	A = 16'hb7a7;
	B = 16'h3f11;
	ans_a = 16'h4f48;
	#20
	A = 16'hbf4a;
	B = 16'hbf72;
	ans_a = 16'h5011;
	#20
	A = 16'h3c82;
	B = 16'h3754;
	ans_a = 16'h5022;
	#20
	A = 16'h3886;
	B = 16'h3cdd;
	ans_a = 16'h5038;
	#20
	A = 16'hbee5;
	B = 16'h30e2;
	ans_a = 16'h5030;
	#20
	A = 16'h3d12;
	B = 16'hbff4;
	ans_a = 16'h4fbf;
	#20
	A = 16'h3a02;
	B = 16'hb7bf;
	ans_a = 16'h4fa8;
	#20
	A = 16'hbf1b;
	B = 16'h3dd5;
	ans_a = 16'h4f02;
	#20
	A = 16'hbbb3;
	B = 16'h3dea;
	ans_a = 16'h4ea7;
	#20
	A = 16'hbe0c;
	B = 16'hb535;
	ans_a = 16'h4ec6;
	#20
	A = 16'hbc25;
	B = 16'had21;
	ans_a = 16'h4ecb;
	#20
	A = 16'hb930;
	B = 16'h3e12;
	ans_a = 16'h4e8c;
	#20
	A = 16'h3afb;
	B = 16'h3eb2;
	ans_a = 16'h4eea;
	#20
	A = 16'hbeb2;
	B = 16'hbb5c;
	ans_a = 16'h4f4d;
	#20
	A = 16'h3be6;
	B = 16'h3ff2;
	ans_a = 16'h4fca;
	#20
	A = 16'h3b43;
	B = 16'h39e3;
	ans_a = 16'h4ff5;
	#20
	A = 16'hb42c;
	B = 16'h347a;
	ans_a = 16'h4ff0;
	#20
	A = 16'h3a2a;
	B = 16'hbfc5;
	ans_a = 16'h4f90;
	#20
	A = 16'hbd50;
	B = 16'hbc91;
	ans_a = 16'h4ff1;
	#20
	A = 16'h346c;
	B = 16'hbca1;
	ans_a = 16'h4fdd;
	#20
	A = 16'hb499;
	B = 16'h3866;
	ans_a = 16'h4fd3;
	#20
	A = 16'haf7a;
	B = 16'h3d84;
	ans_a = 16'h4fc9;
	#20
	A = 16'hbc99;
	B = 16'hbf66;
	ans_a = 16'h5028;
	#20
	A = 16'h3ee5;
	B = 16'h3704;
	ans_a = 16'h5040;
	#20
	A = 16'hbea0;
	B = 16'h301b;
	ans_a = 16'h5039;
	#20
	A = 16'hb73d;
	B = 16'hbbac;
	ans_a = 16'h5047;
	#20
	A = 16'hbf51;
	B = 16'h387e;
	ans_a = 16'h5026;
	#20
	A = 16'hb3b4;
	B = 16'hbc53;
	ans_a = 16'h502e;
	#20
	A = 16'hbafb;
	B = 16'h3eed;
	ans_a = 16'h4ffb;
	#20
	A = 16'hbfce;
	B = 16'h3ba7;
	ans_a = 16'h4f84;
	#20
	A = 16'hbc92;
	B = 16'h38d3;
	ans_a = 16'h4f58;
	#20
	A = 16'haf95;
	B = 16'h3d7d;
	ans_a = 16'h4f4e;
	#20
	A = 16'hbd18;
	B = 16'hb210;
	ans_a = 16'h4f5d;
	#20
	A = 16'hbd1c;
	B = 16'hb2d7;
	ans_a = 16'h4f6e;
	#20
	A = 16'h3cac;
	B = 16'h361d;
	ans_a = 16'h4f8b;
	#20
	A = 16'h3d26;
	B = 16'hbd6f;
	ans_a = 16'h4f1b;
	#20
	A = 16'hbc44;
	B = 16'hb7bd;
	ans_a = 16'h4f3c;
	#20
	A = 16'h3c1d;
	B = 16'hbf4f;
	ans_a = 16'h4ec4;
	#20
	A = 16'hb6fc;
	B = 16'hbd05;
	ans_a = 16'h4ee7;
	#20
	A = 16'hbbd0;
	B = 16'h3c52;
	ans_a = 16'h4ea4;
	#20
	A = 16'hbe92;
	B = 16'hbfe1;
	ans_a = 16'h4f73;
	#20
	A = 16'h39cc;
	B = 16'h3f5c;
	ans_a = 16'h4fc8;
	#20
	A = 16'hbf50;
	B = 16'h369c;
	ans_a = 16'h4f98;
	#20
	A = 16'h3ed2;
	B = 16'h28fc;
	ans_a = 16'h4f9c;
	#20
	A = 16'h3e2a;
	B = 16'hbb11;
	ans_a = 16'h4f45;
	#20
	A = 16'hbfb6;
	B = 16'hbfe5;
	ans_a = 16'h501c;
	#20
	A = 16'h281f;
	B = 16'hb94b;
	ans_a = 16'h501b;
	#20
	A = 16'h3c53;
	B = 16'hae14;
	ans_a = 16'h5018;
	#20
	A = 16'h3c7b;
	B = 16'hbf7f;
	ans_a = 16'h4faa;
	#20
	A = 16'h2a49;
	B = 16'h3d51;
	ans_a = 16'h4fae;
	#20
	A = 16'hb7a7;
	B = 16'h3f69;
	ans_a = 16'h4f75;
	#20
	A = 16'hb584;
	B = 16'hbfc0;
	ans_a = 16'h4fa0;
	#20
	A = 16'hbdc5;
	B = 16'hbb9b;
	ans_a = 16'h4ff8;
	#20
	A = 16'h3af8;
	B = 16'h28c2;
	ans_a = 16'h4ffa;
	#20
	A = 16'ha5f2;
	B = 16'h3f62;
	ans_a = 16'h4ff7;
	#20
	A = 16'h2cb7;
	B = 16'hb837;
	ans_a = 16'h4ff5;
	#20
	A = 16'h2ceb;
	B = 16'hb9da;
	ans_a = 16'h4ff1;
	#20
	A = 16'hbe14;
	B = 16'hbc01;
	ans_a = 16'h5029;
	#20
	A = 16'h3220;
	B = 16'h3f85;
	ans_a = 16'h5035;
	#20
	A = 16'h3c12;
	B = 16'hbe37;
	ans_a = 16'h5002;
	#20
	A = 16'h3c07;
	B = 16'h3764;
	ans_a = 16'h5011;
	#20
	A = 16'h3637;
	B = 16'hb938;
	ans_a = 16'h5009;
	#20
	A = 16'hb924;
	B = 16'hbc2d;
	ans_a = 16'h501e;
	#20
	A = 16'hbd04;
	B = 16'hbc17;
	ans_a = 16'h5047;
	#20
	A = 16'hb7f1;
	B = 16'h3f24;
	ans_a = 16'h502b;
	#20
	A = 16'h3f60;
	B = 16'h33d1;
	ans_a = 16'h5039;
	#20
	A = 16'h32ae;
	B = 16'h3692;
	ans_a = 16'h503c;
	#20
	A = 16'h3c94;
	B = 16'h3619;
	ans_a = 16'h504a;
	#20
	A = 16'h2e3f;
	B = 16'h3fd3;
	ans_a = 16'h5050;
	#20
	A = 16'hbd65;
	B = 16'h38fc;
	ans_a = 16'h5035;
	#20
	A = 16'hbf5b;
	B = 16'h3c9e;
	ans_a = 16'h4fe2;
	#20
	A = 16'hbdab;
	B = 16'hbe8f;
	ans_a = 16'h503b;
	#20
	A = 16'hbed9;
	B = 16'hb450;
	ans_a = 16'h504a;
	#20
	A = 16'h3d37;
	B = 16'hbd11;
	ans_a = 16'h5015;
	#20
	A = 16'hb7f1;
	B = 16'h3e4e;
	ans_a = 16'h4ff8;
	#20
	A = 16'hbd5f;
	B = 16'h3f85;
	ans_a = 16'h4f56;
	#20
	A = 16'hbcc0;
	B = 16'hbbfd;
	ans_a = 16'h4fa2;
	#20
	A = 16'hbf8f;
	B = 16'h386f;
	ans_a = 16'h4f5f;
	#20
	A = 16'hbe7c;
	B = 16'hbe86;
	ans_a = 16'h5004;
	#20
	A = 16'h3f2c;
	B = 16'hb91e;
	ans_a = 16'h4fbf;
	#20
	A = 16'h2d3e;
	B = 16'h3869;
	ans_a = 16'h4fc2;
	#20
	A = 16'hbbb5;
	B = 16'hbd10;
	ans_a = 16'h5008;
	#20
	A = 16'hbceb;
	B = 16'hbc0f;
	ans_a = 16'h5030;
	#20
	A = 16'hbc70;
	B = 16'h2f6a;
	ans_a = 16'h502c;
	#20
	A = 16'h3e6b;
	B = 16'hb4de;
	ans_a = 16'h501c;
	#20
	A = 16'hbd8d;
	B = 16'hbe80;
	ans_a = 16'h5064;
	#20
	A = 16'h3e76;
	B = 16'hb160;
	ans_a = 16'h505b;
	#20
	A = 16'hbcc3;
	B = 16'hb5a4;
	ans_a = 16'h5068;
	#20
	A = 16'hbdb1;
	B = 16'hbbd2;
	ans_a = 16'h5094;
	#20
	A = 16'hbb24;
	B = 16'h31c5;
	ans_a = 16'h508f;
	#20
	A = 16'h3d3d;
	B = 16'h3d9a;
	ans_a = 16'h50ca;
	#20
	A = 16'h3f1f;
	B = 16'hb70f;
	ans_a = 16'h50b1;
	#20
	A = 16'h333a;
	B = 16'h388f;
	ans_a = 16'h50b5;
	#20
	A = 16'h3c62;
	B = 16'h39bb;
	ans_a = 16'h50ce;
	#20
	A = 16'hacde;
	B = 16'hba20;
	ans_a = 16'h50d0;
	#20
	A = 16'hbd04;
	B = 16'h3dde;
	ans_a = 16'h5095;
	#20
	A = 16'h3aa7;
	B = 16'h326f;
	ans_a = 16'h509a;
	#20
	A = 16'hbfab;
	B = 16'hb80b;
	ans_a = 16'h50b9;
	#20
	A = 16'hb695;
	B = 16'h377e;
	ans_a = 16'h50b3;
	#20
	A = 16'h2864;
	B = 16'h3f91;
	ans_a = 16'h50b5;
	#20
	A = 16'hbac4;
	B = 16'h3ec4;
	ans_a = 16'h5087;
	#20
	A = 16'hb4cd;
	B = 16'h3dc0;
	ans_a = 16'h5079;
	#20
	A = 16'hbdba;
	B = 16'h36ad;
	ans_a = 16'h5066;
	#20
	A = 16'hb955;
	B = 16'h3414;
	ans_a = 16'h5061;
	#20
	A = 16'hb47f;
	B = 16'h34b8;
	ans_a = 16'h505e;
	#20
	A = 16'hbfc3;
	B = 16'hbdba;
	ans_a = 16'h50b7;
	#20
	A = 16'h2e7b;
	B = 16'hbed7;
	ans_a = 16'h50b1;
	#20
	A = 16'hb7ee;
	B = 16'hbe5b;
	ans_a = 16'h50ca;
	#20
	A = 16'hbc7b;
	B = 16'hba69;
	ans_a = 16'h50e7;
	#20
	A = 16'hbfb0;
	B = 16'hbd80;
	ans_a = 16'h513c;
	#20
	A = 16'h3686;
	B = 16'h3d6c;
	ans_a = 16'h514e;
	#20
	A = 16'hb09d;
	B = 16'hbd64;
	ans_a = 16'h5154;
	#20
	A = 16'hab83;
	B = 16'hbe45;
	ans_a = 16'h5157;
	#20
	A = 16'hba7b;
	B = 16'hbc66;
	ans_a = 16'h5174;
	#20
	A = 16'h3a49;
	B = 16'hba86;
	ans_a = 16'h5160;
	#20
	A = 16'h3fdd;
	B = 16'h38ee;
	ans_a = 16'h5187;
	#20
	A = 16'h3f37;
	B = 16'hbaaf;
	ans_a = 16'h5157;
	#20
	A = 16'hb9bf;
	B = 16'hbbec;
	ans_a = 16'h516e;
	#20
	A = 16'h3da2;
	B = 16'h39fb;
	ans_a = 16'h5190;
	#20
	A = 16'hbe32;
	B = 16'h384f;
	ans_a = 16'h5175;
	#20
	A = 16'haa71;
	B = 16'h3c71;
	ans_a = 16'h5173;
	#20
	A = 16'h33a8;
	B = 16'h32b3;
	ans_a = 16'h5175;
	#20
	A = 16'hbd5a;
	B = 16'h3e26;
	ans_a = 16'h5133;
	#20
	A = 16'hb114;
	B = 16'hbe46;
	ans_a = 16'h513b;
	#20
	A = 16'h31ad;
	B = 16'h3faf;
	ans_a = 16'h5146;
	#20
	A = 16'h35bf;
	B = 16'hbd2b;
	ans_a = 16'h5137;
	#20
	A = 16'hbd7c;
	B = 16'hb955;
	ans_a = 16'h5154;
	#20
	A = 16'h3f15;
	B = 16'hbefd;
	ans_a = 16'h50f1;
	#20
	A = 16'hb5e5;
	B = 16'hb3e5;
	ans_a = 16'h50f4;
	#20
	A = 16'h3584;
	B = 16'hb026;
	ans_a = 16'h50f3;
	#20
	A = 16'h3870;
	B = 16'hbc96;
	ans_a = 16'h50df;
	#20
	A = 16'hbbbb;
	B = 16'hbe63;
	ans_a = 16'h5110;
	#20
	A = 16'hbc40;
	B = 16'h3042;
	ans_a = 16'h510b;
	#20
	A = 16'h3a60;
	B = 16'hbba3;
	ans_a = 16'h50f3;
	#20
	A = 16'hb99c;
	B = 16'hbbe3;
	ans_a = 16'h5109;
	#20
	A = 16'h3d7a;
	B = 16'hbff6;
	ans_a = 16'h50b2;
	#20
	A = 16'h3983;
	B = 16'hb07d;
	ans_a = 16'h50af;
	#20
	A = 16'h3c0d;
	B = 16'h2a0d;
	ans_a = 16'h50b1;
	#20
	A = 16'hbee1;
	B = 16'hbab3;
	ans_a = 16'h50df;
	#20
	A = 16'hbf41;
	B = 16'h3ec4;
	ans_a = 16'h507d;
	#20
	A = 16'h3652;
	B = 16'hbb45;
	ans_a = 16'h5072;
	#20
	A = 16'hbb0e;
	B = 16'hbe3e;
	ans_a = 16'h509e;
	#20
	A = 16'h39c0;
	B = 16'hb907;
	ans_a = 16'h5090;
	#20
	A = 16'hbe14;
	B = 16'hb5df;
	ans_a = 16'h50a2;
	#20
	A = 16'hbde7;
	B = 16'h3f52;
	ans_a = 16'h504c;
	#20
	A = 16'hbb3d;
	B = 16'h3f80;
	ans_a = 16'h5016;
	#20
	A = 16'hb7e7;
	B = 16'hbcf7;
	ans_a = 16'h502a;
	#20
	A = 16'h3e90;
	B = 16'hbf8a;
	ans_a = 16'h4f8e;
	#20
	A = 16'hb81d;
	B = 16'hb54f;
	ans_a = 16'h4f99;
	#20
	A = 16'hbaa4;
	B = 16'h3f30;
	ans_a = 16'h4f3a;
	#20
	A = 16'h3940;
	B = 16'hbf87;
	ans_a = 16'h4eeb;
	#20
	A = 16'hbe08;
	B = 16'h3de5;
	ans_a = 16'h4e5d;
	#20
	A = 16'h3cf0;
	B = 16'hbf5e;
	ans_a = 16'h4dcc;
	#20
	A = 16'hbfd1;
	B = 16'hbcdf;
	ans_a = 16'h4e64;
	#20
	A = 16'ha593;
	B = 16'h3f90;
	ans_a = 16'h4e61;
	#20
	A = 16'h332c;
	B = 16'hbea4;
	ans_a = 16'h4e49;
	#20
	A = 16'h3fd5;
	B = 16'h3fc2;
	ans_a = 16'h4f3c;
	#20
	A = 16'hb739;
	B = 16'hb53e;
	ans_a = 16'h4f45;
	#20
	A = 16'hbcec;
	B = 16'h3d75;
	ans_a = 16'h4eda;
	#20
	A = 16'hb9ff;
	B = 16'h3b5e;
	ans_a = 16'h4eae;
	#20
	A = 16'h3c5f;
	B = 16'hb398;
	ans_a = 16'h4e9d;
	#20
	A = 16'h3c32;
	B = 16'h3e2f;
	ans_a = 16'h4f05;
	#20
	A = 16'hbd4a;
	B = 16'h3db5;
	ans_a = 16'h4e8c;
	#20
	A = 16'hbd9f;
	B = 16'h388b;
	ans_a = 16'h4e59;
	#20
	A = 16'hbb02;
	B = 16'hbcc0;
	ans_a = 16'h4e9c;
	#20
	A = 16'hbdf0;
	B = 16'h397b;
	ans_a = 16'h4e5b;
	#20
	A = 16'h2f97;
	B = 16'hbbe2;
	ans_a = 16'h4e54;
	#20
	A = 16'h3f49;
	B = 16'hbb73;
	ans_a = 16'h4de7;
	#20
	A = 16'h3e65;
	B = 16'hbd10;
	ans_a = 16'h4d66;
	#20
	A = 16'h2c6a;
	B = 16'hbf41;
	ans_a = 16'h4d5e;
	#20
	A = 16'hbdaf;
	B = 16'h3bfd;
	ans_a = 16'h4d03;
	#20
	A = 16'h39fa;
	B = 16'hbf72;
	ans_a = 16'h4caa;
	#20
	A = 16'h3d15;
	B = 16'h3f63;
	ans_a = 16'h4d40;
	#20
	A = 16'h33d0;
	B = 16'h3e54;
	ans_a = 16'h4d59;
	#20
	A = 16'h351d;
	B = 16'hbaad;
	ans_a = 16'h4d48;
	#20
	A = 16'hbf8a;
	B = 16'h3ec7;
	ans_a = 16'h4c7c;
	#20
	A = 16'hba51;
	B = 16'hbbc6;
	ans_a = 16'h4cad;
	#20
	A = 16'h3fd4;
	B = 16'h3868;
	ans_a = 16'h4cf2;
	#20
	A = 16'h3a78;
	B = 16'hac32;
	ans_a = 16'h4cef;
	#20
	A = 16'hb41c;
	B = 16'h384f;
	ans_a = 16'h4ce6;
	#20
	A = 16'h3cdc;
	B = 16'hbac1;
	ans_a = 16'h4ca4;
	#20
	A = 16'h3a24;
	B = 16'hbaeb;
	ans_a = 16'h4c7a;
	#20
	A = 16'hbb6d;
	B = 16'hbe8a;
	ans_a = 16'h4cdb;
	#20
	A = 16'h38b0;
	B = 16'h3fbd;
	ans_a = 16'h4d24;
	#20
	A = 16'h3d31;
	B = 16'h39f2;
	ans_a = 16'h4d62;
	#20
	A = 16'h37de;
	B = 16'h3c0f;
	ans_a = 16'h4d82;
	#20
	A = 16'h3aa1;
	B = 16'hb8b9;
	ans_a = 16'h4d63;
	#20
	A = 16'hb4d3;
	B = 16'hbe08;
	ans_a = 16'h4d80;
	#20
	A = 16'hb9b0;
	B = 16'hb77e;
	ans_a = 16'h4d95;
	#20
	A = 16'h3f9c;
	B = 16'h3ded;
	ans_a = 16'h4e49;
	#20
	A = 16'h3de9;
	B = 16'hbed3;
	ans_a = 16'h4da8;
	#20
	A = 16'h3d95;
	B = 16'hbf20;
	ans_a = 16'h4d09;
	#20
	A = 16'hbf27;
	B = 16'h3ee4;
	ans_a = 16'h4c44;
	#20
	A = 16'h3def;
	B = 16'hbc29;
	ans_a = 16'h4bc2;
	#20
	A = 16'hba0f;
	B = 16'h3824;
	ans_a = 16'h4b90;
	#20
	A = 16'hbf92;
	B = 16'h3bf2;
	ans_a = 16'h4a9f;
	#20
	A = 16'h3ed2;
	B = 16'hbf67;
	ans_a = 16'h490b;
	#20
	A = 16'hbc65;
	B = 16'h3b20;
	ans_a = 16'h488e;
	#20
	A = 16'h3c41;
	B = 16'h3f3d;
	ans_a = 16'h4984;
	#20
	A = 16'hbd03;
	B = 16'h3e8e;
	ans_a = 16'h487d;
	#20
	A = 16'hbdc3;
	B = 16'h3f4b;
	ans_a = 16'h465a;
	#20
	A = 16'h3435;
	B = 16'h3ee1;
	ans_a = 16'h46ce;
	#20
	A = 16'hb4fc;
	B = 16'h38bf;
	ans_a = 16'h469f;
	#20
	A = 16'hbe33;
	B = 16'h3919;
	ans_a = 16'h45a2;
	#20
	A = 16'hb465;
	B = 16'hb585;
	ans_a = 16'h45ba;
	#20
	A = 16'hbdc5;
	B = 16'hbefe;
	ans_a = 16'h4820;
	#20
	A = 16'hbb84;
	B = 16'hbf57;
	ans_a = 16'h48fd;
	#20
	A = 16'h3804;
	B = 16'hbea3;
	ans_a = 16'h4892;
	#20
	A = 16'h35c3;
	B = 16'hb768;
	ans_a = 16'h487d;
	#20
	A = 16'h3f07;
	B = 16'h313f;
	ans_a = 16'h48a2;
	#20
	A = 16'hba7f;
	B = 16'h3f23;
	ans_a = 16'h47d1;
	#20
	A = 16'h396e;
	B = 16'haf9b;
	ans_a = 16'h47bc;
	#20
	A = 16'h3a99;
	B = 16'hbf44;
	ans_a = 16'h463c;
	#20
	A = 16'h2d02;
	B = 16'h3dba;
	ans_a = 16'h4659;
	#20
	A = 16'hb947;
	B = 16'hb772;
	ans_a = 16'h46a8;
	#20
	A = 16'h3fb5;
	B = 16'hbda1;
	ans_a = 16'h43e4;
	#20
	A = 16'hbca4;
	B = 16'h35ec;
	ans_a = 16'h4308;
	#20
	A = 16'hbfc0;
	B = 16'h3dff;
	ans_a = 16'h38e4;
	#20
	A = 16'h3f40;
	B = 16'hb5e7;
	ans_a = 16'hab50;
	#20
	A = 16'hbca6;
	B = 16'hbff2;
	ans_a = 16'h4081;
	#20
	A = 16'h3d0d;
	B = 16'h3892;
	ans_a = 16'h41f2;
	#20
	A = 16'hb2ab;
	B = 16'h3458;
	ans_a = 16'h41d5;
	#20
	A = 16'hbd1b;
	B = 16'h3b41;
	ans_a = 16'h3f09;
	#20
	A = 16'h3a07;
	B = 16'h3a68;
	ans_a = 16'h40ba;
	#20
	A = 16'hbc68;
	B = 16'hbc9e;
	ans_a = 16'h4345;
	#20
	A = 16'h20cd;
	B = 16'hb44f;
	ans_a = 16'h4344;
	#20
	A = 16'hb8d0;
	B = 16'hbdaa;
	ans_a = 16'h447c;
	#20
	A = 16'hbd75;
	B = 16'h3c86;
	ans_a = 16'h41e2;
	#20
	A = 16'h3c15;
	B = 16'h1745;
	ans_a = 16'h41e3;
	#20
	A = 16'hb88c;
	B = 16'h3f19;
	ans_a = 16'h3fbd;
	#20
	A = 16'hbd3e;
	B = 16'hbfd6;
	ans_a = 16'h4480;
	#20
	A = 16'hbeb7;
	B = 16'h398a;
	ans_a = 16'h42ad;
	#20
	A = 16'h3d92;
	B = 16'h2320;
	ans_a = 16'h42b7;
	#20
	A = 16'h3374;
	B = 16'hbeab;
	ans_a = 16'h41f0;
	#20
	A = 16'haaaf;
	B = 16'h3c7a;
	ans_a = 16'h41d2;
	#20
	A = 16'hbe6f;
	B = 16'h3bdb;
	ans_a = 16'h3d53;
	#20
	A = 16'h2b03;
	B = 16'hbcca;
	ans_a = 16'h3d10;
	#20
	A = 16'hb534;
	B = 16'hbf3c;
	ans_a = 16'h3f6a;
	#20
	A = 16'hbf85;
	B = 16'h3b31;
	ans_a = 16'h3140;
	#20
	A = 16'h3e0e;
	B = 16'h3b3b;
	ans_a = 16'h3e21;
	#20
	A = 16'hbd44;
	B = 16'hac12;
	ans_a = 16'h3e77;
	#20
	A = 16'hba59;
	B = 16'h3e8b;
	ans_a = 16'h3518;
	#20
	A = 16'hb8c3;
	B = 16'hbbb6;
	ans_a = 16'h3b23;
	#20
	A = 16'hbda1;
	B = 16'hbd2e;
	ans_a = 16'h416e;
	#20
	A = 16'h3e41;
	B = 16'hbebb;
	ans_a = 16'h2d60;
	#20
	A = 16'h279a;
	B = 16'h3e6d;
	ans_a = 16'h3037;
	#20
	A = 16'hbd2f;
	B = 16'hbcbf;
	ans_a = 16'h3eae;
	#20
	A = 16'h3cc7;
	B = 16'h35a5;
	ans_a = 16'h402f;
	#20
	A = 16'hbc22;
	B = 16'hb4e7;
	ans_a = 16'h40d1;
	#20
	A = 16'hba19;
	B = 16'h3bef;
	ans_a = 16'h3e9c;
	#20
	A = 16'h3a79;
	B = 16'hbf8a;
	ans_a = 16'h3010;
	#20
	A = 16'h374f;
	B = 16'hbc53;
	ans_a = 16'hb5df;
	#20
	A = 16'h3833;
	B = 16'h3ac6;
	ans_a = 16'h2cf4;
	#20
	A = 16'h3c1a;
	B = 16'hb0ac;
	ans_a = 16'haca0;
	#20
	A = 16'h2cf7;
	B = 16'h34a0;
	ans_a = 16'haa61;
	#20
	A = 16'hbbc4;
	B = 16'h3550;
	ans_a = 16'hb5f4;
	#20
	A = 16'h3d95;
	B = 16'hb9d4;
	ans_a = 16'hbd8e;
	#20
	A = 16'hb59f;
	B = 16'hbede;
	ans_a = 16'hba49;
	#20
	A = 16'h3b7a;
	B = 16'hba1a;
	ans_a = 16'hbdfe;
	#20
	A = 16'hbd68;
	B = 16'h3999;
	ans_a = 16'hc0e3;
	#20
	A = 16'hbf2e;
	B = 16'hbaaf;
	ans_a = 16'hbb8c;
	#20
	A = 16'h3529;
	B = 16'h3c91;
	ans_a = 16'hb89a;
	#20
	A = 16'h380f;
	B = 16'hbac8;
	ans_a = 16'hbc05;
	#20
	A = 16'h3f16;
	B = 16'hb8e4;
	ans_a = 16'hc02d;
	#20
	A = 16'hbf40;
	B = 16'hbbf2;
	ans_a = 16'hb49c;
	#20
	A = 16'hb551;
	B = 16'h3683;
	ans_a = 16'hb6c6;
	#20
	A = 16'h3f8a;
	B = 16'h3c2d;
	ans_a = 16'h3e2e;
	#20
	A = 16'h3b53;
	B = 16'h38d1;
	ans_a = 16'h4031;
	#20
	A = 16'hbf89;
	B = 16'h3c9d;
	ans_a = 16'hace0;
	#20
	A = 16'hb0ad;
	B = 16'h2f26;
	ans_a = 16'hadec;
	#20
	A = 16'hbba1;
	B = 16'h3957;
	ans_a = 16'hb9d6;
	#20
	A = 16'hac2c;
	B = 16'hb82f;
	ans_a = 16'hb990;
	#20
	A = 16'h3aba;
	B = 16'hbe6a;
	ans_a = 16'hc016;
	#20
	A = 16'h3d9a;
	B = 16'hb7b2;
	ans_a = 16'hc16f;
	#20
	A = 16'haa00;
	B = 16'h3bb9;
	ans_a = 16'hc186;
	#20
	A = 16'h3e1c;
	B = 16'had42;
	ans_a = 16'hc1c6;
	#20
	A = 16'h3903;
	B = 16'h3d16;
	ans_a = 16'hc02e;
	#20
	A = 16'h3a3b;
	B = 16'h38cf;
	ans_a = 16'hbe7d;
	#20
	A = 16'hb773;
	B = 16'hbcb8;
	ans_a = 16'hbc4a;
	#20
	A = 16'hbf4f;
	B = 16'h3da5;
	ans_a = 16'hc34d;
	#20
	A = 16'h31be;
	B = 16'h3dcd;
	ans_a = 16'hc2c8;
	#20
	A = 16'hbc35;
	B = 16'h3328;
	ans_a = 16'hc340;
	#20
	A = 16'h3c48;
	B = 16'h3e0d;
	ans_a = 16'hc003;
	#20
	A = 16'h3837;
	B = 16'h39fc;
	ans_a = 16'hbe72;
	#20
	A = 16'hba85;
	B = 16'h3929;
	ans_a = 16'hc046;
	#20
	A = 16'h3c51;
	B = 16'hb44c;
	ans_a = 16'hc0da;
	#20
	A = 16'h3ec9;
	B = 16'hbdce;
	ans_a = 16'hc4e3;
	#20
	A = 16'hbe4d;
	B = 16'h3dd8;
	ans_a = 16'hc730;
	#20
	A = 16'h3245;
	B = 16'hbfce;
	ans_a = 16'hc792;
	#20
	A = 16'h3dc8;
	B = 16'h34de;
	ans_a = 16'hc721;
	#20
	A = 16'h3e20;
	B = 16'ha0c3;
	ans_a = 16'hc725;
	#20
	A = 16'hbae1;
	B = 16'hb400;
	ans_a = 16'hc6ee;
	#20
	A = 16'hab96;
	B = 16'hb9c5;
	ans_a = 16'hc6e3;
	#20
	A = 16'h38a0;
	B = 16'h3855;
	ans_a = 16'hc693;
	#20
	A = 16'h3bde;
	B = 16'h3d78;
	ans_a = 16'hc53b;
	#20
	A = 16'h3fe1;
	B = 16'hbce1;
	ans_a = 16'hc7a2;
	#20
	A = 16'h2a15;
	B = 16'hb6e6;
	ans_a = 16'hc7a7;
	#20
	A = 16'hb88b;
	B = 16'h3bfe;
	ans_a = 16'hc81c;
	#20
	A = 16'h392c;
	B = 16'hbb1f;
	ans_a = 16'hc866;
	#20
	A = 16'hb8fa;
	B = 16'hb80b;
	ans_a = 16'hc83e;
	#20
	A = 16'h3eb9;
	B = 16'h38f3;
	ans_a = 16'hc772;
	#20
	A = 16'h3c84;
	B = 16'h3b74;
	ans_a = 16'hc665;
	#20
	A = 16'h3d2d;
	B = 16'hbebc;
	ans_a = 16'hc849;
	#20
	A = 16'haefa;
	B = 16'hb2b5;
	ans_a = 16'hc846;
	#20
	A = 16'h39cf;
	B = 16'h34fe;
	ans_a = 16'hc829;
	#20
	A = 16'h3a11;
	B = 16'hb5d8;
	ans_a = 16'hc84c;
	#20
	A = 16'h2d72;
	B = 16'hb808;
	ans_a = 16'hc851;
	#20
	A = 16'h3cc7;
	B = 16'hb986;
	ans_a = 16'hc8bb;
	#20
	A = 16'hbd78;
	B = 16'h3a35;
	ans_a = 16'hc943;
	#20
	A = 16'h3fa2;
	B = 16'hb406;
	ans_a = 16'hc980;
	#20
	A = 16'hbde3;
	B = 16'hbec9;
	ans_a = 16'hc840;
	#20
	A = 16'hba81;
	B = 16'hb37c;
	ans_a = 16'hc828;
	#20
	A = 16'h2ed1;
	B = 16'hb068;
	ans_a = 16'hc82a;
	#20
	A = 16'hb2b9;
	B = 16'h3ae7;
	ans_a = 16'hc841;
	#20
	A = 16'hb64d;
	B = 16'h3490;
	ans_a = 16'hc84f;
	#20
	A = 16'hbacd;
	B = 16'h3bdd;
	ans_a = 16'hc8ba;
	#20
	A = 16'hbacb;
	B = 16'h3277;
	ans_a = 16'hc8d0;
	#20
	A = 16'hb536;
	B = 16'hba55;
	ans_a = 16'hc8af;
	#20
	A = 16'h325a;
	B = 16'h3f31;
	ans_a = 16'hc881;
	#20
	A = 16'h2976;
	B = 16'h3c5e;
	ans_a = 16'hc87b;
	#20
	A = 16'hbc4f;
	B = 16'hb917;
	ans_a = 16'hc823;
	#20
	A = 16'h394e;
	B = 16'hba9f;
	ans_a = 16'hc869;
	#20
	A = 16'hbc2c;
	B = 16'h32a7;
	ans_a = 16'hc885;
	#20
	A = 16'h3f0b;
	B = 16'hbdea;
	ans_a = 16'hc9d2;
	#20
	A = 16'h3f6e;
	B = 16'h3e1d;
	ans_a = 16'hc867;
	#20
	A = 16'h3174;
	B = 16'h3c16;
	ans_a = 16'hc851;
	#20
	A = 16'h3e82;
	B = 16'h3a03;
	ans_a = 16'hc769;
	#20
	A = 16'h3b14;
	B = 16'h36ca;
	ans_a = 16'hc709;
	#20
	A = 16'hba56;
	B = 16'h3b6f;
	ans_a = 16'hc7c5;
	#20
	A = 16'hbcf5;
	B = 16'h367b;
	ans_a = 16'hc823;
	#20
	A = 16'h3b2e;
	B = 16'hae33;
	ans_a = 16'hc82e;
	#20
	A = 16'hbfbe;
	B = 16'h3c5a;
	ans_a = 16'hc93c;
	#20
	A = 16'h3d3f;
	B = 16'h3c60;
	ans_a = 16'hc884;
	#20
	A = 16'hb943;
	B = 16'ha45b;
	ans_a = 16'hc883;
	#20
	A = 16'h399f;
	B = 16'h3f7a;
	ans_a = 16'hc7b6;
	#20
	A = 16'h2986;
	B = 16'h3033;
	ans_a = 16'hc7b5;
	#20
	A = 16'hbee9;
	B = 16'hb646;
	ans_a = 16'hc708;
	#20
	A = 16'hb876;
	B = 16'hb449;
	ans_a = 16'hc6e2;
	#20
	A = 16'h37eb;
	B = 16'hb9c4;
	ans_a = 16'hc73d;
	#20
	A = 16'hb8d5;
	B = 16'hb94a;
	ans_a = 16'hc6d7;
	#20
	A = 16'hb6a4;
	B = 16'h3ee8;
	ans_a = 16'hc78e;
	#20
	A = 16'h3ca1;
	B = 16'hbf6e;
	ans_a = 16'hc8da;
	#20
	A = 16'h3e2d;
	B = 16'h3d46;
	ans_a = 16'hc7ab;
	#20
	A = 16'hbcda;
	B = 16'h3e52;
	ans_a = 16'hc8cb;
	#20
	A = 16'hbea3;
	B = 16'hbf0a;
	ans_a = 16'hc6aa;
	#20
	A = 16'h3b0b;
	B = 16'hb594;
	ans_a = 16'hc6f9;
	#20
	A = 16'h3c5c;
	B = 16'h36eb;
	ans_a = 16'hc680;
	#20
	A = 16'h33cc;
	B = 16'hbbb7;
	ans_a = 16'hc6bc;
	#20
	A = 16'h3b0d;
	B = 16'hbc84;
	ans_a = 16'hc7bb;
	#20
	A = 16'h37b6;
	B = 16'h37e4;
	ans_a = 16'hc77e;
	#20
	A = 16'hbef4;
	B = 16'hb4d2;
	ans_a = 16'hc6f8;
	#20
	A = 16'ha84e;
	B = 16'hb95b;
	ans_a = 16'hc6f2;
	#20
	A = 16'hac31;
	B = 16'hbf5a;
	ans_a = 16'hc6d3;
	#20
	A = 16'hbc26;
	B = 16'hb201;
	ans_a = 16'hc6a1;
	#20
	A = 16'hb721;
	B = 16'h39dc;
	ans_a = 16'hc6f5;
	#20
	A = 16'hbd1d;
	B = 16'h3a59;
	ans_a = 16'hc7f9;
	#20
	A = 16'h3ed8;
	B = 16'h34a0;
	ans_a = 16'hc77a;
	#20
	A = 16'hbe97;
	B = 16'hb2ed;
	ans_a = 16'hc71f;
	#20
	A = 16'ha3ab;
	B = 16'h3e3f;
	ans_a = 16'hc725;
	#20
	A = 16'hbcc4;
	B = 16'h34c0;
	ans_a = 16'hc780;
	#20
	A = 16'h2598;
	B = 16'h3442;
	ans_a = 16'hc77f;
	#20
	A = 16'h346e;
	B = 16'hbf45;
	ans_a = 16'hc800;
	#20
	A = 16'h3f38;
	B = 16'hb5b8;
	ans_a = 16'hc853;
	#20
	A = 16'h3cd0;
	B = 16'h3e70;
	ans_a = 16'hc6b6;
	#20
	A = 16'hb9c9;
	B = 16'hba9b;
	ans_a = 16'hc61d;
	#20
	A = 16'h3b69;
	B = 16'hbaed;
	ans_a = 16'hc6ea;
	#20
	A = 16'hb776;
	B = 16'hbb95;
	ans_a = 16'hc679;
	#20
	A = 16'hb885;
	B = 16'h3e4a;
	ans_a = 16'hc75c;
	#20
	A = 16'hb5b9;
	B = 16'hb75a;
	ans_a = 16'hc732;
	#20
	A = 16'h336d;
	B = 16'h2c93;
	ans_a = 16'hc72e;
	#20
	A = 16'h3d8e;
	B = 16'hbf19;
	ans_a = 16'hc8d2;
	#20
	A = 16'hb83d;
	B = 16'h3c0f;
	ans_a = 16'hc917;
	#20
	A = 16'h3fa1;
	B = 16'hbfed;
	ans_a = 16'hcafb;
	#20
	A = 16'h3d6f;
	B = 16'h3fcc;
	ans_a = 16'hc9a8;
	#20
	A = 16'hbf12;
	B = 16'h3935;
	ans_a = 16'hca3b;
	#20
	A = 16'h3ee4;
	B = 16'h2ee8;
	ans_a = 16'hca23;
	#20
	A = 16'hbba5;
	B = 16'h3f4f;
	ans_a = 16'hcb02;
	#20
	A = 16'h3f03;
	B = 16'h3ce9;
	ans_a = 16'hc9ee;
	#20
	A = 16'h3d90;
	B = 16'hb917;
	ans_a = 16'hca5f;
	#20
	A = 16'h3e2e;
	B = 16'h3e03;
	ans_a = 16'hc936;
	#20
	A = 16'hbc97;
	B = 16'h3c93;
	ans_a = 16'hc9de;
	#20
	A = 16'hbd63;
	B = 16'h3b74;
	ans_a = 16'hca7f;
	#20
	A = 16'h3d1d;
	B = 16'hb828;
	ans_a = 16'hcad4;
	#20
	A = 16'hb8ea;
	B = 16'hb662;
	ans_a = 16'hcab5;
	#20
	A = 16'hbba8;
	B = 16'h3594;
	ans_a = 16'hcae0;
	#20
	A = 16'h35b2;
	B = 16'h395b;
	ans_a = 16'hcac2;
	#20
	A = 16'h3cd2;
	B = 16'h3baa;
	ans_a = 16'hca2e;
	#20
	A = 16'h3923;
	B = 16'h3f94;
	ans_a = 16'hc992;
	#20
	A = 16'h3e9c;
	B = 16'hbc5d;
	ans_a = 16'hca79;
	#20
	A = 16'h3000;
	B = 16'hbfdb;
	ans_a = 16'hca98;
	#20
	A = 16'hbdc5;
	B = 16'h3fc1;
	ans_a = 16'hcbfe;
	#20
	A = 16'hb984;
	B = 16'h3d58;
	ans_a = 16'hcc3a;
	#20
	A = 16'hbca0;
	B = 16'hbe77;
	ans_a = 16'hcb85;
	#20
	A = 16'h283b;
	B = 16'hb97d;
	ans_a = 16'hcb88;
	#20
	A = 16'hbf0b;
	B = 16'hb47f;
	ans_a = 16'hcb49;
	#20
	A = 16'hbf50;
	B = 16'hba4f;
	ans_a = 16'hca90;
	#20
	A = 16'h3d5d;
	B = 16'h2d43;
	ans_a = 16'hca82;
	#20
	A = 16'hbd6f;
	B = 16'h3d4b;
	ans_a = 16'hcb68;
	#20
	A = 16'h3cb6;
	B = 16'h3de7;
	ans_a = 16'hca8a;
	#20
	A = 16'hbf78;
	B = 16'hbd6f;
	ans_a = 16'hc945;
	#20
	A = 16'hba48;
	B = 16'haac5;
	ans_a = 16'hc940;
	#20
	A = 16'hb789;
	B = 16'h35ff;
	ans_a = 16'hc957;
	#20
	A = 16'hbdf6;
	B = 16'hbc4d;
	ans_a = 16'hc88a;
	#20
	A = 16'h3b9b;
	B = 16'h3e55;
	ans_a = 16'hc793;
	#20
	A = 16'hbbb8;
	B = 16'h357a;
	ans_a = 16'hc7e8;
	#20
	A = 16'hbc02;
	B = 16'hbc40;
	ans_a = 16'hc6d8;
	#20
	A = 16'h3fe7;
	B = 16'h3505;
	ans_a = 16'hc639;
	#20
	A = 16'h3f40;
	B = 16'h3c44;
	ans_a = 16'hc44a;
	#20
	A = 16'h3a17;
	B = 16'h37b3;
	ans_a = 16'hc3d8;
	#20
	A = 16'h3f1f;
	B = 16'hbc07;
	ans_a = 16'hc5b7;
	#20
	A = 16'h394c;
	B = 16'h3f60;
	ans_a = 16'hc47e;
	#20
	A = 16'hbe52;
	B = 16'h3ece;
	ans_a = 16'hc72e;
	#20
	A = 16'had9e;
	B = 16'hbb0f;
	ans_a = 16'hc71a;
	#20
	A = 16'hb877;
	B = 16'hbef3;
	ans_a = 16'hc622;
	#20
	A = 16'hbdeb;
	B = 16'h31f9;
	ans_a = 16'hc669;
	#20
	A = 16'h363d;
	B = 16'h34d9;
	ans_a = 16'hc64b;
	#20
	A = 16'hbc9b;
	B = 16'hb689;
	ans_a = 16'hc5d3;
	#20
	A = 16'h24b9;
	B = 16'h3895;
	ans_a = 16'hc5d0;
	#20
	A = 16'hbcb1;
	B = 16'hb9d9;
	ans_a = 16'hc4f4;
	#20
	A = 16'h3c0c;
	B = 16'h399f;
	ans_a = 16'hc43e;
	#20
	A = 16'hb9f6;
	B = 16'hbad8;
	ans_a = 16'hc336;
	#20
	A = 16'h30ae;
	B = 16'h38bc;
	ans_a = 16'hc30a;
	#20
	A = 16'hbf65;
	B = 16'hbe8d;
	ans_a = 16'hb7e0;
	#20
	A = 16'hb866;
	B = 16'h3f37;
	ans_a = 16'hbdf0;
	#20
	A = 16'hbfc4;
	B = 16'h3c2d;
	ans_a = 16'hc306;
	#20
	A = 16'h3886;
	B = 16'hbc43;
	ans_a = 16'hc41d;
	#20
	A = 16'h3006;
	B = 16'h3c16;
	ans_a = 16'hc3f8;
	#20
	A = 16'h2693;
	B = 16'h390c;
	ans_a = 16'hc3f0;
	#20
	A = 16'h3504;
	B = 16'hbdc8;
	ans_a = 16'hc46c;
	#20
	A = 16'hbd43;
	B = 16'h2c7d;
	ans_a = 16'hc484;
	#20
	A = 16'hbfea;
	B = 16'hb54d;
	ans_a = 16'hc3b8;
	#20
	A = 16'h3ce8;
	B = 16'hbbea;
	ans_a = 16'hc513;
	#20
	A = 16'hbc4d;
	B = 16'h29f2;
	ans_a = 16'hc520;
	#20
	A = 16'h3ea5;
	B = 16'h3cd8;
	ans_a = 16'hc23a;
	#20
	A = 16'hbf03;
	B = 16'ha9ec;
	ans_a = 16'hc210;
	#20
	A = 16'hbd44;
	B = 16'h30f7;
	ans_a = 16'hc279;
	#20
	A = 16'hb4e9;
	B = 16'hbf6c;
	ans_a = 16'hc156;
	#20
	A = 16'h3e87;
	B = 16'hbc07;
	ans_a = 16'hc450;
	#20
	A = 16'hbfba;
	B = 16'hbebc;
	ans_a = 16'hbc3e;
	#20
	A = 16'h3fff;
	B = 16'h3f9b;
	ans_a = 16'h417b;
	#20
	A = 16'hbd60;
	B = 16'hb532;
	ans_a = 16'h425a;
	#20
	A = 16'hbd2b;
	B = 16'h3841;
	ans_a = 16'h40fa;
	#20
	A = 16'h3de5;
	B = 16'h329b;
	ans_a = 16'h4196;
	#20
	A = 16'hbdea;
	B = 16'hbc17;
	ans_a = 16'h444e;
	#20
	A = 16'hbeb7;
	B = 16'haf55;
	ans_a = 16'h447f;
	#20
	A = 16'h2f2e;
	B = 16'haca5;
	ans_a = 16'h447d;
	#20
	A = 16'hbaca;
	B = 16'hba29;
	ans_a = 16'h4524;
	#20
	A = 16'hbc3c;
	B = 16'h3ed6;
	ans_a = 16'h42aa;
	#20
	A = 16'hb6b5;
	B = 16'hbe22;
	ans_a = 16'h43f3;
	#20
	A = 16'hb9ae;
	B = 16'h3aa3;
	ans_a = 16'h42c6;
	#20
	A = 16'hbbc3;
	B = 16'hbcb8;
	ans_a = 16'h4488;
	#20
	A = 16'hbba5;
	B = 16'hb629;
	ans_a = 16'h44e6;
	#20
	A = 16'hbac1;
	B = 16'h3f50;
	ans_a = 16'h42b6;
	#20
	A = 16'hbf20;
	B = 16'hb940;
	ans_a = 16'h4486;
	#20
	A = 16'hbf42;
	B = 16'h2d0b;
	ans_a = 16'h4461;
	#20
	A = 16'h3dbf;
	B = 16'h3b40;
	ans_a = 16'h45ae;
	#20
	A = 16'hbe1f;
	B = 16'hb756;
	ans_a = 16'h4662;
	#20
	A = 16'h3363;
	B = 16'h38bb;
	ans_a = 16'h4685;
	#20
	A = 16'h3390;
	B = 16'h3661;
	ans_a = 16'h469d;
	#20
	A = 16'h3c21;
	B = 16'h3fb2;
	ans_a = 16'h484d;
	#20
	A = 16'h3564;
	B = 16'h3d1b;
	ans_a = 16'h4884;
	#20
	A = 16'h2e96;
	B = 16'h3462;
	ans_a = 16'h4888;
	#20
	A = 16'h399a;
	B = 16'hbc53;
	ans_a = 16'h4827;
	#20
	A = 16'hbcd1;
	B = 16'hb55f;
	ans_a = 16'h485b;
	#20
	A = 16'h3d73;
	B = 16'hbc14;
	ans_a = 16'h4752;
	#20
	A = 16'h35fe;
	B = 16'hb41b;
	ans_a = 16'h4739;
	#20
	A = 16'hbf4d;
	B = 16'h3f0a;
	ans_a = 16'h4402;
	#20
	A = 16'h3a63;
	B = 16'hbdcf;
	ans_a = 16'h41b2;
	#20
	A = 16'h3e25;
	B = 16'h3853;
	ans_a = 16'h435b;
	#20
	A = 16'hbe51;
	B = 16'ha9ea;
	ans_a = 16'h4380;
	#20
	A = 16'h3f6e;
	B = 16'hbc72;
	ans_a = 16'h3ebe;
	#20
	A = 16'hbeca;
	B = 16'hb43c;
	ans_a = 16'h4045;
	#20
	A = 16'hb57e;
	B = 16'hb2be;
	ans_a = 16'h406a;
	#20
	A = 16'hbc09;
	B = 16'hbe2b;
	ans_a = 16'h4386;
	#20
	A = 16'hbd74;
	B = 16'hbdf9;
	ans_a = 16'h45cc;
	#20
	A = 16'h2d7d;
	B = 16'hb7bd;
	ans_a = 16'h45c1;
	#20
	A = 16'hb19d;
	B = 16'haf3a;
	ans_a = 16'h45c6;
	#20
	A = 16'h3dd0;
	B = 16'hbddd;
	ans_a = 16'h4349;
	#20
	A = 16'hb8f0;
	B = 16'hbe24;
	ans_a = 16'h4497;
	#20
	A = 16'hbcbd;
	B = 16'h3cf5;
	ans_a = 16'h423e;
	#20
	A = 16'hade4;
	B = 16'h3f00;
	ans_a = 16'h41ec;
	#20
	A = 16'hbcbd;
	B = 16'hbcfe;
	ans_a = 16'h4470;
	#20
	A = 16'hbdfc;
	B = 16'hbfa4;
	ans_a = 16'h474c;
	#20
	A = 16'hb355;
	B = 16'hb804;
	ans_a = 16'h4769;
	#20
	A = 16'hbfde;
	B = 16'h306c;
	ans_a = 16'h4723;
	#20
	A = 16'hb3b3;
	B = 16'ha676;
	ans_a = 16'h4725;
	#20
	A = 16'h3a6b;
	B = 16'h3153;
	ans_a = 16'h4747;
	#20
	A = 16'hbea6;
	B = 16'h335c;
	ans_a = 16'h46e5;
	#20
	A = 16'h3bf5;
	B = 16'h379b;
	ans_a = 16'h475e;
	#20
	A = 16'hb404;
	B = 16'hbf18;
	ans_a = 16'h47d0;
	#20
	A = 16'h3f38;
	B = 16'h3925;
	ans_a = 16'h487c;
	#20
	A = 16'hb15b;
	B = 16'h3c9d;
	ans_a = 16'h4863;
	#20
	A = 16'hb634;
	B = 16'hb8c2;
	ans_a = 16'h4881;
	#20
	A = 16'h2ccb;
	B = 16'hb9fd;
	ans_a = 16'h487a;
	#20
	A = 16'h3bc1;
	B = 16'hbc8e;
	ans_a = 16'h47da;
	#20
	A = 16'hbd06;
	B = 16'hb798;
	ans_a = 16'h4839;
	#20
	A = 16'h3f1b;
	B = 16'h3e4f;
	ans_a = 16'h49a0;
	#20
	A = 16'h3ec3;
	B = 16'h38c1;
	ans_a = 16'h4a21;
	#20
	A = 16'h32bd;
	B = 16'h3e38;
	ans_a = 16'h4a4b;
	#20
	A = 16'hbf10;
	B = 16'had4c;
	ans_a = 16'h4a5e;
	#20
	A = 16'h347c;
	B = 16'h3d96;
	ans_a = 16'h4a90;
	#20
	A = 16'hbec9;
	B = 16'h39b6;
	ans_a = 16'h49f5;
	#20
	A = 16'h3a09;
	B = 16'h3823;
	ans_a = 16'h4a27;
	#20
	A = 16'h35a8;
	B = 16'h349d;
	ans_a = 16'h4a34;
	#20
	A = 16'h3cad;
	B = 16'hbb4a;
	ans_a = 16'h49ac;
	#20
	A = 16'hbe83;
	B = 16'h3802;
	ans_a = 16'h4944;
	#20
	A = 16'h3edb;
	B = 16'haefb;
	ans_a = 16'h492c;
	#20
	A = 16'h30de;
	B = 16'hbaa4;
	ans_a = 16'h491c;
	#20
	A = 16'h3a2b;
	B = 16'hb9a3;
	ans_a = 16'h48d6;
	#20
	A = 16'hbdb1;
	B = 16'hb703;
	ans_a = 16'h4926;
	#20
	A = 16'hbd61;
	B = 16'hb924;
	ans_a = 16'h4995;
	#20
	A = 16'h3f6b;
	B = 16'hbe1a;
	ans_a = 16'h482b;
	#20
	A = 16'h3e0d;
	B = 16'hb2ba;
	ans_a = 16'h4802;
	#20
	A = 16'h3941;
	B = 16'h3710;
	ans_a = 16'h4827;
	#20
	A = 16'h3781;
	B = 16'hb6cc;
	ans_a = 16'h480e;
	#20
	A = 16'hbb3b;
	B = 16'hb2a8;
	ans_a = 16'h4826;
	#20
	A = 16'h39fc;
	B = 16'h3ec6;
	ans_a = 16'h48c8;
	#20
	A = 16'hb79d;
	B = 16'hbf5d;
	ans_a = 16'h4938;
	#20
	A = 16'h3604;
	B = 16'h3c1f;
	ans_a = 16'h496a;
	#20
	A = 16'hbf40;
	B = 16'h3e49;
	ans_a = 16'h47fb;
	#20
	A = 16'hbd50;
	B = 16'had78;
	ans_a = 16'h480c;
	#20
	A = 16'h3aee;
	B = 16'hb9a2;
	ans_a = 16'h477c;
	#20
	A = 16'hb8ee;
	B = 16'hb9b0;
	ans_a = 16'h47ec;
	#20
	A = 16'hba7d;
	B = 16'h3d4b;
	ans_a = 16'h46d9;
	#20
	A = 16'h3e80;
	B = 16'h2c68;
	ans_a = 16'h46f6;
	#20
	A = 16'hbe35;
	B = 16'h3c5a;
	ans_a = 16'h4546;
	#20
	A = 16'h3530;
	B = 16'h388d;
	ans_a = 16'h4575;
	#20
	A = 16'hbb98;
	B = 16'h3eda;
	ans_a = 16'h43aa;
	#20
	A = 16'h3d9d;
	B = 16'h2def;
	ans_a = 16'h43ed;
	#20
	A = 16'hb785;
	B = 16'h38bc;
	ans_a = 16'h435f;
	#20
	A = 16'hbc26;
	B = 16'hbc35;
	ans_a = 16'h44c7;
	#20
	A = 16'hb58b;
	B = 16'h3fa6;
	ans_a = 16'h441d;
	#20
	A = 16'h3860;
	B = 16'h3c8d;
	ans_a = 16'h44bc;
	#20
	A = 16'hbdbb;
	B = 16'h3967;
	ans_a = 16'h4389;
	#20
	A = 16'h32c7;
	B = 16'h3fc6;
	ans_a = 16'h442e;
	#20
	A = 16'h3a60;
	B = 16'hbaac;
	ans_a = 16'h4308;
	#20
	A = 16'hbf4b;
	B = 16'h3530;
	ans_a = 16'h41d9;
	#20
	A = 16'h3f16;
	B = 16'h3cd2;
	ans_a = 16'h450f;
	#20
	A = 16'h3cc3;
	B = 16'h3da4;
	ans_a = 16'h46bd;
	#20
	A = 16'h3b8b;
	B = 16'h3962;
	ans_a = 16'h475f;
	#20
	A = 16'hb9aa;
	B = 16'hbd96;
	ans_a = 16'h482e;
	#20
	A = 16'hbacc;
	B = 16'h3cd5;
	ans_a = 16'h4755;
	#20
	A = 16'hbe13;
	B = 16'h282e;
	ans_a = 16'h4748;
	#20
	A = 16'h3fe7;
	B = 16'hb875;
	ans_a = 16'h462e;
	#20
	A = 16'hbcc0;
	B = 16'ha454;
	ans_a = 16'h4633;
	#20
	A = 16'h3ed8;
	B = 16'h3ff1;
	ans_a = 16'h48cc;
	#20
	A = 16'h3a2a;
	B = 16'h3df2;
	ans_a = 16'h495f;
	#20
	A = 16'hbab9;
	B = 16'h39ed;
	ans_a = 16'h490f;
	#20
	A = 16'hbae2;
	B = 16'h3fd4;
	ans_a = 16'h4838;
	#20
	A = 16'h29f8;
	B = 16'hb530;
	ans_a = 16'h4836;
	#20
	A = 16'h3f33;
	B = 16'h3f9d;
	ans_a = 16'h49ec;
	#20
	A = 16'hbffd;
	B = 16'hbdf0;
	ans_a = 16'h4b68;
	#20
	A = 16'h3d86;
	B = 16'h3cb0;
	ans_a = 16'h4c1c;
	#20
	A = 16'hba83;
	B = 16'h3ee7;
	ans_a = 16'h4b84;
	#20
	A = 16'hb630;
	B = 16'hbddd;
	ans_a = 16'h4bcd;
	#20
	A = 16'hb4c4;
	B = 16'h3b02;
	ans_a = 16'h4bac;
	#20
	A = 16'h3370;
	B = 16'h3417;
	ans_a = 16'h4bb4;
	#20
	A = 16'h38b0;
	B = 16'hbc20;
	ans_a = 16'h4b67;
	#20
	A = 16'hbe20;
	B = 16'h3cfc;
	ans_a = 16'h4a73;
	#20
	A = 16'h3707;
	B = 16'h3e63;
	ans_a = 16'h4acd;
	#20
	A = 16'hbd0a;
	B = 16'h3535;
	ans_a = 16'h4a99;
	#20
	A = 16'hbe72;
	B = 16'h3912;
	ans_a = 16'h4a16;
	#20
	A = 16'h3b2f;
	B = 16'h39e2;
	ans_a = 16'h4a6a;
	#20
	A = 16'h3f2a;
	B = 16'hbce3;
	ans_a = 16'h4952;
	#20
	A = 16'h3b2b;
	B = 16'h3925;
	ans_a = 16'h499c;
	#20
	A = 16'hb6ee;
	B = 16'hb168;
	ans_a = 16'h49a5;
	#20
	A = 16'hbcf7;
	B = 16'h30a2;
	ans_a = 16'h498e;
	#20
	A = 16'hbd42;
	B = 16'hbce5;
	ans_a = 16'h4a5c;
	#20
	A = 16'h3f3b;
	B = 16'h2abd;
	ans_a = 16'h4a68;
	#20
	A = 16'h3ffa;
	B = 16'hb816;
	ans_a = 16'h49e6;
	#20
	A = 16'hba48;
	B = 16'hbb63;
	ans_a = 16'h4a43;
	#20
	A = 16'h34aa;
	B = 16'hb21d;
	ans_a = 16'h4a3c;
	#20
	A = 16'hbca1;
	B = 16'h3b36;
	ans_a = 16'h49b6;
	#20
	A = 16'hbd6b;
	B = 16'h36e1;
	ans_a = 16'h496b;
	#20
	A = 16'h3b6a;
	B = 16'h3199;
	ans_a = 16'h4980;
	#20
	A = 16'h3e6d;
	B = 16'hb5a0;
	ans_a = 16'h4938;
	#20
	A = 16'h300a;
	B = 16'h3f58;
	ans_a = 16'h4956;
	#20
	A = 16'h25c3;
	B = 16'hb245;
	ans_a = 16'h4955;
	#20
	A = 16'hbfb8;
	B = 16'h27a5;
	ans_a = 16'h494e;
	#20
	A = 16'h3f3e;
	B = 16'h3c01;
	ans_a = 16'h4a36;
	#20
	A = 16'hbe61;
	B = 16'hbd00;
	ans_a = 16'h4b35;
	#20
	A = 16'hb8b4;
	B = 16'hb17a;
	ans_a = 16'h4b42;
	#20
	A = 16'hbc8c;
	B = 16'h3549;
	ans_a = 16'h4b12;
	#20
	A = 16'hb64b;
	B = 16'hbb7d;
	ans_a = 16'h4b41;
	#20
	A = 16'hb4e7;
	B = 16'h3810;
	ans_a = 16'h4b2d;
	#20
	A = 16'h3c14;
	B = 16'h3ec5;
	ans_a = 16'h4c05;
	#20
	A = 16'h3fd1;
	B = 16'hbac3;
	ans_a = 16'h4b37;
	#20
	A = 16'h206d;
	B = 16'h3fae;
	ans_a = 16'h4b39;
	#20
	A = 16'hbce8;
	B = 16'hb533;
	ans_a = 16'h4b6c;
	#20
	A = 16'h351f;
	B = 16'h3a74;
	ans_a = 16'h4b8d;
	#20
	A = 16'h398f;
	B = 16'h3dc3;
	ans_a = 16'h4c07;
	#20
	A = 16'h3dab;
	B = 16'hbe2a;
	ans_a = 16'h4af6;
	#20
	A = 16'h395b;
	B = 16'hb959;
	ans_a = 16'h4abd;
	#20
	A = 16'h2c77;
	B = 16'h3b47;
	ans_a = 16'h4ac5;
	#20
	A = 16'h3bfd;
	B = 16'h3c71;
	ans_a = 16'h4b53;
	#20
	A = 16'hbef3;
	B = 16'hbebe;
	ans_a = 16'h4c65;
	#20
	A = 16'h3dde;
	B = 16'h3f11;
	ans_a = 16'h4d0b;
	#20
	A = 16'h3fbe;
	B = 16'hbd0a;
	ans_a = 16'h4c6f;
	#20
	A = 16'h3cac;
	B = 16'h3aef;
	ans_a = 16'h4cb0;
	#20
	A = 16'hbc88;
	B = 16'hbeab;
	ans_a = 16'h4d29;
	#20
	A = 16'hb151;
	B = 16'h3cc9;
	ans_a = 16'h4d1c;
	#20
	A = 16'h3add;
	B = 16'h3c6c;
	ans_a = 16'h4d59;
	#20
	A = 16'h3cee;
	B = 16'hbd1e;
	ans_a = 16'h4cf4;
	#20
	A = 16'hbbfe;
	B = 16'h2edc;
	ans_a = 16'h4ced;
	#20
	A = 16'hbf2f;
	B = 16'h3d94;
	ans_a = 16'h4c4d;
	#20
	A = 16'h3d92;
	B = 16'h3fc7;
	ans_a = 16'h4cfa;
	#20
	A = 16'h3b37;
	B = 16'hb85f;
	ans_a = 16'h4cda;
	#20
	A = 16'h3a0d;
	B = 16'h3c95;
	ans_a = 16'h4d11;
	#20
	A = 16'h3b2d;
	B = 16'hb9e0;
	ans_a = 16'h4ce7;
	#20
	A = 16'h3889;
	B = 16'hbb01;
	ans_a = 16'h4cc7;
	#20
	A = 16'hbc7f;
	B = 16'h3ffd;
	ans_a = 16'h4c37;
	#20
	A = 16'hbb38;
	B = 16'hbc6f;
	ans_a = 16'h4c77;
	#20
	A = 16'hbfc4;
	B = 16'hb96b;
	ans_a = 16'h4ccb;
	#20
	A = 16'h3fac;
	B = 16'h359a;
	ans_a = 16'h4cf6;
	#20
	A = 16'hbcc9;
	B = 16'hb9c0;
	ans_a = 16'h4d2d;
	#20
	A = 16'hbd4c;
	B = 16'h3709;
	ans_a = 16'h4d08;
	#20
	A = 16'hbeca;
	B = 16'h3edf;
	ans_a = 16'h4c4d;
	#20
	A = 16'h3760;
	B = 16'h3c5b;
	ans_a = 16'h4c6d;
	#20
	A = 16'h3e06;
	B = 16'h3edc;
	ans_a = 16'h4d12;
	#20
	A = 16'hbd33;
	B = 16'h3bbd;
	ans_a = 16'h4cc2;
	#20
	A = 16'h3d10;
	B = 16'h3971;
	ans_a = 16'h4cf9;
	#20
	A = 16'h3ddf;
	B = 16'h3ee1;
	ans_a = 16'h4d9a;
	#20
	A = 16'h34ca;
	B = 16'hbe44;
	ans_a = 16'h4d7c;
	#20
	A = 16'hb963;
	B = 16'hbc87;
	ans_a = 16'h4dad;
	#20
	A = 16'h3c73;
	B = 16'hbe97;
	ans_a = 16'h4d38;
	#20
	A = 16'hb20e;
	B = 16'h3304;
	ans_a = 16'h4d35;
	#20
	A = 16'hbc96;
	B = 16'hbd6a;
	ans_a = 16'h4d98;
	#20
	A = 16'hb7bc;
	B = 16'h349d;
	ans_a = 16'h4d8f;
	#20
	A = 16'hb8e7;
	B = 16'h3b91;
	ans_a = 16'h4d6a;
	#20
	A = 16'h9d64;
	B = 16'h3e82;
	ans_a = 16'h4d69;
	#20
	A = 16'hb14a;
	B = 16'hbf00;
	ans_a = 16'h4d7c;
	#20
	A = 16'h3ddb;
	B = 16'h3932;
	ans_a = 16'h4db9;
	#20
	A = 16'hbd28;
	B = 16'hbb52;
	ans_a = 16'h4e04;
	#20
	A = 16'hbedf;
	B = 16'hbc7c;
	ans_a = 16'h4e7f;
	#20
	A = 16'h3852;
	B = 16'hbd65;
	ans_a = 16'h4e50;
	#20
	A = 16'hbfbf;
	B = 16'h3de5;
	ans_a = 16'h4d99;
	#20
	A = 16'hbfcd;
	B = 16'ha5a7;
	ans_a = 16'h4d9c;
	#20
	A = 16'hbdc5;
	B = 16'hb628;
	ans_a = 16'h4dc0;
	#20
	A = 16'hbe6c;
	B = 16'hb307;
	ans_a = 16'h4dd7;
	#20
	A = 16'hb915;
	B = 16'h3c90;
	ans_a = 16'h4da9;
	#20
	A = 16'hb8a3;
	B = 16'h3a5a;
	ans_a = 16'h4d8c;
	#20
	A = 16'hbd98;
	B = 16'h3c4e;
	ans_a = 16'h4d2c;
	#20
	A = 16'hbce8;
	B = 16'h3cab;
	ans_a = 16'h4cd0;
	#20
	A = 16'hbca4;
	B = 16'h3c74;
	ans_a = 16'h4c7d;
	#20
	A = 16'h38c4;
	B = 16'h348a;
	ans_a = 16'h4c88;
	#20
	A = 16'h3dba;
	B = 16'hb7ab;
	ans_a = 16'h4c5c;
	#20
	A = 16'h34f4;
	B = 16'h3e8f;
	ans_a = 16'h4c7c;
	#20
	A = 16'h35a9;
	B = 16'h3dfd;
	ans_a = 16'h4c9e;
	#20
	A = 16'h3438;
	B = 16'hb704;
	ans_a = 16'h4c97;
	#20
	A = 16'h3d06;
	B = 16'h331b;
	ans_a = 16'h4ca9;
	#20
	A = 16'hbc74;
	B = 16'h3d86;
	ans_a = 16'h4c47;
	#20
	A = 16'hbda7;
	B = 16'h3fb8;
	ans_a = 16'h4b31;
	#20
	A = 16'hb674;
	B = 16'hbe0e;
	ans_a = 16'h4b7f;
	#20
	A = 16'hba9b;
	B = 16'h3d7d;
	ans_a = 16'h4aee;
	#20
	A = 16'h34eb;
	B = 16'h3e48;
	ans_a = 16'h4b2c;
	#20
	A = 16'hbfc8;
	B = 16'hbddb;
	ans_a = 16'h4c4c;
	#20
	A = 16'h3cf2;
	B = 16'h3d97;
	ans_a = 16'h4cbb;
	#20
	A = 16'h3f5c;
	B = 16'h3d1c;
	ans_a = 16'h4d51;
	#20
	A = 16'ha54a;
	B = 16'hbe7b;
	ans_a = 16'h4d53;
	#20
	A = 16'h3326;
	B = 16'h317e;
	ans_a = 16'h4d55;
	#20
	A = 16'hbdff;
	B = 16'hb99f;
	ans_a = 16'h4d98;
	#20
	A = 16'haa34;
	B = 16'hbca6;
	ans_a = 16'h4d9c;
	#20
	A = 16'hb97d;
	B = 16'hbd04;
	ans_a = 16'h4dd3;
	#20
	A = 16'hb942;
	B = 16'hbf6f;
	ans_a = 16'h4e21;
	#20
	A = 16'hbc27;
	B = 16'hbc3e;
	ans_a = 16'h4e67;
	#20
	A = 16'hbd87;
	B = 16'h34b4;
	ans_a = 16'h4e4d;
	#20
	A = 16'h3d1c;
	B = 16'h3e12;
	ans_a = 16'h4ec9;
	#20
	A = 16'h3d8f;
	B = 16'hbc50;
	ans_a = 16'h4e69;
	#20
	A = 16'hba23;
	B = 16'h3c5a;
	ans_a = 16'h4e34;
	#20
	A = 16'h3fbb;
	B = 16'haf94;
	ans_a = 16'h4e25;
	#20
	A = 16'h347c;
	B = 16'h35c8;
	ans_a = 16'h4e2b;
	#20
	A = 16'hba49;
	B = 16'hb6bc;
	ans_a = 16'h4e40;
	#20
	A = 16'hb532;
	B = 16'hbf4c;
	ans_a = 16'h4e66;
	#20
	A = 16'hbf4a;
	B = 16'h3e2b;
	ans_a = 16'h4db2;
	#20
	A = 16'hb5b9;
	B = 16'h2703;
	ans_a = 16'h4db1;
	#20
	A = 16'h3d64;
	B = 16'h329e;
	ans_a = 16'h4dc3;
	#20
	A = 16'h3611;
	B = 16'h3e0a;
	ans_a = 16'h4de8;
	#20
	A = 16'hbe90;
	B = 16'h3381;
	ans_a = 16'h4dcf;
	#20
	A = 16'hbcd5;
	B = 16'h3dd7;
	ans_a = 16'h4d5e;
	#20
	A = 16'hba66;
	B = 16'h3a03;
	ans_a = 16'h4d38;
	#20
	A = 16'h33bb;
	B = 16'h3f5d;
	ans_a = 16'h4d54;
	#20
	A = 16'hbf9a;
	B = 16'hbc45;
	ans_a = 16'h4dd6;
	#20
	A = 16'hb1c2;
	B = 16'hbb1a;
	ans_a = 16'h4de0;
	#20
	A = 16'h3b0b;
	B = 16'h3d82;
	ans_a = 16'h4e2e;
	#20
	A = 16'hbc4a;
	B = 16'hb99c;
	ans_a = 16'h4e5e;
	#20
	A = 16'h3d9b;
	B = 16'hb70b;
	ans_a = 16'h4e37;
	#20
	A = 16'h36e0;
	B = 16'h34b6;
	ans_a = 16'h4e3f;
	#20
	A = 16'h2e1e;
	B = 16'h3411;
	ans_a = 16'h4e41;
	#20
	A = 16'h3d88;
	B = 16'h3969;
	ans_a = 16'h4e7d;
	#20
	A = 16'h3e4d;
	B = 16'h3ad6;
	ans_a = 16'h4ed3;
	#20
	A = 16'h3bfa;
	B = 16'hbb1b;
	ans_a = 16'h4e9a;
	#20
	A = 16'hb37a;
	B = 16'h3c11;
	ans_a = 16'h4e8b;
	#20
	A = 16'hadc5;
	B = 16'h385c;
	ans_a = 16'h4e88;
	#20
	A = 16'ha6ef;
	B = 16'h3e5d;
	ans_a = 16'h4e85;
	#20
	A = 16'h129e;
	B = 16'hbec3;
	ans_a = 16'h4e85;
	#20
	A = 16'h3a5f;
	B = 16'h3e14;
	ans_a = 16'h4ed2;
	#20
	A = 16'h3540;
	B = 16'h3142;
	ans_a = 16'h4ed5;
	#20
	A = 16'hb839;
	B = 16'h351c;
	ans_a = 16'h4eca;
	#20
	A = 16'hb9f7;
	B = 16'h3e9a;
	ans_a = 16'h4e7b;
	#20
	A = 16'hbc84;
	B = 16'h3f4e;
	ans_a = 16'h4df7;
	#20
	A = 16'h2fc1;
	B = 16'hbc2a;
	ans_a = 16'h4def;
	#20
	A = 16'h3f35;
	B = 16'hbb51;
	ans_a = 16'h4d86;
	#20
	A = 16'h3f76;
	B = 16'hbabf;
	ans_a = 16'h4d21;
	#20
	A = 16'h3e20;
	B = 16'h3e1c;
	ans_a = 16'h4db7;
	#20
	A = 16'h3ff9;
	B = 16'hba86;
	ans_a = 16'h4d4f;
	#20
	A = 16'hbca8;
	B = 16'hbbfb;
	ans_a = 16'h4d99;
	#20
	A = 16'hb402;
	B = 16'hbe6f;
	ans_a = 16'h4db3;
	#20
	A = 16'hbd4f;
	B = 16'hbfb5;
	ans_a = 16'h4e57;
	#20
	A = 16'h34a4;
	B = 16'h3a4f;
	ans_a = 16'h4e66;
	#20
	A = 16'hbe0b;
	B = 16'h3472;
	ans_a = 16'h4e4b;
	#20
	A = 16'hae5f;
	B = 16'hbd1d;
	ans_a = 16'h4e53;
	#20
	A = 16'hbfe5;
	B = 16'hbb08;
	ans_a = 16'h4ec2;
	#20
	A = 16'h35cc;
	B = 16'hba18;
	ans_a = 16'h4eb0;
	#20
	A = 16'h31d7;
	B = 16'hbd92;
	ans_a = 16'h4ea0;
	#20
	A = 16'hbce8;
	B = 16'h3c39;
	ans_a = 16'h4e4d;
	#20
	A = 16'h3f91;
	B = 16'h3fc0;
	ans_a = 16'h4f38;
	#20
	A = 16'h3a23;
	B = 16'hb4e3;
	ans_a = 16'h4f29;
	#20
	A = 16'hb30d;
	B = 16'h2caa;
	ans_a = 16'h4f28;
	#20
	A = 16'hbdbe;
	B = 16'hb53f;
	ans_a = 16'h4f46;
	#20
	A = 16'h31d0;
	B = 16'hb7e9;
	ans_a = 16'h4f40;
	#20
	A = 16'hbfaa;
	B = 16'h3d71;
	ans_a = 16'h4e99;
	#20
	A = 16'haa93;
	B = 16'hba8a;
	ans_a = 16'h4e9c;
	#20
	A = 16'h3e42;
	B = 16'h3c4d;
	ans_a = 16'h4f08;
	#20
	A = 16'hbd73;
	B = 16'h3e96;
	ans_a = 16'h4e78;
	#20
	A = 16'hb0b1;
	B = 16'h3f51;
	ans_a = 16'h4e67;
	#20
	A = 16'hbbc8;
	B = 16'h3753;
	ans_a = 16'h4e4a;
	#20
	A = 16'h3f09;
	B = 16'hbce0;
	ans_a = 16'h4dc1;
	#20
	A = 16'hb4e1;
	B = 16'h3e71;
	ans_a = 16'h4da2;
	#20
	A = 16'hbf18;
	B = 16'h3030;
	ans_a = 16'h4d93;
	#20
	A = 16'hbcce;
	B = 16'hbdba;
	ans_a = 16'h4e01;
	#20
	A = 16'hbef8;
	B = 16'h3feb;
	ans_a = 16'h4d24;
	#20
	A = 16'hbc06;
	B = 16'h3941;
	ans_a = 16'h4cfa;
	#20
	A = 16'hbca3;
	B = 16'hb29b;
	ans_a = 16'h4d09;
	#20
	A = 16'hb4eb;
	B = 16'hb616;
	ans_a = 16'h4d10;
	#20
	A = 16'hbf0d;
	B = 16'hbbd4;
	ans_a = 16'h4d7e;
	#20
	A = 16'hba88;
	B = 16'h3d39;
	ans_a = 16'h4d3a;
	#20
	A = 16'hbe5b;
	B = 16'h3ca5;
	ans_a = 16'h4cc4;
	#20
	A = 16'hac6b;
	B = 16'hba4c;
	ans_a = 16'h4cc7;
	#20
	A = 16'hb9e9;
	B = 16'h3f34;
	ans_a = 16'h4c72;
	#20
	A = 16'h314b;
	B = 16'hbcff;
	ans_a = 16'h4c65;
	#20
	A = 16'h357b;
	B = 16'hbf88;
	ans_a = 16'h4c3c;
	#20
	A = 16'h3613;
	B = 16'hba77;
	ans_a = 16'h4c28;
	#20
	A = 16'hb6f6;
	B = 16'h3eea;
	ans_a = 16'h4bf0;
	#20
	A = 16'hbc7f;
	B = 16'hac1f;
	ans_a = 16'h4bf9;
	#20
	A = 16'h3b3b;
	B = 16'h3890;
	ans_a = 16'h4c1e;
	#20
	A = 16'hb51d;
	B = 16'hbc9a;
	ans_a = 16'h4c36;
	#20
	A = 16'hb97e;
	B = 16'h394f;
	ans_a = 16'h4c19;
	#20
	A = 16'hb827;
	B = 16'h3eed;
	ans_a = 16'h4bbf;
	#20
	A = 16'h3ee6;
	B = 16'h3991;
	ans_a = 16'h4c2c;
	#20
	A = 16'hbc77;
	B = 16'h3d17;
	ans_a = 16'h4ba2;
	#20
	A = 16'h3eab;
	B = 16'hb4cc;
	ans_a = 16'h4b62;
	#20
	A = 16'h3b32;
	B = 16'hbb8e;
	ans_a = 16'h4af5;
	#20
	A = 16'hbdc4;
	B = 16'hbc54;
	ans_a = 16'h4bbd;
	#20
	A = 16'hb885;
	B = 16'hbfad;
	ans_a = 16'h4c24;
	#20
	A = 16'hbd14;
	B = 16'hbc97;
	ans_a = 16'h4c81;
	#20
	A = 16'h376f;
	B = 16'hbbca;
	ans_a = 16'h4c64;
	#20
	A = 16'hb925;
	B = 16'h3cc1;
	ans_a = 16'h4c33;
	#20
	A = 16'hbfe5;
	B = 16'hb5bf;
	ans_a = 16'h4c60;
	#20
	A = 16'h3e4d;
	B = 16'h3e14;
	ans_a = 16'h4cf9;
	#20
	A = 16'hbd4f;
	B = 16'hb70b;
	ans_a = 16'h4d1e;
	#20
	A = 16'hb2cd;
	B = 16'h3c09;
	ans_a = 16'h4d10;
	#20
	A = 16'hbbd8;
	B = 16'h3c86;
	ans_a = 16'h4cc9;
	#20
	A = 16'h3a07;
	B = 16'h3844;
	ans_a = 16'h4ce3;
	#20
	A = 16'haeb8;
	B = 16'h3cb4;
	ans_a = 16'h4cdb;
	#20
	A = 16'hb909;
	B = 16'hb9ee;
	ans_a = 16'h4cf9;
	#20
	A = 16'h3a59;
	B = 16'h3fb1;
	ans_a = 16'h4d5b;
	#20
	A = 16'h3f89;
	B = 16'h3ac6;
	ans_a = 16'h4dc1;
	#20
	A = 16'hbc32;
	B = 16'hbcbf;
	ans_a = 16'h4e11;
	#20
	A = 16'hb7c6;
	B = 16'hbab0;
	ans_a = 16'h4e2b;
	#20
	A = 16'h3ac6;
	B = 16'hbcac;
	ans_a = 16'h4dec;
	#20
	A = 16'h3c2a;
	B = 16'hb761;
	ans_a = 16'h4dcd;
	#20
	A = 16'h3cf4;
	B = 16'h3905;
	ans_a = 16'h4dff;
	#20
	A = 16'hbe1c;
	B = 16'hbe8b;
	ans_a = 16'h4e9f;
	#20
	A = 16'hbf54;
	B = 16'h3e26;
	ans_a = 16'h4deb;
	#20
	A = 16'hbb5a;
	B = 16'h3468;
	ans_a = 16'h4ddb;
	#20
	A = 16'h3a57;
	B = 16'h30b2;
	ans_a = 16'h4de2;
	#20
	A = 16'hbce3;
	B = 16'h3d54;
	ans_a = 16'h4d7a;
	#20
	A = 16'h39db;
	B = 16'h3922;
	ans_a = 16'h4d98;
	#20
	A = 16'h3e3c;
	B = 16'h3a19;
	ans_a = 16'h4de4;
	#20
	A = 16'hbcb7;
	B = 16'h3ce0;
	ans_a = 16'h4d88;
	#20
	A = 16'h3f99;
	B = 16'h3db6;
	ans_a = 16'h4e36;
	#20
	A = 16'h3d58;
	B = 16'h3777;
	ans_a = 16'h4e5e;
	#20
	A = 16'hb8aa;
	B = 16'hb936;
	ans_a = 16'h4e76;
	#20
	A = 16'h32cd;
	B = 16'h3f85;
	ans_a = 16'h4e90;
	#20
	A = 16'hb256;
	B = 16'h3774;
	ans_a = 16'h4e8a;
	#20
	A = 16'h38aa;
	B = 16'h3390;
	ans_a = 16'h4e93;
	#20
	A = 16'hbf0b;
	B = 16'hb3ab;
	ans_a = 16'h4eae;
	#20
	A = 16'h3bfc;
	B = 16'h3eff;
	ans_a = 16'h4f1e;
	#20
	A = 16'h3951;
	B = 16'h3d19;
	ans_a = 16'h4f54;
	#20
	A = 16'hbe34;
	B = 16'h3f1a;
	ans_a = 16'h4ea4;
	#20
	A = 16'h3418;
	B = 16'h3c3f;
	ans_a = 16'h4eb5;
	#20
	A = 16'hb6bb;
	B = 16'h3cc1;
	ans_a = 16'h4e95;
	#20
	A = 16'h3d31;
	B = 16'h3983;
	ans_a = 16'h4ece;
	#20
	A = 16'hbbba;
	B = 16'h30e7;
	ans_a = 16'h4ec5;
	#20
	A = 16'hbc0b;
	B = 16'hae54;
	ans_a = 16'h4ecb;
	#20
	A = 16'hb5b0;
	B = 16'h3194;
	ans_a = 16'h4ec7;
	#20
	A = 16'hb8bb;
	B = 16'h38cc;
	ans_a = 16'h4eb0;
	#20
	A = 16'h3389;
	B = 16'h3aa3;
	ans_a = 16'h4ebc;
	#20
	A = 16'h3cc5;
	B = 16'h3fea;
	ans_a = 16'h4f53;
	#20
	A = 16'hbb4c;
	B = 16'hb0ae;
	ans_a = 16'h4f5c;
	#20
	A = 16'h3a40;
	B = 16'h38d4;
	ans_a = 16'h4f7a;
	#20
	A = 16'h3e5e;
	B = 16'hb80a;
	ans_a = 16'h4f47;
	#20
	A = 16'h3c1e;
	B = 16'h3524;
	ans_a = 16'h4f5c;
	#20
	A = 16'hbc19;
	B = 16'hbf86;
	ans_a = 16'h4fd7;
	#20
	A = 16'hb97e;
	B = 16'hb716;
	ans_a = 16'h4fea;
	#20
	A = 16'hba78;
	B = 16'h3edb;
	ans_a = 16'h4f91;
	#20
	A = 16'h3426;
	B = 16'hae62;
	ans_a = 16'h4f8f;
	#20
	A = 16'hb7b5;
	B = 16'h3e46;
	ans_a = 16'h4f5f;
	#20
	A = 16'hbe80;
	B = 16'h3e6a;
	ans_a = 16'h4eb8;
	#20
	A = 16'hbb78;
	B = 16'h3df3;
	ans_a = 16'h4e5f;
	#20
	A = 16'hb5c2;
	B = 16'h36c6;
	ans_a = 16'h4e55;
	#20
	A = 16'h27bb;
	B = 16'h3499;
	ans_a = 16'h4e56;
	#20
	A = 16'hbec6;
	B = 16'ha9e8;
	ans_a = 16'h4e5b;
	#20
	A = 16'h3b71;
	B = 16'hbdaf;
	ans_a = 16'h4e06;
	#20
	A = 16'h3dd4;
	B = 16'h3e66;
	ans_a = 16'h4e9b;
	#20
	A = 16'h3dc0;
	B = 16'hb5cc;
	ans_a = 16'h4e7a;
	#20
	A = 16'hbd2d;
	B = 16'hbfe2;
	ans_a = 16'h4f1d;
	#20
	A = 16'h3f27;
	B = 16'hbbd9;
	ans_a = 16'h4ead;
	#20
	A = 16'h2f0a;
	B = 16'hbc96;
	ans_a = 16'h4ea5;
	#20
	A = 16'hbe47;
	B = 16'h3a4c;
	ans_a = 16'h4e56;
	#20
	A = 16'h3acf;
	B = 16'h3a17;
	ans_a = 16'h4e7f;
	#20
	A = 16'hbb3e;
	B = 16'h3dc7;
	ans_a = 16'h4e2b;
	#20
	A = 16'h32b8;
	B = 16'hbcd5;
	ans_a = 16'h4e1b;
	#20
	A = 16'h3f35;
	B = 16'hbf61;
	ans_a = 16'h4d46;
	#20
	A = 16'hbaba;
	B = 16'h3a5f;
	ans_a = 16'h4d1b;
	#20
	A = 16'hbeb8;
	B = 16'hbcc8;
	ans_a = 16'h4d9c;
	#20
	A = 16'h3e4a;
	B = 16'h3d0b;
	ans_a = 16'h4e1b;
	#20
	A = 16'h3afa;
	B = 16'hbbc9;
	ans_a = 16'h4de5;
	#20
	A = 16'h3993;
	B = 16'h3fc3;
	ans_a = 16'h4e3c;
	#20
	A = 16'hbcce;
	B = 16'h3e95;
	ans_a = 16'h4dbe;
	#20
	A = 16'hbe6f;
	B = 16'h36b8;
	ans_a = 16'h4d93;
	#20
	A = 16'h392a;
	B = 16'hbc0e;
	ans_a = 16'h4d69;
	#20
	A = 16'hbc4a;
	B = 16'hbc4a;
	ans_a = 16'h4db3;
	#20
	A = 16'hbee1;
	B = 16'h3081;
	ans_a = 16'h4da4;
	#20
	A = 16'h3d1f;
	B = 16'hbf7c;
	ans_a = 16'h4d0b;
	#20
	A = 16'h3ddf;
	B = 16'hbcbd;
	ans_a = 16'h4c9c;
	#20
	A = 16'h3b12;
	B = 16'hb756;
	ans_a = 16'h4c82;
	#20
	A = 16'h3f42;
	B = 16'hb921;
	ans_a = 16'h4c38;
	#20
	A = 16'hbedd;
	B = 16'h3bf0;
	ans_a = 16'h4b96;
	#20
	A = 16'hbc99;
	B = 16'hbd33;
	ans_a = 16'h4c2b;
	#20
	A = 16'h3bb1;
	B = 16'hb6da;
	ans_a = 16'h4c11;
	#20
	A = 16'hbf87;
	B = 16'h3b1d;
	ans_a = 16'h4b4c;
	#20
	A = 16'hb83c;
	B = 16'h3f71;
	ans_a = 16'h4ace;
	#20
	A = 16'h3192;
	B = 16'hbc0f;
	ans_a = 16'h4ab7;
	#20
	A = 16'h3c4d;
	B = 16'hb84a;
	ans_a = 16'h4a6d;
	#20
	A = 16'hbd49;
	B = 16'h323e;
	ans_a = 16'h4a4c;
	#20
	A = 16'h39f9;
	B = 16'h3468;
	ans_a = 16'h4a66;
	#20
	A = 16'hb79f;
	B = 16'h3f11;
	ans_a = 16'h49fa;
	#20
	A = 16'h3a07;
	B = 16'hbd61;
	ans_a = 16'h4978;
	#20
	A = 16'hbcdc;
	B = 16'h370d;
	ans_a = 16'h4934;
	#20
	A = 16'hbfbc;
	B = 16'ha442;
	ans_a = 16'h4938;
	#20
	A = 16'hb5cf;
	B = 16'hb8df;
	ans_a = 16'h4954;
	#20
	A = 16'h3f94;
	B = 16'hb6a8;
	ans_a = 16'h48ef;
	#20
	A = 16'hbff5;
	B = 16'hbb74;
	ans_a = 16'h49dc;
	#20
	A = 16'hb0ee;
	B = 16'hbe73;
	ans_a = 16'h49fc;
	#20
	A = 16'h3ce8;
	B = 16'hbc64;
	ans_a = 16'h4950;
	#20
	A = 16'h3d01;
	B = 16'h3d24;
	ans_a = 16'h4a1e;
	#20
	A = 16'hbafa;
	B = 16'h3404;
	ans_a = 16'h4a02;
	#20
	A = 16'hbf4b;
	B = 16'h3ff0;
	ans_a = 16'h4833;
	#20
	A = 16'hb81a;
	B = 16'h2cda;
	ans_a = 16'h482e;
	#20
	A = 16'h3ebe;
	B = 16'h3c14;
	ans_a = 16'h490a;
	#20
	A = 16'hb692;
	B = 16'h395b;
	ans_a = 16'h48e7;
	#20
	A = 16'h3c60;
	B = 16'hbeec;
	ans_a = 16'h47ea;
	#20
	A = 16'h3524;
	B = 16'h395f;
	ans_a = 16'h4811;
	#20
	A = 16'hbd75;
	B = 16'h3fbf;
	ans_a = 16'h457e;
	#20
	A = 16'hbf14;
	B = 16'hbad0;
	ans_a = 16'h4700;
	#20
	A = 16'hbf73;
	B = 16'hbd67;
	ans_a = 16'h48c2;
	#20
	A = 16'hbe32;
	B = 16'hb882;
	ans_a = 16'h4932;
	#20
	A = 16'hba40;
	B = 16'hbe4a;
	ans_a = 16'h49cf;
	#20
	A = 16'hbeba;
	B = 16'hbda5;
	ans_a = 16'h4aff;
	#20
	A = 16'hbf73;
	B = 16'h37b0;
	ans_a = 16'h4a8c;
	#20
	A = 16'h342a;
	B = 16'h3773;
	ans_a = 16'h4a9c;
	#20
	A = 16'hbfa4;
	B = 16'hbd81;
	ans_a = 16'h4bec;
	#20
	A = 16'hbe1e;
	B = 16'h3922;
	ans_a = 16'h4b6e;
	#20
	A = 16'hbe71;
	B = 16'hbe4b;
	ans_a = 16'h4c59;
	#20
	A = 16'hbe53;
	B = 16'hbe31;
	ans_a = 16'h4cf6;
	#20
	A = 16'hbc91;
	B = 16'h3ca7;
	ans_a = 16'h4ca1;
	#20
	A = 16'h34ed;
	B = 16'hbd95;
	ans_a = 16'h4c86;
	#20
	A = 16'hbd13;
	B = 16'hbb6c;
	ans_a = 16'h4cd1;
	#20
	A = 16'h3db2;
	B = 16'hb5a5;
	ans_a = 16'h4cb1;
	#20
	A = 16'h3e43;
	B = 16'ha5ac;
	ans_a = 16'h4caf;
	#20
	A = 16'hbe84;
	B = 16'hb8a5;
	ans_a = 16'h4cec;
	#20
	A = 16'h3ded;
	B = 16'h367c;
	ans_a = 16'h4d12;
	#20
	A = 16'h361e;
	B = 16'h3acc;
	ans_a = 16'h4d27;
	#20
	A = 16'hbc6f;
	B = 16'hb6fa;
	ans_a = 16'h4d46;
	#20
	A = 16'h3fa7;
	B = 16'hbd26;
	ans_a = 16'h4ca8;
	#20
	A = 16'hbfc3;
	B = 16'hb416;
	ans_a = 16'h4cc8;
	#20
	A = 16'h3996;
	B = 16'h3a56;
	ans_a = 16'h4ceb;
	#20
	A = 16'h2a2e;
	B = 16'hb578;
	ans_a = 16'h4cea;
	#20
	A = 16'hba5d;
	B = 16'hbf19;
	ans_a = 16'h4d44;
	#20
	A = 16'hb8f9;
	B = 16'h39e1;
	ans_a = 16'h4d27;
	#20
	A = 16'h3dcd;
	B = 16'h3cb6;
	ans_a = 16'h4d94;
	#20
	A = 16'h382f;
	B = 16'hbd86;
	ans_a = 16'h4d66;
	#20
	A = 16'hb02a;
	B = 16'hb8ea;
	ans_a = 16'h4d6b;
	#20
	A = 16'hb1f7;
	B = 16'hbfe7;
	ans_a = 16'h4d83;
	#20
	A = 16'h9c64;
	B = 16'h3def;
	ans_a = 16'h4d83;
	#20
	A = 16'h3686;
	B = 16'hbbdb;
	ans_a = 16'h4d69;
	#20
	A = 16'hb4a9;
	B = 16'h3c50;
	ans_a = 16'h4d55;
	#20
	A = 16'hb80a;
	B = 16'hb841;
	ans_a = 16'h4d66;
	#20
	A = 16'h37ae;
	B = 16'hbce3;
	ans_a = 16'h4d40;
	#20
	A = 16'hbe0f;
	B = 16'hb89c;
	ans_a = 16'h4d78;
	#20
	A = 16'h3efb;
	B = 16'h3ad9;
	ans_a = 16'h4dd8;
	#20
	A = 16'hb801;
	B = 16'h3b92;
	ans_a = 16'h4dba;
	#20
	A = 16'hb257;
	B = 16'hbed5;
	ans_a = 16'h4dd0;
	#20
	A = 16'h3c9b;
	B = 16'h34a0;
	ans_a = 16'h4de5;
	#20
	A = 16'hbba5;
	B = 16'hbfd1;
	ans_a = 16'h4e5c;
	#20
	A = 16'h3ef8;
	B = 16'h3e7c;
	ans_a = 16'h4f11;
	#20
	A = 16'hbcc5;
	B = 16'h3385;
	ans_a = 16'h4eff;
	#20
	A = 16'hbe77;
	B = 16'h3ff9;
	ans_a = 16'h4e31;
	#20
	A = 16'hb95f;
	B = 16'h3ef9;
	ans_a = 16'h4de6;
	#20
	A = 16'h3b6f;
	B = 16'h3dff;
	ans_a = 16'h4e3f;
	#20
	A = 16'h3c64;
	B = 16'h3b3d;
	ans_a = 16'h4e7f;
	#20
	A = 16'h3d95;
	B = 16'h395f;
	ans_a = 16'h4ebb;
	#20
	A = 16'h3c77;
	B = 16'h3b29;
	ans_a = 16'h4efb;
	#20
	A = 16'h3623;
	B = 16'h3e63;
	ans_a = 16'h4f22;
	#20
	A = 16'h290b;
	B = 16'hbe27;
	ans_a = 16'h4f1e;
	#20
	A = 16'hbdc3;
	B = 16'h2596;
	ans_a = 16'h4f1c;
	#20
	A = 16'hb815;
	B = 16'hafbc;
	ans_a = 16'h4f20;
	#20
	A = 16'hbf5b;
	B = 16'h3fd8;
	ans_a = 16'h4e39;
	#20
	A = 16'hbf5d;
	B = 16'h3806;
	ans_a = 16'h4dfe;
	#20
	A = 16'h3419;
	B = 16'h3b66;
	ans_a = 16'h4e0d;
	#20
	A = 16'hbc0a;
	B = 16'hbc32;
	ans_a = 16'h4e51;
	#20
	A = 16'hb96d;
	B = 16'h3dc6;
	ans_a = 16'h4e12;
	#20
	A = 16'h3e0a;
	B = 16'ha84c;
	ans_a = 16'h4e0f;
	#20
	A = 16'h39ec;
	B = 16'h3e11;
	ans_a = 16'h4e57;
	#20
	A = 16'hbdce;
	B = 16'h3c21;
	ans_a = 16'h4df7;
	#20
	A = 16'h3e4b;
	B = 16'hba6d;
	ans_a = 16'h4da6;
	#20
	A = 16'h3f36;
	B = 16'hbfc9;
	ans_a = 16'h4cc6;
	#20
	A = 16'hbd21;
	B = 16'h3bd0;
	ans_a = 16'h4c76;
	#20
	A = 16'h3594;
	B = 16'h3f5e;
	ans_a = 16'h4c9f;
	#20
	A = 16'hbf5e;
	B = 16'h3c55;
	ans_a = 16'h4c1f;
	#20
	A = 16'hb46a;
	B = 16'hbe2c;
	ans_a = 16'h4c3a;
	#20
	A = 16'h3937;
	B = 16'h3cf3;
	ans_a = 16'h4c6e;
	#20
	A = 16'hbb17;
	B = 16'hbf89;
	ans_a = 16'h4cd9;
	#20
	A = 16'hb84f;
	B = 16'ha40c;
	ans_a = 16'h4cda;
	#20
	A = 16'h3cf2;
	B = 16'hbd26;
	ans_a = 16'h4c74;
	#20
	A = 16'hbac3;
	B = 16'hbf79;
	ans_a = 16'h4cd9;
	#20
	A = 16'h3d72;
	B = 16'hbad6;
	ans_a = 16'h4c8f;
	#20
	A = 16'hb79e;
	B = 16'h298b;
	ans_a = 16'h4c8e;
	#20
	A = 16'hbe99;
	B = 16'h38db;
	ans_a = 16'h4c4e;
	#20
	A = 16'h36af;
	B = 16'h38c9;
	ans_a = 16'h4c5e;
	#20
	A = 16'hadc6;
	B = 16'h31d5;
	ans_a = 16'h4c5d;
	#20
	A = 16'h3c17;
	B = 16'hbdef;
	ans_a = 16'h4bf8;
	#20
	A = 16'hb48a;
	B = 16'h3b04;
	ans_a = 16'h4bd8;
	#20
	A = 16'h3cdb;
	B = 16'h35a5;
	ans_a = 16'h4c07;
	#20
	A = 16'hbc8f;
	B = 16'hbda8;
	ans_a = 16'h4c6e;
	#20
	A = 16'h3ddb;
	B = 16'hbf6c;
	ans_a = 16'h4b80;
	#20
	A = 16'h3c98;
	B = 16'hb820;
	ans_a = 16'h4b34;
	#20
	A = 16'hbe82;
	B = 16'hbdfc;
	ans_a = 16'h4c36;
	#20
	A = 16'hb313;
	B = 16'hb5a2;
	ans_a = 16'h4c3b;
	#20
	A = 16'hbe2f;
	B = 16'h245d;
	ans_a = 16'h4c39;
	#20
	A = 16'hbb41;
	B = 16'h3cf1;
	ans_a = 16'h4be3;
	#20
	A = 16'hbe85;
	B = 16'h3bcd;
	ans_a = 16'h4b18;
	#20
	A = 16'hbdc2;
	B = 16'h30bb;
	ans_a = 16'h4afd;
	#20
	A = 16'h3e17;
	B = 16'hbf9a;
	ans_a = 16'h498b;
	#20
	A = 16'h2f17;
	B = 16'h3bdf;
	ans_a = 16'h4999;
	#20
	A = 16'hbffe;
	B = 16'h2d96;
	ans_a = 16'h4983;
	#20
	A = 16'hbf97;
	B = 16'hb9ea;
	ans_a = 16'h4a36;
	#20
	A = 16'ha943;
	B = 16'haf87;
	ans_a = 16'h4a37;
	#20
	A = 16'hbfd4;
	B = 16'hb40f;
	ans_a = 16'h4a77;
	#20
	A = 16'h3ca2;
	B = 16'hbfb3;
	ans_a = 16'h495a;
	#20
	A = 16'h37b0;
	B = 16'h3b1f;
	ans_a = 16'h4991;
	#20
	A = 16'h3bb8;
	B = 16'h3ed7;
	ans_a = 16'h4a64;
	#20
	A = 16'hb858;
	B = 16'h344c;
	ans_a = 16'h4a51;
	#20
	A = 16'hbc60;
	B = 16'hb0a4;
	ans_a = 16'h4a65;
	#20
	A = 16'h3db8;
	B = 16'hbe7e;
	ans_a = 16'h493c;
	#20
	A = 16'h3935;
	B = 16'hbd35;
	ans_a = 16'h48d0;
	#20
	A = 16'h3504;
	B = 16'h3f00;
	ans_a = 16'h4916;
	#20
	A = 16'h3f6a;
	B = 16'h3ba4;
	ans_a = 16'h49f9;
	#20
	A = 16'h3ecb;
	B = 16'hbbc1;
	ans_a = 16'h4926;
	#20
	A = 16'h3f5c;
	B = 16'hbe44;
	ans_a = 16'h476a;
	#20
	A = 16'hb8a3;
	B = 16'hbf96;
	ans_a = 16'h4842;
	#20
	A = 16'ha82f;
	B = 16'hbc8e;
	ans_a = 16'h4847;
	#20
	A = 16'hb7b6;
	B = 16'h385b;
	ans_a = 16'h4825;
	#20
	A = 16'h349a;
	B = 16'h3eda;
	ans_a = 16'h4864;
	#20
	A = 16'hbe8e;
	B = 16'hb644;
	ans_a = 16'h48b6;
	#20
	A = 16'hb81b;
	B = 16'hb8a5;
	ans_a = 16'h48dc;
	#20
	A = 16'hb8fd;
	B = 16'hbdc6;
	ans_a = 16'h494f;
	#20
	A = 16'h3592;
	B = 16'hbd99;
	ans_a = 16'h4911;
	#20
	A = 16'hbdc6;
	B = 16'h3bc1;
	ans_a = 16'h485e;
	#20
	A = 16'hb53c;
	B = 16'hb8eb;
	ans_a = 16'h4878;
	#20
	A = 16'h3876;
	B = 16'hb653;
	ans_a = 16'h485c;
	#20
	A = 16'hb037;
	B = 16'h3b1e;
	ans_a = 16'h484d;
	#20
	A = 16'h3480;
	B = 16'hbb01;
	ans_a = 16'h482d;
	#20
	A = 16'hbd7b;
	B = 16'h3c31;
	ans_a = 16'h46ea;
	#20
	A = 16'h3d55;
	B = 16'h3f5c;
	ans_a = 16'h48af;
	#20
	A = 16'h390f;
	B = 16'h3d00;
	ans_a = 16'h4914;
	#20
	A = 16'h3e74;
	B = 16'h3ea4;
	ans_a = 16'h4a6b;
	#20
	A = 16'hb7cf;
	B = 16'hbd18;
	ans_a = 16'h4abb;
	#20
	A = 16'haa09;
	B = 16'h3b77;
	ans_a = 16'h4ab5;
	#20
	A = 16'hbdaa;
	B = 16'hbd9e;
	ans_a = 16'h4bb4;
	#20
	A = 16'hba38;
	B = 16'hbb20;
	ans_a = 16'h4c06;
	#20
	A = 16'hb9c4;
	B = 16'hba2e;
	ans_a = 16'h4c2a;
	#20
	A = 16'h3b5f;
	B = 16'h3d05;
	ans_a = 16'h4c74;
	#20
	A = 16'hbc66;
	B = 16'hbc47;
	ans_a = 16'h4cbf;
	#20
	A = 16'h373f;
	B = 16'hbe94;
	ans_a = 16'h4c8f;
	#20
	A = 16'h3587;
	B = 16'h3cba;
	ans_a = 16'h4ca9;
	#20
	A = 16'h3f66;
	B = 16'hb973;
	ans_a = 16'h4c58;
	#20
	A = 16'hbae6;
	B = 16'h3c37;
	ans_a = 16'h4c1e;
	#20
	A = 16'hbf00;
	B = 16'hbb7a;
	ans_a = 16'h4c87;
	#20
	A = 16'h392b;
	B = 16'h3f7d;
	ans_a = 16'h4cd4;
	#20
	A = 16'hba99;
	B = 16'h3591;
	ans_a = 16'h4cc2;
	#20
	A = 16'h3ced;
	B = 16'h3c10;
	ans_a = 16'h4d12;
	#20
	A = 16'hbb99;
	B = 16'hb230;
	ans_a = 16'h4d1e;
	#20
	A = 16'hb7df;
	B = 16'hba6f;
	ans_a = 16'h4d37;
	#20
	A = 16'hbb04;
	B = 16'h374a;
	ans_a = 16'h4d1d;
	#20
	A = 16'hbfb6;
	B = 16'h3df1;
	ans_a = 16'h4c66;
	#20
	A = 16'hb9f9;
	B = 16'hbdf7;
	ans_a = 16'h4cad;
	#20
	A = 16'h3e5e;
	B = 16'h3ecf;
	ans_a = 16'h4d5a;
	#20
	A = 16'hb65b;
	B = 16'h3812;
	ans_a = 16'h4d4d;
	#20
	A = 16'h3ec7;
	B = 16'h3d7b;
	ans_a = 16'h4de2;
	#20
	A = 16'h3833;
	B = 16'h3d42;
	ans_a = 16'h4e0e;
	#20
	A = 16'h3e87;
	B = 16'hb5de;
	ans_a = 16'h4de8;
	#20
	A = 16'hb8e4;
	B = 16'h2ac8;
	ans_a = 16'h4de6;
	#20
	A = 16'hbe62;
	B = 16'h3c97;
	ans_a = 16'h4d71;
	#20
	A = 16'h3c05;
	B = 16'hbd7e;
	ans_a = 16'h4d19;
	#20
	A = 16'h3e9d;
	B = 16'hb421;
	ans_a = 16'h4cfe;
	#20
	A = 16'hbe1a;
	B = 16'hb41d;
	ans_a = 16'h4d17;
	#20
	A = 16'hb597;
	B = 16'hb97b;
	ans_a = 16'h4d26;
	#20
	A = 16'hbc15;
	B = 16'h3c8a;
	ans_a = 16'h4cdc;
	#20
	A = 16'h3cd7;
	B = 16'hb186;
	ans_a = 16'h4ccf;
	#20
	A = 16'h3dc5;
	B = 16'hb556;
	ans_a = 16'h4cb0;
	#20
	A = 16'h3ee8;
	B = 16'h3411;
	ans_a = 16'h4ccc;
	#20
	A = 16'h34d5;
	B = 16'h395b;
	ans_a = 16'h4cd9;
	#20
	A = 16'h3d8c;
	B = 16'h3131;
	ans_a = 16'h4ce7;
	#20
	A = 16'hb816;
	B = 16'h39b3;
	ans_a = 16'h4cd0;
	#20
	A = 16'h3fea;
	B = 16'h3ec6;
	ans_a = 16'h4da6;
	#20
	A = 16'hbd25;
	B = 16'hbf31;
	ans_a = 16'h4e3a;
	#20
	A = 16'h3b2d;
	B = 16'hbb75;
	ans_a = 16'h4e04;
	#20
	A = 16'h3f05;
	B = 16'hbf83;
	ans_a = 16'h4d31;
	#20
	A = 16'h97bf;
	B = 16'h3439;
	ans_a = 16'h4d31;
	#20
	A = 16'hb02b;
	B = 16'hb913;
	ans_a = 16'h4d36;
	#20
	A = 16'hbd47;
	B = 16'hbb4c;
	ans_a = 16'h4d83;
	#20
	A = 16'hbfc8;
	B = 16'hbc63;
	ans_a = 16'h4e0c;
	#20
	A = 16'h37cc;
	B = 16'h37ef;
	ans_a = 16'h4e1b;
	#20
	A = 16'hbd4b;
	B = 16'hbc66;
	ans_a = 16'h4e78;
	#20
	A = 16'h3b42;
	B = 16'hbe7d;
	ans_a = 16'h4e1a;
	#20
	A = 16'hb67c;
	B = 16'hbc6a;
	ans_a = 16'h4e37;
	#20
	A = 16'h3d85;
	B = 16'h3e8e;
	ans_a = 16'h4ec8;
	#20
	A = 16'h3b55;
	B = 16'h3ef8;
	ans_a = 16'h4f2e;
	#20
	A = 16'hbe8e;
	B = 16'hb9a0;
	ans_a = 16'h4f78;
	#20
	A = 16'h3c45;
	B = 16'hbaf9;
	ans_a = 16'h4f3c;
	#20
	A = 16'h3a5c;
	B = 16'h3d69;
	ans_a = 16'h4f81;
	#20
	A = 16'h3021;
	B = 16'hbcf9;
	ans_a = 16'h4f77;
	#20
	A = 16'hbe6f;
	B = 16'hb352;
	ans_a = 16'h4f8f;
	#20
	A = 16'hbc0b;
	B = 16'h36f6;
	ans_a = 16'h4f73;
	#20
	A = 16'h3f0e;
	B = 16'h3b97;
	ans_a = 16'h4fde;
	#20
	A = 16'hbcb6;
	B = 16'hbd39;
	ans_a = 16'h5020;
	#20
	A = 16'h1975;
	B = 16'hb565;
	ans_a = 16'h5020;
	#20
	A = 16'h3f1e;
	B = 16'hb546;
	ans_a = 16'h500d;
	#20
	A = 16'hb836;
	B = 16'h3e84;
	ans_a = 16'h4fe3;
	#20
	A = 16'h37ab;
	B = 16'h3c74;
	ans_a = 16'h5003;
	#20
	A = 16'hbb70;
	B = 16'h3c1c;
	ans_a = 16'h4fc9;
	#20
	A = 16'h3612;
	B = 16'h38df;
	ans_a = 16'h4fd8;
	#20
	A = 16'hbf82;
	B = 16'hbada;
	ans_a = 16'h501f;
	#20
	A = 16'h3f0d;
	B = 16'h3de8;
	ans_a = 16'h5072;
	#20
	A = 16'hbdbc;
	B = 16'hba88;
	ans_a = 16'h5097;
	#20
	A = 16'hbe63;
	B = 16'hbc13;
	ans_a = 16'h50cb;
	#20
	A = 16'h3d8d;
	B = 16'hbda7;
	ans_a = 16'h508c;
	#20
	A = 16'hb922;
	B = 16'h3fe6;
	ans_a = 16'h5063;
	#20
	A = 16'h3e84;
	B = 16'h3f58;
	ans_a = 16'h50c3;
	#20
	A = 16'h3d9b;
	B = 16'hbf09;
	ans_a = 16'h5074;
	#20
	A = 16'h3ff2;
	B = 16'h3df4;
	ans_a = 16'h50d3;
	#20
	A = 16'hb2de;
	B = 16'hbac5;
	ans_a = 16'h50d9;
	#20
	A = 16'h3a65;
	B = 16'hb910;
	ans_a = 16'h50c9;
	#20
	A = 16'hbfc6;
	B = 16'hbc03;
	ans_a = 16'h5107;
	#20
	A = 16'h3e49;
	B = 16'h3ae1;
	ans_a = 16'h5132;
	#20
	A = 16'hbe6a;
	B = 16'h3aaa;
	ans_a = 16'h5107;
	#20
	A = 16'h3dc7;
	B = 16'h3b1d;
	ans_a = 16'h5130;
	#20
	A = 16'hbbf1;
	B = 16'h3ccb;
	ans_a = 16'h510a;
	#20
	A = 16'h3e9b;
	B = 16'hb23f;
	ans_a = 16'h5100;
	#20
	A = 16'hbf3e;
	B = 16'hbf4d;
	ans_a = 16'h516a;
	#20
	A = 16'h3c21;
	B = 16'h3b1e;
	ans_a = 16'h5187;
	#20
	A = 16'hb7e0;
	B = 16'h3c9a;
	ans_a = 16'h5175;
	#20
	A = 16'h3183;
	B = 16'hbd01;
	ans_a = 16'h516e;
	#20
	A = 16'hbaad;
	B = 16'h3d77;
	ans_a = 16'h514a;
	#20
	A = 16'h3c2d;
	B = 16'hbcdc;
	ans_a = 16'h5121;
	#20
	A = 16'hbaaa;
	B = 16'h3c91;
	ans_a = 16'h5103;
	#20
	A = 16'h3d12;
	B = 16'hb05b;
	ans_a = 16'h50fd;
	#20
	A = 16'hbeae;
	B = 16'hbd39;
	ans_a = 16'h5143;
	#20
	A = 16'hb9e6;
	B = 16'hbc92;
	ans_a = 16'h515e;
	#20
	A = 16'h38b6;
	B = 16'ha235;
	ans_a = 16'h515e;
	#20
	A = 16'hb940;
	B = 16'h3505;
	ans_a = 16'h5157;
	#20
	A = 16'hbac1;
	B = 16'h36ff;
	ans_a = 16'h514b;
	#20
	A = 16'ha122;
	B = 16'hb081;
	ans_a = 16'h514b;
	#20
	A = 16'hbaf3;
	B = 16'h3cf7;
	ans_a = 16'h5128;
	#20
	A = 16'h380d;
	B = 16'h2fbc;
	ans_a = 16'h512a;
	#20
	A = 16'h3c41;
	B = 16'hb9f9;
	ans_a = 16'h5111;
	#20
	A = 16'hb8db;
	B = 16'h3814;
	ans_a = 16'h5107;
	#20
	A = 16'h3c9d;
	B = 16'h3889;
	ans_a = 16'h511c;
	#20
	A = 16'h3c2b;
	B = 16'h26f4;
	ans_a = 16'h511d;
	#20
	A = 16'h3993;
	B = 16'hbe36;
	ans_a = 16'h50fa;
	#20
	A = 16'hbca4;
	B = 16'h3f49;
	ans_a = 16'h50b6;
	#20
	A = 16'hbe51;
	B = 16'hbe4f;
	ans_a = 16'h5106;
	#20
	A = 16'hbfd1;
	B = 16'hbe21;
	ans_a = 16'h5166;
	#20
	A = 16'hbc57;
	B = 16'h3e04;
	ans_a = 16'h5132;
	#20
	A = 16'hb6de;
	B = 16'hbe05;
	ans_a = 16'h5147;
	#20
	A = 16'h37ac;
	B = 16'h3566;
	ans_a = 16'h514c;
	#20
	A = 16'h3cf0;
	B = 16'h3d57;
	ans_a = 16'h5181;
	#20
	A = 16'hbf5e;
	B = 16'hbdc0;
	ans_a = 16'h51d6;
	#20
	A = 16'hbc89;
	B = 16'h3f30;
	ans_a = 16'h5195;
	#20
	A = 16'h3ed9;
	B = 16'h3c0f;
	ans_a = 16'h51cd;
	#20
	A = 16'h3de4;
	B = 16'hbce3;
	ans_a = 16'h5193;
	#20
	A = 16'h3d1e;
	B = 16'hbe6e;
	ans_a = 16'h5151;
	#20
	A = 16'h3636;
	B = 16'h3e4c;
	ans_a = 16'h5165;
	#20
	A = 16'h3786;
	B = 16'h3df0;
	ans_a = 16'h517b;
	#20
	A = 16'hbfda;
	B = 16'h3f92;
	ans_a = 16'h5104;
	#20
	A = 16'hbfcc;
	B = 16'h3dc6;
	ans_a = 16'h50aa;
	#20
	A = 16'h3d24;
	B = 16'h34ca;
	ans_a = 16'h50b6;
	#20
	A = 16'hbf2a;
	B = 16'hbe3e;
	ans_a = 16'h510f;
	#20
	A = 16'hbe2c;
	B = 16'h3faa;
	ans_a = 16'h50b0;
	#20
	A = 16'had40;
	B = 16'hb76e;
	ans_a = 16'h50b1;
	#20
	A = 16'haf09;
	B = 16'h3dd8;
	ans_a = 16'h50ac;
	#20
	A = 16'h3bb9;
	B = 16'h3a09;
	ans_a = 16'h50c3;
	#20
	A = 16'hba76;
	B = 16'h3ae2;
	ans_a = 16'h50ad;
	#20
	A = 16'h39f7;
	B = 16'h38db;
	ans_a = 16'h50bb;
	#20
	A = 16'hba08;
	B = 16'hb5cf;
	ans_a = 16'h50c4;
	#20
	A = 16'hbe95;
	B = 16'hb25b;
	ans_a = 16'h50ce;
	#20
	A = 16'hbfc5;
	B = 16'h3d38;
	ans_a = 16'h507d;
	#20
	A = 16'hb8ed;
	B = 16'h3a96;
	ans_a = 16'h506d;
	#20
	A = 16'h2c25;
	B = 16'h3fa5;
	ans_a = 16'h5071;
	#20
	A = 16'hb558;
	B = 16'h31fc;
	ans_a = 16'h506f;
	#20
	A = 16'h3ef2;
	B = 16'hbe8b;
	ans_a = 16'h5014;
	#20
	A = 16'h379d;
	B = 16'hb088;
	ans_a = 16'h5012;
	#20
	A = 16'h3958;
	B = 16'h3fda;
	ans_a = 16'h503c;
	#20
	A = 16'hb3d0;
	B = 16'h3ed5;
	ans_a = 16'h502f;
	#20
	A = 16'hb0f0;
	B = 16'h3c2f;
	ans_a = 16'h502a;
	#20
	A = 16'h3e09;
	B = 16'hab8d;
	ans_a = 16'h5027;
	#20
	A = 16'hbefc;
	B = 16'h3908;
	ans_a = 16'h5004;
	#20
	A = 16'h3056;
	B = 16'h3e76;
	ans_a = 16'h500b;
	#20
	A = 16'hbd41;
	B = 16'hbbac;
	ans_a = 16'h5033;
	#20
	A = 16'h3ca9;
	B = 16'h3f1d;
	ans_a = 16'h5075;
	#20
	A = 16'h3f4e;
	B = 16'h35e8;
	ans_a = 16'h508b;
	#20
	A = 16'h2110;
	B = 16'hba8b;
	ans_a = 16'h508b;
	#20
	A = 16'hba20;
	B = 16'hb940;
	ans_a = 16'h509b;
	#20
	A = 16'hb384;
	B = 16'h2e8c;
	ans_a = 16'h509a;
	#20
	A = 16'hbc19;
	B = 16'h3ce5;
	ans_a = 16'h5072;
	#20
	A = 16'hbb99;
	B = 16'hbb56;
	ans_a = 16'h508e;
	#20
	A = 16'h32d3;
	B = 16'h3d3c;
	ans_a = 16'h5097;
	#20
	A = 16'h3fed;
	B = 16'h3bb5;
	ans_a = 16'h50d4;
	#20
	A = 16'h33ca;
	B = 16'h3da7;
	ans_a = 16'h50df;
	#20
	A = 16'h3205;
	B = 16'h3d88;
	ans_a = 16'h50e7;
	#20
	A = 16'hba0a;
	B = 16'hbbd0;
	ans_a = 16'h50ff;
	#20
	A = 16'hbc23;
	B = 16'h309a;
	ans_a = 16'h50fa;
	#20
	A = 16'hb595;
	B = 16'hbb16;
	ans_a = 16'h5104;
	#20
	A = 16'h3d82;
	B = 16'h3ce9;
	ans_a = 16'h513a;
	#20
	A = 16'hb75f;
	B = 16'hbd6e;
	ans_a = 16'h514e;
	#20
	A = 16'h3cc1;
	B = 16'hbcbe;
	ans_a = 16'h5121;
	#20
	A = 16'hbb2d;
	B = 16'h3f3d;
	ans_a = 16'h50ed;
	#20
	A = 16'h3d55;
	B = 16'h3eec;
	ans_a = 16'h5137;
	#20
	A = 16'h3398;
	B = 16'hbc0d;
	ans_a = 16'h512f;
	#20
	A = 16'hb4b3;
	B = 16'hbf4a;
	ans_a = 16'h5140;
	#20
	A = 16'h37e6;
	B = 16'hbd26;
	ans_a = 16'h512c;
	#20
	A = 16'h3cd5;
	B = 16'h3fe4;
	ans_a = 16'h5178;
	#20
	A = 16'h3f15;
	B = 16'h3fbb;
	ans_a = 16'h51e6;
	#20
	A = 16'ha9ee;
	B = 16'h3cb8;
	ans_a = 16'h51e4;
	#20
	A = 16'h3835;
	B = 16'h3d4f;
	ans_a = 16'h51fa;
	#20
	A = 16'h3868;
	B = 16'h3a4b;
	ans_a = 16'h5208;
	#20
	A = 16'h3c72;
	B = 16'h2528;
	ans_a = 16'h5209;
	#20
	A = 16'h3dac;
	B = 16'hb162;
	ans_a = 16'h5201;
	#20
	A = 16'h3793;
	B = 16'hbe64;
	ans_a = 16'h51e9;
	#20
	A = 16'h3e09;
	B = 16'hbb04;
	ans_a = 16'h51bf;
	#20
	A = 16'hb940;
	B = 16'h3e1e;
	ans_a = 16'h519f;
	#20
	A = 16'h3d3e;
	B = 16'hbd10;
	ans_a = 16'h516a;
	#20
	A = 16'h3eff;
	B = 16'h3d24;
	ans_a = 16'h51b2;
	#20
	A = 16'h3f9f;
	B = 16'hbab7;
	ans_a = 16'h517f;
	#20
	A = 16'h3e3f;
	B = 16'h343d;
	ans_a = 16'h518c;
	#20
	A = 16'h3dd9;
	B = 16'h390d;
	ans_a = 16'h51aa;
	#20
	A = 16'hbfed;
	B = 16'hbda3;
	ans_a = 16'h5203;
	#20
	A = 16'h3e4b;
	B = 16'h37c2;
	ans_a = 16'h521b;
	#20
	A = 16'hbf52;
	B = 16'hbf97;
	ans_a = 16'h528a;
	#20
	A = 16'h314a;
	B = 16'h3301;
	ans_a = 16'h528b;
	#20
	A = 16'hb301;
	B = 16'h3fd8;
	ans_a = 16'h527d;
	#20
	A = 16'h3f55;
	B = 16'h3e38;
	ans_a = 16'h52d8;
	#20
	A = 16'h36ce;
	B = 16'h3ed0;
	ans_a = 16'h52ef;
	#20
	A = 16'h3fd5;
	B = 16'hb566;
	ans_a = 16'h52da;
	#20
	A = 16'h368b;
	B = 16'h3c13;
	ans_a = 16'h52e7;
	#20
	A = 16'h3c41;
	B = 16'hb9df;
	ans_a = 16'h52ce;
	#20
	A = 16'h3e4e;
	B = 16'hb8a6;
	ans_a = 16'h52b1;
	#20
	A = 16'hbf68;
	B = 16'hbdaf;
	ans_a = 16'h5305;
	#20
	A = 16'h37e5;
	B = 16'h316d;
	ans_a = 16'h5308;
	#20
	A = 16'h291d;
	B = 16'hb96e;
	ans_a = 16'h5307;
	#20
	A = 16'h3dc2;
	B = 16'hbb84;
	ans_a = 16'h52dc;
	#20
	A = 16'h3a38;
	B = 16'h3c9f;
	ans_a = 16'h52f9;
	#20
	A = 16'h38af;
	B = 16'h3c8b;
	ans_a = 16'h530e;
	#20
	A = 16'h3fe1;
	B = 16'h3de7;
	ans_a = 16'h536b;
	#20
	A = 16'hbe33;
	B = 16'h34dd;
	ans_a = 16'h535c;
	#20
	A = 16'h3c23;
	B = 16'hbe15;
	ans_a = 16'h532a;
	#20
	A = 16'hb2cc;
	B = 16'h3d99;
	ans_a = 16'h5320;
	#20
	A = 16'h3b40;
	B = 16'h30b9;
	ans_a = 16'h5324;
	#20
	A = 16'hbae1;
	B = 16'hbd91;
	ans_a = 16'h534a;
	#20
	A = 16'h349d;
	B = 16'h3cd0;
	ans_a = 16'h5355;
	#20
	A = 16'h33e1;
	B = 16'h2daa;
	ans_a = 16'h5356;
	#20
	A = 16'hbd48;
	B = 16'h3e5a;
	ans_a = 16'h5313;
	#20
	A = 16'hbcdb;
	B = 16'h3e0e;
	ans_a = 16'h52d8;
	#20
	A = 16'hb4b5;
	B = 16'hb9df;
	ans_a = 16'h52df;
	#20
	A = 16'hb9d6;
	B = 16'hbc52;
	ans_a = 16'h52f8;
	#20
	A = 16'h3ba1;
	B = 16'h3b8c;
	ans_a = 16'h5315;
	#20
	A = 16'hb8f1;
	B = 16'hbb3a;
	ans_a = 16'h5327;
	#20
	A = 16'hba95;
	B = 16'hbaf1;
	ans_a = 16'h533e;
	#20
	A = 16'h3706;
	B = 16'h2a7e;
	ans_a = 16'h533f;
	#20
	A = 16'hbff8;
	B = 16'h3fc7;
	ans_a = 16'h52c3;
	#20
	A = 16'hbb9e;
	B = 16'hbfdc;
	ans_a = 16'h52ff;
	#20
	A = 16'hbc5d;
	B = 16'hb973;
	ans_a = 16'h5317;
	#20
	A = 16'h3fa7;
	B = 16'hbbc5;
	ans_a = 16'h52dc;
	#20
	A = 16'h3fd0;
	B = 16'ha8c6;
	ans_a = 16'h52da;
	#20
	A = 16'h3cdf;
	B = 16'hbab9;
	ans_a = 16'h52b9;
	#20
	A = 16'h3c39;
	B = 16'h3c02;
	ans_a = 16'h52db;
	#20
	A = 16'h3dbd;
	B = 16'h383b;
	ans_a = 16'h52f3;
	#20
	A = 16'h3e08;
	B = 16'hba2d;
	ans_a = 16'h52ce;
	#20
	A = 16'h35bd;
	B = 16'hbfd0;
	ans_a = 16'h52b8;
	#20
	A = 16'h35d2;
	B = 16'hbdc4;
	ans_a = 16'h52a7;
	#20
	A = 16'hbe1b;
	B = 16'h3f29;
	ans_a = 16'h5250;
	#20
	A = 16'hbf05;
	B = 16'h3bfb;
	ans_a = 16'h5218;
	#20
	A = 16'h3e3e;
	B = 16'hbd4e;
	ans_a = 16'h51d6;
	#20
	A = 16'hb84c;
	B = 16'h3f92;
	ans_a = 16'h51b5;
	#20
	A = 16'hbcfe;
	B = 16'hbdad;
	ans_a = 16'h51ee;
	#20
	A = 16'h2d49;
	B = 16'h2971;
	ans_a = 16'h51ee;
	#20
	A = 16'h3ef4;
	B = 16'h3e6c;
	ans_a = 16'h5247;
	#20
	A = 16'hb81c;
	B = 16'h3cee;
	ans_a = 16'h5233;
	#20
	A = 16'h35e0;
	B = 16'h3aca;
	ans_a = 16'h523d;
	#20
	A = 16'h3a43;
	B = 16'hbcdf;
	ans_a = 16'h521e;
	#20
	A = 16'hbbce;
	B = 16'h3e59;
	ans_a = 16'h51ec;
	#20
	A = 16'h37d7;
	B = 16'hbfeb;
	ans_a = 16'h51cd;
	#20
	A = 16'h37b8;
	B = 16'h37ca;
	ans_a = 16'h51d5;
	#20
	A = 16'h37cb;
	B = 16'h3e0d;
	ans_a = 16'h51ed;
	#20
	A = 16'h3a66;
	B = 16'h3b86;
	ans_a = 16'h5205;
	#20
	A = 16'hb608;
	B = 16'hbc5b;
	ans_a = 16'h5212;
	#20
	A = 16'h3e0b;
	B = 16'hb4f3;
	ans_a = 16'h5203;
	#20
	A = 16'h36d8;
	B = 16'h3c1f;
	ans_a = 16'h5211;
	#20
	A = 16'h3f3f;
	B = 16'hbdf9;
	ans_a = 16'h51ba;
	#20
	A = 16'hbc98;
	B = 16'hbc33;
	ans_a = 16'h51e1;
	#20
	A = 16'h3c41;
	B = 16'h3fd0;
	ans_a = 16'h5223;
	#20
	A = 16'hbce8;
	B = 16'h3ade;
	ans_a = 16'h5201;
	#20
	A = 16'hbead;
	B = 16'h3b1b;
	ans_a = 16'h51d2;
	#20
	A = 16'h3f53;
	B = 16'hbc44;
	ans_a = 16'h5194;
	#20
	A = 16'hbc60;
	B = 16'h3a32;
	ans_a = 16'h5179;
	#20
	A = 16'hb908;
	B = 16'hb213;
	ans_a = 16'h517d;
	#20
	A = 16'hb08a;
	B = 16'h3224;
	ans_a = 16'h517c;
	#20
	A = 16'h3162;
	B = 16'h3b0d;
	ans_a = 16'h5181;
	#20
	A = 16'h3e64;
	B = 16'h36eb;
	ans_a = 16'h5197;
	#20
	A = 16'hba47;
	B = 16'h38e3;
	ans_a = 16'h5188;
	#20
	A = 16'hbf52;
	B = 16'h38f4;
	ans_a = 16'h5164;
	#20
	A = 16'h348f;
	B = 16'hb746;
	ans_a = 16'h5160;
	#20
	A = 16'h3dbb;
	B = 16'hbb72;
	ans_a = 16'h5135;
	#20
	A = 16'hbf72;
	B = 16'hb9fe;
	ans_a = 16'h5162;
	#20
	A = 16'hbff5;
	B = 16'hbb38;
	ans_a = 16'h519b;
	#20
	A = 16'h3e2e;
	B = 16'h3d9b;
	ans_a = 16'h51e0;
	#20
	A = 16'hbc38;
	B = 16'h365a;
	ans_a = 16'h51d3;
	#20
	A = 16'h3d9b;
	B = 16'hb583;
	ans_a = 16'h51c4;
	#20
	A = 16'h3c94;
	B = 16'hb900;
	ans_a = 16'h51ad;
	#20
	A = 16'hbe1a;
	B = 16'h3ab8;
	ans_a = 16'h5184;
	#20
	A = 16'h3fc3;
	B = 16'h38f4;
	ans_a = 16'h51aa;
	#20
	A = 16'h3cff;
	B = 16'hbc05;
	ans_a = 16'h5182;
	#20
	A = 16'hbf99;
	B = 16'h3f4e;
	ans_a = 16'h5113;
	#20
	A = 16'hb8f0;
	B = 16'hae5d;
	ans_a = 16'h5115;
	#20
	A = 16'hbd96;
	B = 16'hbffe;
	ans_a = 16'h516e;
	#20
	A = 16'h3eca;
	B = 16'hadd3;
	ans_a = 16'h5169;
	#20
	A = 16'h3e38;
	B = 16'h3db1;
	ans_a = 16'h51b0;
	#20
	A = 16'h3c9f;
	B = 16'h30d8;
	ans_a = 16'h51b6;
	#20
	A = 16'h39a8;
	B = 16'h3d5e;
	ans_a = 16'h51d4;
	#20
	A = 16'h33a3;
	B = 16'hb97e;
	ans_a = 16'h51cf;
	#20
	A = 16'hbf68;
	B = 16'hbb23;
	ans_a = 16'h5204;
	#20
	A = 16'h3b17;
	B = 16'hbf86;
	ans_a = 16'h51cf;
	#20
	A = 16'h3ee9;
	B = 16'hb759;
	ans_a = 16'h51b6;
	#20
	A = 16'hbc94;
	B = 16'h38cb;
	ans_a = 16'h51a0;
	#20
	A = 16'hbc7d;
	B = 16'hbceb;
	ans_a = 16'h51cc;
	#20
	A = 16'h3fb0;
	B = 16'hb724;
	ans_a = 16'h51b1;
	#20
	A = 16'hbd54;
	B = 16'ha55e;
	ans_a = 16'h51b2;
	#20
	A = 16'h3dde;
	B = 16'hbcdd;
	ans_a = 16'h5179;
	#20
	A = 16'h3e12;
	B = 16'h3b5c;
	ans_a = 16'h51a6;
	#20
	A = 16'h36a8;
	B = 16'hbeac;
	ans_a = 16'h5190;
	#20
	A = 16'hb591;
	B = 16'h34ef;
	ans_a = 16'h518d;
	#20
	A = 16'h3ce2;
	B = 16'hbf18;
	ans_a = 16'h5148;
	#20
	A = 16'hbfd4;
	B = 16'h3f88;
	ans_a = 16'h50d2;
	#20
	A = 16'hba19;
	B = 16'h3f90;
	ans_a = 16'h50a4;
	#20
	A = 16'h3e1a;
	B = 16'hb174;
	ans_a = 16'h509c;
	#20
	A = 16'hbcfc;
	B = 16'h39cb;
	ans_a = 16'h507f;
	#20
	A = 16'h3d51;
	B = 16'hafa7;
	ans_a = 16'h507a;
	#20
	A = 16'hbeb6;
	B = 16'hbe7c;
	ans_a = 16'h50d1;
	#20
	A = 16'hbe6f;
	B = 16'hbfb6;
	ans_a = 16'h5134;
	#20
	A = 16'h3495;
	B = 16'hbdaf;
	ans_a = 16'h5127;
	#20
	A = 16'hbd37;
	B = 16'hb944;
	ans_a = 16'h5142;
	#20
	A = 16'hbdd9;
	B = 16'h38d4;
	ans_a = 16'h5126;
	#20
	A = 16'h38ce;
	B = 16'hbab8;
	ans_a = 16'h5116;
	#20
	A = 16'hbe01;
	B = 16'hb6fa;
	ans_a = 16'h512b;
	#20
	A = 16'h37af;
	B = 16'h3eff;
	ans_a = 16'h5146;
	#20
	A = 16'h3587;
	B = 16'hbfed;
	ans_a = 16'h5130;
	#20
	A = 16'hbd6a;
	B = 16'hbee3;
	ans_a = 16'h517b;
	#20
	A = 16'hbde8;
	B = 16'h3e14;
	ans_a = 16'h5133;
	#20
	A = 16'h3f55;
	B = 16'h3f5d;
	ans_a = 16'h519f;
	#20
	A = 16'h2822;
	B = 16'h3d5c;
	ans_a = 16'h51a0;
	#20
	A = 16'hbc94;
	B = 16'hb71e;
	ans_a = 16'h51b0;
	#20
	A = 16'h3e50;
	B = 16'h3f3f;
	ans_a = 16'h520c;
	#20
	A = 16'hb4ef;
	B = 16'h3c59;
	ans_a = 16'h5201;
	#20
	A = 16'hbf96;
	B = 16'hac27;
	ans_a = 16'h5205;
	#20
	A = 16'hbf8a;
	B = 16'h3c65;
	ans_a = 16'h51c3;
	#20
	A = 16'h3f27;
	B = 16'h3a08;
	ans_a = 16'h51ee;
	#20
	A = 16'hbca8;
	B = 16'hbd50;
	ans_a = 16'h521f;
	#20
	A = 16'h3cc1;
	B = 16'hbdfe;
	ans_a = 16'h51e6;
	#20
	A = 16'h3c3b;
	B = 16'h3d21;
	ans_a = 16'h5211;
	#20
	A = 16'hb679;
	B = 16'h3ee1;
	ans_a = 16'h51fb;
	#20
	A = 16'h3e5c;
	B = 16'h3e0a;
	ans_a = 16'h5248;
	#20
	A = 16'hb82a;
	B = 16'h38a8;
	ans_a = 16'h523e;
	#20
	A = 16'hbfff;
	B = 16'haf4c;
	ans_a = 16'h5245;
	#20
	A = 16'h3c0b;
	B = 16'hbdbf;
	ans_a = 16'h5217;
	#20
	A = 16'hbf58;
	B = 16'hb71e;
	ans_a = 16'h5231;
	#20
	A = 16'h3cd8;
	B = 16'hbbbc;
	ans_a = 16'h520c;
	#20
	A = 16'hbde8;
	B = 16'h3c42;
	ans_a = 16'h51da;
	#20
	A = 16'hbf40;
	B = 16'hbc41;
	ans_a = 16'h5218;
	#20
	A = 16'hbee6;
	B = 16'hbd07;
	ans_a = 16'h525d;
	#20
	A = 16'hbe04;
	B = 16'hb613;
	ans_a = 16'h526f;
	#20
	A = 16'h3a94;
	B = 16'h3be8;
	ans_a = 16'h5289;
	#20
	A = 16'hb1fd;
	B = 16'hbd1d;
	ans_a = 16'h5291;
	#20
	A = 16'h3b20;
	B = 16'h29b1;
	ans_a = 16'h5292;
	#20
	A = 16'hbf45;
	B = 16'h3dca;
	ans_a = 16'h523e;
	#20
	A = 16'h387e;
	B = 16'h3a75;
	ans_a = 16'h524c;
	#20
	A = 16'h3df9;
	B = 16'hb1bb;
	ans_a = 16'h5243;
	#20
	A = 16'hb506;
	B = 16'hbcf4;
	ans_a = 16'h524f;
	#20
	A = 16'hb6e0;
	B = 16'h3fba;
	ans_a = 16'h5234;
	#20
	A = 16'h3e1d;
	B = 16'hb730;
	ans_a = 16'h521e;
	#20
	A = 16'hb0ef;
	B = 16'h3d34;
	ans_a = 16'h5218;
	#20
	A = 16'hbc8d;
	B = 16'hbd49;
	ans_a = 16'h5248;
	#20
	A = 16'hb99e;
	B = 16'hb16b;
	ans_a = 16'h524c;
	#20
	A = 16'ha725;
	B = 16'hb840;
	ans_a = 16'h524c;
	#20
	A = 16'h33a1;
	B = 16'hbedc;
	ans_a = 16'h523f;
	#20
	A = 16'h3d97;
	B = 16'h30c9;
	ans_a = 16'h5246;
	#20
	A = 16'h36b2;
	B = 16'hb8b3;
	ans_a = 16'h523e;
	#20
	A = 16'h3e69;
	B = 16'h3fcc;
	ans_a = 16'h52a2;
	#20
	A = 16'hbd10;
	B = 16'hbdf3;
	ans_a = 16'h52de;
	#20
	A = 16'hbeb3;
	B = 16'hb514;
	ans_a = 16'h52ef;
	#20
	A = 16'hbd73;
	B = 16'hbcbb;
	ans_a = 16'h5323;
	#20
	A = 16'h3a16;
	B = 16'h34ac;
	ans_a = 16'h532a;
	#20
	A = 16'h3a95;
	B = 16'h23e5;
	ans_a = 16'h532a;
	#20
	A = 16'hbc93;
	B = 16'hbf4b;
	ans_a = 16'h536d;
	#20
	A = 16'hbd88;
	B = 16'hb94b;
	ans_a = 16'h538a;
	#20
	A = 16'hb815;
	B = 16'hb77f;
	ans_a = 16'h5392;
	#20
	A = 16'hbcb8;
	B = 16'h3fab;
	ans_a = 16'h534a;
	#20
	A = 16'hbeba;
	B = 16'hafab;
	ans_a = 16'h5350;
	#20
	A = 16'haf0e;
	B = 16'hbf03;
	ans_a = 16'h5356;
	#20
	A = 16'h3d4f;
	B = 16'hbb2c;
	ans_a = 16'h5330;
	#20
	A = 16'hbc49;
	B = 16'hbf51;
	ans_a = 16'h536f;
	#20
	A = 16'h3491;
	B = 16'h38f3;
	ans_a = 16'h5375;
	#20
	A = 16'hb6cd;
	B = 16'hbd85;
	ans_a = 16'h5388;
	#20
	A = 16'h3ac8;
	B = 16'h2db6;
	ans_a = 16'h538a;
	#20
	A = 16'h3d0e;
	B = 16'hb934;
	ans_a = 16'h5370;
	#20
	A = 16'hbde9;
	B = 16'hb6d2;
	ans_a = 16'h5384;
	#20
	A = 16'h3f21;
	B = 16'hbfa9;
	ans_a = 16'h5317;
	#20
	A = 16'h3d05;
	B = 16'hbfdb;
	ans_a = 16'h52c8;
	#20
	A = 16'hb422;
	B = 16'hb78e;
	ans_a = 16'h52cc;
	#20
	A = 16'hac4e;
	B = 16'hbc79;
	ans_a = 16'h52ce;
	#20
	A = 16'h3fb0;
	B = 16'hb473;
	ans_a = 16'h52bd;
	#20
	A = 16'hbf24;
	B = 16'h3d07;
	ans_a = 16'h5275;
	#20
	A = 16'hb9c5;
	B = 16'hbb5b;
	ans_a = 16'h528a;
	#20
	A = 16'h3c4c;
	B = 16'hbeab;
	ans_a = 16'h5251;
	#20
	A = 16'hbcd3;
	B = 16'h3c3f;
	ans_a = 16'h5228;
	#20
	A = 16'h3231;
	B = 16'hbd32;
	ans_a = 16'h5220;
	#20
	A = 16'ha030;
	B = 16'h34a0;
	ans_a = 16'h5220;
	#20
	A = 16'h3da0;
	B = 16'hbfa4;
	ans_a = 16'h51ca;
	#20
	A = 16'h3551;
	B = 16'h3e59;
	ans_a = 16'h51db;
	#20
	A = 16'h3d43;
	B = 16'h3cd5;
	ans_a = 16'h520e;
	#20
	A = 16'h3d7f;
	B = 16'h3b0c;
	ans_a = 16'h5235;
	#20
	A = 16'h3ca8;
	B = 16'hbf98;
	ans_a = 16'h51ee;
	#20
	A = 16'h3baf;
	B = 16'h3d28;
	ans_a = 16'h5216;
	#20
	A = 16'hbcfe;
	B = 16'hb004;
	ans_a = 16'h521b;
	#20
	A = 16'h38f0;
	B = 16'hbd0a;
	ans_a = 16'h5202;
	#20
	A = 16'h3cf9;
	B = 16'hbbbc;
	ans_a = 16'h51dc;
	#20
	A = 16'hb7b4;
	B = 16'h2f35;
	ans_a = 16'h51da;
	#20
	A = 16'hbcda;
	B = 16'h3d11;
	ans_a = 16'h51a9;
	#20
	A = 16'hba05;
	B = 16'hbe02;
	ans_a = 16'h51cd;
	#20
	A = 16'hbc39;
	B = 16'h3b09;
	ans_a = 16'h51af;
	#20
	A = 16'hbeb2;
	B = 16'h354f;
	ans_a = 16'h519d;
	#20
	A = 16'h3c9f;
	B = 16'h3f0a;
	ans_a = 16'h51de;
	#20
	A = 16'hbcd7;
	B = 16'h3a61;
	ans_a = 16'h51bf;
	#20
	A = 16'h357e;
	B = 16'h397e;
	ans_a = 16'h51c7;
	#20
	A = 16'h3ce8;
	B = 16'hb89b;
	ans_a = 16'h51b0;
	#20
	A = 16'h3a5a;
	B = 16'h339c;
	ans_a = 16'h51b6;
	#20
	A = 16'h397a;
	B = 16'hbdd4;
	ans_a = 16'h5196;
	#20
	A = 16'hbf35;
	B = 16'hbad2;
	ans_a = 16'h51c7;
	#20
	A = 16'h3f6d;
	B = 16'h3af3;
	ans_a = 16'h51fb;
	#20
	A = 16'hbdb7;
	B = 16'hb9f6;
	ans_a = 16'h521d;
	#20
	A = 16'hb89c;
	B = 16'hbfce;
	ans_a = 16'h5241;
	#20
	A = 16'hb339;
	B = 16'h3e31;
	ans_a = 16'h5236;
	#20
	A = 16'h3e4d;
	B = 16'h3b65;
	ans_a = 16'h5265;
	#20
	A = 16'h3668;
	B = 16'h3b29;
	ans_a = 16'h5270;
	#20
	A = 16'hbe5c;
	B = 16'hb944;
	ans_a = 16'h5292;
	#20
	A = 16'hbc5e;
	B = 16'hbc98;
	ans_a = 16'h52ba;
	#20
	A = 16'hb9ec;
	B = 16'hb141;
	ans_a = 16'h52be;
	#20
	A = 16'hbf91;
	B = 16'hbef7;
	ans_a = 16'h5327;
	#20
	A = 16'h37eb;
	B = 16'h3e26;
	ans_a = 16'h533f;
	#20
	A = 16'h3dd1;
	B = 16'h3cc0;
	ans_a = 16'h5376;
	#20
	A = 16'h350d;
	B = 16'hbe43;
	ans_a = 16'h5366;
	#20
	A = 16'h3e12;
	B = 16'hbcca;
	ans_a = 16'h532c;
	#20
	A = 16'hbf47;
	B = 16'h3baa;
	ans_a = 16'h52f4;
	#20
	A = 16'hbdff;
	B = 16'hbb7d;
	ans_a = 16'h5321;
	#20
	A = 16'hbd4a;
	B = 16'hb72c;
	ans_a = 16'h5334;
	#20
	A = 16'h3d33;
	B = 16'h378b;
	ans_a = 16'h5348;
	#20
	A = 16'hbca9;
	B = 16'h3519;
	ans_a = 16'h533c;
	#20
	A = 16'h3fcc;
	B = 16'h3e17;
	ans_a = 16'h539b;
	#20
	A = 16'h3820;
	B = 16'h3cf5;
	ans_a = 16'h53af;
	#20
	A = 16'hbfff;
	B = 16'hbf95;
	ans_a = 16'h5414;
	#20
	A = 16'h3e67;
	B = 16'hbe43;
	ans_a = 16'h53d8;
	#20
	A = 16'hbc3b;
	B = 16'hbc5f;
	ans_a = 16'h53fd;
	#20
	A = 16'hbaab;
	B = 16'h3f7b;
	ans_a = 16'h53cb;
	#20
	A = 16'hb5ac;
	B = 16'h3cee;
	ans_a = 16'h53bd;
	#20
	A = 16'h3c0c;
	B = 16'h3e89;
	ans_a = 16'h53f2;
	#20
	A = 16'hbdb1;
	B = 16'hb17f;
	ans_a = 16'h53fa;
	#20
	A = 16'hb511;
	B = 16'h2033;
	ans_a = 16'h53fa;
	#20
	A = 16'hb839;
	B = 16'hbe2e;
	ans_a = 16'h540a;
	#20
	A = 16'hacee;
	B = 16'hbd7f;
	ans_a = 16'h540c;
	#20
	A = 16'h3e79;
	B = 16'hb454;
	ans_a = 16'h5405;
	#20
	A = 16'h2c36;
	B = 16'hbdcc;
	ans_a = 16'h5403;
	#20
	A = 16'h3c9e;
	B = 16'hbe02;
	ans_a = 16'h53cf;
	#20
	A = 16'hbadf;
	B = 16'hbcb1;
	ans_a = 16'h53ef;
	#20
	A = 16'ha4e6;
	B = 16'hb935;
	ans_a = 16'h53ef;
	#20
	A = 16'hbfc9;
	B = 16'hb7b2;
	ans_a = 16'h5406;
	#20
	A = 16'h333b;
	B = 16'h2a85;
	ans_a = 16'h5406;
	#20
	A = 16'h3ca7;
	B = 16'hbf72;
	ans_a = 16'h53c7;
	#20
	A = 16'h33d5;
	B = 16'h3df5;
	ans_a = 16'h53d3;
	#20
	A = 16'h39d0;
	B = 16'hb8e0;
	ans_a = 16'h53c5;
	#20
	A = 16'h34da;
	B = 16'h3694;
	ans_a = 16'h53c9;
	#20
	A = 16'hb43c;
	B = 16'h3edb;
	ans_a = 16'h53ba;
	#20
	A = 16'h3a28;
	B = 16'h32e4;
	ans_a = 16'h53bf;
	#20
	A = 16'hbc21;
	B = 16'hbc59;
	ans_a = 16'h53e3;
	#20
	A = 16'h3c36;
	B = 16'hb9d9;
	ans_a = 16'h53ca;
	#20
	A = 16'h37bd;
	B = 16'hbf2e;
	ans_a = 16'h53ae;
	#20
	A = 16'hb47f;
	B = 16'hbfb6;
	ans_a = 16'h53bf;
	#20
	A = 16'h385e;
	B = 16'hb4ee;
	ans_a = 16'h53ba;
	#20
	A = 16'h3e7f;
	B = 16'hbea3;
	ans_a = 16'h5364;
	#20
	A = 16'h3be4;
	B = 16'h3654;
	ans_a = 16'h5370;
	#20
	A = 16'hb993;
	B = 16'hbebb;
	ans_a = 16'h5396;
	#20
	A = 16'h2c7f;
	B = 16'hbb65;
	ans_a = 16'h5394;
	#20
	A = 16'hb9e8;
	B = 16'hbf58;
	ans_a = 16'h53bf;
	#20
	A = 16'h3812;
	B = 16'h3cac;
	ans_a = 16'h53d2;
	#20
	A = 16'hb675;
	B = 16'hb13c;
	ans_a = 16'h53d4;
	#20
	A = 16'hb636;
	B = 16'hb5b9;
	ans_a = 16'h53d8;
	#20
	A = 16'hbac9;
	B = 16'hba2c;
	ans_a = 16'h53ed;
	#20
	A = 16'hba20;
	B = 16'h3a73;
	ans_a = 16'h53d9;
	#20
	A = 16'h3dc4;
	B = 16'h3f40;
	ans_a = 16'h5416;
	#20
	A = 16'h38a6;
	B = 16'hb41c;
	ans_a = 16'h5414;
	#20
	A = 16'h3da3;
	B = 16'h3bf5;
	ans_a = 16'h542a;
	#20
	A = 16'h3a91;
	B = 16'h2fd4;
	ans_a = 16'h542c;
	#20
	A = 16'h34c0;
	B = 16'h3c5d;
	ans_a = 16'h5431;
	#20
	A = 16'h3303;
	B = 16'hb536;
	ans_a = 16'h5430;
	#20
	A = 16'hb908;
	B = 16'hb8fb;
	ans_a = 16'h5436;
	#20
	A = 16'h311b;
	B = 16'hbcd7;
	ans_a = 16'h5433;
	#20
	A = 16'hbda1;
	B = 16'hbcc5;
	ans_a = 16'h544e;
	#20
	A = 16'hb2e5;
	B = 16'h3b4d;
	ans_a = 16'h544b;
	#20
	A = 16'hbfd3;
	B = 16'h39f8;
	ans_a = 16'h5434;
	#20
	A = 16'h38ed;
	B = 16'h36f7;
	ans_a = 16'h5438;
	#20
	A = 16'hb650;
	B = 16'h3e55;
	ans_a = 16'h542e;
	#20
	A = 16'h3737;
	B = 16'h3cb6;
	ans_a = 16'h5436;
	#20
	A = 16'h3a79;
	B = 16'h3d9e;
	ans_a = 16'h5448;
	#20
	A = 16'hbf42;
	B = 16'hba04;
	ans_a = 16'h545e;
	#20
	A = 16'hbdc1;
	B = 16'hbbea;
	ans_a = 16'h5475;
	#20
	A = 16'h3f32;
	B = 16'h3af6;
	ans_a = 16'h548e;
	#20
	A = 16'h3c89;
	B = 16'h37ac;
	ans_a = 16'h5497;
	#20
	A = 16'h3cb4;
	B = 16'h36ec;
	ans_a = 16'h549f;
	#20
	A = 16'hba89;
	B = 16'h3e20;
	ans_a = 16'h548b;
	#20
	A = 16'h38fe;
	B = 16'hbb58;
	ans_a = 16'h5482;
	#20
	A = 16'h3d81;
	B = 16'h2548;
	ans_a = 16'h5482;
	#20
	A = 16'hb932;
	B = 16'hb933;
	ans_a = 16'h5489;
	#20
	A = 16'hb4d4;
	B = 16'h3ed0;
	ans_a = 16'h5481;
	#20
	A = 16'hbcad;
	B = 16'h3f50;
	ans_a = 16'h545f;
	#20
	A = 16'h3538;
	B = 16'h3fff;
	ans_a = 16'h5469;
	#20
	A = 16'hb853;
	B = 16'h3fb2;
	ans_a = 16'h5458;
	#20
	A = 16'hb660;
	B = 16'hbdb7;
	ans_a = 16'h5461;
	#20
	A = 16'hbf68;
	B = 16'h3d16;
	ans_a = 16'h543b;
	#20
	A = 16'hbcc6;
	B = 16'h3d93;
	ans_a = 16'h5420;
	#20
	A = 16'hbc6f;
	B = 16'h3876;
	ans_a = 16'h5416;
	#20
	A = 16'hbe3b;
	B = 16'h3d98;
	ans_a = 16'h53e6;
	#20
	A = 16'hb9df;
	B = 16'hb5ff;
	ans_a = 16'h53ef;
	#20
	A = 16'ha0c1;
	B = 16'hbdfa;
	ans_a = 16'h53ef;
	#20
	A = 16'h3bd4;
	B = 16'hb41d;
	ans_a = 16'h53e7;
	#20
	A = 16'hbc79;
	B = 16'h2f33;
	ans_a = 16'h53e3;
	#20
	A = 16'h386b;
	B = 16'h3f46;
	ans_a = 16'h5402;
	#20
	A = 16'h3b6c;
	B = 16'h3938;
	ans_a = 16'h540c;
	#20
	A = 16'h3004;
	B = 16'h3e3e;
	ans_a = 16'h540f;
	#20
	A = 16'hb7b4;
	B = 16'h3d44;
	ans_a = 16'h5405;
	#20
	A = 16'hbe7a;
	B = 16'h3817;
	ans_a = 16'h53f0;
	#20
	A = 16'h3e1b;
	B = 16'h3d6e;
	ans_a = 16'h5419;
	#20
	A = 16'h3991;
	B = 16'h3c43;
	ans_a = 16'h5425;
	#20
	A = 16'hb454;
	B = 16'hbe47;
	ans_a = 16'h542c;
	#20
	A = 16'hbe10;
	B = 16'h3ac8;
	ans_a = 16'h5417;
	#20
	A = 16'hbddc;
	B = 16'hbd49;
	ans_a = 16'h5436;
	#20
	A = 16'h3473;
	B = 16'hb883;
	ans_a = 16'h5433;
	#20
	A = 16'h360b;
	B = 16'hb363;
	ans_a = 16'h5432;
	#20
	A = 16'h343f;
	B = 16'h3bbd;
	ans_a = 16'h5436;
	#20
	A = 16'hbee3;
	B = 16'h396c;
	ans_a = 16'h5423;
	#20
	A = 16'hbfc7;
	B = 16'hb0c1;
	ans_a = 16'h5428;
	#20
	A = 16'hb8c1;
	B = 16'hbce6;
	ans_a = 16'h5434;
	#20
	A = 16'hbc89;
	B = 16'h3c66;
	ans_a = 16'h5420;
	#20
	A = 16'h3584;
	B = 16'hbccf;
	ans_a = 16'h5419;
	#20
	A = 16'h3b91;
	B = 16'h3e0c;
	ans_a = 16'h5430;
	#20
	A = 16'hb278;
	B = 16'hbdec;
	ans_a = 16'h5435;
	#20
	A = 16'hbf99;
	B = 16'hbeda;
	ans_a = 16'h5469;
	#20
	A = 16'hbe86;
	B = 16'hbac8;
	ans_a = 16'h547f;
	#20
	A = 16'h3b6e;
	B = 16'hb463;
	ans_a = 16'h547b;
	#20
	A = 16'h3c59;
	B = 16'h3adf;
	ans_a = 16'h548a;
	#20
	A = 16'hbcec;
	B = 16'h39e0;
	ans_a = 16'h547c;
	#20
	A = 16'h3ff6;
	B = 16'h3fbf;
	ans_a = 16'h54ba;
	#20
	A = 16'hbd97;
	B = 16'hbe11;
	ans_a = 16'h54dc;
	#20
	A = 16'h3d35;
	B = 16'hb78a;
	ans_a = 16'h54d2;
	#20
	A = 16'h2fd5;
	B = 16'hbf96;
	ans_a = 16'h54ce;
	#20
	A = 16'h3c5b;
	B = 16'hb8f1;
	ans_a = 16'h54c3;
	#20
	A = 16'hb827;
	B = 16'hb59a;
	ans_a = 16'h54c6;
	#20
	A = 16'hb369;
	B = 16'h3d52;
	ans_a = 16'h54c1;
	#20
	A = 16'h3e62;
	B = 16'h3c7f;
	ans_a = 16'h54de;
	#20
	A = 16'h3552;
	B = 16'h30b3;
	ans_a = 16'h54df;
	#20
	A = 16'h3dc8;
	B = 16'hb9c3;
	ans_a = 16'h54ce;
	#20
	A = 16'h3883;
	B = 16'hbb69;
	ans_a = 16'h54c6;
	#20
	A = 16'hbda8;
	B = 16'hbb76;
	ans_a = 16'h54db;
	#20
	A = 16'h8dc7;
	B = 16'hbe17;
	ans_a = 16'h54db;
	#20
	A = 16'hbf58;
	B = 16'hbe00;
	ans_a = 16'h5507;
	#20
	A = 16'hbe2a;
	B = 16'hb542;
	ans_a = 16'h550f;
	#20
	A = 16'h3c42;
	B = 16'h3b6c;
	ans_a = 16'h551f;
	#20
	A = 16'h3f02;
	B = 16'hbf38;
	ans_a = 16'h54ec;
	#20
	A = 16'h3a2f;
	B = 16'h398f;
	ans_a = 16'h54f5;
	#20
	A = 16'hb4f6;
	B = 16'hbd02;
	ans_a = 16'h54fb;
	#20
	A = 16'h3d7d;
	B = 16'h9373;
	ans_a = 16'h54fb;
	#20
	A = 16'hb862;
	B = 16'h3d3f;
	ans_a = 16'h54f0;
	#20
	A = 16'h38e1;
	B = 16'h3e9e;
	ans_a = 16'h5500;
	#20
	A = 16'hb700;
	B = 16'hbe5a;
	ans_a = 16'h550b;
	#20
	A = 16'h3a25;
	B = 16'h2bca;
	ans_a = 16'h550c;
	#20
	A = 16'h3a06;
	B = 16'h3cbf;
	ans_a = 16'h551a;
	#20
	A = 16'h39c0;
	B = 16'h3f10;
	ans_a = 16'h552e;
	#20
	A = 16'h3e63;
	B = 16'hbfa6;
	ans_a = 16'h54fd;
	#20
	A = 16'h36c9;
	B = 16'hbd03;
	ans_a = 16'h54f4;
	#20
	A = 16'hb822;
	B = 16'h2c72;
	ans_a = 16'h54f3;
	#20
	A = 16'h3e7e;
	B = 16'ha4c3;
	ans_a = 16'h54f3;
	#20
	A = 16'hbace;
	B = 16'h3e25;
	ans_a = 16'h54de;
	#20
	A = 16'h3c34;
	B = 16'h3536;
	ans_a = 16'h54e3;
	#20
	A = 16'h3676;
	B = 16'haed2;
	ans_a = 16'h54e2;
	#20
	A = 16'hb974;
	B = 16'hbf6e;
	ans_a = 16'h54f6;
	#20
	A = 16'ha500;
	B = 16'hbf5a;
	ans_a = 16'h54f7;
	#20
	A = 16'h9fa1;
	B = 16'hb85f;
	ans_a = 16'h54f7;
	#20
	A = 16'h3184;
	B = 16'h3d22;
	ans_a = 16'h54fb;
	#20
	A = 16'hbdf2;
	B = 16'h33b9;
	ans_a = 16'h54f5;
	#20
	A = 16'hbb7e;
	B = 16'h3749;
	ans_a = 16'h54ee;
	#20
	A = 16'h3e82;
	B = 16'h3339;
	ans_a = 16'h54f4;
	#20
	A = 16'hbbb6;
	B = 16'h3ba6;
	ans_a = 16'h54e5;
	#20
	A = 16'h3d4f;
	B = 16'h3c44;
	ans_a = 16'h54fc;
	#20
	A = 16'h3988;
	B = 16'hbd28;
	ans_a = 16'h54ee;
	#20
	A = 16'hbd13;
	B = 16'h3e24;
	ans_a = 16'h54cf;
	#20
	A = 16'h3e44;
	B = 16'hbc98;
	ans_a = 16'h54b2;
	#20
	A = 16'h3af6;
	B = 16'hbf10;
	ans_a = 16'h5499;
	#20
	A = 16'h3d5b;
	B = 16'hb2cf;
	ans_a = 16'h5494;
	#20
	A = 16'ha1d8;
	B = 16'h3c34;
	ans_a = 16'h5494;
	#20
	A = 16'h360c;
	B = 16'h3e7f;
	ans_a = 16'h549e;
	#20
	A = 16'ha44e;
	B = 16'hadf2;
	ans_a = 16'h549e;
	#20
	A = 16'hbb99;
	B = 16'hbbb8;
	ans_a = 16'h54ad;
	#20
	A = 16'hac46;
	B = 16'hbfc6;
	ans_a = 16'h54af;
	#20
	A = 16'hbd75;
	B = 16'h3c3c;
	ans_a = 16'h5498;
	#20
	A = 16'hb4f5;
	B = 16'h3f6d;
	ans_a = 16'h548f;
	#20
	A = 16'h3d8b;
	B = 16'h3b3f;
	ans_a = 16'h54a3;
	#20
	A = 16'hb0bc;
	B = 16'hb913;
	ans_a = 16'h54a5;
	#20
	A = 16'h3fe8;
	B = 16'h3b8d;
	ans_a = 16'h54c3;
	#20
	A = 16'h3d0a;
	B = 16'h3638;
	ans_a = 16'h54cb;
	#20
	A = 16'hbc34;
	B = 16'h3b1d;
	ans_a = 16'h54bc;
	#20
	A = 16'hbe8a;
	B = 16'hbf20;
	ans_a = 16'h54eb;
	#20
	A = 16'hb925;
	B = 16'h3ab6;
	ans_a = 16'h54e2;
	#20
	A = 16'h2e81;
	B = 16'ha8e8;
	ans_a = 16'h54e2;
	#20
	A = 16'hbc7e;
	B = 16'h39cf;
	ans_a = 16'h54d5;
	#20
	A = 16'hba5b;
	B = 16'h393a;
	ans_a = 16'h54cd;
	#20
	A = 16'h3cdd;
	B = 16'h33c8;
	ans_a = 16'h54d2;
	#20
	A = 16'hb1a0;
	B = 16'haa01;
	ans_a = 16'h54d2;
	#20
	A = 16'h2ec0;
	B = 16'h3d09;
	ans_a = 16'h54d4;
	#20
	A = 16'hbf19;
	B = 16'h398a;
	ans_a = 16'h54c0;
	#20
	A = 16'h36f8;
	B = 16'h3162;
	ans_a = 16'h54c1;
	#20
	A = 16'hbc91;
	B = 16'h375d;
	ans_a = 16'h54b9;
	#20
	A = 16'h3fa9;
	B = 16'h342f;
	ans_a = 16'h54c1;
	#20
	A = 16'h3a4a;
	B = 16'h34d7;
	ans_a = 16'h54c5;
	#20
	A = 16'hb43e;
	B = 16'h29dc;
	ans_a = 16'h54c5;
	#20
	A = 16'hba73;
	B = 16'hb33f;
	ans_a = 16'h54c8;
	#20
	A = 16'h3e47;
	B = 16'hb7dd;
	ans_a = 16'h54bc;
	#20
	A = 16'hbc07;
	B = 16'h3541;
	ans_a = 16'h54b7;
	#20
	A = 16'h3c35;
	B = 16'hbebe;
	ans_a = 16'h549b;
	#20
	A = 16'hbe1a;
	B = 16'hbf43;
	ans_a = 16'h54c7;
	#20
	A = 16'hbfe2;
	B = 16'hb5a1;
	ans_a = 16'h54d2;
	#20
	A = 16'h32c0;
	B = 16'hbe62;
	ans_a = 16'h54cd;
	#20
	A = 16'hbdc2;
	B = 16'h3f79;
	ans_a = 16'h54a2;
	#20
	A = 16'h39c5;
	B = 16'hbf3d;
	ans_a = 16'h548d;
	#20
	A = 16'hb78f;
	B = 16'h31d3;
	ans_a = 16'h548c;
	#20
	A = 16'hb465;
	B = 16'hbf01;
	ans_a = 16'h5494;
	#20
	A = 16'hbfca;
	B = 16'h3fe8;
	ans_a = 16'h5456;
	#20
	A = 16'h3db8;
	B = 16'hb991;
	ans_a = 16'h5446;
	#20
	A = 16'h3c39;
	B = 16'hb535;
	ans_a = 16'h5441;
	#20
	A = 16'h3f12;
	B = 16'h3ab4;
	ans_a = 16'h5459;
	#20
	A = 16'h3c8b;
	B = 16'hbe92;
	ans_a = 16'h543b;
	#20
	A = 16'hbab6;
	B = 16'h3f09;
	ans_a = 16'h5423;
	#20
	A = 16'hbe12;
	B = 16'hbe45;
	ans_a = 16'h5449;
	#20
	A = 16'h3d8c;
	B = 16'hb95c;
	ans_a = 16'h543a;
	#20
	A = 16'hbf6e;
	B = 16'h3b84;
	ans_a = 16'h541e;
	#20
	A = 16'h3cd6;
	B = 16'hbe9b;
	ans_a = 16'h53fc;
	#20
	A = 16'hbefd;
	B = 16'h3984;
	ans_a = 16'h53d5;
	#20
	A = 16'h3150;
	B = 16'h38de;
	ans_a = 16'h53d8;
	#20
	A = 16'h2f2c;
	B = 16'hbd4e;
	ans_a = 16'h53d3;
	#20
	A = 16'h395f;
	B = 16'hbed3;
	ans_a = 16'h53ae;
	#20
	A = 16'h3858;
	B = 16'hb479;
	ans_a = 16'h53a9;
	#20
	A = 16'h3d58;
	B = 16'hbd4e;
	ans_a = 16'h5370;
	#20
	A = 16'hbbf5;
	B = 16'hb49b;
	ans_a = 16'h5379;
	#20
	A = 16'haf60;
	B = 16'h3e69;
	ans_a = 16'h5373;
	#20
	A = 16'h3be3;
	B = 16'hb753;
	ans_a = 16'h5365;
	#20
	A = 16'h3d2d;
	B = 16'hbfff;
	ans_a = 16'h5312;
	#20
	A = 16'h3ba7;
	B = 16'h3136;
	ans_a = 16'h5317;
	#20
	A = 16'hbeb5;
	B = 16'h3d2a;
	ans_a = 16'h52d2;
	#20
	A = 16'hbf00;
	B = 16'hbd6a;
	ans_a = 16'h531e;
	#20
	A = 16'h3c17;
	B = 16'hbf3e;
	ans_a = 16'h52e3;
	#20
	A = 16'h3e24;
	B = 16'hb84d;
	ans_a = 16'h52c9;
	#20
	A = 16'h38f1;
	B = 16'h3df0;
	ans_a = 16'h52e6;
	#20
	A = 16'hbb6c;
	B = 16'hb91e;
	ans_a = 16'h52f9;
	#20
	A = 16'h3d0a;
	B = 16'hae14;
	ans_a = 16'h52f5;
	#20
	A = 16'hbf1a;
	B = 16'h3acf;
	ans_a = 16'h52c5;
	#20
	A = 16'hbf7f;
	B = 16'h3c06;
	ans_a = 16'h5289;
	#20
	A = 16'hb579;
	B = 16'hbbfd;
	ans_a = 16'h5294;
	#20
	A = 16'hbb2d;
	B = 16'h2fd5;
	ans_a = 16'h5290;
	#20
	A = 16'h3f34;
	B = 16'h3df7;
	ans_a = 16'h52e6;
	#20
	A = 16'h36c8;
	B = 16'h3d33;
	ans_a = 16'h52f8;
	#20
	A = 16'hbe13;
	B = 16'h3daf;
	ans_a = 16'h52b3;
	#20
	A = 16'h2eca;
	B = 16'hbda4;
	ans_a = 16'h52ae;
	#20
	A = 16'hbebe;
	B = 16'hbcee;
	ans_a = 16'h52f0;
	#20
	A = 16'h3de0;
	B = 16'h3a1d;
	ans_a = 16'h5314;
	#20
	A = 16'hbf6c;
	B = 16'hbad9;
	ans_a = 16'h5347;
	#20
	A = 16'hbf90;
	B = 16'h2e28;
	ans_a = 16'h5341;
	#20
	A = 16'h2116;
	B = 16'h39e8;
	ans_a = 16'h5341;
	#20
	A = 16'hb8ca;
	B = 16'hbe36;
	ans_a = 16'h535f;
	#20
	A = 16'h3954;
	B = 16'hbf5e;
	ans_a = 16'h5338;
	#20
	A = 16'hbec4;
	B = 16'hb38b;
	ans_a = 16'h5345;
	#20
	A = 16'h3174;
	B = 16'h3390;
	ans_a = 16'h5346;
	#20
	A = 16'hbb1c;
	B = 16'hba60;
	ans_a = 16'h535d;
	#20
	A = 16'h3981;
	B = 16'hb71f;
	ans_a = 16'h5353;
	#20
	A = 16'h3088;
	B = 16'hbd27;
	ans_a = 16'h534d;
	#20
	A = 16'h3c6b;
	B = 16'h3e03;
	ans_a = 16'h5382;
	#20
	A = 16'h382e;
	B = 16'hbe1e;
	ans_a = 16'h5368;
	#20
	A = 16'hbc3a;
	B = 16'h3f96;
	ans_a = 16'h5328;
	#20
	A = 16'hb055;
	B = 16'hbcad;
	ans_a = 16'h532d;
	#20
	A = 16'hb881;
	B = 16'h3cf0;
	ans_a = 16'h5317;
	#20
	A = 16'hbc11;
	B = 16'h3dd9;
	ans_a = 16'h52e7;
	#20
	A = 16'h3d19;
	B = 16'h3e15;
	ans_a = 16'h5325;
	#20
	A = 16'hbd85;
	B = 16'hbe16;
	ans_a = 16'h5368;
	#20
	A = 16'hbb83;
	B = 16'hb8c5;
	ans_a = 16'h537a;
	#20
	A = 16'h3e42;
	B = 16'hba49;
	ans_a = 16'h5353;
	#20
	A = 16'hba29;
	B = 16'hbd5a;
	ans_a = 16'h5374;
	#20
	A = 16'hb5d0;
	B = 16'h3cbc;
	ans_a = 16'h5366;
	#20
	A = 16'h3a66;
	B = 16'h3f3f;
	ans_a = 16'h5394;
	#20
	A = 16'hbbea;
	B = 16'h36d9;
	ans_a = 16'h5386;
	#20
	A = 16'h3eed;
	B = 16'h3e58;
	ans_a = 16'h53de;
	#20
	A = 16'h3db7;
	B = 16'hb5dd;
	ans_a = 16'h53cd;
	#20
	A = 16'hb455;
	B = 16'h3d1e;
	ans_a = 16'h53c2;
	#20
	A = 16'hbf26;
	B = 16'hb130;
	ans_a = 16'h53cb;
	#20
	A = 16'h3770;
	B = 16'hbefc;
	ans_a = 16'h53b1;
	#20
	A = 16'h3f27;
	B = 16'h3e3f;
	ans_a = 16'h5405;
	#20
	A = 16'hbd20;
	B = 16'h3961;
	ans_a = 16'h53ee;
	#20
	A = 16'h3fc3;
	B = 16'hbe56;
	ans_a = 16'h538c;
	#20
	A = 16'hb735;
	B = 16'h3a6d;
	ans_a = 16'h5380;
	#20
	A = 16'h302a;
	B = 16'h3983;
	ans_a = 16'h5383;
	#20
	A = 16'h2f90;
	B = 16'h3eef;
	ans_a = 16'h538a;
	#20
	A = 16'h363f;
	B = 16'hb3af;
	ans_a = 16'h5387;
	#20
	A = 16'ha1d2;
	B = 16'hb92c;
	ans_a = 16'h5387;
	#20
	A = 16'hbfbd;
	B = 16'h2abe;
	ans_a = 16'h5384;
	#20
	A = 16'hbd89;
	B = 16'hade2;
	ans_a = 16'h5388;
	#20
	A = 16'h3dee;
	B = 16'h321d;
	ans_a = 16'h5391;
	#20
	A = 16'hb813;
	B = 16'h2d0f;
	ans_a = 16'h5390;
	#20
	A = 16'hbd67;
	B = 16'hbf32;
	ans_a = 16'h53de;
	#20
	A = 16'hbce4;
	B = 16'h3f42;
	ans_a = 16'h5397;
	#20
	A = 16'hbc61;
	B = 16'hbc75;
	ans_a = 16'h53be;
	#20
	A = 16'hbde4;
	B = 16'hb9af;
	ans_a = 16'h53df;
	#20
	A = 16'hbc92;
	B = 16'h3a32;
	ans_a = 16'h53c3;
	#20
	A = 16'h3d7c;
	B = 16'hbcfb;
	ans_a = 16'h538c;
	#20
	A = 16'hbd91;
	B = 16'h3f00;
	ans_a = 16'h533e;
	#20
	A = 16'hbf31;
	B = 16'h3fc0;
	ans_a = 16'h52cf;
	#20
	A = 16'hbed6;
	B = 16'h3d92;
	ans_a = 16'h5283;
	#20
	A = 16'hb772;
	B = 16'hb6fe;
	ans_a = 16'h528a;
	#20
	A = 16'h3edb;
	B = 16'hacbb;
	ans_a = 16'h5286;
	#20
	A = 16'hbe5a;
	B = 16'h3d6c;
	ans_a = 16'h5241;
	#20
	A = 16'hb782;
	B = 16'h3ee0;
	ans_a = 16'h5227;
	#20
	A = 16'hbf25;
	B = 16'hbd42;
	ans_a = 16'h5272;
	#20
	A = 16'hb4a9;
	B = 16'ha014;
	ans_a = 16'h5272;
	#20
	A = 16'h3852;
	B = 16'hbadc;
	ans_a = 16'h5263;
	#20
	A = 16'h37c7;
	B = 16'hbf1d;
	ans_a = 16'h5247;
	#20
	A = 16'h3557;
	B = 16'hb99b;
	ans_a = 16'h5240;
	#20
	A = 16'hb829;
	B = 16'hbefd;
	ans_a = 16'h525d;
	#20
	A = 16'hbcce;
	B = 16'h380a;
	ans_a = 16'h524a;
	#20
	A = 16'hbabd;
	B = 16'h3e5d;
	ans_a = 16'h521f;
	#20
	A = 16'hb63f;
	B = 16'hbf7d;
	ans_a = 16'h5236;
	#20
	A = 16'hbfae;
	B = 16'hbd31;
	ans_a = 16'h5286;
	#20
	A = 16'h3046;
	B = 16'h39d9;
	ans_a = 16'h5289;
	#20
	A = 16'hbf7a;
	B = 16'h351b;
	ans_a = 16'h5276;
	#20
	A = 16'hb89d;
	B = 16'h3fbe;
	ans_a = 16'h5252;
	#20
	A = 16'h3eaa;
	B = 16'h35b2;
	ans_a = 16'h5265;
	#20
	A = 16'hbf3b;
	B = 16'h3fa9;
	ans_a = 16'h51f6;
	#20
	A = 16'h3817;
	B = 16'h39c6;
	ans_a = 16'h5202;
	#20
	A = 16'hb129;
	B = 16'hb91d;
	ans_a = 16'h5205;
	#20
	A = 16'hbca1;
	B = 16'hb5b9;
	ans_a = 16'h5212;
	#20
	A = 16'h3887;
	B = 16'hbfde;
	ans_a = 16'h51ee;
	#20
	A = 16'hbcdf;
	B = 16'hbecb;
	ans_a = 16'h5230;
	#20
	A = 16'hbc1a;
	B = 16'h3ebb;
	ans_a = 16'h51f9;
	#20
	A = 16'hac78;
	B = 16'hbfde;
	ans_a = 16'h51fd;
	#20
	A = 16'hbfbd;
	B = 16'hbde1;
	ans_a = 16'h5258;
	#20
	A = 16'h3819;
	B = 16'hbe97;
	ans_a = 16'h523d;
	#20
	A = 16'hb847;
	B = 16'hb801;
	ans_a = 16'h5246;
	#20
	A = 16'h3ebe;
	B = 16'h2987;
	ans_a = 16'h5248;
	#20
	A = 16'h38a6;
	B = 16'hbcc6;
	ans_a = 16'h5232;
	#20
	A = 16'h395b;
	B = 16'hbe97;
	ans_a = 16'h520f;
	#20
	A = 16'h3dc4;
	B = 16'h39bb;
	ans_a = 16'h5230;
	#20
	A = 16'hb481;
	B = 16'h3416;
	ans_a = 16'h522e;
	#20
	A = 16'hb79b;
	B = 16'had7e;
	ans_a = 16'h522f;
	#20
	A = 16'h3ffc;
	B = 16'hb250;
	ans_a = 16'h5222;
	#20
	A = 16'hb198;
	B = 16'hb4d8;
	ans_a = 16'h5224;
	#20
	A = 16'hb663;
	B = 16'hbf9f;
	ans_a = 16'h523c;
	#20
	A = 16'h3df2;
	B = 16'h39c9;
	ans_a = 16'h525e;
	#20
	A = 16'hba9a;
	B = 16'h37a7;
	ans_a = 16'h5251;
	#20
	A = 16'hbe2e;
	B = 16'h3ea5;
	ans_a = 16'h51ff;
	#20
	A = 16'h3790;
	B = 16'hb9bf;
	ans_a = 16'h51f4;
	#20
	A = 16'h3f28;
	B = 16'h39db;
	ans_a = 16'h521e;
	#20
	A = 16'h37e7;
	B = 16'hbcf3;
	ans_a = 16'h520a;
	#20
	A = 16'h3833;
	B = 16'hbcfe;
	ans_a = 16'h51f5;
	#20
	A = 16'h3fce;
	B = 16'hb981;
	ans_a = 16'h51ca;
	#20
	A = 16'hbdf3;
	B = 16'hbc7f;
	ans_a = 16'h5200;
	#20
	A = 16'hbe7a;
	B = 16'hbd1e;
	ans_a = 16'h5242;
	#20
	A = 16'hbaab;
	B = 16'hbc12;
	ans_a = 16'h525d;
	#20
	A = 16'h3ab2;
	B = 16'h3e70;
	ans_a = 16'h5288;
	#20
	A = 16'hb7d1;
	B = 16'hbc4f;
	ans_a = 16'h5299;
	#20
	A = 16'h3c6b;
	B = 16'hbeb9;
	ans_a = 16'h525e;
	#20
	A = 16'h3dda;
	B = 16'hb832;
	ans_a = 16'h5245;
	#20
	A = 16'hbf8a;
	B = 16'hbdaa;
	ans_a = 16'h529a;
	#20
	A = 16'hbf03;
	B = 16'hbc4f;
	ans_a = 16'h52d6;
	#20
	A = 16'h3c4e;
	B = 16'hb36c;
	ans_a = 16'h52ce;
	#20
	A = 16'h3c58;
	B = 16'hbcba;
	ans_a = 16'h52a5;
	#20
	A = 16'h3fef;
	B = 16'h3f2d;
	ans_a = 16'h5317;
	#20
	A = 16'h3dcc;
	B = 16'h3f0c;
	ans_a = 16'h5369;
	#20
	A = 16'hbff7;
	B = 16'h3c0b;
	ans_a = 16'h5329;
	#20
	A = 16'h38ee;
	B = 16'hb976;
	ans_a = 16'h531c;
	#20
	A = 16'h31ea;
	B = 16'hb4ab;
	ans_a = 16'h531a;
	#20
	A = 16'h36a7;
	B = 16'h3f33;
	ans_a = 16'h5332;
	#20
	A = 16'h3ba9;
	B = 16'h3550;
	ans_a = 16'h533c;
	#20
	A = 16'h380a;
	B = 16'hbe39;
	ans_a = 16'h5323;
	#20
	A = 16'hba98;
	B = 16'hba72;
	ans_a = 16'h5338;
	#20
	A = 16'h32f3;
	B = 16'hb93c;
	ans_a = 16'h5333;
	#20
	A = 16'h3f5a;
	B = 16'hbd8b;
	ans_a = 16'h52e2;
	#20
	A = 16'ha8e8;
	B = 16'hb007;
	ans_a = 16'h52e2;
	#20
	A = 16'h2ca5;
	B = 16'h3eb2;
	ans_a = 16'h52e6;
	#20
	A = 16'hbdac;
	B = 16'h22bb;
	ans_a = 16'h52e5;
	#20
	A = 16'hbf67;
	B = 16'hbbf2;
	ans_a = 16'h5320;
	#20
	A = 16'h39bf;
	B = 16'h308b;
	ans_a = 16'h5323;
	#20
	A = 16'h2589;
	B = 16'hac36;
	ans_a = 16'h5323;
	#20
	A = 16'h3ca3;
	B = 16'h3f38;
	ans_a = 16'h5366;
	#20
	A = 16'h3e06;
	B = 16'h3687;
	ans_a = 16'h537a;
	#20
	A = 16'hbc4f;
	B = 16'h3b79;
	ans_a = 16'h535a;
	#20
	A = 16'h3e16;
	B = 16'hbc27;
	ans_a = 16'h5327;
	#20
	A = 16'h3600;
	B = 16'h3669;
	ans_a = 16'h532c;
	#20
	A = 16'hb59d;
	B = 16'hbd59;
	ans_a = 16'h533b;
	#20
	A = 16'h38ce;
	B = 16'hb0e0;
	ans_a = 16'h5338;
	#20
	A = 16'hb983;
	B = 16'hbc8b;
	ans_a = 16'h5351;
	#20
	A = 16'hb4d2;
	B = 16'hb8d6;
	ans_a = 16'h5357;
	#20
	A = 16'habe5;
	B = 16'h3b47;
	ans_a = 16'h5355;
	#20
	A = 16'h38f4;
	B = 16'hb8ea;
	ans_a = 16'h5349;
	#20
	A = 16'hbbd4;
	B = 16'hbc92;
	ans_a = 16'h536d;
	#20
	A = 16'hbfbe;
	B = 16'h3fd0;
	ans_a = 16'h52f4;
	#20
	A = 16'h3413;
	B = 16'hbffe;
	ans_a = 16'h52e4;
	#20
	A = 16'hb579;
	B = 16'h39ce;
	ans_a = 16'h52dc;
	#20
	A = 16'hbde9;
	B = 16'hbc3b;
	ans_a = 16'h530e;
	#20
	A = 16'h34e6;
	B = 16'hb86a;
	ans_a = 16'h5309;
	#20
	A = 16'hbfe1;
	B = 16'hbdc9;
	ans_a = 16'h5364;
	#20
	A = 16'h3f62;
	B = 16'h3c1a;
	ans_a = 16'h53a1;
	#20
	A = 16'h3cc8;
	B = 16'hb93b;
	ans_a = 16'h5388;
	#20
	A = 16'h3a40;
	B = 16'h3dee;
	ans_a = 16'h53ad;
	#20
	A = 16'h3dd7;
	B = 16'hb5eb;
	ans_a = 16'h539c;
	#20
	A = 16'h39f6;
	B = 16'h3f5d;
	ans_a = 16'h53c8;
	#20
	A = 16'hbec7;
	B = 16'hbc85;
	ans_a = 16'h5403;
	#20
	A = 16'h3e18;
	B = 16'hbe9e;
	ans_a = 16'h53b5;
	#20
	A = 16'h3e1c;
	B = 16'h359e;
	ans_a = 16'h53c6;
	#20
	A = 16'hbf19;
	B = 16'h2c2b;
	ans_a = 16'h53c2;
	#20
	A = 16'hbc69;
	B = 16'ha5d3;
	ans_a = 16'h53c3;
	#20
	A = 16'h3fe6;
	B = 16'h3ecc;
	ans_a = 16'h5417;
	#20
	A = 16'hbec4;
	B = 16'hb90e;
	ans_a = 16'h5428;
	#20
	A = 16'h3cb6;
	B = 16'ha507;
	ans_a = 16'h5428;
	#20
	A = 16'h3b7e;
	B = 16'h387a;
	ans_a = 16'h5430;
	#20
	A = 16'h35a4;
	B = 16'hb028;
	ans_a = 16'h542f;
	#20
	A = 16'hbe59;
	B = 16'h34ee;
	ans_a = 16'h5427;
	#20
	A = 16'hbd81;
	B = 16'haca9;
	ans_a = 16'h5429;
	#20
	A = 16'h3274;
	B = 16'hbfd5;
	ans_a = 16'h5423;
	#20
	A = 16'h3ba2;
	B = 16'h36fd;
	ans_a = 16'h542a;
	#20
	A = 16'hbab7;
	B = 16'hba88;
	ans_a = 16'h5435;
	#20
	A = 16'h2dec;
	B = 16'h3455;
	ans_a = 16'h5435;
	#20
	A = 16'hbc07;
	B = 16'h346b;
	ans_a = 16'h5431;
	#20
	A = 16'h3cdf;
	B = 16'hbbeb;
	ans_a = 16'h541e;
	#20
	A = 16'h3940;
	B = 16'h312f;
	ans_a = 16'h5420;
	#20
	A = 16'hbc71;
	B = 16'hbfdf;
	ans_a = 16'h5443;
	#20
	A = 16'h39a3;
	B = 16'hbcb9;
	ans_a = 16'h5436;
	#20
	A = 16'h3c18;
	B = 16'hbce7;
	ans_a = 16'h5422;
	#20
	A = 16'h3be8;
	B = 16'h3e88;
	ans_a = 16'h543c;
	#20
	A = 16'h2a01;
	B = 16'h3814;
	ans_a = 16'h543c;
	#20
	A = 16'hb73f;
	B = 16'h3bc7;
	ans_a = 16'h5435;
	#20
	A = 16'h332a;
	B = 16'h3809;
	ans_a = 16'h5437;
	#20
	A = 16'hbdc7;
	B = 16'h3cb6;
	ans_a = 16'h541c;
	#20
	A = 16'h3cf6;
	B = 16'h3abc;
	ans_a = 16'h542d;
	#20
	A = 16'h3ee6;
	B = 16'hb8f9;
	ans_a = 16'h541c;
	#20
	A = 16'h381a;
	B = 16'h39da;
	ans_a = 16'h5422;
	#20
	A = 16'h36a5;
	B = 16'h2f3f;
	ans_a = 16'h5423;
	#20
	A = 16'hbcd8;
	B = 16'h385d;
	ans_a = 16'h5418;
	#20
	A = 16'h3837;
	B = 16'h3c4c;
	ans_a = 16'h5421;
	#20
	A = 16'h3dfd;
	B = 16'hb795;
	ans_a = 16'h5416;
	#20
	A = 16'h3d14;
	B = 16'hadd4;
	ans_a = 16'h5414;
	#20
	A = 16'hb9b9;
	B = 16'hac0e;
	ans_a = 16'h5415;
	#20
	A = 16'h3fb1;
	B = 16'h3d15;
	ans_a = 16'h543c;
	#20
	A = 16'h3dcd;
	B = 16'hb456;
	ans_a = 16'h5436;
	#20
	A = 16'hb895;
	B = 16'hbc70;
	ans_a = 16'h5440;
	#20
	A = 16'h3078;
	B = 16'hbb4f;
	ans_a = 16'h543e;
	#20
	A = 16'h36b9;
	B = 16'hbf6e;
	ans_a = 16'h5432;
	#20
	A = 16'h3e2e;
	B = 16'hb851;
	ans_a = 16'h5425;
	#20
	A = 16'hbc84;
	B = 16'hbc8b;
	ans_a = 16'h543a;
	#20
	A = 16'hbd5c;
	B = 16'h25d8;
	ans_a = 16'h543a;
	#20
	A = 16'hb913;
	B = 16'h3d7a;
	ans_a = 16'h542c;
	#20
	A = 16'hba32;
	B = 16'h3561;
	ans_a = 16'h5428;
	#20
	A = 16'hbbfb;
	B = 16'h3d65;
	ans_a = 16'h5412;
	#20
	A = 16'hbdc0;
	B = 16'hb664;
	ans_a = 16'h541b;
	#20
	A = 16'hbf54;
	B = 16'hba83;
	ans_a = 16'h5433;
	#20
	A = 16'hbfad;
	B = 16'hb748;
	ans_a = 16'h5441;
	#20
	A = 16'hbfb4;
	B = 16'hbc76;
	ans_a = 16'h5463;
	#20
	A = 16'ha1f6;
	B = 16'h35d5;
	ans_a = 16'h5463;
	#20
	A = 16'h3df0;
	B = 16'hbdc1;
	ans_a = 16'h5441;
	#20
	A = 16'hba42;
	B = 16'h3dcc;
	ans_a = 16'h542f;
	#20
	A = 16'h3e40;
	B = 16'hbcb4;
	ans_a = 16'h5412;
	#20
	A = 16'h3612;
	B = 16'hbd71;
	ans_a = 16'h540a;
	#20
	A = 16'h38a3;
	B = 16'h3ce1;
	ans_a = 16'h5415;
	#20
	A = 16'hbaea;
	B = 16'h3fd3;
	ans_a = 16'h53f4;
	#20
	A = 16'h3b45;
	B = 16'hb888;
	ans_a = 16'h53e4;
	#20
	A = 16'h3caf;
	B = 16'h2d9d;
	ans_a = 16'h53e7;
	#20
	A = 16'h3ef1;
	B = 16'h3d19;
	ans_a = 16'h5417;
	#20
	A = 16'h3ee6;
	B = 16'hbe9b;
	ans_a = 16'h53d3;
	#20
	A = 16'h3957;
	B = 16'hb859;
	ans_a = 16'h53c7;
	#20
	A = 16'hb82d;
	B = 16'hbdf9;
	ans_a = 16'h53e0;
	#20
	A = 16'h3eb3;
	B = 16'hb03d;
	ans_a = 16'h53d9;
	#20
	A = 16'hbc36;
	B = 16'h3d8f;
	ans_a = 16'h53aa;
	#20
	A = 16'h2b3a;
	B = 16'h3b18;
	ans_a = 16'h53ac;
	#20
	A = 16'hbb03;
	B = 16'hbe31;
	ans_a = 16'h53d7;
	#20
	A = 16'hbfaa;
	B = 16'hbc5d;
	ans_a = 16'h540d;
	#20
	A = 16'hbd42;
	B = 16'h3f86;
	ans_a = 16'h53cb;
	#20
	A = 16'hbee5;
	B = 16'h3642;
	ans_a = 16'h53b5;
	#20
	A = 16'h3f79;
	B = 16'h3f33;
	ans_a = 16'h5410;
	#20
	A = 16'hbef3;
	B = 16'h3cd5;
	ans_a = 16'h53dd;
	#20
	A = 16'h3d19;
	B = 16'hb6da;
	ans_a = 16'h53cc;
	#20
	A = 16'hbcdb;
	B = 16'h39d0;
	ans_a = 16'h53b0;
	#20
	A = 16'h3138;
	B = 16'hbd13;
	ans_a = 16'h53a9;
	#20
	A = 16'h3c38;
	B = 16'h3de5;
	ans_a = 16'h53db;
	#20
	A = 16'h3f42;
	B = 16'h36a2;
	ans_a = 16'h53f3;
	#20
	A = 16'h3a2a;
	B = 16'h3bfa;
	ans_a = 16'h5406;
	#20
	A = 16'h28f5;
	B = 16'h3990;
	ans_a = 16'h5406;
	#20
	A = 16'haa97;
	B = 16'h3339;
	ans_a = 16'h5406;
	#20
	A = 16'h381f;
	B = 16'h3f10;
	ans_a = 16'h5415;
	#20
	A = 16'h3fe7;
	B = 16'h3fb4;
	ans_a = 16'h5452;
	#20
	A = 16'hbf1e;
	B = 16'hbe34;
	ans_a = 16'h547e;
	#20
	A = 16'h3e64;
	B = 16'hb6b6;
	ans_a = 16'h5473;
	#20
	A = 16'hbf2b;
	B = 16'hb69b;
	ans_a = 16'h547f;
	#20
	A = 16'h3e38;
	B = 16'hbdde;
	ans_a = 16'h545a;
	#20
	A = 16'h3531;
	B = 16'hbf45;
	ans_a = 16'h5451;
	#20
	A = 16'h3c24;
	B = 16'hafe5;
	ans_a = 16'h544f;
	#20
	A = 16'hbc5e;
	B = 16'h3a1f;
	ans_a = 16'h5442;
	#20
	A = 16'hbabe;
	B = 16'hb546;
	ans_a = 16'h5446;
	#20
	A = 16'hb8f5;
	B = 16'h3479;
	ans_a = 16'h5443;
	#20
	A = 16'hbf50;
	B = 16'h3c27;
	ans_a = 16'h5425;
	#20
	A = 16'h3938;
	B = 16'hbe07;
	ans_a = 16'h5415;
	#20
	A = 16'hbeeb;
	B = 16'h3f50;
	ans_a = 16'h53c5;
	#20
	A = 16'hb40f;
	B = 16'h3552;
	ans_a = 16'h53c2;
	#20
	A = 16'h2a1a;
	B = 16'hb84d;
	ans_a = 16'h53c1;
	#20
	A = 16'hb8bf;
	B = 16'h33c5;
	ans_a = 16'h53bc;
	#20
	A = 16'h36d6;
	B = 16'h36cc;
	ans_a = 16'h53c2;
	#20
	A = 16'h3df5;
	B = 16'h35b8;
	ans_a = 16'h53d3;
	#20
	A = 16'h3459;
	B = 16'h36fa;
	ans_a = 16'h53d7;
	#20
	A = 16'hbc32;
	B = 16'h3dbb;
	ans_a = 16'h53a7;
	#20
	A = 16'hb3f7;
	B = 16'h3b6c;
	ans_a = 16'h53a0;
	#20
	A = 16'h3c0f;
	B = 16'h3d3d;
	ans_a = 16'h53cb;
	#20
	A = 16'h34c9;
	B = 16'hbccf;
	ans_a = 16'h53bf;
	#20
	A = 16'hbbe7;
	B = 16'h398a;
	ans_a = 16'h53a9;
	#20
	A = 16'hb88a;
	B = 16'hb4ae;
	ans_a = 16'h53ae;
	#20
	A = 16'h3f6d;
	B = 16'hb891;
	ans_a = 16'h538c;
	#20
	A = 16'h3fb7;
	B = 16'h3a09;
	ans_a = 16'h53bb;
	#20
	A = 16'h316c;
	B = 16'h3f2f;
	ans_a = 16'h53c5;
	#20
	A = 16'h3b85;
	B = 16'hbc8f;
	ans_a = 16'h53a3;
	#20
	A = 16'h3cba;
	B = 16'hb21a;
	ans_a = 16'h539c;
	#20
	A = 16'hb706;
	B = 16'hb7d4;
	ans_a = 16'h53a3;
	#20
	A = 16'hbf7e;
	B = 16'hbe90;
	ans_a = 16'h5403;
	#20
	A = 16'h399d;
	B = 16'hbf51;
	ans_a = 16'h53dd;
	#20
	A = 16'h3df3;
	B = 16'hbe9d;
	ans_a = 16'h538e;
	#20
	A = 16'h32c9;
	B = 16'hb44b;
	ans_a = 16'h538c;
	#20
	A = 16'hbff4;
	B = 16'hbb3f;
	ans_a = 16'h53c6;
	#20
	A = 16'hbc1d;
	B = 16'h3a30;
	ans_a = 16'h53ad;
	#20
	A = 16'hbf3f;
	B = 16'h3d57;
	ans_a = 16'h5360;
	#20
	A = 16'hbbc1;
	B = 16'h3e25;
	ans_a = 16'h5330;
	#20
	A = 16'hb8f6;
	B = 16'hb5c2;
	ans_a = 16'h5337;
	#20
	A = 16'hbf0c;
	B = 16'h3e64;
	ans_a = 16'h52dd;
	#20
	A = 16'h3c5f;
	B = 16'haff4;
	ans_a = 16'h52d9;
	#20
	A = 16'h3e1f;
	B = 16'hbb6d;
	ans_a = 16'h52ac;
	#20
	A = 16'h3aae;
	B = 16'h3e97;
	ans_a = 16'h52d8;
	#20
	A = 16'ha449;
	B = 16'hb7fb;
	ans_a = 16'h52d8;
	#20
	A = 16'h3939;
	B = 16'h3196;
	ans_a = 16'h52dc;
	#20
	A = 16'h339f;
	B = 16'hb9b7;
	ans_a = 16'h52d7;
	#20
	A = 16'hb787;
	B = 16'hba8a;
	ans_a = 16'h52e3;
	#20
	A = 16'hbf06;
	B = 16'hbace;
	ans_a = 16'h5313;
	#20
	A = 16'hbbbf;
	B = 16'hbd19;
	ans_a = 16'h533a;
	#20
	A = 16'hbdf3;
	B = 16'hbf18;
	ans_a = 16'h538e;
	#20
	A = 16'h3691;
	B = 16'hbfce;
	ans_a = 16'h5374;
	#20
	A = 16'hb800;
	B = 16'hbfcc;
	ans_a = 16'h5393;
	#20
	A = 16'h3ed7;
	B = 16'hbebe;
	ans_a = 16'h5337;
	#20
	A = 16'h254f;
	B = 16'h3c5d;
	ans_a = 16'h5338;
	#20
	A = 16'h3ca7;
	B = 16'hbb06;
	ans_a = 16'h5317;
	#20
	A = 16'hb85c;
	B = 16'h382e;
	ans_a = 16'h530e;
	#20
	A = 16'h3dd2;
	B = 16'h3cb1;
	ans_a = 16'h5345;
	#20
	A = 16'h3cca;
	B = 16'h3c55;
	ans_a = 16'h536e;
	#20
	A = 16'hb8f3;
	B = 16'hb6a5;
	ans_a = 16'h5376;
	#20
	A = 16'hbfa1;
	B = 16'h3c31;
	ans_a = 16'h5336;
	#20
	A = 16'hbeb1;
	B = 16'h34a5;
	ans_a = 16'h5326;
	#20
	A = 16'hae68;
	B = 16'h3708;
	ans_a = 16'h5325;
	#20
	A = 16'hbecb;
	B = 16'hb631;
	ans_a = 16'h533a;
	#20
	A = 16'hb5a8;
	B = 16'h3a4f;
	ans_a = 16'h5331;
	#20
	A = 16'hb22e;
	B = 16'h3c3d;
	ans_a = 16'h532a;
	#20
	A = 16'hb900;
	B = 16'h3341;
	ans_a = 16'h5325;
	#20
	A = 16'h3f33;
	B = 16'hba8b;
	ans_a = 16'h52f6;
	#20
	A = 16'hbece;
	B = 16'hbd23;
	ans_a = 16'h533c;
	#20
	A = 16'h3053;
	B = 16'h2cb7;
	ans_a = 16'h533c;
	#20
	A = 16'hbd9b;
	B = 16'h3f60;
	ans_a = 16'h52e9;
	#20
	A = 16'hbd7f;
	B = 16'h38ff;
	ans_a = 16'h52ce;
	#20
	A = 16'hbef7;
	B = 16'hbdd1;
	ans_a = 16'h531f;
	#20
	A = 16'hba5a;
	B = 16'hb849;
	ans_a = 16'h532d;
	#20
	A = 16'h39ea;
	B = 16'h3f1c;
	ans_a = 16'h5357;
	#20
	A = 16'h3c89;
	B = 16'hb47b;
	ans_a = 16'h534d;
	#20
	A = 16'hb671;
	B = 16'h3be3;
	ans_a = 16'h5340;
	#20
	A = 16'h3ed9;
	B = 16'h388a;
	ans_a = 16'h535f;
	#20
	A = 16'h3d3b;
	B = 16'h3811;
	ans_a = 16'h5374;
	#20
	A = 16'hba0d;
	B = 16'hb7d0;
	ans_a = 16'h5380;
	#20
	A = 16'h3571;
	B = 16'h3e5c;
	ans_a = 16'h5391;
	#20
	A = 16'h2c23;
	B = 16'h3f62;
	ans_a = 16'h5395;
	#20
	A = 16'hbedb;
	B = 16'hb88a;
	ans_a = 16'h53b4;
	#20
	A = 16'hb0e7;
	B = 16'h3ded;
	ans_a = 16'h53ad;
	#20
	A = 16'h3d11;
	B = 16'h2e27;
	ans_a = 16'h53b1;
	#20
	A = 16'h3e96;
	B = 16'hb88f;
	ans_a = 16'h5393;
	#20
	A = 16'hb9fa;
	B = 16'h1ec7;
	ans_a = 16'h5393;
	#20
	A = 16'h32e9;
	B = 16'hbd88;
	ans_a = 16'h5389;
	#20
	A = 16'h3639;
	B = 16'h3d86;
	ans_a = 16'h539a;
	#20
	A = 16'h3f97;
	B = 16'h38df;
	ans_a = 16'h53bf;
	#20
	A = 16'h37f0;
	B = 16'hb566;
	ans_a = 16'h53ba;
	#20
	A = 16'h3a0e;
	B = 16'hae2c;
	ans_a = 16'h53b8;
	#20
	A = 16'hb183;
	B = 16'hac41;
	ans_a = 16'h53b8;
	#20
	A = 16'h35f6;
	B = 16'h3e97;
	ans_a = 16'h53cc;
	#20
	A = 16'hbf60;
	B = 16'hbce3;
	ans_a = 16'h540a;
	#20
	A = 16'hb920;
	B = 16'hb728;
	ans_a = 16'h540f;
	#20
	A = 16'hb295;
	B = 16'h3caf;
	ans_a = 16'h540b;
	#20
	A = 16'hb8c7;
	B = 16'hbf8b;
	ans_a = 16'h541d;
	#20
	A = 16'hb482;
	B = 16'h3973;
	ans_a = 16'h541a;
	#20
	A = 16'h3fb9;
	B = 16'hbded;
	ans_a = 16'h53d8;
	#20
	A = 16'h3beb;
	B = 16'hb4a7;
	ans_a = 16'h53cf;
	#20
	A = 16'h392f;
	B = 16'h3f79;
	ans_a = 16'h53f6;
	#20
	A = 16'hbca7;
	B = 16'h397a;
	ans_a = 16'h53dd;
	#20
	A = 16'h3b6e;
	B = 16'had6e;
	ans_a = 16'h53da;
	#20
	A = 16'h3f9a;
	B = 16'hbcb8;
	ans_a = 16'h5392;
	#20
	A = 16'h373c;
	B = 16'hbd29;
	ans_a = 16'h537f;
	#20
	A = 16'h3e5f;
	B = 16'h322d;
	ans_a = 16'h5389;
	#20
	A = 16'h3b57;
	B = 16'hbc0a;
	ans_a = 16'h536b;
	#20
	A = 16'hb0c0;
	B = 16'hb8d6;
	ans_a = 16'h536e;
	#20
	A = 16'h3b94;
	B = 16'h392f;
	ans_a = 16'h5382;
	#20
	A = 16'h3a32;
	B = 16'h3d8f;
	ans_a = 16'h53a4;
	#20
	A = 16'hb8fc;
	B = 16'hbd40;
	ans_a = 16'h53be;
	#20
	A = 16'h3dc4;
	B = 16'h3d54;
	ans_a = 16'h53fb;
	#20
	A = 16'h3942;
	B = 16'hb918;
	ans_a = 16'h53ee;
	#20
	A = 16'h3e3c;
	B = 16'h3dfd;
	ans_a = 16'h541c;
	#20
	A = 16'h38b8;
	B = 16'h3d3c;
	ans_a = 16'h5428;
	#20
	A = 16'h3ed8;
	B = 16'hbe4d;
	ans_a = 16'h53fa;
	#20
	A = 16'h3f3b;
	B = 16'hbe81;
	ans_a = 16'h539c;
	#20
	A = 16'h20b9;
	B = 16'hbcac;
	ans_a = 16'h539c;
	#20
	A = 16'hbe22;
	B = 16'hba2f;
	ans_a = 16'h53c2;
	#20
	A = 16'hb412;
	B = 16'h3ebc;
	ans_a = 16'h53b4;
	#20
	A = 16'hb82c;
	B = 16'h3dd8;
	ans_a = 16'h539c;
	#20
	A = 16'hbfa2;
	B = 16'h3eb4;
	ans_a = 16'h5336;
	#20
	A = 16'hb9b3;
	B = 16'h3e68;
	ans_a = 16'h5312;
	#20
	A = 16'hbc4b;
	B = 16'h3a1e;
	ans_a = 16'h52f8;
	#20
	A = 16'hbd71;
	B = 16'hbcec;
	ans_a = 16'h532e;
	#20
	A = 16'h3d94;
	B = 16'h3d14;
	ans_a = 16'h5367;
	#20
	A = 16'h2f8d;
	B = 16'hb140;
	ans_a = 16'h5366;
	#20
	A = 16'hbfb1;
	B = 16'h3be8;
	ans_a = 16'h5329;
	#20
	A = 16'hbff2;
	B = 16'hbb4c;
	ans_a = 16'h5363;
	#20
	A = 16'h348b;
	B = 16'h3cb4;
	ans_a = 16'h536e;
	#20
	A = 16'h3ecc;
	B = 16'h3845;
	ans_a = 16'h538b;
	#20
	A = 16'h3d77;
	B = 16'hbb37;
	ans_a = 16'h5364;
	#20
	A = 16'h2ecc;
	B = 16'hb912;
	ans_a = 16'h5362;
	#20
	A = 16'ha95c;
	B = 16'h398a;
	ans_a = 16'h5361;
	#20
	A = 16'hb899;
	B = 16'hb041;
	ans_a = 16'h5363;
	#20
	A = 16'hb1f8;
	B = 16'hba31;
	ans_a = 16'h5368;
	#20
	A = 16'hbfcb;
	B = 16'h3fc2;
	ans_a = 16'h52ef;
	#20
	A = 16'h3fb5;
	B = 16'hb929;
	ans_a = 16'h52c7;
	#20
	A = 16'hb9ca;
	B = 16'h327d;
	ans_a = 16'h52c2;
	#20
	A = 16'hbacd;
	B = 16'h3efe;
	ans_a = 16'h5292;
	#20
	A = 16'h3f68;
	B = 16'hbfc0;
	ans_a = 16'h521f;
	#20
	A = 16'hbdba;
	B = 16'h3f75;
	ans_a = 16'h51ca;
	#20
	A = 16'h3ba5;
	B = 16'hbed7;
	ans_a = 16'h5196;
	#20
	A = 16'h3d0e;
	B = 16'h3fe7;
	ans_a = 16'h51e6;
	#20
	A = 16'h3f21;
	B = 16'hadf2;
	ans_a = 16'h51e1;
	#20
	A = 16'hb8ce;
	B = 16'hbf4a;
	ans_a = 16'h5204;
	#20
	A = 16'hbb9d;
	B = 16'hbf32;
	ans_a = 16'h523b;
	#20
	A = 16'h3c4c;
	B = 16'h39c9;
	ans_a = 16'h5254;
	#20
	A = 16'h3733;
	B = 16'h3ebb;
	ans_a = 16'h526c;
	#20
	A = 16'hbe8e;
	B = 16'hbfde;
	ans_a = 16'h52d3;
	#20
	A = 16'h35ec;
	B = 16'h3fde;
	ans_a = 16'h52ea;
	#20
	A = 16'h3e01;
	B = 16'hab46;
	ans_a = 16'h52e7;
	#20
	A = 16'hbdf8;
	B = 16'hbb21;
	ans_a = 16'h5312;
	#20
	A = 16'h3f29;
	B = 16'hb062;
	ans_a = 16'h530a;
	#20
	A = 16'hb86b;
	B = 16'h3ac0;
	ans_a = 16'h52fb;
	#20
	A = 16'h3aa8;
	B = 16'hbc3b;
	ans_a = 16'h52df;
	#20
	A = 16'h3e3f;
	B = 16'h38c5;
	ans_a = 16'h52fd;
	#20
	A = 16'h3fcb;
	B = 16'h2868;
	ans_a = 16'h52ff;
	#20
	A = 16'h39b8;
	B = 16'hacdc;
	ans_a = 16'h52fd;
	#20
	A = 16'hbdf2;
	B = 16'hbfb3;
	ans_a = 16'h5359;
	#20
	A = 16'hbd50;
	B = 16'hb77f;
	ans_a = 16'h536d;
	#20
	A = 16'hbb97;
	B = 16'hbe20;
	ans_a = 16'h539c;
	#20
	A = 16'h30c0;
	B = 16'hac67;
	ans_a = 16'h539c;
	#20
	A = 16'hae2c;
	B = 16'hb81b;
	ans_a = 16'h539e;
	#20
	A = 16'h20a0;
	B = 16'h37a3;
	ans_a = 16'h539e;
	#20
	A = 16'h342a;
	B = 16'hb5b3;
	ans_a = 16'h539b;
	#20
	A = 16'hba39;
	B = 16'h2e4b;
	ans_a = 16'h5399;
	#20
	A = 16'hbe80;
	B = 16'h3db4;
	ans_a = 16'h534f;
	#20
	A = 16'ha6c1;
	B = 16'h3e40;
	ans_a = 16'h534e;
	#20
	A = 16'hbef2;
	B = 16'h3f1a;
	ans_a = 16'h52eb;
	#20
	A = 16'h3113;
	B = 16'h35be;
	ans_a = 16'h52ed;
	#20
	A = 16'h3d86;
	B = 16'hb9b4;
	ans_a = 16'h52ce;
	#20
	A = 16'h31b4;
	B = 16'hbc96;
	ans_a = 16'h52c7;
	#20
	A = 16'hbd26;
	B = 16'h2cc2;
	ans_a = 16'h52c4;
	#20
	A = 16'h3faf;
	B = 16'hb7cf;
	ans_a = 16'h52a6;
	#20
	A = 16'hb907;
	B = 16'hbdcc;
	ans_a = 16'h52c3;
	#20
	A = 16'h3ca6;
	B = 16'h3f77;
	ans_a = 16'h5308;
	#20
	A = 16'hbaea;
	B = 16'h32e8;
	ans_a = 16'h5302;
	#20
	A = 16'h3be9;
	B = 16'h35af;
	ans_a = 16'h530d;
	#20
	A = 16'h36ed;
	B = 16'hb96c;
	ans_a = 16'h5304;
	#20
	A = 16'h3e76;
	B = 16'hbc31;
	ans_a = 16'h52ce;
	#20
	A = 16'h3f0b;
	B = 16'h3c41;
	ans_a = 16'h530a;
	#20
	A = 16'hb2dd;
	B = 16'h37a1;
	ans_a = 16'h5307;
	#20
	A = 16'hbe67;
	B = 16'hbfa7;
	ans_a = 16'h5369;
	#20
	A = 16'h3d03;
	B = 16'h3d14;
	ans_a = 16'h539c;
	#20
	A = 16'hba47;
	B = 16'hbca7;
	ans_a = 16'h53b9;
	#20
	A = 16'hba62;
	B = 16'hbd52;
	ans_a = 16'h53db;
	#20
	A = 16'hbdf1;
	B = 16'hbe6c;
	ans_a = 16'h5414;
	#20
	A = 16'h3d5e;
	B = 16'h301e;
	ans_a = 16'h5417;
	#20
	A = 16'hba88;
	B = 16'hbd22;
	ans_a = 16'h5428;
	#20
	A = 16'h3d45;
	B = 16'h385c;
	ans_a = 16'h5433;
	#20
	A = 16'h3f0f;
	B = 16'h3eda;
	ans_a = 16'h5463;
	#20
	A = 16'h3ffc;
	B = 16'hb95b;
	ans_a = 16'h544e;
	#20
	A = 16'h38cb;
	B = 16'haee2;
	ans_a = 16'h544d;
	#20
	A = 16'hbdd7;
	B = 16'hbd48;
	ans_a = 16'h546c;
	#20
	A = 16'hbf61;
	B = 16'hbd62;
	ans_a = 16'h5494;
	#20
	A = 16'h3c57;
	B = 16'h3aa3;
	ans_a = 16'h54a2;
	#20
	A = 16'h3c24;
	B = 16'h3989;
	ans_a = 16'h54ad;
	#20
	A = 16'h3897;
	B = 16'h2f68;
	ans_a = 16'h54ae;
	#20
	A = 16'h3f11;
	B = 16'hbb19;
	ans_a = 16'h5495;
	#20
	A = 16'hbc32;
	B = 16'hbfd6;
	ans_a = 16'h54b6;
	#20
	A = 16'hbcb4;
	B = 16'h362a;
	ans_a = 16'h54af;
	#20
	A = 16'h3be4;
	B = 16'hb6e6;
	ans_a = 16'h54a8;
	#20
	A = 16'h399a;
	B = 16'h35d5;
	ans_a = 16'h54ac;
	#20
	A = 16'hbca4;
	B = 16'hba4c;
	ans_a = 16'h54bb;
	#20
	A = 16'hbbe4;
	B = 16'h3837;
	ans_a = 16'h54b3;
	#20
	A = 16'h30bf;
	B = 16'h351c;
	ans_a = 16'h54b4;
	#20
	A = 16'hbfa6;
	B = 16'hb961;
	ans_a = 16'h54c9;
	#20
	A = 16'hbfab;
	B = 16'h39fc;
	ans_a = 16'h54b2;
	#20
	A = 16'h3a92;
	B = 16'h3e13;
	ans_a = 16'h54c6;
	#20
	A = 16'hae63;
	B = 16'h3dff;
	ans_a = 16'h54c4;
	#20
	A = 16'hbe54;
	B = 16'hbbee;
	ans_a = 16'h54dd;
	#20
	A = 16'h3df9;
	B = 16'h3cce;
	ans_a = 16'h54fa;
	#20
	A = 16'hb8f9;
	B = 16'hb986;
	ans_a = 16'h5501;
	#20
	A = 16'hbcd6;
	B = 16'hb8d4;
	ans_a = 16'h550d;
	#20
	A = 16'h3b1d;
	B = 16'h34e6;
	ans_a = 16'h5511;
	#20
	A = 16'ha844;
	B = 16'h35b8;
	ans_a = 16'h5511;
	#20
	A = 16'h3907;
	B = 16'hbe75;
	ans_a = 16'h5501;
	#20
	A = 16'hb920;
	B = 16'hbc28;
	ans_a = 16'h550c;
	#20
	A = 16'h3cc9;
	B = 16'h3ea0;
	ans_a = 16'h552c;
	#20
	A = 16'h3f7d;
	B = 16'hbc6c;
	ans_a = 16'h550b;
	#20
	A = 16'hbef8;
	B = 16'h35a8;
	ans_a = 16'h5501;
	#20
	A = 16'hb8e5;
	B = 16'h3807;
	ans_a = 16'h54fc;
	#20
	A = 16'h371f;
	B = 16'hb9b9;
	ans_a = 16'h54f7;
	#20
	A = 16'h3b00;
	B = 16'h3a1b;
	ans_a = 16'h5502;
	#20
	A = 16'habdb;
	B = 16'hbf91;
	ans_a = 16'h5504;
	#20
	A = 16'h3afe;
	B = 16'hb978;
	ans_a = 16'h54fa;
	#20
	A = 16'hb47c;
	B = 16'h3da0;
	ans_a = 16'h54f4;
	#20
	A = 16'h3be9;
	B = 16'h341e;
	ans_a = 16'h54f8;
	#20
	A = 16'h3955;
	B = 16'hbcf8;
	ans_a = 16'h54eb;
	#20
	A = 16'hb6e6;
	B = 16'hbdc8;
	ans_a = 16'h54f5;
	#20
	A = 16'hbd62;
	B = 16'hbfe9;
	ans_a = 16'h5520;
	#20
	A = 16'h39fa;
	B = 16'hacf1;
	ans_a = 16'h551f;
	#20
	A = 16'h3cf5;
	B = 16'h3a34;
	ans_a = 16'h552e;
	#20
	A = 16'hb978;
	B = 16'h3ed8;
	ans_a = 16'h551b;
	#20
	A = 16'hbd08;
	B = 16'ha701;
	ans_a = 16'h551c;
	#20
	A = 16'h3f18;
	B = 16'h3a9f;
	ans_a = 16'h5533;
	#20
	A = 16'h30e2;
	B = 16'hbb10;
	ans_a = 16'h5531;
	#20
	A = 16'hb8aa;
	B = 16'hb834;
	ans_a = 16'h5536;
	#20
	A = 16'hb8f5;
	B = 16'hbacf;
	ans_a = 16'h553e;
	#20
	A = 16'h3f43;
	B = 16'hbf72;
	ans_a = 16'h5508;
	#20
	A = 16'hb682;
	B = 16'h3789;
	ans_a = 16'h5505;
	#20
	A = 16'hbd2e;
	B = 16'h3522;
	ans_a = 16'h54fe;
	#20
	A = 16'h3ed0;
	B = 16'hbc43;
	ans_a = 16'h54e1;
	#20
	A = 16'h3831;
	B = 16'h3c0b;
	ans_a = 16'h54e9;
	#20
	A = 16'hb1ac;
	B = 16'hbd2e;
	ans_a = 16'h54ed;
	#20
	A = 16'hb8c5;
	B = 16'hbb3e;
	ans_a = 16'h54f6;
	#20
	A = 16'hbfe2;
	B = 16'h3da4;
	ans_a = 16'h54ca;
	#20
	A = 16'haca0;
	B = 16'h3f7a;
	ans_a = 16'h54c8;
	#20
	A = 16'hbf54;
	B = 16'hbef3;
	ans_a = 16'h54fb;
	#20
	A = 16'hbfab;
	B = 16'h3f67;
	ans_a = 16'h54c2;
	#20
	A = 16'h38bd;
	B = 16'h3fb2;
	ans_a = 16'h54d4;
	#20
	A = 16'hb964;
	B = 16'h3c76;
	ans_a = 16'h54c8;
	#20
	A = 16'hbd98;
	B = 16'hbda3;
	ans_a = 16'h54e8;
	#20
	A = 16'hbd10;
	B = 16'hbfdc;
	ans_a = 16'h5510;
	#20
	A = 16'h3e64;
	B = 16'h3ae6;
	ans_a = 16'h5526;
	#20
	A = 16'h35fe;
	B = 16'h3fc6;
	ans_a = 16'h5532;
	#20
	A = 16'h3ffb;
	B = 16'hbc15;
	ans_a = 16'h5511;
	#20
	A = 16'h38a2;
	B = 16'hbd21;
	ans_a = 16'h5505;
	#20
	A = 16'h3e90;
	B = 16'hb80d;
	ans_a = 16'h54f8;
	#20
	A = 16'hbe56;
	B = 16'hbd49;
	ans_a = 16'h551a;
	#20
	A = 16'hbb1d;
	B = 16'hbc95;
	ans_a = 16'h552a;
	#20
	A = 16'hbc1d;
	B = 16'h3e88;
	ans_a = 16'h550f;
	#20
	A = 16'h3927;
	B = 16'hbb17;
	ans_a = 16'h5506;
	#20
	A = 16'h3f3c;
	B = 16'h390d;
	ans_a = 16'h5518;
	#20
	A = 16'hbb3f;
	B = 16'h3e3d;
	ans_a = 16'h5501;
	#20
	A = 16'hb9fb;
	B = 16'h3911;
	ans_a = 16'h54f9;
	#20
	A = 16'hb9e2;
	B = 16'h3d83;
	ans_a = 16'h54e9;
	#20
	A = 16'h3f94;
	B = 16'hb8cf;
	ans_a = 16'h54d7;
	#20
	A = 16'hb8ef;
	B = 16'hbd0e;
	ans_a = 16'h54e3;
	#20
	A = 16'hb98c;
	B = 16'hbe71;
	ans_a = 16'h54f5;
	#20
	A = 16'hbcae;
	B = 16'hbe81;
	ans_a = 16'h5513;
	#20
	A = 16'hba38;
	B = 16'h3159;
	ans_a = 16'h5511;
	#20
	A = 16'hbd62;
	B = 16'h3b7d;
	ans_a = 16'h54fd;
	#20
	A = 16'hbd81;
	B = 16'hbe3d;
	ans_a = 16'h551f;
	#20
	A = 16'h3ce1;
	B = 16'hbe5b;
	ans_a = 16'h5500;
	#20
	A = 16'hb774;
	B = 16'hbe1a;
	ans_a = 16'h550b;
	#20
	A = 16'hbfa7;
	B = 16'h3f26;
	ans_a = 16'h54d4;
	#20
	A = 16'h3e3b;
	B = 16'hbab2;
	ans_a = 16'h54bf;
	#20
	A = 16'hb9b6;
	B = 16'hbe42;
	ans_a = 16'h54d1;
	#20
	A = 16'h39fc;
	B = 16'h3e2f;
	ans_a = 16'h54e4;
	#20
	A = 16'h3c0e;
	B = 16'hbc76;
	ans_a = 16'h54d2;
	#20
	A = 16'h35c2;
	B = 16'hb7ab;
	ans_a = 16'h54cf;
	#20
	A = 16'hbe87;
	B = 16'h3fed;
	ans_a = 16'h549b;
	#20
	A = 16'hb5d1;
	B = 16'h34e5;
	ans_a = 16'h5499;
	#20
	A = 16'h3278;
	B = 16'h3ddf;
	ans_a = 16'h549e;
	#20
	A = 16'hb8c8;
	B = 16'hbeca;
	ans_a = 16'h54ae;
	#20
	A = 16'hbe99;
	B = 16'h3c9a;
	ans_a = 16'h5490;
	#20
	A = 16'h3d59;
	B = 16'hb93e;
	ans_a = 16'h5482;
	#20
	A = 16'hbcad;
	B = 16'h3ba5;
	ans_a = 16'h5470;
	#20
	A = 16'hbbc4;
	B = 16'h3e76;
	ans_a = 16'h5457;
	#20
	A = 16'hbdbf;
	B = 16'h3065;
	ans_a = 16'h5454;
	#20
	A = 16'hb861;
	B = 16'hbe9e;
	ans_a = 16'h5462;
	#20
	A = 16'hbe73;
	B = 16'h358d;
	ans_a = 16'h5459;
	#20
	A = 16'hac62;
	B = 16'h3eab;
	ans_a = 16'h5457;
	#20
	A = 16'hbe01;
	B = 16'hbe18;
	ans_a = 16'h547c;
	#20
	A = 16'h3d72;
	B = 16'hb08b;
	ans_a = 16'h5479;
	#20
	A = 16'hbe0f;
	B = 16'h3a5c;
	ans_a = 16'h5466;
	#20
	A = 16'hbce8;
	B = 16'hbe4c;
	ans_a = 16'h5485;
	#20
	A = 16'h3e5a;
	B = 16'hbcb6;
	ans_a = 16'h5467;
	#20
	A = 16'ha8a5;
	B = 16'hbde7;
	ans_a = 16'h5468;
	#20
	A = 16'hb808;
	B = 16'hb50e;
	ans_a = 16'h546b;
	#20
	A = 16'hb8c3;
	B = 16'h3beb;
	ans_a = 16'h5462;
	#20
	A = 16'hbe22;
	B = 16'h38a6;
	ans_a = 16'h5454;
	#20
	A = 16'hbe51;
	B = 16'hbda1;
	ans_a = 16'h5478;
	#20
	A = 16'hbed7;
	B = 16'hbdc3;
	ans_a = 16'h549f;
	#20
	A = 16'hba15;
	B = 16'h3c19;
	ans_a = 16'h5493;
	#20
	A = 16'hbf2a;
	B = 16'hbc0c;
	ans_a = 16'h54b0;
	#20
	A = 16'h396e;
	B = 16'h3a89;
	ans_a = 16'h54b9;
	#20
	A = 16'hbc52;
	B = 16'h3bc4;
	ans_a = 16'h54a8;
	#20
	A = 16'had2b;
	B = 16'hbcf1;
	ans_a = 16'h54aa;
	#20
	A = 16'hace2;
	B = 16'hb5d8;
	ans_a = 16'h54aa;
	#20
	A = 16'hbee3;
	B = 16'h3ef2;
	ans_a = 16'h547a;
	#20
	A = 16'h3b72;
	B = 16'hbba3;
	ans_a = 16'h546c;
	#20
	A = 16'hbb1f;
	B = 16'hbf30;
	ans_a = 16'h5486;
	#20
	A = 16'h3009;
	B = 16'hb5ad;
	ans_a = 16'h5485;
	#20
	A = 16'hbc75;
	B = 16'hbebf;
	ans_a = 16'h54a3;
	#20
	A = 16'hb8a1;
	B = 16'h3261;
	ans_a = 16'h54a1;
	#20
	A = 16'hbdec;
	B = 16'h3a2f;
	ans_a = 16'h548f;
	#20
	A = 16'hbd20;
	B = 16'hbc4c;
	ans_a = 16'h54a5;
	#20
	A = 16'hbec5;
	B = 16'hb4e6;
	ans_a = 16'h54ad;
	#20
	A = 16'h3f99;
	B = 16'hb775;
	ans_a = 16'h549f;
	#20
	A = 16'hb6ad;
	B = 16'hb7e8;
	ans_a = 16'h54a2;
	#20
	A = 16'h3746;
	B = 16'h3c4d;
	ans_a = 16'h54aa;
	#20
	A = 16'hbaaf;
	B = 16'hbe80;
	ans_a = 16'h54c0;
	#20
	A = 16'h3cb2;
	B = 16'hbfe5;
	ans_a = 16'h549b;
	#20
	A = 16'h3b9a;
	B = 16'hbc09;
	ans_a = 16'h548c;
	#20
	A = 16'h3b71;
	B = 16'h3aed;
	ans_a = 16'h5499;
	#20
	A = 16'hb8f8;
	B = 16'h3cb3;
	ans_a = 16'h548d;
	#20
	A = 16'h38d2;
	B = 16'hbf98;
	ans_a = 16'h547b;
	#20
	A = 16'hb911;
	B = 16'hb8e3;
	ans_a = 16'h5481;
	#20
	A = 16'hb623;
	B = 16'h3d05;
	ans_a = 16'h5479;
	#20
	A = 16'h3a7b;
	B = 16'hbd05;
	ans_a = 16'h5469;
	#20
	A = 16'h39c7;
	B = 16'h3c72;
	ans_a = 16'h5476;
	#20
	A = 16'h39e9;
	B = 16'h3872;
	ans_a = 16'h547d;
	#20
	A = 16'hb27d;
	B = 16'hb1f3;
	ans_a = 16'h547e;
	#20
	A = 16'hbc43;
	B = 16'had94;
	ans_a = 16'h547f;
	#20
	A = 16'h34ea;
	B = 16'h3ec9;
	ans_a = 16'h5487;
	#20
	A = 16'hbce8;
	B = 16'h3cf6;
	ans_a = 16'h546f;
	#20
	A = 16'h3d60;
	B = 16'hbe5c;
	ans_a = 16'h544d;
	#20
	A = 16'h3f9e;
	B = 16'hbf47;
	ans_a = 16'h5416;
	#20
	A = 16'hbfac;
	B = 16'h3966;
	ans_a = 16'h5401;
	#20
	A = 16'hb4b6;
	B = 16'hb501;
	ans_a = 16'h5402;
	#20
	A = 16'h3b51;
	B = 16'h3e6e;
	ans_a = 16'h541a;
	#20
	A = 16'hb7ef;
	B = 16'h3d73;
	ans_a = 16'h540f;
	#20
	A = 16'hb0ba;
	B = 16'hb1c4;
	ans_a = 16'h540f;
	#20
	A = 16'hb536;
	B = 16'hbddd;
	ans_a = 16'h5417;
	#20
	A = 16'ha851;
	B = 16'hbe81;
	ans_a = 16'h5418;
	#20
	A = 16'h3e70;
	B = 16'ha5a6;
	ans_a = 16'h5417;
	#20
	A = 16'hbf1a;
	B = 16'hbf45;
	ans_a = 16'h544b;
	#20
	A = 16'hbc00;
	B = 16'hb6fa;
	ans_a = 16'h5452;
	#20
	A = 16'hb4dd;
	B = 16'h3f72;
	ans_a = 16'h5449;
	#20
	A = 16'h32ed;
	B = 16'hb171;
	ans_a = 16'h5448;
	#20
	A = 16'hbc16;
	B = 16'h3dfd;
	ans_a = 16'h5430;
	#20
	A = 16'hbedb;
	B = 16'h3521;
	ans_a = 16'h5427;
	#20
	A = 16'h3d03;
	B = 16'h3d38;
	ans_a = 16'h5441;
	#20
	A = 16'h3ff3;
	B = 16'hbe26;
	ans_a = 16'h5410;
	#20
	A = 16'h3fa8;
	B = 16'hbe93;
	ans_a = 16'h53bb;
	#20
	A = 16'hb00c;
	B = 16'h3b83;
	ans_a = 16'h53b7;
	#20
	A = 16'h3a75;
	B = 16'h3bcc;
	ans_a = 16'h53d0;
	#20
	A = 16'h3ac1;
	B = 16'h390f;
	ans_a = 16'h53e1;
	#20
	A = 16'hb8ce;
	B = 16'hbb39;
	ans_a = 16'h53f2;
	#20
	A = 16'h3ca6;
	B = 16'h3e40;
	ans_a = 16'h5416;
	#20
	A = 16'hba0d;
	B = 16'h3c6d;
	ans_a = 16'h5409;
	#20
	A = 16'hb557;
	B = 16'hb63d;
	ans_a = 16'h540b;
	#20
	A = 16'h399b;
	B = 16'h3f40;
	ans_a = 16'h541f;
	#20
	A = 16'hbfa3;
	B = 16'hb496;
	ans_a = 16'h5428;
	#20
	A = 16'h3e61;
	B = 16'hbc7d;
	ans_a = 16'h540b;
	#20
	A = 16'h3119;
	B = 16'hbdd9;
	ans_a = 16'h5407;
	#20
	A = 16'h3ce5;
	B = 16'h39f8;
	ans_a = 16'h5416;
	#20
	A = 16'h39db;
	B = 16'h399d;
	ans_a = 16'h541e;
	#20
	A = 16'h216c;
	B = 16'hbdd0;
	ans_a = 16'h541e;
	#20
	A = 16'hbcdd;
	B = 16'hbddf;
	ans_a = 16'h543b;
	#20
	A = 16'haf24;
	B = 16'hbe67;
	ans_a = 16'h543e;
	#20
	A = 16'hb865;
	B = 16'hbcfa;
	ans_a = 16'h5449;
	#20
	A = 16'h3da4;
	B = 16'h3c3f;
	ans_a = 16'h5461;
	#20
	A = 16'h3ba1;
	B = 16'h3dfa;
	ans_a = 16'h5478;
	#20
	A = 16'hbfe0;
	B = 16'hb3f8;
	ans_a = 16'h5480;
	#20
	A = 16'h3dee;
	B = 16'h3e69;
	ans_a = 16'h54a6;
	#20
	A = 16'hbbd1;
	B = 16'h3d61;
	ans_a = 16'h5491;
	#20
	A = 16'hbcec;
	B = 16'hbbb9;
	ans_a = 16'h54a4;
	#20
	A = 16'h3f3a;
	B = 16'h3b58;
	ans_a = 16'h54bf;
	#20
	A = 16'hbf22;
	B = 16'h3e4f;
	ans_a = 16'h5492;
	#20
	A = 16'hbcee;
	B = 16'h3d7b;
	ans_a = 16'h5477;
	#20
	A = 16'hbdb2;
	B = 16'hb87c;
	ans_a = 16'h5484;
	#20
	A = 16'ha230;
	B = 16'hb83f;
	ans_a = 16'h5484;
	#20
	A = 16'hbbc1;
	B = 16'hae39;
	ans_a = 16'h5486;
	#20
	A = 16'h3a3a;
	B = 16'h3e3b;
	ans_a = 16'h5499;
	#20
	A = 16'hbf55;
	B = 16'hbe1e;
	ans_a = 16'h54c6;
	#20
	A = 16'h34fd;
	B = 16'hb2f4;
	ans_a = 16'h54c5;
	#20
	A = 16'hbec2;
	B = 16'h3fab;
	ans_a = 16'h5491;
	#20
	A = 16'hbfa4;
	B = 16'hbc6d;
	ans_a = 16'h54b3;
	#20
	A = 16'hbdbf;
	B = 16'h3d5b;
	ans_a = 16'h5494;
	#20
	A = 16'h3e35;
	B = 16'h3eda;
	ans_a = 16'h54bf;
	#20
	A = 16'h37aa;
	B = 16'hbd59;
	ans_a = 16'h54b5;
	#20
	A = 16'h3658;
	B = 16'h366b;
	ans_a = 16'h54b8;
	#20
	A = 16'h3c5d;
	B = 16'h3786;
	ans_a = 16'h54c0;
	#20
	A = 16'hb79a;
	B = 16'h2dc6;
	ans_a = 16'h54bf;
	#20
	A = 16'hb7c6;
	B = 16'h3f94;
	ans_a = 16'h54b0;
	#20
	A = 16'hb926;
	B = 16'h3d70;
	ans_a = 16'h54a2;
	#20
	A = 16'h23c5;
	B = 16'hba86;
	ans_a = 16'h54a2;
	#20
	A = 16'h3faa;
	B = 16'hbdd8;
	ans_a = 16'h5475;
	#20
	A = 16'hba5a;
	B = 16'h3c90;
	ans_a = 16'h5467;
	#20
	A = 16'hbdcf;
	B = 16'h3e10;
	ans_a = 16'h5444;
	#20
	A = 16'hbb31;
	B = 16'hb816;
	ans_a = 16'h544b;
	#20
	A = 16'hbf5b;
	B = 16'hbea0;
	ans_a = 16'h547c;
	#20
	A = 16'h334e;
	B = 16'h3f0c;
	ans_a = 16'h5482;
	#20
	A = 16'hb6a9;
	B = 16'hbbdb;
	ans_a = 16'h5489;
	#20
	A = 16'hae85;
	B = 16'hbd5d;
	ans_a = 16'h548b;
	#20
	A = 16'h3b84;
	B = 16'hbc9c;
	ans_a = 16'h547a;
	#20
	A = 16'hbad6;
	B = 16'hbe55;
	ans_a = 16'h5490;
	#20
	A = 16'hbdb1;
	B = 16'h3ee7;
	ans_a = 16'h5469;
	#20
	A = 16'hbe7c;
	B = 16'hbdfe;
	ans_a = 16'h5490;
	#20
	A = 16'hbc25;
	B = 16'hb6de;
	ans_a = 16'h5497;
	#20
	A = 16'h3e7d;
	B = 16'hbde9;
	ans_a = 16'h5471;
	#20
	A = 16'h3efe;
	B = 16'hb955;
	ans_a = 16'h545e;
	#20
	A = 16'hb5a0;
	B = 16'hbf97;
	ans_a = 16'h5469;
	#20
	A = 16'hbca7;
	B = 16'hafe7;
	ans_a = 16'h546b;
	#20
	A = 16'hbef3;
	B = 16'h3411;
	ans_a = 16'h5464;
	#20
	A = 16'hbcb4;
	B = 16'hbacf;
	ans_a = 16'h5474;
	#20
	A = 16'hb713;
	B = 16'h3daf;
	ans_a = 16'h546a;
	#20
	A = 16'hbae9;
	B = 16'hbfb6;
	ans_a = 16'h5485;
	#20
	A = 16'h3ff0;
	B = 16'h39bf;
	ans_a = 16'h549c;
	#20
	A = 16'hbc0a;
	B = 16'hba47;
	ans_a = 16'h54a9;
	#20
	A = 16'h346d;
	B = 16'hbf80;
	ans_a = 16'h54a1;
	#20
	A = 16'hbe59;
	B = 16'h36e1;
	ans_a = 16'h5496;
	#20
	A = 16'h3d1e;
	B = 16'hbc67;
	ans_a = 16'h547f;
	#20
	A = 16'h324c;
	B = 16'h297f;
	ans_a = 16'h547f;
	#20
	A = 16'h3fc3;
	B = 16'h387d;
	ans_a = 16'h5490;
	#20
	A = 16'h3e30;
	B = 16'h3dd1;
	ans_a = 16'h54b4;
	#20
	A = 16'h3fb6;
	B = 16'hbb30;
	ans_a = 16'h5498;
	#20
	A = 16'h3d3c;
	B = 16'h3b66;
	ans_a = 16'h54ab;
	#20
	A = 16'hbdc4;
	B = 16'hb7a7;
	ans_a = 16'h54b6;
	#20
	A = 16'hbd02;
	B = 16'h3f54;
	ans_a = 16'h5491;
	#20
	A = 16'hb923;
	B = 16'hb07b;
	ans_a = 16'h5492;
	#20
	A = 16'h3a68;
	B = 16'hb42d;
	ans_a = 16'h548f;
	#20
	A = 16'h3b75;
	B = 16'hbf4e;
	ans_a = 16'h5474;
	#20
	A = 16'hbb05;
	B = 16'ha7fc;
	ans_a = 16'h5474;
	#20
	A = 16'hbd6f;
	B = 16'hb741;
	ans_a = 16'h547e;
	#20
	A = 16'hbe7a;
	B = 16'hb880;
	ans_a = 16'h548d;
	#20
	A = 16'hbf65;
	B = 16'h3d98;
	ans_a = 16'h5464;
	#20
	A = 16'h3e7f;
	B = 16'h348c;
	ans_a = 16'h546b;
	#20
	A = 16'h309a;
	B = 16'hb9d8;
	ans_a = 16'h5469;
	#20
	A = 16'hbc97;
	B = 16'hb684;
	ans_a = 16'h5470;
	#20
	A = 16'h3a73;
	B = 16'hb7d5;
	ans_a = 16'h546a;
	#20
	A = 16'hbe33;
	B = 16'h3506;
	ans_a = 16'h5462;
	#20
	A = 16'h3504;
	B = 16'hbf8c;
	ans_a = 16'h5459;
	#20
	A = 16'h3ced;
	B = 16'h3c41;
	ans_a = 16'h546e;
	#20
	A = 16'hbd7c;
	B = 16'hbb69;
	ans_a = 16'h5482;
	#20
	A = 16'hba02;
	B = 16'h2da0;
	ans_a = 16'h5481;
	#20
	A = 16'h3e92;
	B = 16'h3afc;
	ans_a = 16'h5498;
	#20
	A = 16'hb4e0;
	B = 16'h3b0e;
	ans_a = 16'h5494;
	#20
	A = 16'h3ec3;
	B = 16'hb4df;
	ans_a = 16'h548c;
	#20
	A = 16'h37bb;
	B = 16'hb203;
	ans_a = 16'h548b;
	#20
	A = 16'hbfce;
	B = 16'hbcd6;
	ans_a = 16'h54b1;
	#20
	A = 16'h3d6a;
	B = 16'h398e;
	ans_a = 16'h54c0;
	#20
	A = 16'h3a27;
	B = 16'hbd53;
	ans_a = 16'h54b0;
	#20
	A = 16'h3a09;
	B = 16'h3cdc;
	ans_a = 16'h54bf;
	#20
	A = 16'h3a8f;
	B = 16'h3616;
	ans_a = 16'h54c4;
	#20
	A = 16'hb6e7;
	B = 16'hbb2e;
	ans_a = 16'h54ca;
	#20
	A = 16'hb3d5;
	B = 16'hb1b9;
	ans_a = 16'h54cb;
	#20
	A = 16'h364e;
	B = 16'hbb6d;
	ans_a = 16'h54c5;
	#20
	A = 16'hbee1;
	B = 16'hb65f;
	ans_a = 16'h54d0;
	#20
	A = 16'hb5cc;
	B = 16'h3a27;
	ans_a = 16'h54cc;
	#20
	A = 16'hbc25;
	B = 16'h3b27;
	ans_a = 16'h54bd;
	#20
	A = 16'hbe74;
	B = 16'hbae5;
	ans_a = 16'h54d3;
	#20
	A = 16'h3b36;
	B = 16'h2fc2;
	ans_a = 16'h54d5;
	#20
	A = 16'hbfe7;
	B = 16'h2c13;
	ans_a = 16'h54d3;
	#20
	A = 16'h3fb4;
	B = 16'hb361;
	ans_a = 16'h54cc;
	#20
	A = 16'hba94;
	B = 16'h3d69;
	ans_a = 16'h54ba;
	#20
	A = 16'h3ff5;
	B = 16'h3154;
	ans_a = 16'h54bf;
	#20
	A = 16'hbe0c;
	B = 16'h3d85;
	ans_a = 16'h549e;
	#20
	A = 16'hbd54;
	B = 16'hb9a8;
	ans_a = 16'h54ad;
	#20
	A = 16'h3e4e;
	B = 16'hbc74;
	ans_a = 16'h5491;
	#20
	A = 16'had5e;
	B = 16'hbced;
	ans_a = 16'h5493;
	#20
	A = 16'h3f64;
	B = 16'haa71;
	ans_a = 16'h5492;
	#20
	A = 16'hbccd;
	B = 16'hb49a;
	ans_a = 16'h5498;
	#20
	A = 16'hb8ea;
	B = 16'hb79a;
	ans_a = 16'h549d;
	#20
	A = 16'hbe29;
	B = 16'h3e05;
	ans_a = 16'h5478;
	#20
	A = 16'hbaeb;
	B = 16'h3c38;
	ans_a = 16'h5469;
	#20
	A = 16'hbda3;
	B = 16'hb7a9;
	ans_a = 16'h5474;
	#20
	A = 16'hbe93;
	B = 16'h32cd;
	ans_a = 16'h546e;
	#20
	A = 16'hb229;
	B = 16'hb0a8;
	ans_a = 16'h546e;
	#20
	A = 16'h3d01;
	B = 16'hbb94;
	ans_a = 16'h545b;
	#20
	A = 16'hb68c;
	B = 16'hbac7;
	ans_a = 16'h5461;
	#20
	A = 16'h3c1a;
	B = 16'hbe50;
	ans_a = 16'h5447;
	#20
	A = 16'hb457;
	B = 16'h3ca9;
	ans_a = 16'h5442;
	#20
	A = 16'h3f13;
	B = 16'hb644;
	ans_a = 16'h5437;
	#20
	A = 16'hba9b;
	B = 16'hbe3b;
	ans_a = 16'h544c;
	#20
	A = 16'h3bfb;
	B = 16'ha9ca;
	ans_a = 16'h544b;
	#20
	A = 16'hbc08;
	B = 16'hbc89;
	ans_a = 16'h545d;
	#20
	A = 16'h3e66;
	B = 16'h3e42;
	ans_a = 16'h5485;
	#20
	A = 16'hbba9;
	B = 16'h3170;
	ans_a = 16'h5482;
	#20
	A = 16'hb422;
	B = 16'h3d81;
	ans_a = 16'h547c;
	#20
	A = 16'hbc87;
	B = 16'h318b;
	ans_a = 16'h5479;
	#20
	A = 16'h3f88;
	B = 16'h3a56;
	ans_a = 16'h5491;
	#20
	A = 16'hbec5;
	B = 16'hbc13;
	ans_a = 16'h54ad;
	#20
	A = 16'h3c3c;
	B = 16'hb8b5;
	ans_a = 16'h54a3;
	#20
	A = 16'h3ad5;
	B = 16'h3ec1;
	ans_a = 16'h54ba;
	#20
	A = 16'h3b68;
	B = 16'h31f6;
	ans_a = 16'h54bd;
	#20
	A = 16'hbb0c;
	B = 16'hbf2f;
	ans_a = 16'h54d6;
	#20
	A = 16'hb818;
	B = 16'hbf9a;
	ans_a = 16'h54e6;
	#20
	A = 16'h304b;
	B = 16'h309d;
	ans_a = 16'h54e6;
	#20
	A = 16'ha88c;
	B = 16'hb04c;
	ans_a = 16'h54e6;
	#20
	A = 16'h3df4;
	B = 16'hbd89;
	ans_a = 16'h54c5;
	#20
	A = 16'h382f;
	B = 16'h3987;
	ans_a = 16'h54cb;
	#20
	A = 16'h3993;
	B = 16'h3c68;
	ans_a = 16'h54d7;
	#20
	A = 16'hb8f6;
	B = 16'h3073;
	ans_a = 16'h54d6;
	#20
	A = 16'h3ed3;
	B = 16'h9bdd;
	ans_a = 16'h54d6;
	#20
	A = 16'h3d6a;
	B = 16'h37d0;
	ans_a = 16'h54e1;
	#20
	A = 16'hbc01;
	B = 16'h3e74;
	ans_a = 16'h54c7;
	#20
	A = 16'h3e25;
	B = 16'hbaff;
	ans_a = 16'h54b2;
	#20
	A = 16'h282e;
	B = 16'hbbb3;
	ans_a = 16'h54b1;
	#20
	A = 16'hacd9;
	B = 16'hbe07;
	ans_a = 16'h54b3;
	#20
	A = 16'hbc02;
	B = 16'hbe2e;
	ans_a = 16'h54cc;
	#20
	A = 16'h3d10;
	B = 16'hb3b1;
	ans_a = 16'h54c7;
	#20
	A = 16'h3ac7;
	B = 16'hbb4c;
	ans_a = 16'h54bb;
	#20
	A = 16'hbd53;
	B = 16'hbce5;
	ans_a = 16'h54d5;
	#20
	A = 16'h3465;
	B = 16'hbbab;
	ans_a = 16'h54d1;
	#20
	A = 16'hb00f;
	B = 16'h2913;
	ans_a = 16'h54d1;
	#20
	A = 16'hb69f;
	B = 16'h3fb2;
	ans_a = 16'h54c4;
	#20
	A = 16'hb9a5;
	B = 16'hbc5f;
	ans_a = 16'h54d0;
	#20
	A = 16'hbf03;
	B = 16'h3689;
	ans_a = 16'h54c5;
	#20
	A = 16'h3c4f;
	B = 16'h3e8b;
	ans_a = 16'h54e1;
	#20
	A = 16'h3c34;
	B = 16'hbf1f;
	ans_a = 16'h54c3;
	#20
	A = 16'hb9c9;
	B = 16'hbfd1;
	ans_a = 16'h54da;
	#20
	A = 16'h2c08;
	B = 16'hb746;
	ans_a = 16'h54da;
	#20
	A = 16'hb6e7;
	B = 16'h2b90;
	ans_a = 16'h54da;
	#20
	A = 16'hb2bb;
	B = 16'hb5b7;
	ans_a = 16'h54db;
	#20
	A = 16'h3d6b;
	B = 16'h38f3;
	ans_a = 16'h54e8;
	#20
	A = 16'h39e5;
	B = 16'hb4f6;
	ans_a = 16'h54e4;
	#20
	A = 16'hb764;
	B = 16'h3ec7;
	ans_a = 16'h54d7;
	#20
	A = 16'h3f7c;
	B = 16'h3fca;
	ans_a = 16'h5511;
	#20
	A = 16'hb212;
	B = 16'h39f5;
	ans_a = 16'h550f;
	#20
	A = 16'hb911;
	B = 16'h3b63;
	ans_a = 16'h5506;
	#20
	A = 16'ha88c;
	B = 16'h33d8;
	ans_a = 16'h5506;
	#20
	A = 16'h3793;
	B = 16'hbd8f;
	ans_a = 16'h54fb;
	#20
	A = 16'h3f20;
	B = 16'hb8ba;
	ans_a = 16'h54ea;
	#20
	A = 16'h244e;
	B = 16'h3571;
	ans_a = 16'h54ea;
	#20
	A = 16'h3a94;
	B = 16'h3e31;
	ans_a = 16'h54fe;
	#20
	A = 16'h3fdd;
	B = 16'h3bd4;
	ans_a = 16'h551d;
	#20
	A = 16'hbe09;
	B = 16'hbec1;
	ans_a = 16'h5546;
	#20
	A = 16'hbdb7;
	B = 16'hbc09;
	ans_a = 16'h555d;
	#20
	A = 16'hbf94;
	B = 16'h3634;
	ans_a = 16'h5551;
	#20
	A = 16'h3fbb;
	B = 16'hbffd;
	ans_a = 16'h5513;
	#20
	A = 16'hb376;
	B = 16'hbe9b;
	ans_a = 16'h5519;
	#20
	A = 16'h30a6;
	B = 16'h3df8;
	ans_a = 16'h551c;
	#20
	A = 16'hac0e;
	B = 16'h2f9f;
	ans_a = 16'h551c;
	#20
	A = 16'hbd8f;
	B = 16'h3c5f;
	ans_a = 16'h5504;
	#20
	A = 16'haf10;
	B = 16'h3ded;
	ans_a = 16'h5501;
	#20
	A = 16'hba09;
	B = 16'hbee9;
	ans_a = 16'h5516;
	#20
	A = 16'hbd57;
	B = 16'h2e92;
	ans_a = 16'h5514;
	#20
	A = 16'hbfcb;
	B = 16'hba8a;
	ans_a = 16'h552d;
	#20
	A = 16'h3616;
	B = 16'hbc5b;
	ans_a = 16'h5526;
	#20
	A = 16'hb0c7;
	B = 16'hbec2;
	ans_a = 16'h552a;
	#20
	A = 16'hb3cf;
	B = 16'h3a37;
	ans_a = 16'h5527;
	#20
	A = 16'hbf9d;
	B = 16'hbe0c;
	ans_a = 16'h5555;
	#20
	A = 16'h3df2;
	B = 16'h3887;
	ans_a = 16'h5562;
	#20
	A = 16'h3c61;
	B = 16'h3fd6;
	ans_a = 16'h5584;
	#20
	A = 16'h3f8e;
	B = 16'h3c00;
	ans_a = 16'h55a2;
	#20
	A = 16'hb845;
	B = 16'hbffb;
	ans_a = 16'h55b3;
	#20
	A = 16'h3dee;
	B = 16'hbe31;
	ans_a = 16'h558e;
	#20
	A = 16'hbed9;
	B = 16'hbd5e;
	ans_a = 16'h55b3;
	#20
	A = 16'hbaa5;
	B = 16'hbf04;
	ans_a = 16'h55ca;
	#20
	A = 16'hbe87;
	B = 16'h2c1e;
	ans_a = 16'h55c8;
	#20
	A = 16'h3e26;
	B = 16'h3a00;
	ans_a = 16'h55da;
	#20
	A = 16'hbb08;
	B = 16'h3fa5;
	ans_a = 16'h55bf;
	#20
	A = 16'hba54;
	B = 16'hba2a;
	ans_a = 16'h55c9;
	#20
	A = 16'ha953;
	B = 16'h3377;
	ans_a = 16'h55c9;
	#20
	A = 16'h3b65;
	B = 16'h3835;
	ans_a = 16'h55d1;
	#20
	A = 16'h3c0a;
	B = 16'hbbf2;
	ans_a = 16'h55c1;
	#20
	A = 16'h33fc;
	B = 16'hbc0c;
	ans_a = 16'h55bd;
	#20
	A = 16'hbc44;
	B = 16'h3dc0;
	ans_a = 16'h55a4;
	#20
	A = 16'h3dc7;
	B = 16'hb9fa;
	ans_a = 16'h5593;
	#20
	A = 16'hbe13;
	B = 16'hbf9c;
	ans_a = 16'h55c1;
	#20
	A = 16'hbfbe;
	B = 16'hbea8;
	ans_a = 16'h55f5;
	#20
	A = 16'hb806;
	B = 16'hb616;
	ans_a = 16'h55f8;
	#20
	A = 16'hb4b8;
	B = 16'h3dff;
	ans_a = 16'h55f1;
	#20
	A = 16'h363a;
	B = 16'haf57;
	ans_a = 16'h55f0;
	#20
	A = 16'h3cdc;
	B = 16'hbf4f;
	ans_a = 16'h55cc;
	#20
	A = 16'haf88;
	B = 16'h3f43;
	ans_a = 16'h55c9;
	#20
	A = 16'h3db2;
	B = 16'hb7a1;
	ans_a = 16'h55be;
	#20
	A = 16'h3063;
	B = 16'hbd14;
	ans_a = 16'h55bb;
	#20
	A = 16'h3fca;
	B = 16'h3354;
	ans_a = 16'h55c2;
	#20
	A = 16'h392a;
	B = 16'hb8f1;
	ans_a = 16'h55bc;
	#20
	A = 16'h3ae1;
	B = 16'hbc56;
	ans_a = 16'h55ad;
	#20
	A = 16'hb977;
	B = 16'hbf34;
	ans_a = 16'h55c1;
	#20
	A = 16'hb3be;
	B = 16'h308a;
	ans_a = 16'h55c0;
	#20
	A = 16'hbf8e;
	B = 16'h3c60;
	ans_a = 16'h559f;
	#20
	A = 16'hbaa1;
	B = 16'hb841;
	ans_a = 16'h55a6;
	#20
	A = 16'hbf1f;
	B = 16'h3546;
	ans_a = 16'h559d;
	#20
	A = 16'h3bd5;
	B = 16'hbc83;
	ans_a = 16'h558b;
	#20
	A = 16'hb353;
	B = 16'h3c37;
	ans_a = 16'h5587;
	#20
	A = 16'h265b;
	B = 16'hbf0d;
	ans_a = 16'h5586;
	#20
	A = 16'hb654;
	B = 16'hb8c7;
	ans_a = 16'h558a;
	#20
	A = 16'h2b3a;
	B = 16'h38ce;
	ans_a = 16'h558b;
	#20
	A = 16'hb4bc;
	B = 16'hbf59;
	ans_a = 16'h5594;
	#20
	A = 16'h33a9;
	B = 16'h337d;
	ans_a = 16'h5595;
	#20
	A = 16'hbf0f;
	B = 16'h3d0e;
	ans_a = 16'h5571;
	#20
	A = 16'hb919;
	B = 16'h3c7a;
	ans_a = 16'h5566;
	#20
	A = 16'hb800;
	B = 16'hbc4f;
	ans_a = 16'h556f;
	#20
	A = 16'h3f18;
	B = 16'hb9ae;
	ans_a = 16'h555b;
	#20
	A = 16'hb86f;
	B = 16'h3546;
	ans_a = 16'h5558;
	#20
	A = 16'h3c9e;
	B = 16'hbd2a;
	ans_a = 16'h5540;
	#20
	A = 16'h3c22;
	B = 16'h3b57;
	ans_a = 16'h554f;
	#20
	A = 16'hbc9b;
	B = 16'h3f7e;
	ans_a = 16'h552c;
	#20
	A = 16'h3ed3;
	B = 16'h3936;
	ans_a = 16'h553e;
	#20
	A = 16'h3da3;
	B = 16'h3cab;
	ans_a = 16'h5558;
	#20
	A = 16'hb4a8;
	B = 16'h3e09;
	ans_a = 16'h5551;
	#20
	A = 16'h39a5;
	B = 16'h3049;
	ans_a = 16'h5553;
	#20
	A = 16'h3d58;
	B = 16'h1921;
	ans_a = 16'h5553;
	#20
	A = 16'h3a96;
	B = 16'h3f57;
	ans_a = 16'h556b;
	#20
	A = 16'hbbef;
	B = 16'hbfb2;
	ans_a = 16'h558a;
	#20
	A = 16'hbdb5;
	B = 16'h30e5;
	ans_a = 16'h5587;
	#20
	A = 16'h3a77;
	B = 16'hbcda;
	ans_a = 16'h5577;
	#20
	A = 16'h378f;
	B = 16'h3d04;
	ans_a = 16'h5580;
	#20
	A = 16'hbea3;
	B = 16'ha841;
	ans_a = 16'h5581;
	#20
	A = 16'hbeee;
	B = 16'h3c14;
	ans_a = 16'h5565;
	#20
	A = 16'hbf9a;
	B = 16'hb45f;
	ans_a = 16'h556d;
	#20
	A = 16'hb8cf;
	B = 16'hbf01;
	ans_a = 16'h557e;
	#20
	A = 16'h316c;
	B = 16'hb405;
	ans_a = 16'h557d;
	#20
	A = 16'h3f52;
	B = 16'h3b53;
	ans_a = 16'h5598;
	#20
	A = 16'hbe45;
	B = 16'h3c2c;
	ans_a = 16'h557e;
	#20
	A = 16'hb978;
	B = 16'hbef5;
	ans_a = 16'h5591;
	#20
	A = 16'h3e04;
	B = 16'h38b8;
	ans_a = 16'h559f;
	#20
	A = 16'h3ff4;
	B = 16'h3a10;
	ans_a = 16'h55b7;
	#20
	A = 16'hbef5;
	B = 16'h3cd4;
	ans_a = 16'h5595;
	#20
	A = 16'hb883;
	B = 16'h367d;
	ans_a = 16'h5591;
	#20
	A = 16'hbb6f;
	B = 16'h3f4c;
	ans_a = 16'h5576;
	#20
	A = 16'h3a56;
	B = 16'hbfd9;
	ans_a = 16'h555d;
	#20
	A = 16'hbd0c;
	B = 16'h3094;
	ans_a = 16'h555a;
	#20
	A = 16'hb5f1;
	B = 16'hbcb3;
	ans_a = 16'h5561;
	#20
	A = 16'h3c2e;
	B = 16'h3f0e;
	ans_a = 16'h557e;
	#20
	A = 16'hb5fe;
	B = 16'h3586;
	ans_a = 16'h557c;
	#20
	A = 16'hac15;
	B = 16'hb3d2;
	ans_a = 16'h557c;
	#20
	A = 16'hbd7a;
	B = 16'hbf4a;
	ans_a = 16'h55a4;
	#20
	A = 16'hbf80;
	B = 16'hb7e6;
	ans_a = 16'h55b3;
	#20
	A = 16'h3c26;
	B = 16'h34f6;
	ans_a = 16'h55b8;
	#20
	A = 16'hba80;
	B = 16'hbe38;
	ans_a = 16'h55cc;
	#20
	A = 16'hbf67;
	B = 16'hab17;
	ans_a = 16'h55ce;
	#20
	A = 16'h3c46;
	B = 16'h3e58;
	ans_a = 16'h55e9;
	#20
	A = 16'haf62;
	B = 16'hb884;
	ans_a = 16'h55ea;
	#20
	A = 16'h3ab4;
	B = 16'h38bc;
	ans_a = 16'h55f2;
	#20
	A = 16'hb8a2;
	B = 16'h3c95;
	ans_a = 16'h55e7;
	#20
	A = 16'h3b27;
	B = 16'hbc85;
	ans_a = 16'h55d7;
	#20
	A = 16'hbd1b;
	B = 16'hb6e6;
	ans_a = 16'h55e0;
	#20
	A = 16'hb3be;
	B = 16'h3bdc;
	ans_a = 16'h55dc;
	#20
	A = 16'h3c07;
	B = 16'h3c21;
	ans_a = 16'h55ed;
	#20
	A = 16'h3b02;
	B = 16'hbe5e;
	ans_a = 16'h55d7;
	#20
	A = 16'hbe4f;
	B = 16'h3ef6;
	ans_a = 16'h55ab;
	#20
	A = 16'hbf29;
	B = 16'hbf8a;
	ans_a = 16'h55e1;
	#20
	A = 16'hbbaa;
	B = 16'h3fc6;
	ans_a = 16'h55c3;
	#20
	A = 16'hb62f;
	B = 16'h3f8b;
	ans_a = 16'h55b7;
	#20
	A = 16'h368c;
	B = 16'hb441;
	ans_a = 16'h55b5;
	#20
	A = 16'h3431;
	B = 16'hbf8f;
	ans_a = 16'h55ad;
	#20
	A = 16'haaa4;
	B = 16'hb6e7;
	ans_a = 16'h55ad;
	#20
	A = 16'h3807;
	B = 16'h3a12;
	ans_a = 16'h55b3;
	#20
	A = 16'hbe9f;
	B = 16'hbbea;
	ans_a = 16'h55cd;
	#20
	A = 16'hb82b;
	B = 16'hbcae;
	ans_a = 16'h55d7;
	#20
	A = 16'hb753;
	B = 16'h3ea9;
	ans_a = 16'h55cb;
	#20
	A = 16'h3f1f;
	B = 16'h3140;
	ans_a = 16'h55d0;
	#20
	A = 16'h2e93;
	B = 16'hbe15;
	ans_a = 16'h55ce;
	#20
	A = 16'h3cd9;
	B = 16'hbf35;
	ans_a = 16'h55ab;
	#20
	A = 16'h3b47;
	B = 16'hb404;
	ans_a = 16'h55a7;
	#20
	A = 16'hb5fb;
	B = 16'h36e7;
	ans_a = 16'h55a4;
	#20
	A = 16'h3101;
	B = 16'hbf76;
	ans_a = 16'h559f;
	#20
	A = 16'hb4d9;
	B = 16'hb735;
	ans_a = 16'h55a1;
	#20
	A = 16'h3fc4;
	B = 16'h2ce2;
	ans_a = 16'h55a3;
	#20
	A = 16'h3ab6;
	B = 16'hb7c9;
	ans_a = 16'h559c;
	#20
	A = 16'hbcce;
	B = 16'h2f49;
	ans_a = 16'h559a;
	#20
	A = 16'hbd0a;
	B = 16'hbe53;
	ans_a = 16'h55ba;
	#20
	A = 16'h3ce5;
	B = 16'hbe4e;
	ans_a = 16'h559b;
	#20
	A = 16'h3c63;
	B = 16'hbf38;
	ans_a = 16'h557b;
	#20
	A = 16'h3f5a;
	B = 16'hb7fe;
	ans_a = 16'h556c;
	#20
	A = 16'h2b69;
	B = 16'h3cf2;
	ans_a = 16'h556d;
	#20
	A = 16'hbbbb;
	B = 16'hbe41;
	ans_a = 16'h5585;
	#20
	A = 16'h3e6c;
	B = 16'hbcf0;
	ans_a = 16'h5565;
	#20
	A = 16'h3439;
	B = 16'h363f;
	ans_a = 16'h5567;
	#20
	A = 16'h3ac9;
	B = 16'hbe2b;
	ans_a = 16'h5552;
	#20
	A = 16'h3dd9;
	B = 16'hb9d2;
	ans_a = 16'h5541;
	#20
	A = 16'hbbf1;
	B = 16'hbf2a;
	ans_a = 16'h555d;
	#20
	A = 16'habd2;
	B = 16'h3965;
	ans_a = 16'h555c;
	#20
	A = 16'h3c31;
	B = 16'h3bfe;
	ans_a = 16'h556d;
	#20
	A = 16'h3fbc;
	B = 16'h38c4;
	ans_a = 16'h557f;
	#20
	A = 16'hbc68;
	B = 16'h3a18;
	ans_a = 16'h5572;
	#20
	A = 16'h3d91;
	B = 16'h3e23;
	ans_a = 16'h5594;
	#20
	A = 16'h3c41;
	B = 16'hb607;
	ans_a = 16'h558e;
	#20
	A = 16'hbe4b;
	B = 16'hb98b;
	ans_a = 16'h559f;
	#20
	A = 16'h3999;
	B = 16'h3f46;
	ans_a = 16'h55b3;
	#20
	A = 16'h3d94;
	B = 16'hbafe;
	ans_a = 16'h55a0;
	#20
	A = 16'h3d84;
	B = 16'hb579;
	ans_a = 16'h5598;
	#20
	A = 16'hb853;
	B = 16'h3d29;
	ans_a = 16'h558d;
	#20
	A = 16'hb5f0;
	B = 16'hbe78;
	ans_a = 16'h5597;
	#20
	A = 16'hbc4f;
	B = 16'hb831;
	ans_a = 16'h55a0;
	#20
	A = 16'hbf33;
	B = 16'h3eb3;
	ans_a = 16'h5570;
	#20
	A = 16'h3e1b;
	B = 16'hb67f;
	ans_a = 16'h5566;
	#20
	A = 16'h35b0;
	B = 16'hbf81;
	ans_a = 16'h555b;
	#20
	A = 16'hb95d;
	B = 16'hba97;
	ans_a = 16'h5564;
	#20
	A = 16'h3cf3;
	B = 16'hb877;
	ans_a = 16'h5559;
	#20
	A = 16'hba42;
	B = 16'hb9de;
	ans_a = 16'h5562;
	#20
	A = 16'hb956;
	B = 16'h3e5b;
	ans_a = 16'h5551;
	#20
	A = 16'hbdb4;
	B = 16'hb808;
	ans_a = 16'h555c;
	#20
	A = 16'h38c1;
	B = 16'h355a;
	ans_a = 16'h555f;
	#20
	A = 16'h3ab8;
	B = 16'hb7a2;
	ans_a = 16'h5559;
	#20
	A = 16'h3bad;
	B = 16'hbf9c;
	ans_a = 16'h553c;
	#20
	A = 16'h3726;
	B = 16'hbd72;
	ans_a = 16'h5532;
	#20
	A = 16'h3ac6;
	B = 16'h296a;
	ans_a = 16'h5533;
	#20
	A = 16'hb9b7;
	B = 16'hb767;
	ans_a = 16'h5538;
	#20
	A = 16'hb435;
	B = 16'h396a;
	ans_a = 16'h5535;
	#20
	A = 16'h38e7;
	B = 16'h3f6e;
	ans_a = 16'h5547;
	#20
	A = 16'h3e3b;
	B = 16'hb9d3;
	ans_a = 16'h5535;
	#20
	A = 16'h3f8e;
	B = 16'h3f4d;
	ans_a = 16'h556c;
	#20
	A = 16'hbfe0;
	B = 16'hb4ab;
	ans_a = 16'h5575;
	#20
	A = 16'hb7ed;
	B = 16'h349a;
	ans_a = 16'h5573;
	#20
	A = 16'hbffa;
	B = 16'hac21;
	ans_a = 16'h5575;
	#20
	A = 16'hbeae;
	B = 16'hb8a4;
	ans_a = 16'h5584;
	#20
	A = 16'hb623;
	B = 16'h3d9b;
	ans_a = 16'h557b;
	#20
	A = 16'hb420;
	B = 16'h3b68;
	ans_a = 16'h5577;
	#20
	A = 16'h3f75;
	B = 16'hbbc4;
	ans_a = 16'h555a;
	#20
	A = 16'h3f07;
	B = 16'h2370;
	ans_a = 16'h555a;
	#20
	A = 16'h3cec;
	B = 16'hb465;
	ans_a = 16'h5555;
	#20
	A = 16'h39d7;
	B = 16'h38eb;
	ans_a = 16'h555c;
	#20
	A = 16'h3da7;
	B = 16'hbad4;
	ans_a = 16'h5549;
	#20
	A = 16'hbf0a;
	B = 16'h3b6c;
	ans_a = 16'h552f;
	#20
	A = 16'hb709;
	B = 16'h3c1f;
	ans_a = 16'h5528;
	#20
	A = 16'h3df0;
	B = 16'hb5e5;
	ans_a = 16'h551f;
	#20
	A = 16'hbfdf;
	B = 16'h3df5;
	ans_a = 16'h54f0;
	#20
	A = 16'h372a;
	B = 16'h3158;
	ans_a = 16'h54f1;
	#20
	A = 16'hbbee;
	B = 16'h3d96;
	ans_a = 16'h54db;
	#20
	A = 16'hbf40;
	B = 16'h3cc9;
	ans_a = 16'h54b8;
	#20
	A = 16'h3746;
	B = 16'h383c;
	ans_a = 16'h54bc;
	#20
	A = 16'hbd55;
	B = 16'h3cb0;
	ans_a = 16'h54a3;
	#20
	A = 16'hb52e;
	B = 16'hb5c0;
	ans_a = 16'h54a5;
	#20
	A = 16'hbf0f;
	B = 16'hacfc;
	ans_a = 16'h54a7;
	#20
	A = 16'h3880;
	B = 16'hbe6e;
	ans_a = 16'h5499;
	#20
	A = 16'hb9e7;
	B = 16'hb5ab;
	ans_a = 16'h549d;
	#20
	A = 16'h3be9;
	B = 16'hb5bd;
	ans_a = 16'h5497;
	#20
	A = 16'hbf73;
	B = 16'h34b5;
	ans_a = 16'h548e;
	#20
	A = 16'h33fd;
	B = 16'h3cf6;
	ans_a = 16'h5493;
	#20
	A = 16'h3ab3;
	B = 16'h3eae;
	ans_a = 16'h54a9;
	#20
	A = 16'hbe0b;
	B = 16'h3c04;
	ans_a = 16'h5491;
	#20
	A = 16'hb706;
	B = 16'hbaf2;
	ans_a = 16'h5497;
	#20
	A = 16'hb969;
	B = 16'h3ce2;
	ans_a = 16'h548a;
	#20
	A = 16'hb9a6;
	B = 16'hbc47;
	ans_a = 16'h5496;
	#20
	A = 16'hba79;
	B = 16'h3c6a;
	ans_a = 16'h5488;
	#20
	A = 16'hb499;
	B = 16'h3991;
	ans_a = 16'h5485;
	#20
	A = 16'h2a54;
	B = 16'h3bd3;
	ans_a = 16'h5486;
	#20
	A = 16'h3f35;
	B = 16'h3d0d;
	ans_a = 16'h54aa;
	#20
	A = 16'h3b10;
	B = 16'hb6bc;
	ans_a = 16'h54a4;
	#20
	A = 16'h3fb5;
	B = 16'h3bbf;
	ans_a = 16'h54c2;
	#20
	A = 16'hbed9;
	B = 16'h3d89;
	ans_a = 16'h549c;
	#20
	A = 16'hb939;
	B = 16'h394a;
	ans_a = 16'h5495;
	#20
	A = 16'h3e68;
	B = 16'hbbe9;
	ans_a = 16'h547c;
	#20
	A = 16'hbfab;
	B = 16'hbed5;
	ans_a = 16'h54b0;
	#20
	A = 16'hb93d;
	B = 16'h2e7b;
	ans_a = 16'h54af;
	#20
	A = 16'h3ed7;
	B = 16'h31fe;
	ans_a = 16'h54b4;
	#20
	A = 16'hb577;
	B = 16'hbc5c;
	ans_a = 16'h54ba;
	#20
	A = 16'h3b94;
	B = 16'h345a;
	ans_a = 16'h54be;
	#20
	A = 16'h2d0e;
	B = 16'h31f9;
	ans_a = 16'h54be;
	#20
	A = 16'hb0ed;
	B = 16'h34b6;
	ans_a = 16'h54bd;
	#20
	A = 16'h3d71;
	B = 16'h3e75;
	ans_a = 16'h54e0;
	#20
	A = 16'hbd89;
	B = 16'h2c84;
	ans_a = 16'h54de;
	#20
	A = 16'hbc2e;
	B = 16'h3c63;
	ans_a = 16'h54cc;
	#20
	A = 16'hba63;
	B = 16'h3fe3;
	ans_a = 16'h54b3;
	#20
	A = 16'h3ccf;
	B = 16'h329f;
	ans_a = 16'h54b7;
	#20
	A = 16'h3867;
	B = 16'h3f50;
	ans_a = 16'h54c7;
	#20
	A = 16'h386a;
	B = 16'h3d7d;
	ans_a = 16'h54d3;
	#20
	A = 16'h38ff;
	B = 16'h38da;
	ans_a = 16'h54d9;
	#20
	A = 16'hbc68;
	B = 16'h3aa9;
	ans_a = 16'h54ca;
	#20
	A = 16'hbf67;
	B = 16'h3cda;
	ans_a = 16'h54a6;
	#20
	A = 16'h3fce;
	B = 16'hbcc7;
	ans_a = 16'h5481;
	#20
	A = 16'h3df5;
	B = 16'h3ffd;
	ans_a = 16'h54b1;
	#20
	A = 16'h3c89;
	B = 16'h3601;
	ans_a = 16'h54b8;
	#20
	A = 16'h3f55;
	B = 16'hb925;
	ans_a = 16'h54a5;
	#20
	A = 16'h3d9f;
	B = 16'h311a;
	ans_a = 16'h54a9;
	#20
	A = 16'h359c;
	B = 16'h3b5c;
	ans_a = 16'h54ae;
	#20
	A = 16'h3893;
	B = 16'h3c26;
	ans_a = 16'h54b7;
	#20
	A = 16'hba79;
	B = 16'h35cd;
	ans_a = 16'h54b2;
	#20
	A = 16'hb9fc;
	B = 16'hbc1f;
	ans_a = 16'h54be;
	#20
	A = 16'h3e74;
	B = 16'hbeff;
	ans_a = 16'h5491;
	#20
	A = 16'hbfdc;
	B = 16'h3b6d;
	ans_a = 16'h5474;
	#20
	A = 16'h3c8c;
	B = 16'h3fb3;
	ans_a = 16'h5497;
	#20
	A = 16'hb88f;
	B = 16'h39c1;
	ans_a = 16'h5490;
	#20
	A = 16'hbf2a;
	B = 16'hbb5b;
	ans_a = 16'h54aa;
	#20
	A = 16'h3cfb;
	B = 16'h3252;
	ans_a = 16'h54ae;
	#20
	A = 16'h3542;
	B = 16'h3fb3;
	ans_a = 16'h54b8;
	#20
	A = 16'h3499;
	B = 16'h3bbd;
	ans_a = 16'h54bc;
	#20
	A = 16'h3f62;
	B = 16'hbaf1;
	ans_a = 16'h54a2;
	#20
	A = 16'h3d15;
	B = 16'h2eed;
	ans_a = 16'h54a4;
	#20
	A = 16'h3463;
	B = 16'hbf59;
	ans_a = 16'h549c;
	#20
	A = 16'h3cf6;
	B = 16'h3a92;
	ans_a = 16'h54ac;
	#20
	A = 16'hbd4f;
	B = 16'hb6b4;
	ans_a = 16'h54b5;
	#20
	A = 16'h37fd;
	B = 16'h33e7;
	ans_a = 16'h54b7;
	#20
	A = 16'hbfb1;
	B = 16'h394e;
	ans_a = 16'h54a3;
	#20
	A = 16'hb8e7;
	B = 16'ha91b;
	ans_a = 16'h54a3;
	#20
	A = 16'hb9e2;
	B = 16'h3d8c;
	ans_a = 16'h5493;
	#20
	A = 16'h3c22;
	B = 16'hbce1;
	ans_a = 16'h547f;
	#20
	A = 16'h3909;
	B = 16'h34bc;
	ans_a = 16'h5482;
	#20
	A = 16'hbb65;
	B = 16'hbff6;
	ans_a = 16'h549f;
	#20
	A = 16'hbcf5;
	B = 16'hb1b1;
	ans_a = 16'h54a3;
	#20
	A = 16'h37bf;
	B = 16'h3fc5;
	ans_a = 16'h54b2;
	#20
	A = 16'hbe07;
	B = 16'hb14c;
	ans_a = 16'h54b6;
	#20
	A = 16'hb09e;
	B = 16'hb479;
	ans_a = 16'h54b7;
	#20
	A = 16'hb8f0;
	B = 16'h3dc4;
	ans_a = 16'h54a9;
	#20
	A = 16'hb398;
	B = 16'hba39;
	ans_a = 16'h54ac;
	#20
	A = 16'hb0ba;
	B = 16'h2020;
	ans_a = 16'h54ac;
	#20
	A = 16'h3b88;
	B = 16'hbd1f;
	ans_a = 16'h5499;
	#20
	A = 16'h3066;
	B = 16'h3e6a;
	ans_a = 16'h549d;
	#20
	A = 16'hbd1e;
	B = 16'hbd5f;
	ans_a = 16'h54b8;
	#20
	A = 16'hbf56;
	B = 16'h2fed;
	ans_a = 16'h54b4;
	#20
	A = 16'hba6e;
	B = 16'hba21;
	ans_a = 16'h54be;
	#20
	A = 16'h349d;
	B = 16'h2cd7;
	ans_a = 16'h54be;
	#20
	A = 16'h31c5;
	B = 16'hacf8;
	ans_a = 16'h54be;
	#20
	A = 16'h3e57;
	B = 16'h3c29;
	ans_a = 16'h54d8;
	#20
	A = 16'hb533;
	B = 16'h3a38;
	ans_a = 16'h54d4;
	#20
	A = 16'hbfe3;
	B = 16'hbafa;
	ans_a = 16'h54f0;
	#20
	A = 16'hb272;
	B = 16'h2b1e;
	ans_a = 16'h54f0;
	#20
	A = 16'hbc07;
	B = 16'hb746;
	ans_a = 16'h54f7;
	#20
	A = 16'h3d28;
	B = 16'h3ce0;
	ans_a = 16'h5510;
	#20
	A = 16'haefe;
	B = 16'h3575;
	ans_a = 16'h550f;
	#20
	A = 16'h3ca5;
	B = 16'h36ae;
	ans_a = 16'h5517;
	#20
	A = 16'hbbbf;
	B = 16'h3e6e;
	ans_a = 16'h54fe;
	#20
	A = 16'hb9f0;
	B = 16'h3e0f;
	ans_a = 16'h54ec;
	#20
	A = 16'h3d70;
	B = 16'hb8ad;
	ans_a = 16'h54df;
	#20
	A = 16'h3e37;
	B = 16'h3fb7;
	ans_a = 16'h550f;
	#20
	A = 16'h39ea;
	B = 16'h2c32;
	ans_a = 16'h5510;
	#20
	A = 16'h399a;
	B = 16'h3a2c;
	ans_a = 16'h5519;
	#20
	A = 16'h3961;
	B = 16'hbe6a;
	ans_a = 16'h5508;
	#20
	A = 16'hbf75;
	B = 16'hbdf2;
	ans_a = 16'h5534;
	#20
	A = 16'h3d46;
	B = 16'hbda6;
	ans_a = 16'h5516;
	#20
	A = 16'h3db0;
	B = 16'h3e45;
	ans_a = 16'h553a;
	#20
	A = 16'h31ea;
	B = 16'h386d;
	ans_a = 16'h553c;
	#20
	A = 16'h3953;
	B = 16'hbbdb;
	ans_a = 16'h5532;
	#20
	A = 16'hb905;
	B = 16'h3905;
	ans_a = 16'h552c;
	#20
	A = 16'h28e7;
	B = 16'h3a34;
	ans_a = 16'h552c;
	#20
	A = 16'hbda6;
	B = 16'hb7d4;
	ans_a = 16'h5537;
	#20
	A = 16'h3948;
	B = 16'h3632;
	ans_a = 16'h553b;
	#20
	A = 16'hbf23;
	B = 16'hbba1;
	ans_a = 16'h5556;
	#20
	A = 16'hbff8;
	B = 16'h3ab8;
	ans_a = 16'h553b;
	#20
	A = 16'h3be2;
	B = 16'h3a48;
	ans_a = 16'h5547;
	#20
	A = 16'h3d74;
	B = 16'h3c80;
	ans_a = 16'h5560;
	#20
	A = 16'h3a0f;
	B = 16'hb9a2;
	ans_a = 16'h5557;
	#20
	A = 16'h3482;
	B = 16'h36cf;
	ans_a = 16'h5559;
	#20
	A = 16'h3fc3;
	B = 16'hb955;
	ans_a = 16'h5544;
	#20
	A = 16'hbf98;
	B = 16'hbe30;
	ans_a = 16'h5573;
	#20
	A = 16'hb9f1;
	B = 16'h3374;
	ans_a = 16'h5570;
	#20
	A = 16'h39b2;
	B = 16'h3f4b;
	ans_a = 16'h5585;
	#20
	A = 16'h2ff7;
	B = 16'hbd33;
	ans_a = 16'h5582;
	#20
	A = 16'hbd22;
	B = 16'hb6ba;
	ans_a = 16'h558b;
	#20
	A = 16'hb85d;
	B = 16'hbf9c;
	ans_a = 16'h559c;
	#20
	A = 16'hbd25;
	B = 16'hba3c;
	ans_a = 16'h55ac;
	#20
	A = 16'h3977;
	B = 16'h3ebb;
	ans_a = 16'h55be;
	#20
	A = 16'h3a35;
	B = 16'h3eaf;
	ans_a = 16'h55d3;
	#20
	A = 16'h3894;
	B = 16'hb341;
	ans_a = 16'h55d1;
	#20
	A = 16'hbd50;
	B = 16'hbf9f;
	ans_a = 16'h55fa;
	#20
	A = 16'h3bdd;
	B = 16'h3c09;
	ans_a = 16'h560a;
	#20
	A = 16'hbaaf;
	B = 16'hbeec;
	ans_a = 16'h5621;
	#20
	A = 16'h3e38;
	B = 16'h3c53;
	ans_a = 16'h563c;
	#20
	A = 16'hbef4;
	B = 16'hbfd1;
	ans_a = 16'h5672;
	#20
	A = 16'h2af6;
	B = 16'h36c3;
	ans_a = 16'h5672;
	#20
	A = 16'hbf39;
	B = 16'h3f07;
	ans_a = 16'h563f;
	#20
	A = 16'h3a0e;
	B = 16'h3187;
	ans_a = 16'h5641;
	#20
	A = 16'hb823;
	B = 16'hb7b6;
	ans_a = 16'h5645;
	#20
	A = 16'h3d6a;
	B = 16'hb084;
	ans_a = 16'h5642;
	#20
	A = 16'h3d69;
	B = 16'hbaaf;
	ans_a = 16'h5630;
	#20
	A = 16'h3e20;
	B = 16'h3ead;
	ans_a = 16'h5659;
	#20
	A = 16'h3e5f;
	B = 16'hba62;
	ans_a = 16'h5645;
	#20
	A = 16'h3a7f;
	B = 16'h38b3;
	ans_a = 16'h564d;
	#20
	A = 16'hbf53;
	B = 16'h3969;
	ans_a = 16'h5639;
	#20
	A = 16'h3391;
	B = 16'h3d39;
	ans_a = 16'h563e;
	#20
	A = 16'hbd61;
	B = 16'hbb82;
	ans_a = 16'h5652;
	#20
	A = 16'hbbcf;
	B = 16'hba0d;
	ans_a = 16'h565e;
	#20
	A = 16'hbf25;
	B = 16'hbad8;
	ans_a = 16'h5676;
	#20
	A = 16'hbc5e;
	B = 16'h3e7f;
	ans_a = 16'h565a;
	#20
	A = 16'h3e5c;
	B = 16'h3ee2;
	ans_a = 16'h5686;
	#20
	A = 16'hb894;
	B = 16'h3739;
	ans_a = 16'h5682;
	#20
	A = 16'hbf3f;
	B = 16'h3cc3;
	ans_a = 16'h5660;
	#20
	A = 16'ha45c;
	B = 16'hb20f;
	ans_a = 16'h5660;
	#20
	A = 16'hb62c;
	B = 16'hb682;
	ans_a = 16'h5663;
	#20
	A = 16'h360e;
	B = 16'hbc93;
	ans_a = 16'h565c;
	#20
	A = 16'hbc84;
	B = 16'hb694;
	ans_a = 16'h5663;
	#20
	A = 16'hbf6a;
	B = 16'hb17e;
	ans_a = 16'h5668;
	#20
	A = 16'h385d;
	B = 16'h3452;
	ans_a = 16'h566a;
	#20
	A = 16'hbf76;
	B = 16'hbc06;
	ans_a = 16'h5688;
	#20
	A = 16'h3865;
	B = 16'h3d7c;
	ans_a = 16'h5694;
	#20
	A = 16'hbe85;
	B = 16'h3b98;
	ans_a = 16'h567b;
	#20
	A = 16'hade0;
	B = 16'hbd5b;
	ans_a = 16'h567d;
	#20
	A = 16'hbf0c;
	B = 16'hb56e;
	ans_a = 16'h5687;
	#20
	A = 16'h39de;
	B = 16'h3b7c;
	ans_a = 16'h5692;
	#20
	A = 16'h392d;
	B = 16'hb864;
	ans_a = 16'h568c;
	#20
	A = 16'hbcd7;
	B = 16'hbc07;
	ans_a = 16'h569f;
	#20
	A = 16'h3a33;
	B = 16'haae6;
	ans_a = 16'h569e;
	#20
	A = 16'h3f6e;
	B = 16'ha64c;
	ans_a = 16'h569d;
	#20
	A = 16'hb431;
	B = 16'hbf37;
	ans_a = 16'h56a5;
	#20
	A = 16'h3e11;
	B = 16'h3ad8;
	ans_a = 16'h56ba;
	#20
	A = 16'hbbe7;
	B = 16'hbf5d;
	ans_a = 16'h56d7;
	#20
	A = 16'h37aa;
	B = 16'hbfca;
	ans_a = 16'h56c8;
	#20
	A = 16'hbde1;
	B = 16'hbd3c;
	ans_a = 16'h56e7;
	#20
	A = 16'hbb95;
	B = 16'hbf9e;
	ans_a = 16'h5704;
	#20
	A = 16'hb861;
	B = 16'h3c04;
	ans_a = 16'h56fb;
	#20
	A = 16'h3c21;
	B = 16'h3ad7;
	ans_a = 16'h5709;
	#20
	A = 16'hbbdf;
	B = 16'hb816;
	ans_a = 16'h5711;
	#20
	A = 16'h2f6f;
	B = 16'hba4f;
	ans_a = 16'h5710;
	#20
	A = 16'hb1ef;
	B = 16'hbb69;
	ans_a = 16'h5713;
	#20
	A = 16'h3c25;
	B = 16'h3fc6;
	ans_a = 16'h5733;
	#20
	A = 16'hb619;
	B = 16'hba98;
	ans_a = 16'h5738;
	#20
	A = 16'hadf7;
	B = 16'hbd7a;
	ans_a = 16'h573a;
	#20
	A = 16'hbfd3;
	B = 16'hb78f;
	ans_a = 16'h5749;
	#20
	A = 16'hba8a;
	B = 16'h3b36;
	ans_a = 16'h573d;
	#20
	A = 16'hba9b;
	B = 16'hbc53;
	ans_a = 16'h574b;
	#20
	A = 16'h3476;
	B = 16'hbc90;
	ans_a = 16'h5746;
	#20
	A = 16'hbef7;
	B = 16'h3cd9;
	ans_a = 16'h5724;
	#20
	A = 16'h34e7;
	B = 16'h3f76;
	ans_a = 16'h572d;
	#20
	A = 16'h3cec;
	B = 16'h3954;
	ans_a = 16'h573a;
	#20
	A = 16'hb87c;
	B = 16'hbd09;
	ans_a = 16'h5745;
	#20
	A = 16'h3cb7;
	B = 16'hb37a;
	ans_a = 16'h5741;
	#20
	A = 16'h3dff;
	B = 16'hbd7d;
	ans_a = 16'h5720;
	#20
	A = 16'hbebb;
	B = 16'hbda8;
	ans_a = 16'h5746;
	#20
	A = 16'h39d9;
	B = 16'h2002;
	ans_a = 16'h5746;
	#20
	A = 16'hb541;
	B = 16'hb7cf;
	ans_a = 16'h5749;
	#20
	A = 16'hbaad;
	B = 16'h37fe;
	ans_a = 16'h5742;
	#20
	A = 16'hb5c5;
	B = 16'hb0a9;
	ans_a = 16'h5743;
	#20
	A = 16'h3174;
	B = 16'h297e;
	ans_a = 16'h5743;
	#20
	A = 16'h39ad;
	B = 16'h3642;
	ans_a = 16'h5747;
	#20
	A = 16'hb896;
	B = 16'hbf3c;
	ans_a = 16'h5758;
	#20
	A = 16'hb935;
	B = 16'hac8b;
	ans_a = 16'h5759;
	#20
	A = 16'h3be3;
	B = 16'h3b67;
	ans_a = 16'h5768;
	#20
	A = 16'hbf66;
	B = 16'hbaa5;
	ans_a = 16'h5781;
	#20
	A = 16'hb9f6;
	B = 16'hbc13;
	ans_a = 16'h578d;
	#20
	A = 16'h3e95;
	B = 16'h30f6;
	ans_a = 16'h5791;
	#20
	A = 16'hbbf4;
	B = 16'hb9df;
	ans_a = 16'h579d;
	#20
	A = 16'hbde2;
	B = 16'haf45;
	ans_a = 16'h57a0;
	#20
	A = 16'h3dc4;
	B = 16'hb9e6;
	ans_a = 16'h578f;
	#20
	A = 16'h3d99;
	B = 16'hbced;
	ans_a = 16'h5773;
	#20
	A = 16'hb66f;
	B = 16'hab0f;
	ans_a = 16'h5773;
	#20
	A = 16'hba4d;
	B = 16'h3c08;
	ans_a = 16'h5766;
	#20
	A = 16'h3791;
	B = 16'hbe30;
	ans_a = 16'h575a;
	#20
	A = 16'h39c9;
	B = 16'h2b4b;
	ans_a = 16'h575b;
	#20
	A = 16'h3e42;
	B = 16'hbddc;
	ans_a = 16'h5736;
	#20
	A = 16'hbb99;
	B = 16'h3a26;
	ans_a = 16'h572a;
	#20
	A = 16'h3556;
	B = 16'hb871;
	ans_a = 16'h5727;
	#20
	A = 16'hbe90;
	B = 16'h2f3b;
	ans_a = 16'h5724;
	#20
	A = 16'hbef4;
	B = 16'hbc41;
	ans_a = 16'h5742;
	#20
	A = 16'h3a2d;
	B = 16'h3e9e;
	ans_a = 16'h5756;
	#20
	A = 16'hbd48;
	B = 16'hb022;
	ans_a = 16'h5759;
	#20
	A = 16'h3be7;
	B = 16'h3d03;
	ans_a = 16'h576d;
	#20
	A = 16'hb6ea;
	B = 16'hb973;
	ans_a = 16'h5772;
	#20
	A = 16'h3ed2;
	B = 16'h383e;
	ans_a = 16'h5780;
	#20
	A = 16'h3f60;
	B = 16'h3af4;
	ans_a = 16'h579a;
	#20
	A = 16'hba18;
	B = 16'h3940;
	ans_a = 16'h5792;
	#20
	A = 16'h37ea;
	B = 16'h3dd0;
	ans_a = 16'h579e;
	#20
	A = 16'h3d02;
	B = 16'h3996;
	ans_a = 16'h57ac;
	#20
	A = 16'hbdf6;
	B = 16'h3cfb;
	ans_a = 16'h578e;
	#20
	A = 16'hbf87;
	B = 16'hb1b5;
	ans_a = 16'h5793;
	#20
	A = 16'h3c4b;
	B = 16'hb8df;
	ans_a = 16'h5789;
	#20
	A = 16'h38af;
	B = 16'hbd5a;
	ans_a = 16'h577c;
	#20
	A = 16'h3dea;
	B = 16'h34c6;
	ans_a = 16'h5783;
	#20
	A = 16'hba61;
	B = 16'h3f23;
	ans_a = 16'h576c;
	#20
	A = 16'h3252;
	B = 16'h3bae;
	ans_a = 16'h576f;
	#20
	A = 16'hbc57;
	B = 16'hbb92;
	ans_a = 16'h577f;
	#20
	A = 16'h3d78;
	B = 16'h3ff2;
	ans_a = 16'h57aa;
	#20
	A = 16'hbfa7;
	B = 16'hbf18;
	ans_a = 16'h57e0;
	#20
	A = 16'h382b;
	B = 16'hbc3d;
	ans_a = 16'h57d7;
	#20
	A = 16'hbf8f;
	B = 16'hb9db;
	ans_a = 16'h57ed;
	#20
	A = 16'h3c2d;
	B = 16'hbf21;
	ans_a = 16'h57cf;
	#20
	A = 16'h3f6a;
	B = 16'h2b93;
	ans_a = 16'h57d1;
	#20
	A = 16'h3bcc;
	B = 16'hb809;
	ans_a = 16'h57c9;
	#20
	A = 16'hb91b;
	B = 16'h3ec9;
	ans_a = 16'h57b8;
	#20
	A = 16'hbf06;
	B = 16'hbcdb;
	ans_a = 16'h57da;
	#20
	A = 16'h317b;
	B = 16'hb883;
	ans_a = 16'h57d8;
	#20
	A = 16'hbf85;
	B = 16'h3e1f;
	ans_a = 16'h57aa;
	#20
	A = 16'h3d33;
	B = 16'hbbeb;
	ans_a = 16'h5795;
	#20
	A = 16'hbc3d;
	B = 16'hbfd4;
	ans_a = 16'h57b6;
	#20
	A = 16'h3873;
	B = 16'hbcca;
	ans_a = 16'h57ab;
	#20
	A = 16'hbfa4;
	B = 16'h3dee;
	ans_a = 16'h577e;
	#20
	A = 16'h3fc0;
	B = 16'h3830;
	ans_a = 16'h578e;
	#20
	A = 16'h3b3f;
	B = 16'h3f4a;
	ans_a = 16'h57a8;
	#20
	A = 16'h3c5c;
	B = 16'hb880;
	ans_a = 16'h579e;
	#20
	A = 16'hbd8e;
	B = 16'h3cb8;
	ans_a = 16'h5784;
	#20
	A = 16'h3cbb;
	B = 16'hbcbd;
	ans_a = 16'h576e;
	#20
	A = 16'h3f5c;
	B = 16'h311a;
	ans_a = 16'h5773;
	#20
	A = 16'h35e5;
	B = 16'haead;
	ans_a = 16'h5772;
	#20
	A = 16'hadbe;
	B = 16'hba60;
	ans_a = 16'h5773;
	#20
	A = 16'ha8b5;
	B = 16'h3c90;
	ans_a = 16'h5772;
	#20
	A = 16'hbcce;
	B = 16'h345d;
	ans_a = 16'h576d;
	#20
	A = 16'h38d3;
	B = 16'hb9c6;
	ans_a = 16'h5766;
	#20
	A = 16'hbc33;
	B = 16'hbc07;
	ans_a = 16'h5777;
	#20
	A = 16'h3fb2;
	B = 16'hbd20;
	ans_a = 16'h5750;
	#20
	A = 16'h3e8f;
	B = 16'hbdff;
	ans_a = 16'h5729;
	#20
	A = 16'h3d28;
	B = 16'h2e54;
	ans_a = 16'h572b;
	#20
	A = 16'h3fb7;
	B = 16'hbf30;
	ans_a = 16'h56f4;
	#20
	A = 16'hb964;
	B = 16'hbc08;
	ans_a = 16'h56ff;
	#20
	A = 16'h2ae6;
	B = 16'h30c8;
	ans_a = 16'h56ff;
	#20
	A = 16'hbcc8;
	B = 16'hbe4a;
	ans_a = 16'h571d;
	#20
	A = 16'h3c06;
	B = 16'h3d79;
	ans_a = 16'h5733;
	#20
	A = 16'hba02;
	B = 16'h3c84;
	ans_a = 16'h5725;
	#20
	A = 16'hbd8c;
	B = 16'hb810;
	ans_a = 16'h5730;
	#20
	A = 16'h3843;
	B = 16'hbc10;
	ans_a = 16'h5727;
	#20
	A = 16'h3ffa;
	B = 16'hb4ca;
	ans_a = 16'h571d;
	#20
	A = 16'h3866;
	B = 16'hbd73;
	ans_a = 16'h5711;
	#20
	A = 16'hbe80;
	B = 16'hba10;
	ans_a = 16'h5725;
	#20
	A = 16'hb6d9;
	B = 16'h3d54;
	ans_a = 16'h571c;
	#20
	A = 16'hb103;
	B = 16'hbd93;
	ans_a = 16'h571f;
	#20
	A = 16'hb6cc;
	B = 16'hbe9a;
	ans_a = 16'h572a;
	#20
	A = 16'h3bef;
	B = 16'hbc6f;
	ans_a = 16'h5718;
	#20
	A = 16'h340f;
	B = 16'h3ee8;
	ans_a = 16'h571f;
	#20
	A = 16'hbdbf;
	B = 16'h30e6;
	ans_a = 16'h571b;
	#20
	A = 16'h38c1;
	B = 16'hbec7;
	ans_a = 16'h570b;
	#20
	A = 16'hb558;
	B = 16'h3fa6;
	ans_a = 16'h5701;
	#20
	A = 16'h3ead;
	B = 16'h3920;
	ans_a = 16'h5712;
	#20
	A = 16'h3e31;
	B = 16'h3773;
	ans_a = 16'h571e;
	#20
	A = 16'hbf1f;
	B = 16'hbb05;
	ans_a = 16'h5737;
	#20
	A = 16'h3e37;
	B = 16'hbe4e;
	ans_a = 16'h5710;
	#20
	A = 16'h3932;
	B = 16'h3e2f;
	ans_a = 16'h5720;
	#20
	A = 16'hbcf8;
	B = 16'h3e27;
	ans_a = 16'h5701;
	#20
	A = 16'h36aa;
	B = 16'hba82;
	ans_a = 16'h56fc;
	#20
	A = 16'hbcdf;
	B = 16'hba12;
	ans_a = 16'h570b;
	#20
	A = 16'hbd09;
	B = 16'hb724;
	ans_a = 16'h5714;
	#20
	A = 16'hbee5;
	B = 16'hbf8f;
	ans_a = 16'h5748;
	#20
	A = 16'hbc60;
	B = 16'h3fae;
	ans_a = 16'h5726;
	#20
	A = 16'hbd14;
	B = 16'hbbfc;
	ans_a = 16'h573a;
	#20
	A = 16'h340f;
	B = 16'h3674;
	ans_a = 16'h573c;
	#20
	A = 16'h3d6d;
	B = 16'h3f29;
	ans_a = 16'h5763;
	#20
	A = 16'hbf9a;
	B = 16'hbc93;
	ans_a = 16'h5786;
	#20
	A = 16'h3dd5;
	B = 16'hbe8c;
	ans_a = 16'h5760;
	#20
	A = 16'hbcdf;
	B = 16'h3e27;
	ans_a = 16'h5742;
	#20
	A = 16'hbf74;
	B = 16'hbc24;
	ans_a = 16'h5761;
	#20
	A = 16'h3fb9;
	B = 16'h3e97;
	ans_a = 16'h5794;
	#20
	A = 16'h3722;
	B = 16'h3ae6;
	ans_a = 16'h579a;
	#20
	A = 16'h3ff0;
	B = 16'h3de6;
	ans_a = 16'h57c9;
	#20
	A = 16'h39e0;
	B = 16'hbc43;
	ans_a = 16'h57bc;
	#20
	A = 16'h3a8b;
	B = 16'h3f9f;
	ans_a = 16'h57d5;
	#20
	A = 16'hb648;
	B = 16'h3998;
	ans_a = 16'h57d1;
	#20
	A = 16'hbc96;
	B = 16'hbd4a;
	ans_a = 16'h57e9;
	#20
	A = 16'h3859;
	B = 16'hbeff;
	ans_a = 16'h57da;
	#20
	A = 16'hbfef;
	B = 16'h3e8e;
	ans_a = 16'h57a6;
	#20
	A = 16'h3281;
	B = 16'h3872;
	ans_a = 16'h57a8;
	#20
	A = 16'h3974;
	B = 16'h3e90;
	ans_a = 16'h57ba;
	#20
	A = 16'hbea4;
	B = 16'h36fb;
	ans_a = 16'h57ae;
	#20
	A = 16'h3839;
	B = 16'h3e7d;
	ans_a = 16'h57bc;
	#20
	A = 16'hbed8;
	B = 16'h3d9f;
	ans_a = 16'h5796;
	#20
	A = 16'h2b44;
	B = 16'hb6a1;
	ans_a = 16'h5796;
	#20
	A = 16'hbce2;
	B = 16'h3c9b;
	ans_a = 16'h5780;
	#20
	A = 16'h3fbb;
	B = 16'h368c;
	ans_a = 16'h578d;
	#20
	A = 16'h3e92;
	B = 16'hb348;
	ans_a = 16'h5787;
	#20
	A = 16'hb4a7;
	B = 16'h3d1e;
	ans_a = 16'h5781;
	#20
	A = 16'hbd54;
	B = 16'hbc61;
	ans_a = 16'h5798;
	#20
	A = 16'hb878;
	B = 16'h34f6;
	ans_a = 16'h5795;
	#20
	A = 16'h3cc7;
	B = 16'h3983;
	ans_a = 16'h57a2;
	#20
	A = 16'hbc8f;
	B = 16'h3ae8;
	ans_a = 16'h5792;
	#20
	A = 16'h3a66;
	B = 16'hab55;
	ans_a = 16'h5791;
	#20
	A = 16'h3f60;
	B = 16'h38d2;
	ans_a = 16'h57a3;
	#20
	A = 16'hb4ae;
	B = 16'h3e75;
	ans_a = 16'h579b;
	#20
	A = 16'h3ee2;
	B = 16'h364b;
	ans_a = 16'h57a6;
	#20
	A = 16'hbdf9;
	B = 16'h397e;
	ans_a = 16'h5796;
	#20
	A = 16'h3a05;
	B = 16'hbaa7;
	ans_a = 16'h578c;
	#20
	A = 16'h3c79;
	B = 16'hbdbc;
	ans_a = 16'h5772;
	#20
	A = 16'hb93d;
	B = 16'h3fa0;
	ans_a = 16'h575e;
	#20
	A = 16'hbb97;
	B = 16'h3b2a;
	ans_a = 16'h5750;
	#20
	A = 16'h3f2f;
	B = 16'hbd97;
	ans_a = 16'h5728;
	#20
	A = 16'hbb8d;
	B = 16'h3ebc;
	ans_a = 16'h570f;
	#20
	A = 16'hbe39;
	B = 16'hb803;
	ans_a = 16'h571b;
	#20
	A = 16'h3862;
	B = 16'hbb64;
	ans_a = 16'h5713;
	#20
	A = 16'h3f0a;
	B = 16'h3fb1;
	ans_a = 16'h5749;
	#20
	A = 16'hbc77;
	B = 16'h1ca1;
	ans_a = 16'h5749;
	#20
	A = 16'hbfe7;
	B = 16'h3f90;
	ans_a = 16'h570d;
	#20
	A = 16'h39e7;
	B = 16'h357b;
	ans_a = 16'h5711;
	#20
	A = 16'h3f92;
	B = 16'hb4d4;
	ans_a = 16'h5708;
	#20
	A = 16'hbd6a;
	B = 16'hb8a4;
	ans_a = 16'h5715;
	#20
	A = 16'hb5a6;
	B = 16'h3b75;
	ans_a = 16'h5710;
	#20
	A = 16'hbd77;
	B = 16'hb8de;
	ans_a = 16'h571d;
	#20
	A = 16'h3ccd;
	B = 16'hbc8f;
	ans_a = 16'h5707;
	#20
	A = 16'h3e02;
	B = 16'h3b06;
	ans_a = 16'h571c;
	#20
	A = 16'hb8b7;
	B = 16'h3e82;
	ans_a = 16'h570d;
	#20
	A = 16'hba2f;
	B = 16'h3ce0;
	ans_a = 16'h56fe;
	#20
	A = 16'hb85b;
	B = 16'hbff0;
	ans_a = 16'h570f;
	#20
	A = 16'hb927;
	B = 16'h3e3a;
	ans_a = 16'h56ff;
	#20
	A = 16'h3e80;
	B = 16'hbdec;
	ans_a = 16'h56d8;
	#20
	A = 16'hbe41;
	B = 16'h2f7e;
	ans_a = 16'h56d5;
	#20
	A = 16'hba40;
	B = 16'h3d1b;
	ans_a = 16'h56c5;
	#20
	A = 16'hb990;
	B = 16'h3e34;
	ans_a = 16'h56b4;
	#20
	A = 16'h3db1;
	B = 16'hbe1d;
	ans_a = 16'h5691;
	#20
	A = 16'h3bd2;
	B = 16'hb906;
	ans_a = 16'h5687;
	#20
	A = 16'h3cf1;
	B = 16'h3949;
	ans_a = 16'h5694;
	#20
	A = 16'h3730;
	B = 16'haecb;
	ans_a = 16'h5693;
	#20
	A = 16'h3d4d;
	B = 16'h358e;
	ans_a = 16'h569a;
	#20
	A = 16'hb6ea;
	B = 16'h3d41;
	ans_a = 16'h5691;
	#20
	A = 16'h3bc6;
	B = 16'h3f03;
	ans_a = 16'h56ac;
	#20
	A = 16'hbebf;
	B = 16'h3c2c;
	ans_a = 16'h5690;
	#20
	A = 16'h3635;
	B = 16'hbfd0;
	ans_a = 16'h5684;
	#20
	A = 16'hbc6e;
	B = 16'hbd57;
	ans_a = 16'h569c;
	#20
	A = 16'h3ab1;
	B = 16'hb91f;
	ans_a = 16'h5693;
	#20
	A = 16'h3fc2;
	B = 16'hb361;
	ans_a = 16'h568c;
	#20
	A = 16'hb8fb;
	B = 16'hbeab;
	ans_a = 16'h569d;
	#20
	A = 16'hb791;
	B = 16'hb990;
	ans_a = 16'h56a2;
	#20
	A = 16'h3e04;
	B = 16'hb540;
	ans_a = 16'h569a;
	#20
	A = 16'h3dac;
	B = 16'h3505;
	ans_a = 16'h56a1;
	#20
	A = 16'hba28;
	B = 16'hbe56;
	ans_a = 16'h56b4;
	#20
	A = 16'h3edf;
	B = 16'h35c1;
	ans_a = 16'h56be;
	#20
	A = 16'hab87;
	B = 16'hbd60;
	ans_a = 16'h56bf;
	#20
	A = 16'h3fa6;
	B = 16'hb1ea;
	ans_a = 16'h56b9;
	#20
	A = 16'hbc95;
	B = 16'h3e8b;
	ans_a = 16'h569b;
	#20
	A = 16'h3b6d;
	B = 16'hb5b3;
	ans_a = 16'h5696;
	#20
	A = 16'hbecb;
	B = 16'hba05;
	ans_a = 16'h56aa;
	#20
	A = 16'hbd12;
	B = 16'hbf59;
	ans_a = 16'h56cf;
	#20
	A = 16'hbd9a;
	B = 16'h3f4e;
	ans_a = 16'h56a6;
	#20
	A = 16'h329d;
	B = 16'hbbe2;
	ans_a = 16'h56a3;
	#20
	A = 16'h3c8f;
	B = 16'hbfa5;
	ans_a = 16'h5680;
	#20
	A = 16'hbdec;
	B = 16'hbe93;
	ans_a = 16'h56a7;
	#20
	A = 16'hb81b;
	B = 16'h3aec;
	ans_a = 16'h56a0;
	#20
	A = 16'hbcd0;
	B = 16'hb70e;
	ans_a = 16'h56a8;
	#20
	A = 16'hbfc9;
	B = 16'h3866;
	ans_a = 16'h5697;
	#20
	A = 16'hbfd9;
	B = 16'h3c2d;
	ans_a = 16'h5676;
	#20
	A = 16'hbe0b;
	B = 16'haece;
	ans_a = 16'h5679;
	#20
	A = 16'hbcc7;
	B = 16'h3e2f;
	ans_a = 16'h565b;
	#20
	A = 16'h3fbc;
	B = 16'h3f3b;
	ans_a = 16'h5693;
	#20
	A = 16'h3fdf;
	B = 16'h3d22;
	ans_a = 16'h56bb;
	#20
	A = 16'h3dc4;
	B = 16'h3643;
	ans_a = 16'h56c4;
	#20
	A = 16'hbb35;
	B = 16'hba13;
	ans_a = 16'h56cf;
	#20
	A = 16'hbcc5;
	B = 16'h3fbe;
	ans_a = 16'h56aa;
	#20
	A = 16'h3c9e;
	B = 16'h38b9;
	ans_a = 16'h56b5;
	#20
	A = 16'h3e35;
	B = 16'hb8fc;
	ans_a = 16'h56a6;
	#20
	A = 16'haf28;
	B = 16'h2a4e;
	ans_a = 16'h56a6;
	#20
	A = 16'hb263;
	B = 16'hbba5;
	ans_a = 16'h56a9;
	#20
	A = 16'h3879;
	B = 16'hb875;
	ans_a = 16'h56a4;
	#20
	A = 16'h3d76;
	B = 16'h39c8;
	ans_a = 16'h56b4;
	#20
	A = 16'h3e87;
	B = 16'h3d0c;
	ans_a = 16'h56d5;
	#20
	A = 16'hb696;
	B = 16'hb06d;
	ans_a = 16'h56d6;
	#20
	A = 16'h3c1d;
	B = 16'hbf0f;
	ans_a = 16'h56b9;
	#20
	A = 16'hbf18;
	B = 16'h3a23;
	ans_a = 16'h56a3;
	#20
	A = 16'h3ebc;
	B = 16'h3e23;
	ans_a = 16'h56cc;
	#20
	A = 16'hbbb6;
	B = 16'hbc15;
	ans_a = 16'h56dc;
	#20
	A = 16'h3fff;
	B = 16'h3fc0;
	ans_a = 16'h571a;
	#20
	A = 16'hbed0;
	B = 16'hbc9c;
	ans_a = 16'h5739;
	#20
	A = 16'hbf70;
	B = 16'hbcb2;
	ans_a = 16'h575c;
	#20
	A = 16'h3fce;
	B = 16'h3747;
	ans_a = 16'h576a;
	#20
	A = 16'h2935;
	B = 16'hbcaa;
	ans_a = 16'h5769;
	#20
	A = 16'hbc8c;
	B = 16'h3c26;
	ans_a = 16'h5756;
	#20
	A = 16'h3c7e;
	B = 16'h3fde;
	ans_a = 16'h5779;
	#20
	A = 16'h3d14;
	B = 16'hb9ab;
	ans_a = 16'h576b;
	#20
	A = 16'hbc2d;
	B = 16'hbfaa;
	ans_a = 16'h578b;
	#20
	A = 16'hbacb;
	B = 16'hbedb;
	ans_a = 16'h57a2;
	#20
	A = 16'hbc51;
	B = 16'hbf27;
	ans_a = 16'h57c1;
	#20
	A = 16'hbeb5;
	B = 16'hba69;
	ans_a = 16'h57d6;
	#20
	A = 16'h36ba;
	B = 16'h3f20;
	ans_a = 16'h57e2;
	#20
	A = 16'h35d3;
	B = 16'h3091;
	ans_a = 16'h57e3;
	#20
	A = 16'h3714;
	B = 16'hbe06;
	ans_a = 16'h57d8;
	#20
	A = 16'hbfa3;
	B = 16'hb6e9;
	ans_a = 16'h57e5;
	#20
	A = 16'hbda4;
	B = 16'h3c8e;
	ans_a = 16'h57cb;
	#20
	A = 16'hb960;
	B = 16'h9420;
	ans_a = 16'h57cb;
	#20
	A = 16'hbcdc;
	B = 16'hbf79;
	ans_a = 16'h57ef;
	#20
	A = 16'h3c32;
	B = 16'hbdd7;
	ans_a = 16'h57d6;
	#20
	A = 16'h3d42;
	B = 16'hbb58;
	ans_a = 16'h57c3;
	#20
	A = 16'h330f;
	B = 16'hbf7b;
	ans_a = 16'h57bc;
	#20
	A = 16'hbbca;
	B = 16'hb914;
	ans_a = 16'h57c6;
	#20
	A = 16'haa6b;
	B = 16'h3e08;
	ans_a = 16'h57c5;
	#20
	A = 16'h38b7;
	B = 16'hbe6f;
	ans_a = 16'h57b6;
	#20
	A = 16'h3ea2;
	B = 16'h3d11;
	ans_a = 16'h57d8;
	#20
	A = 16'h37b1;
	B = 16'h3c7d;
	ans_a = 16'h57e1;
	#20
	A = 16'hbfd3;
	B = 16'hbdd8;
	ans_a = 16'h5807;
	#20
	A = 16'hba9a;
	B = 16'h3c13;
	ans_a = 16'h5800;
	#20
	A = 16'hac55;
	B = 16'h3d8d;
	ans_a = 16'h57fe;
	#20
	A = 16'hbd35;
	B = 16'hbfb7;
	ans_a = 16'h5813;
	#20
	A = 16'hbfd9;
	B = 16'h386d;
	ans_a = 16'h580a;
	#20
	A = 16'hbdd1;
	B = 16'hbeab;
	ans_a = 16'h581d;
	#20
	A = 16'hb8cc;
	B = 16'h3c8a;
	ans_a = 16'h5818;
	#20
	A = 16'hbc37;
	B = 16'h38cf;
	ans_a = 16'h5813;
	#20
	A = 16'hbb00;
	B = 16'hbe5a;
	ans_a = 16'h581e;
	#20
	A = 16'h3b07;
	B = 16'h3d42;
	ans_a = 16'h5827;
	#20
	A = 16'h3df5;
	B = 16'hbe57;
	ans_a = 16'h5814;
	#20
	A = 16'h3fda;
	B = 16'hbffc;
	ans_a = 16'h57e9;
	#20
	A = 16'h3d42;
	B = 16'h3879;
	ans_a = 16'h57f5;
	#20
	A = 16'h3b6e;
	B = 16'hbe7a;
	ans_a = 16'h57dd;
	#20
	A = 16'h3c0e;
	B = 16'hbdb4;
	ans_a = 16'h57c6;
	#20
	A = 16'hb427;
	B = 16'h3ca8;
	ans_a = 16'h57c1;
	#20
	A = 16'h3937;
	B = 16'h3451;
	ans_a = 16'h57c4;
	#20
	A = 16'h3d0a;
	B = 16'h3fd9;
	ans_a = 16'h57ec;
	#20
	A = 16'haf18;
	B = 16'hb76c;
	ans_a = 16'h57ed;
	#20
	A = 16'h2b53;
	B = 16'h3bb7;
	ans_a = 16'h57ee;
	#20
	A = 16'hb90c;
	B = 16'h334b;
	ans_a = 16'h57ec;
	#20
	A = 16'h37cb;
	B = 16'h3c47;
	ans_a = 16'h57f4;
	#20
	A = 16'hbe81;
	B = 16'h3f23;
	ans_a = 16'h57c6;
	#20
	A = 16'h3488;
	B = 16'h3689;
	ans_a = 16'h57c8;
	#20
	A = 16'h3f66;
	B = 16'h3e7f;
	ans_a = 16'h57f8;
	#20
	A = 16'h3c05;
	B = 16'hb081;
	ans_a = 16'h57f6;
	#20
	A = 16'h3e57;
	B = 16'h3f05;
	ans_a = 16'h5811;
	#20
	A = 16'hb362;
	B = 16'hb772;
	ans_a = 16'h5812;
	#20
	A = 16'hb1a5;
	B = 16'hb073;
	ans_a = 16'h5812;
	#20
	A = 16'h292e;
	B = 16'h291d;
	ans_a = 16'h5812;
	#20
	A = 16'h9cb5;
	B = 16'h3c31;
	ans_a = 16'h5812;
	#20
	A = 16'hbd6d;
	B = 16'h392e;
	ans_a = 16'h580b;
	#20
	A = 16'h3f00;
	B = 16'hbf27;
	ans_a = 16'h57e4;
	#20
	A = 16'hab97;
	B = 16'h3cc8;
	ans_a = 16'h57e3;
	#20
	A = 16'hbe51;
	B = 16'hbd5d;
	ans_a = 16'h5802;
	#20
	A = 16'h35e3;
	B = 16'hbf51;
	ans_a = 16'h57f9;
	#20
	A = 16'hbbec;
	B = 16'ha865;
	ans_a = 16'h57fa;
	#20
	A = 16'hb0bc;
	B = 16'hbecf;
	ans_a = 16'h57fe;
	#20
	A = 16'h3987;
	B = 16'h3daf;
	ans_a = 16'h5807;
	#20
	A = 16'hbc20;
	B = 16'hbc81;
	ans_a = 16'h5810;
	#20
	A = 16'h2598;
	B = 16'h3f07;
	ans_a = 16'h5810;
	#20
	A = 16'hbe7f;
	B = 16'h3811;
	ans_a = 16'h5809;
	#20
	A = 16'h2c03;
	B = 16'h3cc1;
	ans_a = 16'h580a;
	#20
	A = 16'ha1a7;
	B = 16'hbb92;
	ans_a = 16'h580a;
	#20
	A = 16'h388f;
	B = 16'h3e50;
	ans_a = 16'h5811;
	#20
	A = 16'hbbf4;
	B = 16'h3e10;
	ans_a = 16'h5805;
	#20
	A = 16'h3e70;
	B = 16'h3561;
	ans_a = 16'h5809;
	#20
	A = 16'h3c8f;
	B = 16'hb867;
	ans_a = 16'h5804;
	#20
	A = 16'hbfc6;
	B = 16'hbe4c;
	ans_a = 16'h581c;
	#20
	A = 16'hbec4;
	B = 16'h3296;
	ans_a = 16'h5819;
	#20
	A = 16'hba39;
	B = 16'h3f27;
	ans_a = 16'h580e;
	#20
	A = 16'hbe98;
	B = 16'h3ed4;
	ans_a = 16'h57ef;
	#20
	A = 16'h3af6;
	B = 16'h3f74;
	ans_a = 16'h5804;
	#20
	A = 16'hba34;
	B = 16'h3627;
	ans_a = 16'h5802;
	#20
	A = 16'h3df2;
	B = 16'h2c1a;
	ans_a = 16'h5803;
	#20
	A = 16'h3b32;
	B = 16'h3d10;
	ans_a = 16'h580c;
	#20
	A = 16'h3d29;
	B = 16'h3e7c;
	ans_a = 16'h581d;
	#20
	A = 16'h29b8;
	B = 16'hb51d;
	ans_a = 16'h581d;
	#20
	A = 16'h2437;
	B = 16'h352a;
	ans_a = 16'h581d;
	#20
	A = 16'h3bad;
	B = 16'hbcec;
	ans_a = 16'h5814;
	#20
	A = 16'hba1d;
	B = 16'hb0eb;
	ans_a = 16'h5815;
	#20
	A = 16'h3784;
	B = 16'h3e29;
	ans_a = 16'h581b;
	#20
	A = 16'hbc86;
	B = 16'h393e;
	ans_a = 16'h5815;
	#20
	A = 16'h3ed7;
	B = 16'h3392;
	ans_a = 16'h5818;
	#20
	A = 16'h359c;
	B = 16'h31b4;
	ans_a = 16'h5818;
	#20
	A = 16'hbad7;
	B = 16'h3e82;
	ans_a = 16'h580d;
	#20
	A = 16'h3f3b;
	B = 16'h30b8;
	ans_a = 16'h580f;
	#20
	A = 16'hb835;
	B = 16'h3d79;
	ans_a = 16'h5809;
	#20
	A = 16'h3f1c;
	B = 16'h3e0a;
	ans_a = 16'h581e;
	#20
	A = 16'h354c;
	B = 16'h3dc8;
	ans_a = 16'h5822;
	#20
	A = 16'hb4b4;
	B = 16'hb82e;
	ans_a = 16'h5823;
	#20
	A = 16'h3c6f;
	B = 16'h3da4;
	ans_a = 16'h5830;
	#20
	A = 16'h3908;
	B = 16'hbff9;
	ans_a = 16'h5826;
	#20
	A = 16'hb7ba;
	B = 16'hbc21;
	ans_a = 16'h582a;
	#20
	A = 16'h3d20;
	B = 16'hbdfc;
	ans_a = 16'h581b;
	#20
	A = 16'h24b9;
	B = 16'hb89b;
	ans_a = 16'h581b;
	#20
	A = 16'h3e75;
	B = 16'hbae9;
	ans_a = 16'h5810;
	#20
	A = 16'h380e;
	B = 16'hb614;
	ans_a = 16'h580e;
	#20
	A = 16'hae41;
	B = 16'h3f8d;
	ans_a = 16'h580d;
	#20
	A = 16'h350d;
	B = 16'hbd85;
	ans_a = 16'h580a;
	#20
	A = 16'h3f0d;
	B = 16'hbded;
	ans_a = 16'h57ea;
	#20
	A = 16'h3127;
	B = 16'h3305;
	ans_a = 16'h57eb;
	#20
	A = 16'hb16c;
	B = 16'hb515;
	ans_a = 16'h57ec;
	#20
	A = 16'hba3e;
	B = 16'hbcc5;
	ans_a = 16'h57fb;
	#20
	A = 16'hb554;
	B = 16'h36b5;
	ans_a = 16'h57f9;
	#20
	A = 16'hbc8c;
	B = 16'hbfce;
	ans_a = 16'h580e;
	#20
	A = 16'h3f06;
	B = 16'h3ee3;
	ans_a = 16'h5826;
	#20
	A = 16'h3df1;
	B = 16'hbf36;
	ans_a = 16'h5811;
	#20
	A = 16'h3717;
	B = 16'hb3a5;
	ans_a = 16'h5810;
	#20
	A = 16'hb88c;
	B = 16'hb923;
	ans_a = 16'h5813;
	#20
	A = 16'h3748;
	B = 16'hb923;
	ans_a = 16'h5811;
	#20
	A = 16'hbe0c;
	B = 16'hbd90;
	ans_a = 16'h5822;
	#20
	A = 16'hbbee;
	B = 16'hbe81;
	ans_a = 16'h582f;
	#20
	A = 16'hadd0;
	B = 16'hbfc0;
	ans_a = 16'h5830;
	#20
	A = 16'h3a79;
	B = 16'h2dcb;
	ans_a = 16'h5831;
	#20
	A = 16'h3ca0;
	B = 16'hb9ff;
	ans_a = 16'h582a;
	#20
	A = 16'hbdad;
	B = 16'hba45;
	ans_a = 16'h5833;
	#20
	A = 16'hb19f;
	B = 16'hbd25;
	ans_a = 16'h5835;
	#20
	A = 16'h3ca7;
	B = 16'hbef9;
	ans_a = 16'h5825;
	#20
	A = 16'h3c36;
	B = 16'hbdcc;
	ans_a = 16'h5819;
	#20
	A = 16'h33da;
	B = 16'h3c17;
	ans_a = 16'h581b;
	#20
	A = 16'hb741;
	B = 16'h3e0e;
	ans_a = 16'h5816;
	#20
	A = 16'hbfe0;
	B = 16'h3e66;
	ans_a = 16'h57fa;
	#20
	A = 16'hbfbf;
	B = 16'h36a7;
	ans_a = 16'h57ed;
	#20
	A = 16'hbc5c;
	B = 16'h3568;
	ans_a = 16'h57e7;
	#20
	A = 16'h3ced;
	B = 16'hb842;
	ans_a = 16'h57dd;
	#20
	A = 16'h3f92;
	B = 16'hbc6c;
	ans_a = 16'h57bc;
	#20
	A = 16'h33d6;
	B = 16'hbc11;
	ans_a = 16'h57b8;
	#20
	A = 16'h3c4b;
	B = 16'h36dd;
	ans_a = 16'h57bf;
	#20
	A = 16'h1f8f;
	B = 16'hb9e5;
	ans_a = 16'h57bf;
	#20
	A = 16'hbd29;
	B = 16'h22ad;
	ans_a = 16'h57bf;
	#20
	A = 16'h3dee;
	B = 16'hb65c;
	ans_a = 16'h57b6;
	#20
	A = 16'hbdc9;
	B = 16'h35f6;
	ans_a = 16'h57ad;
	#20
	A = 16'hb8b1;
	B = 16'hbdb8;
	ans_a = 16'h57ba;
	#20
	A = 16'hbbd8;
	B = 16'h38ac;
	ans_a = 16'h57b1;
	#20
	A = 16'hb993;
	B = 16'hbf89;
	ans_a = 16'h57c6;
	#20
	A = 16'h36c8;
	B = 16'hb9f4;
	ans_a = 16'h57c1;
	#20
	A = 16'h33c4;
	B = 16'hb8de;
	ans_a = 16'h57bf;
	#20
	A = 16'h3f7d;
	B = 16'hbe70;
	ans_a = 16'h578f;
	#20
	A = 16'h3895;
	B = 16'hb9ef;
	ans_a = 16'h5788;
	#20
	A = 16'hba97;
	B = 16'h3f08;
	ans_a = 16'h5771;
	#20
	A = 16'h3e9d;
	B = 16'hb55e;
	ans_a = 16'h5768;
	#20
	A = 16'h3dcc;
	B = 16'hbc53;
	ans_a = 16'h574f;
	#20
	A = 16'hbdd6;
	B = 16'h3e10;
	ans_a = 16'h572c;
	#20
	A = 16'h3e0e;
	B = 16'h3c7e;
	ans_a = 16'h5747;
	#20
	A = 16'hbc09;
	B = 16'h3fe9;
	ans_a = 16'h5727;
	#20
	A = 16'hbbd2;
	B = 16'h3cd9;
	ans_a = 16'h5714;
	#20
	A = 16'hb819;
	B = 16'h3691;
	ans_a = 16'h5711;
	#20
	A = 16'h31cd;
	B = 16'h3dac;
	ans_a = 16'h5715;
	#20
	A = 16'h3e87;
	B = 16'hbae2;
	ans_a = 16'h56ff;
	#20
	A = 16'hbd10;
	B = 16'h3b6f;
	ans_a = 16'h56ec;
	#20
	A = 16'hb158;
	B = 16'h3a3b;
	ans_a = 16'h56ea;
	#20
	A = 16'h3d10;
	B = 16'hb53c;
	ans_a = 16'h56e3;
	#20
	A = 16'hb8aa;
	B = 16'hbd27;
	ans_a = 16'h56ef;
	#20
	A = 16'h385f;
	B = 16'h2e4f;
	ans_a = 16'h56f0;
	#20
	A = 16'hbc45;
	B = 16'hbc45;
	ans_a = 16'h5702;
	#20
	A = 16'h3cd8;
	B = 16'hb94e;
	ans_a = 16'h56f5;
	#20
	A = 16'h3966;
	B = 16'h360f;
	ans_a = 16'h56f9;
	#20
	A = 16'hb0b5;
	B = 16'h3e37;
	ans_a = 16'h56f5;
	#20
	A = 16'h3e5b;
	B = 16'hbf47;
	ans_a = 16'h56c7;
	#20
	A = 16'h3b90;
	B = 16'h374d;
	ans_a = 16'h56ce;
	#20
	A = 16'h3e37;
	B = 16'h3ceb;
	ans_a = 16'h56ed;
	#20
	A = 16'hb78b;
	B = 16'ha17a;
	ans_a = 16'h56ed;
	#20
	A = 16'hbe22;
	B = 16'h3f7e;
	ans_a = 16'h56bf;
	#20
	A = 16'h3d9c;
	B = 16'h3af1;
	ans_a = 16'h56d2;
	#20
	A = 16'h3f0a;
	B = 16'h3e18;
	ans_a = 16'h56fd;
	#20
	A = 16'hbe83;
	B = 16'hb878;
	ans_a = 16'h570c;
	#20
	A = 16'h3fac;
	B = 16'h3d96;
	ans_a = 16'h5737;
	#20
	A = 16'h3fa6;
	B = 16'h3fd5;
	ans_a = 16'h5773;
	#20
	A = 16'h3eb9;
	B = 16'h33d9;
	ans_a = 16'h577a;
	#20
	A = 16'h3f68;
	B = 16'h22e7;
	ans_a = 16'h577a;
	#20
	A = 16'hbca5;
	B = 16'hbe40;
	ans_a = 16'h5797;
	#20
	A = 16'h3d8d;
	B = 16'h33e2;
	ans_a = 16'h579c;
	#20
	A = 16'h3bf7;
	B = 16'hbd4d;
	ans_a = 16'h5787;
	#20
	A = 16'hb22d;
	B = 16'hbba5;
	ans_a = 16'h578a;
	#20
	A = 16'hbb81;
	B = 16'hbd6c;
	ans_a = 16'h579e;
	#20
	A = 16'h3ddd;
	B = 16'hb637;
	ans_a = 16'h5795;
	#20
	A = 16'hba59;
	B = 16'hbda7;
	ans_a = 16'h57a7;
	#20
	A = 16'hbd36;
	B = 16'h378e;
	ans_a = 16'h579d;
	#20
	A = 16'hbed0;
	B = 16'hbe15;
	ans_a = 16'h57c6;
	#20
	A = 16'hbbe0;
	B = 16'hbe0f;
	ans_a = 16'h57de;
	#20
	A = 16'h3fe2;
	B = 16'h3fda;
	ans_a = 16'h580e;
	#20
	A = 16'hb6a6;
	B = 16'h3ee3;
	ans_a = 16'h5808;
	#20
	A = 16'hbd3c;
	B = 16'hbfe6;
	ans_a = 16'h581d;
	#20
	A = 16'h3893;
	B = 16'hbc12;
	ans_a = 16'h5818;
	#20
	A = 16'hb906;
	B = 16'hbf16;
	ans_a = 16'h5821;
	#20
	A = 16'hb67c;
	B = 16'hba70;
	ans_a = 16'h5824;
	#20
	A = 16'hbb82;
	B = 16'h384a;
	ans_a = 16'h5820;
	#20
	A = 16'h3c54;
	B = 16'hbd6a;
	ans_a = 16'h5814;
	#20
	A = 16'hbfd7;
	B = 16'h3d32;
	ans_a = 16'h57ff;
	#20
	A = 16'ha53c;
	B = 16'habff;
	ans_a = 16'h57ff;
	#20
	A = 16'hb98c;
	B = 16'hbdc7;
	ans_a = 16'h5808;
	#20
	A = 16'hb93c;
	B = 16'h3fc6;
	ans_a = 16'h57fc;
	#20
	A = 16'hbdcf;
	B = 16'h3f72;
	ans_a = 16'h57d1;
	#20
	A = 16'hbd1a;
	B = 16'hba28;
	ans_a = 16'h57e1;
	#20
	A = 16'h39a9;
	B = 16'hbcf3;
	ans_a = 16'h57d3;
	#20
	A = 16'h33a0;
	B = 16'hb7f2;
	ans_a = 16'h57d1;
	#20
	A = 16'hbc52;
	B = 16'h3fc5;
	ans_a = 16'h57af;
	#20
	A = 16'hbd83;
	B = 16'h3fe7;
	ans_a = 16'h5783;
	#20
	A = 16'hb923;
	B = 16'h37ae;
	ans_a = 16'h577e;
	#20
	A = 16'h3a80;
	B = 16'ha046;
	ans_a = 16'h577e;
	#20
	A = 16'hbc7f;
	B = 16'hbe97;
	ans_a = 16'h579c;
	#20
	A = 16'h3a21;
	B = 16'h3c43;
	ans_a = 16'h57a9;
	#20
	A = 16'hbd0d;
	B = 16'hbc29;
	ans_a = 16'h57be;
	#20
	A = 16'hb772;
	B = 16'h3fd0;
	ans_a = 16'h57af;
	#20
	A = 16'hbf8a;
	B = 16'h3e9b;
	ans_a = 16'h577d;
	#20
	A = 16'hbfd2;
	B = 16'h3f3f;
	ans_a = 16'h5744;
	#20
	A = 16'hbca8;
	B = 16'hbe46;
	ans_a = 16'h5761;
	#20
	A = 16'hbdd5;
	B = 16'hbe63;
	ans_a = 16'h5786;
	#20
	A = 16'h280e;
	B = 16'h380a;
	ans_a = 16'h5786;
	#20
	A = 16'h36a0;
	B = 16'hb481;
	ans_a = 16'h5784;
	#20
	A = 16'h32a3;
	B = 16'h3d2f;
	ans_a = 16'h5788;
	#20
	A = 16'h3c25;
	B = 16'h384f;
	ans_a = 16'h5791;
	#20
	A = 16'hbce6;
	B = 16'h3464;
	ans_a = 16'h578c;
	#20
	A = 16'h3fa7;
	B = 16'h3ea7;
	ans_a = 16'h57bf;
	#20
	A = 16'h3c92;
	B = 16'hbc26;
	ans_a = 16'h57ac;
	#20
	A = 16'hbea8;
	B = 16'hbe65;
	ans_a = 16'h57d7;
	#20
	A = 16'hba00;
	B = 16'hac38;
	ans_a = 16'h57d8;
	#20
	A = 16'h3c28;
	B = 16'h386e;
	ans_a = 16'h57e1;
	#20
	A = 16'hbd54;
	B = 16'hb949;
	ans_a = 16'h57ef;
	#20
	A = 16'hbf37;
	B = 16'hb659;
	ans_a = 16'h57fa;
	#20
	A = 16'hbc85;
	B = 16'hbf8d;
	ans_a = 16'h580e;
	#20
	A = 16'h36cf;
	B = 16'h3be3;
	ans_a = 16'h5811;
	#20
	A = 16'hb945;
	B = 16'hbd17;
	ans_a = 16'h5818;
	#20
	A = 16'hbb29;
	B = 16'h3c83;
	ans_a = 16'h5810;
	#20
	A = 16'h269d;
	B = 16'h3066;
	ans_a = 16'h5810;
	#20
	A = 16'hbc50;
	B = 16'h3cdc;
	ans_a = 16'h5806;
	#20
	A = 16'hba69;
	B = 16'h39aa;
	ans_a = 16'h5801;
	#20
	A = 16'hb16c;
	B = 16'h3ded;
	ans_a = 16'h57fe;
	#20
	A = 16'h3d73;
	B = 16'hbfda;
	ans_a = 16'h57d3;
	#20
	A = 16'h3efb;
	B = 16'hbd34;
	ans_a = 16'h57af;
	#20
	A = 16'h3c9b;
	B = 16'hb51d;
	ans_a = 16'h57a9;
	#20
	A = 16'hbf5d;
	B = 16'h35dd;
	ans_a = 16'h579e;
	#20
	A = 16'h3814;
	B = 16'h3db1;
	ans_a = 16'h57aa;
	#20
	A = 16'h3324;
	B = 16'hbebf;
	ans_a = 16'h57a4;
	#20
	A = 16'h3e57;
	B = 16'h3b99;
	ans_a = 16'h57bc;
	#20
	A = 16'hbafe;
	B = 16'hb0b9;
	ans_a = 16'h57be;
	#20
	A = 16'h3b5a;
	B = 16'h38aa;
	ans_a = 16'h57c7;
	#20
	A = 16'h3ab1;
	B = 16'hbc92;
	ans_a = 16'h57b8;
	#20
	A = 16'h39ad;
	B = 16'haf42;
	ans_a = 16'h57b7;
	#20
	A = 16'hbcfa;
	B = 16'h3e26;
	ans_a = 16'h5798;
	#20
	A = 16'habf8;
	B = 16'hbf3d;
	ans_a = 16'h579a;
	#20
	A = 16'h3a70;
	B = 16'hbd98;
	ans_a = 16'h5788;
	#20
	A = 16'h3e02;
	B = 16'hbe1a;
	ans_a = 16'h5763;
	#20
	A = 16'h375d;
	B = 16'hb8b4;
	ans_a = 16'h575f;
	#20
	A = 16'hbf6b;
	B = 16'h3e00;
	ans_a = 16'h5732;
	#20
	A = 16'h34fb;
	B = 16'h39b4;
	ans_a = 16'h5736;
	#20
	A = 16'hbba8;
	B = 16'hbd09;
	ans_a = 16'h5749;
	#20
	A = 16'hb6cc;
	B = 16'h3e44;
	ans_a = 16'h573e;
	#20
	A = 16'hbc53;
	B = 16'h3e1e;
	ans_a = 16'h5724;
	#20
	A = 16'hbc6f;
	B = 16'h3c78;
	ans_a = 16'h5710;
	#20
	A = 16'hb014;
	B = 16'hb32e;
	ans_a = 16'h5710;
	#20
	A = 16'h3c37;
	B = 16'hbeb7;
	ans_a = 16'h56f4;
	#20
	A = 16'h3dc8;
	B = 16'hbc3a;
	ans_a = 16'h56dc;
	#20
	A = 16'h3982;
	B = 16'h3b8d;
	ans_a = 16'h56e6;
	#20
	A = 16'h3b79;
	B = 16'h35e8;
	ans_a = 16'h56ec;
	#20
	A = 16'h38fb;
	B = 16'hbbb6;
	ans_a = 16'h56e2;
	#20
	A = 16'h3ef5;
	B = 16'h2f91;
	ans_a = 16'h56e5;
	#20
	A = 16'hbaa5;
	B = 16'h3bd7;
	ans_a = 16'h56d8;
	#20
	A = 16'h3f40;
	B = 16'hbc1b;
	ans_a = 16'h56ba;
	#20
	A = 16'hbeb7;
	B = 16'hbda5;
	ans_a = 16'h56e0;
	#20
	A = 16'h3b5c;
	B = 16'h3c9d;
	ans_a = 16'h56f1;
	#20
	A = 16'h3ff8;
	B = 16'h33fb;
	ans_a = 16'h56f9;
	#20
	A = 16'hbd57;
	B = 16'hbf14;
	ans_a = 16'h571f;
	#20
	A = 16'hbbe0;
	B = 16'h366c;
	ans_a = 16'h5719;
	#20
	A = 16'hbdc8;
	B = 16'h3f98;
	ans_a = 16'h56ed;
	#20
	A = 16'hbbcc;
	B = 16'hbe25;
	ans_a = 16'h5705;
	#20
	A = 16'h3e79;
	B = 16'hba94;
	ans_a = 16'h56f0;
	#20
	A = 16'hb527;
	B = 16'h379b;
	ans_a = 16'h56ee;
	#20
	A = 16'hb9f7;
	B = 16'hb981;
	ans_a = 16'h56f6;
	#20
	A = 16'h25ce;
	B = 16'h39bb;
	ans_a = 16'h56f6;
	#20
	A = 16'h3de9;
	B = 16'hb42c;
	ans_a = 16'h56f0;
	#20
	A = 16'hbdcc;
	B = 16'hbe4d;
	ans_a = 16'h5715;
	#20
	A = 16'h3403;
	B = 16'hb6a8;
	ans_a = 16'h5713;
	#20
	A = 16'hb406;
	B = 16'hb731;
	ans_a = 16'h5715;
	#20
	A = 16'h3cfa;
	B = 16'h3f75;
	ans_a = 16'h573a;
	#20
	A = 16'hbb90;
	B = 16'hb8a7;
	ans_a = 16'h5743;
	#20
	A = 16'hbb77;
	B = 16'hb022;
	ans_a = 16'h5745;
	#20
	A = 16'h3354;
	B = 16'h3c1a;
	ans_a = 16'h5749;
	#20
	A = 16'h3a20;
	B = 16'h3782;
	ans_a = 16'h574f;
	#20
	A = 16'hbfbd;
	B = 16'h3f41;
	ans_a = 16'h5717;
	#20
	A = 16'h32c3;
	B = 16'hbb1a;
	ans_a = 16'h5714;
	#20
	A = 16'hbdb5;
	B = 16'hbdea;
	ans_a = 16'h5736;
	#20
	A = 16'h3d81;
	B = 16'hbef7;
	ans_a = 16'h5710;
	#20
	A = 16'h2d84;
	B = 16'h3fa2;
	ans_a = 16'h5713;
	#20
	A = 16'h3d90;
	B = 16'hbb96;
	ans_a = 16'h56fe;
	#20
	A = 16'hbbd8;
	B = 16'h3212;
	ans_a = 16'h56fb;
	#20
	A = 16'hb8be;
	B = 16'h3830;
	ans_a = 16'h56f6;
	#20
	A = 16'h2803;
	B = 16'hbcf2;
	ans_a = 16'h56f5;
	#20
	A = 16'hb2e6;
	B = 16'hb938;
	ans_a = 16'h56f7;
	#20
	A = 16'h3e19;
	B = 16'hbc18;
	ans_a = 16'h56de;
	#20
	A = 16'h3c51;
	B = 16'hbf81;
	ans_a = 16'h56be;
	#20
	A = 16'hb145;
	B = 16'h3fa2;
	ans_a = 16'h56b9;
	#20
	A = 16'h3f2e;
	B = 16'hafd7;
	ans_a = 16'h56b5;
	#20
	A = 16'h3ba5;
	B = 16'hb184;
	ans_a = 16'h56b2;
	#20
	A = 16'h3e7f;
	B = 16'h3acf;
	ans_a = 16'h56c8;
	#20
	A = 16'h3fd9;
	B = 16'h3b47;
	ans_a = 16'h56e5;
	#20
	A = 16'h32ef;
	B = 16'hb0e1;
	ans_a = 16'h56e4;
	#20
	A = 16'h3ca0;
	B = 16'h32fe;
	ans_a = 16'h56e8;
	#20
	A = 16'hbd11;
	B = 16'hb9c7;
	ans_a = 16'h56f7;
	#20
	A = 16'hbc60;
	B = 16'h3d48;
	ans_a = 16'h56e0;
	#20
	A = 16'hb9bb;
	B = 16'hbca6;
	ans_a = 16'h56ed;
	#20
	A = 16'hbcb2;
	B = 16'hb90b;
	ans_a = 16'h56f9;
	#20
	A = 16'h3f31;
	B = 16'hbbd0;
	ans_a = 16'h56dd;
	#20
	A = 16'h3da3;
	B = 16'h3e09;
	ans_a = 16'h56ff;
	#20
	A = 16'hbb6f;
	B = 16'h39c5;
	ans_a = 16'h56f4;
	#20
	A = 16'h30f1;
	B = 16'h3dca;
	ans_a = 16'h56f8;
	#20
	A = 16'hbc74;
	B = 16'h38d0;
	ans_a = 16'h56ed;
	#20
	A = 16'hb7f9;
	B = 16'hbf5a;
	ans_a = 16'h56fc;
	#20
	A = 16'h3eea;
	B = 16'h3432;
	ans_a = 16'h5703;
	#20
	A = 16'h346e;
	B = 16'hbff8;
	ans_a = 16'h56fa;
	#20
	A = 16'hbf32;
	B = 16'h3f75;
	ans_a = 16'h56c4;
	#20
	A = 16'h3bc4;
	B = 16'hbf88;
	ans_a = 16'h56a7;
	#20
	A = 16'h3b18;
	B = 16'h3a79;
	ans_a = 16'h56b2;
	#20
	A = 16'hbf7f;
	B = 16'hb9d5;
	ans_a = 16'h56c8;
	#20
	A = 16'h3fb3;
	B = 16'hbf2c;
	ans_a = 16'h5691;
	#20
	A = 16'hb9d5;
	B = 16'hbdfc;
	ans_a = 16'h56a2;
	#20
	A = 16'h34e8;
	B = 16'h3ec4;
	ans_a = 16'h56aa;
	#20
	A = 16'h3e52;
	B = 16'h3e53;
	ans_a = 16'h56d2;
	#20
	A = 16'hbb5d;
	B = 16'ha03a;
	ans_a = 16'h56d2;
	#20
	A = 16'h3c32;
	B = 16'h36fc;
	ans_a = 16'h56d9;
	#20
	A = 16'h39fe;
	B = 16'h3d7e;
	ans_a = 16'h56e9;
	#20
	A = 16'h3c02;
	B = 16'hbd41;
	ans_a = 16'h56d4;
	#20
	A = 16'h39fe;
	B = 16'h3ec0;
	ans_a = 16'h56e8;
	#20
	A = 16'hb85b;
	B = 16'h3f05;
	ans_a = 16'h56d9;
	#20
	A = 16'hb5c7;
	B = 16'hbe0e;
	ans_a = 16'h56e2;
	#20
	A = 16'hb56c;
	B = 16'h37ba;
	ans_a = 16'h56df;
	#20
	A = 16'hbbc2;
	B = 16'h3c6c;
	ans_a = 16'h56ce;
	#20
	A = 16'h3c2d;
	B = 16'h3d72;
	ans_a = 16'h56e5;
	#20
	A = 16'hbf0f;
	B = 16'hbbca;
	ans_a = 16'h5700;
	#20
	A = 16'ha8af;
	B = 16'h390f;
	ans_a = 16'h5700;
	#20
	A = 16'hbde9;
	B = 16'hbcd8;
	ans_a = 16'h571d;
	#20
	A = 16'hb055;
	B = 16'hbbb7;
	ans_a = 16'h571f;
	#20
	A = 16'hbc6c;
	B = 16'h3af3;
	ans_a = 16'h5710;
	#20
	A = 16'hb111;
	B = 16'h3b82;
	ans_a = 16'h570e;
	#20
	A = 16'h3fe0;
	B = 16'h3fe7;
	ans_a = 16'h574c;
	#20
	A = 16'h3df9;
	B = 16'hbf93;
	ans_a = 16'h571f;
	#20
	A = 16'hbb11;
	B = 16'h380f;
	ans_a = 16'h5718;
	#20
	A = 16'h3e96;
	B = 16'h3f15;
	ans_a = 16'h5747;
	#20
	A = 16'hbb27;
	B = 16'hb61b;
	ans_a = 16'h574c;
	#20
	A = 16'hbda9;
	B = 16'h3bad;
	ans_a = 16'h5736;
	#20
	A = 16'hbb89;
	B = 16'h3908;
	ans_a = 16'h572d;
	#20
	A = 16'hbfd8;
	B = 16'hbc73;
	ans_a = 16'h5750;
	#20
	A = 16'hb726;
	B = 16'hbca2;
	ans_a = 16'h5758;
	#20
	A = 16'h3d05;
	B = 16'hbcf9;
	ans_a = 16'h573f;
	#20
	A = 16'h2cd1;
	B = 16'hbd19;
	ans_a = 16'h573d;
	#20
	A = 16'h380d;
	B = 16'h3ff6;
	ans_a = 16'h574d;
	#20
	A = 16'hb86e;
	B = 16'hbe34;
	ans_a = 16'h575b;
	#20
	A = 16'h3d43;
	B = 16'hbbfa;
	ans_a = 16'h5746;
	#20
	A = 16'hb8a1;
	B = 16'hbd13;
	ans_a = 16'h5752;
	#20
	A = 16'hbe56;
	B = 16'h3f44;
	ans_a = 16'h5724;
	#20
	A = 16'hb994;
	B = 16'hbe35;
	ans_a = 16'h5735;
	#20
	A = 16'h389e;
	B = 16'hbfbd;
	ans_a = 16'h5723;
	#20
	A = 16'hb6cf;
	B = 16'h3917;
	ans_a = 16'h571f;
	#20
	A = 16'hb6d4;
	B = 16'h26c1;
	ans_a = 16'h571f;
	#20
	A = 16'hbd00;
	B = 16'hbfbe;
	ans_a = 16'h5746;
	#20
	A = 16'h3fbf;
	B = 16'h30c7;
	ans_a = 16'h574b;
	#20
	A = 16'h36c6;
	B = 16'hb5ed;
	ans_a = 16'h5748;
	#20
	A = 16'h3d9d;
	B = 16'hb78b;
	ans_a = 16'h573d;
	#20
	A = 16'hb6b9;
	B = 16'hbf5e;
	ans_a = 16'h5749;
	#20
	A = 16'h3ef9;
	B = 16'h38ea;
	ans_a = 16'h575a;
	#20
	A = 16'hbbd5;
	B = 16'h3efb;
	ans_a = 16'h573f;
	#20
	A = 16'h3f16;
	B = 16'h3d3b;
	ans_a = 16'h5764;
	#20
	A = 16'h3e7a;
	B = 16'hb572;
	ans_a = 16'h575b;
	#20
	A = 16'hbb80;
	B = 16'hb5f9;
	ans_a = 16'h5761;
	#20
	A = 16'h3e25;
	B = 16'h3b97;
	ans_a = 16'h5778;
	#20
	A = 16'h3b61;
	B = 16'hbe02;
	ans_a = 16'h5762;
	#20
	A = 16'hb334;
	B = 16'hbfce;
	ans_a = 16'h5769;
	#20
	A = 16'hb5c3;
	B = 16'h3d74;
	ans_a = 16'h5761;
	#20
	A = 16'h3b5e;
	B = 16'hba0a;
	ans_a = 16'h5756;
	#20
	A = 16'hb9b4;
	B = 16'hb42d;
	ans_a = 16'h5759;
	#20
	A = 16'hbc02;
	B = 16'hbc47;
	ans_a = 16'h576a;
	#20
	A = 16'h36e1;
	B = 16'h3a4b;
	ans_a = 16'h576f;
	#20
	A = 16'hb783;
	B = 16'hb516;
	ans_a = 16'h5771;
	#20
	A = 16'hb845;
	B = 16'habc4;
	ans_a = 16'h5772;
	#20
	A = 16'hb472;
	B = 16'h3fde;
	ans_a = 16'h5769;
	#20
	A = 16'hb964;
	B = 16'hb916;
	ans_a = 16'h5770;
	#20
	A = 16'h3688;
	B = 16'h3984;
	ans_a = 16'h5775;
	#20
	A = 16'h3d21;
	B = 16'h377e;
	ans_a = 16'h577f;
	#20
	A = 16'hbce5;
	B = 16'hb5f4;
	ans_a = 16'h5786;
	#20
	A = 16'hbeca;
	B = 16'hbf2f;
	ans_a = 16'h57b7;
	#20
	A = 16'h3dea;
	B = 16'h3b9e;
	ans_a = 16'h57ce;
	#20
	A = 16'h317c;
	B = 16'h3ee9;
	ans_a = 16'h57d3;
	#20
	A = 16'hb865;
	B = 16'hbadc;
	ans_a = 16'h57db;
	#20
	A = 16'hbdfe;
	B = 16'h38c2;
	ans_a = 16'h57cd;
	#20
	A = 16'hbc3e;
	B = 16'h3fae;
	ans_a = 16'h57ac;
	#20
	A = 16'h38f6;
	B = 16'h3e4a;
	ans_a = 16'h57bc;
	#20
	A = 16'h3e34;
	B = 16'hb062;
	ans_a = 16'h57b9;
	#20
	A = 16'h3cdf;
	B = 16'hbafd;
	ans_a = 16'h57a8;
	#20
	A = 16'h3ac9;
	B = 16'hb924;
	ans_a = 16'h579f;
	#20
	A = 16'h3c8a;
	B = 16'h3ea9;
	ans_a = 16'h57bd;
	#20
	A = 16'hbdc2;
	B = 16'h34cc;
	ans_a = 16'h57b6;
	#20
	A = 16'h3f96;
	B = 16'h3b69;
	ans_a = 16'h57d2;
	#20
	A = 16'hbdd6;
	B = 16'hbfb1;
	ans_a = 16'h57ff;
	#20
	A = 16'h3fba;
	B = 16'hb77d;
	ans_a = 16'h57f1;
	#20
	A = 16'hbfb0;
	B = 16'h3dbf;
	ans_a = 16'h57c5;
	#20
	A = 16'h3b86;
	B = 16'h3d8e;
	ans_a = 16'h57da;
	#20
	A = 16'hbbea;
	B = 16'h3f9f;
	ans_a = 16'h57bc;
	#20
	A = 16'hb1e6;
	B = 16'haf7d;
	ans_a = 16'h57bc;
	#20
	A = 16'h3a72;
	B = 16'hbb36;
	ans_a = 16'h57b0;
	#20
	A = 16'hbff5;
	B = 16'h37e7;
	ans_a = 16'h57a0;
	#20
	A = 16'h3d8f;
	B = 16'hbce2;
	ans_a = 16'h5785;
	#20
	A = 16'hbeed;
	B = 16'hbe46;
	ans_a = 16'h57b0;
	#20
	A = 16'h2c83;
	B = 16'hbea1;
	ans_a = 16'h57ae;
	#20
	A = 16'h3309;
	B = 16'h3d79;
	ans_a = 16'h57b3;
	#20
	A = 16'hacd0;
	B = 16'hba57;
	ans_a = 16'h57b4;
	#20
	A = 16'hbd9a;
	B = 16'hbd0f;
	ans_a = 16'h57d0;
	#20
	A = 16'ha54c;
	B = 16'h3cf6;
	ans_a = 16'h57d0;
	#20
	A = 16'hb897;
	B = 16'h35ea;
	ans_a = 16'h57cd;
	#20
	A = 16'h3d19;
	B = 16'hb81b;
	ans_a = 16'h57c3;
	#20
	A = 16'hba7b;
	B = 16'hbd25;
	ans_a = 16'h57d4;
	#20
	A = 16'h38ad;
	B = 16'hbc93;
	ans_a = 16'h57c9;
	#20
	A = 16'hbd5d;
	B = 16'habdb;
	ans_a = 16'h57ca;
	#20
	A = 16'h3ac9;
	B = 16'hb9c6;
	ans_a = 16'h57c0;
	#20
	A = 16'hbe06;
	B = 16'hbc01;
	ans_a = 16'h57d8;
	#20
	A = 16'hb542;
	B = 16'hb6c4;
	ans_a = 16'h57da;
	#20
	A = 16'h3daf;
	B = 16'h3d3e;
	ans_a = 16'h57f8;
	#20
	A = 16'h3d50;
	B = 16'h399d;
	ans_a = 16'h5803;
	#20
	A = 16'h3bdd;
	B = 16'h3e83;
	ans_a = 16'h5810;
	#20
	A = 16'h3884;
	B = 16'hb46f;
	ans_a = 16'h580f;
	#20
	A = 16'hbd84;
	B = 16'h3504;
	ans_a = 16'h580c;
	#20
	A = 16'hb59e;
	B = 16'hb951;
	ans_a = 16'h580e;
	#20
	A = 16'hb893;
	B = 16'h38e8;
	ans_a = 16'h580b;
	#20
	A = 16'hbd4b;
	B = 16'h3b86;
	ans_a = 16'h5801;
	#20
	A = 16'hb65a;
	B = 16'hbdaa;
	ans_a = 16'h5805;
	#20
	A = 16'hbe69;
	B = 16'hbe0c;
	ans_a = 16'h5818;
	#20
	A = 16'h3d4a;
	B = 16'h393b;
	ans_a = 16'h581f;
	#20
	A = 16'h3d83;
	B = 16'h3b20;
	ans_a = 16'h5829;
	#20
	A = 16'h2c1c;
	B = 16'hba6f;
	ans_a = 16'h5829;
	#20
	A = 16'hbeee;
	B = 16'hbc8f;
	ans_a = 16'h5839;
	#20
	A = 16'h33cf;
	B = 16'h3c9e;
	ans_a = 16'h583b;
	#20
	A = 16'h3d9e;
	B = 16'hbd1c;
	ans_a = 16'h582d;
	#20
	A = 16'h3a41;
	B = 16'hb5c1;
	ans_a = 16'h582b;
	#20
	A = 16'h3de9;
	B = 16'hbd64;
	ans_a = 16'h581b;
	#20
	A = 16'hbc59;
	B = 16'h3835;
	ans_a = 16'h5816;
	#20
	A = 16'hb158;
	B = 16'h3b3f;
	ans_a = 16'h5815;
	#20
	A = 16'h3ab8;
	B = 16'h3c4d;
	ans_a = 16'h581c;
	#20
	A = 16'hbd04;
	B = 16'h362c;
	ans_a = 16'h5818;
	#20
	A = 16'hbc70;
	B = 16'h3b49;
	ans_a = 16'h5810;
	#20
	A = 16'h3a5f;
	B = 16'h3d99;
	ans_a = 16'h5819;
	#20
	A = 16'ha9b9;
	B = 16'hbee5;
	ans_a = 16'h581a;
	#20
	A = 16'hb6d0;
	B = 16'h3ff8;
	ans_a = 16'h5813;
	#20
	A = 16'h3e90;
	B = 16'h3e91;
	ans_a = 16'h5829;
	#20
	A = 16'hbc34;
	B = 16'hac6f;
	ans_a = 16'h582a;
	#20
	A = 16'h2a8d;
	B = 16'h3cd6;
	ans_a = 16'h582a;
	#20
	A = 16'hbc98;
	B = 16'hbe30;
	ans_a = 16'h5838;
	#20
	A = 16'hb5ed;
	B = 16'hb83e;
	ans_a = 16'h583a;
	#20
	A = 16'hbd8e;
	B = 16'hb613;
	ans_a = 16'h583e;
	#20
	A = 16'h3538;
	B = 16'h3df2;
	ans_a = 16'h5842;
	#20
	A = 16'h3d73;
	B = 16'h3a04;
	ans_a = 16'h584a;
	#20
	A = 16'h3a75;
	B = 16'hbca8;
	ans_a = 16'h5842;
	#20
	A = 16'h3d88;
	B = 16'hb5ae;
	ans_a = 16'h583e;
	#20
	A = 16'hbdae;
	B = 16'hbebe;
	ans_a = 16'h5851;
	#20
	A = 16'hb464;
	B = 16'hbeaa;
	ans_a = 16'h5855;
	#20
	A = 16'hbd38;
	B = 16'h35d8;
	ans_a = 16'h5851;
	#20
	A = 16'hb3b6;
	B = 16'h3ed4;
	ans_a = 16'h584e;
	#20
	A = 16'hbf26;
	B = 16'h385b;
	ans_a = 16'h5846;
	#20
	A = 16'hbd57;
	B = 16'h3d41;
	ans_a = 16'h5838;
	#20
	A = 16'h3c5d;
	B = 16'hb7fc;
	ans_a = 16'h5834;
	#20
	A = 16'h3e3e;
	B = 16'hbe98;
	ans_a = 16'h581f;
	#20
	A = 16'hba23;
	B = 16'h2af2;
	ans_a = 16'h581f;
	#20
	A = 16'hb4d8;
	B = 16'h3ba6;
	ans_a = 16'h581d;
	#20
	A = 16'h3e10;
	B = 16'ha87f;
	ans_a = 16'h581d;
	#20
	A = 16'hbfaf;
	B = 16'hacbd;
	ans_a = 16'h581e;
	#20
	A = 16'ha5f2;
	B = 16'hbe0e;
	ans_a = 16'h581e;
	#20
	A = 16'h3c80;
	B = 16'hb8fb;
	ans_a = 16'h5818;
	#20
	A = 16'h3a4b;
	B = 16'h3bed;
	ans_a = 16'h581e;
	#20
	A = 16'h3ae8;
	B = 16'h3407;
	ans_a = 16'h5820;
	#20
	A = 16'hbc5a;
	B = 16'h3959;
	ans_a = 16'h581a;
	#20
	A = 16'h2e6e;
	B = 16'h3ada;
	ans_a = 16'h581b;
	#20
	A = 16'hb6a4;
	B = 16'hbb35;
	ans_a = 16'h581e;
	#20
	A = 16'hb6a1;
	B = 16'h3857;
	ans_a = 16'h581c;
	#20
	A = 16'h3ecc;
	B = 16'hbfcf;
	ans_a = 16'h5801;
	#20
	A = 16'h3f7c;
	B = 16'h3df2;
	ans_a = 16'h5817;
	#20
	A = 16'h39c3;
	B = 16'h3c33;
	ans_a = 16'h581d;
	#20
	A = 16'h3fb7;
	B = 16'h32fc;
	ans_a = 16'h5820;
	#20
	A = 16'hbdcb;
	B = 16'h3022;
	ans_a = 16'h581f;
	#20
	A = 16'h3836;
	B = 16'h2db1;
	ans_a = 16'h581f;
	#20
	A = 16'hbce7;
	B = 16'h3c5e;
	ans_a = 16'h5814;
	#20
	A = 16'ha846;
	B = 16'hb73e;
	ans_a = 16'h5814;
	#20
	A = 16'h3d6f;
	B = 16'h2f83;
	ans_a = 16'h5815;
	#20
	A = 16'h3ed6;
	B = 16'h2e57;
	ans_a = 16'h5816;
	#20
	A = 16'h3f3d;
	B = 16'hb5ce;
	ans_a = 16'h5811;
	#20
	A = 16'h3e3b;
	B = 16'hb4ea;
	ans_a = 16'h580d;
	#20
	A = 16'hba2f;
	B = 16'h3b7e;
	ans_a = 16'h5807;
	#20
	A = 16'h3a16;
	B = 16'h3686;
	ans_a = 16'h5809;
	#20
	A = 16'hbbb9;
	B = 16'hbe08;
	ans_a = 16'h5815;
	#20
	A = 16'hbe8c;
	B = 16'hbe95;
	ans_a = 16'h582b;
	#20
	A = 16'hbb8e;
	B = 16'hbc2c;
	ans_a = 16'h5833;
	#20
	A = 16'h3d7d;
	B = 16'h3efa;
	ans_a = 16'h5846;
	#20
	A = 16'hbe14;
	B = 16'h36bd;
	ans_a = 16'h5841;
	#20
	A = 16'hb5dd;
	B = 16'h3bb8;
	ans_a = 16'h583e;
	#20
	A = 16'h3acd;
	B = 16'hbfe8;
	ans_a = 16'h5831;
	#20
	A = 16'hb1bd;
	B = 16'hbb2b;
	ans_a = 16'h5832;
	#20
	A = 16'hbd2a;
	B = 16'h3fff;
	ans_a = 16'h581d;
	#20
	A = 16'hbdbf;
	B = 16'h3a1c;
	ans_a = 16'h5814;
	#20
	A = 16'hbf78;
	B = 16'h30db;
	ans_a = 16'h5812;
	#20
	A = 16'h3bd4;
	B = 16'hbcd5;
	ans_a = 16'h5809;
	#20
	A = 16'h3c88;
	B = 16'hbd32;
	ans_a = 16'h57fa;
	#20
	A = 16'h3532;
	B = 16'hb914;
	ans_a = 16'h57f7;
	#20
	A = 16'h376f;
	B = 16'ha64f;
	ans_a = 16'h57f7;
	#20
	A = 16'hba34;
	B = 16'h3ff6;
	ans_a = 16'h57de;
	#20
	A = 16'hbeda;
	B = 16'hbb8e;
	ans_a = 16'h57f8;
	#20
	A = 16'hac3a;
	B = 16'h386f;
	ans_a = 16'h57f7;
	#20
	A = 16'h3f6e;
	B = 16'hbb26;
	ans_a = 16'h57dc;
	#20
	A = 16'h3ffa;
	B = 16'hba0a;
	ans_a = 16'h57c4;
	#20
	A = 16'hb8bb;
	B = 16'h3fe1;
	ans_a = 16'h57b1;
	#20
	A = 16'hbee0;
	B = 16'h3d17;
	ans_a = 16'h578e;
	#20
	A = 16'hb6a2;
	B = 16'hb3d5;
	ans_a = 16'h5790;
	#20
	A = 16'h389b;
	B = 16'h3f32;
	ans_a = 16'h57a1;
	#20
	A = 16'h3d11;
	B = 16'hb42d;
	ans_a = 16'h579c;
	#20
	A = 16'h39b0;
	B = 16'h35f3;
	ans_a = 16'h57a0;
	#20
	A = 16'h3898;
	B = 16'hbc5a;
	ans_a = 16'h5796;
	#20
	A = 16'hb982;
	B = 16'h38db;
	ans_a = 16'h578f;
	#20
	A = 16'hb441;
	B = 16'h37b8;
	ans_a = 16'h578d;
	#20
	A = 16'h3c44;
	B = 16'hbbfa;
	ans_a = 16'h577c;
	#20
	A = 16'had8e;
	B = 16'hbe67;
	ans_a = 16'h577e;
	#20
	A = 16'h3b27;
	B = 16'h3e9a;
	ans_a = 16'h5796;
	#20
	A = 16'h3f80;
	B = 16'h39c7;
	ans_a = 16'h57ac;
	#20
	A = 16'ha9f4;
	B = 16'h3f05;
	ans_a = 16'h57ab;
	#20
	A = 16'hbe97;
	B = 16'hb1c4;
	ans_a = 16'h57b0;
	#20
	A = 16'h3eaf;
	B = 16'hbefe;
	ans_a = 16'h5781;
	#20
	A = 16'h3132;
	B = 16'h37fc;
	ans_a = 16'h5782;
	#20
	A = 16'hbfd5;
	B = 16'h3779;
	ans_a = 16'h5773;
	#20
	A = 16'hb8c8;
	B = 16'h3f39;
	ans_a = 16'h5762;
	#20
	A = 16'h33da;
	B = 16'h3541;
	ans_a = 16'h5763;
	#20
	A = 16'hbd89;
	B = 16'hbe4e;
	ans_a = 16'h5786;
	#20
	A = 16'h3ee5;
	B = 16'hb755;
	ans_a = 16'h5779;
	#20
	A = 16'h3f2b;
	B = 16'hbfe6;
	ans_a = 16'h5740;
	#20
	A = 16'h3f3a;
	B = 16'h3be7;
	ans_a = 16'h575d;
	#20
	A = 16'h3f75;
	B = 16'h2b32;
	ans_a = 16'h575f;
	#20
	A = 16'hbfce;
	B = 16'hbd5e;
	ans_a = 16'h5789;
	#20
	A = 16'h3e7e;
	B = 16'hbada;
	ans_a = 16'h5773;
	#20
	A = 16'hb44c;
	B = 16'hb80c;
	ans_a = 16'h5775;
	#20
	A = 16'h3c1d;
	B = 16'hb8de;
	ans_a = 16'h576b;
	#20
	A = 16'h3553;
	B = 16'h34d7;
	ans_a = 16'h576d;
	#20
	A = 16'h3a26;
	B = 16'h27d8;
	ans_a = 16'h576d;
	#20
	A = 16'h3853;
	B = 16'h3d7c;
	ans_a = 16'h5779;
	#20
	A = 16'hbf1f;
	B = 16'hb638;
	ans_a = 16'h5784;
	#20
	A = 16'h3939;
	B = 16'hbeae;
	ans_a = 16'h5773;
	#20
	A = 16'h3cad;
	B = 16'h2ee3;
	ans_a = 16'h5775;
	#20
	A = 16'hbf41;
	B = 16'h38b5;
	ans_a = 16'h5764;
	#20
	A = 16'hbeed;
	B = 16'hb86f;
	ans_a = 16'h5773;
	#20
	A = 16'haa99;
	B = 16'h3d5c;
	ans_a = 16'h5772;
	#20
	A = 16'h39ad;
	B = 16'hbd28;
	ans_a = 16'h5763;
	#20
	A = 16'hbe22;
	B = 16'h369c;
	ans_a = 16'h5759;
	#20
	A = 16'h385a;
	B = 16'hbd30;
	ans_a = 16'h574e;
	#20
	A = 16'hbc2a;
	B = 16'h3a61;
	ans_a = 16'h5741;
	#20
	A = 16'h3945;
	B = 16'hb626;
	ans_a = 16'h573d;
	#20
	A = 16'hbec6;
	B = 16'h3640;
	ans_a = 16'h5732;
	#20
	A = 16'h2f74;
	B = 16'h3d24;
	ans_a = 16'h5734;
	#20
	A = 16'h3fec;
	B = 16'hb6f4;
	ans_a = 16'h5726;
	#20
	A = 16'hb8b1;
	B = 16'hbe66;
	ans_a = 16'h5735;
	#20
	A = 16'hb031;
	B = 16'hbe8a;
	ans_a = 16'h5738;
	#20
	A = 16'h3f68;
	B = 16'hbb4d;
	ans_a = 16'h571d;
	#20
	A = 16'hab57;
	B = 16'hb78c;
	ans_a = 16'h571d;
	#20
	A = 16'h3dc9;
	B = 16'h3f36;
	ans_a = 16'h5747;
	#20
	A = 16'hbd04;
	B = 16'h3a48;
	ans_a = 16'h5737;
	#20
	A = 16'hb7cc;
	B = 16'h2540;
	ans_a = 16'h5737;
	#20
	A = 16'h3acd;
	B = 16'h3d10;
	ans_a = 16'h5748;
	#20
	A = 16'hbe05;
	B = 16'hbfbb;
	ans_a = 16'h5777;
	#20
	A = 16'h3feb;
	B = 16'hbfa8;
	ans_a = 16'h573a;
	#20
	A = 16'h3abb;
	B = 16'hac98;
	ans_a = 16'h5739;
	#20
	A = 16'h3669;
	B = 16'hb9c0;
	ans_a = 16'h5734;
	#20
	A = 16'h3ccc;
	B = 16'hb014;
	ans_a = 16'h5732;
	#20
	A = 16'hb96f;
	B = 16'hbf42;
	ans_a = 16'h5746;
	#20
	A = 16'hbf39;
	B = 16'h3ab3;
	ans_a = 16'h572e;
	#20
	A = 16'h3ba3;
	B = 16'hbc76;
	ans_a = 16'h571d;
	#20
	A = 16'hb60d;
	B = 16'h3e72;
	ans_a = 16'h5713;
	#20
	A = 16'hba2a;
	B = 16'h3f66;
	ans_a = 16'h56fc;
	#20
	A = 16'h3e8c;
	B = 16'hb0c1;
	ans_a = 16'h56f8;
	#20
	A = 16'hb5ba;
	B = 16'h384d;
	ans_a = 16'h56f5;
	#20
	A = 16'h3d4a;
	B = 16'h3c5c;
	ans_a = 16'h570c;
	#20
	A = 16'hb80e;
	B = 16'h3299;
	ans_a = 16'h570a;
	#20
	A = 16'hbe82;
	B = 16'h395e;
	ans_a = 16'h56f9;
	#20
	A = 16'hbe38;
	B = 16'hb5ab;
	ans_a = 16'h5702;
	#20
	A = 16'hbd51;
	B = 16'h3d39;
	ans_a = 16'h56e6;
	#20
	A = 16'hb05e;
	B = 16'h3d0f;
	ans_a = 16'h56e3;
	#20
	A = 16'h3c2b;
	B = 16'h3bcf;
	ans_a = 16'h56f3;
	#20
	A = 16'hbeda;
	B = 16'h3eb7;
	ans_a = 16'h56c5;
	#20
	A = 16'hb391;
	B = 16'h38ef;
	ans_a = 16'h56c3;
	#20
	A = 16'h354d;
	B = 16'h2c18;
	ans_a = 16'h56c3;
	#20
	A = 16'ha26e;
	B = 16'h3698;
	ans_a = 16'h56c3;
	#20
	A = 16'h38bf;
	B = 16'h3ab0;
	ans_a = 16'h56cb;
	#20
	A = 16'h3a97;
	B = 16'h3f50;
	ans_a = 16'h56e3;
	#20
	A = 16'hba01;
	B = 16'hbe26;
	ans_a = 16'h56f5;
	#20
	A = 16'h3e9d;
	B = 16'h3e63;
	ans_a = 16'h571f;
	#20
	A = 16'h3880;
	B = 16'h37b6;
	ans_a = 16'h5723;
	#20
	A = 16'h3e6c;
	B = 16'hbee2;
	ans_a = 16'h56f7;
	#20
	A = 16'h3fdd;
	B = 16'hb5c1;
	ans_a = 16'h56ec;
	#20
	A = 16'hbd32;
	B = 16'h3f8f;
	ans_a = 16'h56c5;
	#20
	A = 16'h3ed2;
	B = 16'hbcf3;
	ans_a = 16'h56a3;
	#20
	A = 16'h3ec6;
	B = 16'h392b;
	ans_a = 16'h56b4;
	#20
	A = 16'h35b1;
	B = 16'hbf6a;
	ans_a = 16'h56a9;
	#20
	A = 16'hba87;
	B = 16'h336a;
	ans_a = 16'h56a6;
	#20
	A = 16'h3e1f;
	B = 16'h3e48;
	ans_a = 16'h56cc;
	#20
	A = 16'h3c29;
	B = 16'hbbf3;
	ans_a = 16'h56bb;
	#20
	A = 16'hb1de;
	B = 16'hbd0b;
	ans_a = 16'h56bf;
	#20
	A = 16'hbcdd;
	B = 16'hb87a;
	ans_a = 16'h56ca;
	#20
	A = 16'h3ec3;
	B = 16'hb905;
	ans_a = 16'h56b9;
	#20
	A = 16'hbd68;
	B = 16'h3f21;
	ans_a = 16'h5692;
	#20
	A = 16'h3f0e;
	B = 16'h3d3c;
	ans_a = 16'h56b7;
	#20
	A = 16'hb395;
	B = 16'hbbff;
	ans_a = 16'h56bb;
	#20
	A = 16'h3697;
	B = 16'h3ec6;
	ans_a = 16'h56c6;
	#20
	A = 16'hbd86;
	B = 16'hbe26;
	ans_a = 16'h56e8;
	#20
	A = 16'h3d98;
	B = 16'h3c08;
	ans_a = 16'h56ff;
	#20
	A = 16'hb8d7;
	B = 16'hbc89;
	ans_a = 16'h570a;
	#20
	A = 16'hbabe;
	B = 16'hbf77;
	ans_a = 16'h5723;
	#20
	A = 16'h3933;
	B = 16'h35e5;
	ans_a = 16'h5727;
	#20
	A = 16'h37bd;
	B = 16'hbaa8;
	ans_a = 16'h5721;
	#20
	A = 16'hbff8;
	B = 16'hbc7f;
	ans_a = 16'h5745;
	#20
	A = 16'hb8d5;
	B = 16'hb7e2;
	ans_a = 16'h574a;
	#20
	A = 16'hb8d5;
	B = 16'h3a66;
	ans_a = 16'h5742;
	#20
	A = 16'h39ac;
	B = 16'hbbae;
	ans_a = 16'h5737;
	#20
	A = 16'hbaa6;
	B = 16'hbd5f;
	ans_a = 16'h5749;
	#20
	A = 16'h3c02;
	B = 16'h3e1f;
	ans_a = 16'h5762;
	#20
	A = 16'hbda3;
	B = 16'h3005;
	ans_a = 16'h575f;
	#20
	A = 16'h3db3;
	B = 16'h3b12;
	ans_a = 16'h5773;
	#20
	A = 16'h3979;
	B = 16'hbfd9;
	ans_a = 16'h575e;
	#20
	A = 16'h36e4;
	B = 16'hbe88;
	ans_a = 16'h5753;
	#20
	A = 16'h3297;
	B = 16'haf35;
	ans_a = 16'h5753;
	#20
	A = 16'h356c;
	B = 16'hb2f4;
	ans_a = 16'h5752;
	#20
	A = 16'ha87c;
	B = 16'hb908;
	ans_a = 16'h5752;
	#20
	A = 16'hbec8;
	B = 16'hb77c;
	ans_a = 16'h575f;
	#20
	A = 16'h3ea1;
	B = 16'hbd79;
	ans_a = 16'h573b;
	#20
	A = 16'h3e99;
	B = 16'h3a85;
	ans_a = 16'h5750;
	#20
	A = 16'h3c83;
	B = 16'h3140;
	ans_a = 16'h5753;
	#20
	A = 16'hbc79;
	B = 16'h377f;
	ans_a = 16'h574b;
	#20
	A = 16'hb935;
	B = 16'hbf9d;
	ans_a = 16'h575f;
	#20
	A = 16'haa1f;
	B = 16'hafdc;
	ans_a = 16'h575f;
	#20
	A = 16'hbc9e;
	B = 16'h38f1;
	ans_a = 16'h5754;
	#20
	A = 16'h3053;
	B = 16'ha38d;
	ans_a = 16'h5754;
	#20
	A = 16'h36f7;
	B = 16'hbcec;
	ans_a = 16'h574b;
	#20
	A = 16'h3e0a;
	B = 16'h3d58;
	ans_a = 16'h576b;
	#20
	A = 16'hbeb3;
	B = 16'h3b27;
	ans_a = 16'h5753;
	#20
	A = 16'haacc;
	B = 16'haabd;
	ans_a = 16'h5753;
	#20
	A = 16'ha92b;
	B = 16'hae84;
	ans_a = 16'h5753;
	#20
	A = 16'hbe42;
	B = 16'h3c4a;
	ans_a = 16'h5738;
	#20
	A = 16'hbe52;
	B = 16'h3c6d;
	ans_a = 16'h571c;
	#20
	A = 16'hbfc5;
	B = 16'hbb92;
	ans_a = 16'h5739;
	#20
	A = 16'h3aaa;
	B = 16'hb84e;
	ans_a = 16'h5732;
	#20
	A = 16'hb5e2;
	B = 16'hb146;
	ans_a = 16'h5733;
	#20
	A = 16'h3c27;
	B = 16'hbcc5;
	ans_a = 16'h571f;
	#20
	A = 16'h3b74;
	B = 16'hbeba;
	ans_a = 16'h5706;
	#20
	A = 16'had13;
	B = 16'h35fa;
	ans_a = 16'h5706;
	#20
	A = 16'hb88c;
	B = 16'h36c8;
	ans_a = 16'h5702;
	#20
	A = 16'hbe4c;
	B = 16'haa44;
	ans_a = 16'h5703;
	#20
	A = 16'hbbf2;
	B = 16'h3baa;
	ans_a = 16'h56f4;
	#20
	A = 16'h3ece;
	B = 16'h3d34;
	ans_a = 16'h5717;
	#20
	A = 16'h3e05;
	B = 16'hbebf;
	ans_a = 16'h56ee;
	#20
	A = 16'hb75d;
	B = 16'h3979;
	ans_a = 16'h56e9;
	#20
	A = 16'hbb99;
	B = 16'h38b4;
	ans_a = 16'h56e0;
	#20
	A = 16'h3e1e;
	B = 16'hbfd8;
	ans_a = 16'h56b0;
	#20
	A = 16'hbb9d;
	B = 16'hbfd0;
	ans_a = 16'h56ce;
	#20
	A = 16'h3cd4;
	B = 16'h35d3;
	ans_a = 16'h56d5;
	#20
	A = 16'hb742;
	B = 16'h3be8;
	ans_a = 16'h56ce;
	#20
	A = 16'h3523;
	B = 16'h3d59;
	ans_a = 16'h56d5;
	#20
	A = 16'hbf81;
	B = 16'h3cd7;
	ans_a = 16'h56b1;
	#20
	A = 16'hbe05;
	B = 16'h3b96;
	ans_a = 16'h569a;
	#20
	A = 16'h3c8e;
	B = 16'h3b20;
	ans_a = 16'h56aa;
	#20
	A = 16'hbf9d;
	B = 16'h3c8b;
	ans_a = 16'h5687;
	#20
	A = 16'hb5d7;
	B = 16'h3fec;
	ans_a = 16'h567b;
	#20
	A = 16'h3e05;
	B = 16'hb197;
	ans_a = 16'h5677;
	#20
	A = 16'hbad1;
	B = 16'hbab2;
	ans_a = 16'h5682;
	#20
	A = 16'h3d4a;
	B = 16'h37df;
	ans_a = 16'h568c;
	#20
	A = 16'h3a84;
	B = 16'h37e2;
	ans_a = 16'h5692;
	#20
	A = 16'h3ea1;
	B = 16'hb79f;
	ans_a = 16'h5685;
	#20
	A = 16'hbfc8;
	B = 16'h372a;
	ans_a = 16'h5677;
	#20
	A = 16'h2860;
	B = 16'hb796;
	ans_a = 16'h5677;
	#20
	A = 16'h38a2;
	B = 16'h3d9f;
	ans_a = 16'h5684;
	#20
	A = 16'h9c99;
	B = 16'h3930;
	ans_a = 16'h5684;
	#20
	A = 16'hb9e3;
	B = 16'hbce6;
	ans_a = 16'h5692;
	#20
	A = 16'hbaa1;
	B = 16'h3f61;
	ans_a = 16'h567a;
	#20
	A = 16'hbc1a;
	B = 16'hbaf0;
	ans_a = 16'h5688;
	#20
	A = 16'hbec8;
	B = 16'h3cd4;
	ans_a = 16'h5667;
	#20
	A = 16'hb8a3;
	B = 16'hbc9e;
	ans_a = 16'h5672;
	#20
	A = 16'h9e3e;
	B = 16'h3a14;
	ans_a = 16'h5672;
	#20
	A = 16'hbd34;
	B = 16'h31b2;
	ans_a = 16'h566e;
	#20
	A = 16'hbff4;
	B = 16'hbcea;
	ans_a = 16'h5695;
	#20
	A = 16'h3f0d;
	B = 16'h368c;
	ans_a = 16'h56a1;
	#20
	A = 16'h3478;
	B = 16'habe9;
	ans_a = 16'h56a1;
	#20
	A = 16'hb9d8;
	B = 16'h3984;
	ans_a = 16'h5699;
	#20
	A = 16'h2e9f;
	B = 16'hbdcd;
	ans_a = 16'h5697;
	#20
	A = 16'h3daa;
	B = 16'hb8c9;
	ans_a = 16'h5689;
	#20
	A = 16'hae06;
	B = 16'hbd45;
	ans_a = 16'h568b;
	#20
	A = 16'h3da4;
	B = 16'hbe01;
	ans_a = 16'h5669;
	#20
	A = 16'h3d17;
	B = 16'had1d;
	ans_a = 16'h5667;
	#20
	A = 16'hbe1e;
	B = 16'hb67c;
	ans_a = 16'h5671;
	#20
	A = 16'haedf;
	B = 16'hbc3e;
	ans_a = 16'h5673;
	#20
	A = 16'hbe79;
	B = 16'hbf5d;
	ans_a = 16'h56a3;
	#20
	A = 16'hb171;
	B = 16'h3b59;
	ans_a = 16'h56a1;
	#20
	A = 16'hbddd;
	B = 16'h3ddb;
	ans_a = 16'h567f;
	#20
	A = 16'h3f5e;
	B = 16'hb78a;
	ans_a = 16'h5671;
	#20
	A = 16'h3f3d;
	B = 16'hbecb;
	ans_a = 16'h5640;
	#20
	A = 16'h3e4b;
	B = 16'h3f94;
	ans_a = 16'h5670;
	#20
	A = 16'hb091;
	B = 16'hb8c3;
	ans_a = 16'h5671;
	#20
	A = 16'hb88e;
	B = 16'hbbde;
	ans_a = 16'h567a;
	#20
	A = 16'h3958;
	B = 16'h3e44;
	ans_a = 16'h568b;
	#20
	A = 16'h330f;
	B = 16'h35c6;
	ans_a = 16'h568c;
	#20
	A = 16'h3d1f;
	B = 16'h3352;
	ans_a = 16'h5691;
	#20
	A = 16'hb066;
	B = 16'h3551;
	ans_a = 16'h5690;
	#20
	A = 16'hbda2;
	B = 16'h3598;
	ans_a = 16'h5688;
	#20
	A = 16'h3892;
	B = 16'hbdf7;
	ans_a = 16'h567a;
	#20
	A = 16'hbe1e;
	B = 16'hba2e;
	ans_a = 16'h568d;
	#20
	A = 16'hbf02;
	B = 16'h31a9;
	ans_a = 16'h5688;
	#20
	A = 16'hbc41;
	B = 16'hbd8c;
	ans_a = 16'h56a0;
	#20
	A = 16'hb46f;
	B = 16'h3bdf;
	ans_a = 16'h569c;
	#20
	A = 16'h3350;
	B = 16'hb49b;
	ans_a = 16'h569b;
	#20
	A = 16'h3f85;
	B = 16'hbb0e;
	ans_a = 16'h5680;
	#20
	A = 16'hbcbd;
	B = 16'h3894;
	ans_a = 16'h5675;
	#20
	A = 16'hbcea;
	B = 16'h3fe8;
	ans_a = 16'h564e;
	#20
	A = 16'h3a3c;
	B = 16'h3826;
	ans_a = 16'h5654;
	#20
	A = 16'h3931;
	B = 16'h3699;
	ans_a = 16'h5658;
	#20
	A = 16'hbdbc;
	B = 16'h2b15;
	ans_a = 16'h5657;
	#20
	A = 16'h3d6a;
	B = 16'h3b58;
	ans_a = 16'h566b;
	#20
	A = 16'h3514;
	B = 16'hbdfa;
	ans_a = 16'h5663;
	#20
	A = 16'hbf61;
	B = 16'h34fd;
	ans_a = 16'h565a;
	#20
	A = 16'hb579;
	B = 16'hbf74;
	ans_a = 16'h5664;
	#20
	A = 16'h3f0c;
	B = 16'h3c74;
	ans_a = 16'h5683;
	#20
	A = 16'hafd8;
	B = 16'h3c29;
	ans_a = 16'h5681;
	#20
	A = 16'h3cb8;
	B = 16'hbcde;
	ans_a = 16'h566a;
	#20
	A = 16'h34cf;
	B = 16'hbec3;
	ans_a = 16'h5662;
	#20
	A = 16'hb7ec;
	B = 16'h3d4d;
	ans_a = 16'h5658;
	#20
	A = 16'h3e31;
	B = 16'h3de5;
	ans_a = 16'h567c;
	#20
	A = 16'hb908;
	B = 16'hb804;
	ans_a = 16'h5681;
	#20
	A = 16'h3e10;
	B = 16'hbaea;
	ans_a = 16'h566c;
	#20
	A = 16'h3af4;
	B = 16'h3fa1;
	ans_a = 16'h5687;
	#20
	A = 16'hb21c;
	B = 16'hb9b9;
	ans_a = 16'h5689;
	#20
	A = 16'h3f29;
	B = 16'hb74a;
	ans_a = 16'h567c;
	#20
	A = 16'h3468;
	B = 16'h3785;
	ans_a = 16'h567e;
	#20
	A = 16'h3ad1;
	B = 16'hbc85;
	ans_a = 16'h566f;
	#20
	A = 16'ha8f5;
	B = 16'h3eb6;
	ans_a = 16'h566e;
	#20
	A = 16'h3d85;
	B = 16'hacd5;
	ans_a = 16'h566c;
	#20
	A = 16'h3c70;
	B = 16'h3621;
	ans_a = 16'h5673;
	#20
	A = 16'hbb06;
	B = 16'h3fb9;
	ans_a = 16'h5658;
	#20
	A = 16'h3f28;
	B = 16'hbdd9;
	ans_a = 16'h562e;
	#20
	A = 16'hbcd6;
	B = 16'h3c50;
	ans_a = 16'h5619;
	#20
	A = 16'hb384;
	B = 16'h38d3;
	ans_a = 16'h5617;
	#20
	A = 16'haebf;
	B = 16'hbf01;
	ans_a = 16'h561a;
	#20
	A = 16'h3f5e;
	B = 16'hbed2;
	ans_a = 16'h55e8;
	#20
	A = 16'h39bb;
	B = 16'hb9d5;
	ans_a = 16'h55e0;
	#20
	A = 16'hbe1f;
	B = 16'hb0c2;
	ans_a = 16'h55e4;
	#20
	A = 16'h3f23;
	B = 16'h3cfd;
	ans_a = 16'h5608;
	#20
	A = 16'hbd6d;
	B = 16'hbf67;
	ans_a = 16'h5630;
	#20
	A = 16'h3222;
	B = 16'hbdbc;
	ans_a = 16'h562c;
	#20
	A = 16'hbea5;
	B = 16'h3d5a;
	ans_a = 16'h5608;
	#20
	A = 16'h399c;
	B = 16'hbf01;
	ans_a = 16'h55f4;
	#20
	A = 16'h3730;
	B = 16'hbc9d;
	ans_a = 16'h55ec;
	#20
	A = 16'hba15;
	B = 16'hb85a;
	ans_a = 16'h55f3;
	#20
	A = 16'hbc39;
	B = 16'h3d13;
	ans_a = 16'h55de;
	#20
	A = 16'h3a10;
	B = 16'h3894;
	ans_a = 16'h55e5;
	#20
	A = 16'h3bf7;
	B = 16'hb963;
	ans_a = 16'h55da;
	#20
	A = 16'hbffc;
	B = 16'h3cb5;
	ans_a = 16'h55b4;
	#20
	A = 16'h3886;
	B = 16'hb807;
	ans_a = 16'h55af;
	#20
	A = 16'h3c72;
	B = 16'h3d84;
	ans_a = 16'h55c8;
	#20
	A = 16'hbfd0;
	B = 16'h3a3b;
	ans_a = 16'h55b0;
	#20
	A = 16'h3cde;
	B = 16'hbc52;
	ans_a = 16'h559b;
	#20
	A = 16'h32bb;
	B = 16'h1985;
	ans_a = 16'h559b;
	#20
	A = 16'h3ed8;
	B = 16'hac20;
	ans_a = 16'h5599;
	#20
	A = 16'h3f3f;
	B = 16'h3248;
	ans_a = 16'h559f;
	#20
	A = 16'h332b;
	B = 16'hb4a8;
	ans_a = 16'h559e;
	#20
	A = 16'hb734;
	B = 16'hba56;
	ans_a = 16'h55a4;
	#20
	A = 16'hbcb5;
	B = 16'hbd72;
	ans_a = 16'h55be;
	#20
	A = 16'hbc41;
	B = 16'hb48e;
	ans_a = 16'h55c3;
	#20
	A = 16'h3c8a;
	B = 16'hba61;
	ans_a = 16'h55b5;
	#20
	A = 16'h3e03;
	B = 16'hbda6;
	ans_a = 16'h5593;
	#20
	A = 16'hbcb4;
	B = 16'h3400;
	ans_a = 16'h558e;
	#20
	A = 16'hbc25;
	B = 16'hbf11;
	ans_a = 16'h55ab;
	#20
	A = 16'h3d07;
	B = 16'h36ee;
	ans_a = 16'h55b4;
	#20
	A = 16'hb78c;
	B = 16'h3d22;
	ans_a = 16'h55aa;
	#20
	A = 16'h3c56;
	B = 16'h3982;
	ans_a = 16'h55b6;
	#20
	A = 16'h3d4b;
	B = 16'hba6a;
	ans_a = 16'h55a5;
	#20
	A = 16'h3fb0;
	B = 16'h2664;
	ans_a = 16'h55a6;
	#20
	A = 16'hbeae;
	B = 16'h3f49;
	ans_a = 16'h5575;
	#20
	A = 16'h34b7;
	B = 16'h3e47;
	ans_a = 16'h557c;
	#20
	A = 16'h2a95;
	B = 16'h367d;
	ans_a = 16'h557c;
	#20
	A = 16'h3597;
	B = 16'h39ab;
	ans_a = 16'h5580;
	#20
	A = 16'h3882;
	B = 16'hb4d6;
	ans_a = 16'h557d;
	#20
	A = 16'h3ef8;
	B = 16'h3e51;
	ans_a = 16'h55a9;
	#20
	A = 16'h3d2f;
	B = 16'hbe40;
	ans_a = 16'h5589;
	#20
	A = 16'hb200;
	B = 16'h35cb;
	ans_a = 16'h5588;
	#20
	A = 16'hbcf7;
	B = 16'hb118;
	ans_a = 16'h558b;
	#20
	A = 16'hb8b4;
	B = 16'h397f;
	ans_a = 16'h5585;
	#20
	A = 16'hbd3e;
	B = 16'h398d;
	ans_a = 16'h5576;
	#20
	A = 16'hac39;
	B = 16'hbfc5;
	ans_a = 16'h5578;
	#20
	A = 16'h3d91;
	B = 16'h39c4;
	ans_a = 16'h5588;
	#20
	A = 16'hb926;
	B = 16'hbdbb;
	ans_a = 16'h5597;
	#20
	A = 16'h3f7a;
	B = 16'hbce7;
	ans_a = 16'h5572;
	#20
	A = 16'hbea6;
	B = 16'h3513;
	ans_a = 16'h556a;
	#20
	A = 16'h3cb4;
	B = 16'h3066;
	ans_a = 16'h556d;
	#20
	A = 16'h393b;
	B = 16'hb6a8;
	ans_a = 16'h5569;
	#20
	A = 16'h2b08;
	B = 16'h3c54;
	ans_a = 16'h556a;
	#20
	A = 16'h3d08;
	B = 16'h3cde;
	ans_a = 16'h5582;
	#20
	A = 16'hbd2c;
	B = 16'hbaf0;
	ans_a = 16'h5594;
	#20
	A = 16'hba1d;
	B = 16'h3fdf;
	ans_a = 16'h557c;
	#20
	A = 16'h382a;
	B = 16'hbe6f;
	ans_a = 16'h556f;
	#20
	A = 16'h3922;
	B = 16'hbd37;
	ans_a = 16'h5562;
	#20
	A = 16'hbb90;
	B = 16'hbbab;
	ans_a = 16'h5570;
	#20
	A = 16'hbef0;
	B = 16'h363b;
	ans_a = 16'h5565;
	#20
	A = 16'hbee7;
	B = 16'h3d91;
	ans_a = 16'h553f;
	#20
	A = 16'h3b0b;
	B = 16'h33d7;
	ans_a = 16'h5542;
	#20
	A = 16'hbb42;
	B = 16'hae71;
	ans_a = 16'h5543;
	#20
	A = 16'ha1f6;
	B = 16'hbd8e;
	ans_a = 16'h5543;
	#20
	A = 16'hbe06;
	B = 16'h3a3d;
	ans_a = 16'h5530;
	#20
	A = 16'hbf5b;
	B = 16'h3d47;
	ans_a = 16'h5509;
	#20
	A = 16'h3b5e;
	B = 16'h3192;
	ans_a = 16'h550c;
	#20
	A = 16'hbc6f;
	B = 16'h3d95;
	ans_a = 16'h54f3;
	#20
	A = 16'hbc5a;
	B = 16'hbafd;
	ans_a = 16'h5502;
	#20
	A = 16'h3504;
	B = 16'hbea9;
	ans_a = 16'h54fa;
	#20
	A = 16'hbfe6;
	B = 16'hb6c4;
	ans_a = 16'h5507;
	#20
	A = 16'h3dc4;
	B = 16'h391b;
	ans_a = 16'h5516;
	#20
	A = 16'hb4ec;
	B = 16'hbfc5;
	ans_a = 16'h5520;
	#20
	A = 16'hbf95;
	B = 16'hb8c7;
	ans_a = 16'h5532;
	#20
	A = 16'hbe82;
	B = 16'hbe95;
	ans_a = 16'h555d;
	#20
	A = 16'h3805;
	B = 16'hbfa9;
	ans_a = 16'h554e;
	#20
	A = 16'h3d41;
	B = 16'hbea0;
	ans_a = 16'h552b;
	#20
	A = 16'h9887;
	B = 16'hbe08;
	ans_a = 16'h552b;
	#20
	A = 16'hbd9b;
	B = 16'h3ebf;
	ans_a = 16'h5505;
	#20
	A = 16'hb416;
	B = 16'hb3f9;
	ans_a = 16'h5506;
	#20
	A = 16'h3e49;
	B = 16'h3e9a;
	ans_a = 16'h5530;
	#20
	A = 16'h3c68;
	B = 16'h3f9f;
	ans_a = 16'h5552;
	#20
	A = 16'hbd1e;
	B = 16'h394f;
	ans_a = 16'h5544;
	#20
	A = 16'hbe92;
	B = 16'hbc75;
	ans_a = 16'h5561;
	#20
	A = 16'h382b;
	B = 16'hba89;
	ans_a = 16'h555a;
	#20
	A = 16'hbd22;
	B = 16'hb9ea;
	ans_a = 16'h5569;
	#20
	A = 16'hbf1d;
	B = 16'hbc37;
	ans_a = 16'h5587;
	#20
	A = 16'hbcef;
	B = 16'hbf57;
	ans_a = 16'h55ab;
	#20
	A = 16'hb923;
	B = 16'h37bc;
	ans_a = 16'h55a6;
	#20
	A = 16'hbeb7;
	B = 16'hbfbf;
	ans_a = 16'h55da;
	#20
	A = 16'h3f90;
	B = 16'h3c04;
	ans_a = 16'h55f8;
	#20
	A = 16'h3fce;
	B = 16'hb985;
	ans_a = 16'h55e2;
	#20
	A = 16'hba1b;
	B = 16'h340d;
	ans_a = 16'h55df;
	#20
	A = 16'hb1bf;
	B = 16'h3fb3;
	ans_a = 16'h55d9;
	#20
	A = 16'h35e0;
	B = 16'hb9d9;
	ans_a = 16'h55d5;
	#20
	A = 16'hb420;
	B = 16'h3e7e;
	ans_a = 16'h55ce;
	#20
	A = 16'h3413;
	B = 16'hbefc;
	ans_a = 16'h55c7;
	#20
	A = 16'h3da1;
	B = 16'h3e6b;
	ans_a = 16'h55eb;
	#20
	A = 16'h1663;
	B = 16'hb90d;
	ans_a = 16'h55eb;
	#20
	A = 16'h30c3;
	B = 16'h3da1;
	ans_a = 16'h55ee;
	#20
	A = 16'h3ec1;
	B = 16'hbc57;
	ans_a = 16'h55d1;
	#20
	A = 16'hb8df;
	B = 16'h3ca5;
	ans_a = 16'h55c6;
	#20
	A = 16'hb7cd;
	B = 16'h3ea9;
	ans_a = 16'h55b9;
	#20
	A = 16'h3e2c;
	B = 16'h3c75;
	ans_a = 16'h55d5;
	#20
	A = 16'ha4ef;
	B = 16'hbf71;
	ans_a = 16'h55d6;
	#20
	A = 16'h36fc;
	B = 16'h3c8a;
	ans_a = 16'h55de;
	#20
	A = 16'hb458;
	B = 16'h38e7;
	ans_a = 16'h55db;
	#20
	A = 16'hbdec;
	B = 16'hbb52;
	ans_a = 16'h55f1;
	#20
	A = 16'hbf9c;
	B = 16'h3c97;
	ans_a = 16'h55ce;
	#20
	A = 16'h3f93;
	B = 16'hbf3c;
	ans_a = 16'h5597;
	#20
	A = 16'h2bc9;
	B = 16'hbaad;
	ans_a = 16'h5596;
	#20
	A = 16'hb3ad;
	B = 16'hbf59;
	ans_a = 16'h559d;
	#20
	A = 16'hb3d7;
	B = 16'hbe04;
	ans_a = 16'h55a3;
	#20
	A = 16'hb961;
	B = 16'hb8c7;
	ans_a = 16'h55a9;
	#20
	A = 16'h3ccc;
	B = 16'hb98c;
	ans_a = 16'h559c;
	#20
	A = 16'hbf4b;
	B = 16'hab44;
	ans_a = 16'h559e;
	#20
	A = 16'hbc34;
	B = 16'ha8a3;
	ans_a = 16'h559f;
	#20
	A = 16'h3f8d;
	B = 16'h3904;
	ans_a = 16'h55b2;
	#20
	A = 16'hafa8;
	B = 16'h30fb;
	ans_a = 16'h55b2;
	#20
	A = 16'h361f;
	B = 16'h3e8e;
	ans_a = 16'h55bc;
	#20
	A = 16'hacc7;
	B = 16'ha585;
	ans_a = 16'h55bc;
	#20
	A = 16'hb8eb;
	B = 16'hb446;
	ans_a = 16'h55bf;
	#20
	A = 16'h3791;
	B = 16'h33ac;
	ans_a = 16'h55c1;
	#20
	A = 16'h3f84;
	B = 16'hbd29;
	ans_a = 16'h559a;
	#20
	A = 16'h38fe;
	B = 16'h3bfe;
	ans_a = 16'h55a4;
	#20
	A = 16'hb6df;
	B = 16'h3981;
	ans_a = 16'h559f;
	#20
	A = 16'h3e69;
	B = 16'hb939;
	ans_a = 16'h558e;
	#20
	A = 16'h38f4;
	B = 16'h3a5b;
	ans_a = 16'h5596;
	#20
	A = 16'hbf4e;
	B = 16'hbae9;
	ans_a = 16'h55af;
	#20
	A = 16'haa8b;
	B = 16'hbe46;
	ans_a = 16'h55b0;
	#20
	A = 16'hb825;
	B = 16'h2f65;
	ans_a = 16'h55af;
	#20
	A = 16'hbc26;
	B = 16'h3d1f;
	ans_a = 16'h559a;
	#20
	A = 16'hbdda;
	B = 16'hbd5d;
	ans_a = 16'h55b9;
	#20
	A = 16'h39c4;
	B = 16'h3dbb;
	ans_a = 16'h55ca;
	#20
	A = 16'hbf02;
	B = 16'h3b1d;
	ans_a = 16'h55b1;
	#20
	A = 16'hbc5d;
	B = 16'h3d35;
	ans_a = 16'h559a;
	#20
	A = 16'hbc09;
	B = 16'hbcab;
	ans_a = 16'h55ad;
	#20
	A = 16'hbe69;
	B = 16'hbf58;
	ans_a = 16'h55dc;
	#20
	A = 16'hbc1c;
	B = 16'h3df0;
	ans_a = 16'h55c4;
	#20
	A = 16'hbfa2;
	B = 16'h2811;
	ans_a = 16'h55c3;
	#20
	A = 16'hbf9e;
	B = 16'h3e94;
	ans_a = 16'h5591;
	#20
	A = 16'hbf5a;
	B = 16'hbce2;
	ans_a = 16'h55b5;
	#20
	A = 16'h3d53;
	B = 16'h364e;
	ans_a = 16'h55bd;
	#20
	A = 16'hbdba;
	B = 16'hbc1d;
	ans_a = 16'h55d5;
	#20
	A = 16'h3c2a;
	B = 16'hbd31;
	ans_a = 16'h55bf;
	#20
	A = 16'h30eb;
	B = 16'hbc0f;
	ans_a = 16'h55bd;
	#20
	A = 16'h3bf6;
	B = 16'h3f4c;
	ans_a = 16'h55da;
	#20
	A = 16'hbb7f;
	B = 16'h3934;
	ans_a = 16'h55d0;
	#20
	A = 16'h2da5;
	B = 16'hb8ce;
	ans_a = 16'h55cf;
	#20
	A = 16'h2f75;
	B = 16'h35a6;
	ans_a = 16'h55d0;
	#20
	A = 16'had8f;
	B = 16'h3de3;
	ans_a = 16'h55ce;
	#20
	A = 16'h3426;
	B = 16'h3599;
	ans_a = 16'h55cf;
	#20
	A = 16'h3d44;
	B = 16'hbac1;
	ans_a = 16'h55bd;
	#20
	A = 16'h3cc7;
	B = 16'hbf55;
	ans_a = 16'h559a;
	#20
	A = 16'hb005;
	B = 16'h3f67;
	ans_a = 16'h5596;
	#20
	A = 16'hbe3a;
	B = 16'h3b68;
	ans_a = 16'h557f;
	#20
	A = 16'hbcb2;
	B = 16'hb946;
	ans_a = 16'h558b;
	#20
	A = 16'hb7aa;
	B = 16'hb7ad;
	ans_a = 16'h558f;
	#20
	A = 16'hbfde;
	B = 16'h3e8e;
	ans_a = 16'h555b;
	#20
	A = 16'hbe23;
	B = 16'h3f3b;
	ans_a = 16'h552f;
	#20
	A = 16'hbec5;
	B = 16'hb1e2;
	ans_a = 16'h5534;
	#20
	A = 16'h3d2a;
	B = 16'hbd79;
	ans_a = 16'h5518;
	#20
	A = 16'hbc17;
	B = 16'hb87a;
	ans_a = 16'h5521;
	#20
	A = 16'h3dda;
	B = 16'h3e70;
	ans_a = 16'h5547;
	#20
	A = 16'hbaf5;
	B = 16'h39d9;
	ans_a = 16'h553d;
	#20
	A = 16'hb6c9;
	B = 16'h37ed;
	ans_a = 16'h553a;
	#20
	A = 16'hbf2f;
	B = 16'hbabb;
	ans_a = 16'h5552;
	#20
	A = 16'h3e81;
	B = 16'h3f49;
	ans_a = 16'h5581;
	#20
	A = 16'h34a6;
	B = 16'h35bb;
	ans_a = 16'h5583;
	#20
	A = 16'h3c2e;
	B = 16'hbf18;
	ans_a = 16'h5565;
	#20
	A = 16'hbb72;
	B = 16'hbbed;
	ans_a = 16'h5574;
	#20
	A = 16'hbc62;
	B = 16'h3b94;
	ans_a = 16'h5563;
	#20
	A = 16'hbdd3;
	B = 16'h303c;
	ans_a = 16'h5560;
	#20
	A = 16'h3736;
	B = 16'h3ee8;
	ans_a = 16'h556c;
	#20
	A = 16'h3944;
	B = 16'h37ac;
	ans_a = 16'h5571;
	#20
	A = 16'h345e;
	B = 16'h3c9b;
	ans_a = 16'h5576;
	#20
	A = 16'h312b;
	B = 16'hbfd9;
	ans_a = 16'h5571;
	#20
	A = 16'hb8e5;
	B = 16'hb454;
	ans_a = 16'h5574;
	#20
	A = 16'hbc81;
	B = 16'h3aa4;
	ans_a = 16'h5565;
	#20
	A = 16'hab9c;
	B = 16'hb5be;
	ans_a = 16'h5565;
	#20
	A = 16'hbb1d;
	B = 16'h3778;
	ans_a = 16'h555e;
	#20
	A = 16'hbf77;
	B = 16'h3a21;
	ans_a = 16'h5547;
	#20
	A = 16'hb44a;
	B = 16'h36eb;
	ans_a = 16'h5545;
	#20
	A = 16'hbfa4;
	B = 16'hbedb;
	ans_a = 16'h5579;
	#20
	A = 16'hbe5e;
	B = 16'hbfec;
	ans_a = 16'h55ab;
	#20
	A = 16'h3f52;
	B = 16'hbe62;
	ans_a = 16'h557c;
	#20
	A = 16'h36ad;
	B = 16'hbd71;
	ans_a = 16'h5573;
	#20
	A = 16'hbdb9;
	B = 16'h3f69;
	ans_a = 16'h5549;
	#20
	A = 16'hbe1e;
	B = 16'hbb6d;
	ans_a = 16'h5560;
	#20
	A = 16'h3ddc;
	B = 16'hbca6;
	ans_a = 16'h5545;
	#20
	A = 16'hb996;
	B = 16'h3893;
	ans_a = 16'h553f;
	#20
	A = 16'hba53;
	B = 16'h31bc;
	ans_a = 16'h553d;
	#20
	A = 16'hb779;
	B = 16'hbb6c;
	ans_a = 16'h5544;
	#20
	A = 16'hb76b;
	B = 16'h3a20;
	ans_a = 16'h553e;
	#20
	A = 16'hbbfd;
	B = 16'hb590;
	ans_a = 16'h5544;
	#20
	A = 16'hb9b7;
	B = 16'hb8e8;
	ans_a = 16'h554b;
	#20
	A = 16'h39f1;
	B = 16'hb752;
	ans_a = 16'h5546;
	#20
	A = 16'h386f;
	B = 16'h3dcd;
	ans_a = 16'h5553;
	#20
	A = 16'h3d48;
	B = 16'hbe88;
	ans_a = 16'h5530;
	#20
	A = 16'h3e71;
	B = 16'h33d3;
	ans_a = 16'h5536;
	#20
	A = 16'hbf5e;
	B = 16'hbf50;
	ans_a = 16'h556c;
	#20
	A = 16'hb71f;
	B = 16'hb6db;
	ans_a = 16'h556f;
	#20
	A = 16'hbdba;
	B = 16'hadb5;
	ans_a = 16'h5571;
	#20
	A = 16'h3ad4;
	B = 16'h335b;
	ans_a = 16'h5574;
	#20
	A = 16'h3f46;
	B = 16'h3c6d;
	ans_a = 16'h5594;
	#20
	A = 16'hb98c;
	B = 16'haecd;
	ans_a = 16'h5595;
	#20
	A = 16'h3792;
	B = 16'hbc0d;
	ans_a = 16'h558d;
	#20
	A = 16'hbdbd;
	B = 16'h35c1;
	ans_a = 16'h5585;
	#20
	A = 16'hba6d;
	B = 16'hb9a3;
	ans_a = 16'h558e;
	#20
	A = 16'h3f04;
	B = 16'h390a;
	ans_a = 16'h55a0;
	#20
	A = 16'hbe68;
	B = 16'hb852;
	ans_a = 16'h55ae;
	#20
	A = 16'hbf96;
	B = 16'h3d60;
	ans_a = 16'h5585;
	#20
	A = 16'h352f;
	B = 16'hbcf2;
	ans_a = 16'h557f;
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
			A <= 0;
			B <= 0;
			a <= 0;
			b <= 0;
			c <= 0;
			r <= 0;
		end else begin
			r <= c;
			c <= b;
			b <= a;
			a <= ans_a;
		end
	end
      
endmodule

