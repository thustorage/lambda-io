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

`ifndef _TYPEDEF_SQ_CONTEXT_TABLE_SV_
`define _TYPEDEF_SQ_CONTEXT_TABLE_SV_

typedef struct packed
{
    logic             rsvd;
    logic             pid;
    logic             prpv;
    logic             cmb;
    logic [2-1: 0]    qprio;
    logic             pc;
    logic             qv;
    logic [8-1: 0]    fid;
    logic [16-1: 0]   qsize;
    logic [16-1: 0]   sqh;
    logic [16-1: 0]   sqt;
} sq_context_qw0_t;

typedef struct packed
{
    logic [16-1: 0]   qid;
    logic [16-1: 0]   sq_cnt;
    logic [16-1: 0]   sq_ost_cnt;
    logic [16-1: 0]   cqid;
} sq_context_qw1_t;

typedef struct packed
{
    logic [64-1: 0]   prp1;
} sq_context_qw2_t;

typedef struct packed
{
    logic [64-1: 0]   prp;
} sq_context_qw3_t;

typedef struct packed
{
    sq_context_qw3_t sq_ctx_qw3;
    sq_context_qw2_t sq_ctx_qw2;
    sq_context_qw1_t sq_ctx_qw1;
    sq_context_qw0_t sq_ctx_qw0;
} sq_context_table_t;


`endif
