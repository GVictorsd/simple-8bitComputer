/*	`include "programcounter.v"
	`include "GPR.v"
	`include "alu.v"
	`include "memaddreg.v"
	`include "ram.v"
	`include "instructionreg.v"
	`include "outputRegister.v"
*/
	module controlunit(
		input[8:0] instin,
		input pmode,
	//	output reg[15:0] controlword);
	//	output hlt,pcoe,pcjmp,pcinc, awa,aoa, bwa,sumout,sub,flagsin, marwa, ramoa,ramwa, inregwa,inregoa, outregwa
		output hlt,marwa,ramwa,ramoa,inregoa,inregwa,awa,aoa,sumout,sub,bwa,outregwa,pcinc,pcoe,pcjmp,flagsin);
	reg[15:0] controlword;

	assign hlt=controlword[15];
	assign marwa=controlword[14];		// boa to be set low and 
	assign ramwa=controlword[13];		// cs of ram to be set high
	assign ramoa=controlword[12];
	assign inregoa=controlword[11];
	assign inregwa=controlword[10];
	assign awa=controlword[9];
	assign aoa=controlword[8];
	assign sumout=controlword[7];
	assign sub=controlword[6];
	assign bwa=controlword[5];
	assign outregwa=controlword[4];
	assign pcinc=controlword[3];
	assign pcoe=controlword[2];
	assign pcjmp=controlword[1];
	assign flagsin=controlword[0];

	always@ (instin)
	begin
		if(pmode)
			controlword<=16'hzzzz;
		else
		begin
			
			casez(instin)
				9'bzzzz000zz : controlword<= 16'h4004;
				9'bzzzz001zz : controlword<= 16'h1408;
			
				9'b0000010zz : controlword<= 16'h0000;
				9'b0000011zz : controlword<= 16'h0000;
				9'b0000100zz : controlword<= 16'h0000;

				9'b0001010zz : controlword<= 16'h4800;
				9'b0001011zz : controlword<= 16'h1200;
				9'b0001100zz : controlword<= 16'h0000;

				9'b0010010zz : controlword<= 16'h4800;
				9'b0010011zz : controlword<= 16'h1020;
				9'b0010100zz : controlword<= 16'h0281;

				9'b0011010zz : controlword<= 16'h4800;
				9'b0011011zz : controlword<= 16'h1020;
				9'b0011100zz : controlword<= 16'h02c1;

				9'b0100010zz : controlword<= 16'h4800;
				9'b0100011zz : controlword<= 16'h2100;
				9'b0100100zz : controlword<= 16'h0000;

				9'b0101010zz : controlword<= 16'h0a00;
				9'b0101011zz : controlword<= 16'h0000;
				9'b0101100zz : controlword<= 16'h0000;

				9'b0110010zz : controlword<= 16'h0802;
				9'b0110011zz : controlword<= 16'h0000;
				9'b0110100zz : controlword<= 16'h0000;

				9'b01110100z : controlword<= 16'h0000;
				9'b01110101z : controlword<= 16'h0802;
				9'b0111011zz : controlword<= 16'h0000;
				9'b0111100zz : controlword<= 16'h0000;

				9'b1000010z0 : controlword<= 16'h0000;
				9'b1000010z1 : controlword<= 16'h0802;
				9'b1000011zz : controlword<= 16'h0000;
				9'b1000100zz : controlword<= 16'h0000;

				9'b1111zzzzz : $finish;

				default: controlword<= 16'hxxxx;
			endcase
		end
	end
	endmodule


/************** 3-BIT COUNTER FOR CONTROL UNIT *************/

	module counter3b(
		output[2:0] out,
		input clk,clr,pmode);
	reg[2:0] store;

	assign out=store;

	always@ (posedge clk)
	begin
		if(clr && ~pmode)
			store<=3'b000;
		else if(~pmode)
			store<=store+1;
	end	
	
	always@ (store)
	       	if(store== 3'b101)
			store<=3'b000;
	endmodule
	
/*********************************************************/
/*	module test();
	wire[7:0] Bus;
	reg clk,clr;

	assign Bus=8'hzz;
	
	initial clk=0;
	always #2 clk=~clk;

	reg pcoe,pcjmp,pcinc;
	counter pc(Bus[3:0],Bus[3:0],clk,clr,pcoe,pcjmp,pcinc);

	initial begin
		pcoe<=0;pcjmp<=0;pcinc<=0;
	end

	reg awa,aoa;
	gpr a(Bus,Bus,clk,clr,awa,aoa);
	initial begin awa<=0;aoa<=0; end

	reg bwa,boa;
	gpr b(Bus,Bus,clk,clr,bwa,boa);
	initial begin bwa<=0;boa<=0; end

	wire cf,zf;
	reg sumout,sub,flagsin;
	alu alunit(Bus,cf,zf,a.store,b.store,clk,sumout,sub,flagsin);
	initial begin sumout<=0;sub<=0;flagsin<=0; end

	reg marwa;
	wire[3:0] addrout;
	memaddreg mar(Bus[3:0],clk,clr,marwa,addrout);
	initial marwa<=0;

	reg ramoa,ramwa,ramcs;
	ram rm(Bus,addrout,clk,ramoa,ramwa,ramcs);
	initial begin ramcs<=1; ramwa<=0; ramoa<=0; end

	reg inregwa,inregoa;
	instreg instructionreg(Bus,clk,clr,inregwa,inregoa,Bus[3:0]);
/***	initial begin inregwa<=0; inregoa<=0; end	

	reg outregwa;
	wire[7:0] display;
	outputreg out(Bus,clk,clr,outregwa,display);
	initial outregwa<=0;
	
	endmodule
****/

/************** 3-BIT COUNTER FOR CONTROL UNIT *************/

/*	module counter3b(
		output[2:0] out,
		input clk,clr);
	reg[2:0] store;

	assign out=store;

	always@ (posedge clk)
	begin
		if(clr)
			store<=3'b000;
		else
			store<=store+1;
	end	
	
	always@ (store)
	       	if(store== 3'b101)
			store<=3'b000;
	endmodule
*/	




