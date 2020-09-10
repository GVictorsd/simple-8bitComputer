	module counter(
		output reg[0:3] out,
		input wire[0:3] in,
		input clk,clr,oe,jmp,inc);
	reg[0:3] store; 
	
	always @(posedge clk)
	begin
		if(clr)
			store<=4'b0;
		if(jmp)
			store<=in;
		if(inc)
                        store<=store+1;
		if(oe)
			out<=store;
	end
		endmodule
