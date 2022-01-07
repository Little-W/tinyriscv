/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/Users/Lenovo/Desktop/fork_tinyriscv/tinyriscv/rtl/al_IP/gen_rom32_ip.v
 ** Date	:	2022 01 06
 ** TD version	:	5.0.38657
\************************************************************/

`timescale 1ns / 1ps

module gen_rom32_ip ( doa, dia, addra, clka, wea );


	parameter DATA_WIDTH_A = 32; 
	parameter ADDR_WIDTH_A = 14;
	parameter DATA_DEPTH_A = 16384;
	parameter DATA_WIDTH_B = 32;
	parameter ADDR_WIDTH_B = 14;
	parameter DATA_DEPTH_B = 16384;
	parameter REGMODE_A    = "NOREG";
	parameter WRITEMODE_A  = "NORMAL";

	output [DATA_WIDTH_A-1:0] doa;

	input  [DATA_WIDTH_A-1:0] dia;
	input  [ADDR_WIDTH_A-1:0] addra;
	input  [3:0] wea;
	input  clka;



	EG_LOGIC_BRAM #( .DATA_WIDTH_A(DATA_WIDTH_A),
				.ADDR_WIDTH_A(ADDR_WIDTH_A),
				.DATA_DEPTH_A(DATA_DEPTH_A),
				.DATA_WIDTH_B(DATA_WIDTH_B),
				.ADDR_WIDTH_B(ADDR_WIDTH_B),
				.DATA_DEPTH_B(DATA_DEPTH_B),
				.BYTE_ENABLE(8),
				.BYTE_A(4),
				.BYTE_B(4),
				.MODE("SP"),
				.REGMODE_A(REGMODE_A),
				.WRITEMODE_A(WRITEMODE_A),
				.RESETMODE("SYNC"),
				.IMPLEMENT("32K"),
				.DEBUGGABLE("NO"),
				.PACKABLE("NO"),
				.INIT_FILE("NONE"),
				.FILL_ALL("00000000000000000000000000000000"))
			inst(
				.dia(dia),
				.dib({32{1'b0}}),
				.addra(addra),
				.addrb({14{1'b0}}),
				.cea(1'b1),
				.ceb(1'b0),
				.ocea(1'b0),
				.oceb(1'b0),
				.clka(clka),
				.clkb(1'b0),
				.wea(1'b0),
				.bea(wea),
				.web(1'b0),
				.rsta(1'b0),
				.rstb(1'b0),
				.doa(doa),
				.dob());


endmodule