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

module cmt_timer #(
  parameter PRE_COUNT_SIZE = 15                              , // Prescale Counter size
  parameter COUNT_SIZE     = 16                              , // Main counter size
  parameter DECADE_CNTR    = 1                                // Prescale rollover decode
) (
  // PIT IO Signals
  output logic                  o_pit          , // PIT output pulse
  input  logic                  i_cnt_sync     , // PIT Master Enable for Slave PIT's
  output logic                  o_cnt_flag     , // PIT Flag Out
  input  logic                  i_cnt_flg_clr  ,
  input  logic                  i_sync_rst     ,
  output logic [COUNT_SIZE-1:0] o_cur_mod_value,
  input  logic [COUNT_SIZE-1:0] i_mod_value    ,
  input  logic [         4-1:0] i_pit_pre_scl  ,
  input  logic                  i_pre_scale_en ,
  input  logic                  i_clk          , // master clock input
  input  logic                  i_rstn
);

  logic                  prescale_out ;
  logic                  counter_sync ;

  timer_prescale #(
    .COUNT_SIZE (PRE_COUNT_SIZE),
    .DECADE_CNTR(DECADE_CNTR   )
  ) u_timer_prescale (
    .o_prescale_out(prescale_out ),
    .o_counter_sync(counter_sync ),
    .i_cnt_sync    (i_cnt_sync   ),
    .i_ext_sync    (1'b0         ),
    .i_pit_slave   (1'b0         ),
    .i_divisor     (i_pit_pre_scl),
    .i_pre_scale_en(i_pre_scale_en),
    .i_sync_rst    (i_sync_rst   ),
    .i_clk         (i_clk        ),
    .i_rstn        (i_rstn       )
  );

  timer_count #(.COUNT_SIZE(COUNT_SIZE)) u_timer_count (
    .o_cur_mod_cnt (o_cur_mod_value),
    .i_mod_value   (i_mod_value    ),
    .o_cnt_flag    (o_cnt_flag     ),
    .o_pit         (o_pit          ),
    .i_sync_rst    (i_sync_rst     ),
    .i_counter_sync(counter_sync   ),
    .i_prescale_out(prescale_out   ),
    .i_pit_flg_clr (i_cnt_flg_clr  ),
    .i_clk         (i_clk          ),
    .i_rstn        (i_rstn         )
  );

endmodule // timer
