	`timescale 10ns/1ns
	`include "board.v"
	
	module program;

	board bord();
	reg[7:0] Buss;
	reg[3:0] addr;
	reg pmode,clr,ramoa,ramwa;
	
//	assign bord.pmode= pmode;
//	assign bord.clr= pmode? clr: 1'b0;
	assign bord.ramoa= pmode? ramoa: 1'bz;
	assign bord.ramwa= pmode? ramwa: 1'bz;
//	reg control; replace by bord.pmode***
	assign bord.Bus = pmode? Buss: 8'hzz;
//	assign addrout = addr;

	initial
	begin
	//	control<=0;
		bord.pmode<=0;
		bord.clr<=1;
		#4 bord.clr<=0;
		bord.pmode<=1; Buss<=8'h38; bord.mar.store<=4'he; ramoa<=0; ramwa<=1;

		#3 ramwa<=0;
		#1 Buss<=8'h23; bord.mar.store<=4'hf; ramwa<=1;

		#3 ramwa<=0;
		#1 ramwa<=1; Buss<=8'h1e; bord.mar.store<=4'h0;
		
		#3 ramwa<=0;
		#1 ramwa<=1; Buss<=8'h2f; bord.mar.store<=4'h1;

		#3 ramwa<=0;
	        #1 ramwa<=1; Buss<=8'he0; bord.mar.store<=4'h2;

		#3 ramwa<=0;
		#1 ramwa<=1; Buss<=8'hf0; bord.mar.store<=4'h3;
		
		#4 ramwa<=0; bord.pmode<=0;
		#500 $finish;
	end

	always@ (bord.display)
	begin
		$display("out=  %h",bord.display);
	end

	endmodule
	
