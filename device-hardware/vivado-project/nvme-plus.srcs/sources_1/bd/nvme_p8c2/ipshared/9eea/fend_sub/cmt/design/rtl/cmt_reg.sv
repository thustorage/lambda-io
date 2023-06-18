/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for “academic research” and “non-commercial”
 * purposes. Here, OpenExpress means the hardware source code, documents, etc.
 * that you can download from a link given by https://openexpress.camelab.org.
 * One of the main purposes of sharing OpenExpress's hardware IP cores is to be
 * an educational reference point for academic researchers, and the author
 * doesn't want to implicitly and/or explicitly have an impact on industry
 * business and complicated situation behind them.
 *
 * The author thus does allow downloading OpenExpress "only" from the designated
 *  website, and permit to examine and do any activities on OpenExpress (such as
 *  use/modify) for "only the one" who is successfully verified and agrees on
 * this End User License Agreement. OpenExpress is protected by one or more
 * patents. Note that all use cases of OpenExpress without registration at
 *  https://openexpress.camelab.org will be in violation of the law.
 *
 * The academic users (permitted) to download OpenExpress require understanding
 * that any form of non-permitted distribution, including a variation and
 * reproduction of the original OpenExpress version (you downloaded), is not
 * allowed. If a user left a university program, any local copy of OpenExpress
 * should be removed. OpenExpress is provided as is without warranty of any
 * kind, express, or implied.  In no event shall the author be liable for any
 * claim, damages or other liability whether in an action of contract, tort or
 * other liability, otherwise, arising from, out of or in connection with
 * OpenExpress or the use or other dealings with OpenExpress.
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of OpenExpress.
 */

`include "cmt_reg.vh"

module cmt_reg #(
	parameter ADDR_WIDTH             = 32,
	parameter DATA_WIDTH             = 32,
	parameter CQE_FIFO_HW_ADDR_WIDTH = 8 ,
	parameter CQE_FIFO_FW_ADDR_WIDTH = 2
) (
	input  logic                            i_sram_ce                         ,
	input  logic                            i_sram_we                         ,
	input  logic [          ADDR_WIDTH-1:0] i_sram_addr                       ,
	input  logic [          DATA_WIDTH-1:0] i_sram_wdata                      ,
	input  logic [        DATA_WIDTH/8-1:0] i_sram_wstrb                      ,
	output logic [          DATA_WIDTH-1:0] o_sram_rdata                      ,
	input  logic                            i_err_push_req                    ,
	output logic                            o_err_push_ack                    ,
	output logic                            o_err_exist                       ,
	output logic                            o_cmt_sync_rst                    ,
	output logic                            o_cmt_stop                        ,
	output logic [                  64-1:0] o_ob_base                         ,
	output logic                            o_timer_sync_rst                  ,
	input  logic [                  16-1:0] i_timer_cur_mod_value             ,
	output logic [                  16-1:0] o_timer_mod_value                 ,
	output logic [                   4-1:0] o_timer_pre_scale                 ,
	output logic                            o_timer_pre_scale_en              ,
	output logic                            o_delay_disable                   ,
	/////////////////////////////////////////////////////////////////////
	// debugging information
	/////////////////////////////////////////////////////////////////////
	input  cmt_err_data_t                   i_err_data                        ,
	// input  nvme_completion_format_t              i_cqe_fw_data             ,
	input  logic [                   5-1:0] i_fsm                             ,
	input  logic [                  32-1:0] i_last_req_ctx_waddr              ,
	input  logic [                  32-1:0] i_last_req_ctx_raddr              ,
	input  logic [                  48-1:0] i_last_req_cqe_waddr              ,
	input  logic [                 128-1:0] i_last_req_cqe_wdata              ,
	input  logic [                  48-1:0] i_last_req_int_waddr              ,
	input  logic [                 128-1:0] i_last_req_int_wdata              ,
	input  logic [                  16-1:0] i_last_req_int_wstrb              ,
	input  logic [CQE_FIFO_FW_ADDR_WIDTH:0] i_cqe_fw_q_level                  ,
	input  logic [CQE_FIFO_HW_ADDR_WIDTH:0] i_cqe_hw_q_level                  ,
	input  logic [                  64-1:0] i_sq_cntxt_qw0                    ,
	input  logic [                 128-1:0] i_cq_cntxt                        ,
	input  logic [                  16-1:0] i_cqe_sent_cnt                    ,
	input  logic [                  16-1:0] i_int_sent_cnt                    ,
	output logic [                   2-1:0] o_axis_switch_req_suppress        ,
	input  logic [                   2-1:0] i_axis_switch_decode_err          ,
	input  logic                            i_axis_incoming_cqe_tvalid        ,
	input  logic                            i_axis_incoming_cqe_tready        ,
	input  logic                            i_axis_incoming_cqe_from_fw_tvalid,
	input  logic                            i_axis_incoming_cqe_from_fw_tready,
	input  logic [                   8-1:0] i_rd_ost_cnt_obnd                 ,
	input  logic [                   8-1:0] i_wr_ost_cnt_obnd                 ,
	input  logic [                   8-1:0] i_rd_ost_cnt_ctx                  ,
	input  logic [                   8-1:0] i_wr_ost_cnt_ctx                  ,
	input  logic                            i_axi_obnd_awvalid                ,
	input  logic                            i_axi_obnd_awready                ,
	input  logic                            i_axi_obnd_bvalid                 ,
	input  logic                            i_axi_obnd_bready                 ,
	input  logic                            i_axi_obnd_arvalid                ,
	input  logic                            i_axi_obnd_arready                ,
	input  logic                            i_axi_obnd_rlast                  ,
	input  logic                            i_axi_obnd_rvalid                 ,
	input  logic                            i_axi_obnd_rready                 ,
	input  logic                            i_axi_ctx_awvalid                 ,
	input  logic                            i_axi_ctx_awready                 ,
	input  logic                            i_axi_ctx_bvalid                  ,
	input  logic                            i_axi_ctx_bready                  ,
	input  logic                            i_axi_ctx_arvalid                 ,
	input  logic                            i_axi_ctx_arready                 ,
	input  logic                            i_axi_ctx_rlast                   ,
	input  logic                            i_axi_ctx_rvalid                  ,
	input  logic                            i_axi_ctx_rready                  ,
	input  logic                            i_clk                             ,
	input  logic                            i_rstn
);

logic [ADDR_WIDTH-2-1:0] reg_addr                  ;
logic [  DATA_WIDTH-1:0] r_sram_rdata              ;
logic                    r_cmt_sync_rst            ;
logic                    r_cmt_stop                ;
logic                    r_err_exist               ;
logic [          64-1:0] r_ob_base                 ;
logic                    r_err_mask                ;
logic [          32-1:0] r_err_data                ;
logic [           2-1:0] r_axis_switch_req_suppress;

always_comb reg_addr = i_sram_addr[2+:(ADDR_WIDTH-2)];

// write regs
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_cmt_stop                 <= 1'b0;
		r_cmt_sync_rst             <= 1'b0;
		r_ob_base                  <= 64'h0000_0010_0000_0000;
		r_err_mask                 <= 1'b1;
		r_axis_switch_req_suppress <= 2'd0;
		o_timer_sync_rst           <= 1'b0;
		o_timer_mod_value          <= 16'b0;
		o_timer_pre_scale          <= 4'b0;
		o_timer_pre_scale_en       <= 4'b0;
		o_delay_disable			   <= 1'b1;
	end
	else if(i_sram_ce & i_sram_we) begin
		if(reg_addr==`CMT_REG_SYNC_RST)
			r_cmt_sync_rst <= i_sram_wdata[0];
		else if(reg_addr==`CMT_REG_CMT_STOP)
			r_cmt_stop <= i_sram_wdata[0];
		else if(reg_addr==`CMT_REG_OB_BASE_LOW)
			r_ob_base[0+:32] <= i_sram_wdata;
		else if(reg_addr==`CMT_REG_OB_BASE_HIGH)
			r_ob_base[32+:32] <= i_sram_wdata;
		else if(reg_addr==`CMT_REG_ERR_MASK)
			r_err_mask <= i_sram_wdata[0];
		else if(reg_addr==`CMT_REG_AXIS_SWITHCH_INFO)
			r_axis_switch_req_suppress <= i_sram_wdata[1:0];
		else if(reg_addr==`CMT_REG_TIMER_DELAY_DISABLE)
			o_delay_disable <= i_sram_wdata[0];
		else if(reg_addr==`CMT_REG_TIMER_SYNC_RST)
			o_timer_sync_rst <= i_sram_wdata[0];
		else if(reg_addr==`CMT_REG_TIMER_MOD_VAL)
			o_timer_mod_value<= i_sram_wdata[0+:16];
		else if(reg_addr==`CMT_REG_TIMER_PRE_SCALE)
			{o_timer_pre_scale_en, o_timer_pre_scale} <= {i_sram_wdata[31], i_sram_wdata[0+:4]};
	end
end


// read regs
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_sram_rdata <= {DATA_WIDTH{1'b0}};
	end
	else if(i_sram_ce & ~i_sram_we) begin
		case(reg_addr)
			`CMT_REG_SYNC_RST               :	r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_cmt_sync_rst};
			`CMT_REG_CMT_STOP               :	r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_cmt_stop};
			`CMT_REG_OB_BASE_LOW            :	r_sram_rdata <= r_ob_base[0+:32];
			`CMT_REG_OB_BASE_HIGH           :	r_sram_rdata <= r_ob_base[32+:32];

			`CMT_REG_LAST_REQ_CTX_WADDR     :	r_sram_rdata <= i_last_req_ctx_waddr;
			`CMT_REG_LAST_REQ_CTX_RADDR     :	r_sram_rdata <= i_last_req_ctx_raddr;

			`CMT_REG_CQE_HW_Q_LEVEL         :	r_sram_rdata <= {{(DATA_WIDTH-CQE_FIFO_HW_ADDR_WIDTH-1){1'b0}}, i_cqe_hw_q_level};
			`CMT_REG_CQE_FW_Q_LEVEL         :	r_sram_rdata <= {{(DATA_WIDTH-CQE_FIFO_FW_ADDR_WIDTH-1){1'b0}}, i_cqe_fw_q_level};
			`CMT_REG_READ_SQ_CTX_QW0_0      :	r_sram_rdata <= i_sq_cntxt_qw0[0+:32];
			`CMT_REG_READ_SQ_CTX_QW0_1      :	r_sram_rdata <= i_sq_cntxt_qw0[32+:32];
			`CMT_REG_READ_CQ_CTX_0          :	r_sram_rdata <= i_cq_cntxt[32*0+:32];
			`CMT_REG_READ_CQ_CTX_1          :	r_sram_rdata <= i_cq_cntxt[32*1+:32];
			`CMT_REG_READ_CQ_CTX_2          :	r_sram_rdata <= i_cq_cntxt[32*2+:32];
			`CMT_REG_READ_CQ_CTX_3          :	r_sram_rdata <= i_cq_cntxt[32*3+:32];
			`CMT_REG_FSM                    :	r_sram_rdata <= {{(DATA_WIDTH-5){1'b0}}, i_fsm};

			`CMT_REG_LAST_REQ_CQE_WADDR_LOW :	r_sram_rdata <= i_last_req_cqe_waddr[0+:32];
			`CMT_REG_LAST_REQ_CQE_WADDR_HIGH:	r_sram_rdata <= {16'd0, i_last_req_cqe_waddr[32+:16]};
			`CMT_REG_LAST_REQ_CQE_WDATA_0   :	r_sram_rdata <= i_last_req_cqe_wdata[0*32+:32];
			`CMT_REG_LAST_REQ_CQE_WDATA_1   :	r_sram_rdata <= i_last_req_cqe_wdata[1*32+:32];
			`CMT_REG_LAST_REQ_CQE_WDATA_2   :	r_sram_rdata <= i_last_req_cqe_wdata[2*32+:32];
			`CMT_REG_LAST_REQ_CQE_WDATA_3   :	r_sram_rdata <= i_last_req_cqe_wdata[3*32+:32];

			`CMT_REG_LAST_REQ_INT_WADDR_LOW :	r_sram_rdata <= i_last_req_int_waddr[0+:32];
			`CMT_REG_LAST_REQ_INT_WADDR_HIGH:	r_sram_rdata <= {16'd0, i_last_req_int_waddr[32+:16]};
			`CMT_REG_LAST_REQ_INT_WDATA_0   :	r_sram_rdata <= i_last_req_int_wdata[0*32+:32];
			`CMT_REG_LAST_REQ_INT_WDATA_1   :	r_sram_rdata <= i_last_req_int_wdata[1*32+:32];
			`CMT_REG_LAST_REQ_INT_WDATA_2   :	r_sram_rdata <= i_last_req_int_wdata[2*32+:32];
			`CMT_REG_LAST_REQ_INT_WDATA_3   :	r_sram_rdata <= i_last_req_int_wdata[3*32+:32];
			`CMT_REG_LAST_REQ_INT_WSTRB     :	r_sram_rdata <= {16'd0, i_last_req_int_wstrb};

			`CMT_REG_CQE_INT_SENT_CNT		:	r_sram_rdata <= {i_int_sent_cnt, i_cqe_sent_cnt};

			`CMT_REG_ERR_CLR 				:	r_sram_rdata <= {r_err_exist & ~r_err_mask, i_err_data[0+:15], r_err_exist, r_err_data[0+:15]};
			`CMT_REG_ERR_MASK				:	r_sram_rdata <= {31'd0, r_err_mask};

			`CMT_REG_AXIS_FIFO_INFO			:	r_sram_rdata <= {16'd0, 3'd0, i_axis_incoming_cqe_from_fw_tvalid, 3'd0, i_axis_incoming_cqe_from_fw_tready, 3'd0, i_axis_incoming_cqe_tvalid, 3'd0, i_axis_incoming_cqe_tready};

			`CMT_REG_AXI_OBND_OST_INFO		:	r_sram_rdata <= { {(32-8-8-9){1'b0}},
																i_axi_obnd_awvalid,

																i_axi_obnd_awready ,
																i_axi_obnd_bvalid  ,
																i_axi_obnd_bready  ,
																i_axi_obnd_arvalid ,

																i_axi_obnd_arready ,
																i_axi_obnd_rlast   ,
																i_axi_obnd_rvalid  ,
																i_axi_obnd_rready  ,

																i_rd_ost_cnt_obnd  ,
																i_wr_ost_cnt_obnd};

			`CMT_REG_AXI_CTX_OST_INFO		:	r_sram_rdata <= { {(32-8-8-9){1'b0}},
																i_axi_ctx_awvalid,
																i_axi_ctx_awready ,
																i_axi_ctx_bvalid  ,
																i_axi_ctx_bready  ,
																i_axi_ctx_arvalid ,
																i_axi_ctx_arready ,
																i_axi_ctx_rlast   ,
																i_axi_ctx_rvalid  ,
																i_axi_ctx_rready  ,
																i_rd_ost_cnt_ctx  ,
																i_wr_ost_cnt_ctx};

			`CMT_REG_TIMER_SYNC_RST 		:	r_sram_rdata <= {31'd0, o_timer_sync_rst};
			`CMT_REG_TIMER_MOD_VAL			:	r_sram_rdata <= {i_timer_cur_mod_value, o_timer_mod_value};
			`CMT_REG_TIMER_PRE_SCALE		:	r_sram_rdata <= {o_timer_pre_scale_en, 27'd0, o_timer_pre_scale};
			`CMT_REG_TIMER_DELAY_DISABLE 	:	r_sram_rdata <= {31'd0, o_delay_disable};

			// `CMT_REG_CQE_FW_DATA_0			:   r_sram_rdata <= i_cqe_fw_data[0*32+:32];
			// `CMT_REG_CQE_FW_DATA_1			:   r_sram_rdata <= i_cqe_fw_data[1*32+:32];
			// `CMT_REG_CQE_FW_DATA_2			:   r_sram_rdata <= i_cqe_fw_data[2*32+:32];
			// `CMT_REG_CQE_FW_DATA_3			:   r_sram_rdata <= i_cqe_fw_data[3*32+:32];

			`CMT_REG_AXIS_SWITHCH_INFO		: 	r_sram_rdata <= {24'd0, 2'd0, i_axis_switch_decode_err, 2'd0, r_axis_switch_req_suppress};
			default                         :	r_sram_rdata <= {DATA_WIDTH{1'b0}};
		endcase
	end
end

always_comb o_sram_rdata = r_sram_rdata;

always_comb o_axis_switch_req_suppress = r_axis_switch_req_suppress;


always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_err_exist <= 1'b0;
		r_err_data  <= 32'd0;
	end
	else if(i_sram_ce & i_sram_we & (i_sram_addr==`CMT_REG_ERR_CLR)) begin
		r_err_exist <= 1'b0;
		r_err_data  <= 32'd0;
	end
	else if(i_err_push_req) begin
		r_err_exist <= 1'b1;
		r_err_data  <= i_err_data;
	end
end


always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_err_push_ack <= 1'b0;
	end
    else if(i_err_push_req & ~o_err_push_ack) begin
		o_err_push_ack <= 1'b1;
	end
    else begin
		o_err_push_ack <= 1'b0;
    end
end


// sidebands
always_comb o_cmt_stop     = r_cmt_stop;
always_comb o_cmt_sync_rst = r_cmt_sync_rst;
always_comb o_err_exist    = r_err_exist & ~r_err_mask;
always_comb o_ob_base      = r_ob_base;

endmodule
