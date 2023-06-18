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

module timer_prescale #(
  parameter COUNT_SIZE  = 15,
  parameter DECADE_CNTR = 1
) (
  output logic         o_prescale_out, //
  output logic         o_counter_sync, //
  input  logic         i_sync_rst    , // Syncronous reset signal
  input  logic         i_cnt_sync    , // Syncronous counter enable
  input  logic         i_ext_sync    , // Enable from external PIT
  input  logic         i_pit_slave   , // PIT Slave Mode
  input  logic         i_pre_scale_en , // no prescale
  input  logic [4-1:0] i_divisor     , // Count divisor
  input  logic         i_clk         ,
  input  logic         i_rstn
);

// Warning: This counter has no safety net if the i_divisor changes while the
//           counter is active. There may need to be an addtional latch
//           register for"i_divisor" that captures on the falling edge of
//           "i_cnt_sync" or when "cnt_n" rolls over to eliminate this problem.

  logic    [COUNT_SIZE-1:0] cnt_n;         // Div N counter
  logic    [COUNT_SIZE-1:0] end_count;     // Psudo register for decoding

  logic                     div_1;         //
  logic                     rollover;      //

// This was going to be a "generate" block but iverilog does't support that
//  command so we'll just have to trust the compiler to simplify the logic based
//  on the setting of the constant "DECADE_CNTR"

  generate
    if ( DECADE_CNTR ) begin
      always_comb begin
        case   (i_divisor)
          0      : end_count = 1;
          1      : end_count = 2;
          2      : end_count = 4;
          3      : end_count = 8;
          4      : end_count = 10;
          5      : end_count = 100;
          6      : end_count = 1_000;
          7      : end_count = 10_000;
          8      : end_count = 20_000;
          default: end_count = 20_000;
        endcase
      end
    end
    else begin
      always_comb begin
        case (i_divisor)
          0 : end_count = 1;
          1 : end_count = 2;
          2 : end_count = 4;
          3 : end_count = 8;
          4 : end_count = 16;
          5 : end_count = 32;
          6 : end_count = 64;
          7 : end_count = 128;
          8 : end_count = 256;
          9 : end_count = 512;
          10: end_count = 1024;
          11: end_count = 2048;
          12: end_count = 4096;
          13: end_count = 8192;
          14: end_count = 16384;
          15: end_count = 32768;
          default: end_count = 1;
        endcase
      end
    end
  endgenerate

  assign o_counter_sync = i_pit_slave ? i_ext_sync : i_cnt_sync;

  assign div_1 = (end_count == 1);

  assign rollover = !i_pre_scale_en || (cnt_n == end_count);

  assign o_prescale_out = (i_pit_slave && div_1 && i_ext_sync) || rollover;

// Div N Counter
  always_ff @(posedge i_clk)  begin
    if ( !i_rstn ) begin
      cnt_n  <= 1;
    end
    else if ( !o_counter_sync || rollover) begin
      cnt_n  <= 1;
    end
//  else if ( rollover )
//    cnt_n  <= 1;
    else begin
      cnt_n  <= cnt_n + 1;
    end
  end

endmodule  // timer_prescale

