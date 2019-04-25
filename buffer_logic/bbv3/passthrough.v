//passthrough logic for Bus Blaster joefitz@securinghardware.com
//http://dangerousprototypes.com/forum/viewtopic.php?f=37&t=6083
//Based heavily on Verilog version Ported from VHDL version by robots
//http://dangerousprototypes.com/forum/viewtopic.php?f=37&t=1659#p16282

module passthrough(
	output FT_TDO,TDI,TMS,TCK,RTCK,
	input  TDO,FT_TDI,FT_TMS,FT_TCK,FT_RTCK,
	
	output FT_DBGACK,FT_nSRST_IN,FT_TARGET_PRESENT,
	input  FT_JTAG_OE,FT_DBGRQ,FT_nSRST_OE,FT_nSRST_OUT,FT_nTRST_OE,FT_nTRST_OUT,

	inout  nSRST,nTRST,
	output DBGRQ,
	input  DBGACK,TARGET_PRESENT,
	
	input  TEST_MODE_0,
	output TEST_MODE_1);

//pass throught jtag signals
assign TDI = FT_TDI;
assign TMS = FT_TMS;
assign TCK = FT_TCK;
assign RTCK = FT_RTCK;
assign DBGRQ = FT_DBGRQ;
	//srst
assign FT_nSRST_IN = nSRST;
assign nSRST = FT_nSRST_OUT;
	//trst
assign nTRST = FT_nTRST_OUT;
	//inputs
assign FT_TDO = TDO;
assign FT_DBGACK = DBGACK;
assign FT_TARGET_PRESENT = TARGET_PRESENT;
	//LED ON
assign TEST_MODE_1=FT_JTAG_OE;

endmodule
