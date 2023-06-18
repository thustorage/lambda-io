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

module nvme_ctx_cont_reg_msk (
    input  logic [12-1:0] i_addr                   ,
    output logic [32-1:0] o_wmsk                   ,
    output logic [32-1:0] o_rmsk                   ,
    output logic          o_nvme_cont_reg_intms_hit,
    output logic          o_nvme_cont_reg_intmc_hit,
    output logic          o_nvme_cont_reg_csts_hit
);

localparam NVME_CONT_REG_CAP_0   = 12'h0;
localparam NVME_CONT_REG_CAP_1   = 12'h4;
localparam NVME_CONT_REG_VS      = 12'h8;
localparam NVME_CONT_REG_INTMS   = 12'hC;
localparam NVME_CONT_REG_INTMC   = 12'h10;
localparam NVME_CONT_REG_CC      = 12'h14;
localparam NVME_CONT_REG_RSVD    = 12'h18;
localparam NVME_CONT_REG_CSTS    = 12'h1C;
localparam NVME_CONT_REG_NSSR    = 12'h20;
localparam NVME_CONT_REG_AQA     = 12'h24;
localparam NVME_CONT_REG_ASQ_0   = 12'h28;
localparam NVME_CONT_REG_ASQ_1   = 12'h2C;
localparam NVME_CONT_REG_ACQ_0   = 12'h30;
localparam NVME_CONT_REG_ACQ_1   = 12'h34;
localparam NVME_CONT_REG_CMBLOC  = 12'h38;
localparam NVME_CONT_REG_CMBSZ   = 12'h3C;
localparam NVME_CONT_REG_BINFO   = 12'h40;
localparam NVME_CONT_REG_BPRSEL  = 12'h44;
localparam NVME_CONT_REG_BPMBL_0 = 12'h48;
localparam NVME_CONT_REG_BPMBL_1 = 12'h4C;

always_comb begin
    case (i_addr)
        NVME_CONT_REG_INTMS: begin
            o_nvme_cont_reg_intms_hit = 1'b1;
            o_nvme_cont_reg_intmc_hit = 1'b0;
            o_nvme_cont_reg_csts_hit  = 1'b0;
        end
        NVME_CONT_REG_INTMC: begin
            o_nvme_cont_reg_intms_hit = 1'b0;
            o_nvme_cont_reg_intmc_hit = 1'b1;
            o_nvme_cont_reg_csts_hit  = 1'b0;
        end
        NVME_CONT_REG_CSTS: begin
            o_nvme_cont_reg_intms_hit = 1'b0;
            o_nvme_cont_reg_intmc_hit = 1'b0;
            o_nvme_cont_reg_csts_hit  = 1'b1;
        end
        default: begin
            o_nvme_cont_reg_intms_hit = 1'b0;
            o_nvme_cont_reg_intmc_hit = 1'b0;
            o_nvme_cont_reg_csts_hit  = 1'b0;
        end
    endcase
end

always_comb begin
    case (i_addr)
        NVME_CONT_REG_CAP_0  : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'b1111_1111_0000_0111_1111_1111_1111_1111;
        end
        NVME_CONT_REG_CAP_1  : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'b1111_1111_1111_0011_1111_1111_1111_1111;
        end
        NVME_CONT_REG_VS     : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'hFFFF_FFFF;
        end
        NVME_CONT_REG_INTMS  : begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end
        NVME_CONT_REG_INTMC  : begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end
        NVME_CONT_REG_CC     : begin
            o_wmsk = 32'h00FF_FFF1;
            o_rmsk = 32'h00FF_FFF1;
        end
        NVME_CONT_REG_RSVD   : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'h0;
        end
        NVME_CONT_REG_CSTS   : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'b0000_0000_0000_0000_0000_0000_0001_0010;
        end
        NVME_CONT_REG_NSSR   : begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end
        NVME_CONT_REG_AQA    : begin
            o_wmsk = 32'h0FFF_0FFF;
            o_rmsk = 32'h0FFF_0FFF;
        end
        NVME_CONT_REG_ASQ_0  : begin
            o_wmsk = 32'hFFFF_F000;
            o_rmsk = 32'hFFFF_F000;
        end
        NVME_CONT_REG_ASQ_1  : begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end
        NVME_CONT_REG_ACQ_0  : begin
            o_wmsk = 32'hFFFF_F000;
            o_rmsk = 32'hFFFF_F000;
        end
        NVME_CONT_REG_ACQ_1  : begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end
        NVME_CONT_REG_CMBLOC : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'b1111_1111_1111_1111_1111_0000_0000_0111;
        end
        NVME_CONT_REG_CMBSZ  : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'b1111_1111_1111_1111_1111_1111_0001_1111;
        end
        NVME_CONT_REG_BINFO  : begin
            o_wmsk = 32'h0;
            o_rmsk = 32'b1000_0011_0000_0000_0111_1111_1111_1111;
        end
        NVME_CONT_REG_BPRSEL : begin
            o_wmsk = 32'b1011_1111_1111_1111_1111_1111_1111_1111;
            o_rmsk = 32'b1011_1111_1111_1111_1111_1111_1111_1111;
        end
        NVME_CONT_REG_BPMBL_0 : begin
            o_wmsk = 32'hFFFF_F000;
            o_rmsk = 32'hFFFF_F000;
        end
        NVME_CONT_REG_BPMBL_1 : begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end

        default: begin
            o_wmsk = 32'hFFFF_FFFF;
            o_rmsk = 32'hFFFF_FFFF;
        end
    endcase
end

endmodule
