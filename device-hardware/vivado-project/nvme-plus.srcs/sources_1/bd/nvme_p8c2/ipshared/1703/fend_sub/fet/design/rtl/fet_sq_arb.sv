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

`include "../../../common/design/rtl/typedef_port_context_table.sv"
`include "../../../common/design/rtl/typedef_function_context_table.sv"
`include "../../../common/design/rtl/typedef_sq_context_table.sv"
`include "../../../common/design/rtl/typedef_cq_context_table.sv"

module fet_sq_arb #(
	parameter AXI_CTX_M_ID_WIDTH     = 1 ,
	parameter AXI_CTX_M_ADDR_WIDTH   = 32,
	parameter NUM_OF_QUE             = 1 ,
	parameter NUM_OF_FUNC            = 1 ,
	parameter NUM_OF_FUNC_WIDTH      = 1 ,
	parameter NUM_OF_QUE_WIDTH       = 1 ,
	parameter CCT_WIDTH              = 1 ,
	parameter PCT_WIDTH              = 1 ,
	parameter FCT_WIDTH              = 1 ,
	parameter SRAM_SQ_CTX_BASE       = 1 ,
	parameter SRAM_CQ_CTX_BASE       = 1 ,
	parameter SRAM_VQ2PQ_BASE        = 1 ,
	parameter SRAM_FCT_EXT0_BASE     = 1 ,
	parameter SRAM_FCT_EXT1_BASE     = 1 ,
	parameter FETCH_CMD_Q_ADDR_WIDTH = 3 , // 2^3 = 8
	parameter NUM_OF_OST_CMD_WIDTH   = 9 ,
	parameter AXI_CTX_SQARB_BASE_ID  = 0
) (
	// Port, Controller, Function information
	input  logic [         NUM_OF_FUNC-1:0] i_func_rdy          ,
	input  logic [           CCT_WIDTH-1:0] i_cont_cntxt_tbl    ,
	input  logic [           PCT_WIDTH-1:0] i_port_cntxt_tbl    ,
	input  logic [           FCT_WIDTH-1:0] i_func_cntxt_tbl    ,
	// axi master for CTX access
	output logic [  AXI_CTX_M_ID_WIDTH-1:0] o_axi_m_ctx_awid    ,
	output logic [AXI_CTX_M_ADDR_WIDTH-1:0] o_axi_m_ctx_awaddr  ,
	output logic [                   8-1:0] o_axi_m_ctx_awlen   ,
	output logic [                   3-1:0] o_axi_m_ctx_awsize  ,
	output logic [                   2-1:0] o_axi_m_ctx_awburst ,
	output logic                            o_axi_m_ctx_awlock  ,
	output logic [                   4-1:0] o_axi_m_ctx_awcache ,
	output logic [                   3-1:0] o_axi_m_ctx_awprot  ,
	output logic                            o_axi_m_ctx_awvalid ,
	input  logic                            i_axi_m_ctx_awready ,
	output logic [                  64-1:0] o_axi_m_ctx_wdata   ,
	output logic [              (64/8)-1:0] o_axi_m_ctx_wstrb   ,
	output logic                            o_axi_m_ctx_wlast   ,
	output logic                            o_axi_m_ctx_wvalid  ,
	input  logic                            i_axi_m_ctx_wready  ,
	input  logic [  AXI_CTX_M_ID_WIDTH-1:0] i_axi_m_ctx_bid     ,
	input  logic [                   2-1:0] i_axi_m_ctx_bresp   ,
	input  logic                            i_axi_m_ctx_bvalid  ,
	output logic                            o_axi_m_ctx_bready  ,
	output logic [  AXI_CTX_M_ID_WIDTH-1:0] o_axi_m_ctx_arid    ,
	output logic [AXI_CTX_M_ADDR_WIDTH-1:0] o_axi_m_ctx_araddr  ,
	output logic [                   8-1:0] o_axi_m_ctx_arlen   ,
	output logic [                   3-1:0] o_axi_m_ctx_arsize  ,
	output logic [                   2-1:0] o_axi_m_ctx_arburst ,
	output logic                            o_axi_m_ctx_arlock  ,
	output logic [                   4-1:0] o_axi_m_ctx_arcache ,
	output logic [                   3-1:0] o_axi_m_ctx_arprot  ,
	output logic                            o_axi_m_ctx_arvalid ,
	input  logic                            i_axi_m_ctx_arready ,
	input  logic [  AXI_CTX_M_ID_WIDTH-1:0] i_axi_m_ctx_rid     ,
	input  logic [                  64-1:0] i_axi_m_ctx_rdata   ,
	input  logic [                   2-1:0] i_axi_m_ctx_rresp   ,
	input  logic                            i_axi_m_ctx_rlast   ,
	input  logic                            i_axi_m_ctx_rvalid  ,
	output logic                            o_axi_m_ctx_rready  ,
	// fetch request
	output logic                            o_fetch_req_q_push  ,
	output fet_fetch_req_t                  o_fetch_req_q_data  ,
	input  logic                            i_fetch_req_q_ack   ,
	// error q interface
	output logic                            o_err_push_req      ,
	output fet_sqarb_err_data_t             o_err_data          ,
	input  logic                            i_err_push_ack      ,
	input  logic                            i_err_exist         ,
	output logic [                  32-1:0] o_last_req_ctx_raddr,
	output logic [                   4-1:0] o_fsm               ,
	output logic                            o_arb_block         ,
	input  logic                            i_cmd_throt_en      ,
	// error information
	// sidebands
	input  logic [  NUM_OF_OST_CMD_WIDTH:0] i_avail_tag_num     , // 1-based value, ex) 256
	input  logic                            i_tag_q_empty       ,
	input  logic [FETCH_CMD_Q_ADDR_WIDTH:0] i_arb_burst         , // not the value in the nvme specification
	input  logic                            i_arb_stop          ,
	input  logic                            i_fet_sync_rst      ,
	input  logic                            i_arb_wrr_en        ,
	input  logic                            i_func_arb_crd_en   ,
	input  logic                            i_cct_posting_en    ,
	input  logic                            i_stream_posting_en ,
	input  logic                            i_clk               ,
	input  logic                            i_rstn
);

/////////////////////////////////////////////////////////////
// localparams
//////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////
// internal signals
//////////////////////////////////////////////////////////////

port_context_table_t                                pct                              ;
function_context_table_t                            fct                              ;
logic                    [         NUM_OF_FUNC-1:0] func_arb_req                     ;
logic                    [         NUM_OF_FUNC-1:0] func_grant                       ;
logic                    [          NUM_OF_QUE-1:0] sq_grant                         ;
logic                    [   NUM_OF_FUNC_WIDTH-1:0] func_grant_idx                   ;
logic                    [          NUM_OF_QUE-1:0] sq_arb_req                       ;
logic                    [    NUM_OF_QUE_WIDTH-1:0] sq_grant_idx                     ;
logic                    [   NUM_OF_FUNC_WIDTH-1:0] win_func_idx                     ;
logic                    [    NUM_OF_QUE_WIDTH-1:0] win_vsq_idx                      ;
logic                    [                  11-1:0] func_arb_credit                  ;
logic                    [                  16-1:0] sq_avail                         ;
logic                    [                  16-1:0] min_sq_avail_and_ab              ;
logic                    [                  16-1:0] num_of_cmd_to_be_fetched         ;
logic                    [FETCH_CMD_Q_ADDR_WIDTH:0] r_num_of_cmd_to_be_fetched       ;
logic                    [FETCH_CMD_Q_ADDR_WIDTH:0] r_min_sq_avail_and_ab            ;
logic                    [   NUM_OF_FUNC_WIDTH-1:0] r_win_func_idx                   ;
logic                    [    NUM_OF_QUE_WIDTH-1:0] r_win_vsq_idx                    ;
logic                    [    NUM_OF_QUE_WIDTH-1:0] r_psq_idx                        ;
logic                    [                  64-1:0] r_axi_rdata                      ;
logic                    [          NUM_OF_QUE-1:0] vsq_dirty_mask                   ;
logic                    [          NUM_OF_QUE-1:0] vsq_dirty_map                    ;
logic                                               r_sq_info_cnt                    ;
logic                                               r_cq_info_cnt                    ;
logic                    [                  16-1:0] r_cqid                           ;
logic                                               arb_block                        ;
sq_context_qw0_t                                    r_sq_ctx_qw0                     ;
sq_context_qw1_t                                    r_sq_ctx_qw1                     ;
cq_context_qw0_t                                    r_cq_ctx_qw0                     ;
cq_context_qw1_t                                    r_cq_ctx_qw1                     ;
fet_sqarb_err_data_t                                err_data                         ;
fet_sqarb_err_data_t                                r_err_data                       ;
integer                                             func_loop_idx                    ;
integer                                             sq_loop_idx                      ;
// logic                    [                  11-1:0] min_avail_tag_and_func_arb_crd;
logic                    [                  16-1:0] r_min_func_arb_crd;

typedef enum logic [5-1:0] {
	ST_IDLE 			  ,
	ST_GET_FUNC_WINNER    ,
	ST_GET_FUNC_ARB_CREDIT,
	ST_RD_VSQ_ARB_MASK 	  ,
	ST_GET_VSQ_ARB_MASK   ,
	ST_RD_VSQ_DIRTY_MAP   ,
	ST_GET_VSQ_DIRTY_MAP  ,
	ST_GET_VSQ_WINNER     ,
	ST_RD_PSQ_IDX 		  ,
	ST_GET_PSQ_IDX		  ,
	ST_RD_SQ_INFO		  ,
	ST_GET_SQ_INFO		  ,
	ST_RD_CQ_INFO		  ,
	ST_GET_CQ_INFO		  ,
	ST_CALC_FETCH_NUM_PRE ,
	ST_CALC_FETCH_NUM	  ,
	ST_PUSH_FETCH_REQ 	  ,
	ST_PUSH_ERR
} state_t;

state_t cur_state; // state
state_t nxt_state;


//////////////////////////////////////////////////////////////
// Find function winner
//////////////////////////////////////////////////////////////

	// always_comb func_arb_req = (cur_state==ST_IDLE) & (~i_arb_stop & ~i_fet_sync_rst & (|i_func_rdy) & (|i_avail_tag_num) ) ? i_func_rdy : {NUM_OF_FUNC{1'b0}};
	always_comb func_arb_req = (cur_state==ST_IDLE) & (~i_arb_stop & ~i_fet_sync_rst & (|i_func_rdy)) ? i_func_rdy : {NUM_OF_FUNC{1'b0}};

	always_comb begin
		func_grant_idx = {NUM_OF_FUNC_WIDTH{1'b0}};
		for (func_loop_idx = 0; func_loop_idx < NUM_OF_FUNC; func_loop_idx++) begin
			if(func_grant[func_loop_idx]) begin
				func_grant_idx = func_loop_idx;
			end
		end
	end


	always_comb begin
		sq_grant_idx = {NUM_OF_QUE_WIDTH{1'b0}};
		for (sq_loop_idx = 0; sq_loop_idx < NUM_OF_QUE; sq_loop_idx++) begin
			if(sq_grant[sq_loop_idx]) begin
				sq_grant_idx = sq_loop_idx;
			end
		end
	end

	always_comb pct          = i_port_cntxt_tbl[0+:PCT_WIDTH];
	always_comb fct          = i_func_cntxt_tbl[r_win_func_idx*FCT_WIDTH+:FCT_WIDTH];

	always_comb win_func_idx = pct.basefidx + func_grant_idx;
	always_comb win_vsq_idx  = fct.basevqidx[0+:NUM_OF_QUE_WIDTH] + sq_grant_idx;

	always_comb func_arb_credit = (i_func_arb_crd_en)? {fct.hi_arb_crd, fct.lo_arb_crd} : 11'd2047;

// function index latching
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            r_win_func_idx <= {NUM_OF_FUNC_WIDTH{1'b0}};
        end
        else if(cur_state==ST_GET_FUNC_WINNER) begin
            r_win_func_idx <= win_func_idx;
        end
    end


// vq index latching
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            r_win_vsq_idx <= {NUM_OF_QUE_WIDTH{1'd0}};
        end
        else if( (cur_state==ST_GET_VSQ_WINNER) ) begin
            r_win_vsq_idx <= win_vsq_idx;
        end
    end

// pq index latching
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            r_psq_idx <= {NUM_OF_QUE_WIDTH{1'b0}};
        end
        else if( (cur_state==ST_GET_PSQ_IDX) ) begin
        	if(i_axi_m_ctx_rvalid & o_axi_m_ctx_rready) begin
        		if(r_win_vsq_idx[0+:2]==2'b00)
		            r_psq_idx <= i_axi_m_ctx_rdata[0+:NUM_OF_QUE_WIDTH];
        		else if(r_win_vsq_idx[0+:2]==2'b01)
		            r_psq_idx <= i_axi_m_ctx_rdata[16+:NUM_OF_QUE_WIDTH];
        		else if(r_win_vsq_idx[0+:2]==2'b10)
		            r_psq_idx <= i_axi_m_ctx_rdata[32+:NUM_OF_QUE_WIDTH];
        		else
		            r_psq_idx <= i_axi_m_ctx_rdata[48+:NUM_OF_QUE_WIDTH];
	        end
        end
    end

//////////////////////////////////////////////////////////////
// axi signal driving
//////////////////////////////////////////////////////////////

// AW, W channel
always_comb begin
	 o_axi_m_ctx_awid    = AXI_CTX_SQARB_BASE_ID;
	 o_axi_m_ctx_awaddr  = {(    AXI_CTX_M_ADDR_WIDTH){1'b0}};
	 o_axi_m_ctx_awlen   = {(                   8){1'b0}};
	 o_axi_m_ctx_awsize  = {(                   3){1'b0}};
	 o_axi_m_ctx_awburst = {(                   2){1'b0}};
	 o_axi_m_ctx_awlock  = {(                   1){1'b0}};
	 o_axi_m_ctx_awcache = {(                   4){1'b0}};
	 o_axi_m_ctx_awprot  = {(                   3){1'b0}};
	 o_axi_m_ctx_awvalid = {(                   1){1'b0}};
	 o_axi_m_ctx_wdata   = {(    64){1'b0}};
	 o_axi_m_ctx_wstrb   = {((64/8)){1'b0}};
	 o_axi_m_ctx_wlast   = {(                   1){1'b0}};
	 o_axi_m_ctx_wvalid  = {(                   1){1'b0}};
	 o_axi_m_ctx_bready  = {(                   1){1'b0}};
end

// AR channel
always_comb begin
	o_axi_m_ctx_arid    = AXI_CTX_SQARB_BASE_ID;
	o_axi_m_ctx_arsize  = 3'd3;
	o_axi_m_ctx_arburst = 2'd1;
	o_axi_m_ctx_arlock  = 1'b0;
	o_axi_m_ctx_arcache = 4'd0;
	o_axi_m_ctx_arprot  = 3'd0;

	case(cur_state)
		ST_RD_VSQ_ARB_MASK: begin
			o_axi_m_ctx_arvalid   = 1'b1;
			// <TODO>
			// function is less than 64
			o_axi_m_ctx_araddr    = SRAM_FCT_EXT1_BASE;
			o_axi_m_ctx_arlen   = 8'd0;
		end
		ST_RD_VSQ_DIRTY_MAP  : begin
			o_axi_m_ctx_arvalid   = 1'b1;
			// o_axi_m_ctx_araddr = SRAM_FCT_EXT0_BASE + r_win_func_idx[6+:(NUM_OF_FUNC_WIDTH-6)];
			// <TODO>
			// function is less than 64
			o_axi_m_ctx_araddr    = SRAM_FCT_EXT0_BASE;
			o_axi_m_ctx_arlen   = 8'd0;
		end
		ST_RD_PSQ_IDX        : begin
			o_axi_m_ctx_arvalid = 1'b1;
			o_axi_m_ctx_araddr  = SRAM_VQ2PQ_BASE + {r_win_vsq_idx[2+:(NUM_OF_QUE_WIDTH-2)], 3'd0};
			o_axi_m_ctx_arlen   = 8'd0;
		end
		ST_RD_SQ_INFO        : begin
			o_axi_m_ctx_arvalid = 1'b1;
			o_axi_m_ctx_araddr  = SRAM_SQ_CTX_BASE + {r_psq_idx, 5'd0};
			o_axi_m_ctx_arlen   = 8'd1;
		end
		ST_RD_CQ_INFO        : begin
			o_axi_m_ctx_arvalid = 1'b1;
			o_axi_m_ctx_araddr  = SRAM_CQ_CTX_BASE + {r_cqid, 5'd0};
			o_axi_m_ctx_arlen   = 8'd1;
		end
		default              : begin
			o_axi_m_ctx_arvalid = 1'b0;
			o_axi_m_ctx_araddr  = {AXI_CTX_M_ADDR_WIDTH{1'b0}};
			o_axi_m_ctx_arlen   = 8'd0;
		end
	endcase
end

// R channel
always_comb begin
	case(cur_state)
		ST_GET_VSQ_ARB_MASK   : o_axi_m_ctx_rready = 1'b1;
		ST_GET_VSQ_DIRTY_MAP  : o_axi_m_ctx_rready = 1'b1;
		ST_GET_PSQ_IDX        : o_axi_m_ctx_rready = 1'b1;
		ST_GET_SQ_INFO        : o_axi_m_ctx_rready = 1'b1;
		ST_GET_CQ_INFO        : o_axi_m_ctx_rready = 1'b1;
		default               : o_axi_m_ctx_rready = 1'b0;
	endcase
end

// latch axi_rdata
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_axi_rdata <= {64{1'b0}};
	end
	else if(i_axi_m_ctx_rvalid & o_axi_m_ctx_rready & (r_sq_info_cnt==1'b0)) begin
		r_axi_rdata <= i_axi_m_ctx_rdata;
	end
end

// sq context latch
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_sq_ctx_qw0 <= 64'b0;
		r_sq_ctx_qw1 <= 64'b0;
	end
	else if( (cur_state==ST_GET_SQ_INFO) & i_axi_m_ctx_rvalid & o_axi_m_ctx_rready) begin
		if(r_sq_info_cnt==1'b0) begin
			r_sq_ctx_qw0 <= i_axi_m_ctx_rdata;
		end
		else if(r_sq_info_cnt==1'b1) begin
			r_sq_ctx_qw1 <= i_axi_m_ctx_rdata;
		end
	end
end


// latch cqid
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_cqid <= {16{1'b0}};
	end
	else if(i_axi_m_ctx_rvalid & o_axi_m_ctx_rready & i_axi_m_ctx_rlast & (r_sq_info_cnt==1'b1) )begin
		r_cqid <= i_axi_m_ctx_rdata[15:0];
	end
end

// latch count
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_sq_info_cnt <= 1'b0;
	end
	else if(cur_state==ST_RD_SQ_INFO) begin
		r_sq_info_cnt <= 1'b0;
	end
	else if( (cur_state==ST_GET_SQ_INFO) & i_axi_m_ctx_rvalid & o_axi_m_ctx_rready) begin
		r_sq_info_cnt <= r_sq_info_cnt + 1'b1;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_cq_info_cnt <= 1'b0;
	end
	else if(cur_state==ST_RD_CQ_INFO) begin
		r_cq_info_cnt <= 1'b0;
	end
	else if( (cur_state==ST_GET_CQ_INFO) & i_axi_m_ctx_rvalid & o_axi_m_ctx_rready) begin
		r_cq_info_cnt <= r_cq_info_cnt + 1'b1;
	end
end

// cq context latch
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_cq_ctx_qw0 <= 64'b0;
		r_cq_ctx_qw1 <= 64'b0;
	end
	else if( (cur_state==ST_GET_CQ_INFO) & i_axi_m_ctx_rvalid & o_axi_m_ctx_rready) begin
		if(r_cq_info_cnt==1'b0) begin
			r_cq_ctx_qw0 <= i_axi_m_ctx_rdata;
		end
		else if(r_cq_info_cnt==1'b1) begin
			r_cq_ctx_qw1 <= i_axi_m_ctx_rdata;
		end
	end
end


//////////////////////////////////////////////////////////////
// find VSQ winner
//////////////////////////////////////////////////////////////
// TODO: need to add function parameterized
always_comb vsq_dirty_mask = r_axi_rdata[0+:NUM_OF_QUE];
always_comb vsq_dirty_map  = i_axi_m_ctx_rdata[0+:NUM_OF_QUE];
always_comb sq_arb_req     = ( (cur_state==ST_GET_VSQ_DIRTY_MAP) & (|(vsq_dirty_map & ~vsq_dirty_mask)) & i_axi_m_ctx_rvalid )? (vsq_dirty_map & ~vsq_dirty_mask) : {NUM_OF_QUE{1'b0}};

//////////////////////////////////////////////////////////////
// calculate number of command to be fetched
//////////////////////////////////////////////////////////////

//always_comb r_sq_ctx_qw0 = r_axi_rdata;

always_comb sq_avail = (r_sq_ctx_qw0.sqt >= r_sq_ctx_qw0.sqh)? (r_sq_ctx_qw0.sqt - r_sq_ctx_qw0.sqh) : (r_sq_ctx_qw0.qsize - r_sq_ctx_qw0.sqh + r_sq_ctx_qw0.sqt + 1);

func_min #(.DATA_WIDTH(16)) u_func_min_0 (min_sq_avail_and_ab           , sq_avail          , { {(16-FETCH_CMD_Q_ADDR_WIDTH-1){1'b0}}, i_arb_burst});
func_min #(.DATA_WIDTH(16)) u_func_min_1 (num_of_cmd_to_be_fetched      , r_min_func_arb_crd, { {(16-FETCH_CMD_Q_ADDR_WIDTH-1){1'b0}}, r_min_sq_avail_and_ab});



// CQ vacancy  = (CQT >= CQH)? ( CQ SIZE - CQT + CQH ) - CQ ost : CQH - CQT -1 - CQ ost, CQ SIZE는 zero-based

// latches for timing
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_min_sq_avail_and_ab <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'd0}};
	end
	else if(cur_state==ST_CALC_FETCH_NUM_PRE) begin
		r_min_sq_avail_and_ab <= min_sq_avail_and_ab[0+:(FETCH_CMD_Q_ADDR_WIDTH+1)];
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_min_func_arb_crd <= 16'd0;
	end
	else if(cur_state==ST_CALC_FETCH_NUM_PRE) begin
        r_min_func_arb_crd <= {5'd0, func_arb_credit};
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_num_of_cmd_to_be_fetched <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'd0}};
	end
	else if(cur_state==ST_CALC_FETCH_NUM) begin
		r_num_of_cmd_to_be_fetched <= num_of_cmd_to_be_fetched[0+:(FETCH_CMD_Q_ADDR_WIDTH+1)];
	end
end

//////////////////////////////////////////////////////////////
// fetch request
//////////////////////////////////////////////////////////////
always_comb o_fetch_req_q_push           = (cur_state==ST_PUSH_FETCH_REQ);

always_comb o_fetch_req_q_data.cq_id     = r_cqid;
always_comb o_fetch_req_q_data.sq_id     = r_psq_idx;
always_comb o_fetch_req_q_data.sq_head   = r_sq_ctx_qw0.sqh;
always_comb o_fetch_req_q_data.sq_size   = r_sq_ctx_qw0.qsize;
always_comb o_fetch_req_q_data.pc        = r_sq_ctx_qw0.pc;
always_comb o_fetch_req_q_data.prpv      = r_sq_ctx_qw0.prpv;
always_comb o_fetch_req_q_data.fetch_num = r_num_of_cmd_to_be_fetched;
always_comb o_fetch_req_q_data.func_id   = r_win_func_idx;
always_comb o_fetch_req_q_data.port_id   = 1'b0;


//////////////////////////////////////////////////////////////
// arbitration block condition
//////////////////////////////////////////////////////////////
always_comb begin
    if(i_cct_posting_en) begin
        // if(i_err_exist | i_arb_stop | i_fet_sync_rst | ~(|i_func_rdy) | ~(|i_avail_tag_num) | (i_tag_q_empty) ) begin
        if(i_err_exist | i_arb_stop | i_fet_sync_rst | ~(|i_func_rdy)) begin
            arb_block = 1'b1;
        end
        else begin
            arb_block = 1'b0;
        end
    end
    else if(i_stream_posting_en) begin
        if(i_err_exist | i_arb_stop | i_fet_sync_rst | ~(|i_func_rdy)) begin
            arb_block = 1'b1;
        end
        else begin
            arb_block = 1'b0;
        end
    end
    else begin
        arb_block = 1'b1;
    end
end

always_comb o_arb_block = arb_block;

//////////////////////////////////////////////////////////////
// FSM
//////////////////////////////////////////////////////////////

    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            cur_state <= ST_IDLE;
        end
        else begin
            cur_state <= nxt_state;
        end
    end

	always_comb begin
		case(cur_state)
			ST_IDLE: begin
                if( ~arb_block ) begin
					nxt_state = ST_GET_FUNC_WINNER;
				end
				else begin
					nxt_state = ST_IDLE;
				end
			end
			ST_GET_FUNC_WINNER: begin
				nxt_state = ST_GET_FUNC_ARB_CREDIT;
			end
			ST_GET_FUNC_ARB_CREDIT: begin
				if(i_func_arb_crd_en) begin
					if( ~|func_arb_credit )
						nxt_state = ST_IDLE;
					else
						nxt_state = ST_RD_VSQ_ARB_MASK;
				end
				else
					nxt_state = ST_RD_VSQ_ARB_MASK;
			end
			ST_RD_VSQ_ARB_MASK: begin
				if(i_axi_m_ctx_arready)
					nxt_state = ST_GET_VSQ_ARB_MASK;
				else
					nxt_state = ST_RD_VSQ_ARB_MASK;
			end
			ST_GET_VSQ_ARB_MASK: begin
				if(i_axi_m_ctx_rvalid) begin
					if(i_axi_m_ctx_rresp != 2'd0)
						nxt_state = ST_PUSH_ERR;
					else
						nxt_state = ST_RD_VSQ_DIRTY_MAP;
				end
				else
					nxt_state = ST_GET_VSQ_ARB_MASK;
			end
			ST_RD_VSQ_DIRTY_MAP: begin
				if(i_axi_m_ctx_arready)
					nxt_state = ST_GET_VSQ_DIRTY_MAP;
				else
					nxt_state = ST_RD_VSQ_DIRTY_MAP;
			end
			ST_GET_VSQ_DIRTY_MAP: begin
				if(i_axi_m_ctx_rvalid) begin
					if( (~|(vsq_dirty_map & ~vsq_dirty_mask)) | (i_axi_m_ctx_rresp != 2'd0) ) begin
						nxt_state = ST_PUSH_ERR;
					end
					else begin
						nxt_state = ST_GET_VSQ_WINNER;
					end
				end
				else begin
					nxt_state = ST_GET_VSQ_DIRTY_MAP;
				end
			end
			ST_GET_VSQ_WINNER: begin
				nxt_state = ST_RD_PSQ_IDX;
			end
			ST_RD_PSQ_IDX: begin
				if(i_axi_m_ctx_arready)
					nxt_state = ST_GET_PSQ_IDX;
				else
					nxt_state = ST_RD_PSQ_IDX;
			end
			ST_GET_PSQ_IDX: begin
				if(i_axi_m_ctx_rvalid) begin
					if(i_axi_m_ctx_rresp != 2'd0)
						nxt_state = ST_PUSH_ERR;
					else
						nxt_state = ST_RD_SQ_INFO;
				end
				else
					nxt_state = ST_GET_PSQ_IDX;
			end
			ST_RD_SQ_INFO: begin
				if(i_axi_m_ctx_arready)
					nxt_state = ST_GET_SQ_INFO;
				else
					nxt_state = ST_RD_SQ_INFO;
			end
			ST_GET_SQ_INFO: begin
				if(i_axi_m_ctx_rvalid && i_axi_m_ctx_rlast) begin
					if( (~r_sq_ctx_qw0.qv) | (i_axi_m_ctx_rresp != 2'd0) )
						nxt_state = ST_PUSH_ERR;
					else
						// nxt_state = ST_CALC_FETCH_NUM_PRE;
						nxt_state = ST_RD_CQ_INFO;
				end
				else
					nxt_state = ST_GET_SQ_INFO;
			end

			ST_RD_CQ_INFO: begin
				if(i_axi_m_ctx_arready)
					nxt_state = ST_GET_CQ_INFO;
				else
					nxt_state = ST_RD_CQ_INFO;
			end
			ST_GET_CQ_INFO: begin
				if(i_axi_m_ctx_rvalid && i_axi_m_ctx_rlast) begin
					if( (~r_cq_ctx_qw0.qv) | (i_axi_m_ctx_rresp != 2'd0) )
						nxt_state = ST_PUSH_ERR;
					else
						nxt_state = ST_CALC_FETCH_NUM_PRE;
				end
				else
					nxt_state = ST_GET_CQ_INFO;
			end

			ST_CALC_FETCH_NUM_PRE: begin
				nxt_state = ST_CALC_FETCH_NUM;
			end
			ST_CALC_FETCH_NUM: begin
				if(i_fet_sync_rst | (~|num_of_cmd_to_be_fetched[0+:(FETCH_CMD_Q_ADDR_WIDTH+1)]))
					nxt_state = ST_IDLE;
				else
					nxt_state = ST_PUSH_FETCH_REQ;
			end
			ST_PUSH_FETCH_REQ: begin
				if(i_fetch_req_q_ack)
					nxt_state = ST_IDLE;
				else
					nxt_state = ST_PUSH_FETCH_REQ;
			end
			ST_PUSH_ERR: begin
				if(i_err_push_ack)
					nxt_state = ST_IDLE;
				else
					nxt_state = ST_PUSH_ERR;
			end

            default: nxt_state = ST_IDLE;
        endcase
    end

always_comb o_fsm = cur_state;

//////////////////////////////////////////////////////////////
// error request
//////////////////////////////////////////////////////////////

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_last_req_ctx_raddr <= 32'd0;
	end
	else if(o_axi_m_ctx_arvalid & i_axi_m_ctx_arready) begin
		o_last_req_ctx_raddr <= o_axi_m_ctx_araddr;
	end
end


always_comb o_err_push_req = (cur_state==ST_PUSH_ERR);
always_comb o_err_data     = r_err_data;

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_err_data <= 32'd0;
    end
    else begin
		case(cur_state)
			ST_GET_VSQ_ARB_MASK : begin
				if(i_axi_m_ctx_rvalid) begin
					if(i_axi_m_ctx_rresp != 2'd0) begin
						r_err_data.vsq_arb_mask_rresp_err <= 1'b1;
					end
				end
			end
			ST_GET_VSQ_DIRTY_MAP : begin
				if(i_axi_m_ctx_rvalid) begin
					if(~|(vsq_dirty_map & ~vsq_dirty_mask)) begin
						r_err_data.vsq_dirty_map_zero <= 1'b1;
					end
					if(i_axi_m_ctx_rresp != 2'd0) begin
						r_err_data.vsq_dirty_map_rresp_err <= 1'b1;
					end
				end
			end
			ST_GET_PSQ_IDX : begin
				if(i_axi_m_ctx_rvalid) begin
					if(i_axi_m_ctx_rresp != 2'd0) begin
						r_err_data.get_psq_idx_rresp_err <= 1'b1;
					end
				end
			end
			ST_GET_SQ_INFO : begin
				if(i_axi_m_ctx_rvalid) begin
					if(~r_sq_ctx_qw0.qv) begin
						r_err_data.get_sq_info_qv_is_zero <= 1'b1;
					end
					if (i_axi_m_ctx_rresp != 2'd0) begin
						r_err_data.get_sq_info_rresp_err <= 1'b1;
					end
				end
			end
            default: begin
                r_err_data <= 32'd0;
            end
		endcase
	end
end


/////////////////////////////////////////////////////////////
// round robin arbiter
//////////////////////////////////////////////////////////////

generate
	if(NUM_OF_FUNC==1) begin
		always_comb func_grant  = 1'b0;
	end
	else begin
		// TODO:
		always_comb func_grant  = 1'b0;
	end
endgenerate

// TODO
fet_arbiter #(.N(NUM_OF_QUE)) u_fet_arbiter (
	.i_clk  (i_clk     ),
	.i_rstn (i_rstn    ),
	.i_req  (sq_arb_req),
	.o_grant(sq_grant  )
);


endmodule

/////////////////////////////////////////////////////////////
// MIN function
//////////////////////////////////////////////////////////////

module func_min #(parameter DATA_WIDTH = 32) (
	output logic [DATA_WIDTH-1:0] out,
	input  logic [DATA_WIDTH-1:0] a  ,
	input  logic [DATA_WIDTH-1:0] b
);
	always_comb begin
		if(a > b)
			out = b;
		else
			out = a;
	end
endmodule

module fet_arbiter
#(
    parameter N = 4
)
(
    input wire              i_clk   ,
    input wire              i_rstn  ,
    input wire [N-1:0]      i_req   ,
    output wire [N-1:0]     o_grant
);

reg [N-1:0]     rotate_ptr;
wire [N-1:0]    mask_req;
wire [N-1:0]    mask_grant;
wire [N-1:0]    grant_comb;
reg [N-1:0]     r_grant;
wire            no_mask_req;
wire [N-1:0]    nomask_grant;
wire            update_ptr;
genvar i;

// rotate pointer update logic
assign update_ptr = |r_grant[N-1:0];
always @ (posedge i_clk or negedge i_rstn)
begin
    if (!i_rstn)
        //rotate_ptr[N-1:0] <= {N{1'b1}};
        rotate_ptr[1:0] <= {2{1'b1}};
    else if (update_ptr)
    begin
        // note: N must be at least 2
        rotate_ptr[0] <= r_grant[N-1];
        rotate_ptr[1] <= r_grant[N-1] | r_grant[0];
    end
end

generate
//if(N > 2) begin:ROUND_ROBIN_ARB_MORE_THAN_2
    for (i=2;i<N;i=i+1) begin
        always @ (posedge i_clk or negedge i_rstn) begin
            if (!i_rstn)
                rotate_ptr[i] <= 1'b1;
            else if (update_ptr)
                rotate_ptr[i] <= r_grant[N-1] | (|r_grant[i-1:0]);
        end
    end
//end
endgenerate

// mask grant generation logic
assign mask_req[N-1:0] = i_req[N-1:0] & rotate_ptr[N-1:0];

assign mask_grant[0] = mask_req[0];
generate
for (i=1;i<N;i=i+1)
    assign mask_grant[i] = (~|mask_req[i-1:0]) & mask_req[i];
endgenerate

// non-mask grant generation logic
assign nomask_grant[0] = i_req[0];
generate
for (i=1;i<N;i=i+1)
    assign nomask_grant[i] = (~|i_req[i-1:0]) & i_req[i];
endgenerate

// grant generation logic
assign no_mask_req = ~|mask_req[N-1:0];
assign grant_comb[N-1:0] = mask_grant[N-1:0] | (nomask_grant[N-1:0] & {N{no_mask_req}});

always @ (posedge i_clk or negedge i_rstn)
begin
    if (!i_rstn)    r_grant[N-1:0] <= {N{1'b0}};
    else        r_grant[N-1:0] <= grant_comb[N-1:0] & ~r_grant[N-1:0];
end

assign o_grant = r_grant;

endmodule
