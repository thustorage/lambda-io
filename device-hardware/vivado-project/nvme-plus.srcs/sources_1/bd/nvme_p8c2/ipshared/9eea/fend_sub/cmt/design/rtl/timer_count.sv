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

module timer_count #(parameter COUNT_SIZE = 16) (
  output logic [COUNT_SIZE-1:0] o_cur_mod_cnt , // Modulo Counter value
  output logic                  o_cnt_flag    , // Counter Rollover Flag
  output logic                  o_pit         , // PIT output pulse
  input  logic                  i_sync_rst    , // Syncronous reset signal
  input  logic                  i_counter_sync, // Syncronous counter enable
  input  logic                  i_prescale_out, // Increment Counter
  input  logic                  i_pit_flg_clr , // Clear PIT Rollover Flag
  input  logic [COUNT_SIZE-1:0] i_mod_value   , // Count Divisor
  input  logic                  i_clk         ,
  input  logic                  i_rstn
);

// Warning: This counter has no saftynet if the i_mod_value changes while the counter
//           is active. There may need to be an addtional latch register for
//           "i_mod_value" that captures on the falling edge of "i_counter_sync" or
//           when "o_cur_mod_cnt" rolls over to eliminate this problem.


logic rollover;      // Counter has reached the i_mod_value
logic no_div;        // Modulo set for Zero or One
logic clear_counter; // Set counter to initial state

assign no_div = (i_mod_value == 1) || ~|i_mod_value;

assign rollover = ((o_cur_mod_cnt == i_mod_value) || no_div) && i_prescale_out;

assign clear_counter = !i_counter_sync;

//  Div N Counter
always_ff @(posedge i_clk) begin
  if ( !i_rstn )
    o_cur_mod_cnt  <= 1;
  else if ( clear_counter || rollover || no_div)
    o_cur_mod_cnt  <= 1;
  else if ( i_prescale_out )
    o_cur_mod_cnt  <= o_cur_mod_cnt + 1;
end

//  Counter Rollover Flag and Interrupt
always_ff @(posedge i_clk) begin
  if ( !i_rstn )
    o_cnt_flag <= 0;
  else if ( clear_counter || i_pit_flg_clr)
    o_cnt_flag <= 0;
  else if ( rollover )
    o_cnt_flag <= 1;
end

//  PIT Output Register
always_ff @(posedge i_clk) begin
  if ( !i_rstn )
    o_pit <= 0;
  else
    o_pit <= rollover && i_counter_sync && !i_sync_rst;
end

endmodule  // timer_count

