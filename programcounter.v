	/*
	************ 4-BIT COUNTER *************
     	* works in sync with a clock(clk)
	* inputs: accepts a 4 bit binary value
	* outputs: outputs a 4 bit binary value
	* control signals: 
		* clear(clr): Resets the value of the counter to 0x00
		* output enable(oe):Outputs the value of counter on output line
		* jump(jmp):Latches in value set on input lines
		* increment(inc):Increments the value in counter  
*/
       module counter(
		output[0:3] out,
		input[0:3] in,
		input clk,clr,oe,jmp,inc);
	reg[0:3] store; 

//	assign out=(oe && clk)?store:8'bxxxxxxxx;	
	always @(posedge clk)
	begin
		if(clr)
			store<=4'b0;
		else if(jmp)
			store<=in;
		else if(inc)
                        store<=store+1;
//		if(oe)
//			out<=store;
	end
	
	assign out=oe?store:4'bzzzz;
/*	always @(posedge clk)
		case(oe)
			1: out<=store;
		       default: out<=4'bzzzz;
	       endcase	       
*/	endmodule
