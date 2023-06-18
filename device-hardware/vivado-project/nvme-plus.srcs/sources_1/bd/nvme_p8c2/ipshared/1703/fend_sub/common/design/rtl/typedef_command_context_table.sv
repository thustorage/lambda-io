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

typedef struct packed {
    struct packed {
        logic [ 15: 0]  lbatm;
        logic [ 15: 0]  lbat;
        logic [ 31: 0]  ilbrt;
        logic [ 15: 0]  dspec;
        struct packed {
            logic [  4: 0]  rsvd2;
            enum logic [ 2: 0]
            {
                idr = 3'b001,
                idw = 3'b010,
                ad  = 3'b100
            } attribute;
            logic           incompressible;
            logic           seq_req;
            logic [  1: 0]  acc_latency;
            logic [  3: 0]  acc_freq;
        }  dsm;
        logic           lr;
        logic           fua;
        logic [  3: 0]  prinfo;
        logic [  7: 0]  dtype;
        logic [ 15: 0]  nlb;
        logic [ 63: 0]  slba;
    }   cmd_spec;
    logic [127: 0]  dptr;
    logic [ 63: 0]  mptr;
    logic [ 63: 0]  rsvd1;
    logic [ 31: 0]  nsid;
    logic [ 15: 0]  cid;
    logic [  1: 0]  psdt;
    logic [  3: 0]  rsvd0;
    logic [  1: 0]  fuse;
    logic [  7: 0]  opc;
} command_context_table_t;

typedef struct packed {
    logic [ 31: 0]  rsvd1;
    logic [  7: 0]  pid;
    logic [  7: 0]  fid;
    logic [ 15: 0]  sqid;
    logic [ 15: 0]  rsvd0;
    logic [ 15: 0]  remain_lb_cnt;
    logic [ 15: 0]  dealloc_lb_cnt;
    logic [ 15: 0]  alloc_lb_cnt;
} command_ext_context_table_t;
