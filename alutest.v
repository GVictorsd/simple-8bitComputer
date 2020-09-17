	`timescale 10ns/1ns
	module testalu;
	reg[7:0] a,b;
	reg clk,sumout,sub;
	wire[7:0] out;
	wire cf,zf;
	alu arit(out,cf,zf,a,b,clk,sumout,sub);

	initial
		clk=0;
	
	always #2 clk=~clk;

	initial 
	begin
		sumout<=0;sub<=0;
		#2 a<=8'h00;b<=8'h00;
		#2 sumout<=1;
		#3 sumout<=0;
		#1 sub<=1;
		#1 sumout<=1;
		#2 sumout<=0;
		#1 sub<=0;
		#4 $finish;
	end

	initial
	begin
		$monitor($time,"	a=%h	b=%h	sumout=%b	sub=%b	out=%h	cf=%b	zf=%b",a,b,sumout,sub,out,cf,zf);
		$dumpfile("vars.vcd");
		$dumpvars(0,testalu);
	end
	endmodule
