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

module sync_fifo_reg
#(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 2 // (1<<2) = 4
)
(
    input wire                      i_clk            ,
    input wire                      i_rstn           ,
    input wire                      i_clr            ,

    input wire [DATA_WIDTH-1:0]     i_din            ,
    input wire                      i_we             ,
    output wire [DATA_WIDTH-1:0]    o_dout           ,
    input wire                      i_re             ,
    output wire                     o_full           ,
    output wire                     o_empty          ,
    output wire [ADDR_WIDTH:0]      o_level
);

localparam Q_DEPTH = (1<<ADDR_WIDTH);

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

assign o_dout = r_reg_mem[r_rp*DATA_WIDTH+:DATA_WIDTH];


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

endmodule


// module sync_fifo_reg_test
// #(
//     parameter DATA_WIDTH = 8,
//     parameter ADDR_WIDTH = 2 // (1<<2) = 4
// )
// (
//     input wire                      i_clk            ,
//     input wire                      i_rstn           ,
//     input wire                      i_clr            ,

//     input wire [DATA_WIDTH-1:0]     i_din            ,
//     input wire                      i_we             ,
//     output wire [DATA_WIDTH-1:0]    o_dout           ,
//     input wire                      i_re             ,
//     output wire                     o_full           ,
//     output wire                     o_empty          ,
//     output wire [ADDR_WIDTH:0]      o_level
// );

// localparam Q_DEPTH = (1<<ADDR_WIDTH);

// ////////////////////////////////////////////////////////////////////
// // internals
// reg [Q_DEPTH*DATA_WIDTH-1:0] r_reg_mem;
// reg [          ADDR_WIDTH:0] r_level  ;
// reg [        ADDR_WIDTH-1:0] r_wp     ;
// reg [        ADDR_WIDTH-1:0] r_rp     ;

// ////////////////////////////////////////////////////////////////////
// // contents
// // TODO: for fet test
// // always @(posedge i_clk or negedge i_rstn) begin
// //     if(!i_rstn) begin
// //         r_reg_mem[Q_DEPTH*DATA_WIDTH-1:0] <= {(Q_DEPTH*DATA_WIDTH){1'b0}};
// //     end
// //     // else if(i_we && !i_re) begin
// //     else if(i_we & ~o_full) begin
// //         r_reg_mem[r_wp*DATA_WIDTH+:DATA_WIDTH] <= i_din;
// //     end
// // end

// integer i;

// always @(posedge i_clk or negedge i_rstn) begin
//     if(!i_rstn) begin
//         for (i = 0; i < Q_DEPTH; i++) begin
//             r_reg_mem[i*DATA_WIDTH+:DATA_WIDTH] <= i;
//         end
//     end
//     // else if(i_we && !i_re) begin
//     else if(i_we & ~o_full) begin
//         r_reg_mem[r_wp*DATA_WIDTH+:DATA_WIDTH] <= i_din;
//     end
// end

// assign o_dout = r_reg_mem[r_rp*DATA_WIDTH+:DATA_WIDTH];


// ////////////////////////////////////////////////////////////////////
// //
// // Misc Logic
// //
// // write pointer
// always @(posedge i_clk or negedge i_rstn) begin
//     if(!i_rstn) begin
//         r_wp <=  {ADDR_WIDTH{1'b0}};
//     end
//     else if(i_clr) begin
//         r_wp <=  {ADDR_WIDTH{1'b0}};
//     end
//     else if(i_we & ~o_full) begin
//         r_wp <=  r_wp + 1;
//     end
// end

// // read pointer
// always @(posedge i_clk or negedge i_rstn) begin
//     if(!i_rstn) begin
//         r_rp <=  {ADDR_WIDTH{1'b0}};
//     end
//     else if(i_clr) begin
//         r_rp <=  {ADDR_WIDTH{1'b0}};
//     end
//     else if(i_re & ~o_empty) begin
//         r_rp <=  r_rp + 1;
//     end
// end

// // level
// always @(posedge i_clk or negedge i_rstn) begin
//     if(!i_rstn) begin
//         // TODO: for fet test
//         // r_level <=  {(ADDR_WIDTH+1){1'b0}};
//         r_level <=  Q_DEPTH;
//     end
//     else if(i_clr) begin
//         r_level <=  {(ADDR_WIDTH+1){1'b0}};
//     end
//     else if(i_we & ~i_re) begin
//         r_level <= r_level + 1;
//     end
//     else if(~i_we & i_re) begin
//         r_level <= r_level - 1;
//     end
// end

// ////////////////////////////////////////////////////////////////////
// //
// // Combinatorial o_Full & o_empty Flags
// //
// assign o_empty = (r_level == {(ADDR_WIDTH+1){1'b0}});
// assign o_full  = (r_level == Q_DEPTH);

// assign o_level = r_level;

// endmodule
