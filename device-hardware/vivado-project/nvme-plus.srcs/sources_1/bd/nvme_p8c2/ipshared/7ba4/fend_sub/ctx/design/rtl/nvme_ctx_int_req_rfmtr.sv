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

`include "nvme_ctx_type_defines.sv"

module nvme_ctx_int_req_rfmtr #(
    parameter ADDR_WIDTH     = 32,
    parameter DATA_WIDTH     = 32, //32 or 64
    parameter CTX_ADDR_WIDTH = 17,
    parameter NUM_OF_FUNC_WIDTH = 1
) (
    // internal sram interface
    input  logic                      i_sram_ce            ,
    input  logic                      i_sram_we            ,
    input  logic [    ADDR_WIDTH-1:0] i_sram_addr          ,
    input  logic [    DATA_WIDTH-1:0] i_sram_wdata         ,
    output logic [    DATA_WIDTH-1:0] o_sram_rdata         ,
    input  logic [  DATA_WIDTH/8-1:0] i_sram_wstrb         ,
    output logic                      o_sram_rdy           ,
    // re-formatted sram request
    output logic                      o_nvme_ctx_sram_ce   ,
    output logic                      o_nvme_ctx_sram_we   ,
    output logic [CTX_ADDR_WIDTH-1:0] o_nvme_ctx_sram_addr ,
    output logic [            64-1:0] o_nvme_ctx_sram_wdata,
    input  logic [            64-1:0] i_nvme_ctx_sram_rdata,
    output logic [            64-1:0] o_nvme_ctx_sram_web  ,
    output nvme_ctx_sb_t              o_nvme_ctx_sram_sb   ,
    input  logic                      i_nvme_ctx_sram_rdy  ,
    // clock/reset signal
    input  logic                      i_clk                ,
    input  logic                      i_rstn
);

    nvme_ctx_mem_req_t          nvme_ctx_mem_req ;
    nvme_ctx_tbl_req_t          nvme_ctx_tbl_req ;
    logic              [64-1:0] nvme_ctx_sram_web;
    nvme_ctx_sb_t               nvme_ctx_sram_sb ;

    always_comb nvme_ctx_mem_req      = i_sram_addr;
    always_comb nvme_ctx_tbl_req      = i_sram_addr;

    generate
        genvar i;
        for(i = 0; i < DATA_WIDTH/8; i++) begin
            always_comb nvme_ctx_sram_web[i*8+:8] = {8{i_sram_wstrb[i]}};
        end
    endgenerate

    always_comb nvme_ctx_sram_sb.host_access          = 1'b0;
    always_comb nvme_ctx_sram_sb.ctx_tbl_access       = nvme_ctx_mem_req.ctx_tbl_access;
    always_comb nvme_ctx_sram_sb.func_idx             = {NUM_OF_FUNC_WIDTH{1'b0}};

    always_comb nvme_ctx_sram_sb.nvme_cont_reg_access = ~nvme_ctx_mem_req.ctx_tbl_access && ~nvme_ctx_mem_req.bypass && ~nvme_ctx_mem_req.sbz && (nvme_ctx_mem_req.region_sel==REGION_NVME_CONT_REG);
    always_comb nvme_ctx_sram_sb.nvme_dbl_access      = ~nvme_ctx_mem_req.ctx_tbl_access && ~nvme_ctx_mem_req.bypass && ~nvme_ctx_mem_req.sbz && (nvme_ctx_mem_req.region_sel==REGION_NVME_DBL);
    always_comb nvme_ctx_sram_sb.nvme_msix_tbl_access = ~nvme_ctx_mem_req.ctx_tbl_access && ~nvme_ctx_mem_req.bypass && ~nvme_ctx_mem_req.sbz && (nvme_ctx_mem_req.region_sel==REGION_NVME_MSIX_TBL);
    always_comb nvme_ctx_sram_sb.nvme_msix_pba_access = ~nvme_ctx_mem_req.ctx_tbl_access && ~nvme_ctx_mem_req.bypass && ~nvme_ctx_mem_req.sbz && (nvme_ctx_mem_req.region_sel==REGION_NVME_MSIX_PBA);

    // always_comb nvme_ctx_sram_sb.ctx_cct_access       = nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_tbl_req.tbl_idx==CTX_TBL_CCT);
    // always_comb nvme_ctx_sram_sb.ctx_pct_access       = nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_tbl_req.tbl_idx==CTX_TBL_PCT);
    // always_comb nvme_ctx_sram_sb.ctx_fct_access       = nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_tbl_req.tbl_idx==CTX_TBL_FCT);
    always_comb nvme_ctx_sram_sb.ctx_fct0_access      = nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_tbl_req.tbl_idx==CTX_TBL_FCT_EX_0 );
    always_comb nvme_ctx_sram_sb.ctx_fct1_access      = nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_tbl_req.tbl_idx==CTX_TBL_FCT_EX_1 );
    // always_comb nvme_ctx_sram_sb.ctx_ns_ex_ct_access  = nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_tbl_req.tbl_idx==CTX_TBL_NS_EX_CTX);

    // for initialization
    always_comb nvme_ctx_sram_sb.bypass_access        = ~nvme_ctx_mem_req.ctx_tbl_access && ~nvme_ctx_mem_req.sbz && nvme_ctx_mem_req.bypass;

    always_comb nvme_ctx_sram_sb.wrong_access = nvme_ctx_sram_sb.nvme_cont_reg_access & (i_sram_addr[11:0] > 12'h7C) |
                                                nvme_ctx_sram_sb.nvme_dbl_access & (i_sram_addr[13:5] > 9'd32);

// ce, we, address, wdata
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_nvme_ctx_sram_ce    <= 1'b0;
            o_nvme_ctx_sram_we    <= 1'b0;
            o_nvme_ctx_sram_addr  <= {CTX_ADDR_WIDTH{1'b0}};
            o_nvme_ctx_sram_wdata <= 64'd0;
            o_nvme_ctx_sram_web   <= 64'd0;
        end
        else if(i_sram_ce) begin
            if(i_nvme_ctx_sram_rdy | o_sram_rdy) begin
                o_nvme_ctx_sram_ce    <= 1'b0;
                o_nvme_ctx_sram_we    <= 1'b0;
                o_nvme_ctx_sram_addr  <= {CTX_ADDR_WIDTH{1'b0}};
                o_nvme_ctx_sram_wdata <= 64'd0;
                o_nvme_ctx_sram_web   <= 64'd0;
            end
            else begin
                o_nvme_ctx_sram_ce    <= i_sram_ce;
                o_nvme_ctx_sram_we    <= i_sram_we;
                o_nvme_ctx_sram_addr  <= i_sram_addr[0+:CTX_ADDR_WIDTH]  ;
                o_nvme_ctx_sram_wdata <= i_sram_wdata ;
                o_nvme_ctx_sram_web   <= nvme_ctx_sram_web;
            end
        end
    end

// rdata, rdy
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_sram_rdata    <= {DATA_WIDTH{1'b0}};
        end
        else if(i_nvme_ctx_sram_rdy) begin
            o_sram_rdata    <= i_nvme_ctx_sram_rdata[0+:DATA_WIDTH];
        end
    end

// rdy
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_sram_rdy <= 1'b0;
        end
        else if(i_nvme_ctx_sram_rdy) begin
            o_sram_rdy <= 1'b1;
        end
        else begin
            o_sram_rdy <= 1'b0;
        end
    end

// sideband
    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            o_nvme_ctx_sram_sb <= 'b0;
        end
        else if(i_sram_ce) begin
            o_nvme_ctx_sram_sb <= nvme_ctx_sram_sb;
        end
    end


endmodule
