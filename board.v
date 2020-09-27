	`include "programcounter.v"
	`include "GPR.v"
	`include "alu.v"
	`include "memaddreg.v"
	`include "ram.v"
	`include "instructionreg.v"
	`include "outputRegister.v"
	`include "controlunit.v"

module board;
	wire[7:0] Bus;
	reg clk,clr;
	wire hlt,marwa,ramwa,ramoa,inregoa,inregwa,awa,aoa,sumout,sub,bwa,outregwa,pcinc,pcoe,pcjmp,flagsin;
	assign Bus=8'hzz;
	
	initial 
	begin
		clk<=0;
	end
	
//	always #2 clk=~clk;
	always #2 if(~hlt)
		clk = ~clk;
	
//	reg pcoe,pcjmp,pcinc;
	counter pc(Bus[3:0],Bus[3:0],clk,clr,pcoe,pcjmp,pcinc);

//	initial begin
//		pcoe<=0;pcjmp<=0;pcinc<=0;
//	end

//	reg awa,aoa;
	gpr a(Bus,Bus,clk,clr,awa,aoa);
//	initial begin awa<=0;aoa<=0; end

	reg boa;
//	reg bwa,boa;
	gpr b(Bus,Bus,clk,clr,bwa,boa);
//	initial begin bwa<=0;boa<=0; end
	initial boa<=0;

	wire cf,zf;
//	reg sumout,sub,flagsin;
	alu alunit(Bus,cf,zf,a.store,b.store,clk,sumout,sub,flagsin);
//	initial begin sumout<=0;sub<=0;flagsin<=0; end

//	reg marwa;
	wire[3:0] addrout;
	memaddreg mar(Bus[3:0],clk,clr,marwa,addrout);
//	initial marwa<=0;

	reg ramcs;
//	reg ramoa,ramwa,ramcs;
	ram rm(Bus,addrout,clk,ramoa,ramwa,ramcs);
	initial ramcs<=1;
//	initial begin ramcs<=1; ramwa<=0; ramoa<=0; end

//	reg inregwa,inregoa;
	instreg instructionreg(Bus,clk,clr,inregwa,inregoa,Bus[3:0]);
//	initial begin inregwa<=0; inregoa<=0; end	

//	reg outregwa;
	wire[7:0] display;
	outputreg out(Bus,clk,clr,outregwa,display);
//	initial outregwa<=0;

	reg pmode;
	wire[2:0] cucountout;
	counter3b cucounter(cucountout,clk,clr,pmode);
	wire[8:0] instin;
	assign instin[8:5]= instructionreg.store[7:4];
	assign instin[4:2]= cucountout;
	assign instin[1]= cf;
        assign instin[0]= zf;
	controlunit ctrlunit(instin,pmode,hlt,marwa,ramwa,ramoa,inregoa,inregwa,awa,aoa,sumout,sub,bwa,outregwa,pcinc,pcoe,pcjmp,flagsin);
	
	endmodule

