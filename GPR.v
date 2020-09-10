	module gpr(
		output reg[0:7] data_out,
		input wire[0:7] data_in,
		input clk,clr,wa,oa);
	reg[0:7] store;
	buffer[0:7] bf;
//	buf state;	

	always @(posedge clk or posedge clr)
	begin
		bf (data_out,store,oa);
		if(clr==1'b1)
			store<=8'b0;
		if(wa==1'b1)
			store<=data_in;
	/*	if(oa==1'b1)
			state(data_out,store);
			//data_out<=store;
	*/
	end
	endmodule

	module buffer(
		output out,
		input in,
		input oasignal);
	tri out;	
	
	bufif1 b1(out,in,oasignal);
	
//	tristate(out,in,oasignal);
	endmodule
