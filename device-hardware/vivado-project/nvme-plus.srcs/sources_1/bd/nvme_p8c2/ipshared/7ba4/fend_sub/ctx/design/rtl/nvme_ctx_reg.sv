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

`include "nvme_ctx_reg.vh"

module nvme_ctx_reg #(
    parameter NUM_OF_PORT       = 2     ,
    parameter NUM_OF_FUNC       = 34    ,
    parameter NUM_OF_FUNC_WIDTH = 1     ,
    parameter NUM_OF_QUE        = 256+34,
    parameter NUM_OF_QUE_WIDTH  = 6     ,
    parameter CCT_WIDTH         = 64    ,
    parameter PCT_WIDTH         = 32    ,
    parameter FCT_WIDTH         = 64    ,
    parameter NS_EXT_CT_WIDTH   = 64    ,
    parameter ADDR_WIDTH        = 16
) (
    // register interface
    input  logic                             i_reg_ce                ,
    input  logic                             i_reg_we                ,
    input  logic [                   32-1:0] i_reg_addr              ,
    input  logic [                   32-1:0] i_reg_wdata             ,
    output logic [                   32-1:0] o_reg_rdata             ,
    // ctx register update interface
    input  logic                             i_ctx_reg_update_push   ,
    input  ctx_reg_update_t                  i_ctx_reg_update_info   ,
    output logic [            CCT_WIDTH-1:0] o_cont_cntxt_tbl        ,
    output logic [NUM_OF_PORT*PCT_WIDTH-1:0] o_port_cntxt_tbl        ,
    output logic [NUM_OF_FUNC*FCT_WIDTH-1:0] o_func_cntxt_tbl        ,
    output logic [           NUM_OF_QUE-1:0] o_func_cntxt_ex0_tbl    ,
    output logic [           NUM_OF_QUE-1:0] o_func_cntxt_ex1_tbl    ,
    output logic [      NS_EXT_CT_WIDTH-1:0] o_ns_ext_cntxt_tbl      ,
    output logic [          NUM_OF_FUNC-1:0] o_func_rdy              ,
    output logic [           NUM_OF_QUE-1:0] o_psq_rdy               ,
    output logic [           NUM_OF_QUE-1:0] o_psq_valid             ,
    output logic [           NUM_OF_QUE-1:0] o_pcq_valid             ,
    output logic [           NUM_OF_QUE-1:0] o_psq_invld_err         ,
    output logic [           NUM_OF_QUE-1:0] o_psq_overwrite_err     ,
    output logic [           NUM_OF_QUE-1:0] o_psq_overrun_err       ,
    output logic [           NUM_OF_QUE-1:0] o_psq_qsize_err         ,
    output logic [           NUM_OF_QUE-1:0] o_pcq_invld_err         ,
    output logic [           NUM_OF_QUE-1:0] o_pcq_overwrite_err     ,
    output logic [           NUM_OF_QUE-1:0] o_pcq_underrun_err      ,
    output logic [           NUM_OF_QUE-1:0] o_pcq_qsize_err         ,
    input  logic [                      3:0] i_history_host_cpu_level,
    input  logic [                 8*64-1:0] i_history_host_cpu_rdata,
    input  logic [                      2:0] i_history_host_cpu_wp   ,
    input  logic [                      2:0] i_history_host_cpu_rp   ,
    input  logic [                      3:0] i_history_int_level     ,
    input  logic [                 8*64-1:0] i_history_int_rdata     ,
    input  logic [                      2:0] i_history_int_wp        ,
    input  logic [                      2:0] i_history_int_rp        ,
    output logic                             o_event_fifo_clr        ,
    // output logic                             o_cmd_throt_en          ,
    output logic                             o_cc_en_fw              ,
    // clock/reset signal
    input  logic                             i_clk                   ,
    input  logic                             i_rstn
);


logic [ADDR_WIDTH-2-1:                 0] reg_addr       ;
logic [32-1:                           0] r_reg_rdata    ;
logic [NUM_OF_FUNC*NUM_OF_QUE_WIDTH-1: 0] func_sq_rdy_cnt;

logic [32-1:0] r_sq_overwrite_err_mask;
logic [32-1:0] r_sq_overrun_err_mask  ;
logic [32-1:0] r_sq_qsize_err_mask    ;
logic [32-1:0] r_cq_overwrite_err_mask;
logic [32-1:0] r_cq_underrun_err_mask ;
logic [32-1:0] r_cq_qsize_err_mask    ;


always_comb reg_addr = i_reg_addr[2+:(ADDR_WIDTH-2)];

// write regs
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_cont_cntxt_tbl        <= {CCT_WIDTH{1'b0}};
        o_port_cntxt_tbl        <= {PCT_WIDTH{1'b0}};
        o_func_cntxt_tbl        <= {FCT_WIDTH{1'b0}};
        // r_fct_ext_0          <= {NUM_OF_QUE{1'b0}};
        o_func_cntxt_ex1_tbl    <= {NUM_OF_QUE{1'b0}};
        o_ns_ext_cntxt_tbl      <= {NS_EXT_CT_WIDTH{1'b0}};
        // o_cmd_throt_en       <= 1'b1;
        o_cc_en_fw              <= 1'b1;
        o_event_fifo_clr        <= 1'b0;

        r_sq_overwrite_err_mask <= 32'd0;
        r_sq_overrun_err_mask   <= 32'd0;
        r_sq_qsize_err_mask     <= 32'd0;
        r_cq_overwrite_err_mask <= 32'd0;
        r_cq_underrun_err_mask  <= 32'd0;
        r_cq_qsize_err_mask     <= 32'd0;
    end
    else if(i_reg_ce & i_reg_we) begin
        if(reg_addr==`NVME_CTX_REG_CCT_0           )
            o_cont_cntxt_tbl[0*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_CCT_1           )
            o_cont_cntxt_tbl[1*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_CCT_2           )
            o_cont_cntxt_tbl[2*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_CCT_3           )
            o_cont_cntxt_tbl[3*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_PCT             )
            o_port_cntxt_tbl <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_FCT_0           )
            o_func_cntxt_tbl[0*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_FCT_1           )
            o_func_cntxt_tbl[1*32+:32] <= i_reg_wdata;
        // TODO: VSQ dirty update logic need
        // else if(reg_addr==`NVME_CTX_REG_FCT_EXT_0       )
        //  r_fct_ext_0 <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_FCT_EXT_1       )
            o_func_cntxt_ex1_tbl <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_0        )
            o_ns_ext_cntxt_tbl[0*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_1        )
            o_ns_ext_cntxt_tbl[1*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_2        )
            o_ns_ext_cntxt_tbl[2*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_3        )
            o_ns_ext_cntxt_tbl[3*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_4        )
            o_ns_ext_cntxt_tbl[4*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_5        )
            o_ns_ext_cntxt_tbl[5*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_6        )
            o_ns_ext_cntxt_tbl[6*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_7        )
            o_ns_ext_cntxt_tbl[7*32+:32] <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_EVENT_FIFO_CLR)
            o_event_fifo_clr <= i_reg_wdata[0];
        // else if(reg_addr==`NVME_CTX_REG_CMD_THROTTLE)
            // o_cmd_throt_en <= i_reg_wdata[0];
        else if(reg_addr==`NVME_CTX_REG_CC_EN_FW)
            o_cc_en_fw  <= i_reg_wdata[0];

        else if(reg_addr==`NVME_CTX_REG_SQ_OVERWRITE_ERR_MASK)
            r_sq_overwrite_err_mask <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_SQ_OVERRRUN_ERR_MASK)
            r_sq_overrun_err_mask <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_SQ_QSIZE_ERR_MASK)
            r_sq_qsize_err_mask <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_CQ_OVERWRITE_ERR_MASK)
            r_cq_overwrite_err_mask <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_CQ_UNDERRUN_ERR_MASK)
            r_cq_underrun_err_mask <= i_reg_wdata;
        else if(reg_addr==`NVME_CTX_REG_CQ_QSIZE_ERR_MASK)
            r_cq_qsize_err_mask <= i_reg_wdata;
    end
end

// read regs
always_ff @(posedge i_clk) begin
	if(!i_rstn) begin
		r_reg_rdata <= 32'b0;
	end
    else if(i_reg_ce & ~i_reg_we) begin
        if(reg_addr==`NVME_CTX_REG_SQ_VALID        )
			r_reg_rdata <= o_psq_valid;
        else if(reg_addr==`NVME_CTX_REG_SQ_RDY          )
			r_reg_rdata <= o_psq_rdy;
        else if(reg_addr==`NVME_CTX_REG_SQ_INVALID_ERR  )
			r_reg_rdata <= o_psq_invld_err;
        else if(reg_addr==`NVME_CTX_REG_SQ_OVERWRITE_ERR)
			r_reg_rdata <= o_psq_overwrite_err;
        else if(reg_addr==`NVME_CTX_REG_SQ_OVERRUN_ERR  )
			r_reg_rdata <= o_psq_overrun_err;
        else if(reg_addr==`NVME_CTX_REG_SQ_QSIZE_ERR    )
			r_reg_rdata <= o_psq_qsize_err;
        else if(reg_addr==`NVME_CTX_REG_CQ_VALID        )
			r_reg_rdata <= o_pcq_valid;
        else if(reg_addr==`NVME_CTX_REG_CQ_INVALID_ERR  )
			r_reg_rdata <= o_pcq_invld_err;
        else if(reg_addr==`NVME_CTX_REG_CQ_OVERWRITE_ERR)
			r_reg_rdata <= o_pcq_overwrite_err;
        else if(reg_addr==`NVME_CTX_REG_CQ_UNDERRUN_ERR )
			r_reg_rdata <= o_pcq_underrun_err;
        else if(reg_addr==`NVME_CTX_REG_CQ_QSIZE_ERR    )
			r_reg_rdata <= o_pcq_qsize_err;

        else if(reg_addr==`NVME_CTX_REG_CCT_0           )
			r_reg_rdata <= o_cont_cntxt_tbl[0*32+:32];
        else if(reg_addr==`NVME_CTX_REG_CCT_1           )
			r_reg_rdata <= o_cont_cntxt_tbl[1*32+:32];
        else if(reg_addr==`NVME_CTX_REG_CCT_2           )
			r_reg_rdata <= o_cont_cntxt_tbl[2*32+:32];
        else if(reg_addr==`NVME_CTX_REG_CCT_3           )
			r_reg_rdata <= o_cont_cntxt_tbl[3*32+:32];
        else if(reg_addr==`NVME_CTX_REG_PCT             )
			r_reg_rdata <= o_port_cntxt_tbl;
        else if(reg_addr==`NVME_CTX_REG_FCT_0           )
			r_reg_rdata <= o_func_cntxt_tbl[0*32+:32];
        else if(reg_addr==`NVME_CTX_REG_FCT_1           )
			r_reg_rdata <= o_func_cntxt_tbl[1*32+:32];
        else if(reg_addr==`NVME_CTX_REG_FCT_EXT_0       )
        // TODO: VSQ dirty update logic need
			// r_reg_rdata <= r_fct_ext_0;
			r_reg_rdata <= o_psq_rdy;
        else if(reg_addr==`NVME_CTX_REG_FCT_EXT_1       )
			r_reg_rdata <= o_func_cntxt_ex1_tbl;
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_0        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[0*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_1        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[1*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_2        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[2*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_3        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[3*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_4        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[4*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_5        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[5*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_6        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[6*32+:32];
        else if(reg_addr==`NVME_CTX_REG_NS_EXT_7        )
			r_reg_rdata <= o_ns_ext_cntxt_tbl[7*32+:32];

        else if(reg_addr==`NVME_CTX_REG_EVENT_FIFO_CLR)
            r_reg_rdata <= {31'd0, o_event_fifo_clr};
        // else if(reg_addr==`NVME_CTX_REG_EVENT_FIFO_CLR)
            // r_reg_rdata <= {31'd0, o_cmd_throt_en};
        else if(reg_addr==`NVME_CTX_REG_CC_EN_FW)
            r_reg_rdata <= {31'd0, o_cc_en_fw};

        else if(reg_addr==`NVME_CTX_REG_SQ_OVERWRITE_ERR_MASK)
            r_reg_rdata <= r_sq_overwrite_err_mask;
        else if(reg_addr==`NVME_CTX_REG_SQ_OVERRRUN_ERR_MASK)
            r_reg_rdata <= r_sq_overrun_err_mask;
        else if(reg_addr==`NVME_CTX_REG_SQ_QSIZE_ERR_MASK)
            r_reg_rdata <= r_sq_qsize_err_mask;
        else if(reg_addr==`NVME_CTX_REG_CQ_OVERWRITE_ERR_MASK)
            r_reg_rdata <= r_cq_overwrite_err_mask;
        else if(reg_addr==`NVME_CTX_REG_CQ_UNDERRUN_ERR_MASK)
            r_reg_rdata <= r_cq_underrun_err_mask;
        else if(reg_addr==`NVME_CTX_REG_CQ_QSIZE_ERR_MASK)
            r_reg_rdata <= r_cq_qsize_err_mask;



        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_0) r_reg_rdata <= i_history_host_cpu_rdata[0*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_0) r_reg_rdata <= i_history_host_cpu_rdata[1*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_1) r_reg_rdata <= i_history_host_cpu_rdata[2*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_1) r_reg_rdata <= i_history_host_cpu_rdata[3*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_2) r_reg_rdata <= i_history_host_cpu_rdata[4*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_2) r_reg_rdata <= i_history_host_cpu_rdata[5*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_3) r_reg_rdata <= i_history_host_cpu_rdata[6*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_3) r_reg_rdata <= i_history_host_cpu_rdata[7*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_4) r_reg_rdata <= i_history_host_cpu_rdata[8*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_4) r_reg_rdata <= i_history_host_cpu_rdata[9*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_5) r_reg_rdata <= i_history_host_cpu_rdata[10*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_5) r_reg_rdata <= i_history_host_cpu_rdata[11*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_6) r_reg_rdata <= i_history_host_cpu_rdata[12*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_6) r_reg_rdata <= i_history_host_cpu_rdata[13*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_ADDR_7) r_reg_rdata <= i_history_host_cpu_rdata[14*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_DATA_7) r_reg_rdata <= i_history_host_cpu_rdata[15*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_LEVEL ) r_reg_rdata <= {28'd0, i_history_host_cpu_level};
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_WP    ) r_reg_rdata <= {29'd0, i_history_host_cpu_wp};
        else if(reg_addr==`NVME_CTX_REG_HIST_HOST_CPU_RP    ) r_reg_rdata <= {29'd0, i_history_host_cpu_rp};
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_0     ) r_reg_rdata <= i_history_int_rdata[0*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_0     ) r_reg_rdata <= i_history_int_rdata[1*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_1     ) r_reg_rdata <= i_history_int_rdata[2*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_1     ) r_reg_rdata <= i_history_int_rdata[3*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_2     ) r_reg_rdata <= i_history_int_rdata[4*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_2     ) r_reg_rdata <= i_history_int_rdata[5*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_3     ) r_reg_rdata <= i_history_int_rdata[6*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_3     ) r_reg_rdata <= i_history_int_rdata[7*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_4     ) r_reg_rdata <= i_history_int_rdata[8*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_4     ) r_reg_rdata <= i_history_int_rdata[9*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_5     ) r_reg_rdata <= i_history_int_rdata[10*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_5     ) r_reg_rdata <= i_history_int_rdata[11*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_6     ) r_reg_rdata <= i_history_int_rdata[12*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_6     ) r_reg_rdata <= i_history_int_rdata[13*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_ADDR_7     ) r_reg_rdata <= i_history_int_rdata[14*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_DATA_7     ) r_reg_rdata <= i_history_int_rdata[15*32+:32];
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_LEVEL      ) r_reg_rdata <= {28'd0, i_history_int_level};
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_WP         ) r_reg_rdata <= {29'd0, i_history_int_wp};
        else if(reg_addr==`NVME_CTX_REG_HIST_INT_RP         ) r_reg_rdata <= {29'd0, i_history_int_rp};

       	else
			r_reg_rdata <= 32'b0;
	end
end

always_comb o_reg_rdata = r_reg_rdata;


// fct ex0 update
    // TODO: VSQ dirty update logic need
    always_comb o_func_cntxt_ex0_tbl = o_psq_rdy;
    // always_ff @(posedge i_clk) begin
    //     if(!i_rstn) begin
    //         o_func_cntxt_ex0_tbl <= {NUM_OF_QUE{1'b0}};
    //     end
    //     else if( i_ctx_reg_update_push & (i_ctx_reg_update_info.update_kind==CTX_UPDATE_KIND_CTX_TBL) & (i_ctx_reg_update_info.update_id[CTX_UPDATE_ID_FCT0_IDX]) ) begin
    //         o_func_cntxt_tbl <= (o_func_cntxt_tbl & ~i_ctx_reg_update_web) | (i_ctx_reg_update_wdata & i_ctx_reg_update_web);
    //     end
    // end


// Physical SQ valid update
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_psq_valid <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_create) begin
            o_psq_valid[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_erase) begin
            o_psq_valid[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b0;
        end
    end

// SQ invliad error
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_psq_invld_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_invld_err) begin
            o_psq_invld_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_SQ_INVALID_ERR) ) begin
            o_psq_invld_err <= o_psq_invld_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end


// SQ overrrun error
logic [NUM_OF_QUE-1:0] psq_overrun_err;
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            psq_overrun_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_overrun_err) begin
            psq_overrun_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_SQ_OVERRUN_ERR) ) begin
            psq_overrun_err <= psq_overrun_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

    always_comb o_psq_overrun_err = psq_overrun_err & ~r_sq_overrun_err_mask;

// SQ overwrite error
logic [NUM_OF_QUE-1:0] psq_overwrite_err;
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            psq_overwrite_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_overwrite_err) begin
            psq_overwrite_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_SQ_OVERWRITE_ERR) ) begin
            psq_overwrite_err <= psq_overwrite_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

    always_comb o_psq_overwrite_err = psq_overwrite_err & ~r_sq_overwrite_err_mask;

// SQ qsize error
logic [NUM_OF_QUE-1:0] psq_qsize_err;
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            psq_qsize_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_qsize_err) begin
            psq_qsize_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_SQ_QSIZE_ERR) ) begin
            psq_qsize_err <= psq_qsize_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

always_comb o_psq_qsize_err = psq_qsize_err & ~r_sq_qsize_err_mask;

// Physical CQ valid update
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_pcq_valid <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.cq_create) begin
            o_pcq_valid[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.cq_erase) begin
            o_pcq_valid[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b0;
        end
    end

// CQ invliad error
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_pcq_invld_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.cq_invld_err) begin
            o_pcq_invld_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_CQ_INVALID_ERR) ) begin
            o_pcq_invld_err <= o_pcq_invld_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

// CQ underrun error
logic [NUM_OF_QUE-1:0] pcq_underrun_err;
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            pcq_underrun_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.cq_underrun_err) begin
            pcq_underrun_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_CQ_UNDERRUN_ERR) ) begin
            pcq_underrun_err <= pcq_underrun_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

    always_comb o_pcq_underrun_err = pcq_underrun_err & ~r_cq_underrun_err_mask;

// CQ overwrite error
logic [NUM_OF_QUE-1:0] pcq_overwrite_err;
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            pcq_overwrite_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.cq_overwrite_err) begin
            pcq_overwrite_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_CQ_OVERWRITE_ERR) ) begin
            pcq_overwrite_err <= pcq_overwrite_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

always_comb o_pcq_overwrite_err = pcq_overwrite_err & ~r_cq_overwrite_err_mask;

// CQ qsize error
logic [NUM_OF_QUE-1:0] pcq_qsize_err;
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            pcq_qsize_err <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.cq_qsize_err) begin
            pcq_qsize_err[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_reg_ce & i_reg_we & (reg_addr==`NVME_CTX_REG_CQ_QSIZE_ERR) ) begin
            pcq_qsize_err <= pcq_qsize_err & ~i_reg_wdata[0+:NUM_OF_QUE];
        end
    end

always_comb o_pcq_qsize_err = pcq_qsize_err & ~r_cq_qsize_err_mask;

// Physical SQ RDY update
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_psq_rdy <= {NUM_OF_QUE{1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_got_dirty) begin
            o_psq_rdy[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b1;
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_got_empty) begin
            o_psq_rdy[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]] <= 1'b0;
        end
    end

// update per function sq rdy count
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            func_sq_rdy_cnt <= {(NUM_OF_FUNC*NUM_OF_QUE_WIDTH){1'b0}};
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_got_dirty) begin
            if(~o_psq_rdy[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]]) begin
                func_sq_rdy_cnt[i_ctx_reg_update_info.func_idx*NUM_OF_QUE_WIDTH+:NUM_OF_QUE_WIDTH] <= func_sq_rdy_cnt[i_ctx_reg_update_info.func_idx*NUM_OF_QUE_WIDTH+:NUM_OF_QUE_WIDTH] + 1;
            end
        end
        else if( i_ctx_reg_update_push & i_ctx_reg_update_info.update_id.sq_got_empty) begin
            if(o_psq_rdy[i_ctx_reg_update_info.q_idx[0+:NUM_OF_QUE_WIDTH]]) begin
                func_sq_rdy_cnt[i_ctx_reg_update_info.func_idx*NUM_OF_QUE_WIDTH+:NUM_OF_QUE_WIDTH] <= func_sq_rdy_cnt[i_ctx_reg_update_info.func_idx*NUM_OF_QUE_WIDTH+:NUM_OF_QUE_WIDTH] - 1;
            end
        end
    end

// per function SQ RDY update
    // generate
    //     genvar i;
    //     for(i = 0; i < NUM_OF_FUNC; i=i+1) begin
    //         always_comb o_func_rdy[i] = (func_sq_rdy_cnt[i*NUM_OF_QUE_WIDTH+:NUM_OF_QUE_WIDTH] != 0);
    //     end
    // endgenerate

    // TODO: temporarily OR PSQ_RDY
    always_comb o_func_rdy = |o_psq_rdy;



endmodule
