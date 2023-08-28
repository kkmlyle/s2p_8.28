// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="s2p_s2p,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=0.502143,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=5,HLS_SYN_LUT=206,HLS_VERSION=2022_2}" *)

module s2p (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_TVALID,
        output1_TREADY,
        output2_TREADY,
        output3_TREADY,
        output4_TREADY,
        output5_TREADY,
        output6_TREADY,
        en_qpsk,
        en_qam16,
        en_qam64,
        input_r_TDATA,
        input_r_TREADY,
        output1_TDATA,
        output1_TVALID,
        output2_TDATA,
        output2_TVALID,
        output3_TDATA,
        output3_TVALID,
        output4_TDATA,
        output4_TVALID,
        output5_TDATA,
        output5_TVALID,
        output6_TDATA,
        output6_TVALID,
        out_enqpsk,
        out_enqam16,
        out_enqam64
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   input_r_TVALID;
input   output1_TREADY;
input   output2_TREADY;
input   output3_TREADY;
input   output4_TREADY;
input   output5_TREADY;
input   output6_TREADY;
input   en_qpsk;
input   en_qam16;
input   en_qam64;
input  [7:0] input_r_TDATA;
output   input_r_TREADY;
output  [7:0] output1_TDATA;
output   output1_TVALID;
output  [7:0] output2_TDATA;
output   output2_TVALID;
output  [7:0] output3_TDATA;
output   output3_TVALID;
output  [7:0] output4_TDATA;
output   output4_TVALID;
output  [7:0] output5_TDATA;
output   output5_TVALID;
output  [7:0] output6_TDATA;
output   output6_TVALID;
output   out_enqpsk;
output   out_enqam16;
output   out_enqam64;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_enqpsk;
reg out_enqam16;
reg out_enqam64;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] en_qpsk_read_read_fu_88_p2;
wire   [0:0] en_qam16_read_read_fu_82_p2;
wire   [0:0] en_qam64_read_read_fu_76_p2;
reg    ap_predicate_op37_read_state1;
reg    ap_predicate_op45_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state1_io;
wire    regslice_both_output1_U_apdone_blk;
wire    regslice_both_output2_U_apdone_blk;
wire    regslice_both_output3_U_apdone_blk;
wire    regslice_both_output4_U_apdone_blk;
wire    regslice_both_output5_U_apdone_blk;
wire    regslice_both_output6_U_apdone_blk;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg    ap_block_pp0_stage0_subdone;
reg    input_r_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    output1_TDATA_blk_n;
reg    output2_TDATA_blk_n;
reg    output3_TDATA_blk_n;
reg    output4_TDATA_blk_n;
reg    output5_TDATA_blk_n;
reg    output6_TDATA_blk_n;
reg   [0:0] en_qam64_read_reg_353;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] en_qam16_read_reg_357;
reg   [0:0] en_qpsk_read_reg_361;
reg   [0:0] ap_phi_mux_temp6_phi_fu_172_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_temp6_reg_169;
reg   [0:0] ap_phi_mux_temp5_phi_fu_188_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_temp5_reg_185;
reg   [0:0] ap_phi_mux_temp4_phi_fu_204_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_temp4_reg_201;
reg   [0:0] ap_phi_mux_temp3_phi_fu_219_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_temp3_reg_216;
reg   [0:0] ap_phi_mux_temp2_phi_fu_234_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_temp2_reg_231;
reg   [0:0] ap_phi_mux_temp1_phi_fu_248_p8;
wire   [0:0] trunc_ln186_fu_318_p1;
wire   [0:0] ap_phi_reg_pp0_iter0_temp1_reg_245;
wire   [0:0] trunc_ln186_1_fu_313_p1;
wire   [0:0] trunc_ln186_2_fu_290_p1;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_input_r_U_apdone_blk;
wire   [7:0] input_r_TDATA_int_regslice;
wire    input_r_TVALID_int_regslice;
reg    input_r_TREADY_int_regslice;
wire    regslice_both_input_r_U_ack_in;
wire   [7:0] output1_TDATA_int_regslice;
reg    output1_TVALID_int_regslice;
wire    output1_TREADY_int_regslice;
wire    regslice_both_output1_U_vld_out;
wire   [7:0] output2_TDATA_int_regslice;
reg    output2_TVALID_int_regslice;
wire    output2_TREADY_int_regslice;
wire    regslice_both_output2_U_vld_out;
wire   [7:0] output3_TDATA_int_regslice;
reg    output3_TVALID_int_regslice;
wire    output3_TREADY_int_regslice;
wire    regslice_both_output3_U_vld_out;
wire   [7:0] output4_TDATA_int_regslice;
reg    output4_TVALID_int_regslice;
wire    output4_TREADY_int_regslice;
wire    regslice_both_output4_U_vld_out;
wire   [7:0] output5_TDATA_int_regslice;
reg    output5_TVALID_int_regslice;
wire    output5_TREADY_int_regslice;
wire    regslice_both_output5_U_vld_out;
wire   [7:0] output6_TDATA_int_regslice;
reg    output6_TVALID_int_regslice;
wire    output6_TREADY_int_regslice;
wire    regslice_both_output6_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_input_r_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(input_r_TDATA),
    .vld_in(input_r_TVALID),
    .ack_in(regslice_both_input_r_U_ack_in),
    .data_out(input_r_TDATA_int_regslice),
    .vld_out(input_r_TVALID_int_regslice),
    .ack_out(input_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_input_r_U_apdone_blk)
);

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_output1_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output1_TDATA_int_regslice),
    .vld_in(output1_TVALID_int_regslice),
    .ack_in(output1_TREADY_int_regslice),
    .data_out(output1_TDATA),
    .vld_out(regslice_both_output1_U_vld_out),
    .ack_out(output1_TREADY),
    .apdone_blk(regslice_both_output1_U_apdone_blk)
);

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_output2_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output2_TDATA_int_regslice),
    .vld_in(output2_TVALID_int_regslice),
    .ack_in(output2_TREADY_int_regslice),
    .data_out(output2_TDATA),
    .vld_out(regslice_both_output2_U_vld_out),
    .ack_out(output2_TREADY),
    .apdone_blk(regslice_both_output2_U_apdone_blk)
);

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_output3_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output3_TDATA_int_regslice),
    .vld_in(output3_TVALID_int_regslice),
    .ack_in(output3_TREADY_int_regslice),
    .data_out(output3_TDATA),
    .vld_out(regslice_both_output3_U_vld_out),
    .ack_out(output3_TREADY),
    .apdone_blk(regslice_both_output3_U_apdone_blk)
);

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_output4_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output4_TDATA_int_regslice),
    .vld_in(output4_TVALID_int_regslice),
    .ack_in(output4_TREADY_int_regslice),
    .data_out(output4_TDATA),
    .vld_out(regslice_both_output4_U_vld_out),
    .ack_out(output4_TREADY),
    .apdone_blk(regslice_both_output4_U_apdone_blk)
);

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_output5_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output5_TDATA_int_regslice),
    .vld_in(output5_TVALID_int_regslice),
    .ack_in(output5_TREADY_int_regslice),
    .data_out(output5_TDATA),
    .vld_out(regslice_both_output5_U_vld_out),
    .ack_out(output5_TREADY),
    .apdone_blk(regslice_both_output5_U_apdone_blk)
);

s2p_regslice_both #(
    .DataWidth( 8 ))
regslice_both_output6_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output6_TDATA_int_regslice),
    .vld_in(output6_TVALID_int_regslice),
    .ack_in(output6_TREADY_int_regslice),
    .data_out(output6_TDATA),
    .vld_out(regslice_both_output6_U_vld_out),
    .ack_out(output6_TREADY),
    .apdone_blk(regslice_both_output6_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        en_qam16_read_reg_357 <= en_qam16;
        en_qam64_read_reg_353 <= en_qam64;
        en_qpsk_read_reg_361 <= en_qpsk;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0))) begin
        ap_phi_mux_temp1_phi_fu_248_p8 = trunc_ln186_2_fu_290_p1;
    end else if (((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0))) begin
        ap_phi_mux_temp1_phi_fu_248_p8 = trunc_ln186_1_fu_313_p1;
    end else if ((en_qpsk_read_read_fu_88_p2 == 1'd1)) begin
        ap_phi_mux_temp1_phi_fu_248_p8 = trunc_ln186_fu_318_p1;
    end else begin
        ap_phi_mux_temp1_phi_fu_248_p8 = ap_phi_reg_pp0_iter0_temp1_reg_245;
    end
end

always @ (*) begin
    if (((en_qpsk_read_read_fu_88_p2 == 1'd1) | ((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0)) | ((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0)))) begin
        ap_phi_mux_temp2_phi_fu_234_p8 = input_r_TDATA_int_regslice[32'd1];
    end else begin
        ap_phi_mux_temp2_phi_fu_234_p8 = ap_phi_reg_pp0_iter0_temp2_reg_231;
    end
end

always @ (*) begin
    if ((((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0)) | ((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0)))) begin
        ap_phi_mux_temp3_phi_fu_219_p8 = input_r_TDATA_int_regslice[32'd2];
    end else if ((en_qpsk_read_read_fu_88_p2 == 1'd1)) begin
        ap_phi_mux_temp3_phi_fu_219_p8 = 1'd0;
    end else begin
        ap_phi_mux_temp3_phi_fu_219_p8 = ap_phi_reg_pp0_iter0_temp3_reg_216;
    end
end

always @ (*) begin
    if ((((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0)) | ((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0)))) begin
        ap_phi_mux_temp4_phi_fu_204_p8 = input_r_TDATA_int_regslice[32'd3];
    end else if ((en_qpsk_read_read_fu_88_p2 == 1'd1)) begin
        ap_phi_mux_temp4_phi_fu_204_p8 = 1'd0;
    end else begin
        ap_phi_mux_temp4_phi_fu_204_p8 = ap_phi_reg_pp0_iter0_temp4_reg_201;
    end
end

always @ (*) begin
    if (((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0))) begin
        ap_phi_mux_temp5_phi_fu_188_p8 = input_r_TDATA_int_regslice[32'd4];
    end else if (((en_qpsk_read_read_fu_88_p2 == 1'd1) | ((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0)))) begin
        ap_phi_mux_temp5_phi_fu_188_p8 = 1'd0;
    end else begin
        ap_phi_mux_temp5_phi_fu_188_p8 = ap_phi_reg_pp0_iter0_temp5_reg_185;
    end
end

always @ (*) begin
    if (((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0))) begin
        ap_phi_mux_temp6_phi_fu_172_p8 = input_r_TDATA_int_regslice[32'd5];
    end else if (((en_qpsk_read_read_fu_88_p2 == 1'd1) | ((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0)))) begin
        ap_phi_mux_temp6_phi_fu_172_p8 = 1'd0;
    end else begin
        ap_phi_mux_temp6_phi_fu_172_p8 = ap_phi_reg_pp0_iter0_temp6_reg_169;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((en_qpsk_read_read_fu_88_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op45_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        input_r_TDATA_blk_n = input_r_TVALID_int_regslice;
    end else begin
        input_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((en_qpsk_read_read_fu_88_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op45_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op37_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        input_r_TREADY_int_regslice = 1'b1;
    end else begin
        input_r_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd0) & (en_qam16_read_reg_357 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        out_enqam16 = 1'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd0) & (en_qam16_read_reg_357 == 1'd0) & (en_qam64_read_reg_353 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
        out_enqam16 = 1'd0;
    end else begin
        out_enqam16 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd0) & (en_qam16_read_reg_357 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
        out_enqam64 = 1'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd0) & (en_qam16_read_reg_357 == 1'd0) & (en_qam64_read_reg_353 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        out_enqam64 = 1'd1;
    end else begin
        out_enqam64 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        out_enqpsk = 1'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd0) & (en_qam16_read_reg_357 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (en_qpsk_read_reg_361 == 1'd0) & (en_qam16_read_reg_357 == 1'd0) & (en_qam64_read_reg_353 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
        out_enqpsk = 1'd0;
    end else begin
        out_enqpsk = 'bx;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        output1_TDATA_blk_n = output1_TREADY_int_regslice;
    end else begin
        output1_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output1_TVALID_int_regslice = 1'b1;
    end else begin
        output1_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        output2_TDATA_blk_n = output2_TREADY_int_regslice;
    end else begin
        output2_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output2_TVALID_int_regslice = 1'b1;
    end else begin
        output2_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        output3_TDATA_blk_n = output3_TREADY_int_regslice;
    end else begin
        output3_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output3_TVALID_int_regslice = 1'b1;
    end else begin
        output3_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        output4_TDATA_blk_n = output4_TREADY_int_regslice;
    end else begin
        output4_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output4_TVALID_int_regslice = 1'b1;
    end else begin
        output4_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        output5_TDATA_blk_n = output5_TREADY_int_regslice;
    end else begin
        output5_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output5_TVALID_int_regslice = 1'b1;
    end else begin
        output5_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        output6_TDATA_blk_n = output6_TREADY_int_regslice;
    end else begin
        output6_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output6_TVALID_int_regslice = 1'b1;
    end else begin
        output6_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_start == 1'b1) & ((output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0) | ((en_qpsk_read_read_fu_88_p2 == 1'd1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op45_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_output6_U_apdone_blk == 1'b1) | (regslice_both_output5_U_apdone_blk == 1'b1) | (regslice_both_output4_U_apdone_blk == 1'b1) | (regslice_both_output3_U_apdone_blk == 1'b1) | (regslice_both_output2_U_apdone_blk == 1'b1) | (regslice_both_output1_U_apdone_blk == 1'b1) | (output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_start == 1'b1) & ((output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state1_io) | ((en_qpsk_read_read_fu_88_p2 == 1'd1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op45_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_output6_U_apdone_blk == 1'b1) | (regslice_both_output5_U_apdone_blk == 1'b1) | (regslice_both_output4_U_apdone_blk == 1'b1) | (regslice_both_output3_U_apdone_blk == 1'b1) | (regslice_both_output2_U_apdone_blk == 1'b1) | (regslice_both_output1_U_apdone_blk == 1'b1) | (output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state2_io))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_start == 1'b1) & ((output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state1_io) | ((en_qpsk_read_read_fu_88_p2 == 1'd1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op45_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_output6_U_apdone_blk == 1'b1) | (regslice_both_output5_U_apdone_blk == 1'b1) | (regslice_both_output4_U_apdone_blk == 1'b1) | (regslice_both_output3_U_apdone_blk == 1'b1) | (regslice_both_output2_U_apdone_blk == 1'b1) | (regslice_both_output1_U_apdone_blk == 1'b1) | (output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state2_io))));
end

always @ (*) begin
    ap_block_state1_io = ((output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0) | ((en_qpsk_read_read_fu_88_p2 == 1'd1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op45_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (input_r_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((regslice_both_output6_U_apdone_blk == 1'b1) | (regslice_both_output5_U_apdone_blk == 1'b1) | (regslice_both_output4_U_apdone_blk == 1'b1) | (regslice_both_output3_U_apdone_blk == 1'b1) | (regslice_both_output2_U_apdone_blk == 1'b1) | (regslice_both_output1_U_apdone_blk == 1'b1) | (output6_TREADY_int_regslice == 1'b0) | (output5_TREADY_int_regslice == 1'b0) | (output4_TREADY_int_regslice == 1'b0) | (output3_TREADY_int_regslice == 1'b0) | (output2_TREADY_int_regslice == 1'b0) | (output1_TREADY_int_regslice == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_temp1_reg_245 = 'bx;

assign ap_phi_reg_pp0_iter0_temp2_reg_231 = 'bx;

assign ap_phi_reg_pp0_iter0_temp3_reg_216 = 'bx;

assign ap_phi_reg_pp0_iter0_temp4_reg_201 = 'bx;

assign ap_phi_reg_pp0_iter0_temp5_reg_185 = 'bx;

assign ap_phi_reg_pp0_iter0_temp6_reg_169 = 'bx;

always @ (*) begin
    ap_predicate_op37_read_state1 = ((en_qam64_read_read_fu_76_p2 == 1'd1) & (en_qam16_read_read_fu_82_p2 == 1'd0) & (en_qpsk_read_read_fu_88_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op45_read_state1 = ((en_qam16_read_read_fu_82_p2 == 1'd1) & (en_qpsk_read_read_fu_88_p2 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign en_qam16_read_read_fu_82_p2 = en_qam16;

assign en_qam64_read_read_fu_76_p2 = en_qam64;

assign en_qpsk_read_read_fu_88_p2 = en_qpsk;

assign input_r_TREADY = regslice_both_input_r_U_ack_in;

assign output1_TDATA_int_regslice = ap_phi_mux_temp1_phi_fu_248_p8;

assign output1_TVALID = regslice_both_output1_U_vld_out;

assign output2_TDATA_int_regslice = ap_phi_mux_temp2_phi_fu_234_p8;

assign output2_TVALID = regslice_both_output2_U_vld_out;

assign output3_TDATA_int_regslice = ap_phi_mux_temp3_phi_fu_219_p8;

assign output3_TVALID = regslice_both_output3_U_vld_out;

assign output4_TDATA_int_regslice = ap_phi_mux_temp4_phi_fu_204_p8;

assign output4_TVALID = regslice_both_output4_U_vld_out;

assign output5_TDATA_int_regslice = ap_phi_mux_temp5_phi_fu_188_p8;

assign output5_TVALID = regslice_both_output5_U_vld_out;

assign output6_TDATA_int_regslice = ap_phi_mux_temp6_phi_fu_172_p8;

assign output6_TVALID = regslice_both_output6_U_vld_out;

assign trunc_ln186_1_fu_313_p1 = input_r_TDATA_int_regslice[0:0];

assign trunc_ln186_2_fu_290_p1 = input_r_TDATA_int_regslice[0:0];

assign trunc_ln186_fu_318_p1 = input_r_TDATA_int_regslice[0:0];

endmodule //s2p
