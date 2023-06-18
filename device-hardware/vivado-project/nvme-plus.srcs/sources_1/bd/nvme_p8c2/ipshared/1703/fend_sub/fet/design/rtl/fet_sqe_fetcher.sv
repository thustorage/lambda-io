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

module fet_sqe_fetcher #(
	parameter AXI_OB_M_ID_WIDTH      = 1 ,
	parameter AXI_OB_M_ADDR_WIDTH    = 64,
	parameter AXI_CTX_M_ID_WIDTH     = 1 ,
	parameter AXI_CTX_M_ADDR_WIDTH   = 32,
	parameter SRAM_SQ_CTX_BASE       = 1 ,
	parameter FETCH_CMD_Q_ADDR_WIDTH = 3 ,
	parameter NUM_OF_QUE_WIDTH       = 6 ,
	parameter AXI_CTX_SQFETR_BASE_ID = 1 ,
	parameter AXI_BAR_BASE           = 1
) (
	// fetch request interface
	output logic                            o_fetch_req_q_pop     ,
	input  fet_fetch_req_t                  i_fetch_req_q_data    ,
	input  logic                            i_fetch_req_q_empty   ,
	// cmd q interface
	input  logic                            i_fetched_cmd_q_pop   ,
	output fet_fetched_cmd_t                o_fetched_cmd_q_data  ,
	output logic                            o_fetched_cmd_q_empty ,
	// error q interface
	output logic                            o_err_push_req        ,
	output fet_sqfet_err_data_t             o_err_data            ,
	input  logic                            i_err_push_ack        ,
	input  logic                            i_err_exist           ,
	output logic [                  32-1:0] o_last_req_ctx_raddr  ,
	output logic [                  32-1:0] o_last_req_ctx_waddr  ,
	output logic [                  64-1:0] o_last_req_ob_raddr   ,
	// axi master for outbound access
	output logic [   AXI_OB_M_ID_WIDTH-1:0] o_axi_m_ob_awid       ,
	output logic [ AXI_OB_M_ADDR_WIDTH-1:0] o_axi_m_ob_awaddr     ,
	output logic [                   8-1:0] o_axi_m_ob_awlen      ,
	output logic [                   3-1:0] o_axi_m_ob_awsize     ,
	output logic [                   2-1:0] o_axi_m_ob_awburst    ,
	output logic                            o_axi_m_ob_awlock     ,
	output logic [                   4-1:0] o_axi_m_ob_awcache    ,
	output logic [                   3-1:0] o_axi_m_ob_awprot     ,
	output logic                            o_axi_m_ob_awvalid    ,
	input  logic                            i_axi_m_ob_awready    ,
	output logic [                  64-1:0] o_axi_m_ob_wdata      ,
	output logic [              (64/8)-1:0] o_axi_m_ob_wstrb      ,
	output logic                            o_axi_m_ob_wlast      ,
	output logic                            o_axi_m_ob_wvalid     ,
	input  logic                            i_axi_m_ob_wready     ,
	input  logic [   AXI_OB_M_ID_WIDTH-1:0] i_axi_m_ob_bid        ,
	input  logic [                   2-1:0] i_axi_m_ob_bresp      ,
	input  logic                            i_axi_m_ob_bvalid     ,
	output logic                            o_axi_m_ob_bready     ,
	output logic [   AXI_OB_M_ID_WIDTH-1:0] o_axi_m_ob_arid       ,
	output logic [ AXI_OB_M_ADDR_WIDTH-1:0] o_axi_m_ob_araddr     ,
	output logic [                   8-1:0] o_axi_m_ob_arlen      ,
	output logic [                   3-1:0] o_axi_m_ob_arsize     ,
	output logic [                   2-1:0] o_axi_m_ob_arburst    ,
	output logic                            o_axi_m_ob_arlock     ,
	output logic [                   4-1:0] o_axi_m_ob_arcache    ,
	output logic [                   3-1:0] o_axi_m_ob_arprot     ,
	output logic                            o_axi_m_ob_arvalid    ,
	input  logic                            i_axi_m_ob_arready    ,
	input  logic [   AXI_OB_M_ID_WIDTH-1:0] i_axi_m_ob_rid        ,
	input  logic [                  64-1:0] i_axi_m_ob_rdata      ,
	input  logic [                   2-1:0] i_axi_m_ob_rresp      ,
	input  logic                            i_axi_m_ob_rlast      ,
	input  logic                            i_axi_m_ob_rvalid     ,
	output logic                            o_axi_m_ob_rready     ,
	// axi master for ctx access
	output logic [  AXI_CTX_M_ID_WIDTH-1:0] o_axi_m_ctx_awid      ,
	output logic [AXI_CTX_M_ADDR_WIDTH-1:0] o_axi_m_ctx_awaddr    ,
	output logic [                   8-1:0] o_axi_m_ctx_awlen     ,
	output logic [                   3-1:0] o_axi_m_ctx_awsize    ,
	output logic [                   2-1:0] o_axi_m_ctx_awburst   ,
	output logic                            o_axi_m_ctx_awlock    ,
	output logic [                   4-1:0] o_axi_m_ctx_awcache   ,
	output logic [                   3-1:0] o_axi_m_ctx_awprot    ,
	output logic                            o_axi_m_ctx_awvalid   ,
	input  logic                            i_axi_m_ctx_awready   ,
	output logic [                  64-1:0] o_axi_m_ctx_wdata     ,
	output logic [              (64/8)-1:0] o_axi_m_ctx_wstrb     ,
	output logic                            o_axi_m_ctx_wlast     ,
	output logic                            o_axi_m_ctx_wvalid    ,
	input  logic                            i_axi_m_ctx_wready    ,
	input  logic [  AXI_CTX_M_ID_WIDTH-1:0] i_axi_m_ctx_bid       ,
	input  logic [                   2-1:0] i_axi_m_ctx_bresp     ,
	input  logic                            i_axi_m_ctx_bvalid    ,
	output logic                            o_axi_m_ctx_bready    ,
	output logic [  AXI_CTX_M_ID_WIDTH-1:0] o_axi_m_ctx_arid      ,
	output logic [AXI_CTX_M_ADDR_WIDTH-1:0] o_axi_m_ctx_araddr    ,
	output logic [                   8-1:0] o_axi_m_ctx_arlen     ,
	output logic [                   3-1:0] o_axi_m_ctx_arsize    ,
	output logic [                   2-1:0] o_axi_m_ctx_arburst   ,
	output logic                            o_axi_m_ctx_arlock    ,
	output logic [                   4-1:0] o_axi_m_ctx_arcache   ,
	output logic [                   3-1:0] o_axi_m_ctx_arprot    ,
	output logic                            o_axi_m_ctx_arvalid   ,
	input  logic                            i_axi_m_ctx_arready   ,
	input  logic [  AXI_CTX_M_ID_WIDTH-1:0] i_axi_m_ctx_rid       ,
	input  logic [                  64-1:0] i_axi_m_ctx_rdata     ,
	input  logic [                   2-1:0] i_axi_m_ctx_rresp     ,
	input  logic                            i_axi_m_ctx_rlast     ,
	input  logic                            i_axi_m_ctx_rvalid    ,
	output logic                            o_axi_m_ctx_rready    ,
	// sidebands
	input  logic                            i_fet_sync_rst        ,
	input  logic [                   4-1:0] i_mps                 ,
	input  logic                            i_mrrs_128            ,
	input  logic                            i_mrrs_256            ,
	input  logic                            i_mrrs_512            ,
	input  logic [                  64-1:0] i_ob_base_addr        ,
	output logic [                   5-1:0] o_fsm                 ,
	output logic [FETCH_CMD_Q_ADDR_WIDTH:0] o_fetched_cmd_q_level ,
	input  logic                            i_sqfet_dummy_fetch_en,
	// clock, reset
	input  logic                            i_clk                 ,
	input  logic                            i_rstn
);

/////////////////////////////////////////////////////////////
// localparams
//////////////////////////////////////////////////////////////
localparam FETCH_CMD_Q_MAX_LEVEL = (FETCH_CMD_Q_ADDR_WIDTH==1)? 2 :
								   (FETCH_CMD_Q_ADDR_WIDTH==2)? 4 :
								   (FETCH_CMD_Q_ADDR_WIDTH==3)? 8 :
								   (FETCH_CMD_Q_ADDR_WIDTH==4)? 16 :
								   (FETCH_CMD_Q_ADDR_WIDTH==5)? 32 :
								   (FETCH_CMD_Q_ADDR_WIDTH==6)? 64 : 1;


/////////////////////////////////////////////////////////////
// internal signals
//////////////////////////////////////////////////////////////

	logic                 [FETCH_CMD_Q_ADDR_WIDTH+1-1:0] r_fetch_cnt             ;
	logic                 [FETCH_CMD_Q_ADDR_WIDTH+1-1:0] r_fetch_req_num         ;
	logic                 [FETCH_CMD_Q_ADDR_WIDTH+1-1:0] fetch_remain_cnt        ;
	logic                 [                       3-1:0] r_fetch_shift_cnt       ;
	logic                 [                    7*64-1:0] r_latched_cmd           ;
	fet_fetch_req_t                                      r_fetch_req_q_data      ;
	logic                 [                 8*64+41-1:0] fetched_cmd_q_wdata     ; // cmd q inteface
	logic                                                fetched_cmd_q_we        ;
	logic                 [                 8*64+41-1:0] fetched_cmd_q_rdata     ;
	logic                 [                    8*32-1:0] fetched_cmd_q_low_rdata ;
	logic                 [                 8*32+41-1:0] fetched_cmd_q_high_rdata;
	// logic                 [                    4*32-1:0] fetched_cmd_q_rdata_0   ;
	// logic                 [                    4*32-1:0] fetched_cmd_q_rdata_1   ;
	// logic                 [                    4*32-1:0] fetched_cmd_q_rdata_2   ;
	// logic                 [                 4*32+41-1:0] fetched_cmd_q_rdata_3   ;
	logic                                                fetched_cmd_q_re        ;
	logic                                                fetched_cmd_q_full      ;
	logic                                                fetched_cmd_q_empty     ;
	logic                 [    FETCH_CMD_Q_ADDR_WIDTH:0] cmd_q_vacancy           ;
	logic                 [    FETCH_CMD_Q_ADDR_WIDTH:0] fetched_cmd_q_level     ;
	logic                                                q_wrap                  ;
	logic                                                need_to_new_sq_base     ;
	logic                                                r_rerr_occured          ;
	logic                 [                      16-1:0] r_cur_sq_head           ;
	logic                 [                      64-1:0] r_axi_ctx_rdata         ;
	logic                 [    FETCH_CMD_Q_ADDR_WIDTH:0] max_req_num_mrrs        ;
	fet_fetched_cmd_hdr_t                                cur_header              ;
	fet_fetched_cmd_hdr_t                                saved_header            ;
	fet_sqfet_err_data_t                                 r_err_data              ;

typedef enum logic [5-1:0] {
	ST_IDLE 			   ,
	ST_ACCEPT_FETCH_REQ	   ,
	ST_CALC_REQ_NUM        ,
	ST_CALC_REQ_NUM_MRRS   ,
	ST_RD_SQ_PTR_ADDR	   ,
	ST_GET_SQ_PTR_ADDR     ,
	ST_UPDATE_SQ_ADDR_AW   ,
	ST_UPDATE_SQ_ADDR_W    ,
	ST_UPDATE_SQ_ADDR_B    ,
	ST_RD_SQ_ADDR 		   ,
	ST_GET_SQ_ADDR		   ,
	ST_RD_SQE 			   ,
	ST_GET_SQE 			   ,
	ST_UPDATE_SQ_HEAD_AW   ,
	ST_UPDATE_SQ_HEAD_W    ,
	ST_UPDATE_SQ_HEAD_B    ,
	ST_CHECK_FETCH_REQ_DONE,
	ST_POP_FETCH_REQ       ,
	ST_PUSH_ERR
} state_t;

state_t cur_state; // state
state_t nxt_state;

//////////////////////////////////////////////////////////////
// latch fetch request
//////////////////////////////////////////////////////////////
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_fetch_req_q_data <= 'b0;
	end
	else if(cur_state==ST_ACCEPT_FETCH_REQ) begin
		r_fetch_req_q_data <= i_fetch_req_q_data;
	end
end

// always_comb cur_sq_head = r_fetch_req_q_data.sq_head + r_fetch_cnt;
// always_comb cur_sq_head = ((r_cur_sq_head + r_fetch_1_round_cnt) > (r_fetch_req_q_data.sq_size + 16'd1))? (r_cur_sq_head + r_fetch_1_round_cnt - r_fetch_req_q_data.sq_size - 1) : r_cur_sq_head + r_fetch_cnt;

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_cur_sq_head <= 16'b0;
	end
	else if(cur_state==ST_ACCEPT_FETCH_REQ) begin
		r_cur_sq_head = i_fetch_req_q_data.sq_head;
	end
	else if(cur_state==ST_GET_SQE) begin
        if(i_sqfet_dummy_fetch_en) begin
            if( (r_fetch_shift_cnt[0+:3]==3'd7) ) begin
                if(r_cur_sq_head == r_fetch_req_q_data.sq_size) begin
                    r_cur_sq_head <= 16'd0;
                end
                else begin
                    r_cur_sq_head <= r_cur_sq_head + 16'd1;
                end
            end
        end
        else begin
            if( (r_fetch_shift_cnt[0+:3]==3'd7) & i_axi_m_ob_rvalid ) begin
                if(r_cur_sq_head == r_fetch_req_q_data.sq_size) begin
                    r_cur_sq_head <= 16'd0;
                end
                else begin
                    r_cur_sq_head <= r_cur_sq_head + 16'd1;
                end
            end
        end
	end
	// else if(cur_state==ST_UPDATE_SQ_HEAD_B) begin
	// 	if(i_axi_m_ctx_bvalid) begin
	// 		if(i_axi_m_ctx_bresp == 2'd0) begin
	// 			r_cur_sq_head = cur_sq_head;
	// 		end
	// 	end
	// end
end


always_comb begin
	case({i_mrrs_512, i_mrrs_256, i_mrrs_128})
		3'b001: max_req_num_mrrs = 'd2;
		3'b010: max_req_num_mrrs = 'd4;
		3'b100: max_req_num_mrrs = 'd8;
		default: max_req_num_mrrs = 'd2;
	endcase
end

//////////////////////////////////////////////////////////////
// calculate command to be requested
//////////////////////////////////////////////////////////////
always_comb cmd_q_vacancy = FETCH_CMD_Q_MAX_LEVEL - fetched_cmd_q_level;
always_comb q_wrap = (r_cur_sq_head + fetch_remain_cnt) > (r_fetch_req_q_data.sq_size + 1);

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_fetch_req_num <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'b0}};
	end
	else if(cur_state==ST_CALC_REQ_NUM) begin
		if(q_wrap)
			r_fetch_req_num <= ((r_fetch_req_q_data.sq_size + 16'd1 - r_cur_sq_head) > cmd_q_vacancy)? cmd_q_vacancy : (r_fetch_req_q_data.sq_size + 16'd1 - r_cur_sq_head);
		else
			r_fetch_req_num <= (fetch_remain_cnt > cmd_q_vacancy)? cmd_q_vacancy : fetch_remain_cnt;
	end
	else if(cur_state==ST_CALC_REQ_NUM_MRRS) begin
		if(r_fetch_req_num > max_req_num_mrrs)
			r_fetch_req_num <= max_req_num_mrrs;
	end
end

//////////////////////////////////////////////////////////////
// fetch count accumulation
//////////////////////////////////////////////////////////////

// fetch count
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_fetch_cnt <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'b0}};
	end
	else if(cur_state==ST_ACCEPT_FETCH_REQ) begin
		r_fetch_cnt <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'b0}};
	end
	else if(cur_state==ST_GET_SQE) begin
		if(i_sqfet_dummy_fetch_en) begin
			if( (r_fetch_shift_cnt[0+:3]==3'd7) ) begin
				r_fetch_cnt <= r_fetch_cnt + 1;
			end
		end
		else begin
			if( (r_fetch_shift_cnt[0+:3]==3'd7) & i_axi_m_ob_rvalid ) begin
				r_fetch_cnt <= r_fetch_cnt + 1;
			end
		end
	end
end

// TODO: to be removed
logic [FETCH_CMD_Q_ADDR_WIDTH+1-1:0] r_fetch_cnt_temp;

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_fetch_cnt_temp <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'b0}};
	end
	else if( (cur_state==ST_ACCEPT_FETCH_REQ) | (cur_state==ST_RD_SQE) ) begin
		r_fetch_cnt_temp <= {(FETCH_CMD_Q_ADDR_WIDTH+1){1'b0}};
	end
	else if(cur_state==ST_GET_SQE) begin
        if( (r_fetch_shift_cnt[0+:3]==3'd7) ) begin
            r_fetch_cnt_temp <= r_fetch_cnt_temp + 1;
        end
	end
end


// fetch shift count
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_fetch_shift_cnt <= 3'd0;
	end
	else if(cur_state==ST_ACCEPT_FETCH_REQ) begin
		r_fetch_shift_cnt <= 3'd0;
	end
	else if(cur_state==ST_GET_SQE) begin
        if(i_sqfet_dummy_fetch_en) begin
            r_fetch_shift_cnt <= r_fetch_shift_cnt + 1;
        end
        else begin
            if( i_axi_m_ob_rvalid & (i_axi_m_ob_rresp == 2'd0)) begin
                r_fetch_shift_cnt <= r_fetch_shift_cnt + 1;
            end
        end
	end
end

always_comb fetch_remain_cnt = r_fetch_req_q_data.fetch_num - r_fetch_cnt;

//////////////////////////////////////////////////////////////
// accumulated cmd
//////////////////////////////////////////////////////////////

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_latched_cmd <= {(64*7){1'd0}};
	end
	else if(cur_state==ST_GET_SQE) begin
        if(i_sqfet_dummy_fetch_en) begin
            r_latched_cmd <= {64'd0, r_latched_cmd[64+:(64*7-64)]};
        end
        else begin
            if( i_axi_m_ob_rvalid ) begin
                r_latched_cmd <= {i_axi_m_ob_rdata, r_latched_cmd[64+:(64*7-64)]};
            end
        end
	end
end


//////////////////////////////////////////////////////////////
// cmd q interface
//////////////////////////////////////////////////////////////
always_comb cur_header.sq_id   = r_fetch_req_q_data.sq_id;
always_comb cur_header.cq_id   = r_fetch_req_q_data.cq_id;
always_comb cur_header.func_id = r_fetch_req_q_data.func_id;
always_comb cur_header.port_id = r_fetch_req_q_data.port_id;

always_comb fetched_cmd_q_wdata  = i_sqfet_dummy_fetch_en? {cur_header[0+:41], 64'd0, r_latched_cmd} : {cur_header[0+:41], i_axi_m_ob_rdata, r_latched_cmd};
always_comb fetched_cmd_q_we     = i_sqfet_dummy_fetch_en? (cur_state==ST_GET_SQE) & (r_fetch_shift_cnt==3'd7) : (cur_state==ST_GET_SQE) & (r_fetch_shift_cnt==3'd7) & i_axi_m_ob_rvalid;
always_comb fetched_cmd_q_re     = i_fetched_cmd_q_pop & ~fetched_cmd_q_empty;

always_comb saved_header = fetched_cmd_q_rdata[64*8+:41];
always_comb o_fetched_cmd_q_data.cmd_header.sq_id   = { {(16-NUM_OF_QUE_WIDTH){1'b0}}, saved_header.sq_id[0+:NUM_OF_QUE_WIDTH] };
always_comb o_fetched_cmd_q_data.cmd_header.cq_id   = saved_header.cq_id;
always_comb o_fetched_cmd_q_data.cmd_header.func_id = saved_header.func_id;
always_comb o_fetched_cmd_q_data.cmd_header.port_id = saved_header.port_id;
always_comb o_fetched_cmd_q_data.cmd_header.prp_err = saved_header.prp_err;
always_comb o_fetched_cmd_q_data.cmd_header.rsvd    = saved_header.rsvd;
always_comb o_fetched_cmd_q_data.nvme_cmd_1         = fetched_cmd_q_rdata[128+:(512-128)];
always_comb o_fetched_cmd_q_data.nvme_cmd_0         = fetched_cmd_q_rdata[0+:64];
always_comb o_fetched_cmd_q_empty                   = fetched_cmd_q_empty;

//////////////////////////////////////////////////////////////
// physically non-contiguous Q
//////////////////////////////////////////////////////////////
// TODO : add physically non-contiguous handling logic
always_comb need_to_new_sq_base = 1'b0;

// accumulate read error
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_rerr_occured <= 1'b0;
	end
	else if(cur_state==ST_CALC_REQ_NUM) begin
		r_rerr_occured <= 1'b0;
	end
	else if(cur_state==ST_RD_SQE) begin
		if(i_sqfet_dummy_fetch_en) begin
			r_rerr_occured <= 1'b0;
		end
		else begin
			if( i_axi_m_ob_rvalid & (i_axi_m_ob_rresp != 2'd0)) begin
				r_rerr_occured <= 1'b1;
			end
		end
	end
end

//////////////////////////////////////////////////////////////
// axi signal driving(to CTX)
//////////////////////////////////////////////////////////////

// AW channel
always_comb begin
	o_axi_m_ctx_awid    = AXI_CTX_SQFETR_BASE_ID;
	o_axi_m_ctx_awlen   = {(                   8){1'b0}};
	o_axi_m_ctx_awlock  = {(                   1){1'b0}};
	o_axi_m_ctx_awcache = {(                   4){1'b0}};
	o_axi_m_ctx_awprot  = {(                   3){1'b0}};
	// incremental burst
	o_axi_m_ctx_awburst = 2'd1;
	// 8B
	o_axi_m_ctx_awsize  = 3'd3;

	case(cur_state)
		ST_UPDATE_SQ_HEAD_AW: begin
			o_axi_m_ctx_awvalid = 1'b1;
			o_axi_m_ctx_awaddr  = SRAM_SQ_CTX_BASE + {i_fetch_req_q_data.sq_id, 5'd0};
		end
		default: begin
			o_axi_m_ctx_awvalid = 1'b0;
			o_axi_m_ctx_awaddr  = {(    AXI_CTX_M_ADDR_WIDTH){1'b0}};
		end
	endcase
end

// W channel
always_comb begin
	case(cur_state)
		ST_UPDATE_SQ_HEAD_W : begin
			o_axi_m_ctx_wdata  = {32'd0, r_cur_sq_head, 16'd0};
			o_axi_m_ctx_wstrb  = 'hC;
			o_axi_m_ctx_wlast  = 1'b1;
			o_axi_m_ctx_wvalid = 1'b1;
		end
		default : begin
			o_axi_m_ctx_wdata  = {(    64){1'b0}};
			o_axi_m_ctx_wstrb  = {(     8){1'b0}};
			o_axi_m_ctx_wlast  = {(     1){1'b0}};
			o_axi_m_ctx_wvalid = {(     1){1'b0}};
		end
	endcase
end

// B channel
always_comb begin
	if(cur_state==ST_UPDATE_SQ_HEAD_B)
		o_axi_m_ctx_bready = 1'b1;
	else
		o_axi_m_ctx_bready = 1'b0;
end

// AR channel
always_comb begin
	o_axi_m_ctx_arid    = AXI_CTX_SQFETR_BASE_ID;
	o_axi_m_ctx_arlen   = 8'd0;
	o_axi_m_ctx_arlock  = 1'b0;
	o_axi_m_ctx_arcache = 4'd0;
	o_axi_m_ctx_arprot  = 3'd0;
	o_axi_m_ctx_arsize  = 3'd3;
	o_axi_m_ctx_arburst = 2'd1;

	case(cur_state)
		ST_RD_SQ_ADDR: begin
			o_axi_m_ctx_arvalid = 1'b1;
			o_axi_m_ctx_araddr  = SRAM_SQ_CTX_BASE + {r_fetch_req_q_data.sq_id, 5'd16};
		end
		default: begin
			o_axi_m_ctx_arvalid = 1'b0;
			o_axi_m_ctx_araddr  = {(    AXI_CTX_M_ADDR_WIDTH){1'b0}};
		end
	endcase
end

// R channel
always_comb begin
	case(cur_state)
		ST_GET_SQ_ADDR : o_axi_m_ctx_rready = 1'b1;
		default        : o_axi_m_ctx_rready = 1'b0;
	endcase
end

// latch rdata
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_axi_ctx_rdata <= {64{1'b0}};
	end
	else if(i_axi_m_ctx_rvalid & o_axi_m_ctx_rready) begin
		r_axi_ctx_rdata <= i_axi_m_ctx_rdata;
	end
end

//////////////////////////////////////////////////////////////
// axi signal driving(to Outbound)
//////////////////////////////////////////////////////////////
// AW, W channel
always_comb begin
	 o_axi_m_ob_awid    = {(      AXI_OB_M_ID_WIDTH){1'b0}};
	 o_axi_m_ob_awaddr  = {(    AXI_OB_M_ADDR_WIDTH){1'b0}};
	 o_axi_m_ob_awlen   = {(                      8){1'b0}};
	 o_axi_m_ob_awsize  = {(                      3){1'b0}};
	 o_axi_m_ob_awburst = {(                      2){1'b0}};
	 o_axi_m_ob_awlock  = {(                      1){1'b0}};
	 o_axi_m_ob_awcache = {(                      4){1'b0}};
	 o_axi_m_ob_awprot  = {(                      3){1'b0}};
	 o_axi_m_ob_awvalid = {(                      1){1'b0}};
	 o_axi_m_ob_wdata   = {(                     64){1'b0}};
	 o_axi_m_ob_wstrb   = {( 		         (64/8)){1'b0}};
	 o_axi_m_ob_wlast   = {(                      1){1'b0}};
	 o_axi_m_ob_wvalid  = {(                      1){1'b0}};
	 o_axi_m_ob_bready  = {(                      1){1'b0}};
end

// AR channel
always_comb begin
	o_axi_m_ob_arid    = {AXI_OB_M_ID_WIDTH{1'b0}};
	o_axi_m_ob_arsize  = 3'd3;
	o_axi_m_ob_arburst = 2'd1;
	o_axi_m_ob_arlock  = 1'b0;
	o_axi_m_ob_arcache = 4'd0;
	o_axi_m_ob_arprot  = 3'd0;

	case(cur_state)
		ST_RD_SQE : begin
			o_axi_m_ob_arvalid = (i_sqfet_dummy_fetch_en)? 1'b0 : 1'b1;
			o_axi_m_ob_araddr  = i_ob_base_addr[0+:AXI_OB_M_ADDR_WIDTH] + r_axi_ctx_rdata[0+:AXI_OB_M_ADDR_WIDTH] + {{(AXI_OB_M_ADDR_WIDTH-16-6){1'b0}}, r_cur_sq_head, 6'd0};
			o_axi_m_ob_arlen   = {{(8-FETCH_CMD_Q_ADDR_WIDTH-1-3){1'b0}}, r_fetch_req_num, 3'd0} - 8'd1;
		end
		default: begin
			o_axi_m_ob_arvalid = 1'b0;
			o_axi_m_ob_araddr  = {(    AXI_CTX_M_ADDR_WIDTH){1'b0}};
			o_axi_m_ob_arlen   = 8'd0;
		end
	endcase
end

// R channel
always_comb begin
	case(cur_state)
        ST_GET_SQE : begin
            if(i_sqfet_dummy_fetch_en)
                o_axi_m_ob_rready = 1'b0;
            else
                o_axi_m_ob_rready = 1'b1;
        end
		default    : o_axi_m_ob_rready = 1'b0;
	endcase
end

//////////////////////////////////////////////////////////////
// fetch request accept
//////////////////////////////////////////////////////////////
always_comb o_fetch_req_q_pop = (cur_state==ST_POP_FETCH_REQ);

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
			if(~i_err_exist & ~i_fet_sync_rst & ~i_fetch_req_q_empty & ~fetched_cmd_q_full & (|cmd_q_vacancy)) begin
				nxt_state = ST_ACCEPT_FETCH_REQ;
			end
			else begin
				nxt_state = ST_IDLE;
			end
		end
		ST_ACCEPT_FETCH_REQ: begin
			nxt_state = ST_CALC_REQ_NUM;
		end
		ST_CALC_REQ_NUM: begin
			nxt_state = ST_CALC_REQ_NUM_MRRS;
		end
		ST_CALC_REQ_NUM_MRRS: begin
			if(!r_fetch_req_q_data.pc | !r_fetch_req_q_data.prpv) begin
				if(need_to_new_sq_base) begin
					nxt_state = ST_RD_SQ_PTR_ADDR;
				end
				else if(~|r_fetch_cnt) begin
					nxt_state = ST_RD_SQ_ADDR;
				end
				else begin
					nxt_state = ST_RD_SQE;
				end
			end
			else if(~|r_fetch_cnt) begin
				nxt_state = ST_RD_SQ_ADDR;
			end
			else begin
				nxt_state = ST_RD_SQE;
			end
		end
		ST_RD_SQ_PTR_ADDR: begin
			if(i_axi_m_ctx_arready)
				nxt_state = ST_GET_SQ_PTR_ADDR;
			else
				nxt_state = ST_RD_SQ_PTR_ADDR;
		end
		ST_GET_SQ_PTR_ADDR: begin
			if(i_axi_m_ctx_rvalid)
				nxt_state = ST_UPDATE_SQ_ADDR_AW;
			else
				nxt_state = ST_GET_SQ_PTR_ADDR;
		end
		ST_UPDATE_SQ_ADDR_AW: begin
			if(i_axi_m_ctx_awready)
				nxt_state = ST_UPDATE_SQ_ADDR_W;
			else
				nxt_state = ST_UPDATE_SQ_ADDR_AW;
		end
		ST_UPDATE_SQ_ADDR_W: begin
			if(i_axi_m_ctx_wready)
				nxt_state = ST_UPDATE_SQ_ADDR_B;
			else
				nxt_state = ST_UPDATE_SQ_ADDR_W;
		end
		ST_UPDATE_SQ_ADDR_B: begin
			if(i_axi_m_ctx_bvalid) begin
				if(i_axi_m_ctx_bresp != 2'd0)
					nxt_state = ST_PUSH_ERR;
				else
					nxt_state = ST_RD_SQE;
			end
			else
				nxt_state = ST_UPDATE_SQ_ADDR_B;
		end
		ST_RD_SQ_ADDR: begin
			if(i_axi_m_ctx_arready)
				nxt_state = ST_GET_SQ_ADDR;
			else
				nxt_state = ST_RD_SQ_ADDR;
		end
		ST_GET_SQ_ADDR: begin
			if(i_axi_m_ctx_rvalid)
				nxt_state = ST_RD_SQE;
			else
				nxt_state = ST_GET_SQ_ADDR;
		end
		ST_RD_SQE: begin
			if(i_sqfet_dummy_fetch_en) begin
				nxt_state = ST_GET_SQE;
			end
			else begin
				if(i_axi_m_ob_arready)
					nxt_state = ST_GET_SQE;
				else
					nxt_state = ST_RD_SQE;
			end
		end
		ST_GET_SQE: begin
            if(i_sqfet_dummy_fetch_en) begin
                if(r_fetch_cnt_temp==r_fetch_req_num) begin
                    nxt_state = ST_UPDATE_SQ_HEAD_AW;
                end
                else begin
                    nxt_state = ST_GET_SQE;
                end
            end
            else begin
                if(i_axi_m_ob_rvalid & i_axi_m_ob_rlast) begin
                    if(r_rerr_occured | (i_axi_m_ob_rresp != 2'd0)) begin
                        nxt_state = ST_PUSH_ERR;
                    end
                    else begin
                        nxt_state = ST_UPDATE_SQ_HEAD_AW;
                    end
                end
                else begin
                    nxt_state = ST_GET_SQE;
                end
            end
		end
		ST_UPDATE_SQ_HEAD_AW: begin
			if(i_axi_m_ctx_awready)
				nxt_state = ST_UPDATE_SQ_HEAD_W;
			else
				nxt_state = ST_UPDATE_SQ_HEAD_AW;
		end
		ST_UPDATE_SQ_HEAD_W: begin
			if(i_axi_m_ctx_wready)
				nxt_state = ST_UPDATE_SQ_HEAD_B;
			else
				nxt_state = ST_UPDATE_SQ_HEAD_W;
		end
		ST_UPDATE_SQ_HEAD_B: begin
			if(i_axi_m_ctx_bvalid) begin
				if(i_axi_m_ctx_bresp != 2'd0)
					nxt_state = ST_PUSH_ERR;
				else
					nxt_state = ST_CHECK_FETCH_REQ_DONE;
			end
			else
				nxt_state = ST_UPDATE_SQ_HEAD_B;
		end
		ST_CHECK_FETCH_REQ_DONE: begin
			if(r_fetch_cnt==r_fetch_req_q_data.fetch_num) begin
				nxt_state = ST_POP_FETCH_REQ;
			end
			else if((r_fetch_cnt < r_fetch_req_q_data.fetch_num) & (|cmd_q_vacancy)) begin
				nxt_state = ST_CALC_REQ_NUM;
			end
			else begin
				nxt_state = ST_CHECK_FETCH_REQ_DONE;
			end
		end
		ST_POP_FETCH_REQ: begin
			nxt_state = ST_IDLE;
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
// error q interface
//////////////////////////////////////////////////////////////

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_last_req_ctx_raddr <= 32'd0;
	end
	else if(o_axi_m_ctx_arvalid & i_axi_m_ctx_arready) begin
		o_last_req_ctx_raddr <= o_axi_m_ctx_araddr;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_last_req_ctx_waddr <= 32'd0;
	end
	else if(o_axi_m_ctx_awvalid & i_axi_m_ctx_awready) begin
		o_last_req_ctx_waddr <= o_axi_m_ctx_awaddr;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_last_req_ob_raddr <= 64'd0;
	end
	else if(o_axi_m_ob_arvalid & i_axi_m_ob_arready) begin
		o_last_req_ob_raddr <= o_axi_m_ob_araddr;
	end
end

always_comb o_err_push_req   = (cur_state==ST_PUSH_ERR);
always_comb o_err_data       = r_err_data;

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_err_data <= 32'd0;
    end
    else begin
		case(cur_state)
			ST_UPDATE_SQ_ADDR_B: begin
				if(i_axi_m_ctx_bvalid) begin
					if(i_axi_m_ctx_bresp != 2'd0)
						r_err_data.update_sq_addr_bresp_err <= 1'b1;
				end
			end

			ST_GET_SQE: begin
	            if(~i_sqfet_dummy_fetch_en & i_axi_m_ob_rvalid & i_axi_m_ob_rlast) begin
	                if(r_rerr_occured | (i_axi_m_ob_rresp != 2'd0)) begin
	                    r_err_data.get_sqe_rresp_err <= 1'b1;
	                end
	            end
			end
			ST_UPDATE_SQ_HEAD_B: begin
				if(i_axi_m_ctx_bvalid) begin
					if(i_axi_m_ctx_bresp != 2'd0)
						r_err_data.update_sq_head_bresp_err <= 1'b1;
				end
			end

            default: begin
                r_err_data <= 32'd0;
            end
	    endcase
	end
end


always_comb o_fetched_cmd_q_level = fetched_cmd_q_level;


// sync_fifo_reg #(
// 	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
// 	.DATA_WIDTH((8*64)/2              )
// ) u_fetched_cmd_q (
// 	.i_clk  (i_clk              ),
// 	.i_rstn (i_rstn             ),
// 	// TODO: fet command q sync reset
// 	.i_clr  (i_fet_sync_rst     ),
// 	.i_din  (fetched_cmd_q_wdata),
// 	.i_we   (fetched_cmd_q_we   ),
// 	.o_dout (fetched_cmd_q_rdata),
// 	.i_re   (fetched_cmd_q_re   ),
// 	.o_full (fetched_cmd_q_full ),
// 	.o_empty(fetched_cmd_q_empty),
// 	.o_level(fetched_cmd_q_level)
// );

always_comb fetched_cmd_q_rdata = {fetched_cmd_q_high_rdata, fetched_cmd_q_low_rdata};

sync_fifo_reg #(
	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
	.DATA_WIDTH((8*64)/2              )
) u_fetched_cmd_low_q (
	.i_clk  (i_clk                       ),
	.i_rstn (i_rstn                      ),
	// TODO: fet command q sync reset
	.i_clr  (i_fet_sync_rst              ),
	.i_din  (fetched_cmd_q_wdata[0+:8*32]),
	.i_we   (fetched_cmd_q_we            ),
	.o_dout (fetched_cmd_q_low_rdata     ),
	.i_re   (fetched_cmd_q_re            ),
	.o_full (fetched_cmd_q_full          ),
	.o_empty(fetched_cmd_q_empty         ),
	.o_level(fetched_cmd_q_level         )
);


sync_fifo_reg #(
	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
	.DATA_WIDTH((8*64/2) + 41         )
) u_fetched_cmd_high_q (
	.i_clk  (i_clk                               ),
	.i_rstn (i_rstn                              ),
	// TODO: fet command q sync reset
	.i_clr  (i_fet_sync_rst                      ),
	.i_din  (fetched_cmd_q_wdata[8*32+:(8*32+41)]),
	.i_we   (fetched_cmd_q_we                    ),
	.o_dout (fetched_cmd_q_high_rdata            ),
	.i_re   (fetched_cmd_q_re                    ),
	.o_full (                                    ),
	.o_empty(                                    ),
	.o_level(                                    )
);


// always_comb fetched_cmd_q_rdata = {fetched_cmd_q_rdata_3, fetched_cmd_q_rdata_2, fetched_cmd_q_rdata_1, fetched_cmd_q_rdata_0};

// sync_fifo_reg #(
// 	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
// 	.DATA_WIDTH((8*64)/4              )
// ) u_fetched_cmd_q_0 (
// 	.i_clk  (i_clk                       ),
// 	.i_rstn (i_rstn                      ),
// 	// TODO: fet command q sync reset
// 	.i_clr  (i_fet_sync_rst              ),
// 	.i_din  (fetched_cmd_q_wdata[0+:4*32]),
// 	.i_we   (fetched_cmd_q_we            ),
// 	.o_dout (fetched_cmd_q_rdata_0       ),
// 	.i_re   (fetched_cmd_q_re            ),
// 	.o_full (fetched_cmd_q_full          ),
// 	.o_empty(fetched_cmd_q_empty         ),
// 	.o_level(fetched_cmd_q_level         )
// );

// sync_fifo_reg #(
// 	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
// 	.DATA_WIDTH((8*64)/4              )
// ) u_fetched_cmd_q_1 (
// 	.i_clk  (i_clk                          ),
// 	.i_rstn (i_rstn                         ),
// 	// TODO: fet command q sync reset
// 	.i_clr  (i_fet_sync_rst                 ),
// 	.i_din  (fetched_cmd_q_wdata[4*32+:4*32]),
// 	.i_we   (fetched_cmd_q_we               ),
// 	.o_dout (fetched_cmd_q_rdata_1          ),
// 	.i_re   (fetched_cmd_q_re               ),
// 	.o_full (                               ),
// 	.o_empty(                               ),
// 	.o_level(                               )
// );

// sync_fifo_reg #(
// 	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
// 	.DATA_WIDTH((8*64)/4              )
// ) u_fetched_cmd_q_2 (
// 	.i_clk  (i_clk                          ),
// 	.i_rstn (i_rstn                         ),
// 	// TODO: fet command q sync reset
// 	.i_clr  (i_fet_sync_rst                 ),
// 	.i_din  (fetched_cmd_q_wdata[8*32+:4*32]),
// 	.i_we   (fetched_cmd_q_we               ),
// 	.o_dout (fetched_cmd_q_rdata_2          ),
// 	.i_re   (fetched_cmd_q_re               ),
// 	.o_full (                               ),
// 	.o_empty(                               ),
// 	.o_level(                               )
// );

// sync_fifo_reg #(
// 	.ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
// 	.DATA_WIDTH((4*64/2) + 41         )
// ) u_fetched_cmd_3(
// 	.i_clk  (i_clk                                ),
// 	.i_rstn (i_rstn                               ),
// 	// TODO: fet command q sync reset
// 	.i_clr  (i_fet_sync_rst                       ),
// 	.i_din  (fetched_cmd_q_wdata[12*32+:(4*32+41)]),
// 	.i_we   (fetched_cmd_q_we                     ),
// 	.o_dout (fetched_cmd_q_rdata_3                ),
// 	.i_re   (fetched_cmd_q_re                     ),
// 	.o_full (                                     ),
// 	.o_empty(                                     ),
// 	.o_level(                                     )
// );



endmodule
