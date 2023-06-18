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

`include "../../../common/design/rtl/typedef_command_context_table.sv"
`include "fet_type_defines.sv"

module fet_cmd_poster #(
	parameter AXI_CTX_M_ID_WIDTH    = 1                      ,
	parameter AXI_CTX_M_ADDR_WIDTH  = 32                     ,
	parameter NUM_OF_QUE_WIDTH      = 1                      ,
	parameter NUM_OF_OST_CMD_WIDTH  = 9                      ,
	parameter SRAM_CCT_BASE         = 1                      ,
	parameter SRAM_CCT_HDR_BASE     = 1                      ,
	parameter AXI_CTX_POSTR_BASE_ID = 2                      ,
	parameter HWA_M_STRM_DATA_WIDTH = 512                    ,
	parameter HWA_M_STRM_KEEP_WIDTH = HWA_M_STRM_DATA_WIDTH/8,
	parameter HWA_M_STRM_STRB_WIDTH = HWA_M_STRM_DATA_WIDTH/8,
	parameter HWA_M_STRM_ID_WIDTH   = 2                      ,
	parameter HWA_M_STRM_DEST_WIDTH = 2                      ,
	parameter HWA_M_STRM_WR_DEST    = 0                      ,
	parameter HWA_M_STRM_RD_DEST    = 1                      ,
	parameter FW_M_STRM_DATA_WIDTH  = 8                      ,
	parameter FW_M_STRM_KEEP_WIDTH  = FW_M_STRM_DATA_WIDTH/8 ,
	parameter FW_M_STRM_STRB_WIDTH  = FW_M_STRM_DATA_WIDTH/8 ,
	parameter FW_M_STRM_ID_WIDTH    = 2                      ,
	parameter FW_M_STRM_DEST_WIDTH  = 2
) (
	// cmd q interface
	output logic                             o_fetched_cmd_q_pop       ,
	input  fet_fetched_cmd_t                 i_fetched_cmd_q_data      ,
	input  logic                             i_fetched_cmd_q_empty     ,
	// tag q interface
	output logic                             o_tag_q_pop               ,
	input  logic [ NUM_OF_OST_CMD_WIDTH-1:0] i_tag_q_data              ,
	input  logic                             i_tag_q_empty             ,
	// tag post q interface
	output logic                             o_post_tag_q_push         ,
	output logic [ NUM_OF_OST_CMD_WIDTH-1:0] o_post_tag_q_data         ,
	input  logic                             i_post_tag_q_full         ,
	// error q interface
	output logic                             o_err_push_req            ,
	output fet_postr_err_data_t              o_err_data                ,
	input  logic                             i_err_push_ack            ,
	input  logic                             i_err_exist               ,
	output logic [                   32-1:0] o_last_req_ctx_waddr      ,
	// axi master for ctx access
	output logic [   AXI_CTX_M_ID_WIDTH-1:0] o_axi_m_ctx_awid          ,
	output logic [ AXI_CTX_M_ADDR_WIDTH-1:0] o_axi_m_ctx_awaddr        ,
	output logic [                    8-1:0] o_axi_m_ctx_awlen         ,
	output logic [                    3-1:0] o_axi_m_ctx_awsize        ,
	output logic [                    2-1:0] o_axi_m_ctx_awburst       ,
	output logic                             o_axi_m_ctx_awlock        ,
	output logic [                    4-1:0] o_axi_m_ctx_awcache       ,
	output logic [                    3-1:0] o_axi_m_ctx_awprot        ,
	output logic                             o_axi_m_ctx_awvalid       ,
	input  logic                             i_axi_m_ctx_awready       ,
	output logic [                   64-1:0] o_axi_m_ctx_wdata         ,
	output logic [               (64/8)-1:0] o_axi_m_ctx_wstrb         ,
	output logic                             o_axi_m_ctx_wlast         ,
	output logic                             o_axi_m_ctx_wvalid        ,
	input  logic                             i_axi_m_ctx_wready        ,
	input  logic [   AXI_CTX_M_ID_WIDTH-1:0] i_axi_m_ctx_bid           ,
	input  logic [                    2-1:0] i_axi_m_ctx_bresp         ,
	input  logic                             i_axi_m_ctx_bvalid        ,
	output logic                             o_axi_m_ctx_bready        ,
	output logic [   AXI_CTX_M_ID_WIDTH-1:0] o_axi_m_ctx_arid          ,
	output logic [ AXI_CTX_M_ADDR_WIDTH-1:0] o_axi_m_ctx_araddr        ,
	output logic [                    8-1:0] o_axi_m_ctx_arlen         ,
	output logic [                    3-1:0] o_axi_m_ctx_arsize        ,
	output logic [                    2-1:0] o_axi_m_ctx_arburst       ,
	output logic                             o_axi_m_ctx_arlock        ,
	output logic [                    4-1:0] o_axi_m_ctx_arcache       ,
	output logic [                    3-1:0] o_axi_m_ctx_arprot        ,
	output logic                             o_axi_m_ctx_arvalid       ,
	input  logic                             i_axi_m_ctx_arready       ,
	input  logic [   AXI_CTX_M_ID_WIDTH-1:0] i_axi_m_ctx_rid           ,
	input  logic [                   64-1:0] i_axi_m_ctx_rdata         ,
	input  logic [                    2-1:0] i_axi_m_ctx_rresp         ,
	input  logic                             i_axi_m_ctx_rlast         ,
	input  logic                             i_axi_m_ctx_rvalid        ,
	output logic                             o_axi_m_ctx_rready        ,
	output logic                             o_fet_to_htr_axis_tvalid  ,
	input  logic                             i_fet_to_htr_axis_tready  ,
	output logic                             o_fet_to_htr_axis_tlast   ,
	output logic [  HWA_M_STRM_ID_WIDTH-1:0] o_fet_to_htr_axis_tid     ,
	output logic [HWA_M_STRM_DEST_WIDTH-1:0] o_fet_to_htr_axis_tdest   ,
	output logic [HWA_M_STRM_DATA_WIDTH-1:0] o_fet_to_htr_axis_tdata   ,
	output logic [HWA_M_STRM_KEEP_WIDTH-1:0] o_fet_to_htr_axis_tkeep   ,
	output logic [HWA_M_STRM_STRB_WIDTH-1:0] o_fet_to_htr_axis_tstrb   ,
	output logic                             o_fet_to_htw_axis_tvalid  ,
	input  logic                             i_fet_to_htw_axis_tready  ,
	output logic                             o_fet_to_htw_axis_tlast   ,
	output logic [  HWA_M_STRM_ID_WIDTH-1:0] o_fet_to_htw_axis_tid     ,
	output logic [HWA_M_STRM_DEST_WIDTH-1:0] o_fet_to_htw_axis_tdest   ,
	output logic [HWA_M_STRM_DATA_WIDTH-1:0] o_fet_to_htw_axis_tdata   ,
	output logic [HWA_M_STRM_KEEP_WIDTH-1:0] o_fet_to_htw_axis_tkeep   ,
	output logic [HWA_M_STRM_STRB_WIDTH-1:0] o_fet_to_htw_axis_tstrb   ,
	// command posting to FW
	output logic                             o_fet_to_fw_axis_tvalid   ,
	input  logic                             i_fet_to_fw_axis_tready   ,
	output logic                             o_fet_to_fw_axis_tlast    ,
	output logic [   FW_M_STRM_ID_WIDTH-1:0] o_fet_to_fw_axis_tid      ,
	output logic [ FW_M_STRM_DEST_WIDTH-1:0] o_fet_to_fw_axis_tdest    ,
	output logic [ FW_M_STRM_DATA_WIDTH-1:0] o_fet_to_fw_axis_tdata    ,
	output logic [ FW_M_STRM_KEEP_WIDTH-1:0] o_fet_to_fw_axis_tkeep    ,
	output logic [ FW_M_STRM_STRB_WIDTH-1:0] o_fet_to_fw_axis_tstrb    ,
	// sidebands
	input  logic                             i_cct_posting_en          ,
	input  logic                             i_stream_posting_en       ,
	input  logic                             i_fet_sync_rst            ,
	input  logic [                    8-1:0] i_to_be_posted_opcode_htr0,
	input  logic [                    8-1:0] i_to_be_posted_opcode_htr1,
	input  logic [                    8-1:0] i_to_be_posted_opcode_htw0,
	input  logic [                    8-1:0] i_to_be_posted_opcode_htw1,
	input  logic [                    4-1:0] i_to_be_posted_opcode_en  ,
	output logic [                    4-1:0] o_fsm                     ,
	output logic [                   16-1:0] o_cct_push_cnt            ,
	output logic [                   16-1:0] o_stream_push_cnt         ,
	output logic                             o_prp_err_push            ,
	output logic [                   64-1:0] o_prp_err_data            ,
	// clock, reset
	input  logic                             i_clk                     ,
	input  logic                             i_rstn
);

/////////////////////////////////////////////////////////////
// localparams
//////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////
// internal signals
//////////////////////////////////////////////////////////////
// fet_fetched_cmd_hdr_t                              cmd_header      ;
command_context_table_t                            nvme_cmd             ;
logic                                              prp_err              ;
logic                   [                   3-1:0] r_post_cnt           ;
logic                   [NUM_OF_OST_CMD_WIDTH-1:0] r_tag                ;
fet_fetched_cmd_t                                  to_be_posted_cmd     ;
fet_fetched_cmd_t                                  to_be_posted_cmd_temp;
logic                   [                 512-1:0] r_to_be_posted_cmd   ;
fet_postr_err_data_t                               r_err_data           ;
logic                                              htr_post_hit         ;
logic                                              htr_post_hit0        ;
logic                                              htr_post_hit1        ;
logic                                              htw_post_hit         ;
logic                                              htw_post_hit0        ;
logic                                              htw_post_hit1        ;
logic                                              post_block           ;
logic                                              unalign_prp_cmd      ;

typedef enum logic [4-1:0] {
	ST_IDLE,
	ST_GET_CCT_TAG,
	ST_SANITIZE_CMD,
	ST_POST_CMD_AW,
	ST_POST_CMD_W,
	ST_POST_CMD_B,
	// ST_POST_CMD_HDR_AW,
	// ST_POST_CMD_HDR_W,
	// ST_POST_CMD_HDR_B,
	ST_POST_TAG,
	ST_POST_CMD_STREAM,
	ST_POP_FETCHED_CMD,
	ST_PUSH_ERR
} state_t;

state_t cur_state; // state
state_t nxt_state;

//////////////////////////////////////////////////////////////
// cmd q interface
//////////////////////////////////////////////////////////////
always_comb o_fetched_cmd_q_pop = (cur_state==ST_POP_FETCHED_CMD);

// post count
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_post_cnt <= 3'd0;
	end
	else if (cur_state==ST_GET_CCT_TAG) begin
		r_post_cnt <= 3'd0;
	end
	else if (cur_state==ST_POST_CMD_W) begin
		if(i_axi_m_ctx_wready)
			r_post_cnt <= r_post_cnt + 3'd1;
	end
end

//////////////////////////////////////////////////////////////
// tag q interface
//////////////////////////////////////////////////////////////
always_comb o_tag_q_pop = (cur_state==ST_GET_CCT_TAG);

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_tag <= {NUM_OF_OST_CMD_WIDTH{1'b0}};
	end
	else if (cur_state==ST_GET_CCT_TAG) begin
		r_tag <= i_tag_q_data;
	end
end

//////////////////////////////////////////////////////////////
// command decoding / sanitizing
//////////////////////////////////////////////////////////////
// TODO: need to enhance command sanitizin
always_comb nvme_cmd = i_fetched_cmd_q_data;
always_comb prp_err = (nvme_cmd.psdt==2'd0) & ((nvme_cmd.dptr[0+:2] != 2'd0) | (nvme_cmd.dptr[64+:3] != 3'd0));

always_comb unalign_prp_cmd = (to_be_posted_cmd.cmd_header.sq_id != 16'd0) & (to_be_posted_cmd[192+:12] != 12'd0);

always_comb htr_post_hit0 = (nvme_cmd.opc==i_to_be_posted_opcode_htr0) & i_to_be_posted_opcode_en[0];
always_comb htr_post_hit1 = (nvme_cmd.opc==i_to_be_posted_opcode_htr1) & i_to_be_posted_opcode_en[1];
always_comb htr_post_hit  = (htr_post_hit0 | htr_post_hit1) & ~unalign_prp_cmd;

always_comb htw_post_hit0 = (nvme_cmd.opc==i_to_be_posted_opcode_htw0) & i_to_be_posted_opcode_en[2];
always_comb htw_post_hit1 = (nvme_cmd.opc==i_to_be_posted_opcode_htw1) & i_to_be_posted_opcode_en[3];
always_comb htw_post_hit  = (htw_post_hit0 | htw_post_hit1) & ~unalign_prp_cmd;


// always_comb begin
// 	to_be_posted_cmd = i_fetched_cmd_q_data;

// 	if(prp_err)
// 		to_be_posted_cmd.cmd_header.prp_err = 1'b1;
// end


always_comb begin
	to_be_posted_cmd_temp = i_fetched_cmd_q_data;

	if(prp_err)
		to_be_posted_cmd_temp.cmd_header.prp_err = 1'b1;
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_to_be_posted_cmd <= 512'd0;
	end
	else if ( (cur_state==ST_IDLE) & ~post_block ) begin
		r_to_be_posted_cmd <= to_be_posted_cmd_temp;
	end
end

always_comb to_be_posted_cmd = r_to_be_posted_cmd;


//////////////////////////////////////////////////////////////
// command posting to HW
//////////////////////////////////////////////////////////////

// htr
always_comb begin
	case(cur_state)
		ST_POST_CMD_STREAM: begin
			if( (htr_post_hit) & (to_be_posted_cmd.cmd_header.sq_id != 16'd0) ) begin
	            o_fet_to_htr_axis_tid    = {HWA_M_STRM_ID_WIDTH{1'b0}};
				o_fet_to_htr_axis_tvalid = 1'b1;
				o_fet_to_htr_axis_tlast  = 1'b1;
				o_fet_to_htr_axis_tkeep  = {HWA_M_STRM_KEEP_WIDTH{1'b1}};
				o_fet_to_htr_axis_tstrb  = {HWA_M_STRM_STRB_WIDTH{1'b1}};
				o_fet_to_htr_axis_tdata  = to_be_posted_cmd;
				o_fet_to_htr_axis_tdest  = {HWA_M_STRM_DEST_WIDTH{1'b0}};
			end
			else begin
	            o_fet_to_htr_axis_tid    = {HWA_M_STRM_ID_WIDTH{1'b0}};
				o_fet_to_htr_axis_tvalid = 1'b0;
				o_fet_to_htr_axis_tlast  = 1'b0;
				o_fet_to_htr_axis_tkeep  = {HWA_M_STRM_KEEP_WIDTH{1'b0}};
				o_fet_to_htr_axis_tstrb  = {HWA_M_STRM_STRB_WIDTH{1'b0}};
				o_fet_to_htr_axis_tdata  = {HWA_M_STRM_DATA_WIDTH{1'b0}};
				o_fet_to_htr_axis_tdest  = {HWA_M_STRM_DEST_WIDTH{1'b0}};
			end
		end
		default: begin
            o_fet_to_htr_axis_tid    = {HWA_M_STRM_ID_WIDTH{1'b0}};
			o_fet_to_htr_axis_tvalid = 1'b0;
			o_fet_to_htr_axis_tlast  = 1'b0;
			o_fet_to_htr_axis_tkeep  = {HWA_M_STRM_KEEP_WIDTH{1'b0}};
			o_fet_to_htr_axis_tstrb  = {HWA_M_STRM_STRB_WIDTH{1'b0}};
			o_fet_to_htr_axis_tdata  = {HWA_M_STRM_DATA_WIDTH{1'b0}};
			o_fet_to_htr_axis_tdest  = {HWA_M_STRM_DEST_WIDTH{1'b0}};
		end
	endcase
end

// htw
always_comb begin
	case(cur_state)
		ST_POST_CMD_STREAM: begin
			if( (htw_post_hit) & (to_be_posted_cmd.cmd_header.sq_id != 16'd0) ) begin
	            o_fet_to_htw_axis_tid    = {HWA_M_STRM_ID_WIDTH{1'b0}};
				o_fet_to_htw_axis_tvalid = 1'b1;
				o_fet_to_htw_axis_tlast  = 1'b1;
				o_fet_to_htw_axis_tkeep  = {HWA_M_STRM_KEEP_WIDTH{1'b1}};
				o_fet_to_htw_axis_tstrb  = {HWA_M_STRM_STRB_WIDTH{1'b1}};
				o_fet_to_htw_axis_tdata  = to_be_posted_cmd;
				o_fet_to_htw_axis_tdest  = {HWA_M_STRM_DEST_WIDTH{1'b0}};
			end
			else begin
	            o_fet_to_htw_axis_tid    = {HWA_M_STRM_ID_WIDTH{1'b0}};
				o_fet_to_htw_axis_tvalid = 1'b0;
				o_fet_to_htw_axis_tlast  = 1'b0;
				o_fet_to_htw_axis_tkeep  = {HWA_M_STRM_KEEP_WIDTH{1'b0}};
				o_fet_to_htw_axis_tstrb  = {HWA_M_STRM_STRB_WIDTH{1'b0}};
				o_fet_to_htw_axis_tdata  = {HWA_M_STRM_DATA_WIDTH{1'b0}};
				o_fet_to_htw_axis_tdest  = {HWA_M_STRM_DEST_WIDTH{1'b0}};
			end
		end
		default: begin
            o_fet_to_htw_axis_tid    = {HWA_M_STRM_ID_WIDTH{1'b0}};
			o_fet_to_htw_axis_tvalid = 1'b0;
			o_fet_to_htw_axis_tlast  = 1'b0;
			o_fet_to_htw_axis_tkeep  = {HWA_M_STRM_KEEP_WIDTH{1'b0}};
			o_fet_to_htw_axis_tstrb  = {HWA_M_STRM_STRB_WIDTH{1'b0}};
			o_fet_to_htw_axis_tdata  = {HWA_M_STRM_DATA_WIDTH{1'b0}};
			o_fet_to_htw_axis_tdest  = {HWA_M_STRM_DEST_WIDTH{1'b0}};
		end
	endcase
end



//////////////////////////////////////////////////////////////
// command posting to FW
//////////////////////////////////////////////////////////////

always_comb begin
	case(cur_state)
		ST_POST_CMD_STREAM: begin
			if(
				unalign_prp_cmd |
				(~htr_post_hit & ~htw_post_hit) |
				(to_be_posted_cmd.cmd_header.sq_id==16'd0)
			) begin
                o_fet_to_fw_axis_tid    = {FW_M_STRM_ID_WIDTH{1'b0}};
				o_fet_to_fw_axis_tvalid = 1'b1;
				o_fet_to_fw_axis_tlast  = 1'b1;
				o_fet_to_fw_axis_tkeep  = {FW_M_STRM_KEEP_WIDTH{1'b1}};
				o_fet_to_fw_axis_tstrb  = {FW_M_STRM_STRB_WIDTH{1'b1}};
				o_fet_to_fw_axis_tdata  = to_be_posted_cmd;
				o_fet_to_fw_axis_tdest  = {FW_M_STRM_DEST_WIDTH{1'b0}};
			end
			else begin
                o_fet_to_fw_axis_tid    = {FW_M_STRM_ID_WIDTH{1'b0}};
				o_fet_to_fw_axis_tvalid = 1'b0;
				o_fet_to_fw_axis_tlast  = 1'b0;
				o_fet_to_fw_axis_tkeep  = {FW_M_STRM_KEEP_WIDTH{1'b0}};
				o_fet_to_fw_axis_tstrb  = {FW_M_STRM_STRB_WIDTH{1'b0}};
				o_fet_to_fw_axis_tdata  = {FW_M_STRM_DATA_WIDTH{1'b0}};
				o_fet_to_fw_axis_tdest  = {FW_M_STRM_DEST_WIDTH{1'b0}};
			end
		end
		default: begin
            o_fet_to_fw_axis_tid    = {FW_M_STRM_ID_WIDTH{1'b0}};
			o_fet_to_fw_axis_tvalid = 1'b0;
			o_fet_to_fw_axis_tlast  = 1'b0;
			o_fet_to_fw_axis_tkeep  = {FW_M_STRM_KEEP_WIDTH{1'b0}};
			o_fet_to_fw_axis_tstrb  = {FW_M_STRM_STRB_WIDTH{1'b0}};
			o_fet_to_fw_axis_tdata  = {FW_M_STRM_DATA_WIDTH{1'b0}};
			o_fet_to_fw_axis_tdest  = {FW_M_STRM_DEST_WIDTH{1'b0}};
		end
	endcase
end



//////////////////////////////////////////////////////////////
// post q interface
//////////////////////////////////////////////////////////////
always_comb o_post_tag_q_push = (cur_state==ST_POST_TAG);
always_comb o_post_tag_q_data = r_tag;

//////////////////////////////////////////////////////////////
// axi signal driving(to CTX)
//////////////////////////////////////////////////////////////

// AW channel
always_comb begin
	o_axi_m_ctx_awid    = AXI_CTX_POSTR_BASE_ID;
	o_axi_m_ctx_awlock  = {(                   1){1'b0}};
	o_axi_m_ctx_awcache = {(                   4){1'b0}};
	o_axi_m_ctx_awprot  = {(                   3){1'b0}};
	// incremental burst
	o_axi_m_ctx_awburst = 2'd1;
	// 8B
	o_axi_m_ctx_awsize  = 3'd3;

	case(cur_state)
		ST_POST_CMD_AW: begin
			o_axi_m_ctx_awvalid = 1'b1;
			o_axi_m_ctx_awaddr  = SRAM_CCT_BASE + {r_tag, 6'd0};
			o_axi_m_ctx_awlen   = 8'd7;
		end
		// ST_POST_CMD_HDR_AW: begin
		// 	o_axi_m_ctx_awvalid = 1'b1;
		// 	o_axi_m_ctx_awaddr  = SRAM_CCT_HDR_BASE + {r_tag, 3'd0};
		// 	o_axi_m_ctx_awlen   = {(                   8){1'b0}};
		// end
		default: begin
			o_axi_m_ctx_awvalid = 1'b0;
			o_axi_m_ctx_awaddr  = {(    AXI_CTX_M_ADDR_WIDTH){1'b0}};
			o_axi_m_ctx_awlen   = {(                   8){1'b0}};
		end
	endcase
end

// W channel
always_comb begin
	case(cur_state)
		ST_POST_CMD_W: begin
			o_axi_m_ctx_wdata  = to_be_posted_cmd[r_post_cnt*64+:64];
			o_axi_m_ctx_wstrb  = 8'hFF;
			o_axi_m_ctx_wlast  = (r_post_cnt==3'd7);
			o_axi_m_ctx_wvalid = 1'b1;
		end
		// ST_POST_CMD_HDR_W: begin
		// 	o_axi_m_ctx_wdata  = cmd_header;
		// 	o_axi_m_ctx_wstrb  = 8'hFF;
		// 	o_axi_m_ctx_wlast  = 1'b1;
		// 	o_axi_m_ctx_wvalid = 1'b1;
		// end
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
	// if( (cur_state==ST_POST_CMD_B) | (cur_state==ST_POST_CMD_HDR_B) )
	if( (cur_state==ST_POST_CMD_B) )
		o_axi_m_ctx_bready = 1'b1;
	else
		o_axi_m_ctx_bready = 1'b0;
end

// AR channel
always_comb begin
	o_axi_m_ctx_arid    = AXI_CTX_POSTR_BASE_ID;
	o_axi_m_ctx_arlen   = 8'd0;
	o_axi_m_ctx_arlock  = 1'b0;
	o_axi_m_ctx_arcache = 4'd0;
	o_axi_m_ctx_arprot  = 3'd0;
	o_axi_m_ctx_arsize  = 3'd3;
	o_axi_m_ctx_arburst = 2'd1;
	o_axi_m_ctx_arvalid = 1'b0;
	o_axi_m_ctx_araddr  = {(AXI_CTX_M_ADDR_WIDTH){1'b0}};
	o_axi_m_ctx_rready  = 1'b0;
end

//////////////////////////////////////////////////////////////
// debugging information
//////////////////////////////////////////////////////////////
// cct push cnt
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_cct_push_cnt <= 16'd0;
	end
	else if( (cur_state==ST_POST_CMD_B) & (i_axi_m_ctx_bresp==2'd0) & i_axi_m_ctx_bvalid ) begin
		o_cct_push_cnt <= o_cct_push_cnt + 16'd1;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_stream_push_cnt <= 16'd0;
	end
    else if( i_stream_posting_en & (cur_state==ST_POP_FETCHED_CMD) ) begin
        o_stream_push_cnt <= o_stream_push_cnt + 16'd1;
	end
end


//////////////////////////////////////////////////////////////
// posting block condition
//////////////////////////////////////////////////////////////
always_comb begin
    if(i_cct_posting_en) begin
		if(i_err_exist | i_fet_sync_rst | i_fetched_cmd_q_empty | i_tag_q_empty | i_post_tag_q_full) begin
            post_block = 1'b1;
        end
        else begin
            post_block = 1'b0;
        end
    end
    else if(i_stream_posting_en) begin
		if(i_err_exist | i_fet_sync_rst | i_fetched_cmd_q_empty) begin
            post_block = 1'b1;
        end
        else begin
            post_block = 1'b0;
        end
    end
    else begin
        post_block = 1'b1;
    end
end


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
			// if(~i_err_exist & ~i_fet_sync_rst & ~i_fetched_cmd_q_empty & ~i_tag_q_empty & ~i_post_tag_q_full) begin
			if(~post_block) begin
				nxt_state = ST_SANITIZE_CMD;
			end
			else begin
				nxt_state = ST_IDLE;
			end
		end
		ST_SANITIZE_CMD: begin
			// nxt_state = ST_POST_CMD_HDR_AW;

			if( (~i_cct_posting_en & ~i_stream_posting_en) )
				nxt_state = ST_PUSH_ERR;
			else if(i_cct_posting_en)
				nxt_state = ST_GET_CCT_TAG;
			else
				nxt_state = ST_POST_CMD_STREAM;

		end
		ST_GET_CCT_TAG: begin
			// if(~i_tag_q_empty) begin
			// 	if(i_cct_posting_en)
			// 		nxt_state = ST_POST_CMD_AW;
			// 	else
			// 		nxt_state = ST_POST_CMD_STREAM;
			// end
			// else
			// 	nxt_state = ST_GET_CCT_TAG;

			nxt_state = ST_POST_CMD_AW;
		end

		// ST_POST_CMD_HDR_AW: begin
		// 	if(i_axi_m_ctx_awready)
		// 		nxt_state = ST_POST_CMD_HDR_W;
		// 	else
		// 		nxt_state = ST_POST_CMD_HDR_AW;
		// end
		// ST_POST_CMD_HDR_W: begin
		// 	if(i_axi_m_ctx_wready)
		// 		nxt_state = ST_POST_CMD_HDR_B;
		// 	else
		// 		nxt_state = ST_POST_CMD_HDR_W;
		// end
		// ST_POST_CMD_HDR_B: begin
		// 	if(i_axi_m_ctx_bvalid) begin
		// 		if(i_axi_m_ctx_bresp != 2'd0)
		// 			nxt_state = ST_PUSH_ERR;
		// 		else
		// 			nxt_state = ST_POST_CMD_AW;
		// 	end
		// 	else
		// 		nxt_state = ST_POST_CMD_HDR_B;
		// end
		ST_POST_CMD_AW: begin
			if(i_axi_m_ctx_awready)
				nxt_state = ST_POST_CMD_W;
			else
				nxt_state = ST_POST_CMD_AW;
		end
		ST_POST_CMD_W: begin
			if(i_axi_m_ctx_wready & (r_post_cnt==3'd7))
				nxt_state = ST_POST_CMD_B;
			else
				nxt_state = ST_POST_CMD_W;
		end
		ST_POST_CMD_B: begin
			if(i_axi_m_ctx_bvalid) begin
				if(i_axi_m_ctx_bresp != 2'd0)
					nxt_state = ST_PUSH_ERR;
				else
					nxt_state = ST_POST_TAG;
			end
			else
				nxt_state = ST_POST_CMD_B;
		end

		ST_POST_TAG: begin
			if(~i_post_tag_q_full) begin
				if(i_stream_posting_en)
					nxt_state = ST_POST_CMD_STREAM;
				else
					nxt_state = ST_POP_FETCHED_CMD;
			end
			else begin
				nxt_state = ST_POST_TAG;
			end
		end

		ST_POST_CMD_STREAM: begin
			if( ( (htr_post_hit) & (to_be_posted_cmd.cmd_header.sq_id != 16'd0) & o_fet_to_htr_axis_tvalid & i_fet_to_htr_axis_tready ) |
			    ( (htw_post_hit) & (to_be_posted_cmd.cmd_header.sq_id != 16'd0) & o_fet_to_htw_axis_tvalid & i_fet_to_htw_axis_tready ) ) begin
                    nxt_state = ST_POP_FETCHED_CMD;
            end
			else if(o_fet_to_fw_axis_tvalid & i_fet_to_fw_axis_tready) begin
                    nxt_state = ST_POP_FETCHED_CMD;
            end
            else begin
                    nxt_state = ST_POST_CMD_STREAM;
            end
        end
		ST_POP_FETCHED_CMD: begin
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
// error
//////////////////////////////////////////////////////////////
always_comb o_err_push_req   = (cur_state==ST_PUSH_ERR);
always_comb o_err_data		 = r_err_data;


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
        r_err_data <= 32'd0;
    end
    else begin
		case(cur_state)
			// ST_POST_CMD_HDR_B: begin
			// 	if(i_axi_m_ctx_bvalid) begin
			// 		if(i_axi_m_ctx_bresp != 2'd0)
			// 			r_err_data.post_cmd_hdr_bresp_err <= 1'b1;
			// 	end
			// end
			ST_SANITIZE_CMD: begin
				if( (~i_cct_posting_en & ~i_stream_posting_en) )
					r_err_data.post_setting_err <= 1'b1;
			end
			ST_POST_CMD_B: begin
				if(i_axi_m_ctx_bvalid) begin
					if(i_axi_m_ctx_bresp != 2'd0)
						r_err_data.post_cmd_bresp_err <= 1'b1;
				end
			end
            default: begin
                r_err_data <= 32'd0;
            end
    	endcase
    end
end


// TODO: prp err detection logic(to be removed)
always_comb begin
	if( (o_fet_to_htr_axis_tvalid & i_fet_to_htr_axis_tready & (o_fet_to_htr_axis_tdata[192+:12] != 12'd0)) |
	    (o_fet_to_htw_axis_tvalid & i_fet_to_htw_axis_tready & (o_fet_to_htw_axis_tdata[192+:12] != 12'd0)) ) begin
		o_prp_err_push = 1'b1;
		o_prp_err_data = {to_be_posted_cmd[192+:32], to_be_posted_cmd[0+:32]};
	end
	else begin
		o_prp_err_push = 1'b0;
		o_prp_err_data = 64'd0;
	end
end


endmodule
