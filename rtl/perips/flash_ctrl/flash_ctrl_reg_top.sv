// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`


module flash_ctrl_reg_top (
  input  logic        clk_i,
  input  logic        rst_ni,

  // To HW
  output flash_ctrl_reg_pkg::flash_ctrl_reg2hw_t reg2hw, // Write
  input  flash_ctrl_reg_pkg::flash_ctrl_hw2reg_t hw2reg, // Read

  input  logic        reg_we,
  input  logic        reg_re,
  input  logic [31:0] reg_wdata,
  input  logic [ 3:0] reg_be,
  input  logic [31:0] reg_addr,
  output logic [31:0] reg_rdata
);

  import flash_ctrl_reg_pkg::* ;

  localparam int AW = 4;
  localparam int DW = 32;
  localparam int DBW = DW/8;    // Byte Width

  logic reg_error;
  logic addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  assign reg_rdata = reg_rdata_next;
  assign reg_error = wr_err;

  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic ctrl_we;
  logic ctrl_start_qs;
  logic ctrl_start_wd;
  logic [1:0] ctrl_op_mode_qs;
  logic [1:0] ctrl_op_mode_wd;
  logic ctrl_sw_ctrl_qs;
  logic ctrl_sw_ctrl_wd;
  logic ctrl_program_init_qs;
  logic ctrl_program_init_wd;
  logic ctrl_write_error_qs;
  logic [25:0] ctrl_reserved_wd;
  logic addr_we;
  logic [22:0] addr_rw_address_qs;
  logic [22:0] addr_rw_address_wd;
  logic [8:0] addr_reserved_wd;
  logic data_we;
  logic [31:0] data_qs;
  logic [31:0] data_wd;

  // Register instances
  // R[ctrl]: V(False)

  //   F[start]: 0:0
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RW"),
    .RESVAL  (1'h0)
  ) u_ctrl_start (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (ctrl_we),
    .wd     (ctrl_start_wd),

    // from internal hardware
    .de     (hw2reg.ctrl.start.de),
    .d      (hw2reg.ctrl.start.d),

    // to internal hardware
    .qe     (reg2hw.ctrl.start.qe),
    .q      (reg2hw.ctrl.start.q),

    // to register interface (read)
    .qs     (ctrl_start_qs)
  );


  //   F[op_mode]: 2:1
  prim_subreg #(
    .DW      (2),
    .SWACCESS("RW"),
    .RESVAL  (2'h0)
  ) u_ctrl_op_mode (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (ctrl_we),
    .wd     (ctrl_op_mode_wd),

    // from internal hardware
    .de     (hw2reg.ctrl.op_mode.de),
    .d      (hw2reg.ctrl.op_mode.d),

    // to internal hardware
    .qe     (reg2hw.ctrl.op_mode.qe),
    .q      (reg2hw.ctrl.op_mode.q),

    // to register interface (read)
    .qs     (ctrl_op_mode_qs)
  );


  //   F[sw_ctrl]: 3:3
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RW"),
    .RESVAL  (1'h0)
  ) u_ctrl_sw_ctrl (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (ctrl_we),
    .wd     (ctrl_sw_ctrl_wd),

    // from internal hardware
    .de     (hw2reg.ctrl.sw_ctrl.de),
    .d      (hw2reg.ctrl.sw_ctrl.d),

    // to internal hardware
    .qe     (reg2hw.ctrl.sw_ctrl.qe),
    .q      (reg2hw.ctrl.sw_ctrl.q),

    // to register interface (read)
    .qs     (ctrl_sw_ctrl_qs)
  );


  //   F[program_init]: 4:4
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RW"),
    .RESVAL  (1'h0)
  ) u_ctrl_program_init (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (ctrl_we),
    .wd     (ctrl_program_init_wd),

    // from internal hardware
    .de     (hw2reg.ctrl.program_init.de),
    .d      (hw2reg.ctrl.program_init.d),

    // to internal hardware
    .qe     (reg2hw.ctrl.program_init.qe),
    .q      (reg2hw.ctrl.program_init.q),

    // to register interface (read)
    .qs     (ctrl_program_init_qs)
  );


  //   F[write_error]: 5:5
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_ctrl_write_error (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (1'b0),
    .wd     ('0),

    // from internal hardware
    .de     (hw2reg.ctrl.write_error.de),
    .d      (hw2reg.ctrl.write_error.d),

    // to internal hardware
    .qe     (reg2hw.ctrl.write_error.qe),
    .q      (reg2hw.ctrl.write_error.q),

    // to register interface (read)
    .qs     (ctrl_write_error_qs)
  );


  //   F[reserved]: 31:6
  prim_subreg #(
    .DW      (26),
    .SWACCESS("W1C"),
    .RESVAL  (26'h0)
  ) u_ctrl_reserved (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (ctrl_we),
    .wd     (ctrl_reserved_wd),

    // from internal hardware
    .de     (hw2reg.ctrl.reserved.de),
    .d      (hw2reg.ctrl.reserved.d),

    // to internal hardware
    .qe     (reg2hw.ctrl.reserved.qe),
    .q      (reg2hw.ctrl.reserved.q),

    // to register interface (read)
    .qs     ()
  );


  // R[addr]: V(False)

  //   F[rw_address]: 22:0
  prim_subreg #(
    .DW      (23),
    .SWACCESS("RW"),
    .RESVAL  (23'h0)
  ) u_addr_rw_address (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (addr_we),
    .wd     (addr_rw_address_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.addr.rw_address.q),

    // to register interface (read)
    .qs     (addr_rw_address_qs)
  );


  //   F[reserved]: 31:23
  prim_subreg #(
    .DW      (9),
    .SWACCESS("W1C"),
    .RESVAL  (9'h0)
  ) u_addr_reserved (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (addr_we),
    .wd     (addr_reserved_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.addr.reserved.q),

    // to register interface (read)
    .qs     ()
  );


  // R[data]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RW"),
    .RESVAL  (32'h0)
  ) u_data (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),

    // from register interface
    .we     (data_we),
    .wd     (data_wd),

    // from internal hardware
    .de     (hw2reg.data.de),
    .d      (hw2reg.data.d),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.data.q),

    // to register interface (read)
    .qs     (data_qs)
  );


  logic [2:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[0] = (reg_addr == FLASH_CTRL_CTRL_OFFSET);
    addr_hit[1] = (reg_addr == FLASH_CTRL_ADDR_OFFSET);
    addr_hit[2] = (reg_addr == FLASH_CTRL_DATA_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0 ;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = (reg_we &
              ((addr_hit[0] & (|(FLASH_CTRL_PERMIT[0] & ~reg_be))) |
               (addr_hit[1] & (|(FLASH_CTRL_PERMIT[1] & ~reg_be))) |
               (addr_hit[2] & (|(FLASH_CTRL_PERMIT[2] & ~reg_be)))));
  end

  assign ctrl_we = addr_hit[0] & reg_we & !reg_error;

  assign ctrl_start_wd = reg_wdata[0];

  assign ctrl_op_mode_wd = reg_wdata[2:1];

  assign ctrl_sw_ctrl_wd = reg_wdata[3];

  assign ctrl_program_init_wd = reg_wdata[4];

  assign ctrl_reserved_wd = reg_wdata[31:6];
  assign addr_we = addr_hit[1] & reg_we & !reg_error;

  assign addr_rw_address_wd = reg_wdata[22:0];

  assign addr_reserved_wd = reg_wdata[31:23];
  assign data_we = addr_hit[2] & reg_we & !reg_error;

  assign data_wd = reg_wdata[31:0];

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[0] = ctrl_start_qs;
        reg_rdata_next[2:1] = ctrl_op_mode_qs;
        reg_rdata_next[3] = ctrl_sw_ctrl_qs;
        reg_rdata_next[4] = ctrl_program_init_qs;
        reg_rdata_next[5] = ctrl_write_error_qs;
        reg_rdata_next[31:6] = '0;
      end

      addr_hit[1]: begin
        reg_rdata_next[22:0] = addr_rw_address_qs;
        reg_rdata_next[31:23] = '0;
      end

      addr_hit[2]: begin
        reg_rdata_next[31:0] = data_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Unused signal tieoff

  // wdata / byte enable are not always fully used
  // add a blanket unused statement to handle lint waivers
  logic unused_wdata;
  logic unused_be;
  assign unused_wdata = ^reg_wdata;
  assign unused_be = ^reg_be;

endmodule
