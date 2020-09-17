	/************* 8-BIT ALU WITH ADD AND SUBTRACT ***************
	* inputs: 2 8-bit vector operands('a' and 'b')
	* 	a clock(clk), output enable(sumout), subtract control,
	* 	signal(sub)
	* outputs: 8-bit result vector(out)
	* 	output flags: carry flag(cf),zero flag(zf)
	* provides output at raising edge of clock 
	* ***********************************************************/
	
	`include "adder.v"
	module alu(
	output reg[7:0] out,
	output cf,zf,
	input[7:0] a,b,
	input clk,/*clr,*/sumout,sub);
	
	wire[7:0] sum;
	wire[7:0] suminb;
	wire cin;
	adder8b addr(sum,cf,a,suminb,cin);

	assign	suminb=sub?(~b):b;
	assign cin=sub? 1'b1:1'b0;
	assign zf=(sum==8'h00)? 1'b1:1'b0;
	
//	assign sum=clr? 8'h00 : sum;	
/*	always @(posedge clk)
		if(clr)
			sum<=8'h00;
*/
	always@ (posedge clk)
		out=sumout?sum:8'hzz;
	endmodule