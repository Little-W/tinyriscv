// Verilog netlist created by TD v5.0.38657
// Thu Jan  6 19:27:22 2022

`timescale 1ns / 1ps
module gen_ram9_ip  // gen_ram9_ip.v(14)
  (
  addra,
  clka,
  dia,
  wea,
  doa
  );

  input [13:0] addra;  // gen_ram9_ip.v(29)
  input clka;  // gen_ram9_ip.v(31)
  input [31:0] dia;  // gen_ram9_ip.v(28)
  input [3:0] wea;  // gen_ram9_ip.v(30)
  output [31:0] doa;  // gen_ram9_ip.v(26)

  parameter ADDR_WIDTH_A = 14;
  parameter ADDR_WIDTH_B = 14;
  parameter DATA_DEPTH_A = 16384;
  parameter DATA_DEPTH_B = 16384;
  parameter DATA_WIDTH_A = 32;
  parameter DATA_WIDTH_B = 32;
  parameter REGMODE_A = "NOREG";
  parameter WRITEMODE_A = "NORMAL";
  wire [0:0] addra_piped;
  wire inst_doa_i0_000;
  wire inst_doa_i0_001;
  wire inst_doa_i0_002;
  wire inst_doa_i0_003;
  wire inst_doa_i0_004;
  wire inst_doa_i0_005;
  wire inst_doa_i0_006;
  wire inst_doa_i0_007;
  wire inst_doa_i0_008;
  wire inst_doa_i0_009;
  wire inst_doa_i0_010;
  wire inst_doa_i0_011;
  wire inst_doa_i0_012;
  wire inst_doa_i0_013;
  wire inst_doa_i0_014;
  wire inst_doa_i0_015;
  wire inst_doa_i0_016;
  wire inst_doa_i0_017;
  wire inst_doa_i0_018;
  wire inst_doa_i0_019;
  wire inst_doa_i0_020;
  wire inst_doa_i0_021;
  wire inst_doa_i0_022;
  wire inst_doa_i0_023;
  wire inst_doa_i0_024;
  wire inst_doa_i0_025;
  wire inst_doa_i0_026;
  wire inst_doa_i0_027;
  wire inst_doa_i0_028;
  wire inst_doa_i0_029;
  wire inst_doa_i0_030;
  wire inst_doa_i0_031;
  wire inst_doa_i1_000;
  wire inst_doa_i1_001;
  wire inst_doa_i1_002;
  wire inst_doa_i1_003;
  wire inst_doa_i1_004;
  wire inst_doa_i1_005;
  wire inst_doa_i1_006;
  wire inst_doa_i1_007;
  wire inst_doa_i1_008;
  wire inst_doa_i1_009;
  wire inst_doa_i1_010;
  wire inst_doa_i1_011;
  wire inst_doa_i1_012;
  wire inst_doa_i1_013;
  wire inst_doa_i1_014;
  wire inst_doa_i1_015;
  wire inst_doa_i1_016;
  wire inst_doa_i1_017;
  wire inst_doa_i1_018;
  wire inst_doa_i1_019;
  wire inst_doa_i1_020;
  wire inst_doa_i1_021;
  wire inst_doa_i1_022;
  wire inst_doa_i1_023;
  wire inst_doa_i1_024;
  wire inst_doa_i1_025;
  wire inst_doa_i1_026;
  wire inst_doa_i1_027;
  wire inst_doa_i1_028;
  wire inst_doa_i1_029;
  wire inst_doa_i1_030;
  wire inst_doa_i1_031;

  AL_DFF_X addra_pipe (
    .ar(1'b0),
    .as(1'b0),
    .clk(clka),
    .d(addra[13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(addra_piped));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  // address_offset=0;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_000 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n63,open_n64,addra[13]}),
    .dia({open_n68,open_n69,open_n70,open_n71,open_n72,open_n73,open_n74,dia[0],open_n75}),
    .wea(wea[0]),
    .doa({open_n90,open_n91,open_n92,open_n93,open_n94,open_n95,open_n96,open_n97,inst_doa_i0_000}));
  // address_offset=0;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_001 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n123,open_n124,addra[13]}),
    .dia({open_n128,open_n129,open_n130,open_n131,open_n132,open_n133,open_n134,dia[1],open_n135}),
    .wea(wea[0]),
    .doa({open_n150,open_n151,open_n152,open_n153,open_n154,open_n155,open_n156,open_n157,inst_doa_i0_001}));
  // address_offset=0;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_002 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n183,open_n184,addra[13]}),
    .dia({open_n188,open_n189,open_n190,open_n191,open_n192,open_n193,open_n194,dia[2],open_n195}),
    .wea(wea[0]),
    .doa({open_n210,open_n211,open_n212,open_n213,open_n214,open_n215,open_n216,open_n217,inst_doa_i0_002}));
  // address_offset=0;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_003 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n243,open_n244,addra[13]}),
    .dia({open_n248,open_n249,open_n250,open_n251,open_n252,open_n253,open_n254,dia[3],open_n255}),
    .wea(wea[0]),
    .doa({open_n270,open_n271,open_n272,open_n273,open_n274,open_n275,open_n276,open_n277,inst_doa_i0_003}));
  // address_offset=0;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_004 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n303,open_n304,addra[13]}),
    .dia({open_n308,open_n309,open_n310,open_n311,open_n312,open_n313,open_n314,dia[4],open_n315}),
    .wea(wea[0]),
    .doa({open_n330,open_n331,open_n332,open_n333,open_n334,open_n335,open_n336,open_n337,inst_doa_i0_004}));
  // address_offset=0;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_005 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n363,open_n364,addra[13]}),
    .dia({open_n368,open_n369,open_n370,open_n371,open_n372,open_n373,open_n374,dia[5],open_n375}),
    .wea(wea[0]),
    .doa({open_n390,open_n391,open_n392,open_n393,open_n394,open_n395,open_n396,open_n397,inst_doa_i0_005}));
  // address_offset=0;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_006 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n423,open_n424,addra[13]}),
    .dia({open_n428,open_n429,open_n430,open_n431,open_n432,open_n433,open_n434,dia[6],open_n435}),
    .wea(wea[0]),
    .doa({open_n450,open_n451,open_n452,open_n453,open_n454,open_n455,open_n456,open_n457,inst_doa_i0_006}));
  // address_offset=0;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_007 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n483,open_n484,addra[13]}),
    .dia({open_n488,open_n489,open_n490,open_n491,open_n492,open_n493,open_n494,dia[7],open_n495}),
    .wea(wea[0]),
    .doa({open_n510,open_n511,open_n512,open_n513,open_n514,open_n515,open_n516,open_n517,inst_doa_i0_007}));
  // address_offset=0;data_offset=8;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_008 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n543,open_n544,addra[13]}),
    .dia({open_n548,open_n549,open_n550,open_n551,open_n552,open_n553,open_n554,dia[8],open_n555}),
    .wea(wea[1]),
    .doa({open_n570,open_n571,open_n572,open_n573,open_n574,open_n575,open_n576,open_n577,inst_doa_i0_008}));
  // address_offset=0;data_offset=9;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_009 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n603,open_n604,addra[13]}),
    .dia({open_n608,open_n609,open_n610,open_n611,open_n612,open_n613,open_n614,dia[9],open_n615}),
    .wea(wea[1]),
    .doa({open_n630,open_n631,open_n632,open_n633,open_n634,open_n635,open_n636,open_n637,inst_doa_i0_009}));
  // address_offset=0;data_offset=10;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_010 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n663,open_n664,addra[13]}),
    .dia({open_n668,open_n669,open_n670,open_n671,open_n672,open_n673,open_n674,dia[10],open_n675}),
    .wea(wea[1]),
    .doa({open_n690,open_n691,open_n692,open_n693,open_n694,open_n695,open_n696,open_n697,inst_doa_i0_010}));
  // address_offset=0;data_offset=11;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_011 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n723,open_n724,addra[13]}),
    .dia({open_n728,open_n729,open_n730,open_n731,open_n732,open_n733,open_n734,dia[11],open_n735}),
    .wea(wea[1]),
    .doa({open_n750,open_n751,open_n752,open_n753,open_n754,open_n755,open_n756,open_n757,inst_doa_i0_011}));
  // address_offset=0;data_offset=12;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_012 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n783,open_n784,addra[13]}),
    .dia({open_n788,open_n789,open_n790,open_n791,open_n792,open_n793,open_n794,dia[12],open_n795}),
    .wea(wea[1]),
    .doa({open_n810,open_n811,open_n812,open_n813,open_n814,open_n815,open_n816,open_n817,inst_doa_i0_012}));
  // address_offset=0;data_offset=13;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_013 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n843,open_n844,addra[13]}),
    .dia({open_n848,open_n849,open_n850,open_n851,open_n852,open_n853,open_n854,dia[13],open_n855}),
    .wea(wea[1]),
    .doa({open_n870,open_n871,open_n872,open_n873,open_n874,open_n875,open_n876,open_n877,inst_doa_i0_013}));
  // address_offset=0;data_offset=14;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_014 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n903,open_n904,addra[13]}),
    .dia({open_n908,open_n909,open_n910,open_n911,open_n912,open_n913,open_n914,dia[14],open_n915}),
    .wea(wea[1]),
    .doa({open_n930,open_n931,open_n932,open_n933,open_n934,open_n935,open_n936,open_n937,inst_doa_i0_014}));
  // address_offset=0;data_offset=15;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_015 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n963,open_n964,addra[13]}),
    .dia({open_n968,open_n969,open_n970,open_n971,open_n972,open_n973,open_n974,dia[15],open_n975}),
    .wea(wea[1]),
    .doa({open_n990,open_n991,open_n992,open_n993,open_n994,open_n995,open_n996,open_n997,inst_doa_i0_015}));
  // address_offset=0;data_offset=16;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_016 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1023,open_n1024,addra[13]}),
    .dia({open_n1028,open_n1029,open_n1030,open_n1031,open_n1032,open_n1033,open_n1034,dia[16],open_n1035}),
    .wea(wea[2]),
    .doa({open_n1050,open_n1051,open_n1052,open_n1053,open_n1054,open_n1055,open_n1056,open_n1057,inst_doa_i0_016}));
  // address_offset=0;data_offset=17;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_017 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1083,open_n1084,addra[13]}),
    .dia({open_n1088,open_n1089,open_n1090,open_n1091,open_n1092,open_n1093,open_n1094,dia[17],open_n1095}),
    .wea(wea[2]),
    .doa({open_n1110,open_n1111,open_n1112,open_n1113,open_n1114,open_n1115,open_n1116,open_n1117,inst_doa_i0_017}));
  // address_offset=0;data_offset=18;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_018 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1143,open_n1144,addra[13]}),
    .dia({open_n1148,open_n1149,open_n1150,open_n1151,open_n1152,open_n1153,open_n1154,dia[18],open_n1155}),
    .wea(wea[2]),
    .doa({open_n1170,open_n1171,open_n1172,open_n1173,open_n1174,open_n1175,open_n1176,open_n1177,inst_doa_i0_018}));
  // address_offset=0;data_offset=19;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_019 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1203,open_n1204,addra[13]}),
    .dia({open_n1208,open_n1209,open_n1210,open_n1211,open_n1212,open_n1213,open_n1214,dia[19],open_n1215}),
    .wea(wea[2]),
    .doa({open_n1230,open_n1231,open_n1232,open_n1233,open_n1234,open_n1235,open_n1236,open_n1237,inst_doa_i0_019}));
  // address_offset=0;data_offset=20;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_020 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1263,open_n1264,addra[13]}),
    .dia({open_n1268,open_n1269,open_n1270,open_n1271,open_n1272,open_n1273,open_n1274,dia[20],open_n1275}),
    .wea(wea[2]),
    .doa({open_n1290,open_n1291,open_n1292,open_n1293,open_n1294,open_n1295,open_n1296,open_n1297,inst_doa_i0_020}));
  // address_offset=0;data_offset=21;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_021 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1323,open_n1324,addra[13]}),
    .dia({open_n1328,open_n1329,open_n1330,open_n1331,open_n1332,open_n1333,open_n1334,dia[21],open_n1335}),
    .wea(wea[2]),
    .doa({open_n1350,open_n1351,open_n1352,open_n1353,open_n1354,open_n1355,open_n1356,open_n1357,inst_doa_i0_021}));
  // address_offset=0;data_offset=22;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_022 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1383,open_n1384,addra[13]}),
    .dia({open_n1388,open_n1389,open_n1390,open_n1391,open_n1392,open_n1393,open_n1394,dia[22],open_n1395}),
    .wea(wea[2]),
    .doa({open_n1410,open_n1411,open_n1412,open_n1413,open_n1414,open_n1415,open_n1416,open_n1417,inst_doa_i0_022}));
  // address_offset=0;data_offset=23;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_023 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1443,open_n1444,addra[13]}),
    .dia({open_n1448,open_n1449,open_n1450,open_n1451,open_n1452,open_n1453,open_n1454,dia[23],open_n1455}),
    .wea(wea[2]),
    .doa({open_n1470,open_n1471,open_n1472,open_n1473,open_n1474,open_n1475,open_n1476,open_n1477,inst_doa_i0_023}));
  // address_offset=0;data_offset=24;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_024 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1503,open_n1504,addra[13]}),
    .dia({open_n1508,open_n1509,open_n1510,open_n1511,open_n1512,open_n1513,open_n1514,dia[24],open_n1515}),
    .wea(wea[3]),
    .doa({open_n1530,open_n1531,open_n1532,open_n1533,open_n1534,open_n1535,open_n1536,open_n1537,inst_doa_i0_024}));
  // address_offset=0;data_offset=25;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_025 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1563,open_n1564,addra[13]}),
    .dia({open_n1568,open_n1569,open_n1570,open_n1571,open_n1572,open_n1573,open_n1574,dia[25],open_n1575}),
    .wea(wea[3]),
    .doa({open_n1590,open_n1591,open_n1592,open_n1593,open_n1594,open_n1595,open_n1596,open_n1597,inst_doa_i0_025}));
  // address_offset=0;data_offset=26;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_026 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1623,open_n1624,addra[13]}),
    .dia({open_n1628,open_n1629,open_n1630,open_n1631,open_n1632,open_n1633,open_n1634,dia[26],open_n1635}),
    .wea(wea[3]),
    .doa({open_n1650,open_n1651,open_n1652,open_n1653,open_n1654,open_n1655,open_n1656,open_n1657,inst_doa_i0_026}));
  // address_offset=0;data_offset=27;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_027 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1683,open_n1684,addra[13]}),
    .dia({open_n1688,open_n1689,open_n1690,open_n1691,open_n1692,open_n1693,open_n1694,dia[27],open_n1695}),
    .wea(wea[3]),
    .doa({open_n1710,open_n1711,open_n1712,open_n1713,open_n1714,open_n1715,open_n1716,open_n1717,inst_doa_i0_027}));
  // address_offset=0;data_offset=28;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_028 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1743,open_n1744,addra[13]}),
    .dia({open_n1748,open_n1749,open_n1750,open_n1751,open_n1752,open_n1753,open_n1754,dia[28],open_n1755}),
    .wea(wea[3]),
    .doa({open_n1770,open_n1771,open_n1772,open_n1773,open_n1774,open_n1775,open_n1776,open_n1777,inst_doa_i0_028}));
  // address_offset=0;data_offset=29;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_029 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1803,open_n1804,addra[13]}),
    .dia({open_n1808,open_n1809,open_n1810,open_n1811,open_n1812,open_n1813,open_n1814,dia[29],open_n1815}),
    .wea(wea[3]),
    .doa({open_n1830,open_n1831,open_n1832,open_n1833,open_n1834,open_n1835,open_n1836,open_n1837,inst_doa_i0_029}));
  // address_offset=0;data_offset=30;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_030 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1863,open_n1864,addra[13]}),
    .dia({open_n1868,open_n1869,open_n1870,open_n1871,open_n1872,open_n1873,open_n1874,dia[30],open_n1875}),
    .wea(wea[3]),
    .doa({open_n1890,open_n1891,open_n1892,open_n1893,open_n1894,open_n1895,open_n1896,open_n1897,inst_doa_i0_030}));
  // address_offset=0;data_offset=31;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_000000_031 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1923,open_n1924,addra[13]}),
    .dia({open_n1928,open_n1929,open_n1930,open_n1931,open_n1932,open_n1933,open_n1934,dia[31],open_n1935}),
    .wea(wea[3]),
    .doa({open_n1950,open_n1951,open_n1952,open_n1953,open_n1954,open_n1955,open_n1956,open_n1957,inst_doa_i0_031}));
  // address_offset=8192;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_000 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1983,open_n1984,addra[13]}),
    .dia({open_n1988,open_n1989,open_n1990,open_n1991,open_n1992,open_n1993,open_n1994,dia[0],open_n1995}),
    .wea(wea[0]),
    .doa({open_n2010,open_n2011,open_n2012,open_n2013,open_n2014,open_n2015,open_n2016,open_n2017,inst_doa_i1_000}));
  // address_offset=8192;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_001 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2043,open_n2044,addra[13]}),
    .dia({open_n2048,open_n2049,open_n2050,open_n2051,open_n2052,open_n2053,open_n2054,dia[1],open_n2055}),
    .wea(wea[0]),
    .doa({open_n2070,open_n2071,open_n2072,open_n2073,open_n2074,open_n2075,open_n2076,open_n2077,inst_doa_i1_001}));
  // address_offset=8192;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_002 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2103,open_n2104,addra[13]}),
    .dia({open_n2108,open_n2109,open_n2110,open_n2111,open_n2112,open_n2113,open_n2114,dia[2],open_n2115}),
    .wea(wea[0]),
    .doa({open_n2130,open_n2131,open_n2132,open_n2133,open_n2134,open_n2135,open_n2136,open_n2137,inst_doa_i1_002}));
  // address_offset=8192;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_003 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2163,open_n2164,addra[13]}),
    .dia({open_n2168,open_n2169,open_n2170,open_n2171,open_n2172,open_n2173,open_n2174,dia[3],open_n2175}),
    .wea(wea[0]),
    .doa({open_n2190,open_n2191,open_n2192,open_n2193,open_n2194,open_n2195,open_n2196,open_n2197,inst_doa_i1_003}));
  // address_offset=8192;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_004 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2223,open_n2224,addra[13]}),
    .dia({open_n2228,open_n2229,open_n2230,open_n2231,open_n2232,open_n2233,open_n2234,dia[4],open_n2235}),
    .wea(wea[0]),
    .doa({open_n2250,open_n2251,open_n2252,open_n2253,open_n2254,open_n2255,open_n2256,open_n2257,inst_doa_i1_004}));
  // address_offset=8192;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_005 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2283,open_n2284,addra[13]}),
    .dia({open_n2288,open_n2289,open_n2290,open_n2291,open_n2292,open_n2293,open_n2294,dia[5],open_n2295}),
    .wea(wea[0]),
    .doa({open_n2310,open_n2311,open_n2312,open_n2313,open_n2314,open_n2315,open_n2316,open_n2317,inst_doa_i1_005}));
  // address_offset=8192;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_006 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2343,open_n2344,addra[13]}),
    .dia({open_n2348,open_n2349,open_n2350,open_n2351,open_n2352,open_n2353,open_n2354,dia[6],open_n2355}),
    .wea(wea[0]),
    .doa({open_n2370,open_n2371,open_n2372,open_n2373,open_n2374,open_n2375,open_n2376,open_n2377,inst_doa_i1_006}));
  // address_offset=8192;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_007 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2403,open_n2404,addra[13]}),
    .dia({open_n2408,open_n2409,open_n2410,open_n2411,open_n2412,open_n2413,open_n2414,dia[7],open_n2415}),
    .wea(wea[0]),
    .doa({open_n2430,open_n2431,open_n2432,open_n2433,open_n2434,open_n2435,open_n2436,open_n2437,inst_doa_i1_007}));
  // address_offset=8192;data_offset=8;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_008 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2463,open_n2464,addra[13]}),
    .dia({open_n2468,open_n2469,open_n2470,open_n2471,open_n2472,open_n2473,open_n2474,dia[8],open_n2475}),
    .wea(wea[1]),
    .doa({open_n2490,open_n2491,open_n2492,open_n2493,open_n2494,open_n2495,open_n2496,open_n2497,inst_doa_i1_008}));
  // address_offset=8192;data_offset=9;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_009 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2523,open_n2524,addra[13]}),
    .dia({open_n2528,open_n2529,open_n2530,open_n2531,open_n2532,open_n2533,open_n2534,dia[9],open_n2535}),
    .wea(wea[1]),
    .doa({open_n2550,open_n2551,open_n2552,open_n2553,open_n2554,open_n2555,open_n2556,open_n2557,inst_doa_i1_009}));
  // address_offset=8192;data_offset=10;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_010 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2583,open_n2584,addra[13]}),
    .dia({open_n2588,open_n2589,open_n2590,open_n2591,open_n2592,open_n2593,open_n2594,dia[10],open_n2595}),
    .wea(wea[1]),
    .doa({open_n2610,open_n2611,open_n2612,open_n2613,open_n2614,open_n2615,open_n2616,open_n2617,inst_doa_i1_010}));
  // address_offset=8192;data_offset=11;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_011 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2643,open_n2644,addra[13]}),
    .dia({open_n2648,open_n2649,open_n2650,open_n2651,open_n2652,open_n2653,open_n2654,dia[11],open_n2655}),
    .wea(wea[1]),
    .doa({open_n2670,open_n2671,open_n2672,open_n2673,open_n2674,open_n2675,open_n2676,open_n2677,inst_doa_i1_011}));
  // address_offset=8192;data_offset=12;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_012 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2703,open_n2704,addra[13]}),
    .dia({open_n2708,open_n2709,open_n2710,open_n2711,open_n2712,open_n2713,open_n2714,dia[12],open_n2715}),
    .wea(wea[1]),
    .doa({open_n2730,open_n2731,open_n2732,open_n2733,open_n2734,open_n2735,open_n2736,open_n2737,inst_doa_i1_012}));
  // address_offset=8192;data_offset=13;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_013 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2763,open_n2764,addra[13]}),
    .dia({open_n2768,open_n2769,open_n2770,open_n2771,open_n2772,open_n2773,open_n2774,dia[13],open_n2775}),
    .wea(wea[1]),
    .doa({open_n2790,open_n2791,open_n2792,open_n2793,open_n2794,open_n2795,open_n2796,open_n2797,inst_doa_i1_013}));
  // address_offset=8192;data_offset=14;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_014 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2823,open_n2824,addra[13]}),
    .dia({open_n2828,open_n2829,open_n2830,open_n2831,open_n2832,open_n2833,open_n2834,dia[14],open_n2835}),
    .wea(wea[1]),
    .doa({open_n2850,open_n2851,open_n2852,open_n2853,open_n2854,open_n2855,open_n2856,open_n2857,inst_doa_i1_014}));
  // address_offset=8192;data_offset=15;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_015 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2883,open_n2884,addra[13]}),
    .dia({open_n2888,open_n2889,open_n2890,open_n2891,open_n2892,open_n2893,open_n2894,dia[15],open_n2895}),
    .wea(wea[1]),
    .doa({open_n2910,open_n2911,open_n2912,open_n2913,open_n2914,open_n2915,open_n2916,open_n2917,inst_doa_i1_015}));
  // address_offset=8192;data_offset=16;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_016 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n2943,open_n2944,addra[13]}),
    .dia({open_n2948,open_n2949,open_n2950,open_n2951,open_n2952,open_n2953,open_n2954,dia[16],open_n2955}),
    .wea(wea[2]),
    .doa({open_n2970,open_n2971,open_n2972,open_n2973,open_n2974,open_n2975,open_n2976,open_n2977,inst_doa_i1_016}));
  // address_offset=8192;data_offset=17;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_017 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3003,open_n3004,addra[13]}),
    .dia({open_n3008,open_n3009,open_n3010,open_n3011,open_n3012,open_n3013,open_n3014,dia[17],open_n3015}),
    .wea(wea[2]),
    .doa({open_n3030,open_n3031,open_n3032,open_n3033,open_n3034,open_n3035,open_n3036,open_n3037,inst_doa_i1_017}));
  // address_offset=8192;data_offset=18;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_018 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3063,open_n3064,addra[13]}),
    .dia({open_n3068,open_n3069,open_n3070,open_n3071,open_n3072,open_n3073,open_n3074,dia[18],open_n3075}),
    .wea(wea[2]),
    .doa({open_n3090,open_n3091,open_n3092,open_n3093,open_n3094,open_n3095,open_n3096,open_n3097,inst_doa_i1_018}));
  // address_offset=8192;data_offset=19;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_019 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3123,open_n3124,addra[13]}),
    .dia({open_n3128,open_n3129,open_n3130,open_n3131,open_n3132,open_n3133,open_n3134,dia[19],open_n3135}),
    .wea(wea[2]),
    .doa({open_n3150,open_n3151,open_n3152,open_n3153,open_n3154,open_n3155,open_n3156,open_n3157,inst_doa_i1_019}));
  // address_offset=8192;data_offset=20;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_020 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3183,open_n3184,addra[13]}),
    .dia({open_n3188,open_n3189,open_n3190,open_n3191,open_n3192,open_n3193,open_n3194,dia[20],open_n3195}),
    .wea(wea[2]),
    .doa({open_n3210,open_n3211,open_n3212,open_n3213,open_n3214,open_n3215,open_n3216,open_n3217,inst_doa_i1_020}));
  // address_offset=8192;data_offset=21;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_021 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3243,open_n3244,addra[13]}),
    .dia({open_n3248,open_n3249,open_n3250,open_n3251,open_n3252,open_n3253,open_n3254,dia[21],open_n3255}),
    .wea(wea[2]),
    .doa({open_n3270,open_n3271,open_n3272,open_n3273,open_n3274,open_n3275,open_n3276,open_n3277,inst_doa_i1_021}));
  // address_offset=8192;data_offset=22;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_022 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3303,open_n3304,addra[13]}),
    .dia({open_n3308,open_n3309,open_n3310,open_n3311,open_n3312,open_n3313,open_n3314,dia[22],open_n3315}),
    .wea(wea[2]),
    .doa({open_n3330,open_n3331,open_n3332,open_n3333,open_n3334,open_n3335,open_n3336,open_n3337,inst_doa_i1_022}));
  // address_offset=8192;data_offset=23;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_023 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3363,open_n3364,addra[13]}),
    .dia({open_n3368,open_n3369,open_n3370,open_n3371,open_n3372,open_n3373,open_n3374,dia[23],open_n3375}),
    .wea(wea[2]),
    .doa({open_n3390,open_n3391,open_n3392,open_n3393,open_n3394,open_n3395,open_n3396,open_n3397,inst_doa_i1_023}));
  // address_offset=8192;data_offset=24;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_024 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3423,open_n3424,addra[13]}),
    .dia({open_n3428,open_n3429,open_n3430,open_n3431,open_n3432,open_n3433,open_n3434,dia[24],open_n3435}),
    .wea(wea[3]),
    .doa({open_n3450,open_n3451,open_n3452,open_n3453,open_n3454,open_n3455,open_n3456,open_n3457,inst_doa_i1_024}));
  // address_offset=8192;data_offset=25;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_025 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3483,open_n3484,addra[13]}),
    .dia({open_n3488,open_n3489,open_n3490,open_n3491,open_n3492,open_n3493,open_n3494,dia[25],open_n3495}),
    .wea(wea[3]),
    .doa({open_n3510,open_n3511,open_n3512,open_n3513,open_n3514,open_n3515,open_n3516,open_n3517,inst_doa_i1_025}));
  // address_offset=8192;data_offset=26;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_026 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3543,open_n3544,addra[13]}),
    .dia({open_n3548,open_n3549,open_n3550,open_n3551,open_n3552,open_n3553,open_n3554,dia[26],open_n3555}),
    .wea(wea[3]),
    .doa({open_n3570,open_n3571,open_n3572,open_n3573,open_n3574,open_n3575,open_n3576,open_n3577,inst_doa_i1_026}));
  // address_offset=8192;data_offset=27;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_027 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3603,open_n3604,addra[13]}),
    .dia({open_n3608,open_n3609,open_n3610,open_n3611,open_n3612,open_n3613,open_n3614,dia[27],open_n3615}),
    .wea(wea[3]),
    .doa({open_n3630,open_n3631,open_n3632,open_n3633,open_n3634,open_n3635,open_n3636,open_n3637,inst_doa_i1_027}));
  // address_offset=8192;data_offset=28;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_028 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3663,open_n3664,addra[13]}),
    .dia({open_n3668,open_n3669,open_n3670,open_n3671,open_n3672,open_n3673,open_n3674,dia[28],open_n3675}),
    .wea(wea[3]),
    .doa({open_n3690,open_n3691,open_n3692,open_n3693,open_n3694,open_n3695,open_n3696,open_n3697,inst_doa_i1_028}));
  // address_offset=8192;data_offset=29;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_029 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3723,open_n3724,addra[13]}),
    .dia({open_n3728,open_n3729,open_n3730,open_n3731,open_n3732,open_n3733,open_n3734,dia[29],open_n3735}),
    .wea(wea[3]),
    .doa({open_n3750,open_n3751,open_n3752,open_n3753,open_n3754,open_n3755,open_n3756,open_n3757,inst_doa_i1_029}));
  // address_offset=8192;data_offset=30;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_030 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3783,open_n3784,addra[13]}),
    .dia({open_n3788,open_n3789,open_n3790,open_n3791,open_n3792,open_n3793,open_n3794,dia[30],open_n3795}),
    .wea(wea[3]),
    .doa({open_n3810,open_n3811,open_n3812,open_n3813,open_n3814,open_n3815,open_n3816,open_n3817,inst_doa_i1_030}));
  // address_offset=8192;data_offset=31;depth=8192;width=1;num_section=1;width_per_section=1;section_size=32;working_depth=8192;working_width=1;working_numbyte=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_16384x32_sub_008192_031 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n3843,open_n3844,addra[13]}),
    .dia({open_n3848,open_n3849,open_n3850,open_n3851,open_n3852,open_n3853,open_n3854,dia[31],open_n3855}),
    .wea(wea[3]),
    .doa({open_n3870,open_n3871,open_n3872,open_n3873,open_n3874,open_n3875,open_n3876,open_n3877,inst_doa_i1_031}));
  AL_MUX \inst_doa_mux_b0/al_mux_b0_0_0  (
    .i0(inst_doa_i0_000),
    .i1(inst_doa_i1_000),
    .sel(addra_piped),
    .o(doa[0]));
  AL_MUX \inst_doa_mux_b1/al_mux_b0_0_0  (
    .i0(inst_doa_i0_001),
    .i1(inst_doa_i1_001),
    .sel(addra_piped),
    .o(doa[1]));
  AL_MUX \inst_doa_mux_b10/al_mux_b0_0_0  (
    .i0(inst_doa_i0_010),
    .i1(inst_doa_i1_010),
    .sel(addra_piped),
    .o(doa[10]));
  AL_MUX \inst_doa_mux_b11/al_mux_b0_0_0  (
    .i0(inst_doa_i0_011),
    .i1(inst_doa_i1_011),
    .sel(addra_piped),
    .o(doa[11]));
  AL_MUX \inst_doa_mux_b12/al_mux_b0_0_0  (
    .i0(inst_doa_i0_012),
    .i1(inst_doa_i1_012),
    .sel(addra_piped),
    .o(doa[12]));
  AL_MUX \inst_doa_mux_b13/al_mux_b0_0_0  (
    .i0(inst_doa_i0_013),
    .i1(inst_doa_i1_013),
    .sel(addra_piped),
    .o(doa[13]));
  AL_MUX \inst_doa_mux_b14/al_mux_b0_0_0  (
    .i0(inst_doa_i0_014),
    .i1(inst_doa_i1_014),
    .sel(addra_piped),
    .o(doa[14]));
  AL_MUX \inst_doa_mux_b15/al_mux_b0_0_0  (
    .i0(inst_doa_i0_015),
    .i1(inst_doa_i1_015),
    .sel(addra_piped),
    .o(doa[15]));
  AL_MUX \inst_doa_mux_b16/al_mux_b0_0_0  (
    .i0(inst_doa_i0_016),
    .i1(inst_doa_i1_016),
    .sel(addra_piped),
    .o(doa[16]));
  AL_MUX \inst_doa_mux_b17/al_mux_b0_0_0  (
    .i0(inst_doa_i0_017),
    .i1(inst_doa_i1_017),
    .sel(addra_piped),
    .o(doa[17]));
  AL_MUX \inst_doa_mux_b18/al_mux_b0_0_0  (
    .i0(inst_doa_i0_018),
    .i1(inst_doa_i1_018),
    .sel(addra_piped),
    .o(doa[18]));
  AL_MUX \inst_doa_mux_b19/al_mux_b0_0_0  (
    .i0(inst_doa_i0_019),
    .i1(inst_doa_i1_019),
    .sel(addra_piped),
    .o(doa[19]));
  AL_MUX \inst_doa_mux_b2/al_mux_b0_0_0  (
    .i0(inst_doa_i0_002),
    .i1(inst_doa_i1_002),
    .sel(addra_piped),
    .o(doa[2]));
  AL_MUX \inst_doa_mux_b20/al_mux_b0_0_0  (
    .i0(inst_doa_i0_020),
    .i1(inst_doa_i1_020),
    .sel(addra_piped),
    .o(doa[20]));
  AL_MUX \inst_doa_mux_b21/al_mux_b0_0_0  (
    .i0(inst_doa_i0_021),
    .i1(inst_doa_i1_021),
    .sel(addra_piped),
    .o(doa[21]));
  AL_MUX \inst_doa_mux_b22/al_mux_b0_0_0  (
    .i0(inst_doa_i0_022),
    .i1(inst_doa_i1_022),
    .sel(addra_piped),
    .o(doa[22]));
  AL_MUX \inst_doa_mux_b23/al_mux_b0_0_0  (
    .i0(inst_doa_i0_023),
    .i1(inst_doa_i1_023),
    .sel(addra_piped),
    .o(doa[23]));
  AL_MUX \inst_doa_mux_b24/al_mux_b0_0_0  (
    .i0(inst_doa_i0_024),
    .i1(inst_doa_i1_024),
    .sel(addra_piped),
    .o(doa[24]));
  AL_MUX \inst_doa_mux_b25/al_mux_b0_0_0  (
    .i0(inst_doa_i0_025),
    .i1(inst_doa_i1_025),
    .sel(addra_piped),
    .o(doa[25]));
  AL_MUX \inst_doa_mux_b26/al_mux_b0_0_0  (
    .i0(inst_doa_i0_026),
    .i1(inst_doa_i1_026),
    .sel(addra_piped),
    .o(doa[26]));
  AL_MUX \inst_doa_mux_b27/al_mux_b0_0_0  (
    .i0(inst_doa_i0_027),
    .i1(inst_doa_i1_027),
    .sel(addra_piped),
    .o(doa[27]));
  AL_MUX \inst_doa_mux_b28/al_mux_b0_0_0  (
    .i0(inst_doa_i0_028),
    .i1(inst_doa_i1_028),
    .sel(addra_piped),
    .o(doa[28]));
  AL_MUX \inst_doa_mux_b29/al_mux_b0_0_0  (
    .i0(inst_doa_i0_029),
    .i1(inst_doa_i1_029),
    .sel(addra_piped),
    .o(doa[29]));
  AL_MUX \inst_doa_mux_b3/al_mux_b0_0_0  (
    .i0(inst_doa_i0_003),
    .i1(inst_doa_i1_003),
    .sel(addra_piped),
    .o(doa[3]));
  AL_MUX \inst_doa_mux_b30/al_mux_b0_0_0  (
    .i0(inst_doa_i0_030),
    .i1(inst_doa_i1_030),
    .sel(addra_piped),
    .o(doa[30]));
  AL_MUX \inst_doa_mux_b31/al_mux_b0_0_0  (
    .i0(inst_doa_i0_031),
    .i1(inst_doa_i1_031),
    .sel(addra_piped),
    .o(doa[31]));
  AL_MUX \inst_doa_mux_b4/al_mux_b0_0_0  (
    .i0(inst_doa_i0_004),
    .i1(inst_doa_i1_004),
    .sel(addra_piped),
    .o(doa[4]));
  AL_MUX \inst_doa_mux_b5/al_mux_b0_0_0  (
    .i0(inst_doa_i0_005),
    .i1(inst_doa_i1_005),
    .sel(addra_piped),
    .o(doa[5]));
  AL_MUX \inst_doa_mux_b6/al_mux_b0_0_0  (
    .i0(inst_doa_i0_006),
    .i1(inst_doa_i1_006),
    .sel(addra_piped),
    .o(doa[6]));
  AL_MUX \inst_doa_mux_b7/al_mux_b0_0_0  (
    .i0(inst_doa_i0_007),
    .i1(inst_doa_i1_007),
    .sel(addra_piped),
    .o(doa[7]));
  AL_MUX \inst_doa_mux_b8/al_mux_b0_0_0  (
    .i0(inst_doa_i0_008),
    .i1(inst_doa_i1_008),
    .sel(addra_piped),
    .o(doa[8]));
  AL_MUX \inst_doa_mux_b9/al_mux_b0_0_0  (
    .i0(inst_doa_i0_009),
    .i1(inst_doa_i1_009),
    .sel(addra_piped),
    .o(doa[9]));

endmodule 

module AL_DFF_X
  (
  ar,
  as,
  clk,
  d,
  en,
  sr,
  ss,
  q
  );

  input ar;
  input as;
  input clk;
  input d;
  input en;
  input sr;
  input ss;
  output q;

  wire enout;
  wire srout;
  wire ssout;

  AL_MUX u_en (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_MUX u_reset (
    .i0(ssout),
    .i1(1'b0),
    .sel(sr),
    .o(srout));
  AL_DFF u_seq (
    .clk(clk),
    .d(srout),
    .reset(ar),
    .set(as),
    .q(q));
  AL_MUX u_set (
    .i0(enout),
    .i1(1'b1),
    .sel(ss),
    .o(ssout));

endmodule 

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  // synthesis translate_off
  tri0 gsrn = glbl.gsrn;

  always @(gsrn)
  begin
    if(!gsrn)
      assign q = INI;
    else
      deassign q;
  end
  // synthesis translate_on

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

