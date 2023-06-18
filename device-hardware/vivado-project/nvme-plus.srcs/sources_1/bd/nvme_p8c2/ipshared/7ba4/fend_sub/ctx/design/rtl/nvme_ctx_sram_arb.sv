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

module nvme_ctx_sram_arb #(
    parameter N          = 2 ,
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 64
) (
    // N master's sram interface
    input  logic [           N-1:0] i_sram_ce       ,
    input  logic [           N-1:0] i_sram_we       ,
    input  logic [N*ADDR_WIDTH-1:0] i_sram_addr     ,
    input  logic [N*DATA_WIDTH-1:0] i_sram_wdata    ,
    input  logic [N*DATA_WIDTH-1:0] i_sram_web      ,
    // input  nvme_ctx_sb_t            i_sram_sb[0:N-1],
    input  logic [        N*11-1:0] i_sram_sb       ,
    output logic [  DATA_WIDTH-1:0] o_sram_rdata    ,
    output logic [           N-1:0] o_sram_rdy      ,
    // arbitrated sram interface
    output logic                    o_sram_arb_ce   ,
    output logic                    o_sram_arb_we   ,
    output logic [  ADDR_WIDTH-1:0] o_sram_arb_addr ,
    output logic [  DATA_WIDTH-1:0] o_sram_arb_wdata,
    output logic [  DATA_WIDTH-1:0] o_sram_arb_web  ,
    output nvme_ctx_sb_t            o_sram_arb_sb   ,
    input  logic [  DATA_WIDTH-1:0] i_sram_arb_rdata,
    input  logic                    i_sram_arb_rdy  ,
    // clock/reset signal
    input  logic                    i_clk           ,
    input  logic                    i_rstn
);

logic [N-1:0] arb_req;
logic [N-1:0] w_grant;
logic [N-1:0] r_grant;

typedef enum logic [2-1:0] {
    ST_IDLE  ,
    ST_GRANT ,
    ST_WAIT_RDY
} state_t;

state_t cur_state;
state_t nxt_state;

always_comb arb_req = (cur_state==ST_IDLE)? i_sram_ce : {N{1'b0}};

/////////////////////////////////////////////////////////////
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
            if(arb_req != {N{1'b0}}) begin
                nxt_state = ST_GRANT;
            end
            else begin
                nxt_state = ST_IDLE;
            end
        end
        ST_GRANT: begin
            nxt_state = ST_WAIT_RDY;
        end
        ST_WAIT_RDY: begin
            if(i_sram_arb_rdy) begin
                nxt_state = ST_IDLE;
            end
            else begin
                nxt_state = ST_WAIT_RDY;
            end
        end

        default: nxt_state = ST_IDLE;
    endcase
end

/////////////////////////////////////////////////////////////
// SRAM signals
//////////////////////////////////////////////////////////////

integer i;
always_comb begin
    o_sram_arb_we    = 1'b0;
    o_sram_arb_web   = {DATA_WIDTH{1'b0}};
    o_sram_arb_addr  = {ADDR_WIDTH{1'b0}};
    o_sram_arb_wdata = {DATA_WIDTH{1'b0}};
    o_sram_arb_sb    = 'b0;

    for(i = 0; i < N; i++) begin
        if(r_grant[i]) begin
            o_sram_arb_we    = i_sram_we[i];
            o_sram_arb_web   = i_sram_web[i*DATA_WIDTH+:DATA_WIDTH];
            o_sram_arb_addr  = i_sram_addr[i*ADDR_WIDTH+:ADDR_WIDTH];
            o_sram_arb_wdata = i_sram_wdata[i*DATA_WIDTH+:DATA_WIDTH];
            o_sram_arb_sb    = i_sram_sb[i*11+:11];
        end
    end
end

always_comb o_sram_arb_ce    = (cur_state==ST_WAIT_RDY);

always_comb o_sram_rdata     = i_sram_arb_rdata;
always_comb o_sram_rdy       = r_grant & {N{i_sram_arb_rdy}};

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_grant <= {N{1'b0}};
    end
    else if(cur_state==ST_GRANT) begin
        r_grant <= w_grant;
    end
    else if(cur_state==ST_WAIT_RDY) begin
        if(i_sram_arb_rdy) begin
            r_grant <= {N{1'b0}};
        end
    end
end

/////////////////////////////////////////////////////////////
// arbiter
//////////////////////////////////////////////////////////////

ctx_arbiter #(.N(N)) u_ctx_arbiter (
    .i_clk  (i_clk  ),
    .i_rstn (i_rstn ),
    .i_req  (arb_req),
    .o_grant(w_grant)
);

endmodule

module ctx_arbiter
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
