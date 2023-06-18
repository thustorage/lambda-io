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

`include "fet_reg.vh"
`include "fet_type_defines.sv"

module fet_reg #(
	parameter ADDR_WIDTH             = 32,
	parameter DATA_WIDTH             = 32,
	parameter FETCH_CMD_Q_ADDR_WIDTH = 7 ,
	parameter NUM_OF_OST_CMD_WIDTH   = 7 ,
	parameter SLOT_FIFO_ADDR_WIDTH   = 7
) (
	input  logic                            i_sram_ce                 ,
	input  logic                            i_sram_we                 ,
	input  logic [          ADDR_WIDTH-1:0] i_sram_addr               ,
	input  logic [          DATA_WIDTH-1:0] i_sram_wdata              ,
	input  logic [        DATA_WIDTH/8-1:0] i_sram_wstrb              ,
	output logic [          DATA_WIDTH-1:0] o_sram_rdata              ,
	// output logic                            o_sram_rdy                ,
	output logic [FETCH_CMD_Q_ADDR_WIDTH:0] o_arb_burst               ,
	output logic                            o_arb_stop                ,
	output logic                            o_fet_sync_rst            ,
	output logic                            o_arb_wrr_en              ,
	output logic                            o_sqarb_err_exist         ,
	output logic                            o_sqfet_err_exist         ,
	output logic                            o_postr_err_exist         ,
	input  logic                            i_slot_fifo_push          ,
	input  logic [NUM_OF_OST_CMD_WIDTH-1:0] i_slot_fifo_wdata         ,
	output logic [  SLOT_FIFO_ADDR_WIDTH:0] o_slot_fifo_level         ,
	output logic                            o_slot_fifo_empty         ,
	output logic                            o_slot_fifo_full          ,
	output logic [  SLOT_FIFO_ADDR_WIDTH:0] o_avail_tag_num           ,
	input  logic                            i_tag_q_pop               ,
	output logic [NUM_OF_OST_CMD_WIDTH-1:0] o_tag_q_data              ,
	output logic                            o_tag_q_empty             ,
	output logic [  NUM_OF_OST_CMD_WIDTH:0] o_tag_q_level             ,
	input  logic                            i_sqarb_err_push_req      ,
	input  fet_sqarb_err_data_t             i_sqarb_err_data          ,
	output logic                            o_sqarb_err_push_ack      ,
	input  logic                            i_sqfetr_err_push_req     ,
	input  fet_sqfet_err_data_t             i_sqfetr_err_data         ,
	output logic                            o_sqfetr_err_push_ack     ,
	input  logic                            i_postr_err_push_req      ,
	input  fet_postr_err_data_t             i_postr_err_data          ,
	output logic                            o_postr_err_push_ack      ,
	output logic                            o_func_arb_crd_en         ,
	output logic                            o_mrrs_128                ,
	output logic                            o_mrrs_256                ,
	output logic                            o_mrrs_512                ,
	output logic                            o_cct_posting_en          ,
	output logic                            o_stream_posting_en       ,
	output logic [                  32-1:0] o_ob_base_addr_low        ,
	output logic [                  32-1:0] o_ob_base_addr_high       ,
	output logic [                   8-1:0] o_to_be_posted_opcode_htr0,
	output logic [                   8-1:0] o_to_be_posted_opcode_htw0,
	output logic [                   8-1:0] o_to_be_posted_opcode_htr1,
	output logic [                   8-1:0] o_to_be_posted_opcode_htw1,
	output logic [                   4-1:0] o_to_be_posted_opcode_en  ,
	output logic                            o_sqfet_dummy_fetch_en    ,
	input  logic [                  32-1:0] i_sqarb_last_req_ctx_raddr,
	input  logic [                  32-1:0] i_sqfet_last_req_ctx_raddr,
	input  logic [                  32-1:0] i_sqfet_last_req_ctx_waddr,
	input  logic [                  64-1:0] i_sqfet_last_req_ob_raddr ,
	input  logic [                  32-1:0] i_postr_last_req_ctx_waddr,
	input  logic [FETCH_CMD_Q_ADDR_WIDTH:0] i_fetched_cmd_q_level     ,
	input  logic [                  16-1:0] i_cct_push_cnt            ,
	input  logic [                  16-1:0] i_stream_push_cnt         ,
	input  logic                            i_sqarb_block             ,
	input  logic [                   4-1:0] i_sqarb_fsm               ,
	input  logic [                   5-1:0] i_sqfet_fsm               ,
	input  logic [                   4-1:0] i_sqpostr_fsm             ,
	output logic                            o_cmd_throt_en            ,
	input  logic [                   8-1:0] i_rd_ost_cnt_obnd         ,
	input  logic [                   8-1:0] i_wr_ost_cnt_obnd         ,
	input  logic [                   8-1:0] i_rd_ost_cnt_ctx          ,
	input  logic [                   8-1:0] i_wr_ost_cnt_ctx          ,
	input  logic                            i_axi_obnd_awvalid        ,
	input  logic                            i_axi_obnd_awready        ,
	input  logic                            i_axi_obnd_bvalid         ,
	input  logic                            i_axi_obnd_bready         ,
	input  logic                            i_axi_obnd_arvalid        ,
	input  logic                            i_axi_obnd_arready        ,
	input  logic                            i_axi_obnd_rlast          ,
	input  logic                            i_axi_obnd_rvalid         ,
	input  logic                            i_axi_obnd_rready         ,
	input  logic                            i_axi_ctx_awvalid         ,
	input  logic                            i_axi_ctx_awready         ,
	input  logic                            i_axi_ctx_bvalid          ,
	input  logic                            i_axi_ctx_bready          ,
	input  logic                            i_axi_ctx_arvalid         ,
	input  logic                            i_axi_ctx_arready         ,
	input  logic                            i_axi_ctx_rlast           ,
	input  logic                            i_axi_ctx_rvalid          ,
	input  logic                            i_axi_ctx_rready          ,
	// input  logic                            i_prp_err_push            ,
	// input  logic [                  64-1:0] i_prp_err_data            ,
	// TODO: to be removed
	// output logic [                   2-1:0] o_axis_switch_req_supp    ,
	// input  logic [                   2-1:0] i_axis_switch_decode_err  ,
	input  logic                            i_clk                     ,
	input  logic                            i_rstn
);

localparam MAX_SLOT_LEVEL = (1 << SLOT_FIFO_ADDR_WIDTH);

logic                [        ADDR_WIDTH-2-1:0] reg_addr                  ;
logic                [          DATA_WIDTH-1:0] r_sram_rdata              ;
logic                                           r_fet_sync_rst            ;
logic                [FETCH_CMD_Q_ADDR_WIDTH:0] r_arb_burst               ;
logic                                           r_arb_stop                ;
logic                                           r_arb_wrr_en              ;
logic                [NUM_OF_OST_CMD_WIDTH-1:0] r_tag_q_push_data         ;
logic                                           r_slot_fifo_clr           ;
logic                [NUM_OF_OST_CMD_WIDTH-1:0] slot_fifo_rdata           ;
logic                                           r_tag_q_clr               ;
logic                                           r_func_arb_crd_en         ;
logic                                           r_mrrs_128                ;
logic                                           r_mrrs_256                ;
logic                                           r_mrrs_512                ;
logic                [                  32-1:0] r_ob_base_addr_low        ;
logic                [                  32-1:0] r_ob_base_addr_high       ;
logic                                           r_sqfet_err_exist         ;
logic                                           r_sqarb_err_exist         ;
logic                                           r_postr_err_exist         ;
logic                                           r_cct_posting_en          ;
logic                                           r_stream_posting_en       ;
fet_sqarb_err_data_t                            r_sqarb_err_data          ;
fet_sqfet_err_data_t                            r_sqfet_err_data          ;
fet_postr_err_data_t                            r_postr_err_data          ;
logic                [                   8-1:0] r_to_be_posted_opcode_htr0;
logic                [                   8-1:0] r_to_be_posted_opcode_htw0;
logic                [                   8-1:0] r_to_be_posted_opcode_htr1;
logic                [                   8-1:0] r_to_be_posted_opcode_htw1;
logic                [                   4-1:0] r_to_be_posted_opcode_en  ;
logic                                           r_sqfet_dummy_fetch_en    ;
logic                                           r_cmd_throt_en            ;

// logic [                  32-1:0] r_ctx_base;
// logic [                  32-1:0] r_ccx_base;


// logic            prp_history_push ;
// logic [4*64-1:0] prp_history_rdata;
// logic            prp_history_pop  ;
// logic            prp_history_full ;
// logic            prp_history_empty;
// logic [     2:0] prp_history_level;
// logic [     1:0] prp_history_wp   ;
// logic [     1:0] prp_history_rp   ;

// always_comb prp_history_pop   = (prp_history_level > 3'd2);

// fet_sync_fifo_reg_for_debug #(
// 	.DATA_WIDTH(64),
// 	.ADDR_WIDTH(2 )
// ) u_history_fifo_int (
// 	.i_clk  (i_clk            ),
// 	.i_rstn (i_rstn           ),
// 	.i_clr  (                 ),
// 	.i_din  (i_prp_err_data   ),
// 	.i_we   (i_prp_err_push   ),
// 	.o_dout (prp_history_rdata),
// 	.i_re   (prp_history_pop  ),
// 	.o_full (prp_history_full ),
// 	.o_empty(prp_history_empty),
// 	.o_level(prp_history_level),
// 	.o_wp   (prp_history_wp   ),
// 	.o_rp   (prp_history_rp   )
// );



always_comb reg_addr = i_sram_addr[2+:(ADDR_WIDTH-2)];

// write regs
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_arb_burst                <= 'd8;
		r_arb_stop                 <= 1'b0;
		r_fet_sync_rst             <= 1'b0;
		r_arb_wrr_en               <= 1'b0;
		r_slot_fifo_clr            <= 1'b0;
		r_tag_q_clr                <= 1'b0;
		r_tag_q_push_data          <= {NUM_OF_OST_CMD_WIDTH{1'b0}};
		r_func_arb_crd_en          <= 1'b0;
		r_mrrs_128                 <= 1'b1;
		r_mrrs_256                 <= 1'b0;
		r_mrrs_512                 <= 1'b0;
		r_ob_base_addr_low         <= 32'd0;
		r_ob_base_addr_high        <= 32'h0000_0010;
		r_cct_posting_en           <= 1'b1;
		r_stream_posting_en        <= 1'b1;
		r_to_be_posted_opcode_htr0 <= 8'd2; // read
		r_to_be_posted_opcode_htr1 <= 8'd0;
		r_to_be_posted_opcode_htw0 <= 8'd1; // write
		r_to_be_posted_opcode_htw1 <= 8'd0;
		r_to_be_posted_opcode_en   <= 4'b0011;
        r_sqfet_dummy_fetch_en     <= 1'b0;
		r_cmd_throt_en 			   <= 1'b1;

        // o_axis_switch_req_supp 	   <= 2'd0;
		// r_ctx_base 		<= 32'hc000_0000;
		// r_cct_base 		<= 32'h4620_0000;
	end
	// else if(i_sram_ce & i_sram_we & o_sram_rdy) begin
	else if(i_sram_ce & i_sram_we) begin
		if(reg_addr==`FET_REG_SYNC_RST)
			r_fet_sync_rst <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_ARB_BURST)
			r_arb_burst <= i_sram_wdata[0+:(FETCH_CMD_Q_ADDR_WIDTH+1)];
		else if(reg_addr==`FET_REG_ARB_STOP)
			r_arb_stop <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_WRR_EN)
			r_arb_wrr_en <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_SLOT_FIFO_CLR)
			r_slot_fifo_clr <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_TAG_Q_CLR)
			r_tag_q_clr <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_TAG_Q_PUSH)
			r_tag_q_push_data <= i_sram_wdata[0+:NUM_OF_OST_CMD_WIDTH];
		else if(reg_addr==`FET_REG_FUNC_ARB_CRD_EN)
			r_func_arb_crd_en <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_MRRS)
			{r_mrrs_512, r_mrrs_256, r_mrrs_128} = {i_sram_wdata[16], i_sram_wdata[8], i_sram_wdata[0]};
		else if(reg_addr==`FET_REG_OB_BASE_ADDR_LOW)
			r_ob_base_addr_low <= i_sram_wdata;
		else if(reg_addr==`FET_REG_OB_BASE_ADDR_HIGH)
			r_ob_base_addr_high <= i_sram_wdata;
		else if(reg_addr==`FET_REG_POSTING_EN)
			{r_stream_posting_en, r_cct_posting_en} <= {i_sram_wdata[4], i_sram_wdata[0]};
		else if(reg_addr==`FET_REG_POST_OPCODE)
			{r_to_be_posted_opcode_htw1, r_to_be_posted_opcode_htw0, r_to_be_posted_opcode_htr1, r_to_be_posted_opcode_htr0} <= i_sram_wdata;
		else if(reg_addr==`FET_REG_POST_OPCODE_EN)
			r_to_be_posted_opcode_en <= i_sram_wdata[0+:4];
		else if(reg_addr==`FET_REG_DUMMY_FETCH_EN)
			r_sqfet_dummy_fetch_en <= i_sram_wdata[0];
		else if(reg_addr==`FET_REG_CMD_THROT_EN)
			r_cmd_throt_en <= i_sram_wdata[0];
		// else if(reg_addr==`FET_REG_AXIS_SWITCH_DEBUG)
			// o_axis_switch_req_supp <= i_sram_wdata[0+:2];

		// else if(reg_addr==`FET_REG_CTX_BASE_ADDR)
		// 	r_ctx_base <= i_sram_wdata;
		// else if(reg_addr==`FET_REG_CCT_BASE_ADDR)
		// 	r_cct_base <= i_sram_wdata;
	end
end


// read regs
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_sram_rdata <= {DATA_WIDTH{1'b0}};
	end
	// else if(i_sram_ce & ~i_sram_we & ~o_sram_rdy) begin
	else if(i_sram_ce & ~i_sram_we) begin
		if(reg_addr==`FET_REG_SYNC_RST)
			r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_fet_sync_rst};
		else if(reg_addr==`FET_REG_ARB_BURST)
			r_sram_rdata <= {{(DATA_WIDTH-FETCH_CMD_Q_ADDR_WIDTH-1){1'b0}}, r_arb_burst};
		else if(reg_addr==`FET_REG_ARB_STOP)
			r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_arb_stop};
		else if(reg_addr==`FET_REG_WRR_EN)
			r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_arb_wrr_en};
		else if(reg_addr==`FET_REG_FUNC_ARB_CRD_EN)
			r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_func_arb_crd_en};
		else if(reg_addr==`FET_REG_SLOT_FIFO_POP)
			r_sram_rdata <= {{(DATA_WIDTH-NUM_OF_OST_CMD_WIDTH){1'b0}}, slot_fifo_rdata};
		else if(reg_addr==`FET_REG_SLOT_FIFO_PEEK)
			r_sram_rdata <= {{(DATA_WIDTH-NUM_OF_OST_CMD_WIDTH){1'b0}}, slot_fifo_rdata};
		else if(reg_addr==`FET_REG_SLOT_FIFO_LEVEL)
			r_sram_rdata <= {{(DATA_WIDTH-SLOT_FIFO_ADDR_WIDTH-1){1'b0}}, o_slot_fifo_level};
		else if(reg_addr==`FET_REG_SLOT_FIFO_CLR)
			r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_slot_fifo_clr};
		else if(reg_addr==`FET_REG_TAG_Q_CLR)
			r_sram_rdata <= {{(DATA_WIDTH-1){1'b0}}, r_tag_q_clr};
		else if(reg_addr==`FET_REG_TAG_Q_PUSH)
			r_sram_rdata <= {{(DATA_WIDTH-NUM_OF_OST_CMD_WIDTH){1'b0}}, r_tag_q_push_data};
		else if(reg_addr==`FET_REG_TAG_Q_LEVEL)
			r_sram_rdata <= {{(DATA_WIDTH-SLOT_FIFO_ADDR_WIDTH-1){1'b0}}, o_tag_q_level};
		else if(reg_addr==`FET_REG_TAG_Q_PEEK)
			r_sram_rdata <= {{(DATA_WIDTH-NUM_OF_OST_CMD_WIDTH){1'b0}}, o_tag_q_data};

		else if(reg_addr==`FET_REG_FSM)
			//r_sram_rdata <= {8'd0, 4'd0, i_sqpostr_fsm, 3'd0, i_sqfet_fsm, 4'd0, i_sqarb_fsm};
			r_sram_rdata <= {8'd0, 4'd0, i_sqpostr_fsm, 3'd0, i_sqfet_fsm, i_sqarb_block, 3'd0, i_sqarb_fsm};
        else if(reg_addr==`FET_REG_CMD_PUSH_CNT)
            r_sram_rdata <= {i_stream_push_cnt, i_cct_push_cnt};
		else if(reg_addr==`FET_REG_DUMMY_FETCH_EN)
            r_sram_rdata <= {31'd0, r_sqfet_dummy_fetch_en};

		else if(reg_addr==`FET_REG_SQARB_ERR)
			r_sram_rdata <= r_sqarb_err_data;
		else if(reg_addr==`FET_REG_SQFET_ERR)
			r_sram_rdata <= r_sqfet_err_data;
		else if(reg_addr==`FET_REG_POSTR_ERR)
			r_sram_rdata <= r_postr_err_data;
		else if(reg_addr==`FET_REG_SQARB_ERR_CLR)
			r_sram_rdata <= r_sqarb_err_exist;
		else if(reg_addr==`FET_REG_SQFET_ERR_CLR)
			r_sram_rdata <= r_sqfet_err_exist;
		else if(reg_addr==`FET_REG_POSTR_ERR_CLR)
			r_sram_rdata <= r_postr_err_exist;
		else if(reg_addr==`FET_REG_MRRS)
			r_sram_rdata <= {8'd0, 7'd0, r_mrrs_512, 7'd0, r_mrrs_256, 7'd0, r_mrrs_128};
		else if(reg_addr==`FET_REG_OB_BASE_ADDR_LOW)
			r_sram_rdata <= r_ob_base_addr_low;
		else if(reg_addr==`FET_REG_OB_BASE_ADDR_HIGH)
			r_sram_rdata <= r_ob_base_addr_high;
		else if(reg_addr==`FET_REG_LAST_REQ_SQARB_CTX_RADDR)
			r_sram_rdata <= i_sqarb_last_req_ctx_raddr;
		else if(reg_addr==`FET_REG_LAST_REQ_SQFET_CTX_RADDR)
			r_sram_rdata <= i_sqfet_last_req_ctx_raddr;
		else if(reg_addr==`FET_REG_LAST_REQ_SQFET_CTX_WADDR)
			r_sram_rdata <= i_sqfet_last_req_ctx_waddr;
		else if(reg_addr==`FET_REG_LAST_REQ_SQFET_OB_RADDR_LOW)
			r_sram_rdata <= i_sqfet_last_req_ob_raddr[0+:32];
		else if(reg_addr==`FET_REG_LAST_REQ_SQFET_OB_RADDR_HIGH)
			r_sram_rdata <= i_sqfet_last_req_ob_raddr[32+:32];
		else if(reg_addr==`FET_REG_LAST_REQ_POSTR_CTX_WADDR)
			r_sram_rdata <= i_postr_last_req_ctx_waddr;
		else if(reg_addr==`FET_REG_POSTING_EN)
			r_sram_rdata <= {24'd0, 3'd0, r_stream_posting_en, 3'd0, r_cct_posting_en};
		else if(reg_addr==`FET_REG_FETCHED_CMD_Q_LEVEL)
			r_sram_rdata <= { {(32-FETCH_CMD_Q_ADDR_WIDTH-1){1'b0}}, i_fetched_cmd_q_level};
		else if(reg_addr==`FET_REG_POST_OPCODE)
			r_sram_rdata <= {r_to_be_posted_opcode_htw1, r_to_be_posted_opcode_htw0, r_to_be_posted_opcode_htr1, r_to_be_posted_opcode_htr0};
		else if(reg_addr==`FET_REG_POST_OPCODE_EN)
			r_sram_rdata <= {28'd0, r_to_be_posted_opcode_en};
		else if(reg_addr==`FET_REG_CMD_THROT_EN)
			r_sram_rdata <= {31'd0, r_cmd_throt_en};
		else if(reg_addr==`FET_REG_CMD_THROT_EN)
			r_sram_rdata <= {31'd0, r_cmd_throt_en};

		else if(reg_addr==`FET_REG_AXI_OBND_OST_INFO)
			r_sram_rdata <= { {(32-8-8-9){1'b0}},
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

		else if(reg_addr==`FET_REG_AXI_CTX_OST_INFO)
			r_sram_rdata <= { {(32-8-8-9){1'b0}},
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

		// else if(reg_addr==`FET_REG_PRP_ERR_LEVEL) r_sram_rdata <= {29'd0, prp_history_level};
		// else if(reg_addr==`FET_REG_PRP_PTR) r_sram_rdata <= {16'd0, 6'd0, prp_history_rp, 6'd0, prp_history_wp};
		// else if(reg_addr==`FET_REG_PRP_ERR0) r_sram_rdata <= prp_history_rdata[0*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR1) r_sram_rdata <= prp_history_rdata[1*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR2) r_sram_rdata <= prp_history_rdata[2*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR3) r_sram_rdata <= prp_history_rdata[3*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR4) r_sram_rdata <= prp_history_rdata[4*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR5) r_sram_rdata <= prp_history_rdata[5*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR6) r_sram_rdata <= prp_history_rdata[6*32+:32];
		// else if(reg_addr==`FET_REG_PRP_ERR7) r_sram_rdata <= prp_history_rdata[7*32+:32];

		// else if(reg_addr==`FET_REG_AXIS_SWITCH_DEBUG)
			// r_sram_rdata <= {14'd0, i_axis_switch_decode_err, 14'd0, o_axis_switch_req_supp};
		// else if(reg_addr==`FET_REG_CTX_BASE_ADDR)
		// 	r_sram_rdata <= r_ctx_base;
		// else if(reg_addr==`FET_REG_CCT_BASE_ADDR)
		// 	r_sram_rdata <= r_cct_base;
		else
			r_sram_rdata <= {DATA_WIDTH{1'b0}};
	end
end

always_comb o_sram_rdata = r_sram_rdata;

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_sqarb_err_exist <= 1'b0;
		r_sqarb_err_data  <= 'd0;
	end
	// else if(i_sram_ce & i_sram_we & (i_sram_addr==`FET_REG_SQARB_ERR_CLR) & o_sram_rdy) begin
	else if(i_sram_ce & i_sram_we & (i_sram_addr==`FET_REG_SQARB_ERR_CLR)) begin
		//r_sqarb_err_exist <= ~i_sram_wdata[0];
		r_sqarb_err_exist <= 1'b0;
		r_sqarb_err_data  <= 'd0;
	end
	else if(i_sqarb_err_push_req) begin
		r_sqarb_err_exist <= 1'b1;
		r_sqarb_err_data  <= i_sqarb_err_data;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_sqfet_err_exist <= 1'b0;
		r_sqfet_err_data <= 'd0;
	end
	// else if(i_sram_ce & i_sram_we & (i_sram_addr==`FET_REG_SQFET_ERR_CLR) & o_sram_rdy) begin
	else if(i_sram_ce & i_sram_we & (i_sram_addr==`FET_REG_SQFET_ERR_CLR)) begin
		//r_sqfet_err_exist <= ~i_sram_wdata[0];
		r_sqfet_err_exist <= 1'b0;
		r_sqfet_err_data <= 'd0;
	end
	else if(i_sqfetr_err_push_req) begin
		r_sqfet_err_exist <= 1'b1;
		r_sqfet_err_data <= i_sqfetr_err_data;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_postr_err_exist <= 1'b0;
		r_postr_err_data <= 'd0;
	end
	// else if(i_sram_ce & i_sram_we & (i_sram_addr==`FET_REG_POSTR_ERR_CLR) & o_sram_rdy) begin
	else if(i_sram_ce & i_sram_we & (i_sram_addr==`FET_REG_POSTR_ERR_CLR)) begin
		//r_postr_err_exist <= ~i_sram_wdata[0];
		r_postr_err_exist <= 1'b0;
		r_postr_err_data <= 'd0;
	end
	else if(i_postr_err_push_req) begin
		r_postr_err_exist <= 1'b1;
		r_postr_err_data <= i_postr_err_data;
	end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_sqarb_err_push_ack <= 1'b0;
	end
    else if(i_sqarb_err_push_req & ~o_sqarb_err_push_ack) begin
		o_sqarb_err_push_ack <= 1'b1;
	end
    else begin
		o_sqarb_err_push_ack <= 1'b0;
    end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_sqfetr_err_push_ack <= 1'b0;
	end
    else if(i_sqfetr_err_push_req & ~o_sqfetr_err_push_ack) begin
		o_sqfetr_err_push_ack <= 1'b1;
	end
    else begin
		o_sqfetr_err_push_ack <= 1'b0;
    end
end

always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		o_postr_err_push_ack <= 1'b0;
	end
    else if(i_postr_err_push_req & ~o_postr_err_push_ack) begin
		o_postr_err_push_ack <= 1'b1;
	end
    else begin
		o_postr_err_push_ack <= 1'b0;
    end
end

// sidebands
always_comb o_sqarb_err_exist          = r_sqarb_err_exist          ;
always_comb o_sqfet_err_exist          = r_sqfet_err_exist          ;
always_comb o_postr_err_exist          = r_postr_err_exist          ;

always_comb o_arb_burst                = r_arb_burst                ;
always_comb o_arb_stop                 = r_arb_stop                 ;
always_comb o_fet_sync_rst             = r_fet_sync_rst             ;
always_comb o_arb_wrr_en               = r_arb_wrr_en               ;
always_comb o_func_arb_crd_en          = r_func_arb_crd_en          ;
always_comb o_mrrs_128                 = r_mrrs_128                 ;
always_comb o_mrrs_256                 = r_mrrs_256                 ;
always_comb o_mrrs_512                 = r_mrrs_512                 ;
always_comb o_ob_base_addr_low         = r_ob_base_addr_low         ;
always_comb o_ob_base_addr_high        = r_ob_base_addr_high        ;

always_comb o_cct_posting_en           = r_cct_posting_en           ;
always_comb o_stream_posting_en        = r_stream_posting_en        ;


always_comb o_to_be_posted_opcode_htr0 = r_to_be_posted_opcode_htr0 ;
always_comb o_to_be_posted_opcode_htw0 = r_to_be_posted_opcode_htw0 ;
always_comb o_to_be_posted_opcode_htr1 = r_to_be_posted_opcode_htr1 ;
always_comb o_to_be_posted_opcode_htw1 = r_to_be_posted_opcode_htw1 ;
always_comb o_to_be_posted_opcode_en   = r_to_be_posted_opcode_en   ;

always_comb o_sqfet_dummy_fetch_en     = r_sqfet_dummy_fetch_en     ;

always_comb o_cmd_throt_en 			   = r_cmd_throt_en;
// always_comb o_ctx_base = r_ctx_base;
// always_comb o_cct_base = r_cct_base;


/////////////////////////////////////////////////////////////////////////////
// TODO: to be removed(slot q)
/////////////////////////////////////////////////////////////////////////////

// logic                                           slot_fifo_we              ;
// logic                                           slot_fifo_re              ;

// always_comb slot_fifo_we    = i_slot_fifo_push & ~o_slot_fifo_full;
// always_comb slot_fifo_re    = i_sram_ce & ~i_sram_we & (reg_addr==`FET_REG_SLOT_FIFO_POP) & ~o_slot_fifo_empty;

// always_comb o_avail_tag_num = MAX_SLOT_LEVEL - o_slot_fifo_level;

// sync_fifo_reg #(
// 	.ADDR_WIDTH(SLOT_FIFO_ADDR_WIDTH),
// 	.DATA_WIDTH(NUM_OF_OST_CMD_WIDTH)
// ) u_slot_fifo (
// 	.i_clk  (i_clk            ),
// 	.i_rstn (i_rstn           ),

// 	.i_clr  (r_slot_fifo_clr  ),
// 	.i_din  (i_slot_fifo_wdata),
// 	.i_we   (slot_fifo_we     ),
// 	.o_dout (slot_fifo_rdata  ),
// 	.i_re   (slot_fifo_re     ),
// 	.o_full (o_slot_fifo_full ),
// 	.o_empty(o_slot_fifo_empty),
// 	.o_level(o_slot_fifo_level)
// );

always_comb o_slot_fifo_level = {(SLOT_FIFO_ADDR_WIDTH+1){1'b0}};
always_comb o_slot_fifo_empty = 1'b1;
always_comb o_slot_fifo_full  = 1'b0;
always_comb o_avail_tag_num   = MAX_SLOT_LEVEL;

/////////////////////////////////////////////////////////////////////////////
// TODO: to be removed(tag q)
/////////////////////////////////////////////////////////////////////////////

// logic                                           tag_q_push                ;
// logic                                           tag_q_full                ;
// logic                [NUM_OF_OST_CMD_WIDTH-1:0] tag_q_push_data           ;

// always_comb tag_q_push      = i_sram_ce & i_sram_we & (reg_addr==`FET_REG_TAG_Q_PUSH) & ~tag_q_full;
// always_comb tag_q_push_data = i_sram_wdata[0+:NUM_OF_OST_CMD_WIDTH];

// // TODO: should be removed, for fet test
// // sync_fifo_reg_test #(
// sync_fifo_reg #(
// 	.ADDR_WIDTH(SLOT_FIFO_ADDR_WIDTH),
// 	.DATA_WIDTH(NUM_OF_OST_CMD_WIDTH)
// ) u_tag_q (
// 	.i_clk  (i_clk          ),
// 	.i_rstn (i_rstn         ),

// 	.i_clr  (r_tag_q_clr    ),
// 	.i_din  (tag_q_push_data),
// 	.i_we   (tag_q_push     ),
// 	.o_dout (o_tag_q_data   ),
// 	.i_re   (i_tag_q_pop    ),
// 	.o_full (tag_q_full     ),
// 	.o_empty(o_tag_q_empty  ),
// 	.o_level(o_tag_q_level  )
// );


always_comb o_tag_q_data   = {NUM_OF_OST_CMD_WIDTH{1'b0}};
always_comb o_tag_q_empty  = 1'b0;
always_comb o_tag_q_level  = MAX_SLOT_LEVEL;


endmodule



module fet_sync_fifo_reg_for_debug #(
    parameter DATA_WIDTH = 8 ,
    parameter ADDR_WIDTH = 2 , // (1<<2) = 4
    parameter Q_DEPTH    = (1  <<ADDR_WIDTH)
) (
    input  wire                          i_clk  ,
    input  wire                          i_rstn ,
    input  wire                          i_clr  ,
    input  wire [        DATA_WIDTH-1:0] i_din  ,
    input  wire                          i_we   ,
    output wire [Q_DEPTH*DATA_WIDTH-1:0] o_dout ,
    input  wire                          i_re   ,
    output wire                          o_full ,
    output wire                          o_empty,
    output wire [          ADDR_WIDTH:0] o_level,
    output wire [        ADDR_WIDTH-1:0] o_wp   ,
    output wire [        ADDR_WIDTH-1:0] o_rp
);


////////////////////////////////////////////////////////////////////
// internals
reg [Q_DEPTH*DATA_WIDTH-1:0] r_reg_mem;
reg [          ADDR_WIDTH:0] r_level  ;
reg [        ADDR_WIDTH-1:0] r_wp     ;
reg [        ADDR_WIDTH-1:0] r_rp     ;

////////////////////////////////////////////////////////////////////
// contents
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn) begin
        r_reg_mem[Q_DEPTH*DATA_WIDTH-1:0] <= {(Q_DEPTH*DATA_WIDTH){1'b0}};
    end
    // else if(i_we && !i_re) begin
    else if(i_we & ~o_full) begin
        r_reg_mem[r_wp*DATA_WIDTH+:DATA_WIDTH] <= i_din;
    end
end

assign o_dout = r_reg_mem;


////////////////////////////////////////////////////////////////////
//
// Misc Logic
//
// write pointer
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn)	begin
        r_wp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_clr) begin
        r_wp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_we & ~o_full) begin
        r_wp <=  r_wp + 1;
    end
end

assign o_wp = r_wp;

// read pointer
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn)	begin
        r_rp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_clr) begin
        r_rp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_re & ~o_empty) begin
        r_rp <=  r_rp + 1;
    end
end

assign o_rp = r_rp;
// level
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn) begin
        r_level <=  {(ADDR_WIDTH+1){1'b0}};
    end
    else if(i_clr) begin
        r_level <=  {(ADDR_WIDTH+1){1'b0}};
    end
    else if(i_we & ~i_re) begin
        r_level <= r_level + 1;
    end
    else if(~i_we & i_re) begin
        r_level <= r_level - 1;
    end
end

////////////////////////////////////////////////////////////////////
//
// Combinatorial o_Full & o_empty Flags
//
assign o_empty = (r_level == {(ADDR_WIDTH+1){1'b0}});
assign o_full  = (r_level == Q_DEPTH);

assign o_level = r_level;

////////////////////////////////////////////////////////////////////
//
// Sanity Check
//
// synopsys translate_off
always @(posedge i_clk)
	if(i_we & o_full)
		$display("%m WARNING: Writing while fifo is FULL (%t)",$time);

always @(posedge i_clk)
	if(i_re & o_empty)
		$display("%m WARNING: Reading while fifo is EMPTY (%t)",$time);
// synopsys translate_on

endmodule
