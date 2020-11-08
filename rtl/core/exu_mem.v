 /*                                                                      
 Copyright 2020 Blue Liang, liangkangnan@163.com
                                                                         
 Licensed under the Apache License, Version 2.0 (the "License");         
 you may not use this file except in compliance with the License.        
 You may obtain a copy of the License at                                 
                                                                         
     http://www.apache.org/licenses/LICENSE-2.0                          
                                                                         
 Unless required by applicable law or agreed to in writing, software    
 distributed under the License is distributed on an "AS IS" BASIS,       
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and     
 limitations under the License.                                          
 */

`include "defines.v"


module exu_mem(

    input wire clk,
    input wire rst_n,

    input req_mem_i,
    input wire[31:0] mem_addr_i,
    input wire[31:0] mem_rs2_data_i,
    input wire[31:0] mem_rdata_i,
    input wire mem_req_ready_i,
    input wire mem_rsp_valid_i,
    input wire mem_op_lb_i,
    input wire mem_op_lh_i,
    input wire mem_op_lw_i,
    input wire mem_op_lbu_i,
    input wire mem_op_lhu_i,
    input wire mem_op_sb_i,
    input wire mem_op_sh_i,
    input wire mem_op_sw_i,

    output wire mem_access_misaligned_o,
    output wire mem_stall_o,
    output wire[31:0] mem_addr_o,
    output wire[31:0] mem_wdata_o,
    output wire mem_reg_we_o,
    output wire mem_mem_we_o,
    output wire[3:0] mem_sel_o,
    output wire mem_req_valid_o,
    output wire mem_rsp_ready_o

    );


    wire[1:0] mem_addr_index = mem_addr_i[1:0];
    wire mem_addr_index00 = (mem_addr_index == 2'b00);
    wire mem_addr_index01 = (mem_addr_index == 2'b01);
    wire mem_addr_index10 = (mem_addr_index == 2'b10);
    wire mem_addr_index11 = (mem_addr_index == 2'b11);

    assign mem_sel_o[0] = mem_addr_index00 | mem_op_sw_i;
    assign mem_sel_o[1] = mem_addr_index01 | (mem_op_sh_i & mem_addr_index00) | mem_op_sw_i;
    assign mem_sel_o[2] = mem_addr_index10 | mem_op_sw_i;
    assign mem_sel_o[3] = mem_addr_index11 | (mem_op_sh_i & mem_addr_index10) | mem_op_sw_i;

    // store操作
    wire[31:0] sb_res = ({32{mem_addr_index00}} & {24'h0, mem_rs2_data_i[7:0]}) |
                        ({32{mem_addr_index01}} & {16'h0, mem_rs2_data_i[7:0], 8'h0}) |
                        ({32{mem_addr_index10}} & {8'h0, mem_rs2_data_i[7:0], 16'h0}) |
                        ({32{mem_addr_index11}} & {mem_rs2_data_i[7:0], 24'h0});

    wire[31:0] sh_res = ({32{mem_addr_index00}} & {16'h0, mem_rs2_data_i[15:0]}) |
                        ({32{mem_addr_index10}} & {mem_rs2_data_i[15:0], 16'h0});

    wire[31:0] sw_res = mem_rs2_data_i;

    // load操作
    wire[31:0] lb_res = ({32{mem_addr_index00}} & {{24{mem_op_lb_i & mem_rdata_i[7]}}, mem_rdata_i[7:0]}) |
                        ({32{mem_addr_index01}} & {{24{mem_op_lb_i & mem_rdata_i[15]}}, mem_rdata_i[15:8]}) |
                        ({32{mem_addr_index10}} & {{24{mem_op_lb_i & mem_rdata_i[23]}}, mem_rdata_i[23:16]}) |
                        ({32{mem_addr_index11}} & {{24{mem_op_lb_i & mem_rdata_i[31]}}, mem_rdata_i[31:24]});

    wire[31:0] lh_res = ({32{mem_addr_index00}} & {{24{mem_op_lh_i & mem_rdata_i[15]}}, mem_rdata_i[15:0]}) |
                        ({32{mem_addr_index10}} & {{24{mem_op_lh_i & mem_rdata_i[31]}}, mem_rdata_i[31:16]});

    wire[31:0] lw_res = mem_rdata_i;

    // 写回内存或者寄存器的数据
    assign mem_wdata_o = ({32{mem_op_sb_i}} & sb_res) |
                         ({32{mem_op_sh_i}} & sh_res) |
                         ({32{mem_op_sw_i}} & sw_res) |
                         ({32{mem_op_lb_i | mem_op_lbu_i}} & lb_res) |
                         ({32{mem_op_lh_i | mem_op_lhu_i}} & lh_res) |
                         ({32{mem_op_lw_i}} & lw_res);


    wire mem_req_hsked = (mem_req_valid_o & mem_req_ready_i);
    wire mem_rsp_hsked = (mem_rsp_valid_i & mem_rsp_ready_o);

    reg mem_rsp_hsked_r;

    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mem_rsp_hsked_r <= 1'b0;
        end else begin
            mem_rsp_hsked_r <= mem_rsp_hsked & (~mem_rsp_hsked_r);
        end
    end

    assign mem_rsp_ready_o = 1'b1;

    // 请求访问总线
    assign mem_req_valid_o = req_mem_i;
    // 暂停流水线
    assign mem_stall_o = req_mem_i & (~mem_rsp_hsked_r);
    // 读、写内存地址
    assign mem_addr_o = mem_addr_i;

    // 写寄存器使能，收到ack时数据才有效
    assign mem_reg_we_o = (mem_op_lb_i | mem_op_lh_i | mem_op_lw_i | mem_op_lbu_i | mem_op_lhu_i) & mem_rsp_hsked_r;

    // 写内存使能
    assign mem_mem_we_o = (mem_op_sb_i | mem_op_sh_i | mem_op_sw_i) & mem_rsp_hsked_r;

    assign mem_access_misaligned_o = (mem_op_sw_i | mem_op_lw_i)? (mem_addr_i[0] | mem_addr_i[1]):
                                     (mem_op_sh_i | mem_op_lh_i | mem_op_lhu_i)? mem_addr_i[0]:
                                     0;

endmodule
